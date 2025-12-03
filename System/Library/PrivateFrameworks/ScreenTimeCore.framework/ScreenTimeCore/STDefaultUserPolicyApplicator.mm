@interface STDefaultUserPolicyApplicator
- (BOOL)_needToApplyDefaultUserPolicy:(int64_t)policy user:(id)user organizationSettings:(id)settings;
- (int64_t)_applyDefaultUserPolicy:(int64_t)policy user:(id)user organizationSettings:(id)settings error:(id *)error;
- (int64_t)applyDefaultUserPoliciesToUser:(id)user error:(id *)error;
- (int64_t)applyDefaultUserPoliciesWithError:(id *)error;
@end

@implementation STDefaultUserPolicyApplicator

- (int64_t)applyDefaultUserPoliciesWithError:(id *)error
{
  v5 = +[STCoreUser fetchRequestMatchingLocalUser];
  v6 = [v5 execute:error];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [(STDefaultUserPolicyApplicator *)self applyDefaultUserPoliciesToUser:firstObject error:error];
  }

  else if (error)
  {
    if (*error)
    {
      v9 = +[STLog defaultUserPolicyApplicator];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10011D1A8(error, v9);
      }
    }

    [NSError errorWithDomain:STErrorDomain code:10 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)applyDefaultUserPoliciesToUser:(id)user error:(id *)error
{
  userCopy = user;
  managedObjectContext = [userCopy managedObjectContext];

  if (!managedObjectContext)
  {
    sub_10011D224(a2, self);
  }

  unmodeledManagingOrganizationSettings = [userCopy unmodeledManagingOrganizationSettings];
  v9 = unmodeledManagingOrganizationSettings;
  if (unmodeledManagingOrganizationSettings)
  {
    localSettings = unmodeledManagingOrganizationSettings;
  }

  else
  {
    localSettings = [userCopy localSettings];
  }

  v11 = localSettings;

  managingOrganization = [userCopy managingOrganization];

  if (!managingOrganization)
  {
    v13 = +[STLog defaultUserPolicyApplicator];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing managing organization, using local", buf, 2u);
    }
  }

  v14 = +[STLog defaultUserPolicyApplicator];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    familyMemberType = [userCopy familyMemberType];
    managingOrganization2 = [userCopy managingOrganization];
    entity = [managingOrganization2 entity];
    managedObjectClassName = [entity managedObjectClassName];
    dsid = [userCopy dsid];
    *buf = 138543874;
    v46 = familyMemberType;
    v47 = 2112;
    v48 = managedObjectClassName;
    v49 = 2114;
    v50 = dsid;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Applying default user policies to %{public}@'s %@ (%{public}@)", buf, 0x20u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = [&off_1001B2580 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v20)
  {
    v22 = v20;
    v23 = *v39;
    v24 = 1;
    *&v21 = 138543362;
    v36 = v21;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(&off_1001B2580);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        if (-[STDefaultUserPolicyApplicator _needToApplyDefaultUserPolicy:user:organizationSettings:](self, "_needToApplyDefaultUserPolicy:user:organizationSettings:", [v26 unsignedIntValue], userCopy, v11))
        {
          v24 = -[STDefaultUserPolicyApplicator _applyDefaultUserPolicy:user:organizationSettings:error:](self, "_applyDefaultUserPolicy:user:organizationSettings:error:", [v26 unsignedIntValue], userCopy, v11, error);
          v27 = +[STLog defaultUserPolicyApplicator];
          v28 = v27;
          if (v24 == 2)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v26 unsignedIntValue] - 1;
              v30 = @"STDefaultUserPolicyNone";
              if (v29 <= 3)
              {
                v30 = off_1001A5858[v29];
              }

              *buf = v36;
              v46 = v30;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "\tApplied %{public}@", buf, 0xCu);
            }

            v24 = 2;
          }

          else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10011D2A0(v42, v26, &v43, v28);
          }
        }
      }

      v22 = [&off_1001B2580 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 1;
  }

  managedObjectContext2 = [userCopy managedObjectContext];
  hasChanges = [managedObjectContext2 hasChanges];

  if (hasChanges)
  {
    managedObjectContext3 = [userCopy managedObjectContext];
    v34 = [managedObjectContext3 save:error];

    if (!v34)
    {
      v24 = 0;
    }
  }

  return v24;
}

- (BOOL)_needToApplyDefaultUserPolicy:(int64_t)policy user:(id)user organizationSettings:(id)settings
{
  userCopy = user;
  if (([settings defaultUserPolicies] & policy) != 0)
  {
    v8 = +[STLog defaultUserPolicyApplicator];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ((policy - 1) > 3)
      {
        v9 = @"STDefaultUserPolicyNone";
      }

      else
      {
        v9 = off_1001A5858[policy - 1];
      }

      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\t%{public}@ already applied", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  if (policy == 4)
  {
    unmodeledManagingOrganizationSettings = [userCopy unmodeledManagingOrganizationSettings];
    cloudSettings = [userCopy cloudSettings];
    v11 = unmodeledManagingOrganizationSettings == cloudSettings;

    goto LABEL_13;
  }

  if (policy == 1)
  {
    unmodeledManagingOrganizationSettings = [userCopy familyMemberType];
    v11 = [unmodeledManagingOrganizationSettings isEqualToString:STFamilyMemberTypeChild];
LABEL_13:

    goto LABEL_14;
  }

LABEL_11:
  v11 = 0;
LABEL_14:

  return v11;
}

- (int64_t)_applyDefaultUserPolicy:(int64_t)policy user:(id)user organizationSettings:(id)settings error:(id *)error
{
  userCopy = user;
  settingsCopy = settings;
  v11 = [settingsCopy valueForKey:@"organization"];
  v12 = v11;
  if (v11)
  {
    managingOrganization = v11;
  }

  else
  {
    managingOrganization = [userCopy managingOrganization];
  }

  v14 = managingOrganization;

  if (policy == 4)
  {
    screenTimeEnabled = [userCopy screenTimeEnabled];
    cloudSettings = [userCopy cloudSettings];
    [cloudSettings setIsAppAndWebsiteActivityEnabled:screenTimeEnabled];
  }

  else if (policy == 1)
  {
    dsid = [userCopy dsid];
    v16 = STBlueprintTypeRestrictions;
    v17 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:STBlueprintTypeRestrictions fromOrganization:v14];
    v72 = 0;
    v18 = [v17 execute:&v72];
    familySettings2 = v72;

    if (familySettings2)
    {
      if (error)
      {
        v20 = familySettings2;
        *error = familySettings2;
      }

      v21 = +[STLog defaultUserPolicyApplicator];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10011D330(v21);
      }

      v22 = 0;
      goto LABEL_43;
    }

    v25 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
    [settingsCopy setIsCommunicationSafetySendingRestricted:1];
    [settingsCopy setIsCommunicationSafetyReceivingRestricted:1];
    [settingsCopy setIsEyeReliefEnabled:1];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v26 = v18;
    v27 = [v26 countByEnumeratingWithState:&v68 objects:v74 count:16];
    v28 = STBlueprintConfigurationTypeSystemWebContentFilterBasic;
    v62 = v14;
    v63 = v26;
    v59 = v27;
    if (v27)
    {
      v29 = *v69;
      v61 = v16;
      v58 = *v69;
      while (2)
      {
        v30 = 0;
        do
        {
          if (*v69 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v60 = v30;
          v31 = *(*(&v68 + 1) + 8 * v30);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          configurations = [v31 configurations];
          v33 = [configurations countByEnumeratingWithState:&v64 objects:v73 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v65;
LABEL_20:
            v36 = 0;
            while (1)
            {
              if (*v65 != v35)
              {
                objc_enumerationMutation(configurations);
              }

              v37 = *(*(&v64 + 1) + 8 * v36);
              type = [v37 type];
              v39 = [type isEqualToString:v28];

              if (v39)
              {
                break;
              }

              if (v34 == ++v36)
              {
                v34 = [configurations countByEnumeratingWithState:&v64 objects:v73 count:16];
                if (v34)
                {
                  goto LABEL_20;
                }

                goto LABEL_26;
              }
            }

            v40 = v37;

            v26 = v63;
            v16 = v61;
            policy = 1;
            v25 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
            if (!v40)
            {
              goto LABEL_31;
            }

            cemConfiguration = [v40 cemConfiguration];
            goto LABEL_34;
          }

LABEL_26:

          v30 = v60 + 1;
          v16 = v61;
          policy = 1;
          v26 = v63;
          v29 = v58;
        }

        while ((v60 + 1) != v59);
        v25 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
        v59 = [v63 countByEnumeratingWithState:&v68 objects:v74 count:16];
        if (v59)
        {
          continue;
        }

        break;
      }
    }

LABEL_31:
    v42 = [STBlueprintConfiguration cemConfigurationIdentifierWithType:v28 forUser:userCopy];
    cemConfiguration = [CEMSystemBasicWebContentFilterDeclaration buildRequiredOnlyWithIdentifier:v42 withRestrictWeb:&__kCFBooleanTrue];
    firstObject = [v26 firstObject];
    if (!firstObject)
    {
      firstObject = [v25[325] createBlueprintWithType:v16 user:userCopy];
      [firstObject setOrganization:v62];
    }

    v44 = [STBlueprintConfiguration alloc];
    managedObjectContext = [userCopy managedObjectContext];
    v40 = [v44 initWithContext:managedObjectContext];

    [v40 setType:v28];
    v46 = [userCopy contentPrivacyConfigurationIdentifierForType:v28];
    [v40 setIdentifier:v46];

    [v40 setBlueprint:firstObject];
LABEL_34:
    cemConfiguration2 = [v40 cemConfiguration];
    v14 = v62;
    if (!cemConfiguration2 || (v48 = cemConfiguration2, [cemConfiguration payloadRestrictWeb], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "BOOLValue"), v49, v48, (v50 & 1) == 0))
    {
      [cemConfiguration setPayloadUseContentFilter:&__kCFBooleanTrue];
      [cemConfiguration setPayloadRestrictWeb:&__kCFBooleanTrue];
      [cemConfiguration setPayloadWhiteListEnabled:&__kCFBooleanFalse];
      [cemConfiguration updateServerHash];
      [v40 setCemConfiguration:cemConfiguration];
      blueprint = [v40 blueprint];
      [blueprint setIsDirty:1];
    }

    blueprint2 = [v40 blueprint];
    enabled = [blueprint2 enabled];

    if ((enabled & 1) == 0)
    {
      blueprint3 = [v40 blueprint];
      [blueprint3 setEnabled:1];

      blueprint4 = [v40 blueprint];
      [blueprint4 setIsDirty:1];
    }
  }

  [settingsCopy setDefaultUserPolicies:{objc_msgSend(settingsCopy, "defaultUserPolicies") | policy}];
  familySettings = [userCopy familySettings];

  if (familySettings == settingsCopy)
  {
    familySettings2 = [userCopy familySettings];
    [familySettings2 setIsDirty:1];
    v22 = 2;
LABEL_43:

    goto LABEL_44;
  }

  v22 = 2;
LABEL_44:

  return v22;
}

@end
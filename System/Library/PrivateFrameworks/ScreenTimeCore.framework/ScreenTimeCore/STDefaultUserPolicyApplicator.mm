@interface STDefaultUserPolicyApplicator
- (BOOL)_needToApplyDefaultUserPolicy:(int64_t)a3 user:(id)a4 organizationSettings:(id)a5;
- (int64_t)_applyDefaultUserPolicy:(int64_t)a3 user:(id)a4 organizationSettings:(id)a5 error:(id *)a6;
- (int64_t)applyDefaultUserPoliciesToUser:(id)a3 error:(id *)a4;
- (int64_t)applyDefaultUserPoliciesWithError:(id *)a3;
@end

@implementation STDefaultUserPolicyApplicator

- (int64_t)applyDefaultUserPoliciesWithError:(id *)a3
{
  v5 = +[STCoreUser fetchRequestMatchingLocalUser];
  v6 = [v5 execute:a3];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(STDefaultUserPolicyApplicator *)self applyDefaultUserPoliciesToUser:v7 error:a3];
  }

  else if (a3)
  {
    if (*a3)
    {
      v9 = +[STLog defaultUserPolicyApplicator];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10011D1A8(a3, v9);
      }
    }

    [NSError errorWithDomain:STErrorDomain code:10 userInfo:0];
    *a3 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)applyDefaultUserPoliciesToUser:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 managedObjectContext];

  if (!v7)
  {
    sub_10011D224(a2, self);
  }

  v8 = [v6 unmodeledManagingOrganizationSettings];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 localSettings];
  }

  v11 = v10;

  v12 = [v6 managingOrganization];

  if (!v12)
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
    v15 = [v6 familyMemberType];
    v16 = [v6 managingOrganization];
    v17 = [v16 entity];
    v18 = [v17 managedObjectClassName];
    v19 = [v6 dsid];
    *buf = 138543874;
    v46 = v15;
    v47 = 2112;
    v48 = v18;
    v49 = 2114;
    v50 = v19;
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
        if (-[STDefaultUserPolicyApplicator _needToApplyDefaultUserPolicy:user:organizationSettings:](self, "_needToApplyDefaultUserPolicy:user:organizationSettings:", [v26 unsignedIntValue], v6, v11))
        {
          v24 = -[STDefaultUserPolicyApplicator _applyDefaultUserPolicy:user:organizationSettings:error:](self, "_applyDefaultUserPolicy:user:organizationSettings:error:", [v26 unsignedIntValue], v6, v11, a4);
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

  v31 = [v6 managedObjectContext];
  v32 = [v31 hasChanges];

  if (v32)
  {
    v33 = [v6 managedObjectContext];
    v34 = [v33 save:a4];

    if (!v34)
    {
      v24 = 0;
    }
  }

  return v24;
}

- (BOOL)_needToApplyDefaultUserPolicy:(int64_t)a3 user:(id)a4 organizationSettings:(id)a5
{
  v7 = a4;
  if (([a5 defaultUserPolicies] & a3) != 0)
  {
    v8 = +[STLog defaultUserPolicyApplicator];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ((a3 - 1) > 3)
      {
        v9 = @"STDefaultUserPolicyNone";
      }

      else
      {
        v9 = off_1001A5858[a3 - 1];
      }

      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\t%{public}@ already applied", &v14, 0xCu);
    }

    goto LABEL_11;
  }

  if (a3 == 4)
  {
    v10 = [v7 unmodeledManagingOrganizationSettings];
    v12 = [v7 cloudSettings];
    v11 = v10 == v12;

    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v10 = [v7 familyMemberType];
    v11 = [v10 isEqualToString:STFamilyMemberTypeChild];
LABEL_13:

    goto LABEL_14;
  }

LABEL_11:
  v11 = 0;
LABEL_14:

  return v11;
}

- (int64_t)_applyDefaultUserPolicy:(int64_t)a3 user:(id)a4 organizationSettings:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [v10 valueForKey:@"organization"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 managingOrganization];
  }

  v14 = v13;

  if (a3 == 4)
  {
    v23 = [v9 screenTimeEnabled];
    v24 = [v9 cloudSettings];
    [v24 setIsAppAndWebsiteActivityEnabled:v23];
  }

  else if (a3 == 1)
  {
    v15 = [v9 dsid];
    v16 = STBlueprintTypeRestrictions;
    v17 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v15 ofType:STBlueprintTypeRestrictions fromOrganization:v14];
    v72 = 0;
    v18 = [v17 execute:&v72];
    v19 = v72;

    if (v19)
    {
      if (a6)
      {
        v20 = v19;
        *a6 = v19;
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
    [v10 setIsCommunicationSafetySendingRestricted:1];
    [v10 setIsCommunicationSafetyReceivingRestricted:1];
    [v10 setIsEyeReliefEnabled:1];
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
          v32 = [v31 configurations];
          v33 = [v32 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v64 + 1) + 8 * v36);
              v38 = [v37 type];
              v39 = [v38 isEqualToString:v28];

              if (v39)
              {
                break;
              }

              if (v34 == ++v36)
              {
                v34 = [v32 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
            a3 = 1;
            v25 = &_sSo17OS_dispatch_queueC8DispatchE10AttributesVMa_ptr;
            if (!v40)
            {
              goto LABEL_31;
            }

            v41 = [v40 cemConfiguration];
            goto LABEL_34;
          }

LABEL_26:

          v30 = v60 + 1;
          v16 = v61;
          a3 = 1;
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
    v42 = [STBlueprintConfiguration cemConfigurationIdentifierWithType:v28 forUser:v9];
    v41 = [CEMSystemBasicWebContentFilterDeclaration buildRequiredOnlyWithIdentifier:v42 withRestrictWeb:&__kCFBooleanTrue];
    v43 = [v26 firstObject];
    if (!v43)
    {
      v43 = [v25[325] createBlueprintWithType:v16 user:v9];
      [v43 setOrganization:v62];
    }

    v44 = [STBlueprintConfiguration alloc];
    v45 = [v9 managedObjectContext];
    v40 = [v44 initWithContext:v45];

    [v40 setType:v28];
    v46 = [v9 contentPrivacyConfigurationIdentifierForType:v28];
    [v40 setIdentifier:v46];

    [v40 setBlueprint:v43];
LABEL_34:
    v47 = [v40 cemConfiguration];
    v14 = v62;
    if (!v47 || (v48 = v47, [v41 payloadRestrictWeb], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "BOOLValue"), v49, v48, (v50 & 1) == 0))
    {
      [v41 setPayloadUseContentFilter:&__kCFBooleanTrue];
      [v41 setPayloadRestrictWeb:&__kCFBooleanTrue];
      [v41 setPayloadWhiteListEnabled:&__kCFBooleanFalse];
      [v41 updateServerHash];
      [v40 setCemConfiguration:v41];
      v51 = [v40 blueprint];
      [v51 setIsDirty:1];
    }

    v52 = [v40 blueprint];
    v53 = [v52 enabled];

    if ((v53 & 1) == 0)
    {
      v54 = [v40 blueprint];
      [v54 setEnabled:1];

      v55 = [v40 blueprint];
      [v55 setIsDirty:1];
    }
  }

  [v10 setDefaultUserPolicies:{objc_msgSend(v10, "defaultUserPolicies") | a3}];
  v56 = [v9 familySettings];

  if (v56 == v10)
  {
    v19 = [v9 familySettings];
    [v19 setIsDirty:1];
    v22 = 2;
LABEL_43:

    goto LABEL_44;
  }

  v22 = 2;
LABEL_44:

  return v22;
}

@end
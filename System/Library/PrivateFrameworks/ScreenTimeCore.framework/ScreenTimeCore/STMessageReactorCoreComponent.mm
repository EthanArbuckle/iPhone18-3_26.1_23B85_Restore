@interface STMessageReactorCoreComponent
+ (BOOL)_shouldSendLocalDeviceStateGivenTargetableFamilyMembers:(id)members;
+ (id)_userIDFromMessageContent:(id)content;
+ (id)buildCheckinResponseMessageEnvelopeForUser:(id)user targetableFamilyMembers:(id)members localDeviceStateChange:(id)change settingsChanges:(id)changes downtimeChanges:(id)downtimeChanges communicationLimitsChanges:(id)limitsChanges alwaysAllowedChanges:(id)allowedChanges restrictionsChanges:(id)self0 managedUserChanges:(id)self1;
+ (id)configurationChangeFromMessageContent:(id)content;
+ (id)deviceStateChangeFromMessageContent:(id)content;
+ (id)reactorDirectiveForMessageContentType:(int64_t)type messageContent:(id)content targetableFamilyMembers:(id)members communicationConfigurationByUserID:(id)d screenTimeCapabilities:(id)capabilities;
+ (void)_addConfigurationChanges:(id)changes toMessageContentTypes:(id)types messageContents:(id)contents;
@end

@implementation STMessageReactorCoreComponent

+ (id)deviceStateChangeFromMessageContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceStateChange = [contentCopy deviceStateChange];
  }

  else
  {
    deviceStateChange = 0;
  }

  return deviceStateChange;
}

+ (id)configurationChangeFromMessageContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configurationChange = [contentCopy configurationChange];
  }

  else
  {
    configurationChange = 0;
  }

  return configurationChange;
}

+ (id)reactorDirectiveForMessageContentType:(int64_t)type messageContent:(id)content targetableFamilyMembers:(id)members communicationConfigurationByUserID:(id)d screenTimeCapabilities:(id)capabilities
{
  contentCopy = content;
  membersCopy = members;
  dCopy = d;
  capabilitiesCopy = capabilities;
  if ((type - 1) > 4)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1001A4408[type - 1];
  }

  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = +[STLog familyMessaging];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v51 = v15;
    v52 = 2114;
    v53 = v17;
    v54 = 2080;
    v55 = "+[STMessageReactorCoreComponent reactorDirectiveForMessageContentType:messageContent:targetableFamilyMembers:communicationConfigurationByUserID:screenTimeCapabilities:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[v2]       <<< transport message content contained messageContentType: %{public}@, messageContentClass: %{public}@, %s", buf, 0x20u);
  }

  if ([capabilitiesCopy supportedInfrastructure] == 1)
  {
    v19 = +[STLog familyMessaging];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[v2]       <<< This device only supports V1 infrastructure. Dropping received message of messageContentType: %{public}@", buf, 0xCu);
    }

LABEL_40:

    v26 = [STReactorDirective alloc];
    v27 = 0;
LABEL_41:
    v18 = [(STReactorDirective *)v26 initWithType:v27 data:0];
    goto LABEL_51;
  }

  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        v19 = +[STLog familyMessaging];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100118548();
        }

        goto LABEL_40;
      case 1:
        v20 = [STMessageReactorCoreComponent configurationChangeFromMessageContent:contentCopy];
        v38 = +[STLog familyMessaging];
        v22 = v38;
        if (v20)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543875;
            v51 = v15;
            v52 = 2113;
            v53 = v20;
            v54 = 2082;
            v55 = "+[STMessageReactorCoreComponent reactorDirectiveForMessageContentType:messageContent:targetableFamilyMembers:communicationConfigurationByUserID:screenTimeCapabilities:]";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[v2]       <<< messageContentType: %{public}@, configurationChange: %{private}@, %{public}s", buf, 0x20u);
          }

          v23 = [STReactorDirective alloc];
          v24 = 4;
          goto LABEL_37;
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        break;
      case 2:
        v20 = [STMessageReactorCoreComponent deviceStateChangeFromMessageContent:contentCopy];
        v21 = +[STLog familyMessaging];
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543875;
            v51 = v15;
            v52 = 2113;
            v53 = v20;
            v54 = 2082;
            v55 = "+[STMessageReactorCoreComponent reactorDirectiveForMessageContentType:messageContent:targetableFamilyMembers:communicationConfigurationByUserID:screenTimeCapabilities:]";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[v2]       <<< messageContentType: %{public}@, deviceStateChange: %{private}@, %{public}s", buf, 0x20u);
          }

          v23 = [STReactorDirective alloc];
          v24 = 6;
LABEL_37:
          v40 = v20;
LABEL_49:
          v18 = [(STReactorDirective *)v23 initWithType:v24 data:v40];
          goto LABEL_50;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_47;
        }

        break;
      default:
        goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      if (type != 5)
      {
        goto LABEL_51;
      }

      v25 = +[STLog familyMessaging];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[v2]       <<< messageContentType: %{public}@ -- no data", buf, 0xCu);
      }

      v26 = [STReactorDirective alloc];
      v27 = 17;
      goto LABEL_41;
    }

    v20 = [STMessageReactorCoreComponent _userIDFromMessageContent:contentCopy];
    v39 = +[STLog familyMessaging];
    v22 = v39;
    if (v20)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543619;
        v51 = v15;
        v52 = 2113;
        v53 = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[v2]       <<< messageContentType: %{public}@, userID: %{private}@", buf, 0x16u);
      }

      v23 = [STReactorDirective alloc];
      v24 = 10;
      goto LABEL_37;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_47:
      sub_1001184E0();
    }

LABEL_48:

    v23 = [STReactorDirective alloc];
    v24 = 0;
    v40 = 0;
    goto LABEL_49;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = +[STLog familyMessaging];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001184E0();
    }

    goto LABEL_40;
  }

  v28 = contentCopy;
  messageContentTypes = [v28 messageContentTypes];
  v30 = +[STLog familyMessaging];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [messageContentTypes count];
    *buf = 138543618;
    v51 = v15;
    v52 = 2050;
    v53 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[v2]       <<< messageContentType: %{public}@, underlyingContentType.count: %{public}lu", buf, 0x16u);
  }

  [v28 messageContents];
  v32 = v42 = messageContentTypes;
  v33 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v32 count]);

  messageContents = [v28 messageContents];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10004A268;
  v43[3] = &unk_1001A43E8;
  v44 = v42;
  v45 = v33;
  v46 = membersCopy;
  v47 = dCopy;
  v48 = capabilitiesCopy;
  v49 = v15;
  v35 = v33;
  v20 = v42;
  [messageContents enumerateObjectsUsingBlock:v43];

  v36 = [STReactorDirective alloc];
  v37 = [v35 copy];
  v18 = [(STReactorDirective *)v36 initWithType:1 data:v37];

LABEL_50:
LABEL_51:

  return v18;
}

+ (id)_userIDFromMessageContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userID = [contentCopy userID];
  }

  else
  {
    userID = 0;
  }

  return userID;
}

+ (id)buildCheckinResponseMessageEnvelopeForUser:(id)user targetableFamilyMembers:(id)members localDeviceStateChange:(id)change settingsChanges:(id)changes downtimeChanges:(id)downtimeChanges communicationLimitsChanges:(id)limitsChanges alwaysAllowedChanges:(id)allowedChanges restrictionsChanges:(id)self0 managedUserChanges:(id)self1
{
  userCopy = user;
  changeCopy = change;
  changesCopy = changes;
  downtimeChangesCopy = downtimeChanges;
  limitsChangesCopy = limitsChanges;
  allowedChangesCopy = allowedChanges;
  restrictionsChangesCopy = restrictionsChanges;
  userChangesCopy = userChanges;
  membersCopy = members;
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  LODWORD(limitsChanges) = [STMessageReactorCoreComponent _shouldSendLocalDeviceStateGivenTargetableFamilyMembers:membersCopy];

  if (!limitsChanges)
  {
    goto LABEL_4;
  }

  if (changeCopy)
  {
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[STDeviceStateChangeContent contentType]);
    [v22 addObject:v24];

    v25 = [[STDeviceStateChangeContent alloc] initWithDeviceStateChange:changeCopy];
    [v23 addObject:v25];

LABEL_4:
    [STMessageReactorCoreComponent _addConfigurationChanges:changesCopy toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:downtimeChangesCopy toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:limitsChangesCopy toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:allowedChangesCopy toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:restrictionsChangesCopy toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:userChangesCopy toMessageContentTypes:v22 messageContents:v23];
    v38 = [[STCompoundContent alloc] initWithMessageContentTypes:v22 messageContents:v23];
    v37 = objc_opt_new();
    v39 = changesCopy;
    v26 = [[STMessageTransportMessage alloc] initWithIdentifier:v37 content:v38];
    v27 = allowedChangesCopy;
    v28 = changeCopy;
    v29 = [STMessageTransportMessageAddress alloc];
    [userCopy dsid];
    v31 = v30 = userChangesCopy;
    v32 = [(STMessageTransportMessageAddress *)v29 initWithUserDSID:v31];
    [NSSet setWithObject:v32];
    v34 = v33 = restrictionsChangesCopy;

    changeCopy = v28;
    allowedChangesCopy = v27;

    userChangesCopy = v30;
    v35 = [[STTransportEnvoyMessageEnvelope alloc] initWithMessage:v26 addresses:v34];

    restrictionsChangesCopy = v33;
    changesCopy = v39;

    goto LABEL_5;
  }

  v35 = 0;
LABEL_5:

  return v35;
}

+ (void)_addConfigurationChanges:(id)changes toMessageContentTypes:(id)types messageContents:(id)contents
{
  changesCopy = changes;
  typesCopy = types;
  contentsCopy = contents;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [changesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(changesCopy);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[STOrganizationControllerConfigurationChangeContent contentType]);
        [typesCopy addObject:v15];

        v16 = [[STOrganizationControllerConfigurationChangeContent alloc] initWithConfigurationChange:v14];
        [contentsCopy addObject:v16];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [changesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (BOOL)_shouldSendLocalDeviceStateGivenTargetableFamilyMembers:(id)members
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  membersCopy = members;
  v4 = [membersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(membersCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isSignedInMember] && (objc_msgSend(v8, "isParent") & 1) != 0)
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [membersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

@end
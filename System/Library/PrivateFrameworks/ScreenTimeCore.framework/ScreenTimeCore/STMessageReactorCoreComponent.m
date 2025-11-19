@interface STMessageReactorCoreComponent
+ (BOOL)_shouldSendLocalDeviceStateGivenTargetableFamilyMembers:(id)a3;
+ (id)_userIDFromMessageContent:(id)a3;
+ (id)buildCheckinResponseMessageEnvelopeForUser:(id)a3 targetableFamilyMembers:(id)a4 localDeviceStateChange:(id)a5 settingsChanges:(id)a6 downtimeChanges:(id)a7 communicationLimitsChanges:(id)a8 alwaysAllowedChanges:(id)a9 restrictionsChanges:(id)a10 managedUserChanges:(id)a11;
+ (id)configurationChangeFromMessageContent:(id)a3;
+ (id)deviceStateChangeFromMessageContent:(id)a3;
+ (id)reactorDirectiveForMessageContentType:(int64_t)a3 messageContent:(id)a4 targetableFamilyMembers:(id)a5 communicationConfigurationByUserID:(id)a6 screenTimeCapabilities:(id)a7;
+ (void)_addConfigurationChanges:(id)a3 toMessageContentTypes:(id)a4 messageContents:(id)a5;
@end

@implementation STMessageReactorCoreComponent

+ (id)deviceStateChangeFromMessageContent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 deviceStateChange];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)configurationChangeFromMessageContent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 configurationChange];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)reactorDirectiveForMessageContentType:(int64_t)a3 messageContent:(id)a4 targetableFamilyMembers:(id)a5 communicationConfigurationByUserID:(id)a6 screenTimeCapabilities:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if ((a3 - 1) > 4)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1001A4408[a3 - 1];
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

  if ([v14 supportedInfrastructure] == 1)
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

  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v19 = +[STLog familyMessaging];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100118548();
        }

        goto LABEL_40;
      case 1:
        v20 = [STMessageReactorCoreComponent configurationChangeFromMessageContent:v11];
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
        v20 = [STMessageReactorCoreComponent deviceStateChangeFromMessageContent:v11];
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

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      if (a3 != 5)
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

    v20 = [STMessageReactorCoreComponent _userIDFromMessageContent:v11];
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

  v28 = v11;
  v29 = [v28 messageContentTypes];
  v30 = +[STLog familyMessaging];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v29 count];
    *buf = 138543618;
    v51 = v15;
    v52 = 2050;
    v53 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[v2]       <<< messageContentType: %{public}@, underlyingContentType.count: %{public}lu", buf, 0x16u);
  }

  [v28 messageContents];
  v32 = v42 = v29;
  v33 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v32 count]);

  v34 = [v28 messageContents];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10004A268;
  v43[3] = &unk_1001A43E8;
  v44 = v42;
  v45 = v33;
  v46 = v12;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  v35 = v33;
  v20 = v42;
  [v34 enumerateObjectsUsingBlock:v43];

  v36 = [STReactorDirective alloc];
  v37 = [v35 copy];
  v18 = [(STReactorDirective *)v36 initWithType:1 data:v37];

LABEL_50:
LABEL_51:

  return v18;
}

+ (id)_userIDFromMessageContent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 userID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)buildCheckinResponseMessageEnvelopeForUser:(id)a3 targetableFamilyMembers:(id)a4 localDeviceStateChange:(id)a5 settingsChanges:(id)a6 downtimeChanges:(id)a7 communicationLimitsChanges:(id)a8 alwaysAllowedChanges:(id)a9 restrictionsChanges:(id)a10 managedUserChanges:(id)a11
{
  v42 = a3;
  v16 = a5;
  v17 = a6;
  v41 = a7;
  v40 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a4;
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  LODWORD(a8) = [STMessageReactorCoreComponent _shouldSendLocalDeviceStateGivenTargetableFamilyMembers:v21];

  if (!a8)
  {
    goto LABEL_4;
  }

  if (v16)
  {
    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[STDeviceStateChangeContent contentType]);
    [v22 addObject:v24];

    v25 = [[STDeviceStateChangeContent alloc] initWithDeviceStateChange:v16];
    [v23 addObject:v25];

LABEL_4:
    [STMessageReactorCoreComponent _addConfigurationChanges:v17 toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:v41 toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:v40 toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:v18 toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:v19 toMessageContentTypes:v22 messageContents:v23];
    [STMessageReactorCoreComponent _addConfigurationChanges:v20 toMessageContentTypes:v22 messageContents:v23];
    v38 = [[STCompoundContent alloc] initWithMessageContentTypes:v22 messageContents:v23];
    v37 = objc_opt_new();
    v39 = v17;
    v26 = [[STMessageTransportMessage alloc] initWithIdentifier:v37 content:v38];
    v27 = v18;
    v28 = v16;
    v29 = [STMessageTransportMessageAddress alloc];
    [v42 dsid];
    v31 = v30 = v20;
    v32 = [(STMessageTransportMessageAddress *)v29 initWithUserDSID:v31];
    [NSSet setWithObject:v32];
    v34 = v33 = v19;

    v16 = v28;
    v18 = v27;

    v20 = v30;
    v35 = [[STTransportEnvoyMessageEnvelope alloc] initWithMessage:v26 addresses:v34];

    v19 = v33;
    v17 = v39;

    goto LABEL_5;
  }

  v35 = 0;
LABEL_5:

  return v35;
}

+ (void)_addConfigurationChanges:(id)a3 toMessageContentTypes:(id)a4 messageContents:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[STOrganizationControllerConfigurationChangeContent contentType]);
        [v8 addObject:v15];

        v16 = [[STOrganizationControllerConfigurationChangeContent alloc] initWithConfigurationChange:v14];
        [v9 addObject:v16];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (BOOL)_shouldSendLocalDeviceStateGivenTargetableFamilyMembers:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isSignedInMember] && (objc_msgSend(v8, "isParent") & 1) != 0)
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
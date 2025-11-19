@interface STReactorCore
+ (id)_intervalForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:(id)a3 configurations:(id)a4;
+ (id)reactorDirectiveForAskForTimeRequestEvent:(id)a3;
+ (id)reactorDirectiveForAskForTimeResponseEvent:(id)a3;
+ (id)reactorDirectiveForBackgroundActivityOfType:(int64_t)a3;
+ (id)reactorDirectiveForBackgroundActivityResult:(id)a3 activityType:(int64_t)a4 downtimeConfigurationsByUserID:(id)a5;
+ (id)reactorDirectiveForInitialSetupWithTargetableFamilyMembers:(id)a3;
+ (id)reactorDirectiveForMessageTransportMessage:(id)a3 targetableFamilyMembers:(id)a4 communicationConfigurationByUserID:(id)a5 screenTimeCapabilities:(id)a6;
+ (id)reactorDirectiveForReconcilingWithTargetableFamilyMembers:(id)a3 familyMemberGenesisStateItems:(id)a4 localDeviceID:(id)a5 signedInUserHasMultipleDevices:(BOOL)a6;
+ (id)reactorDirectiveForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:(id)a3 configurations:(id)a4;
+ (id)reactorDirectiveForSendingResponseForResult:(id)a3 downtimeConfigurationsByUserID:(id)a4;
+ (id)reactorDirectiveForSentMessageResult:(id)a3;
+ (id)reactorDirectiveForSuccessfulConfigurationWriteResult:(id)a3 configurations:(id)a4;
+ (id)reactorDirectiveForWritingEyeReliefStateChange:(id)a3 targetableFamilyMembers:(id)a4;
+ (id)reactorDirectiveForWritingUserSafetyPolicyChange:(id)a3 targetableFamilyMembers:(id)a4;
+ (id)userToRespondForGivenCheckingInUser:(id)a3 targetableFamilyMembers:(id)a4;
@end

@implementation STReactorCore

+ (id)reactorDirectiveForSendingResponseForResult:(id)a3 downtimeConfigurationsByUserID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 processedDirective];
  p_info = &OBJC_METACLASS___STReactorCore.info;
  v9 = [[STReactorDirective alloc] initWithType:0 data:0];
  v10 = [v7 type];
  if (v10 <= 0x11)
  {
    if (((1 << v10) & 0x3E3EC) != 0)
    {
LABEL_3:
      v11 = +[STLog reactorCore];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No response needed for result: %{public}@", buf, 0xCu);
      }

      p_info = v9;
      goto LABEL_6;
    }

    if (v10 == 4)
    {
      v13 = [v5 output];
      v15 = [v13 integerValue];
      if (v15 == 1)
      {
        v23 = +[STLog reactorCore];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v5;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Repair configuration response needed for result: %{public}@", buf, 0xCu);
        }

        v24 = [STReactorDirective alloc];
        v21 = [v5 processedDirective];
        v25 = [v21 data];
        p_info = [(STReactorDirective *)v24 initWithType:5 data:v25];
      }

      else
      {
        if (v15)
        {

          goto LABEL_33;
        }

        v16 = +[STLog reactorCore];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v5;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Check if additional directive is needed for successful configuration write result: %{public}@", buf, 0xCu);
        }

        v17 = [v5 processedDirective];
        v18 = [v17 data];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          sub_10011B41C(v5);
        }

        v20 = [v5 processedDirective];
        v21 = [v20 data];

        p_info = [STReactorCore reactorDirectiveForSuccessfulConfigurationWriteResult:v21 configurations:v6];
      }

LABEL_31:
      goto LABEL_6;
    }

    if (v10 == 10)
    {
      v13 = [v5 output];
      if (v13)
      {
        v14 = [[STReactorDirective alloc] initWithType:2 data:v13];
      }

      else
      {
        v22 = +[STLog reactorCore];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v5;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No response needed for result: %{public}@", buf, 0xCu);
        }

        v14 = v9;
      }

      p_info = v14;
      goto LABEL_31;
    }
  }

  if (v10 != 1)
  {
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_3;
  }

LABEL_33:
  v26 = [v5 output];
  v27 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [STReactorCore reactorDirectiveForSendingResponseForResult:*(*(&v36 + 1) + 8 * i) downtimeConfigurationsByUserID:0];
        [v27 addObject:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v30);
  }

  v34 = [STReactorDirective alloc];
  v35 = [v27 copy];
  p_info = [(STReactorDirective *)v34 initWithType:1 data:v35];

LABEL_6:

  return p_info;
}

+ (id)reactorDirectiveForWritingEyeReliefStateChange:(id)a3 targetableFamilyMembers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 targetUser];
  v8 = [STConfigurationReactorCoreComponent targetableFamilyMemberForUser:v7 inTargetableFamilyMembers:v6];

  if ([v5 configurationType] == 1 && objc_msgSend(v8, "isSignedInMember"))
  {
    v9 = [v5 configuration];
    v10 = [v9 objectForKeyedSubscript:@"isEyeReliefEnabled"];
    if (v10)
    {
      v11 = v10;
      v12 = [[STReactorDirective alloc] initWithType:15 data:v10];

      goto LABEL_7;
    }
  }

  v12 = [[STReactorDirective alloc] initWithType:0 data:0];
LABEL_7:

  return v12;
}

+ (id)reactorDirectiveForWritingUserSafetyPolicyChange:(id)a3 targetableFamilyMembers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 targetUser];
  v8 = [STConfigurationReactorCoreComponent targetableFamilyMemberForUser:v7 inTargetableFamilyMembers:v6];

  if ([v5 configurationType] == 1 && objc_msgSend(v8, "isSignedInMember"))
  {
    v9 = [v5 configuration];
    v10 = [v9 objectForKeyedSubscript:@"isCommunicationSafetySendingRestricted"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v9 objectForKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];
    }

    v13 = v12;

    if ([v13 BOOLValue])
    {
      v14 = [STFamilyInformationCoreDataTransformerComponent familyMemberTypeForTargetableFamilyMember:v8];
      if ([v14 isEqualToString:STFamilyMemberTypeChild])
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
      if (v13)
      {
LABEL_11:
        v16 = [STReactorDirective alloc];
        v17 = [NSNumber numberWithLongLong:v15];
        v18 = [(STReactorDirective *)v16 initWithType:16 data:v17];

        goto LABEL_15;
      }
    }
  }

  v18 = [[STReactorDirective alloc] initWithType:0 data:0];
LABEL_15:

  return v18;
}

+ (id)reactorDirectiveForMessageTransportMessage:(id)a3 targetableFamilyMembers:(id)a4 communicationConfigurationByUserID:(id)a5 screenTimeCapabilities:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 contentType];
  v14 = [v12 content];

  v15 = [STMessageReactorCoreComponent reactorDirectiveForMessageContentType:v13 messageContent:v14 targetableFamilyMembers:v11 communicationConfigurationByUserID:v10 screenTimeCapabilities:v9];

  return v15;
}

+ (id)reactorDirectiveForSentMessageResult:(id)a3
{
  v3 = [a3 type];
  if (v3 <= 1)
  {
    v3 = [[STReactorDirective alloc] initWithType:0 data:0];
  }

  return v3;
}

+ (id)reactorDirectiveForBackgroundActivityOfType:(int64_t)a3
{
  v4 = +[STLog reactorCore];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v5 = &stru_1001AC900;
    }

    else
    {
      v5 = off_1001A52E0[a3];
    }

    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "creating directive for background activity: %{public}@", &v10, 0xCu);
  }

  v6 = [STReactorDirective alloc];
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [(STReactorDirective *)v6 initWithType:8 data:v7];

  return v8;
}

+ (id)reactorDirectiveForBackgroundActivityResult:(id)a3 activityType:(int64_t)a4 downtimeConfigurationsByUserID:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[STLog reactorCore];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 3)
    {
      v10 = &stru_1001AC900;
    }

    else
    {
      v10 = off_1001A52E0[a4];
    }

    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "creating directive for background activity result from activity of type: %{public}@", &v17, 0xCu);
  }

  if (a4 == 3)
  {
    v14 = [STReactorCore reactorDirectiveForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:0 configurations:v8];
  }

  else
  {
    if (a4 == 2)
    {
      v11 = [v7 output];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v7 output];
        [v13 integerValue];
      }
    }

    v14 = [[STReactorDirective alloc] initWithType:0 data:0];
  }

  v15 = v14;

  return v15;
}

+ (id)userToRespondForGivenCheckingInUser:(id)a3 targetableFamilyMembers:(id)a4
{
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isSignedInMember] && !objc_msgSend(v11, "isParent"))
        {
          v13 = [STUserID alloc];
          v14 = [v11 dsid];
          v12 = [v13 initWithDSID:v14];

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = v5;
LABEL_12:

  return v12;
}

+ (id)reactorDirectiveForInitialSetupWithTargetableFamilyMembers:(id)a3
{
  v3 = a3;
  v4 = [STMessageTransportMessage alloc];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(STMessageTransportMessage *)v4 initWithIdentifier:v5 content:v6];

  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if (([v14 isSignedInMember] & 1) == 0)
        {
          v15 = [STMessageTransportMessageAddress alloc];
          v16 = [v14 dsid];
          v17 = [(STMessageTransportMessageAddress *)v15 initWithUserDSID:v16];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v18 = [STTransportEnvoyMessageEnvelope alloc];
  v19 = [v8 copy];
  v20 = [(STTransportEnvoyMessageEnvelope *)v18 initWithMessage:v7 addresses:v19];

  v21 = [[STReactorDirective alloc] initWithType:2 data:v20];

  return v21;
}

+ (id)reactorDirectiveForReconcilingWithTargetableFamilyMembers:(id)a3 familyMemberGenesisStateItems:(id)a4 localDeviceID:(id)a5 signedInUserHasMultipleDevices:(BOOL)a6
{
  v37 = a6;
  v8 = a3;
  v39 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if ([v8 count])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v8;
    v42 = [v11 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v42)
    {
      v36 = v9;
      v40 = *v49;
      v41 = 0;
      v38 = v11;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v49 != v40)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v48 + 1) + 8 * i);
          v14 = [STUserID alloc];
          v15 = [v13 dsid];
          v16 = [v14 initWithDSID:v15];

          if (![v13 isSignedInMember] || (v17 = v16, v41, v41 = v17, v37))
          {
            v43 = i;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v18 = v39;
            v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v45;
              do
              {
                for (j = 0; j != v20; j = j + 1)
                {
                  if (*v45 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v44 + 1) + 8 * j);
                  if (![v23 genesisState])
                  {
                    v24 = [v23 userID];
                    v25 = [v24 isEqualToUserID:v16];

                    if (v25)
                    {
                      v26 = [STMessageTransportMessageAddress alloc];
                      v27 = [v13 dsid];
                      v28 = [(STMessageTransportMessageAddress *)v26 initWithUserDSID:v27];

                      [v10 addObject:v28];
                    }
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
              }

              while (v20);
            }

            v11 = v38;
            i = v43;
          }
        }

        v42 = [v11 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v42);

      v9 = v36;
      if (v41)
      {
        if ([v10 count])
        {
          v29 = objc_opt_new();
          v30 = [[STCheckinContent alloc] initWithUserID:v41 deviceID:v36];
          v31 = [[STMessageTransportMessage alloc] initWithIdentifier:v29 content:v30];
          v32 = [[STTransportEnvoyMessageEnvelope alloc] initWithMessage:v31 addresses:v10];
          v33 = [[STReactorDirective alloc] initWithType:2 data:v32];
        }

        else
        {
          v33 = [[STReactorDirective alloc] initWithType:0 data:0];
        }

        goto LABEL_33;
      }
    }

    else
    {
    }

    v34 = +[STLog reactorCore];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_10011B504(v34);
    }
  }

  else
  {
    v34 = +[STLog reactorCore];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "abort: no targetable family members", buf, 2u);
    }
  }

  v33 = [[STReactorDirective alloc] initWithType:0 data:0];
LABEL_33:

  return v33;
}

+ (id)reactorDirectiveForAskForTimeRequestEvent:(id)a3
{
  v3 = a3;
  v4 = [[STReactorDirective alloc] initWithType:13 data:v3];

  return v4;
}

+ (id)reactorDirectiveForAskForTimeResponseEvent:(id)a3
{
  v3 = a3;
  v4 = [[STReactorDirective alloc] initWithType:14 data:v3];

  return v4;
}

+ (id)reactorDirectiveForSuccessfulConfigurationWriteResult:(id)a3 configurations:(id)a4
{
  v4 = [STReactorCore reactorDirectiveForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:a3 configurations:a4];
  v5 = +[STLog reactorCore];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Directive to run for successful remote change: %{public}@", &v7, 0xCu);
  }

  return v4;
}

+ (id)reactorDirectiveForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:(id)a3 configurations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[STReactorDirective alloc] initWithType:0 data:0];
  if ((!v6 || [v6 configurationType] == 2) && v7)
  {
    v9 = [a1 _intervalForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:v6 configurations:v7];
    if (v9)
    {
      v10 = +[STLog reactorCore];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating directive for next downtime biome donation to occur at interval %{public}@", &v14, 0xCu);
      }

      v11 = [[STScheduleBackgroundActivityDirectiveData alloc] initWithType:3 interval:v9];
      v12 = [[STReactorDirective alloc] initWithType:7 data:v11];
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

+ (id)_intervalForSchedulingNextBackgroundActivityForDowntimeBiomeDonation:(id)a3 configurations:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = &off_1001B2480;
  }

  else
  {
    v8 = +[NSDate distantFuture];
    [v8 timeIntervalSinceNow];
    v9 = [NSNumber numberWithDouble:?];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v28 = v6;
      v29 = 0;
      v13 = 0;
      v14 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [v10 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * i), v28, v29, v30}];
          v17 = [v16 nextStateChangeDate];
          if (v17)
          {
            v18 = v17;
            v19 = +[NSCalendar autoupdatingCurrentCalendar];
            v20 = STLocalDateFromUTCErasedDate();

            [v20 timeIntervalSinceNow];
            v21 = [NSNumber numberWithDouble:?];
            if ([v21 intValue] >= 1)
            {
              [v9 doubleValue];
              v23 = v22;
              [v21 doubleValue];
              if (v23 < v24)
              {
                v24 = v23;
              }

              v25 = [NSNumber numberWithDouble:v24];

              v13 = 1;
              v9 = v25;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);

      if (v13)
      {
        v26 = v9;
      }

      else
      {
        v26 = 0;
      }

      v6 = v28;
      v5 = v29;
    }

    else
    {

      v26 = 0;
    }

    v7 = v26;
  }

  return v7;
}

@end
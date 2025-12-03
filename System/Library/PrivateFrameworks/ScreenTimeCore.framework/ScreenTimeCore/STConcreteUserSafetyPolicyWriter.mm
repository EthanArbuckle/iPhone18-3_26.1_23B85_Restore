@interface STConcreteUserSafetyPolicyWriter
- (id)writeUserSafetyInterventionPolicy:(int64_t)policy;
@end

@implementation STConcreteUserSafetyPolicyWriter

- (id)writeUserSafetyInterventionPolicy:(int64_t)policy
{
  v4 = [MOLocalSettingsStore alloc];
  v5 = [v4 initWithName:@"UserSafetyStore" sharedContainer:STManagedSettingsContainer];
  v6 = +[STUserDeviceState fetchRequestMatchingLocalUserDeviceState];
  v7 = [v6 execute:0];
  firstObject = [v7 firstObject];

  if (!firstObject)
  {
    v10 = [NSError errorWithDomain:STErrorDomain code:12 userInfo:0];
    v9 = [STResult failure:v10];

    goto LABEL_24;
  }

  if ([firstObject msInterventionPolicy] == policy)
  {
    v9 = +[STResult success];
    goto LABEL_24;
  }

  userSafety = [v5 userSafety];
  scanningPolicy = [userSafety scanningPolicy];

  switch(policy)
  {
    case 2:
      v14 = &MOUserSafetyInterventionTypeTeen;
      goto LABEL_11;
    case 1:
      v14 = &MOUserSafetyInterventionTypeChild;
LABEL_11:
      v13 = [MOUserSafetyScanningPolicy communicationSafetyWithInterventionType:*v14];
      goto LABEL_12;
    case 0:
      v13 = +[MOUserSafetyScanningPolicy nonePolicy];
LABEL_12:
      v15 = v13;
      goto LABEL_14;
  }

  v15 = 0;
LABEL_14:
  userSafety2 = [v5 userSafety];
  [userSafety2 setScanningPolicy:v15];

  [firstObject setMsInterventionPolicy:policy];
  v17 = +[STLog userSafetyPolicyWriter];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = scanningPolicy;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully wrote user safety policy from %@ to %@", buf, 0x16u);
  }

  managedObjectContext = [firstObject managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (hasChanges)
  {
    managedObjectContext2 = [firstObject managedObjectContext];
    v26 = 0;
    v21 = [managedObjectContext2 save:&v26];
    v22 = v26;

    if ((v21 & 1) == 0)
    {
      v23 = +[STLog userSafetyPolicyWriter];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1001204B0(v22, v23);
      }

      v24 = [STResult failure:v22];
      goto LABEL_23;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = +[STResult success];
LABEL_23:
  v9 = v24;

LABEL_24:

  return v9;
}

@end
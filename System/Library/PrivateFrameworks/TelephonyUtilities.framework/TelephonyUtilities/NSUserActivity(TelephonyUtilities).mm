@interface NSUserActivity(TelephonyUtilities)
+ (id)makeActivityWithIntent:()TelephonyUtilities dialRequestAttachment:;
+ (id)makeActivityWithIntent:()TelephonyUtilities joinRequestAttachment:;
+ (uint64_t)_isActivityTypeAllowedForJoinRequest:()TelephonyUtilities;
- (id)dialRequestAttachment;
- (id)joinRequestAttachment;
- (id)tu_dynamicIdentifier;
- (void)dialRequestAttachment;
- (void)joinRequestAttachment;
@end

@implementation NSUserActivity(TelephonyUtilities)

+ (id)makeActivityWithIntent:()TelephonyUtilities dialRequestAttachment:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69636A8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] _initWithIntent:v7];

  v9 = MEMORY[0x1E69636A8];
  activityType = [v8 activityType];
  v11 = [v9 _isActivityTypeAllowedForDialRequest:activityType];

  v19 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v19];

  v13 = v19;
  if (v13)
  {
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[NSUserActivity(TelephonyUtilities) makeActivityWithIntent:dialRequestAttachment:];
    }
  }

  else if (v11)
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    v15 = TUDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Attaching TUDialRequest to UserActivity", v18, 2u);
    }

    v20 = @"dialRequest";
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v8 setUserInfo:v14];
  }

  else
  {
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NSUserActivity(TelephonyUtilities) makeActivityWithIntent:v8 dialRequestAttachment:?];
    }
  }

LABEL_12:
  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)makeActivityWithIntent:()TelephonyUtilities joinRequestAttachment:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69636A8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] _initWithIntent:v7];

  v9 = MEMORY[0x1E69636A8];
  activityType = [v8 activityType];
  v11 = [v9 _isActivityTypeAllowedForJoinRequest:activityType];

  v19 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v19];

  v13 = v19;
  if (v13)
  {
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[NSUserActivity(TelephonyUtilities) makeActivityWithIntent:joinRequestAttachment:];
    }
  }

  else if (v11)
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    v15 = TUDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Attaching TUJoinConversationRequest to UserActivity", v18, 2u);
    }

    v20 = @"joinRequest";
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v8 setUserInfo:v14];
  }

  else
  {
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NSUserActivity(TelephonyUtilities) makeActivityWithIntent:v8 joinRequestAttachment:?];
    }
  }

LABEL_12:
  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)dialRequestAttachment
{
  v2 = MEMORY[0x1E69636A8];
  activityType = [self activityType];
  LODWORD(v2) = [v2 _isActivityTypeAllowedForDialRequest:activityType];

  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"dialRequest"];

  if (v2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Unarchiving TUDialRequest from UserActivity", buf, 2u);
    }

    v13 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
    v10 = v13;
    if (v10)
    {
      v11 = TUDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NSUserActivity(TelephonyUtilities) dialRequestAttachment];
      }
    }
  }

  return v7;
}

- (id)joinRequestAttachment
{
  v2 = MEMORY[0x1E69636A8];
  activityType = [self activityType];
  LODWORD(v2) = [v2 _isActivityTypeAllowedForJoinRequest:activityType];

  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"joinRequest"];

  if (v2)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Unarchiving TUJoinConversationRequest from UserActivity", buf, 2u);
    }

    v13 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
    v10 = v13;
    if (v10)
    {
      v11 = TUDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NSUserActivity(TelephonyUtilities) joinRequestAttachment];
      }
    }
  }

  return v7;
}

- (id)tu_dynamicIdentifier
{
  _internalUserActivity = [self _internalUserActivity];
  dynamicIdentifier = [_internalUserActivity dynamicIdentifier];

  if (dynamicIdentifier)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    dynamicIdentifier2 = [_internalUserActivity2 dynamicIdentifier];
    v6 = [dynamicIdentifier2 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (uint64_t)_isActivityTypeAllowedForJoinRequest:()TelephonyUtilities
{
  v3 = a3;
  if ([v3 isEqualToString:@"INStartCallIntent"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"INJoinCallIntent"];
  }

  return v4;
}

+ (void)makeActivityWithIntent:()TelephonyUtilities dialRequestAttachment:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Encountered an error while serializing TUDialRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)makeActivityWithIntent:()TelephonyUtilities dialRequestAttachment:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 activityType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_1956FD000, v2, v3, "Trying to attach TUDialRequest to a UserActivity with an unsupported activityType: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)makeActivityWithIntent:()TelephonyUtilities joinRequestAttachment:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Encountered an error while serializing TUJoinConversationRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)makeActivityWithIntent:()TelephonyUtilities joinRequestAttachment:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 activityType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_1956FD000, v2, v3, "Trying to attach TUJoinConversationRequest to a UserActivity with an unsupported activityType: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dialRequestAttachment
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error unarchiving TUDialRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)joinRequestAttachment
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error unarchiving TUJoinConversationRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
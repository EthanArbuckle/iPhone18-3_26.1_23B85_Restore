@interface NSUserActivity(UISceneActivationConditions)
- (id)targetContentIdentifier;
- (void)setTargetContentIdentifier:()UISceneActivationConditions;
@end

@implementation NSUserActivity(UISceneActivationConditions)

- (id)targetContentIdentifier
{
  v14 = *MEMORY[0x1E69E9840];
  _internalUserActivity = [self _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    targetContentIdentifier = [_internalUserActivity2 targetContentIdentifier];
  }

  else
  {
    _internalUserActivity2 = [self _payloadForIdentifier:@"com.apple.UIKit.activationConditions.targetContentIdentifierPayload"];
    if (_internalUserActivity2)
    {
      v6 = MEMORY[0x1E696ACD0];
      v7 = objc_opt_self();
      v11 = 0;
      targetContentIdentifier = [v6 unarchivedObjectOfClass:v7 fromData:_internalUserActivity2 error:&v11];
      v8 = v11;

      if (v8)
      {
        v9 = *(__UILogGetCategoryCachedImpl("UISceneActivationConditions", &targetContentIdentifier___s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v8;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "could not decode targetContentIdentifier from NSUserActivity: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      targetContentIdentifier = 0;
    }
  }

  return targetContentIdentifier;
}

- (void)setTargetContentIdentifier:()UISceneActivationConditions
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _internalUserActivity = [self _internalUserActivity];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    [_internalUserActivity2 setTargetContentIdentifier:v4];
  }

  else
  {
    v11 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
    v9 = v11;
    if (v9)
    {
      v10 = *(__UILogGetCategoryCachedImpl("UISceneActivationConditions", &setTargetContentIdentifier____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "could not encode targetContentIdentifier to NSUserActivity: %@", buf, 0xCu);
      }
    }

    else
    {
      [self _setPayload:v8 object:0 identifier:@"com.apple.UIKit.activationConditions.targetContentIdentifierPayload" dirty:0];
    }
  }
}

@end
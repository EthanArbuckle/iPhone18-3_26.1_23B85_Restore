@interface VUIJSNotificationCenter
- (VUIJSNotificationCenter)initWithAppContext:(id)context;
- (void)_clearSavedBadgeIdentifiers;
- (void)clearBadgeData;
- (void)setBadgeNumber:(id)number;
@end

@implementation VUIJSNotificationCenter

- (VUIJSNotificationCenter)initWithAppContext:(id)context
{
  v7.receiver = self;
  v7.super_class = VUIJSNotificationCenter;
  v3 = [(VUIJSObject *)&v7 initWithAppContext:context];
  if (v3 && (_os_feature_enabled_impl() & 1) == 0)
  {
    wlkNotificationCenter = [MEMORY[0x1E69E1558] wlkNotificationCenter];
    center = v3->_center;
    v3->_center = wlkNotificationCenter;

    [(WLKNotificationCenter *)v3->_center setDelegate:v3];
  }

  return v3;
}

- (void)setBadgeNumber:(id)number
{
  numberCopy = number;
  if (_os_feature_enabled_impl())
  {
    intValue = [numberCopy intValue];

    [VUILocalNotificationService updateBadgeCount:intValue completionHandler:&__block_literal_global_88];
  }

  else
  {
    [(WLKNotificationCenter *)self->_center setBadgeNumber:numberCopy withCompletionHandler:0];
  }
}

void __42__VUIJSNotificationCenter_setBadgeNumber___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__VUIJSNotificationCenter_setBadgeNumber___block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)clearBadgeData
{
  if (_os_feature_enabled_impl())
  {

    [(VUIJSNotificationCenter *)self _clearSavedBadgeIdentifiers];
  }

  else
  {
    v3 = MEMORY[0x1E69E14D8];

    [v3 clearSavedBadgeIdentifiers];
  }
}

- (void)_clearSavedBadgeIdentifiers
{
  wlk_userDefaults = [MEMORY[0x1E695E000] wlk_userDefaults];
  [wlk_userDefaults removeObjectForKey:*MEMORY[0x1E69E1700]];
}

void __42__VUIJSNotificationCenter_setBadgeNumber___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIJSNotificationCenter:: failed to update badge count: %@", &v4, 0xCu);
}

@end
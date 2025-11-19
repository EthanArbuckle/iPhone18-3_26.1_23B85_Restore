@interface SUPreferencesChanged
@end

@implementation SUPreferencesChanged

void ____SUPreferencesChanged_block_invoke(uint64_t a1)
{
  v8 = *(a1 + 32);
  SULogInfo(@"%s: Reloading the current preferences now", v1, v2, v3, v4, v5, v6, v7, "void __SUPreferencesChanged(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)_block_invoke");
  [v8 _loadPreferences:1];
}

@end
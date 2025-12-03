@interface SCWSharedPreferences
+ (id)sharedPreferences;
+ (void)clearSharedPreferences;
- (SCWSharedPreferences)init;
@end

@implementation SCWSharedPreferences

+ (id)sharedPreferences
{
  v2 = __sharedPreferences;
  if (!__sharedPreferences)
  {
    v3 = objc_alloc_init(SCWSharedPreferences);
    v4 = __sharedPreferences;
    __sharedPreferences = v3;

    v2 = __sharedPreferences;
  }

  return v2;
}

- (SCWSharedPreferences)init
{
  v8.receiver = self;
  v8.super_class = SCWSharedPreferences;
  v2 = [(SCWSharedPreferences *)&v8 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.stocks"];

    v5 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:@"group.com.apple.stocks" container:v4];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v5;
  }

  return v2;
}

+ (void)clearSharedPreferences
{
  v2 = __sharedPreferences;
  __sharedPreferences = 0;
}

@end
@interface NSUserDefaults(StocksAdditions)
+ (id)sc_userDefaultsWithSuiteName:()StocksAdditions backupDisabled:;
@end

@implementation NSUserDefaults(StocksAdditions)

+ (id)sc_userDefaultsWithSuiteName:()StocksAdditions backupDisabled:
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:v4];
  v6 = *MEMORY[0x1E695E8B8];
  v7 = *MEMORY[0x1E695E898];
  _CFPreferencesSetBackupDisabled();

  return v5;
}

@end
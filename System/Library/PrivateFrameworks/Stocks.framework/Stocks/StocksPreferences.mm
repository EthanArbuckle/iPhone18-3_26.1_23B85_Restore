@interface StocksPreferences
+ (id)sharedPreferences;
+ (void)clearSharedPreferences;
- (StocksPreferences)init;
- (void)resetLocale;
@end

@implementation StocksPreferences

+ (id)sharedPreferences
{
  v2 = __sharedPreferences;
  if (!__sharedPreferences)
  {
    v3 = objc_alloc_init(StocksPreferences);
    v4 = __sharedPreferences;
    __sharedPreferences = v3;

    v2 = __sharedPreferences;
  }

  return v2;
}

+ (void)clearSharedPreferences
{
  v2 = __sharedPreferences;
  __sharedPreferences = 0;
}

- (StocksPreferences)init
{
  v10.receiver = self;
  v10.super_class = StocksPreferences;
  v2 = [(StocksPreferences *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(StocksPreferences *)v2 resetLocale];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_resetLocale name:*MEMORY[0x277CBE620] object:0];

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.stocks"];

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) _initWithSuiteName:@"group.com.apple.stocks" container:v6];
    sharedDefaults = v3->_sharedDefaults;
    v3->_sharedDefaults = v7;
  }

  return v3;
}

- (void)resetLocale
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  self->_changeColorSwapped = ShouldSwapColorsForLocale(v3);

  v4 = MEMORY[0x277CBEAF8];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = *MEMORY[0x277CBE6C8];
  v7 = [v5 objectForKey:*MEMORY[0x277CBE6C8]];
  self->_textDirection = [v4 characterDirectionForLanguage:v7];

  v8 = MEMORY[0x277CBEAF8];
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v13 objectForKey:*MEMORY[0x277CBE6C0]];
  v10 = [v8 componentsFromLocaleIdentifier:v9];
  v11 = [v10 objectForKey:v6];
  v12 = [v11 lowercaseString];
  self->_textAttachmentDirectionIsRightToLeft = [v12 isEqualToString:@"ar"];
}

@end
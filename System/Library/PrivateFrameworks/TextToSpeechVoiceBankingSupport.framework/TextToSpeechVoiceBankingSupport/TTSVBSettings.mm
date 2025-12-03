@interface TTSVBSettings
+ (id)sharedInstance;
- (BOOL)allowAppUsage;
- (TTSVBSettings)init;
@end

@implementation TTSVBSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TTSVBSettings sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

uint64_t __31__TTSVBSettings_sharedInstance__block_invoke()
{
  sharedInstance_Shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (TTSVBSettings)init
{
  v5.receiver = self;
  v5.super_class = TTSVBSettings;
  v2 = [(TTSVBSettings *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];
    [(TTSVBSettings *)v2 setDefaults:v3];
  }

  return v2;
}

- (BOOL)allowAppUsage
{
  defaults = [(TTSVBSettings *)self defaults];
  v3 = [defaults BOOLForKey:@"kTTSVBAllowVoiceBankingAppUsage"];

  return v3;
}

@end
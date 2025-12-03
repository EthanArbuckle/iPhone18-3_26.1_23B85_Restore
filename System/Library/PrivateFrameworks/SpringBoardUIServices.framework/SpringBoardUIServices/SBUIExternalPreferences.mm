@interface SBUIExternalPreferences
+ (id)sharedInstance;
- (BOOL)keyboardPlaysSounds;
- (SBUIExternalPreferences)init;
@end

@implementation SBUIExternalPreferences

- (SBUIExternalPreferences)init
{
  v6.receiver = self;
  v6.super_class = SBUIExternalPreferences;
  v2 = [(SBUIExternalPreferences *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.preferences.sounds"];
    soundDefaults = v2->_soundDefaults;
    v2->_soundDefaults = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[SBUIExternalPreferences sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

- (BOOL)keyboardPlaysSounds
{
  dictionaryRepresentation = [(NSUserDefaults *)self->_soundDefaults dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v5 = [allKeys containsObject:@"keyboard"];

  if (!v5)
  {
    return 1;
  }

  soundDefaults = self->_soundDefaults;

  return [(NSUserDefaults *)soundDefaults BOOLForKey:@"keyboard"];
}

uint64_t __41__SBUIExternalPreferences_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(SBUIExternalPreferences);

  return MEMORY[0x1EEE66BB8]();
}

@end
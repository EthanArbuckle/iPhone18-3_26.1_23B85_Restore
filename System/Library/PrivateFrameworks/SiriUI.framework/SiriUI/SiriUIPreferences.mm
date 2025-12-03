@interface SiriUIPreferences
+ (id)sharedPreferences;
- (BOOL)voiceRequestMadeWhileInCarDND;
- (SiriUIPreferences)init;
- (id)previousSiriRequestErrorTimestamp;
- (int64_t)numberOfTimesCarDNDSiriCardShown;
- (int64_t)siriRequestErrorCount;
- (void)setPreviousSiriRequestErrorTimestamp:(id)timestamp;
@end

@implementation SiriUIPreferences

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    +[SiriUIPreferences sharedPreferences];
  }

  v3 = sharedPreferences_sharedInstance;

  return v3;
}

uint64_t __38__SiriUIPreferences_sharedPreferences__block_invoke()
{
  v0 = objc_alloc_init(SiriUIPreferences);
  v1 = sharedPreferences_sharedInstance;
  sharedPreferences_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SiriUIPreferences)init
{
  v6.receiver = self;
  v6.super_class = SiriUIPreferences;
  v2 = [(SiriUIPreferences *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.carDND"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (id)previousSiriRequestErrorTimestamp
{
  previousSiriRequestErrorTimestamp = self->_previousSiriRequestErrorTimestamp;
  if (!previousSiriRequestErrorTimestamp)
  {
    v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"previousSiriRequestErrorTimestamp"];
    v5 = self->_previousSiriRequestErrorTimestamp;
    self->_previousSiriRequestErrorTimestamp = v4;

    previousSiriRequestErrorTimestamp = self->_previousSiriRequestErrorTimestamp;
  }

  return previousSiriRequestErrorTimestamp;
}

- (void)setPreviousSiriRequestErrorTimestamp:(id)timestamp
{
  objc_storeStrong(&self->_previousSiriRequestErrorTimestamp, timestamp);
  timestampCopy = timestamp;
  [(NSUserDefaults *)self->_userDefaults setObject:timestampCopy forKey:@"previousSiriRequestErrorTimestamp"];
}

- (int64_t)siriRequestErrorCount
{
  result = self->_siriRequestErrorCount;
  if (!result)
  {
    result = [(NSUserDefaults *)self->_userDefaults integerForKey:@"siriRequestErrorCount"];
    self->_siriRequestErrorCount = result;
  }

  return result;
}

- (BOOL)voiceRequestMadeWhileInCarDND
{
  if (self->_voiceRequestMadeWhileInCarDND)
  {
    return 1;
  }

  result = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"voiceRequestMadeWhileInCarDND"];
  self->_voiceRequestMadeWhileInCarDND = result;
  return result;
}

- (int64_t)numberOfTimesCarDNDSiriCardShown
{
  result = self->_numberOfTimesSiriCardShown;
  if (!result)
  {
    result = [(NSUserDefaults *)self->_userDefaults integerForKey:@"carDNDNumberOfTimesCardShown"];
    self->_numberOfTimesSiriCardShown = result;
  }

  return result;
}

@end
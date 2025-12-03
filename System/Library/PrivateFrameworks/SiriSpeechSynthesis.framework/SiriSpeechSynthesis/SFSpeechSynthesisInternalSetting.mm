@interface SFSpeechSynthesisInternalSetting
+ (id)sharedInstance;
- (NSString)deviceId;
- (NSString)ospreyEndpointURL;
- (SFSpeechSynthesisInternalSetting)init;
- (id)ospreyEndpointURLByType:(int64_t)type;
@end

@implementation SFSpeechSynthesisInternalSetting

- (NSString)deviceId
{
  v3 = [(NSUserDefaults *)self->_defaults stringForKey:@"deviceId"];
  v4 = v3;
  if (v3)
  {
    uUIDString = v3;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [(NSUserDefaults *)self->_defaults setObject:uUIDString forKey:@"deviceId"];
    [(NSUserDefaults *)self->_defaults synchronize];
  }

  return uUIDString;
}

- (id)ospreyEndpointURLByType:(int64_t)type
{
  v5 = type - 1;
  if (type - 1) < 7 && ((0x5Fu >> v5))
  {
    ospreyEndpointURL = off_279C4C3E0[v5];
  }

  else
  {
    ospreyEndpointURL = [(SFSpeechSynthesisInternalSetting *)self ospreyEndpointURL];
  }

  return ospreyEndpointURL;
}

- (NSString)ospreyEndpointURL
{
  v2 = [(NSUserDefaults *)self->_defaults stringForKey:@"ospreyEndpointUrl"];
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = v3;
  }

  else if (+[SFSpeechSynthesisUtils isInternalBuild])
  {
    v4 = @"https://carry-dejavu.siri.apple.com";
  }

  else
  {
    v4 = @"https://dejavu.apple.com";
  }

  return v4;
}

- (SFSpeechSynthesisInternalSetting)init
{
  v6.receiver = self;
  v6.super_class = SFSpeechSynthesisInternalSetting;
  v2 = [(SFSpeechSynthesisInternalSetting *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.speech.speechsynthesis"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1775 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1775, &__block_literal_global_1776);
  }

  v3 = sharedInstance___standardInstance;

  return v3;
}

uint64_t __50__SFSpeechSynthesisInternalSetting_sharedInstance__block_invoke()
{
  sharedInstance___standardInstance = objc_alloc_init(SFSpeechSynthesisInternalSetting);

  return MEMORY[0x2821F96F8]();
}

@end
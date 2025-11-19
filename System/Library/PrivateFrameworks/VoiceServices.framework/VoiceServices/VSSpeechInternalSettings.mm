@interface VSSpeechInternalSettings
+ (id)standardInstance;
- (BOOL)enableAudioDump;
- (VSSpeechInternalSettings)init;
@end

@implementation VSSpeechInternalSettings

- (BOOL)enableAudioDump
{
  v3 = [(NSUserDefaults *)self->_internalDefaults objectForKey:@"enableAudioDump"];

  if (!v3)
  {
    return 1;
  }

  internalDefaults = self->_internalDefaults;

  return [(NSUserDefaults *)internalDefaults BOOLForKey:@"enableAudioDump"];
}

- (VSSpeechInternalSettings)init
{
  v9.receiver = self;
  v9.super_class = VSSpeechInternalSettings;
  v2 = [(VSSpeechInternalSettings *)&v9 init];
  if (v2)
  {
    if (!+[VSUtilities isInternalBuild])
    {
      v6 = 0;
      goto LABEL_10;
    }

    if (geteuid() != 501)
    {
      v3 = VSGetLogDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_272850000, v3, OS_LOG_TYPE_ERROR, "process is not running as user Mobile: it won't share the same UserDefaults as voiced", v8, 2u);
      }
    }

    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.voiceservices"];
    internalDefaults = v2->_internalDefaults;
    v2->_internalDefaults = v4;

    [(NSUserDefaults *)v2->_internalDefaults removeObjectForKey:@"enableTrial"];
  }

  v6 = v2;
LABEL_10:

  return v6;
}

+ (id)standardInstance
{
  if (standardInstance_onceToken != -1)
  {
    dispatch_once(&standardInstance_onceToken, &__block_literal_global_159);
  }

  v3 = standardInstance___standardInstance;

  return v3;
}

void __44__VSSpeechInternalSettings_standardInstance__block_invoke()
{
  v0 = objc_alloc_init(VSSpeechInternalSettings);
  v1 = standardInstance___standardInstance;
  standardInstance___standardInstance = v0;
}

@end
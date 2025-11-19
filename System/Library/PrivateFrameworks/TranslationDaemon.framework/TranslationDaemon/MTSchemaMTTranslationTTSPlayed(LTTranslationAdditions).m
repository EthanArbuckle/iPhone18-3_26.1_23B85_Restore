@interface MTSchemaMTTranslationTTSPlayed(LTTranslationAdditions)
+ (id)lt_initWithSourceOrTargetLanguage:()LTTranslationAdditions isAutoplayTranslation:playbackSpeed:audioChannel:;
@end

@implementation MTSchemaMTTranslationTTSPlayed(LTTranslationAdditions)

+ (id)lt_initWithSourceOrTargetLanguage:()LTTranslationAdditions isAutoplayTranslation:playbackSpeed:audioChannel:
{
  v10 = objc_alloc_init(MEMORY[0x277D58B40]);
  v11 = v10;
  if (a3 <= 2)
  {
    [v10 setSourceOrTarget:a3];
  }

  [v11 setIsAutoplayTranslation:a4];
  if (a5 <= 4)
  {
    [v11 setPlaybackSpeed:a5];
  }

  if ((a6 - 1) < 5)
  {
    v12 = a6;
  }

  else
  {
    v12 = 0;
  }

  [v11 setAudioChannel:v12];

  return v11;
}

@end
@interface TTSVBSiriTTSTrainingWrapper
+ (BOOL)isSiriTrainingAvailable;
+ (NSBundle)siriTTSTrainingBundle;
@end

@implementation TTSVBSiriTTSTrainingWrapper

+ (BOOL)isSiriTrainingAvailable
{
  v2 = +[TTSVBSiriTTSTrainingWrapper siriTTSTrainingBundle];
  v3 = v2 != 0;

  return v3;
}

+ (NSBundle)siriTTSTrainingBundle
{
  if (siriTTSTrainingBundle_onceToken != -1)
  {
    +[TTSVBSiriTTSTrainingWrapper siriTTSTrainingBundle];
  }

  v3 = siriTTSTrainingBundle__SiriTTSTrainingBundle;

  return v3;
}

void __52__TTSVBSiriTTSTrainingWrapper_siriTTSTrainingBundle__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getSiriTTSTrainerTaskClass_softClass;
  v8 = getSiriTTSTrainerTaskClass_softClass;
  if (!getSiriTTSTrainerTaskClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getSiriTTSTrainerTaskClass_block_invoke;
    v4[3] = &unk_2789C3AA0;
    v4[4] = &v5;
    __getSiriTTSTrainerTaskClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:v0];
    v3 = siriTTSTrainingBundle__SiriTTSTrainingBundle;
    siriTTSTrainingBundle__SiriTTSTrainingBundle = v2;
  }
}

@end
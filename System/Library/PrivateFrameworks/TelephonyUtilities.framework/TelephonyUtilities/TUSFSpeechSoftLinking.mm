@interface TUSFSpeechSoftLinking
+ (BOOL)isGeneralASRSupportedOnDevice;
+ (id)generalASRLanguageForLocale:(id)locale;
@end

@implementation TUSFSpeechSoftLinking

+ (BOOL)isGeneralASRSupportedOnDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getSFUtilitiesClass_softClass;
  v9 = getSFUtilitiesClass_softClass;
  if (!getSFUtilitiesClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSFUtilitiesClass_block_invoke;
    v5[3] = &unk_1E7424CD8;
    v5[4] = &v6;
    __getSFUtilitiesClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 isGeneralASRSupportedOnDevice];
}

+ (id)generalASRLanguageForLocale:(id)locale
{
  localeCopy = locale;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getSFSpeechAssetManagerClass_softClass;
  v12 = getSFSpeechAssetManagerClass_softClass;
  if (!getSFSpeechAssetManagerClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getSFSpeechAssetManagerClass_block_invoke;
    v8[3] = &unk_1E7424CD8;
    v8[4] = &v9;
    __getSFSpeechAssetManagerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 generalASRLanguageForLocale:localeCopy];

  return v6;
}

@end
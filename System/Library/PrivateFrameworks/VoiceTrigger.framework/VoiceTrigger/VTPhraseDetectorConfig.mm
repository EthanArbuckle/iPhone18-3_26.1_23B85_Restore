@interface VTPhraseDetectorConfig
- (VTPhraseDetectorConfig)initWithResourcePath:(id)a3 configPathNDAPI:(id)a4 useRecognizerCombination:(BOOL)a5 configPathRecognizer:(id)a6 useKeywordSpotting:(BOOL)a7 phraseConfigs:(id)a8;
@end

@implementation VTPhraseDetectorConfig

- (VTPhraseDetectorConfig)initWithResourcePath:(id)a3 configPathNDAPI:(id)a4 useRecognizerCombination:(BOOL)a5 configPathRecognizer:(id)a6 useKeywordSpotting:(BOOL)a7 phraseConfigs:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = VTPhraseDetectorConfig;
  v18 = [(VTPhraseDetectorConfig *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_resourcePath, a3);
    objc_storeStrong(&v19->_configPathNDAPI, a4);
    v19->_useRecognizerCombination = a5;
    objc_storeStrong(&v19->_configPathRecognizer, a6);
    v19->_useKeywordSpotting = a7;
    objc_storeStrong(&v19->_phraseConfigs, a8);
  }

  return v19;
}

@end
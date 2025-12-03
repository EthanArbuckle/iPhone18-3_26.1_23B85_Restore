@interface VTPhraseDetectorConfig
- (VTPhraseDetectorConfig)initWithResourcePath:(id)path configPathNDAPI:(id)i useRecognizerCombination:(BOOL)combination configPathRecognizer:(id)recognizer useKeywordSpotting:(BOOL)spotting phraseConfigs:(id)configs;
@end

@implementation VTPhraseDetectorConfig

- (VTPhraseDetectorConfig)initWithResourcePath:(id)path configPathNDAPI:(id)i useRecognizerCombination:(BOOL)combination configPathRecognizer:(id)recognizer useKeywordSpotting:(BOOL)spotting phraseConfigs:(id)configs
{
  pathCopy = path;
  iCopy = i;
  recognizerCopy = recognizer;
  configsCopy = configs;
  v22.receiver = self;
  v22.super_class = VTPhraseDetectorConfig;
  v18 = [(VTPhraseDetectorConfig *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_resourcePath, path);
    objc_storeStrong(&v19->_configPathNDAPI, i);
    v19->_useRecognizerCombination = combination;
    objc_storeStrong(&v19->_configPathRecognizer, recognizer);
    v19->_useKeywordSpotting = spotting;
    objc_storeStrong(&v19->_phraseConfigs, configs);
  }

  return v19;
}

@end
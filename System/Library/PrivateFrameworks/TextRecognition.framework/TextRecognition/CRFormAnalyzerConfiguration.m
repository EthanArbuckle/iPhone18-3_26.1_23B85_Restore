@interface CRFormAnalyzerConfiguration
- (CRFormAnalyzerConfiguration)init;
@end

@implementation CRFormAnalyzerConfiguration

- (CRFormAnalyzerConfiguration)init
{
  v7.receiver = self;
  v7.super_class = CRFormAnalyzerConfiguration;
  v2 = [(CRFormAnalyzerConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    customModelURL = v2->_customModelURL;
    v2->_customModelURL = 0;

    *&v3->_gatingWithOCRResults = 16777473;
    *&v3->_useModelBasedDetection = 257;
    metalDevice = v3->_metalDevice;
    v3->_metalDevice = 0;
    v3->_computeDeviceType = 0;
  }

  return v3;
}

@end
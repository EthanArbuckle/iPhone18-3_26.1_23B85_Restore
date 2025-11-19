@interface SCMLVideoAnalysisConfiguration
+ (id)defaultConfig;
- (SCMLVideoAnalysisConfiguration)initWithOptions:(id)a3 framesPerSync:(unint64_t)a4 frameLimit:(id)a5 sensitiveFrameCountThreshold:(unint64_t)a6 useUniformSampling:(BOOL)a7;
@end

@implementation SCMLVideoAnalysisConfiguration

+ (id)defaultConfig
{
  if (defaultConfig_onceToken != -1)
  {
    +[SCMLVideoAnalysisConfiguration defaultConfig];
  }

  v3 = defaultConfig_defaultConfig;

  return v3;
}

uint64_t __47__SCMLVideoAnalysisConfiguration_defaultConfig__block_invoke()
{
  defaultConfig_defaultConfig = [[SCMLVideoAnalysisConfiguration alloc] initWithOptions:0 framesPerSync:1 frameLimit:&unk_1F3751990 sensitiveFrameCountThreshold:2 useUniformSampling:1];

  return MEMORY[0x1EEE66BB8]();
}

- (SCMLVideoAnalysisConfiguration)initWithOptions:(id)a3 framesPerSync:(unint64_t)a4 frameLimit:(id)a5 sensitiveFrameCountThreshold:(unint64_t)a6 useUniformSampling:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = SCMLVideoAnalysisConfiguration;
  v14 = [(SCMLAnalysisConfiguration *)&v19 initWithOptions:v12];
  v15 = v14;
  if (v14)
  {
    v14->_framesPerSync = a4;
    objc_storeStrong(&v14->_frameLimit, a5);
    v15->_sensitiveFrameCountThreshold = a6;
    v15->_useUniformSampling = a7;
    v16 = [v12 objectForKeyedSubscript:@"SCMLAnalysisConfigurationDebugFramesOutputPathPrefix"];
    debugFramesOutputPathPrefix = v15->_debugFramesOutputPathPrefix;
    v15->_debugFramesOutputPathPrefix = v16;
  }

  return v15;
}

@end
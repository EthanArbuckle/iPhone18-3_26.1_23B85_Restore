@interface SCMLVideoAnalysisConfiguration
+ (id)defaultConfig;
- (SCMLVideoAnalysisConfiguration)initWithOptions:(id)options framesPerSync:(unint64_t)sync frameLimit:(id)limit sensitiveFrameCountThreshold:(unint64_t)threshold useUniformSampling:(BOOL)sampling;
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

- (SCMLVideoAnalysisConfiguration)initWithOptions:(id)options framesPerSync:(unint64_t)sync frameLimit:(id)limit sensitiveFrameCountThreshold:(unint64_t)threshold useUniformSampling:(BOOL)sampling
{
  optionsCopy = options;
  limitCopy = limit;
  v19.receiver = self;
  v19.super_class = SCMLVideoAnalysisConfiguration;
  v14 = [(SCMLAnalysisConfiguration *)&v19 initWithOptions:optionsCopy];
  v15 = v14;
  if (v14)
  {
    v14->_framesPerSync = sync;
    objc_storeStrong(&v14->_frameLimit, limit);
    v15->_sensitiveFrameCountThreshold = threshold;
    v15->_useUniformSampling = sampling;
    v16 = [optionsCopy objectForKeyedSubscript:@"SCMLAnalysisConfigurationDebugFramesOutputPathPrefix"];
    debugFramesOutputPathPrefix = v15->_debugFramesOutputPathPrefix;
    v15->_debugFramesOutputPathPrefix = v16;
  }

  return v15;
}

@end
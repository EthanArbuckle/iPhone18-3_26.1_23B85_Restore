@interface SKDDefaults
+ (id)sharedDefaults;
- (BOOL)anyPipelineEnabled;
- (BOOL)enabledForPipeline:(id)pipeline;
- (BOOL)pipelineDebugEnabled;
- (BOOL)pipelineEnabled;
- (BOOL)pipelineKeyphrasesEnabled;
- (SKDDefaultsProviding)defaultsProvider;
- (SKDFeatureFlagsProviding)featureFlagsProvider;
- (id)versionForPipeline:(id)pipeline;
@end

@implementation SKDDefaults

+ (id)sharedDefaults
{
  if (sharedDefaults_onceToken != -1)
  {
    +[SKDDefaults sharedDefaults];
  }

  v3 = sharedDefaults_sSharedDefaults;

  return v3;
}

void __29__SKDDefaults_sharedDefaults__block_invoke()
{
  v0 = objc_alloc_init(SKDDefaults);
  v1 = sharedDefaults_sSharedDefaults;
  sharedDefaults_sSharedDefaults = v0;
}

- (BOOL)enabledForPipeline:(id)pipeline
{
  v4 = [pipeline isEqualToString:@"keyphrases"];
  if (v4)
  {
    featureFlagsProvider = [(SKDDefaults *)self featureFlagsProvider];
    isPipelineKeyphrasesEnabled = [featureFlagsProvider isPipelineKeyphrasesEnabled];

    LOBYTE(v4) = isPipelineKeyphrasesEnabled;
  }

  return v4;
}

- (id)versionForPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  defaultsProvider = [(SKDDefaults *)self defaultsProvider];
  v6 = [defaultsProvider versionForPipeline:pipelineCopy];

  return v6;
}

- (BOOL)anyPipelineEnabled
{
  if ([(SKDDefaults *)self pipelineEnabled]|| [(SKDDefaults *)self pipelineDebugEnabled])
  {
    return 1;
  }

  return [(SKDDefaults *)self pipelineKeyphrasesEnabled];
}

- (BOOL)pipelineEnabled
{
  featureFlagsProvider = [(SKDDefaults *)self featureFlagsProvider];
  isPipelineEnabled = [featureFlagsProvider isPipelineEnabled];

  return isPipelineEnabled;
}

- (BOOL)pipelineDebugEnabled
{
  featureFlagsProvider = [(SKDDefaults *)self featureFlagsProvider];
  isPipelineDebugEnabled = [featureFlagsProvider isPipelineDebugEnabled];

  return isPipelineDebugEnabled;
}

- (BOOL)pipelineKeyphrasesEnabled
{
  featureFlagsProvider = [(SKDDefaults *)self featureFlagsProvider];
  isPipelineKeyphrasesEnabled = [featureFlagsProvider isPipelineKeyphrasesEnabled];

  return isPipelineKeyphrasesEnabled;
}

- (SKDDefaultsProviding)defaultsProvider
{
  defaultsProvider = self->_defaultsProvider;
  if (!defaultsProvider)
  {
    v4 = objc_alloc_init(SKDDefaultsProvider);
    v5 = self->_defaultsProvider;
    self->_defaultsProvider = v4;

    defaultsProvider = self->_defaultsProvider;
  }

  return defaultsProvider;
}

- (SKDFeatureFlagsProviding)featureFlagsProvider
{
  featureFlagsProvider = self->_featureFlagsProvider;
  if (!featureFlagsProvider)
  {
    v4 = objc_alloc_init(SKDFeatureFlagsProvider);
    v5 = self->_featureFlagsProvider;
    self->_featureFlagsProvider = v4;

    featureFlagsProvider = self->_featureFlagsProvider;
  }

  return featureFlagsProvider;
}

@end
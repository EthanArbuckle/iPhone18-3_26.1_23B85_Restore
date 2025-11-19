@interface SKDDefaults
+ (id)sharedDefaults;
- (BOOL)anyPipelineEnabled;
- (BOOL)enabledForPipeline:(id)a3;
- (BOOL)pipelineDebugEnabled;
- (BOOL)pipelineEnabled;
- (BOOL)pipelineKeyphrasesEnabled;
- (SKDDefaultsProviding)defaultsProvider;
- (SKDFeatureFlagsProviding)featureFlagsProvider;
- (id)versionForPipeline:(id)a3;
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

- (BOOL)enabledForPipeline:(id)a3
{
  v4 = [a3 isEqualToString:@"keyphrases"];
  if (v4)
  {
    v5 = [(SKDDefaults *)self featureFlagsProvider];
    v6 = [v5 isPipelineKeyphrasesEnabled];

    LOBYTE(v4) = v6;
  }

  return v4;
}

- (id)versionForPipeline:(id)a3
{
  v4 = a3;
  v5 = [(SKDDefaults *)self defaultsProvider];
  v6 = [v5 versionForPipeline:v4];

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
  v2 = [(SKDDefaults *)self featureFlagsProvider];
  v3 = [v2 isPipelineEnabled];

  return v3;
}

- (BOOL)pipelineDebugEnabled
{
  v2 = [(SKDDefaults *)self featureFlagsProvider];
  v3 = [v2 isPipelineDebugEnabled];

  return v3;
}

- (BOOL)pipelineKeyphrasesEnabled
{
  v2 = [(SKDDefaults *)self featureFlagsProvider];
  v3 = [v2 isPipelineKeyphrasesEnabled];

  return v3;
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
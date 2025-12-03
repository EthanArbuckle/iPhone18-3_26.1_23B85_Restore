@interface RPTSettings
+ (RPTSettings)processEnvironment;
- (RPTSettings)init;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation RPTSettings

+ (RPTSettings)processEnvironment
{
  if (processEnvironment_onceToken != -1)
  {
    +[RPTSettings processEnvironment];
  }

  v3 = processEnvironment_currentEnvironment;

  return v3;
}

void __33__RPTSettings_processEnvironment__block_invoke()
{
  v0 = [RPTSettings alloc];
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v4 environment];
  v2 = [(RPTSettings *)v0 initFromDictionary:v1];
  v3 = processEnvironment_currentEnvironment;
  processEnvironment_currentEnvironment = v2;
}

- (RPTSettings)init
{
  v6.receiver = self;
  v6.super_class = RPTSettings;
  v2 = [(RPTSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    recapOverrideFileURL = v2->_recapOverrideFileURL;
    v2->_recapOverrideFileURL = 0;

    v3->_activationIterationCount = -1;
  }

  return v3;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = RPTSettings;
  v5 = [(RPTSettings *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"RPT_OVERRIDE_RECAP_WITH_FILE"];
    recapOverrideFileURL = v5->_recapOverrideFileURL;
    v5->_recapOverrideFileURL = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"RPT_ACTIVATION_ITERATION_COUNT"];
    v9 = v8;
    if (v8)
    {
      intValue = [v8 intValue];
    }

    else
    {
      intValue = -1;
    }

    v5->_activationIterationCount = intValue;
  }

  return v5;
}

@end
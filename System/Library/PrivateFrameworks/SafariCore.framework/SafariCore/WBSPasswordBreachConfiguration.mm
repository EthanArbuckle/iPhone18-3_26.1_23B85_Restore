@interface WBSPasswordBreachConfiguration
+ (WBSPasswordBreachConfiguration)standardConfiguration;
- (WBSPasswordBreachConfiguration)initWithDictionary:(id)dictionary protocolClasses:(id)classes allowValuesForTesting:(BOOL)testing;
@end

@implementation WBSPasswordBreachConfiguration

- (WBSPasswordBreachConfiguration)initWithDictionary:(id)dictionary protocolClasses:(id)classes allowValuesForTesting:(BOOL)testing
{
  testingCopy = testing;
  dictionaryCopy = dictionary;
  classesCopy = classes;
  v34.receiver = self;
  v34.super_class = WBSPasswordBreachConfiguration;
  v10 = [(WBSPasswordBreachConfiguration *)&v34 init];
  if (!v10)
  {
    v30 = 0;
    goto LABEL_34;
  }

  v11 = os_variant_allows_internal_security_policies();
  v10->_isInternalBuild = v11;
  if ((v11 & 1) == 0 && testingCopy)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfiguration initWithDictionary:v12 protocolClasses:? allowValuesForTesting:?];
    }

    testingCopy = 0;
  }

  v13 = [[WBSPasswordBreachConfigurationDictionaryUnpacker alloc] initWithDictionary:dictionaryCopy];
  v14 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 stringForKey:@"HighFrequencyBucketHashSalt" minimumLength:8];
  highFrequencyBucketHashSalt = v10->_highFrequencyBucketHashSalt;
  v10->_highFrequencyBucketHashSalt = v14;

  v16 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 stringForKey:@"LowFrequencyBucketHashSalt" minimumLength:8];
  lowFrequencyBucketHashSalt = v10->_lowFrequencyBucketHashSalt;
  v10->_lowFrequencyBucketHashSalt = v16;

  if (testingCopy)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2048;
  }

  if (testingCopy)
  {
    v19 = 1;
  }

  else
  {
    v19 = 15;
  }

  v10->_highFrequencyBucketHashWorkFactor = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"HighFrequencyBucketHashWorkFactor" minimumValue:v18 maximumValue:-1];
  v10->_lowFrequencyBucketHashWorkFactor = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"HighFrequencyBucketHashWorkFactor" minimumValue:v18 maximumValue:-1];
  v10->_lowFrequencyBucketIdentifierBitCount = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"LowFrequencyBucketIdentifierBitCount" minimumValue:v19 maximumValue:26];
  v10->_highFrequencyBucketScryptBlockSizeR = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"HighFrequencyBucketScryptBlockSizeR" minimumValue:1 maximumValue:100];
  v10->_highFrequencyBucketScryptParallelismFactorP = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"HighFrequencyBucketScryptParallelismFactorP" minimumValue:1 maximumValue:100];
  v10->_lowFrequencyBucketScryptBlockSizeR = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"LowFrequencyBucketScryptBlockSizeR" minimumValue:1 maximumValue:100];
  v10->_lowFrequencyBucketScryptParallelismFactorP = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"LowFrequencyBucketScryptParallelismFactorP" minimumValue:1 maximumValue:100];
  v20 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 URLForKey:@"HighFrequencyBucketURL"];
  highFrequencyBucketURL = v10->_highFrequencyBucketURL;
  v10->_highFrequencyBucketURL = v20;

  v22 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 URLForKey:@"LowFrequencyBucketURL"];
  lowFrequencyBucketURL = v10->_lowFrequencyBucketURL;
  v10->_lowFrequencyBucketURL = v22;

  if (testingCopy)
  {
    v24 = 0;
  }

  else
  {
    v24 = 86400;
  }

  if (testingCopy)
  {
    v25 = 1;
  }

  else
  {
    v25 = 5;
  }

  if (testingCopy)
  {
    v26 = 1;
  }

  else
  {
    v26 = 3;
  }

  if (testingCopy)
  {
    v27 = 1;
  }

  else
  {
    v27 = 10;
  }

  v10->_minimumDelayBetweenSessions = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"MinimumDelayBetweenSessions" minimumValue:v24 maximumValue:2592000];
  v10->_passwordCheckBatchSize = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"PasswordCheckBatchSize" minimumValue:v25 maximumValue:50];
  v10->_numberOfBatchesPerSession = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"NumberOfBatchesPerSession" minimumValue:v26 maximumValue:10];
  v10->_fakePasswordLengthBytes = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"FakePasswordLengthBytes" minimumValue:v27 maximumValue:30];
  v10->_lowFrequencyBucketFetchTimeout = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 unsignedIntegerForKey:@"LowFrequencyBucketFetchTimeout" minimumValue:v25 maximumValue:120];
  if ([WBSPasswordBreachCryptographicOperations isValidScryptHashWorkFactor:v10->_lowFrequencyBucketHashWorkFactor blockSizeR:v10->_lowFrequencyBucketScryptBlockSizeR parallelismFactorP:v10->_lowFrequencyBucketScryptParallelismFactorP]&& [WBSPasswordBreachCryptographicOperations isValidScryptHashWorkFactor:v10->_highFrequencyBucketHashWorkFactor blockSizeR:v10->_highFrequencyBucketScryptBlockSizeR parallelismFactorP:v10->_highFrequencyBucketScryptParallelismFactorP])
  {
    if (testingCopy)
    {
      v10->_shouldRefillBagWhenEmpty = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 optionalBoolForKey:@"ShouldRefillBagWhenEmptyInternalOnly" defaultValue:1];
      v28 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 optionalBoolForKey:@"VerboseSensitiveLoggingInternalOnly" defaultValue:0];
    }

    else
    {
      v28 = 0;
      v10->_shouldRefillBagWhenEmpty = 1;
    }

    v10->_verboseSensitiveLoggingEnabled = v28;
    if (![(WBSPasswordBreachConfigurationDictionaryUnpacker *)v13 errorOccurred])
    {
      safari_ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
      urlSessionConfiguration = v10->_urlSessionConfiguration;
      v10->_urlSessionConfiguration = safari_ephemeralSessionConfiguration;

      if (classesCopy)
      {
        [(NSURLSessionConfiguration *)v10->_urlSessionConfiguration setProtocolClasses:classesCopy];
      }

      v30 = v10;
      goto LABEL_32;
    }
  }

  else
  {
    v29 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfiguration initWithDictionary:v29 protocolClasses:? allowValuesForTesting:?];
    }
  }

  v30 = 0;
LABEL_32:

LABEL_34:
  return v30;
}

+ (WBSPasswordBreachConfiguration)standardConfiguration
{
  if (standardConfiguration_onceToken != -1)
  {
    +[WBSPasswordBreachConfiguration standardConfiguration];
  }

  v3 = standardConfiguration_configuration;

  return v3;
}

void __55__WBSPasswordBreachConfiguration_standardConfiguration__block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v4[0] = @"LowFrequencyBucketIdentifierBitCount";
  v4[1] = @"HighFrequencyBucketURL";
  v5[0] = &unk_1F308E360;
  v5[1] = @"https://pbs-service-idem-dev.usnkq03.app.apple.com/pbs/api/v1/bucket/";
  v4[2] = @"LowFrequencyBucketURL";
  v4[3] = @"PasswordCheckBatchSize";
  v5[2] = @"https://pbs-service-idem-dev.usnkq03.app.apple.com/pbs/api/v1/bucket/";
  v5[3] = &unk_1F308E378;
  v4[4] = @"NumberOfBatchesPerSession";
  v4[5] = @"FakePasswordLengthBytes";
  v5[4] = &unk_1F308E390;
  v5[5] = &unk_1F308E3A8;
  v4[6] = @"LowFrequencyBucketFetchTimeout";
  v5[6] = &unk_1F308E3A8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:7];
  v1 = [[WBSPasswordBreachConfiguration alloc] initWithDictionary:v0];
  v2 = standardConfiguration_configuration;
  standardConfiguration_configuration = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end
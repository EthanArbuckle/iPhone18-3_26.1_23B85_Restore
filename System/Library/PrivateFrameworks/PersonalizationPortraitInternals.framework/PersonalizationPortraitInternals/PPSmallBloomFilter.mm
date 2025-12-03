@interface PPSmallBloomFilter
- (PPSmallBloomFilter)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromBatch:(id)batch options:(id)options error:(id *)error;
- (void)dealloc;
@end

@implementation PPSmallBloomFilter

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = PPSmallBloomFilter;
  [(PPSmallBloomFilter *)&v3 dealloc];
}

- (id)predictionsFromBatch:(id)batch options:(id)options error:(id *)error
{
  batchCopy = batch;
  optionsCopy = options;
  v11 = objc_opt_new();
  if ([batchCopy count] < 1)
  {
    v12 = 0;
  }

  else
  {
    v25 = a2;
    errorCopy = error;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v12;
      v15 = objc_autoreleasePoolPush();
      v16 = [batchCopy featuresAtIndex:v13];
      v28 = v12;
      v17 = [(PPSmallBloomFilter *)self predictionFromFeatures:v16 options:optionsCopy error:&v28];
      v12 = v28;

      if (v17)
      {
        [v11 addObject:v17];
      }

      else
      {
        v18 = objc_alloc(MEMORY[0x277CBFED0]);
        v27 = v12;
        v19 = [v18 initWithDictionary:MEMORY[0x277CBEC10] error:&v27];
        v20 = v27;

        if (!v19)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v25 object:self file:@"PPCoreMLUtils.m" lineNumber:242 description:@"Empty provider should not be null"];
        }

        [v11 addObject:{v19, v25}];

        v12 = v20;
      }

      objc_autoreleasePoolPop(v15);
      ++v13;
    }

    while (v13 < [batchCopy count]);
    if (errorCopy && v12)
    {
      v22 = v12;
      *errorCopy = v12;
    }
  }

  v23 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v11];

  return v23;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = [features featureValueForName:{self->_inputName, options}];
  stringValue = [v7 stringValue];
  localizedLowercaseString = [stringValue localizedLowercaseString];

  if (localizedLowercaseString)
  {
    pthread_mutex_lock(&self->_lock);
    v10 = [(_PASBloomFilter *)self->_bloomFilter computeHashesForString:localizedLowercaseString reuse:0];
    v11 = [(_PASBloomFilter *)self->_bloomFilter getWithHashes:v10];
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc(MEMORY[0x277CBFED0]);
  outputName = self->_outputName;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  v20 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v15 = [PPCoreMLUtils _multiArrayForNumberArray:v14];
  v22[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&outputName count:1];
  v17 = [v12 initWithDictionary:v16 error:error];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (PPSmallBloomFilter)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PPSmallBloomFilter;
  v7 = [(PPSmallBloomFilter *)&v21 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"trial_namespace_name"];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES";
    }

    v10 = +[PPTrialWrapper sharedInstance];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"path"];
    v12 = [v10 filepathForFactor:v11 namespaceName:v9];

    if (!v12)
    {

      v19 = 0;
      goto LABEL_11;
    }

    if (!v7->_bloomFilter)
    {
      v13 = [MEMORY[0x277D42540] bloomFilterWithPathToFile:v12];
      bloomFilter = v7->_bloomFilter;
      v7->_bloomFilter = v13;
    }

    pthread_mutex_init(&v7->_lock, 0);
    v15 = [dictionaryCopy objectForKeyedSubscript:@"inputName"];
    inputName = v7->_inputName;
    v7->_inputName = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"outputName"];
    outputName = v7->_outputName;
    v7->_outputName = v17;
  }

  v19 = v7;
LABEL_11:

  return v19;
}

@end
@interface PPCountVectorizer
- (PPCountVectorizer)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation PPCountVectorizer

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v48[2] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  optionsCopy = options;
  v10 = [featuresCopy featureValueForName:self->_inputName];
  sequenceValue = [v10 sequenceValue];

  v12 = objc_alloc(MEMORY[0x277CBFF48]);
  v13 = objc_autoreleasePoolPush();
  v48[0] = &unk_284785280;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableDictionary count](self->_vocabulary, "count")}];
  v48[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];

  objc_autoreleasePoolPop(v13);
  v16 = [v12 initWithShape:v15 dataType:65568 error:error];

  if (v16)
  {
    errorCopy = error;
    v37 = sequenceValue;
    v38 = optionsCopy;
    v39 = featuresCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    stringValues = [sequenceValue stringValues];
    v18 = [stringValues countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(stringValues);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          vocabulary = self->_vocabulary;
          lowercaseString = [v22 lowercaseString];
          v26 = [(NSMutableDictionary *)vocabulary objectForKeyedSubscript:lowercaseString];

          if (v26)
          {
            v27 = MEMORY[0x277CCABB0];
            v28 = [v16 objectAtIndexedSubscript:{objc_msgSend(v26, "unsignedIntegerValue")}];
            v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "unsignedIntegerValue") + 1}];
            [v16 setObject:v29 atIndexedSubscript:{objc_msgSend(v26, "unsignedIntegerValue")}];
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [stringValues countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v19);
    }

    v30 = objc_alloc(MEMORY[0x277CBFED0]);
    v31 = objc_autoreleasePoolPush();
    outputName = self->_outputName;
    v46 = v16;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&outputName count:1];
    objc_autoreleasePoolPop(v31);
    v33 = [v30 initWithDictionary:v32 error:errorCopy];
    optionsCopy = v38;
    featuresCopy = v39;
    sequenceValue = v37;
  }

  else
  {
    v32 = pp_default_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v32, OS_LOG_TYPE_ERROR, "PPCoreMLUtils: unable to construct multiarray", buf, 2u);
    }

    v33 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (PPCountVectorizer)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  descriptionCopy = description;
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PPCountVectorizer;
  v9 = [(PPCountVectorizer *)&v24 init];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"inputName"];
    inputName = v9->_inputName;
    v9->_inputName = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"outputName"];
    outputName = v9->_outputName;
    v9->_outputName = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"vocabulary"];
    v15 = [v14 componentsSeparatedByString:@""];;

    v16 = objc_opt_new();
    vocabulary = v9->_vocabulary;
    v9->_vocabulary = v16;

    if ([v15 count])
    {
      v18 = 0;
      do
      {
        v19 = objc_autoreleasePoolPush();
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
        objc_autoreleasePoolPop(v19);
        v21 = v9->_vocabulary;
        v22 = [v15 objectAtIndexedSubscript:v18];
        [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:v22];

        ++v18;
      }

      while (v18 < [v15 count]);
    }
  }

  return v9;
}

@end
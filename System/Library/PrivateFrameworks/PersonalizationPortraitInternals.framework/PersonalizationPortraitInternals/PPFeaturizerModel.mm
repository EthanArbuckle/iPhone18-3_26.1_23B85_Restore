@interface PPFeaturizerModel
- (PPFeaturizerModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation PPFeaturizerModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  optionsCopy = options;
  if (![(NSString *)self->_operation isEqualToString:@"seq-count"])
  {
    if ([(NSString *)self->_operation isEqualToString:@"arr-count"])
    {
      v19 = MEMORY[0x277CBFEF8];
      allValues2 = [featuresCopy featureValueForName:self->_inputName];
      multiArrayValue = [allValues2 multiArrayValue];
      v21 = [multiArrayValue count];
LABEL_8:
      v22 = [v19 featureValueWithInt64:v21];
LABEL_9:
      v18 = v22;
LABEL_13:

      goto LABEL_14;
    }

    if ([(NSString *)self->_operation isEqualToString:@"dict-count"])
    {
      v23 = MEMORY[0x277CBFEF8];
      allValues2 = [featuresCopy featureValueForName:self->_inputName];
      multiArrayValue = [allValues2 dictionaryValue];
      allValues = [multiArrayValue allValues];
      v25 = [v23 featureValueWithInt64:{objc_msgSend(allValues, "count")}];
LABEL_12:
      v18 = v25;

      goto LABEL_13;
    }

    if ([(NSString *)self->_operation isEqualToString:@"string-length"])
    {
      allValues2 = [featuresCopy featureValueForName:self->_inputName];
      if ([allValues2 type] == 3)
      {
        v19 = MEMORY[0x277CBFEF8];
        multiArrayValue = [allValues2 stringValue];
        v21 = [multiArrayValue length];
        goto LABEL_8;
      }

      if ([allValues2 type] == 7)
      {
        sequenceValue = [allValues2 sequenceValue];
        stringValues = [sequenceValue stringValues];
        multiArrayValue = [stringValues _pas_mappedArrayWithTransform:&__block_literal_global_26395];

        v33 = MEMORY[0x277CBFEF8];
        allValues = [MEMORY[0x277CBFF78] sequenceWithInt64Array:multiArrayValue];
        v25 = [v33 featureValueWithSequence:allValues];
        goto LABEL_12;
      }

LABEL_28:
      v18 = 0;
      goto LABEL_14;
    }

    if ([(NSString *)self->_operation isEqualToString:@"dictionary-values"])
    {
      v29 = [featuresCopy featureValueForName:self->_inputName];
      dictionaryValue = [v29 dictionaryValue];
      allValues2 = [dictionaryValue allValues];

      if (allValues2)
      {
        multiArrayValue = [PPCoreMLUtils multiArrayForArray:allValues2];
        if (!multiArrayValue)
        {
          v18 = 0;
          goto LABEL_13;
        }

        v22 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:multiArrayValue];
        goto LABEL_9;
      }

      goto LABEL_28;
    }

    if ([(NSString *)self->_operation isEqualToString:@"number-to-array"])
    {
      v34 = objc_autoreleasePoolPush();
      sequenceValue2 = [featuresCopy featureValueForName:self->_inputName];
      type = [sequenceValue2 type];
      v37 = MEMORY[0x277CCABB0];
      if (type == 1)
      {
        [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(sequenceValue2, "int64Value")}];
      }

      else
      {
        [sequenceValue2 doubleValue];
        [v37 numberWithDouble:?];
      }
      v44 = ;
      v45 = [PPCoreMLUtils multiArrayFeatureValueForNumber:v44];
LABEL_34:
      v18 = v45;

      goto LABEL_44;
    }

    if ([(NSString *)self->_operation isEqualToString:@"count-in-seq"])
    {
      v34 = objc_autoreleasePoolPush();
      v38 = [featuresCopy featureValueForName:self->_inputName];
      sequenceValue2 = [v38 sequenceValue];

      if ([sequenceValue2 type] == 1)
      {
        firstObject = [(NSArray *)self->_param firstObject];
        integerValue = [firstObject integerValue];

        int64Values = [sequenceValue2 int64Values];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __58__PPFeaturizerModel_predictionFromFeatures_options_error___block_invoke_2;
        v58[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
        v58[4] = integerValue;
        v42 = [int64Values _pas_filteredArrayWithTest:v58];
        v43 = [v42 count];
      }

      else
      {
        stringValues2 = [sequenceValue2 stringValues];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __58__PPFeaturizerModel_predictionFromFeatures_options_error___block_invoke_3;
        v57[3] = &unk_2789793E0;
        v57[4] = self;
        v50 = [stringValues2 _pas_filteredArrayWithTest:v57];
        v43 = [v50 count];
      }

      v51 = [MEMORY[0x277CBFEF8] featureValueWithInt64:v43];
    }

    else
    {
      if ([(NSString *)self->_operation isEqualToString:@"count-unique"])
      {
        v34 = objc_autoreleasePoolPush();
        v46 = [featuresCopy featureValueForName:self->_inputName];
        sequenceValue2 = [v46 multiArrayValue];

        v44 = objc_opt_new();
        if ([sequenceValue2 count] >= 1)
        {
          v47 = 0;
          do
          {
            v48 = [sequenceValue2 objectAtIndexedSubscript:v47];
            [v44 addObject:v48];

            ++v47;
          }

          while (v47 < [sequenceValue2 count]);
        }

        v45 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{objc_msgSend(v44, "count")}];
        goto LABEL_34;
      }

      if (![(NSString *)self->_operation isEqualToString:@"seq-to-array"])
      {
        goto LABEL_45;
      }

      v34 = objc_autoreleasePoolPush();
      v54 = [featuresCopy featureValueForName:self->_inputName];
      sequenceValue3 = [v54 sequenceValue];
      int64Values2 = [sequenceValue3 int64Values];
      sequenceValue2 = [PPCoreMLUtils multiArrayForArray:int64Values2];

      if (!sequenceValue2)
      {
        v18 = 0;
LABEL_44:

        objc_autoreleasePoolPop(v34);
        if (v18)
        {
          goto LABEL_15;
        }

        goto LABEL_45;
      }

      v51 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:sequenceValue2];
    }

    v18 = v51;
    goto LABEL_44;
  }

  v10 = [featuresCopy featureValueForName:self->_inputName];
  allValues2 = [v10 sequenceValue];

  v12 = MEMORY[0x277CBFEF8];
  int64Values3 = [allValues2 int64Values];
  v14 = [int64Values3 count];

  stringValues3 = [allValues2 stringValues];
  v16 = [stringValues3 count];

  if (v14 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = [v12 featureValueWithInt64:v17];
LABEL_14:

  if (v18)
  {
LABEL_15:
    v26 = objc_alloc(MEMORY[0x277CBFED0]);
    outputName = self->_outputName;
    v60[0] = v18;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&outputName count:1];
    v28 = [v26 initWithDictionary:v27 error:error];

    goto LABEL_46;
  }

LABEL_45:
  v28 = 0;
LABEL_46:

  v52 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __58__PPFeaturizerModel_predictionFromFeatures_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 length];

  return [v2 numberWithUnsignedInteger:v3];
}

- (PPFeaturizerModel)initWithModelDescription:(id)description parameterDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PPFeaturizerModel;
  v7 = [(PPFeaturizerModel *)&v18 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"inputName"];
    inputName = v7->_inputName;
    v7->_inputName = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"outputName"];
    outputName = v7->_outputName;
    v7->_outputName = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"operation"];
    operation = v7->_operation;
    v7->_operation = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"customParam"];
    v15 = [v14 componentsSeparatedByString:@"|"];
    param = v7->_param;
    v7->_param = v15;
  }

  return v7;
}

@end
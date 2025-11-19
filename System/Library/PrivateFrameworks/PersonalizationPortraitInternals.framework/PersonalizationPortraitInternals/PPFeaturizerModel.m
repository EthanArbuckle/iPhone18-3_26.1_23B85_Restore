@interface PPFeaturizerModel
- (PPFeaturizerModel)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation PPFeaturizerModel

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (![(NSString *)self->_operation isEqualToString:@"seq-count"])
  {
    if ([(NSString *)self->_operation isEqualToString:@"arr-count"])
    {
      v19 = MEMORY[0x277CBFEF8];
      v11 = [v8 featureValueForName:self->_inputName];
      v20 = [v11 multiArrayValue];
      v21 = [v20 count];
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
      v11 = [v8 featureValueForName:self->_inputName];
      v20 = [v11 dictionaryValue];
      v24 = [v20 allValues];
      v25 = [v23 featureValueWithInt64:{objc_msgSend(v24, "count")}];
LABEL_12:
      v18 = v25;

      goto LABEL_13;
    }

    if ([(NSString *)self->_operation isEqualToString:@"string-length"])
    {
      v11 = [v8 featureValueForName:self->_inputName];
      if ([v11 type] == 3)
      {
        v19 = MEMORY[0x277CBFEF8];
        v20 = [v11 stringValue];
        v21 = [v20 length];
        goto LABEL_8;
      }

      if ([v11 type] == 7)
      {
        v31 = [v11 sequenceValue];
        v32 = [v31 stringValues];
        v20 = [v32 _pas_mappedArrayWithTransform:&__block_literal_global_26395];

        v33 = MEMORY[0x277CBFEF8];
        v24 = [MEMORY[0x277CBFF78] sequenceWithInt64Array:v20];
        v25 = [v33 featureValueWithSequence:v24];
        goto LABEL_12;
      }

LABEL_28:
      v18 = 0;
      goto LABEL_14;
    }

    if ([(NSString *)self->_operation isEqualToString:@"dictionary-values"])
    {
      v29 = [v8 featureValueForName:self->_inputName];
      v30 = [v29 dictionaryValue];
      v11 = [v30 allValues];

      if (v11)
      {
        v20 = [PPCoreMLUtils multiArrayForArray:v11];
        if (!v20)
        {
          v18 = 0;
          goto LABEL_13;
        }

        v22 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v20];
        goto LABEL_9;
      }

      goto LABEL_28;
    }

    if ([(NSString *)self->_operation isEqualToString:@"number-to-array"])
    {
      v34 = objc_autoreleasePoolPush();
      v35 = [v8 featureValueForName:self->_inputName];
      v36 = [v35 type];
      v37 = MEMORY[0x277CCABB0];
      if (v36 == 1)
      {
        [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v35, "int64Value")}];
      }

      else
      {
        [v35 doubleValue];
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
      v38 = [v8 featureValueForName:self->_inputName];
      v35 = [v38 sequenceValue];

      if ([v35 type] == 1)
      {
        v39 = [(NSArray *)self->_param firstObject];
        v40 = [v39 integerValue];

        v41 = [v35 int64Values];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __58__PPFeaturizerModel_predictionFromFeatures_options_error___block_invoke_2;
        v58[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
        v58[4] = v40;
        v42 = [v41 _pas_filteredArrayWithTest:v58];
        v43 = [v42 count];
      }

      else
      {
        v49 = [v35 stringValues];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __58__PPFeaturizerModel_predictionFromFeatures_options_error___block_invoke_3;
        v57[3] = &unk_2789793E0;
        v57[4] = self;
        v50 = [v49 _pas_filteredArrayWithTest:v57];
        v43 = [v50 count];
      }

      v51 = [MEMORY[0x277CBFEF8] featureValueWithInt64:v43];
    }

    else
    {
      if ([(NSString *)self->_operation isEqualToString:@"count-unique"])
      {
        v34 = objc_autoreleasePoolPush();
        v46 = [v8 featureValueForName:self->_inputName];
        v35 = [v46 multiArrayValue];

        v44 = objc_opt_new();
        if ([v35 count] >= 1)
        {
          v47 = 0;
          do
          {
            v48 = [v35 objectAtIndexedSubscript:v47];
            [v44 addObject:v48];

            ++v47;
          }

          while (v47 < [v35 count]);
        }

        v45 = [MEMORY[0x277CBFEF8] featureValueWithInt64:{objc_msgSend(v44, "count")}];
        goto LABEL_34;
      }

      if (![(NSString *)self->_operation isEqualToString:@"seq-to-array"])
      {
        goto LABEL_45;
      }

      v34 = objc_autoreleasePoolPush();
      v54 = [v8 featureValueForName:self->_inputName];
      v55 = [v54 sequenceValue];
      v56 = [v55 int64Values];
      v35 = [PPCoreMLUtils multiArrayForArray:v56];

      if (!v35)
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

      v51 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v35];
    }

    v18 = v51;
    goto LABEL_44;
  }

  v10 = [v8 featureValueForName:self->_inputName];
  v11 = [v10 sequenceValue];

  v12 = MEMORY[0x277CBFEF8];
  v13 = [v11 int64Values];
  v14 = [v13 count];

  v15 = [v11 stringValues];
  v16 = [v15 count];

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
    v28 = [v26 initWithDictionary:v27 error:a5];

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

- (PPFeaturizerModel)initWithModelDescription:(id)a3 parameterDictionary:(id)a4 error:(id *)a5
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = PPFeaturizerModel;
  v7 = [(PPFeaturizerModel *)&v18 init];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"inputName"];
    inputName = v7->_inputName;
    v7->_inputName = v8;

    v10 = [v6 objectForKeyedSubscript:@"outputName"];
    outputName = v7->_outputName;
    v7->_outputName = v10;

    v12 = [v6 objectForKeyedSubscript:@"operation"];
    operation = v7->_operation;
    v7->_operation = v12;

    v14 = [v6 objectForKeyedSubscript:@"customParam"];
    v15 = [v14 componentsSeparatedByString:@"|"];
    param = v7->_param;
    v7->_param = v15;
  }

  return v7;
}

@end
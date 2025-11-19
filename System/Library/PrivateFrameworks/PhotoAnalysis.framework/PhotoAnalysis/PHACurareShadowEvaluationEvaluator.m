@interface PHACurareShadowEvaluationEvaluator
+ (id)evaluatorLog;
- (PHACurareShadowEvaluationEvaluator)initWithModelInputName:(id)a3 modelOutputName:(id)a4 lossName:(id)a5;
- (id)evaluateModelAtPath:(id)a3 labelIndex:(int)a4 labelOperatingPoint:(float)a5 isPositiveData:(BOOL)a6 evaluationData:(id)a7 error:(id *)a8;
- (id)evaluateModelAtPath:(id)a3 labelIndex:(int)a4 labelOperatingPoint:(float)a5 positiveEvaluationData:(id)a6 negativeEvaluationData:(id)a7 error:(id *)a8;
- (id)getDefaultEvaluationResultForModelPath:(id)a3 isPositiveData:(BOOL)a4;
- (int)accuracyForProbability:(id *)a3 isPositiveData:(BOOL)a4 atIndex:(int)a5 andOperatingPoint:(float)a6;
- (vector<unsigned)getEspressoBufferShapeWithBuffer:(PHACurareShadowEvaluationEvaluator *)self;
@end

@implementation PHACurareShadowEvaluationEvaluator

- (id)getDefaultEvaluationResultForModelPath:(id)a3 isPositiveData:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [PHACurareShadowEvaluationEvaluationResult alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  v11 = [(PHACurareShadowEvaluationEvaluationResult *)v6 initWithModelPath:v5 isPositiveData:v4 numberOfTotalSamples:v7 numberOfCorrectSamples:v8 meanPredictionValue:v9 stddevPredictionValue:v10];

  return v11;
}

- (vector<unsigned)getEspressoBufferShapeWithBuffer:(PHACurareShadowEvaluationEvaluator *)self
{
  result = espresso_buffer_unpack_tensor_shape();
  if (result)
  {
    __assert_rtn("[PHACurareShadowEvaluationEvaluator getEspressoBufferShapeWithBuffer:]", "PHACurareShadowEvaluationEvaluator.mm", 306, "espresso_buffer_unpack_tensor_shape(buf, &rank, shape) == ESPRESSO_STATUS_SUCCESS");
  }

  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  return result;
}

- (int)accuracyForProbability:(id *)a3 isPositiveData:(BOOL)a4 atIndex:(int)a5 andOperatingPoint:(float)a6
{
  v8 = a4;
  [(PHACurareShadowEvaluationEvaluator *)self getEspressoBufferShapeWithBuffer:?];
  v10 = *__p;
  if (*__p)
  {
    v11 = 0;
    v12 = (a3->var0 + 4 * a5);
    do
    {
      if (v8)
      {
        if (*v12 >= a6)
        {
          ++v11;
        }
      }

      else if (*v12 < a6)
      {
        ++v11;
      }

      v12 += __p[1];
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  operator delete(__p);
  return v11;
}

- (id)evaluateModelAtPath:(id)a3 labelIndex:(int)a4 labelOperatingPoint:(float)a5 isPositiveData:(BOOL)a6 evaluationData:(id)a7 error:(id *)a8
{
  v10 = a6;
  v12 = *&a4;
  v59 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v52 = a7;
  v15 = v14;
  v16 = [v14 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v17 = strlen(v16);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v56 = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v18) = 0;
  if (!espresso_create_context())
  {
    v19 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to create Espresso context", buf, 2u);
    }

    goto LABEL_26;
  }

  if (!espresso_create_plan())
  {
    v19 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to create Espresso plan", buf, 2u);
    }

    goto LABEL_26;
  }

  if (espresso_plan_add_network())
  {
    v19 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to add Espresso network", buf, 2u);
    }

LABEL_26:

LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  espresso_get_input_blob_name();
  espresso_get_output_blob_name();
  if (espresso_network_declare_output())
  {
    v19 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to declare Espresso network output", buf, 2u);
    }

    goto LABEL_26;
  }

  if (espresso_plan_build())
  {
    v19 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to build Espresso plan", buf, 2u);
    }

    goto LABEL_26;
  }

  if (espresso_network_bind_buffer())
  {
    v22 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v57 = 0;
      _os_log_error_impl(&dword_22FA28000, v22, OS_LOG_TYPE_ERROR, "Failed to bind Espresso data buffer", v57, 2u);
    }

    if (espresso_plan_destroy())
    {
      v23 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v57 = 0;
        _os_log_error_impl(&dword_22FA28000, v23, OS_LOG_TYPE_ERROR, "Failed to destroy Espresso plan", v57, 2u);
      }
    }

    if (!espresso_context_destroy())
    {
      goto LABEL_27;
    }

    v24 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v57 = 0;
      v25 = "Failed to destroy Espresso context";
LABEL_68:
      _os_log_error_impl(&dword_22FA28000, v24, OS_LOG_TYPE_ERROR, v25, v57, 2u);
    }
  }

  else
  {
    if (!espresso_network_bind_buffer())
    {
      v49 = [v52 numberOfDataPoints];
      v51 = 0;
      v50 = 0;
      v28 = 0.0;
      v29 = 0.0;
      while (v51 < [v52 numberOfDataPoints])
      {
        v30 = [v52 labeledDataSamples];
        v31 = [v30 objectAtIndexedSubscript:v51];
        v24 = [v31 floatVector];

        v32 = [v24 data];
        v33 = v32;
        v34 = [v32 bytes];

        memcpy(*buf, v34, 4 * [v24 count]);
        if (espresso_plan_execute_sync())
        {
          v39 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *v57 = 0;
            _os_log_error_impl(&dword_22FA28000, v39, OS_LOG_TYPE_ERROR, "Failed to execute Espresso plan", v57, 2u);
          }

          goto LABEL_69;
        }

        *&v35 = a5;
        v36 = [(PHACurareShadowEvaluationEvaluator *)self accuracyForProbability:v53 isPositiveData:v10 atIndex:v12 andOperatingPoint:v35];
        v37 = *(v53[0] + 4 * v12);

        v50 += v36;
        v29 = v29 + v37;
        v28 = v28 + (v37 * v37);
        ++v51;
      }

      v38 = 0.0;
      if (v49 >= 2)
      {
        v38 = sqrtf(((v49 * v28) - (v29 * v29)) / ((v49 + -1.0) * v49));
        v29 = v29 / v49;
      }

      if (espresso_plan_destroy())
      {
        v24 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *v57 = 0;
        v25 = "Failed to destroy Espresso plan";
      }

      else
      {
        if (!espresso_context_destroy())
        {
          v40 = [PHACurareShadowEvaluationEvaluationResult alloc];
          v41 = [MEMORY[0x277CCABB0] numberWithInt:v49];
          v42 = [MEMORY[0x277CCABB0] numberWithInt:v50];
          *&v43 = v29;
          v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
          *&v45 = v38;
          v46 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
          v24 = [(PHACurareShadowEvaluationEvaluationResult *)v40 initWithModelPath:v14 isPositiveData:v10 numberOfTotalSamples:v41 numberOfCorrectSamples:v42 meanPredictionValue:v44 stddevPredictionValue:v46];

          if (!*a8 && v24)
          {
            v24 = v24;
            v20 = v24;
            goto LABEL_70;
          }

          v47 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = *a8;
            *v57 = 138412290;
            v58 = v48;
            _os_log_error_impl(&dword_22FA28000, v47, OS_LOG_TYPE_ERROR, "Failed to run evaluateModelAtPath with error: %@", v57, 0xCu);
          }

          goto LABEL_69;
        }

        v24 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_69;
        }

        *v57 = 0;
        v25 = "Failed to destroy Espresso context";
      }

      goto LABEL_68;
    }

    v26 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v57 = 0;
      _os_log_error_impl(&dword_22FA28000, v26, OS_LOG_TYPE_ERROR, "Failed to bind Espresso probability buffer", v57, 2u);
    }

    if (espresso_plan_destroy())
    {
      v27 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v57 = 0;
        _os_log_error_impl(&dword_22FA28000, v27, OS_LOG_TYPE_ERROR, "Failed to destroy Espresso plan", v57, 2u);
      }
    }

    if (!espresso_context_destroy())
    {
      goto LABEL_27;
    }

    v24 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v57 = 0;
      v25 = "Failed to destroy Espresso context";
      goto LABEL_68;
    }
  }

LABEL_69:
  v20 = 0;
LABEL_70:

LABEL_28:
  if (v56 < 0)
  {
    operator delete(__dst);
  }

  return v20;
}

- (id)evaluateModelAtPath:(id)a3 labelIndex:(int)a4 labelOperatingPoint:(float)a5 positiveEvaluationData:(id)a6 negativeEvaluationData:(id)a7 error:(id *)a8
{
  v12 = *&a4;
  v31 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v15)
  {
    *&v18 = a5;
    v19 = [(PHACurareShadowEvaluationEvaluator *)self evaluateModelAtPath:v14 labelIndex:v12 labelOperatingPoint:1 isPositiveData:v15 evaluationData:a8 error:v18];
    v20 = v19;
    if (*a8 || !v19)
    {
      v23 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v27 = *a8;
        v29 = 138412290;
        v30 = v27;
        _os_log_error_impl(&dword_22FA28000, v23, OS_LOG_TYPE_ERROR, "Failed to run evaluateModelWithEspressoPlan on positive data with error: %@", &v29, 0xCu);
      }

      goto LABEL_12;
    }

    [v17 addObject:v19];
  }

  else
  {
    v20 = [(PHACurareShadowEvaluationEvaluator *)self getDefaultEvaluationResultForModelPath:v14 isPositiveData:1];
    [v17 addObject:v20];
  }

  if (!v16)
  {
    v20 = [(PHACurareShadowEvaluationEvaluator *)self getDefaultEvaluationResultForModelPath:v14 isPositiveData:0];
    [v17 addObject:v20];
    goto LABEL_14;
  }

  *&v21 = a5;
  v22 = [(PHACurareShadowEvaluationEvaluator *)self evaluateModelAtPath:v14 labelIndex:v12 labelOperatingPoint:0 isPositiveData:v16 evaluationData:a8 error:v21];
  v20 = v22;
  if (*a8 || !v22)
  {
    v23 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = *a8;
      v29 = 138412290;
      v30 = v28;
      _os_log_error_impl(&dword_22FA28000, v23, OS_LOG_TYPE_ERROR, "Failed to run evaluateModelWithEspressoPlan on negative data with error: %@", &v29, 0xCu);
    }

LABEL_12:

    goto LABEL_22;
  }

  [v17 addObject:v22];
LABEL_14:

  if ([v17 count])
  {
    v24 = v17;
    goto LABEL_23;
  }

  v25 = +[PHACurareShadowEvaluationEvaluator evaluatorLog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = 138412290;
    v30 = v14;
    _os_log_error_impl(&dword_22FA28000, v25, OS_LOG_TYPE_ERROR, "Failed to generate any evaluation results on model at path: %@. Returning nil.", &v29, 0xCu);
  }

LABEL_22:
  v24 = 0;
LABEL_23:

  return v24;
}

- (PHACurareShadowEvaluationEvaluator)initWithModelInputName:(id)a3 modelOutputName:(id)a4 lossName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = PHACurareShadowEvaluationEvaluator;
  v12 = [(PHACurareShadowEvaluationEvaluator *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modelInputName, a3);
    objc_storeStrong(&v13->_modelOutputName, a4);
    objc_storeStrong(&v13->_lossName, a5);
    labelName = v13->_labelName;
    v13->_labelName = @"label";

    if ([(NSString *)v13->_lossName isEqualToString:@"mse"])
    {
      v15 = [MEMORY[0x277D07760] L2LossWithInputName:v13->_modelOutputName targetInputName:v13->_labelName lossOutputName:v13->_lossName];
    }

    else
    {
      if ([(NSString *)v13->_lossName isEqualToString:@"cross_entropy"])
      {
        [MEMORY[0x277D07760] crossEntropyLossWithInputName:v13->_modelOutputName targetInputName:v13->_labelName lossOutputName:v13->_lossName];
      }

      else
      {
        [MEMORY[0x277D07760] BuiltInLoss:v13->_lossName];
      }
      v15 = ;
    }

    lossDefinition = v13->_lossDefinition;
    v13->_lossDefinition = v15;
  }

  return v13;
}

+ (id)evaluatorLog
{
  if (+[PHACurareShadowEvaluationEvaluator evaluatorLog]::onceToken != -1)
  {
    dispatch_once(&+[PHACurareShadowEvaluationEvaluator evaluatorLog]::onceToken, &__block_literal_global_5221);
  }

  v3 = +[PHACurareShadowEvaluationEvaluator evaluatorLog]::evaluatorLog;

  return v3;
}

uint64_t __50__PHACurareShadowEvaluationEvaluator_evaluatorLog__block_invoke()
{
  +[PHACurareShadowEvaluationEvaluator evaluatorLog]::evaluatorLog = os_log_create("com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin", "Evaluator");

  return MEMORY[0x2821F96F8]();
}

@end
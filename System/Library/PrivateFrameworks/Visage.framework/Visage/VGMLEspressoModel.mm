@interface VGMLEspressoModel
+ (id)modelVersionWithModelPath:(id)a3;
+ (id)modelVersionWithNetworkFilePath:(id)a3;
- (VGMLEspressoModel)initWithModelInfo:(id)a3;
- (VGMLEspressoModel)initWithModelPath:(id)a3;
- (VGMLEspressoModel)initWithNetworkFile:(id)a3;
- (const)getInputDimensions:(unint64_t)a3;
- (const)getOutputDimensions:(unint64_t)a3;
- (id)inferInputs:(id)a3;
- (unint64_t)getInputSize;
- (unint64_t)getOutputSize;
- (unint64_t)getOutputSize:(unint64_t)a3;
- (void)dealloc;
- (void)inferInputs:(id)a3 toOutputs:(id)a4;
- (void)inferModel;
@end

@implementation VGMLEspressoModel

+ (id)modelVersionWithNetworkFilePath:(id)a3
{
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:0];
    v5 = [v4 objectForKeyedSubscript:@"properties"];
    v6 = [v5 objectForKeyedSubscript:@"network_version"];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  v8 = v7;

  return v7;
}

+ (id)modelVersionWithModelPath:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"model.espresso.net"];
  v4 = [objc_opt_class() modelVersionWithNetworkFilePath:v3];

  return v4;
}

- (VGMLEspressoModel)initWithModelInfo:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v62.receiver = self;
  v62.super_class = VGMLEspressoModel;
  v5 = [(VGMLEspressoModel *)&v62 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"config"];
    v7 = [v4 objectForKeyedSubscript:@"model_path"];
    networkFilePath = v5->_networkFilePath;
    v5->_networkFilePath = v7;

    if (v5->_networkFilePath)
    {
      v9 = [v6 valueForKeyPath:@"input_name"];
      inputLayerNames = v5->_inputLayerNames;
      v5->_inputLayerNames = v9;

      v11 = [v6 valueForKeyPath:@"output_name"];
      outputLayerNames = v5->_outputLayerNames;
      v5->_outputLayerNames = v11;

      v5->_numInputs = [(NSMutableArray *)v5->_inputLayerNames count];
      v5->_numOutputs = [(NSMutableArray *)v5->_outputLayerNames count];
      v13 = [v6 valueForKey:@"engine"];
      v14 = 65552;
      if (([v13 isEqualToString:@"ANE"]& 1) != 0)
      {
        v15 = 10007;
      }

      else if (([v13 isEqualToString:@"GPU"]& 1) != 0)
      {
        v15 = 5;
      }

      else
      {
        [v13 isEqualToString:@"CPU"];
        v15 = 0;
        v14 = 65568;
      }

      v5->_engine = v15;
      v5->_storageFormat = v14;
      v5->_context = espresso_create_context();
      v5->_plan_flags = 0;
      v5->_plan = espresso_create_plan();
      [(NSString *)v5->_networkFilePath UTF8String];
      storageFormat = v5->_storageFormat;
      if (!espresso_plan_add_network())
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v20 = v5->_inputLayerNames;
        v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v58 objects:v64 count:16];
        if (v21)
        {
          v22 = *v59;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v59 != v22)
              {
                objc_enumerationMutation(v20);
              }

              plan = v5->_network.plan;
              v25 = *&v5->_network.network_index;
              [*(*(&v58 + 1) + 8 * i) UTF8String];
              if (espresso_network_declare_input())
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v49 = v5->_plan;
                espresso_plan_get_error_info();
                std::runtime_error::runtime_error(exception, v50);
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v58 objects:v64 count:16];
          }

          while (v21);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v26 = v5->_outputLayerNames;
        v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v27)
        {
          v28 = *v55;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v55 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = v5->_network.plan;
              v31 = *&v5->_network.network_index;
              v32 = *(*(&v54 + 1) + 8 * j);
              [v32 UTF8String];
              if (espresso_network_declare_output())
              {
                v51 = __cxa_allocate_exception(0x10uLL);
                v52 = v5->_plan;
                espresso_plan_get_error_info();
                std::runtime_error::runtime_error(v51, v53);
                __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
          }

          while (v27);
        }

        v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5->_numInputs];
        inputBuffers = v5->_inputBuffers;
        v5->_inputBuffers = v33;

        if (v5->_numInputs)
        {
          v35 = 0;
          do
          {
            v36 = [VGMLEspressoBuffer alloc];
            v37 = [(NSMutableArray *)v5->_inputLayerNames objectAtIndexedSubscript:v35];
            v38 = [(VGMLEspressoBuffer *)v36 initWithNetwork:&v5->_network withLayerName:v37 withMode:0x10000];
            [(NSMutableArray *)v5->_inputBuffers setObject:v38 atIndexedSubscript:v35];

            ++v35;
          }

          while (v35 < v5->_numInputs);
        }

        v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5->_numOutputs];
        outputBuffers = v5->_outputBuffers;
        v5->_outputBuffers = v39;

        if (v5->_numOutputs)
        {
          v41 = 0;
          do
          {
            v42 = [VGMLEspressoBuffer alloc];
            v43 = [(NSMutableArray *)v5->_outputLayerNames objectAtIndexedSubscript:v41];
            v44 = [(VGMLEspressoBuffer *)v42 initWithNetwork:&v5->_network withLayerName:v43 withMode:0x20000];
            [(NSMutableArray *)v5->_outputBuffers setObject:v44 atIndexedSubscript:v41];

            ++v41;
          }

          while (v41 < v5->_numOutputs);
        }

        v45 = v5->_plan;
        espresso_plan_build();
        v16 = v5;
        goto LABEL_39;
      }

      v18 = __VGLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v5->_networkFilePath;
        *buf = 138412290;
        v66 = v19;
        _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, " Espresso error. Failed to load model expected at - %@. ", buf, 0xCu);
      }
    }

    else
    {
      v13 = __VGLogSharedInstance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v66 = v4;
        _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_ERROR, " No modelpath with info %@ ", buf, 0xCu);
      }
    }

    v16 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v16 = 0;
LABEL_40:

  v46 = *MEMORY[0x277D85DE8];
  return v16;
}

- (VGMLEspressoModel)initWithModelPath:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VGMLEspressoModel;
  v5 = [(VGMLEspressoModel *)&v11 init];
  if (v5)
  {
    v6 = [v4 stringByAppendingPathComponent:@"config.plist"];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v6];
    v8 = [v4 stringByAppendingPathComponent:@"model.espresso.net"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:v7 forKeyedSubscript:@"config"];
    [v9 setObject:v8 forKeyedSubscript:@"model_path"];
    v5 = [(VGMLEspressoModel *)v5 initWithModelInfo:v9];
  }

  return v5;
}

- (VGMLEspressoModel)initWithNetworkFile:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = VGMLEspressoModel;
  v5 = [(VGMLEspressoModel *)&v35 init];
  if (v5)
  {
    v34 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:0 error:&v34];
    v7 = v34;
    if (v7)
    {
      v8 = v7;
      v9 = __VGLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 description];
        *buf = 138412290;
        v44 = v10;
        _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Failed to read network file. %@ ", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_27;
    }

    v33 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v33];
    v8 = v33;
    v12 = [v9 objectForKeyedSubscript:@"properties"];
    v13 = v12;
    if (v8 || !v12)
    {
      v25 = __VGLogSharedInstance();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v26 = " Properties field is missing in the network file. ";
    }

    else
    {
      v14 = [v12 objectForKey:@"network_version"];
      v15 = v14 == 0;

      if (v15)
      {
        v25 = __VGLogSharedInstance();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v26 = " network_version field is missing in the network properties. ";
      }

      else
      {
        v16 = [v13 objectForKey:@"engine"];
        v17 = v16 == 0;

        if (v17)
        {
          v25 = __VGLogSharedInstance();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v26 = " engine field is missing in the network properties. ";
        }

        else
        {
          v18 = [v13 objectForKey:@"input_name"];
          v19 = v18 == 0;

          if (!v19)
          {
            v20 = [v13 objectForKey:@"output_name"];
            v21 = v20 == 0;

            if (!v21)
            {
              v42[0] = v4;
              v41[0] = @"model_path";
              v41[1] = @"config";
              v36[0] = @"version";
              v32 = [v13 objectForKeyedSubscript:@"network_version"];
              v37 = v32;
              v36[1] = @"engine";
              v38 = [v13 objectForKeyedSubscript:@"engine"];
              v36[2] = @"input_name";
              v31 = v38;
              v30 = [v13 objectForKeyedSubscript:@"input_name"];
              v29 = [v30 componentsSeparatedByString:{@", "}];
              v39 = v29;
              v36[3] = @"output_name";
              v22 = [v13 objectForKeyedSubscript:@"output_name"];
              v23 = [v22 componentsSeparatedByString:{@", "}];
              v40 = v23;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:v36 count:4];
              v42[1] = v24;
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

              v5 = [(VGMLEspressoModel *)v5 initWithModelInfo:v25];
              v11 = v5;
LABEL_26:

LABEL_27:
              goto LABEL_28;
            }

            v25 = __VGLogSharedInstance();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v26 = " output_name is missing in the network properties. ";
              goto LABEL_24;
            }

LABEL_25:
            v11 = 0;
            goto LABEL_26;
          }

          v25 = __VGLogSharedInstance();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v26 = " input_name is missing in the network properties. ";
        }
      }
    }

LABEL_24:
    _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_25;
  }

  v11 = 0;
LABEL_28:

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  plan = self->_plan;
  espresso_plan_destroy();
  context = self->_context;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = VGMLEspressoModel;
  [(VGMLEspressoModel *)&v5 dealloc];
}

- (void)inferModel
{
  v11 = *MEMORY[0x277D85DE8];
  plan = self->_plan;
  if (espresso_plan_execute_sync())
  {
    v4 = self->_plan;
    espresso_plan_get_error_info();
    v6 = v5;
    v7 = __VGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = v6;
      _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_ERROR, " Espresso error: %s ", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (const)getInputDimensions:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_inputBuffers objectAtIndexedSubscript:a3];
  v4 = [v3 getDimensions];

  return v4;
}

- (const)getOutputDimensions:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:a3];
  v4 = [v3 getDimensions];

  return v4;
}

- (unint64_t)getInputSize
{
  v2 = [(NSMutableArray *)self->_inputBuffers objectAtIndexedSubscript:0];
  v3 = [v2 getSize];

  return v3;
}

- (unint64_t)getOutputSize
{
  v2 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:0];
  v3 = [v2 getSize];

  return v3;
}

- (unint64_t)getOutputSize:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:a3];
  v4 = [v3 getSize];

  return v4;
}

- (void)inferInputs:(id)a3 toOutputs:(id)a4
{
  v13 = a3;
  v6 = a4;
  for (i = 0; i < [(NSMutableArray *)self->_inputBuffers count]; ++i)
  {
    v8 = [(NSMutableArray *)self->_inputBuffers objectAtIndexedSubscript:i];
    v9 = [v13 objectAtIndexedSubscript:i];
    [v8 bindTensor:v9];
  }

  for (j = 0; j < [(NSMutableArray *)self->_outputBuffers count]; ++j)
  {
    v11 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:j];
    v12 = [v6 objectAtIndexedSubscript:j];
    [v11 bindTensor:v12];
  }

  [(VGMLEspressoModel *)self inferModel];
}

- (id)inferInputs:(id)a3
{
  v4 = a3;
  v5 = [(VGMLEspressoModel *)self numOutputs];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v9 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:i];
      v10 = [v9 getSize];

      v11 = [MEMORY[0x277CBEB28] dataWithLength:4 * v10];
      v12 = -[VGMLFloatIOData initWithSize:withData:]([VGMLFloatIOData alloc], "initWithSize:withData:", v10, [v11 mutableBytes]);
      [v6 setObject:v12 atIndexedSubscript:i];
      v13 = [(NSMutableArray *)self->_outputLayerNames objectAtIndexedSubscript:i];
      [v7 setObject:v12 forKey:v13];
    }
  }

  [(VGMLEspressoModel *)self inferInputs:v4 toOutputs:v6];

  return v7;
}

@end
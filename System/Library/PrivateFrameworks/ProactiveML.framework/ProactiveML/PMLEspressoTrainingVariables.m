@interface PMLEspressoTrainingVariables
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEspressoTrainingVariables:(id)a3;
- (PMLEspressoTrainingVariables)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (PMLEspressoTrainingVariables)initWithTrainingNetworkPath:(id)a3 inputName:(id)a4 inputDim:(unint64_t)a5 outputName:(id)a6 trueLabelName:(id)a7 lossValueName:(id)a8 trainingOutputName:(id)a9 trainingControlVariableName:(id)a10 initializerName:(id)a11 globalsToGetGradientsFor:(id)a12 layerWeightsToGetGradientsFor:(id)a13 layerBiasesToGetGradientsFor:(id)a14;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation PMLEspressoTrainingVariables

- (PMLEspressoTrainingVariables)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_NETWORK_PATH"];

  if (!v10)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingVariables.m" lineNumber:130 description:{@"Can't instantiate %@. Missing %@ dependency.", v22, @"PML_ESPRESSO_TRAINING_NETWORK_PATH"}];
  }

  v11 = [v8 objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_NETWORK_PATH"];
  v12 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_INPUT_NAME"];
  v29 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_INPUT_DIM"];
  v13 = [v29 unsignedIntegerValue];
  v27 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_OUTPUT_NAME"];
  v25 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_TRUE_LABEL_NAME"];
  v24 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_LOSS_VALUE_NAME"];
  v23 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_OUTPUT_NAME"];
  v14 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_CONTROL_VARIABLE_NAME"];
  v15 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_INITIALIZER_NAME"];
  v16 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_GLOBALS_TO_GET_GRADIENTS_FOR"];
  v17 = [v9 objectForKeyedSubscript:@"PML_ESPRESSO_LAYER_WEIGHTS_TO_GET_GRADIENTS_FOR"];
  [v9 objectForKeyedSubscript:@"PML_ESPRESSO_LAYER_BIASES_TO_GET_GRADIENTS_FOR"];
  v18 = v28 = v8;

  v26 = [(PMLEspressoTrainingVariables *)self initWithTrainingNetworkPath:v11 inputName:v12 inputDim:v13 outputName:v27 trueLabelName:v25 lossValueName:v24 trainingOutputName:v23 trainingControlVariableName:v14 initializerName:v15 globalsToGetGradientsFor:v16 layerWeightsToGetGradientsFor:v17 layerBiasesToGetGradientsFor:v18];
  return v26;
}

- (id)toPlistWithChunks:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  inputDim = self->_inputDim;
  v14[0] = self->_inputName;
  v13[0] = @"PML_ESPRESSO_INPUT_NAME";
  v13[1] = @"PML_ESPRESSO_INPUT_DIM";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inputDim];
  outputName = self->_outputName;
  trueLabelName = self->_trueLabelName;
  v14[1] = v5;
  v14[2] = outputName;
  v13[2] = @"PML_ESPRESSO_OUTPUT_NAME";
  v13[3] = @"PML_ESPRESSO_TRUE_LABEL_NAME";
  v14[3] = trueLabelName;
  v15 = *&self->_lossValueName;
  v13[4] = @"PML_ESPRESSO_LOSS_VALUE_NAME";
  v13[5] = @"PML_ESPRESSO_TRAINING_OUTPUT_NAME";
  v13[6] = @"PML_ESPRESSO_TRAINING_CONTROL_VARIABLE_NAME";
  v13[7] = @"PML_ESPRESSO_INITIALIZER_NAME";
  initializerName = self->_initializerName;
  trainingControlVariableName = self->_trainingControlVariableName;
  v17 = initializerName;
  v9 = *&self->_globalsToGetGradientsFor;
  v13[8] = @"PML_ESPRESSO_GLOBALS_TO_GET_GRADIENTS_FOR";
  v13[9] = @"PML_ESPRESSO_LAYER_WEIGHTS_TO_GET_GRADIENTS_FOR";
  v18 = v9;
  v13[10] = @"PML_ESPRESSO_LAYER_BIASES_TO_GET_GRADIENTS_FOR";
  layerBiasesToGetGradientsFor = self->_layerBiasesToGetGradientsFor;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:11];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLEspressoTrainingVariables *)self isEqualToEspressoTrainingVariables:v5];
  }

  return v6;
}

- (BOOL)isEqualToEspressoTrainingVariables:(id)a3
{
  v4 = a3;
  v5 = self->_inputName;
  v6 = v5;
  if (v5 == v4[3])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  inputDim = self->_inputDim;
  if (inputDim != [v4 inputDim])
  {
LABEL_36:
    v33 = 0;
    goto LABEL_37;
  }

  v9 = self->_outputName;
  v10 = v9;
  if (v9 == v4[5])
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v12 = self->_trueLabelName;
  v13 = v12;
  if (v12 == v4[6])
  {
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v15 = self->_lossValueName;
  v16 = v15;
  if (v15 == v4[7])
  {
  }

  else
  {
    v17 = [(NSString *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v18 = self->_trainingOutputName;
  v19 = v18;
  if (v18 == v4[8])
  {
  }

  else
  {
    v20 = [(NSString *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v21 = self->_trainingControlVariableName;
  v22 = v21;
  if (v21 == v4[9])
  {
  }

  else
  {
    v23 = [(NSString *)v21 isEqual:?];

    if ((v23 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v24 = self->_initializerName;
  v25 = v24;
  if (v24 == v4[10])
  {
  }

  else
  {
    v26 = [(NSString *)v24 isEqual:?];

    if ((v26 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v27 = self->_layerWeightsToGetGradientsFor;
  v28 = v27;
  if (v27 == v4[12])
  {
  }

  else
  {
    v29 = [(NSArray *)v27 isEqual:?];

    if ((v29 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v30 = self->_layerBiasesToGetGradientsFor;
  v31 = v30;
  if (v30 == v4[13])
  {
  }

  else
  {
    v32 = [(NSArray *)v30 isEqual:?];

    if ((v32 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v35 = [(NSURL *)self->_trainingNetworkPath absoluteString];
  v36 = [v4 trainingNetworkPath];
  v37 = [v36 absoluteString];

  if (v35 | v37)
  {
    v33 = 0;
    if (v35 && v37)
    {
      v38 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v35];
      v39 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v37];
      v33 = [v38 isEqual:v39];
    }
  }

  else
  {
    v33 = 1;
  }

LABEL_37:
  return v33;
}

- (PMLEspressoTrainingVariables)initWithTrainingNetworkPath:(id)a3 inputName:(id)a4 inputDim:(unint64_t)a5 outputName:(id)a6 trueLabelName:(id)a7 lossValueName:(id)a8 trainingOutputName:(id)a9 trainingControlVariableName:(id)a10 initializerName:(id)a11 globalsToGetGradientsFor:(id)a12 layerWeightsToGetGradientsFor:(id)a13 layerBiasesToGetGradientsFor:(id)a14
{
  v49 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v31 = a4;
  v18 = a4;
  v33 = a6;
  v19 = a6;
  v34 = a7;
  v44 = a7;
  v43 = a8;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v39 = a12;
  v38 = a13;
  v37 = a14;
  v46.receiver = self;
  v46.super_class = PMLEspressoTrainingVariables;
  v20 = [(PMLEspressoTrainingVariables *)&v46 init];
  if (!v20)
  {
    goto LABEL_4;
  }

  v29 = v19;
  v36 = v18;
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v45 path];
  v23 = [v21 isReadableFileAtPath:v22];

  if (v23)
  {
    v20->_initializedWithNSData = 0;
    objc_storeStrong(&v20->_trainingNetworkPath, a3);
    objc_storeStrong(&v20->_inputName, v31);
    v20->_inputDim = a5;
    objc_storeStrong(&v20->_outputName, v33);
    objc_storeStrong(&v20->_trueLabelName, v34);
    objc_storeStrong(&v20->_lossValueName, a8);
    objc_storeStrong(&v20->_trainingOutputName, a9);
    objc_storeStrong(&v20->_trainingControlVariableName, a10);
    objc_storeStrong(&v20->_initializerName, a11);
    objc_storeStrong(&v20->_globalsToGetGradientsFor, a12);
    objc_storeStrong(&v20->_layerWeightsToGetGradientsFor, a13);
    objc_storeStrong(&v20->_layerBiasesToGetGradientsFor, a14);
    v18 = v36;
    v19 = v29;
LABEL_4:
    v24 = v20;
    goto LABEL_8;
  }

  v25 = PML_LogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v28 = [v45 path];
    *buf = 138412290;
    v48 = v28;
    _os_log_error_impl(&dword_260D68000, v25, OS_LOG_TYPE_ERROR, "Unable to read Espresso network file at: %@", buf, 0xCu);
  }

  v24 = 0;
  v18 = v36;
  v19 = v29;
LABEL_8:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

@end
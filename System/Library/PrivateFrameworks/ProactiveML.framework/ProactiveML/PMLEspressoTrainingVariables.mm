@interface PMLEspressoTrainingVariables
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEspressoTrainingVariables:(id)variables;
- (PMLEspressoTrainingVariables)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLEspressoTrainingVariables)initWithTrainingNetworkPath:(id)path inputName:(id)name inputDim:(unint64_t)dim outputName:(id)outputName trueLabelName:(id)labelName lossValueName:(id)valueName trainingOutputName:(id)trainingOutputName trainingControlVariableName:(id)self0 initializerName:(id)self1 globalsToGetGradientsFor:(id)self2 layerWeightsToGetGradientsFor:(id)self3 layerBiasesToGetGradientsFor:(id)self4;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLEspressoTrainingVariables

- (PMLEspressoTrainingVariables)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  plistCopy = plist;
  v10 = [contextCopy objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_NETWORK_PATH"];

  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingVariables.m" lineNumber:130 description:{@"Can't instantiate %@. Missing %@ dependency.", v22, @"PML_ESPRESSO_TRAINING_NETWORK_PATH"}];
  }

  v11 = [contextCopy objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_NETWORK_PATH"];
  v12 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_INPUT_NAME"];
  v29 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_INPUT_DIM"];
  unsignedIntegerValue = [v29 unsignedIntegerValue];
  v27 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_OUTPUT_NAME"];
  v25 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_TRUE_LABEL_NAME"];
  v24 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_LOSS_VALUE_NAME"];
  v23 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_OUTPUT_NAME"];
  v14 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_TRAINING_CONTROL_VARIABLE_NAME"];
  v15 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_INITIALIZER_NAME"];
  v16 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_GLOBALS_TO_GET_GRADIENTS_FOR"];
  v17 = [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_LAYER_WEIGHTS_TO_GET_GRADIENTS_FOR"];
  [plistCopy objectForKeyedSubscript:@"PML_ESPRESSO_LAYER_BIASES_TO_GET_GRADIENTS_FOR"];
  v18 = v28 = contextCopy;

  v26 = [(PMLEspressoTrainingVariables *)self initWithTrainingNetworkPath:v11 inputName:v12 inputDim:unsignedIntegerValue outputName:v27 trueLabelName:v25 lossValueName:v24 trainingOutputName:v23 trainingControlVariableName:v14 initializerName:v15 globalsToGetGradientsFor:v16 layerWeightsToGetGradientsFor:v17 layerBiasesToGetGradientsFor:v18];
  return v26;
}

- (id)toPlistWithChunks:(id)chunks
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLEspressoTrainingVariables *)self isEqualToEspressoTrainingVariables:v5];
  }

  return v6;
}

- (BOOL)isEqualToEspressoTrainingVariables:(id)variables
{
  variablesCopy = variables;
  v5 = self->_inputName;
  v6 = v5;
  if (v5 == variablesCopy[3])
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
  if (inputDim != [variablesCopy inputDim])
  {
LABEL_36:
    v33 = 0;
    goto LABEL_37;
  }

  v9 = self->_outputName;
  v10 = v9;
  if (v9 == variablesCopy[5])
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
  if (v12 == variablesCopy[6])
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
  if (v15 == variablesCopy[7])
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
  if (v18 == variablesCopy[8])
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
  if (v21 == variablesCopy[9])
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
  if (v24 == variablesCopy[10])
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
  if (v27 == variablesCopy[12])
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
  if (v30 == variablesCopy[13])
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

  absoluteString = [(NSURL *)self->_trainingNetworkPath absoluteString];
  trainingNetworkPath = [variablesCopy trainingNetworkPath];
  absoluteString2 = [trainingNetworkPath absoluteString];

  if (absoluteString | absoluteString2)
  {
    v33 = 0;
    if (absoluteString && absoluteString2)
    {
      v38 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:absoluteString];
      v39 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:absoluteString2];
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

- (PMLEspressoTrainingVariables)initWithTrainingNetworkPath:(id)path inputName:(id)name inputDim:(unint64_t)dim outputName:(id)outputName trueLabelName:(id)labelName lossValueName:(id)valueName trainingOutputName:(id)trainingOutputName trainingControlVariableName:(id)self0 initializerName:(id)self1 globalsToGetGradientsFor:(id)self2 layerWeightsToGetGradientsFor:(id)self3 layerBiasesToGetGradientsFor:(id)self4
{
  v49 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  nameCopy = name;
  nameCopy2 = name;
  outputNameCopy = outputName;
  outputNameCopy2 = outputName;
  labelNameCopy = labelName;
  labelNameCopy2 = labelName;
  valueNameCopy = valueName;
  trainingOutputNameCopy = trainingOutputName;
  variableNameCopy = variableName;
  initializerNameCopy = initializerName;
  forCopy = for;
  gradientsForCopy = gradientsFor;
  getGradientsForCopy = getGradientsFor;
  v46.receiver = self;
  v46.super_class = PMLEspressoTrainingVariables;
  v20 = [(PMLEspressoTrainingVariables *)&v46 init];
  if (!v20)
  {
    goto LABEL_4;
  }

  v29 = outputNameCopy2;
  v36 = nameCopy2;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [pathCopy path];
  v23 = [defaultManager isReadableFileAtPath:path];

  if (v23)
  {
    v20->_initializedWithNSData = 0;
    objc_storeStrong(&v20->_trainingNetworkPath, path);
    objc_storeStrong(&v20->_inputName, nameCopy);
    v20->_inputDim = dim;
    objc_storeStrong(&v20->_outputName, outputNameCopy);
    objc_storeStrong(&v20->_trueLabelName, labelNameCopy);
    objc_storeStrong(&v20->_lossValueName, valueName);
    objc_storeStrong(&v20->_trainingOutputName, trainingOutputName);
    objc_storeStrong(&v20->_trainingControlVariableName, variableName);
    objc_storeStrong(&v20->_initializerName, initializerName);
    objc_storeStrong(&v20->_globalsToGetGradientsFor, for);
    objc_storeStrong(&v20->_layerWeightsToGetGradientsFor, gradientsFor);
    objc_storeStrong(&v20->_layerBiasesToGetGradientsFor, getGradientsFor);
    nameCopy2 = v36;
    outputNameCopy2 = v29;
LABEL_4:
    v24 = v20;
    goto LABEL_8;
  }

  v25 = PML_LogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    path2 = [pathCopy path];
    *buf = 138412290;
    v48 = path2;
    _os_log_error_impl(&dword_260D68000, v25, OS_LOG_TYPE_ERROR, "Unable to read Espresso network file at: %@", buf, 0xCu);
  }

  v24 = 0;
  nameCopy2 = v36;
  outputNameCopy2 = v29;
LABEL_8:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

@end
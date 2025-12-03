@interface VisionCoreCamGazeNetworkDescriptor
+ (id)_descriptorWithModelFileName:(void *)name version:(void *)version inputImageBlobName:pixelFormatType:probabilitiesOutputName:error:;
+ (id)camGazeV1AndReturnError:(id *)error;
+ (id)camGazeV2AndReturnError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VisionCoreCamGazeNetworkDescriptor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreCamGazeNetworkDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VisionCoreCamGazeNetworkDescriptor, [(VisionCoreInferenceNetworkDescriptor *)&v10 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      gazeProbabilitiesOutput = [(VisionCoreCamGazeNetworkDescriptor *)self gazeProbabilitiesOutput];
      gazeProbabilitiesOutput2 = [(VisionCoreCamGazeNetworkDescriptor *)v5 gazeProbabilitiesOutput];

      v8 = [gazeProbabilitiesOutput isEqual:gazeProbabilitiesOutput2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VisionCoreCamGazeNetworkDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VisionCoreCamGazeNetworkDescriptor;
  v5 = [(VisionCoreInferenceNetworkDescriptor *)&v15 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gazeProbabilitiesOutput"];
  gazeProbabilitiesOutput = v5->_gazeProbabilitiesOutput;
  v5->_gazeProbabilitiesOutput = v6;

  v8 = v5->_gazeProbabilitiesOutput;
  if (!v8)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  v9 = [_VisionCoreCamGazeClassifier classifierForGazeProbabilitiesOutputDescriptor:v8 error:&v14];
  v10 = v14;
  gazeClassifier = v5->_gazeClassifier;
  v5->_gazeClassifier = v9;

  if (!v5->_gazeClassifier)
  {
    [coderCopy failWithError:v10];

    goto LABEL_7;
  }

LABEL_5:
  v12 = v5;
LABEL_8:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VisionCoreCamGazeNetworkDescriptor;
  coderCopy = coder;
  [(VisionCoreInferenceNetworkDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_gazeProbabilitiesOutput forKey:{@"gazeProbabilitiesOutput", v5.receiver, v5.super_class}];
}

+ (id)camGazeV2AndReturnError:(id *)error
{
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:2 minor:0 micro:0];
  v6 = [VisionCoreCamGazeNetworkDescriptor _descriptorWithModelFileName:self version:@"camgazeflow-f334k5e5zi_91568-quant-fp16.espresso" inputImageBlobName:v5 pixelFormatType:error probabilitiesOutputName:? error:?];

  return v6;
}

+ (id)_descriptorWithModelFileName:(void *)name version:(void *)version inputImageBlobName:pixelFormatType:probabilitiesOutputName:error:
{
  v28[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = @"image";
  v8 = @"camgaze_probs";
  v9 = a2;
  objc_opt_self();
  v10 = [VisionCoreEspressoUtils URLForModelNamed:v9 error:version];

  if (v10)
  {
    v27 = @"camgaze_probs";
    v28[0] = &unk_1F59F90C0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v25 = 0;
    v26 = 0;
    v12 = [VisionCoreEspressoUtils getInputImageTensorDescriptor:&v26 outputTensorDescriptors:&v25 forNetworkModelFileURL:v10 inputBlobName:@"image" pixelFormatType:1111970369 outputBlobNamesWithTypes:v11 confidencesBlobNamesWithLabelsFiles:0 error:version];
    v13 = v26;
    v14 = v25;
    v15 = 0;
    if (v12)
    {
      v16 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:@"VisionCoreInferenceNetworkIdentifierCamGaze" version:nameCopy];
      v17 = [VisionCoreCamGazeNetworkDescriptor alloc];
      allValues = [v14 allValues];
      v19 = [(VisionCoreInferenceNetworkDescriptor *)v17 initWithURL:v10 specifier:v16 networkHeadVersions:0 inputImage:v13 outputs:allValues confidencesOutput:0];

      v20 = [v14 objectForKeyedSubscript:@"camgaze_probs"];
      v21 = *(v19 + 64);
      *(v19 + 64) = v20;

      v22 = [_VisionCoreCamGazeClassifier classifierForGazeProbabilitiesOutputDescriptor:version error:?];
      v23 = *(v19 + 72);
      *(v19 + 72) = v22;

      if (*(v19 + 72))
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)camGazeV1AndReturnError:(id *)error
{
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v6 = [VisionCoreCamGazeNetworkDescriptor _descriptorWithModelFileName:self version:@"camgaze_classification_3class_light-nxbrsq87z6_23998_BGR_opt.espresso" inputImageBlobName:v5 pixelFormatType:error probabilitiesOutputName:? error:?];

  return v6;
}

@end
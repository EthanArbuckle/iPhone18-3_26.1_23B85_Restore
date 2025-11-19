@interface VisionCoreCamGazeNetworkDescriptor
+ (id)_descriptorWithModelFileName:(void *)a3 version:(void *)a4 inputImageBlobName:pixelFormatType:probabilitiesOutputName:error:;
+ (id)camGazeV1AndReturnError:(id *)a3;
+ (id)camGazeV2AndReturnError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (VisionCoreCamGazeNetworkDescriptor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreCamGazeNetworkDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VisionCoreCamGazeNetworkDescriptor, [(VisionCoreInferenceNetworkDescriptor *)&v10 isEqual:v4]))
    {
      v5 = v4;
      v6 = [(VisionCoreCamGazeNetworkDescriptor *)self gazeProbabilitiesOutput];
      v7 = [(VisionCoreCamGazeNetworkDescriptor *)v5 gazeProbabilitiesOutput];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VisionCoreCamGazeNetworkDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VisionCoreCamGazeNetworkDescriptor;
  v5 = [(VisionCoreInferenceNetworkDescriptor *)&v15 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gazeProbabilitiesOutput"];
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
    [v4 failWithError:v10];

    goto LABEL_7;
  }

LABEL_5:
  v12 = v5;
LABEL_8:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VisionCoreCamGazeNetworkDescriptor;
  v4 = a3;
  [(VisionCoreInferenceNetworkDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_gazeProbabilitiesOutput forKey:{@"gazeProbabilitiesOutput", v5.receiver, v5.super_class}];
}

+ (id)camGazeV2AndReturnError:(id *)a3
{
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:2 minor:0 micro:0];
  v6 = [VisionCoreCamGazeNetworkDescriptor _descriptorWithModelFileName:a1 version:@"camgazeflow-f334k5e5zi_91568-quant-fp16.espresso" inputImageBlobName:v5 pixelFormatType:a3 probabilitiesOutputName:? error:?];

  return v6;
}

+ (id)_descriptorWithModelFileName:(void *)a3 version:(void *)a4 inputImageBlobName:pixelFormatType:probabilitiesOutputName:error:
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = @"image";
  v8 = @"camgaze_probs";
  v9 = a2;
  objc_opt_self();
  v10 = [VisionCoreEspressoUtils URLForModelNamed:v9 error:a4];

  if (v10)
  {
    v27 = @"camgaze_probs";
    v28[0] = &unk_1F59F90C0;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v25 = 0;
    v26 = 0;
    v12 = [VisionCoreEspressoUtils getInputImageTensorDescriptor:&v26 outputTensorDescriptors:&v25 forNetworkModelFileURL:v10 inputBlobName:@"image" pixelFormatType:1111970369 outputBlobNamesWithTypes:v11 confidencesBlobNamesWithLabelsFiles:0 error:a4];
    v13 = v26;
    v14 = v25;
    v15 = 0;
    if (v12)
    {
      v16 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:@"VisionCoreInferenceNetworkIdentifierCamGaze" version:v6];
      v17 = [VisionCoreCamGazeNetworkDescriptor alloc];
      v18 = [v14 allValues];
      v19 = [(VisionCoreInferenceNetworkDescriptor *)v17 initWithURL:v10 specifier:v16 networkHeadVersions:0 inputImage:v13 outputs:v18 confidencesOutput:0];

      v20 = [v14 objectForKeyedSubscript:@"camgaze_probs"];
      v21 = *(v19 + 64);
      *(v19 + 64) = v20;

      v22 = [_VisionCoreCamGazeClassifier classifierForGazeProbabilitiesOutputDescriptor:a4 error:?];
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

+ (id)camGazeV1AndReturnError:(id *)a3
{
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v6 = [VisionCoreCamGazeNetworkDescriptor _descriptorWithModelFileName:a1 version:@"camgaze_classification_3class_light-nxbrsq87z6_23998_BGR_opt.espresso" inputImageBlobName:v5 pixelFormatType:a3 probabilitiesOutputName:? error:?];

  return v6;
}

@end
@interface VisionCoreInferenceNetworkDescriptor
+ (id)URLForEspressoModelNamed:(id)a3 error:(id *)a4;
+ (id)_registeredNetworkDescriptors;
+ (id)availableIdentifiers;
+ (id)availableVersionsForIdentifier:(id)a3 error:(id *)a4;
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5;
+ (id)descriptorsForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (VisionCoreImageTensorDescriptor)onlyInputImage;
- (VisionCoreInferenceNetworkDescriptor)initWithCoder:(id)a3;
- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)a3 specifier:(id)a4 networkHeadVersions:(id)a5 inputImage:(id)a6 outputs:(id)a7 confidencesOutput:(id)a8;
- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)a3 specifier:(id)a4 networkHeadVersions:(id)a5 inputs:(id)a6 outputs:(id)a7 inputImages:(id)a8 confidencesOutput:(id)a9;
- (id)confidencesOutputOfClass:(Class)a3 error:(id *)a4;
- (id)description;
- (id)inputNamed:(id)a3 error:(id *)a4;
- (id)inputOfClass:(Class)a3 named:(id)a4 error:(id *)a5;
- (id)outputNamed:(id)a3 error:(id *)a4;
- (id)outputOfClass:(Class)a3 named:(id)a4 error:(id *)a5;
- (id)versionOfNetworkHead:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreInferenceNetworkDescriptor

- (VisionCoreInferenceNetworkDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    if (v6)
    {
      v7 = objc_opt_class();
      v23 = [v4 decodeObjectOfClass:v7 forKey:@"confidencesOutput"];
      v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), v7, 0}];
      v9 = [v4 decodeObjectOfClasses:v8 forKey:@"inputs"];
      if (v9)
      {
        v10 = [v4 decodeObjectOfClasses:v8 forKey:@"outputs"];
        if (v10)
        {
          v22 = v10;
          v11 = objc_alloc(MEMORY[0x1E695DFD8]);
          v12 = objc_opt_class();
          v21 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
          v13 = [v4 decodeObjectOfClasses:v21 forKey:@"inputImages"];
          if (v13)
          {
            if ([v4 containsValueForKey:@"networkHeadVersions"])
            {
              v14 = objc_alloc(MEMORY[0x1E695DFD8]);
              v15 = objc_opt_class();
              v16 = objc_opt_class();
              v17 = [v14 initWithObjects:{v15, v16, objc_opt_class(), 0}];
              v18 = [v4 decodeObjectOfClasses:v17 forKey:@"networkHeadVersions"];
            }

            else
            {
              v18 = 0;
            }

            self = [(VisionCoreInferenceNetworkDescriptor *)self initWithURL:v6 specifier:v5 networkHeadVersions:v18 inputs:v9 outputs:v22 inputImages:v13 confidencesOutput:v23];

            v19 = self;
          }

          else
          {
            v19 = 0;
          }

          v10 = v22;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(VisionCoreProcessingDescriptor *)self specifier];
  [v11 encodeObject:v4 forKey:@"specifier"];

  v5 = [(VisionCoreInferenceNetworkDescriptor *)self URL];
  [v11 encodeObject:v5 forKey:@"URL"];

  v6 = [(VisionCoreInferenceNetworkDescriptor *)self allInputs];
  [v11 encodeObject:v6 forKey:@"inputs"];

  v7 = [(VisionCoreInferenceNetworkDescriptor *)self allOutputs];
  [v11 encodeObject:v7 forKey:@"outputs"];

  v8 = [(VisionCoreInferenceNetworkDescriptor *)self allInputImages];
  [v11 encodeObject:v8 forKey:@"inputImages"];

  v9 = [(VisionCoreInferenceNetworkDescriptor *)self confidencesOutput];
  [v11 encodeObject:v9 forKey:@"confidencesOutput"];

  networkHeadVersions = self->_networkHeadVersions;
  if (networkHeadVersions)
  {
    [v11 encodeObject:networkHeadVersions forKey:@"networkHeadVersions"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v16.receiver = self;
  v16.super_class = VisionCoreInferenceNetworkDescriptor;
  v4 = [(VisionCoreProcessingDescriptor *)&v16 description];
  v5 = [(VisionCoreInferenceNetworkDescriptor *)self URL];
  v6 = [v5 lastPathComponent];
  v7 = [v3 initWithFormat:@"%@ %@", v4, v6];

  networkHeadVersions = self->_networkHeadVersions;
  if (networkHeadVersions)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__VisionCoreInferenceNetworkDescriptor_description__block_invoke;
    v14[3] = &unk_1E8698680;
    v15 = v7;
    [(NSDictionary *)networkHeadVersions enumerateKeysAndObjectsUsingBlock:v14];
  }

  v9 = [(VisionCoreInferenceNetworkDescriptor *)self allInputs];
  if ([v9 count])
  {
    v10 = [v9 componentsJoinedByString:@"\n       "];
    [v7 appendFormat:@"\n   --> %@", v10];
  }

  v11 = [(VisionCoreInferenceNetworkDescriptor *)self allOutputs];
  if ([v11 count])
  {
    v12 = [v11 componentsJoinedByString:@"\n       "];
    [v7 appendFormat:@"\n   <-- %@", v12];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreProcessingDescriptor *)self version];
      v7 = [(VisionCoreProcessingDescriptor *)v5 version];
      v8 = [v6 isEqualToResourceVersion:v7];

      if (v8 & 1) != 0 && (-[VisionCoreInferenceNetworkDescriptor URL](self, "URL"), v9 = objc_claimAutoreleasedReturnValue(), -[VisionCoreInferenceNetworkDescriptor URL](v5, "URL"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, (v11) && ((networkHeadVersions = self->_networkHeadVersions, networkHeadVersions == v5->_networkHeadVersions) || -[NSDictionary isEqual:](networkHeadVersions, "isEqual:")) && ((inputs = self->_inputs, inputs == v5->_inputs) || -[NSDictionary isEqual:](inputs, "isEqual:")) && ((inputImages = self->_inputImages, inputImages == v5->_inputImages) || -[NSDictionary isEqual:](inputImages, "isEqual:")) && ((outputs = self->_outputs, outputs == v5->_outputs) || -[NSDictionary isEqual:](outputs, "isEqual:")))
      {
        v16 = [(VisionCoreInferenceNetworkDescriptor *)self confidencesOutput];
        v17 = [(VisionCoreInferenceNetworkDescriptor *)v5 confidencesOutput];
        if (v16 == v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = [v16 isEqual:v17];
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VisionCoreInferenceNetworkDescriptor;
  v3 = [(VisionCoreProcessingDescriptor *)&v7 hash];
  v4 = [(VisionCoreInferenceNetworkDescriptor *)self URL];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (VisionCoreImageTensorDescriptor)onlyInputImage
{
  v2 = [(VisionCoreInferenceNetworkDescriptor *)self allInputImages];
  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)outputOfClass:(Class)a3 named:(id)a4 error:(id *)a5
{
  v7 = [(VisionCoreInferenceNetworkDescriptor *)self outputNamed:a4 error:a5];
  if (v7 && [VisionCoreValidationUtilities validateObject:v7 isKindOfClass:a3 basedOnClass:objc_opt_class() error:a5])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)outputNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_outputs objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Network does not have output %@", v6];
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v10];
  }

  return v8;
}

- (id)inputOfClass:(Class)a3 named:(id)a4 error:(id *)a5
{
  v7 = [(VisionCoreInferenceNetworkDescriptor *)self inputNamed:a4 error:a5];
  if (v7 && [VisionCoreValidationUtilities validateObject:v7 isKindOfClass:a3 basedOnClass:objc_opt_class() error:a5])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inputNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_inputs objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Network does not have input %@", v6];
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v10];
  }

  return v8;
}

- (id)versionOfNetworkHead:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_networkHeadVersions objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Network does not have head with identifier %@", v6];
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v10];
  }

  return v8;
}

- (id)confidencesOutputOfClass:(Class)a3 error:(id *)a4
{
  v6 = [(VisionCoreInferenceNetworkDescriptor *)self confidencesOutput];
  if ([VisionCoreValidationUtilities validateObject:v6 isKindOfClass:a3 basedOnClass:objc_opt_class() error:a4])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)a3 specifier:(id)a4 networkHeadVersions:(id)a5 inputImage:(id)a6 outputs:(id)a7 confidencesOutput:(id)a8
{
  v23[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v23[0] = v17;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = [(VisionCoreInferenceNetworkDescriptor *)self initWithURL:v14 specifier:v15 networkHeadVersions:v16 inputs:v20 outputs:v18 inputImages:v20 confidencesOutput:v19];

  return v21;
}

- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)a3 specifier:(id)a4 networkHeadVersions:(id)a5 inputs:(id)a6 outputs:(id)a7 inputImages:(id)a8 confidencesOutput:(id)a9
{
  v39 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v40.receiver = self;
  v40.super_class = VisionCoreInferenceNetworkDescriptor;
  v22 = [(VisionCoreProcessingDescriptor *)&v40 initWithSpecifier:v16];
  v23 = v22;
  v24 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_url, a3);
    v25 = [v17 count];
    if (v25)
    {
      v26 = [v17 copy];
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong(&v23->_networkHeadVersions, v26);
    if (v25)
    {
    }

    v27 = _dictionaryOfTensorDescriptors(v18);
    v28 = [v27 copy];
    inputs = v24->_inputs;
    v24->_inputs = v28;

    v30 = _dictionaryOfTensorDescriptors(v19);
    v31 = [v30 copy];
    outputs = v24->_outputs;
    v24->_outputs = v31;

    v33 = _dictionaryOfTensorDescriptors(v20);
    v34 = [v33 copy];
    inputImages = v24->_inputImages;
    v24->_inputImages = v34;

    v36 = [v21 copy];
    confidencesOutput = v24->_confidencesOutput;
    v24->_confidencesOutput = v36;
  }

  return v24;
}

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 version];
          v16 = [v15 isEqualToResourceVersion:v7];

          if (v16)
          {
            v18 = v14;

            goto LABEL_16;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (a5)
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"no inference network for %@ %@", v6, v7];
      *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v17];
    }
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:v6];
    *a5 = v18 = 0;
    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:

  return v18;
}

+ (id)_registeredNetworkDescriptors
{
  objc_opt_self();
  if (+[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors]::onceToken != -1)
  {
    dispatch_once(&+[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors]::onceToken, &__block_literal_global_421);
  }

  v0 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors]::ourDescriptors;

  return v0;
}

void __69__VisionCoreInferenceNetworkDescriptor__registeredNetworkDescriptors__block_invoke()
{
  v13[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = _obtainDescriptors(v0, sel_sceneNetV3AndReturnError_, 0, @"VisionCoreInferenceNetworkIdentifierSceneNet");
  v13[0] = v1;
  v12[1] = @"VisionCoreInferenceNetworkIdentifierSceneNetObjDetNetSliderNet";
  v2 = objc_opt_class();
  v3 = _obtainDescriptors(v2, sel_sceneNetObjDetNetSliderNetV3AndReturnError_, 0);
  v13[1] = v3;
  v12[2] = @"VisionCoreInferenceNetworkIdentifierSmartCam";
  v4 = objc_opt_class();
  v5 = _obtainDescriptors(v4, sel_descriptorAndReturnError_, 0);
  v13[2] = v5;
  v12[3] = @"VisionCoreInferenceNetworkIdentifierFaceprint";
  v6 = objc_opt_class();
  v7 = _obtainDescriptors(v6, sel_FPrev4_0FArev1_4_MD2AndReturnError_, 0);
  v13[3] = v7;
  v12[4] = @"VisionCoreInferenceNetworkIdentifierCamGaze";
  v8 = objc_opt_class();
  v9 = _obtainDescriptors(v8, sel_camGazeV2AndReturnError_, 0);
  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v11 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors]::ourDescriptors;
  +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors]::ourDescriptors = v10;
}

+ (id)descriptorsForIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = +[VisionCoreResourceVersion newerFirstComparator];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__VisionCoreInferenceNetworkDescriptor_descriptorsForIdentifier_error___block_invoke;
    v13[3] = &unk_1E8698658;
    v14 = v8;
    v9 = v8;
    v10 = [v7 sortedArrayWithOptions:16 usingComparator:v13];

    v11 = v10;
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:v5];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __71__VisionCoreInferenceNetworkDescriptor_descriptorsForIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [a2 version];
  v8 = [v5 version];
  v9 = (*(v6 + 16))(v6, v7, v8);

  return v9;
}

+ (id)availableVersionsForIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = [v7 valueForKey:@"version"];
    v9 = +[VisionCoreResourceVersion newerFirstComparator];
    v10 = [v8 sortedArrayUsingComparator:v9];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:v5];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)availableIdentifiers
{
  v3 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v4 = [v3 allKeys];
  if (objc_opt_class() != a1)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __60__VisionCoreInferenceNetworkDescriptor_availableIdentifiers__block_invoke;
    v11 = &unk_1E8698630;
    v12 = v3;
    v13 = a1;
    v5 = [v4 indexesOfObjectsPassingTest:&v8];
    v6 = [v4 objectsAtIndexes:{v5, v8, v9, v10, v11}];

    v4 = v6;
  }

  return v4;
}

uint64_t __60__VisionCoreInferenceNetworkDescriptor_availableIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) objectForKeyedSubscript:a2];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v2 = v9 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_opt_isKindOfClass())
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

+ (id)URLForEspressoModelNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 pathExtension];
    v9 = [v8 isEqualToString:@"espresso"];

    if (v9)
    {
      v10 = [v7 stringByAppendingPathExtension:@"net"];

      v7 = v10;
    }

    v11 = [a1 URLForResourceNamed:v7 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"model name must be provided"];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
@interface VisionCoreInferenceNetworkDescriptor
+ (id)URLForEspressoModelNamed:(id)named error:(id *)error;
+ (id)_registeredNetworkDescriptors;
+ (id)availableIdentifiers;
+ (id)availableVersionsForIdentifier:(id)identifier error:(id *)error;
+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error;
+ (id)descriptorsForIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VisionCoreImageTensorDescriptor)onlyInputImage;
- (VisionCoreInferenceNetworkDescriptor)initWithCoder:(id)coder;
- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)l specifier:(id)specifier networkHeadVersions:(id)versions inputImage:(id)image outputs:(id)outputs confidencesOutput:(id)output;
- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)l specifier:(id)specifier networkHeadVersions:(id)versions inputs:(id)inputs outputs:(id)outputs inputImages:(id)images confidencesOutput:(id)output;
- (id)confidencesOutputOfClass:(Class)class error:(id *)error;
- (id)description;
- (id)inputNamed:(id)named error:(id *)error;
- (id)inputOfClass:(Class)class named:(id)named error:(id *)error;
- (id)outputNamed:(id)named error:(id *)error;
- (id)outputOfClass:(Class)class named:(id)named error:(id *)error;
- (id)versionOfNetworkHead:(id)head error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreInferenceNetworkDescriptor

- (VisionCoreInferenceNetworkDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    if (v6)
    {
      v7 = objc_opt_class();
      v23 = [coderCopy decodeObjectOfClass:v7 forKey:@"confidencesOutput"];
      v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), v7, 0}];
      v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"inputs"];
      if (v9)
      {
        v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"outputs"];
        if (v10)
        {
          v22 = v10;
          v11 = objc_alloc(MEMORY[0x1E695DFD8]);
          v12 = objc_opt_class();
          v21 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
          v13 = [coderCopy decodeObjectOfClasses:v21 forKey:@"inputImages"];
          if (v13)
          {
            if ([coderCopy containsValueForKey:@"networkHeadVersions"])
            {
              v14 = objc_alloc(MEMORY[0x1E695DFD8]);
              v15 = objc_opt_class();
              v16 = objc_opt_class();
              v17 = [v14 initWithObjects:{v15, v16, objc_opt_class(), 0}];
              v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"networkHeadVersions"];
            }

            else
            {
              v18 = 0;
            }

            self = [(VisionCoreInferenceNetworkDescriptor *)self initWithURL:v6 specifier:v5 networkHeadVersions:v18 inputs:v9 outputs:v22 inputImages:v13 confidencesOutput:v23];

            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }

          v10 = v22;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  specifier = [(VisionCoreProcessingDescriptor *)self specifier];
  [coderCopy encodeObject:specifier forKey:@"specifier"];

  v5 = [(VisionCoreInferenceNetworkDescriptor *)self URL];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  allInputs = [(VisionCoreInferenceNetworkDescriptor *)self allInputs];
  [coderCopy encodeObject:allInputs forKey:@"inputs"];

  allOutputs = [(VisionCoreInferenceNetworkDescriptor *)self allOutputs];
  [coderCopy encodeObject:allOutputs forKey:@"outputs"];

  allInputImages = [(VisionCoreInferenceNetworkDescriptor *)self allInputImages];
  [coderCopy encodeObject:allInputImages forKey:@"inputImages"];

  confidencesOutput = [(VisionCoreInferenceNetworkDescriptor *)self confidencesOutput];
  [coderCopy encodeObject:confidencesOutput forKey:@"confidencesOutput"];

  networkHeadVersions = self->_networkHeadVersions;
  if (networkHeadVersions)
  {
    [coderCopy encodeObject:networkHeadVersions forKey:@"networkHeadVersions"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v16.receiver = self;
  v16.super_class = VisionCoreInferenceNetworkDescriptor;
  v4 = [(VisionCoreProcessingDescriptor *)&v16 description];
  v5 = [(VisionCoreInferenceNetworkDescriptor *)self URL];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v3 initWithFormat:@"%@ %@", v4, lastPathComponent];

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

  allInputs = [(VisionCoreInferenceNetworkDescriptor *)self allInputs];
  if ([allInputs count])
  {
    v10 = [allInputs componentsJoinedByString:@"\n       "];
    [v7 appendFormat:@"\n   --> %@", v10];
  }

  allOutputs = [(VisionCoreInferenceNetworkDescriptor *)self allOutputs];
  if ([allOutputs count])
  {
    v12 = [allOutputs componentsJoinedByString:@"\n       "];
    [v7 appendFormat:@"\n   <-- %@", v12];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(VisionCoreProcessingDescriptor *)self version];
      version2 = [(VisionCoreProcessingDescriptor *)v5 version];
      v8 = [version isEqualToResourceVersion:version2];

      if (v8 & 1) != 0 && (-[VisionCoreInferenceNetworkDescriptor URL](self, "URL"), v9 = objc_claimAutoreleasedReturnValue(), -[VisionCoreInferenceNetworkDescriptor URL](v5, "URL"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, (v11) && ((networkHeadVersions = self->_networkHeadVersions, networkHeadVersions == v5->_networkHeadVersions) || -[NSDictionary isEqual:](networkHeadVersions, "isEqual:")) && ((inputs = self->_inputs, inputs == v5->_inputs) || -[NSDictionary isEqual:](inputs, "isEqual:")) && ((inputImages = self->_inputImages, inputImages == v5->_inputImages) || -[NSDictionary isEqual:](inputImages, "isEqual:")) && ((outputs = self->_outputs, outputs == v5->_outputs) || -[NSDictionary isEqual:](outputs, "isEqual:")))
      {
        confidencesOutput = [(VisionCoreInferenceNetworkDescriptor *)self confidencesOutput];
        confidencesOutput2 = [(VisionCoreInferenceNetworkDescriptor *)v5 confidencesOutput];
        if (confidencesOutput == confidencesOutput2)
        {
          v18 = 1;
        }

        else
        {
          v18 = [confidencesOutput isEqual:confidencesOutput2];
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
  allInputImages = [(VisionCoreInferenceNetworkDescriptor *)self allInputImages];
  if ([allInputImages count] == 1)
  {
    firstObject = [allInputImages firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)outputOfClass:(Class)class named:(id)named error:(id *)error
{
  v7 = [(VisionCoreInferenceNetworkDescriptor *)self outputNamed:named error:error];
  if (v7 && [VisionCoreValidationUtilities validateObject:v7 isKindOfClass:class basedOnClass:objc_opt_class() error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)outputNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v7 = [(NSDictionary *)self->_outputs objectForKey:namedCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (error)
  {
    namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Network does not have output %@", namedCopy];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:namedCopy];
  }

  return v8;
}

- (id)inputOfClass:(Class)class named:(id)named error:(id *)error
{
  v7 = [(VisionCoreInferenceNetworkDescriptor *)self inputNamed:named error:error];
  if (v7 && [VisionCoreValidationUtilities validateObject:v7 isKindOfClass:class basedOnClass:objc_opt_class() error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inputNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v7 = [(NSDictionary *)self->_inputs objectForKey:namedCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (error)
  {
    namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Network does not have input %@", namedCopy];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:namedCopy];
  }

  return v8;
}

- (id)versionOfNetworkHead:(id)head error:(id *)error
{
  headCopy = head;
  v7 = [(NSDictionary *)self->_networkHeadVersions objectForKey:headCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (error)
  {
    headCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Network does not have head with identifier %@", headCopy];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:headCopy];
  }

  return v8;
}

- (id)confidencesOutputOfClass:(Class)class error:(id *)error
{
  confidencesOutput = [(VisionCoreInferenceNetworkDescriptor *)self confidencesOutput];
  if ([VisionCoreValidationUtilities validateObject:confidencesOutput isKindOfClass:class basedOnClass:objc_opt_class() error:error])
  {
    v7 = confidencesOutput;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)l specifier:(id)specifier networkHeadVersions:(id)versions inputImage:(id)image outputs:(id)outputs confidencesOutput:(id)output
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  specifierCopy = specifier;
  versionsCopy = versions;
  imageCopy = image;
  outputsCopy = outputs;
  outputCopy = output;
  v23[0] = imageCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = [(VisionCoreInferenceNetworkDescriptor *)self initWithURL:lCopy specifier:specifierCopy networkHeadVersions:versionsCopy inputs:v20 outputs:outputsCopy inputImages:v20 confidencesOutput:outputCopy];

  return v21;
}

- (VisionCoreInferenceNetworkDescriptor)initWithURL:(id)l specifier:(id)specifier networkHeadVersions:(id)versions inputs:(id)inputs outputs:(id)outputs inputImages:(id)images confidencesOutput:(id)output
{
  lCopy = l;
  specifierCopy = specifier;
  versionsCopy = versions;
  inputsCopy = inputs;
  outputsCopy = outputs;
  imagesCopy = images;
  outputCopy = output;
  v40.receiver = self;
  v40.super_class = VisionCoreInferenceNetworkDescriptor;
  v22 = [(VisionCoreProcessingDescriptor *)&v40 initWithSpecifier:specifierCopy];
  v23 = v22;
  v24 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_url, l);
    v25 = [versionsCopy count];
    if (v25)
    {
      v26 = [versionsCopy copy];
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong(&v23->_networkHeadVersions, v26);
    if (v25)
    {
    }

    v27 = _dictionaryOfTensorDescriptors(inputsCopy);
    v28 = [v27 copy];
    inputs = v24->_inputs;
    v24->_inputs = v28;

    v30 = _dictionaryOfTensorDescriptors(outputsCopy);
    v31 = [v30 copy];
    outputs = v24->_outputs;
    v24->_outputs = v31;

    v33 = _dictionaryOfTensorDescriptors(imagesCopy);
    v34 = [v33 copy];
    inputImages = v24->_inputImages;
    v24->_inputImages = v34;

    v36 = [outputCopy copy];
    confidencesOutput = v24->_confidencesOutput;
    v24->_confidencesOutput = v36;
  }

  return v24;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  v8 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v9 = [v8 objectForKey:identifierCopy];

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
          version = [v14 version];
          v16 = [version isEqualToResourceVersion:versionCopy];

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

    if (error)
    {
      versionCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"no inference network for %@ %@", identifierCopy, versionCopy];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:versionCopy];
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:identifierCopy];
    *error = v18 = 0;
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

+ (id)descriptorsForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v7 = [v6 objectForKey:identifierCopy];

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

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:identifierCopy];
    *error = v11 = 0;
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

+ (id)availableVersionsForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = +[VisionCoreInferenceNetworkDescriptor _registeredNetworkDescriptors];
  v7 = [v6 objectForKey:identifierCopy];

  if (v7)
  {
    v8 = [v7 valueForKey:@"version"];
    v9 = +[VisionCoreResourceVersion newerFirstComparator];
    v10 = [v8 sortedArrayUsingComparator:v9];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:identifierCopy];
    *error = v10 = 0;
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
  allKeys = [v3 allKeys];
  if (objc_opt_class() != self)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __60__VisionCoreInferenceNetworkDescriptor_availableIdentifiers__block_invoke;
    v11 = &unk_1E8698630;
    v12 = v3;
    selfCopy = self;
    v5 = [allKeys indexesOfObjectsPassingTest:&v8];
    v6 = [allKeys objectsAtIndexes:{v5, v8, v9, v10, v11}];

    allKeys = v6;
  }

  return allKeys;
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

+ (id)URLForEspressoModelNamed:(id)named error:(id *)error
{
  namedCopy = named;
  if (namedCopy)
  {
    v7 = namedCopy;
    pathExtension = [namedCopy pathExtension];
    v9 = [pathExtension isEqualToString:@"espresso"];

    if (v9)
    {
      v10 = [v7 stringByAppendingPathExtension:@"net"];

      v7 = v10;
    }

    v11 = [self URLForResourceNamed:v7 error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"model name must be provided"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
@interface VisionCoreANSTInferenceNetworkDescriptor
+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error;
- (VisionCoreANSTInferenceNetworkDescriptor)initWithDescriptor:(id)descriptor version:(id)version identifier:(id)identifier;
- (id)URL;
- (id)_anstPixelBufferRepresentation:(id)representation pixelBufferRepresentation:(__CVBuffer *)bufferRepresentation orientation:(unsigned int)orientation error:(id *)error;
- (id)_anstTensorDataRepresentation:(id)representation data:(id)data error:(id *)error;
- (id)_outputDescriptorWithName:(id)name postProcessor:(id)processor;
- (id)postProcessingOutputDescriptors;
@end

@implementation VisionCoreANSTInferenceNetworkDescriptor

- (id)postProcessingOutputDescriptors
{
  v2 = [(ANSTInferenceDescriptor *)self->_descriptor newPostprocessorWithError:0];
  v3 = v2;
  if (v2)
  {
    processedOutputDescriptors = [v2 processedOutputDescriptors];
    v5 = VisionCoreTensorDescriptorsFromANSTDescriptors(processedOutputDescriptors);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_anstPixelBufferRepresentation:(id)representation pixelBufferRepresentation:(__CVBuffer *)bufferRepresentation orientation:(unsigned int)orientation error:(id *)error
{
  v7 = *&orientation;
  representationCopy = representation;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getANSTPixelBufferClass_softClass;
  v18 = getANSTPixelBufferClass_softClass;
  if (!getANSTPixelBufferClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getANSTPixelBufferClass_block_invoke;
    v14[3] = &unk_1E8698AE0;
    v14[4] = &v15;
    __getANSTPixelBufferClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v12 = [[v10 alloc] initWithDescriptor:representationCopy pixelBuffer:bufferRepresentation orientation:v7 error:error];

  return v12;
}

- (id)_anstTensorDataRepresentation:(id)representation data:(id)data error:(id *)error
{
  representationCopy = representation;
  dataCopy = data;
  sizeInBytes = [representationCopy sizeInBytes];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getANSTTensorDataClass_softClass;
  v18 = getANSTTensorDataClass_softClass;
  if (!getANSTTensorDataClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getANSTTensorDataClass_block_invoke;
    v14[3] = &unk_1E8698AE0;
    v14[4] = &v15;
    __getANSTTensorDataClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v12 = [[v10 alloc] initWithDescriptor:representationCopy dataPointer:objc_msgSend(dataCopy length:"bytes") deallocator:sizeInBytes error:{0, error}];

  return v12;
}

- (id)_outputDescriptorWithName:(id)name postProcessor:(id)processor
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [processor processedOutputDescriptors];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:nameCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)URL
{
  v9.receiver = self;
  v9.super_class = VisionCoreANSTInferenceNetworkDescriptor;
  v2 = [(VisionCoreInferenceNetworkDescriptor *)&v9 URL];
  absoluteString = [v2 absoluteString];
  v4 = [absoluteString hasPrefix:@"file://"];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v2 VisionCoreFileSystemPathAndReturnError:0];
    v7 = [v5 URLWithString:v6];
  }

  else
  {
    v7 = v2;
  }

  return v7;
}

- (VisionCoreANSTInferenceNetworkDescriptor)initWithDescriptor:(id)descriptor version:(id)version identifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_descriptor, descriptor);
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  versionCopy = version;
  assetURL = [descriptorCopy assetURL];
  inputDescriptors = [descriptorCopy inputDescriptors];
  v26 = VisionCoreTensorDescriptorsFromANSTDescriptors(inputDescriptors);

  outputDescriptors = [descriptorCopy outputDescriptors];
  v12 = VisionCoreTensorDescriptorsFromANSTDescriptors(outputDescriptors);

  allInputPixelBufferDescriptors = [descriptorCopy allInputPixelBufferDescriptors];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = allInputPixelBufferDescriptors;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[VisionCoreImageTensorDescriptor alloc] initWithANSTPixelBufferDescriptor:*(*(&v29 + 1) + 8 * v19)];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  v21 = [VisionCoreProcessingDescriptorSpecifier alloc];
  v22 = [(VisionCoreProcessingDescriptorSpecifier *)v21 initWithIdentifier:identifierCopy version:versionCopy];

  v23 = [(VisionCoreInferenceNetworkDescriptor *)self initWithURL:assetURL specifier:v22 networkHeadVersions:0 inputs:v26 outputs:v12 inputImages:v14 confidencesOutput:0];
  return v23;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error
{
  v5 = objc_alloc_init(VisionCoreProcessingDescriptor);

  return v5;
}

@end
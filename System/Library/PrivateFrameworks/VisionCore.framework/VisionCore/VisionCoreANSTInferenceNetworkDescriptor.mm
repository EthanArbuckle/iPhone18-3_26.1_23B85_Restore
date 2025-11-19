@interface VisionCoreANSTInferenceNetworkDescriptor
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5;
- (VisionCoreANSTInferenceNetworkDescriptor)initWithDescriptor:(id)a3 version:(id)a4 identifier:(id)a5;
- (id)URL;
- (id)_anstPixelBufferRepresentation:(id)a3 pixelBufferRepresentation:(__CVBuffer *)a4 orientation:(unsigned int)a5 error:(id *)a6;
- (id)_anstTensorDataRepresentation:(id)a3 data:(id)a4 error:(id *)a5;
- (id)_outputDescriptorWithName:(id)a3 postProcessor:(id)a4;
- (id)postProcessingOutputDescriptors;
@end

@implementation VisionCoreANSTInferenceNetworkDescriptor

- (id)postProcessingOutputDescriptors
{
  v2 = [(ANSTInferenceDescriptor *)self->_descriptor newPostprocessorWithError:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 processedOutputDescriptors];
    v5 = VisionCoreTensorDescriptorsFromANSTDescriptors(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_anstPixelBufferRepresentation:(id)a3 pixelBufferRepresentation:(__CVBuffer *)a4 orientation:(unsigned int)a5 error:(id *)a6
{
  v7 = *&a5;
  v9 = a3;
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
  v12 = [[v10 alloc] initWithDescriptor:v9 pixelBuffer:a4 orientation:v7 error:a6];

  return v12;
}

- (id)_anstTensorDataRepresentation:(id)a3 data:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 sizeInBytes];
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
  v12 = [[v10 alloc] initWithDescriptor:v7 dataPointer:objc_msgSend(v8 length:"bytes") deallocator:v9 error:{0, a5}];

  return v12;
}

- (id)_outputDescriptorWithName:(id)a3 postProcessor:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [a4 processedOutputDescriptors];
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
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v5];

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
  v3 = [v2 absoluteString];
  v4 = [v3 hasPrefix:@"file://"];

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

- (VisionCoreANSTInferenceNetworkDescriptor)initWithDescriptor:(id)a3 version:(id)a4 identifier:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_descriptor, a3);
  v8 = a3;
  v25 = a5;
  v9 = a4;
  v27 = [v8 assetURL];
  v10 = [v8 inputDescriptors];
  v26 = VisionCoreTensorDescriptorsFromANSTDescriptors(v10);

  v11 = [v8 outputDescriptors];
  v12 = VisionCoreTensorDescriptorsFromANSTDescriptors(v11);

  v13 = [v8 allInputPixelBufferDescriptors];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v13;
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
  v22 = [(VisionCoreProcessingDescriptorSpecifier *)v21 initWithIdentifier:v25 version:v9];

  v23 = [(VisionCoreInferenceNetworkDescriptor *)self initWithURL:v27 specifier:v22 networkHeadVersions:0 inputs:v26 outputs:v12 inputImages:v14 confidencesOutput:0];
  return v23;
}

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5
{
  v5 = objc_alloc_init(VisionCoreProcessingDescriptor);

  return v5;
}

@end
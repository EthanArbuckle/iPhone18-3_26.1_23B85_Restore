@interface RSMetalContext
- (RSMetalContext)init;
- (RSMetalContext)initWithDevice:(id)device libraryURL:(id)l error:(id *)error;
- (id)beginCommandBufferWithError:(id *)error;
- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values error:(id *)error;
- (id)newTextureByBindingIOSurface:(__IOSurface *)surface pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height usage:(unint64_t)usage plane:(unint64_t)plane error:(id *)error;
@end

@implementation RSMetalContext

- (id)newTextureByBindingIOSurface:(__IOSurface *)surface pixelFormat:(unint64_t)format width:(unint64_t)width height:(unint64_t)height usage:(unint64_t)usage plane:(unint64_t)plane error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], a2, format, width, height, 0);
  v15 = v13;
  if (v13)
  {
    objc_msgSend_setUsage_(v13, v14, usage);
    v17 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v16, v15, surface, plane);
    if (v17)
    {
      v19 = v17;
      v20 = v19;
    }

    else
    {
      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CBEE30];
        v29 = @"Unable to create MTLTexture.";
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v29, &v28, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"com.apple.RoomScanCoreError", -2006, v24);
      }

      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v20 = 0;
      goto LABEL_10;
    }

    v21 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CBEE30];
    v31[0] = @"Unable to create MTLTextureDescriptor.";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v31, &v30, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v21, v22, @"com.apple.RoomScanCoreError", -2005, v19);
    *error = v20 = 0;
  }

LABEL_10:
  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)newComputePipelineStateWithFunctionName:(id)name constantValues:(id)values error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  library = self->_library;
  if (!valuesCopy)
  {
    v12 = objc_msgSend_newFunctionWithName_(library, v9, nameCopy);
    if (!v12)
    {
      if (!error)
      {
        goto LABEL_7;
      }

      v17 = MEMORY[0x277CCA9B8];
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Unable to create MTLFunction named %@.", nameCopy, *MEMORY[0x277CBEE30]);
      v22[0] = v14;
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v22, &v21, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v17, v20, @"com.apple.RoomScanCoreError", -2004, v19);

      error = 0;
      goto LABEL_6;
    }

LABEL_5:
    v14 = v12;
    error = objc_msgSend_newComputePipelineStateWithFunction_error_(self->_device, v13, v12, error);
LABEL_6:

    goto LABEL_7;
  }

  v12 = objc_msgSend_newFunctionWithName_constantValues_error_(library, v9, nameCopy, valuesCopy, error);
  if (v12)
  {
    goto LABEL_5;
  }

  error = 0;
LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)beginCommandBufferWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_commandBuffer(self->_commandQueue, a2, error);
  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = v5;

  v8 = self->_currentCommandBuffer;
  if (v8)
  {
    v9 = v8;
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CBEE30];
    v16[0] = @"Unable to create MTLCommandBuffer.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v16, &v15, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"com.apple.RoomScanCoreError", -2003, v11);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (RSMetalContext)initWithDevice:(id)device libraryURL:(id)l error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  lCopy = l;
  v43.receiver = self;
  v43.super_class = RSMetalContext;
  v10 = [(RSMetalContext *)&v43 init];
  if (!v10)
  {
    goto LABEL_19;
  }

  if (deviceCopy)
  {
    v11 = deviceCopy;
  }

  else
  {
    v11 = MTLCreateSystemDefaultDevice();
  }

  device = v10->_device;
  v10->_device = v11;

  if (v10->_device)
  {
    if (lCopy)
    {
LABEL_7:
      v14 = objc_msgSend_newLibraryWithURL_error_(v10->_device, v13, lCopy, error);
      library = v10->_library;
      v10->_library = v14;
LABEL_17:

      if (!v10->_library)
      {
LABEL_23:
        error = 0;
        goto LABEL_24;
      }

      v36 = objc_msgSend_newCommandQueue(v10->_device, v34, v35);
      commandQueue = v10->_commandQueue;
      v10->_commandQueue = v36;

      if (v10->_commandQueue)
      {
LABEL_19:
        error = v10;
        goto LABEL_24;
      }

      if (!error)
      {
        goto LABEL_24;
      }

      v39 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CBEE30];
      v45 = @"Unable to create MTLCommandQueue.";
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v45, &v44, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v39, v40, @"com.apple.RoomScanCoreError", -2002, v17);
      *error = LABEL_22:;

      goto LABEL_23;
    }

    v19 = MEMORY[0x277CCA8D8];
    v20 = objc_opt_class();
    v22 = objc_msgSend_bundleForClass_(v19, v21, v20);
    v23 = sub_262381FB4(@"default", @"metallib", v22);

    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_length(v23, v24, v25))
    {
      lCopy = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v26, v23);

      if (lCopy)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v27 = v10->_device;
    v28 = MEMORY[0x277CCA8D8];
    v29 = objc_opt_class();
    library = objc_msgSend_bundleForClass_(v28, v30, v29);
    v32 = objc_msgSend_newDefaultLibraryWithBundle_error_(v27, v31, library, error);
    v33 = v10->_library;
    v10->_library = v32;

    lCopy = 0;
    goto LABEL_17;
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CBEE30];
    v47[0] = @"Unable to create MTLDevice.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v47, &v46, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"com.apple.RoomScanCoreError", -2001, v17);
    goto LABEL_22;
  }

LABEL_24:

  v41 = *MEMORY[0x277D85DE8];
  return error;
}

- (RSMetalContext)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

@end
@interface _MRCMetalContext
- (_MRCMetalContext)init;
- (_MRCMetalContext)initWithDevice:(id)a3 libraryURL:(id)a4 error:(id *)a5;
- (id)beginCommandBufferWithError:(id *)a3;
- (id)newComputePipelineStateWithFunctionName:(id)a3 constantValues:(id)a4 error:(id *)a5;
- (id)newTextureByBindingIOSurface:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 usage:(unint64_t)a7 plane:(unint64_t)a8 error:(id *)a9;
- (void)commitCommandBufferShouldWaitUntilCompleted:(BOOL)a3;
@end

@implementation _MRCMetalContext

- (id)newTextureByBindingIOSurface:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 usage:(unint64_t)a7 plane:(unint64_t)a8 error:(id *)a9
{
  v30[1] = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], a2, a4, a5, a6, 0);
  v15 = v13;
  if (v13)
  {
    objc_msgSend_setUsage_(v13, v14, a7);
    v17 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v16, v15, a3, a8);
    if (v17)
    {
      v19 = v17;
      v20 = v19;
    }

    else
    {
      if (a9)
      {
        v23 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CBEE30];
        v28 = @"Cannot create MTLTexture.";
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v28, &v27, 1);
        *a9 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"MRCErrorDomain", -1, v24);
      }

      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    if (!a9)
    {
      v20 = 0;
      goto LABEL_10;
    }

    v21 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CBEE30];
    v30[0] = @"Cannot create MTLTextureDescriptor.";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v21, v22, @"MRCErrorDomain", -1, v19);
    *a9 = v20 = 0;
  }

LABEL_10:
  return v20;
}

- (id)newComputePipelineStateWithFunctionName:(id)a3 constantValues:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = a4;
  library = self->_library;
  if (!v10)
  {
    v12 = objc_msgSend_newFunctionWithName_(library, v9, v8);
    if (!v12)
    {
      if (!a5)
      {
        goto LABEL_7;
      }

      v16 = MEMORY[0x277CCA9B8];
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Cannot create MTLFunction named %@.", v8, *MEMORY[0x277CBEE30]);
      v21[0] = v14;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v21, &v20, 1);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, @"MRCErrorDomain", -1, v18);

      a5 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v14 = v12;
    a5 = objc_msgSend_newComputePipelineStateWithFunction_error_(self->_device, v13, v12, a5);
LABEL_6:

    goto LABEL_7;
  }

  v12 = objc_msgSend_newFunctionWithName_constantValues_error_(library, v9, v8, v10, a5);
  if (v12)
  {
    goto LABEL_5;
  }

  a5 = 0;
LABEL_7:

  return a5;
}

- (void)commitCommandBufferShouldWaitUntilCompleted:(BOOL)a3
{
  v3 = a3;
  objc_msgSend_commit(self->_currentCommandBuffer, a2, a3);
  if (v3)
  {
    objc_msgSend_waitUntilCompleted(self->_currentCommandBuffer, v5, v6);
  }

  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = 0;
}

- (id)beginCommandBufferWithError:(id *)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_commandBuffer(self->_commandQueue, a2, a3);
  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = v5;

  v8 = self->_currentCommandBuffer;
  if (v8)
  {
    v9 = v8;
  }

  else if (a3)
  {
    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CBEE30];
    v15[0] = @"Cannot create MTLCommandBuffer.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v15, &v14, 1);
    *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"MRCErrorDomain", -1, v11);
  }

  return v8;
}

- (_MRCMetalContext)initWithDevice:(id)a3 libraryURL:(id)a4 error:(id *)a5
{
  v58[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v52.receiver = self;
  v52.super_class = _MRCMetalContext;
  v10 = [(_MRCMetalContext *)&v52 init];
  if (!v10)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MTLCreateSystemDefaultDevice();
  }

  device = v10->_device;
  v10->_device = v11;

  if (v10->_device)
  {
    if (v9)
    {
LABEL_7:
      v15 = objc_msgSend_newLibraryWithURL_error_(v10->_device, v13, v9, a5);
      library = v10->_library;
      v10->_library = v15;
LABEL_19:

      if (!v10->_library)
      {
LABEL_25:
        a5 = 0;
        goto LABEL_26;
      }

      v37 = objc_msgSend_newCommandQueue(v10->_device, v35, v36);
      commandQueue = v10->_commandQueue;
      v10->_commandQueue = v37;

      if (v10->_commandQueue)
      {
LABEL_21:
        a5 = v10;
        goto LABEL_26;
      }

      if (!a5)
      {
        goto LABEL_26;
      }

      v17 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CBEE30];
      v54 = @"Cannot create MTLCommandQueue.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v54, &v53, 1);
      v40 = LABEL_24:;
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v41, @"MRCErrorDomain", -1, v40);

      goto LABEL_25;
    }

    v18 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v13, v14);
    v20 = objc_msgSend_objectForKey_(v18, v19, @"_MRCMetalContextDefaultLibraryPath");

    if (v20 || (v21 = objc_alloc(MEMORY[0x277CBEBD0]), v23 = objc_msgSend_initWithSuiteName_(v21, v22, @"com.apple.Quagga"), objc_msgSend_objectForKey_(v23, v24, @"_MRCMetalContextDefaultLibraryPath"), v20 = objc_claimAutoreleasedReturnValue(), v23, v20)) && (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend_length(v20, v25, v26))
    {
      v9 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v27, v20);

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v28 = MEMORY[0x277CCA8D8];
    v29 = objc_opt_class();
    v31 = objc_msgSend_bundleForClass_(v28, v30, v29);
    if (!v31)
    {
      if (!a5)
      {
        v9 = 0;
        goto LABEL_26;
      }

      v43 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CBEE30];
      v44 = MEMORY[0x277CCACA8];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v48 = objc_msgSend_stringWithFormat_(v44, v47, @"Cannot get bundle for class %@.", v46);
      v56 = v48;
      v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v56, &v55, 1);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v43, v51, @"MRCErrorDomain", -1, v50);

      v9 = 0;
      goto LABEL_25;
    }

    library = v31;
    v33 = objc_msgSend_newDefaultLibraryWithBundle_error_(v10->_device, v32, v31, a5);
    v34 = v10->_library;
    v10->_library = v33;

    v9 = 0;
    goto LABEL_19;
  }

  if (a5)
  {
    v17 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CBEE30];
    v58[0] = @"Cannot create MTLDevice.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v58, &v57, 1);
    goto LABEL_24;
  }

LABEL_26:

  return a5;
}

- (_MRCMetalContext)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

@end
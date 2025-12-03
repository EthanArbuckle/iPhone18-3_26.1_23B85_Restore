@interface SIResourceFactory
- (MTLLibrary)library;
- (SIResourceFactory)initWithDevice:(id)device;
- (id)binaryArchive;
- (id)commandBufferOnCustomQueueWithoutComputePreemption;
- (id)dictionaryFromTexture:(id)texture;
- (id)newComputePipelineStateWithName:(id)name constantValues:(id)values error:(id *)error;
- (id)newCubemapWithFormat:(SIImageFormat_struct *)format;
- (id)newFunctionWithName:(id)name;
- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error;
- (id)newIOSurfaceBackedTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)newTextureFromIOSurface:(__IOSurface *)surface;
- (id)newTextureFromPixelBuffer:(__CVBuffer *)buffer;
- (id)newTextureWithFormat:(SIImageFormat_struct *)format;
- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height mtlPixelFormat:(unint64_t)format;
- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)newTexturesFromBiPlanarPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation SIResourceFactory

- (SIResourceFactory)initWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = SIResourceFactory;
  v6 = [(SIResourceFactory *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    newCommandQueue = [(MTLDevice *)v7->_device newCommandQueue];
    commandQueue = v7->_commandQueue;
    v7->_commandQueue = newCommandQueue;

    v10 = objc_opt_new();
    [v10 setCommitSynchronously:1];
    [v10 setDisableAsyncCompletionDispatch:1];
    v11 = [(MTLDevice *)v7->_device newCommandQueueWithDescriptor:v10];
    commandQueueSPI = v7->_commandQueueSPI;
    v7->_commandQueueSPI = v11;

    newSharedEvent = [(MTLDevice *)v7->_device newSharedEvent];
    sharedEvent = v7->_sharedEvent;
    v7->_sharedEvent = newSharedEvent;

    v15 = v7;
  }

  return v7;
}

- (MTLLibrary)library
{
  v19 = *MEMORY[0x277D85DE8];
  library = self->_library;
  if (!library)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    device = self->_device;
    v12 = 0;
    v6 = [(MTLDevice *)device newDefaultLibraryWithBundle:v4 error:&v12];
    v7 = v12;
    v8 = self->_library;
    self->_library = v6;

    if (v7 || !self->_library)
    {
      v9 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136381187;
        v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v15 = 1025;
        v16 = 73;
        v17 = 2113;
        v18 = v7;
        _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newLibraryWithURL failed: %{private}@ ***", buf, 0x1Cu);
      }
    }

    library = self->_library;
  }

  v10 = *MEMORY[0x277D85DE8];

  return library;
}

- (id)commandBufferOnCustomQueueWithoutComputePreemption
{
  v3 = objc_opt_new();
  v4 = [(MTLCommandQueueSPI *)self->_commandQueueSPI commandBufferWithDescriptor:v3];

  return v4;
}

- (id)binaryArchive
{
  v24 = *MEMORY[0x277D85DE8];
  binaryArchive = self->_binaryArchive;
  if (binaryArchive)
  {
LABEL_12:
    v14 = binaryArchive;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:@"default-binaryarchive" ofType:@"metallib"];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    [v6 setUrl:v7];

    device = self->_device;
    v17 = 0;
    v9 = [(MTLDevice *)device newBinaryArchiveWithDescriptor:v6 error:&v17];
    v10 = v17;
    v11 = self->_binaryArchive;
    self->_binaryArchive = v9;

    if (v10 || !self->_binaryArchive)
    {
      v12 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v20 = 1025;
        v21 = 127;
        v22 = 2113;
        v23 = v10;
        _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** newBinaryArchiveWithDescriptor failed:  %{private}@ ***", buf, 0x1Cu);
      }
    }

    binaryArchive = self->_binaryArchive;
    goto LABEL_12;
  }

  v13 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136380931;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
    v20 = 1025;
    v21 = 116;
    _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** path for resource default-binaryarchive.metallib could not be found. ***", buf, 0x12u);
  }

  v14 = 0;
LABEL_13:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)newFunctionWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  library = [(SIResourceFactory *)self library];
  v6 = [library newFunctionWithName:nameCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136381187;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v13 = 1025;
      v14 = 145;
      v15 = 2113;
      v16 = nameCopy;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newFunctionWithName failed: %{private}@ ***", &v11, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  nameCopy = name;
  library = [(SIResourceFactory *)self library];
  v11 = [library newFunctionWithName:nameCopy constantValues:valuesCopy error:error];

  if (*error)
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v19 = 1025;
      v20 = 155;
      v21 = 2113;
      v22 = v13;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newFunctionWithName constantValues failed with error :%{private}@ ***", &v17, 0x1Cu);
    }

    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)newComputePipelineStateWithName:(id)name constantValues:(id)values error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valuesCopy = values;
  library = [(SIResourceFactory *)self library];
  v11 = library;
  if (valuesCopy)
  {
    v12 = [library newFunctionWithName:nameCopy constantValues:valuesCopy error:error];
  }

  else
  {
    v12 = [library newFunctionWithName:nameCopy];
  }

  v13 = v12;

  if (v13)
  {
    v14 = objc_opt_new();
    [v14 setComputeFunction:v13];
    [v14 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:0];
    binaryArchive = [(SIResourceFactory *)self binaryArchive];

    if (binaryArchive)
    {
      binaryArchive2 = [(SIResourceFactory *)self binaryArchive];
      v26 = binaryArchive2;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [v14 setBinaryArchives:v17];
    }

    v18 = [(MTLDevice *)self->_device newComputePipelineStateWithDescriptor:v14 options:0 reflection:0 error:error];
    v19 = v18;
    if (error || !v18)
    {
      v22 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v23 = *error;
        }

        else
        {
          v23 = &stru_282F2BE40;
        }

        *buf = 136381187;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v29 = 1025;
        v30 = 190;
        v31 = 2113;
        v32 = v23;
        _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newComputePipelineStateWithDescriptor failed: %{private}@ ***", buf, 0x1Cu);
      }

      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

  else
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v21 = *error;
      }

      else
      {
        v21 = &stru_282F2BE40;
      }

      *buf = 136381443;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v29 = 1025;
      v30 = 170;
      v31 = 2113;
      v32 = nameCopy;
      v33 = 2113;
      v34 = v21;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** newFunctionWithName %{private}@ failed %{private}@ ***", buf, 0x26u);
    }

    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)newCubemapWithFormat:(SIImageFormat_struct *)format
{
  v4 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:format->var3 size:format->var0 mipmapped:1];
  [v4 setUsage:23];
  v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v4];

  return v5;
}

- (id)newTextureWithFormat:(SIImageFormat_struct *)format
{
  var2 = format->var2;
  if (!var2)
  {
    var2 = SIOSTypeFromMTLPixelFormat(format->var3);
  }

  var0 = format->var0;
  var1 = format->var1;

  return [(SIResourceFactory *)self newTextureWithWidth:var0 height:var1 pixelFormat:var2];
}

- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = SIMTLPixelFormatFromOSType(format);
  if (v9)
  {
    v10 = *MEMORY[0x277D85DE8];

    return [(SIResourceFactory *)self newTextureWithWidth:width height:height mtlPixelFormat:v9];
  }

  else
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = SIPixelFormatToStr(format);
      v15 = 136381187;
      v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v17 = 1025;
      v18 = 226;
      v19 = 2113;
      v20 = v13;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Textures do not currently support format %{private}@ ***", &v15, 0x1Cu);
    }

    v14 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (id)newTextureWithWidth:(unint64_t)width height:(unint64_t)height mtlPixelFormat:(unint64_t)format
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_new();
  [v9 setTextureType:2];
  [v9 setWidth:width];
  [v9 setHeight:height];
  [v9 setPixelFormat:format];
  [v9 setUsage:23];
  v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136380931;
      v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v18 = 1025;
      v19 = 251;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** Texture allocation failed ***", &v16, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)newIOSurfaceBackedTextureWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v6 = SICreateCVPixelBuffer(width, height, format, 1);
  v7 = [(SIResourceFactory *)self newTextureFromPixelBuffer:v6];
  CVPixelBufferRelease(v6);
  return v7;
}

- (id)newTextureFromPixelBuffer:(__CVBuffer *)buffer
{
  v13 = *MEMORY[0x277D85DE8];
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (IOSurface)
  {
    v5 = *MEMORY[0x277D85DE8];

    return [(SIResourceFactory *)self newTextureFromIOSurface:IOSurface];
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136380931;
      v10 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v11 = 1025;
      v12 = 280;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Pixel buffer missing IOSurface backing ***", &v9, 0x12u);
    }

    v8 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (id)newTextureFromIOSurface:(__IOSurface *)surface
{
  v24 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  v6 = SIMTLPixelFormatFromOSType(PixelFormat);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CD7058];
    Width = IOSurfaceGetWidth(surface);
    v10 = [v8 texture2DDescriptorWithPixelFormat:v7 width:Width height:IOSurfaceGetHeight(surface) mipmapped:0];
    [v10 setUsage:7];
    v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v10 iosurface:surface plane:0];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136380931;
        v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
        v20 = 1025;
        v21 = 313;
        _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Texture allocation failed ***", &v18, 0x12u);
      }
    }
  }

  else
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = SIPixelFormatToStr(PixelFormat);
      v18 = 136381187;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v20 = 1025;
      v21 = 294;
      v22 = 2113;
      v23 = v14;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Textures do not currently support format %{private}@ ***", &v18, 0x1Cu);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)newTexturesFromBiPlanarPixelBuffer:(__CVBuffer *)buffer
{
  v27 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (!SIIsBiPlanarUint8Format(PixelFormatType))
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = SIPixelFormatToStr(PixelFormatType);
      *buf = 136381187;
      v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v23 = 1025;
      v24 = 324;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected pixel buffer format: %@ ***", buf, 0x1Cu);
    }

    goto LABEL_8;
  }

  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (!IOSurface)
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIResourceFactory.m";
      v23 = 1025;
      v24 = 330;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Pixel buffer missing IOSurface backing ***", buf, 0x12u);
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v7 = IOSurface;
  v8 = MEMORY[0x277CD7058];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  v10 = [v8 texture2DDescriptorWithPixelFormat:10 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(buffer mipmapped:0), 0];
  [v10 setUsage:3];
  v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v10 iosurface:v7 plane:0];
  v12 = MEMORY[0x277CD7058];
  v13 = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
  v14 = [v12 texture2DDescriptorWithPixelFormat:30 width:v13 height:CVPixelBufferGetHeightOfPlane(buffer mipmapped:1uLL), 0];
  [v14 setUsage:3];
  v15 = [(MTLDevice *)self->_device newTextureWithDescriptor:v14 iosurface:v7 plane:1];
  v20[0] = v11;
  v20[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)dictionaryFromTexture:(id)texture
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:width];
  [v6 setObject:v7 forKey:@"width"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:height];
  [v6 setObject:v8 forKey:@"height"];

  return v6;
}

@end
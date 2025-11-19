@interface SIIOSurface
+ (unint64_t)getSurfaceIdentifierForPixelBuffer:(__CVBuffer *)a3;
- (NSString)description;
- (__CVBuffer)createPixelBufferWithAttributes:(id)a3;
- (e5rt_buffer_object)createE5RTBuffer;
- (e5rt_surface_object)createE5RTSurface;
- (id)debugQuickLookObject;
- (id)initFromE5RTBuffer:(e5rt_buffer_object *)a3;
- (id)initFromPixelBuffer:(__CVBuffer *)a3;
- (id)initFromSurface:(__IOSurface *)a3;
- (unint64_t)allocationSize;
- (unint64_t)bytesPerElement;
- (unint64_t)bytesPerElementOfPlane:(unint64_t)a3;
- (unint64_t)bytesPerRow;
- (unint64_t)bytesPerRowOfPlane:(unint64_t)a3;
- (unint64_t)elementHeight;
- (unint64_t)elementHeightOfPlane:(unint64_t)a3;
- (unint64_t)elementWidth;
- (unint64_t)elementWidthOfPlane:(unint64_t)a3;
- (unint64_t)height;
- (unint64_t)heightOfPlane:(unint64_t)a3;
- (unint64_t)offsetOfPlane:(unint64_t)a3;
- (unint64_t)planes;
- (unint64_t)width;
- (unint64_t)widthOfPlane:(unint64_t)a3;
- (unsigned)pixelFormat;
- (void)dealloc;
- (void)getMutableBytesOfPlane:(unint64_t)a3 withHandler:(id)a4;
- (void)getMutableBytesWithHandler:(id)a3;
- (void)saveByteToDisk:(id)a3;
@end

@implementation SIIOSurface

- (id)initFromSurface:(__IOSurface *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = SIIOSurface;
    self = [(SIIOSurface *)&v6 init];
    if (self)
    {
      v4 = self;
      [(SIIOSurface *)self setSurface:v3];
      CFRetain([(SIIOSurface *)v4 surface]);
      self = v4;
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)initFromE5RTBuffer:(e5rt_buffer_object *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (e5rt_buffer_object_get_iosurface())
  {
    v4 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m", 52);
      *buf = 136381187;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v12 = 1025;
      v13 = 52;
      v14 = 2113;
      v15 = v5;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v12 = 1025;
      v13 = 52;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the internal iosurface from output port. ***", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    self = [(SIIOSurface *)self initFromSurface:0];
    v7 = self;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)initFromPixelBuffer:(__CVBuffer *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    IOSurface = CVPixelBufferGetIOSurface(a3);
    if (!IOSurface)
    {
      v5 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 136380931;
        v10 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
        v11 = 1025;
        v12 = 62;
        _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Error extracting surface from buffer. Was not surface-backed? ***", &v9, 0x12u);
      }
    }

    self = [(SIIOSurface *)self initFromSurface:IOSurface];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (e5rt_buffer_object)createE5RTBuffer
{
  v27 = *MEMORY[0x277D85DE8];
  [(SIIOSurface *)self surface];
  if (e5rt_buffer_object_create_from_iosurface())
  {
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m", 77);
      *buf = 136381187;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v15 = 1025;
      v16 = 77;
      v17 = 2113;
      v18 = v4;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(SIIOSurface *)self identifier];
      v7 = [(SIIOSurface *)self width];
      v8 = [(SIIOSurface *)self height];
      v9 = [(SIIOSurface *)self bytesPerRow];
      v10 = SIPixelFormatToStr([(SIIOSurface *)self pixelFormat]);
      *buf = 136382211;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v15 = 1025;
      v16 = 77;
      v17 = 2048;
      v18 = v6;
      v19 = 2049;
      v20 = v7;
      v21 = 2049;
      v22 = v8;
      v23 = 2049;
      v24 = v9;
      v25 = 2113;
      v26 = v10;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create the e5rt buffer from an existing surface: id=%lld, width=%{private}lu, height=%{private}lu, stride=%{private}lu, format=%{private}@ ***", buf, 0x44u);
    }

    result = 0;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (e5rt_surface_object)createE5RTSurface
{
  v27 = *MEMORY[0x277D85DE8];
  [(SIIOSurface *)self surface];
  if (e5rt_surface_object_create_from_iosurface())
  {
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m", 91);
      *buf = 136381187;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v15 = 1025;
      v16 = 91;
      v17 = 2113;
      v18 = v4;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(SIIOSurface *)self identifier];
      v7 = [(SIIOSurface *)self width];
      v8 = [(SIIOSurface *)self height];
      v9 = [(SIIOSurface *)self bytesPerRow];
      v10 = SIPixelFormatToStr([(SIIOSurface *)self pixelFormat]);
      *buf = 136382211;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v15 = 1025;
      v16 = 91;
      v17 = 2048;
      v18 = v6;
      v19 = 2049;
      v20 = v7;
      v21 = 2049;
      v22 = v8;
      v23 = 2049;
      v24 = v9;
      v25 = 2113;
      v26 = v10;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create the e5rt surface from an existing surface: id=%lld, width=%{private}lu, height=%{private}lu, stride=%{private}lu, format=%{private}@ ***", buf, 0x44u);
    }

    result = 0;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)pixelFormat
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetPixelFormat(v2);
}

- (unint64_t)height
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetHeight(v2);
}

- (unint64_t)width
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetWidth(v2);
}

- (unint64_t)bytesPerRow
{
  if ([(SIIOSurface *)self planes]< 2)
  {
    v4 = [(SIIOSurface *)self surface];

    return IOSurfaceGetBytesPerRow(v4);
  }

  else
  {

    return [(SIIOSurface *)self bytesPerRowOfPlane:0];
  }
}

- (unint64_t)allocationSize
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetAllocSize(v2);
}

- (unint64_t)bytesPerElement
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerElement(v2);
}

- (unint64_t)elementWidth
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementWidth(v2);
}

- (unint64_t)elementHeight
{
  v2 = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementHeight(v2);
}

- (unint64_t)planes
{
  result = IOSurfaceGetPlaneCount([(SIIOSurface *)self surface]);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (unint64_t)heightOfPlane:(unint64_t)a3
{
  v4 = [(SIIOSurface *)self surface];

  return IOSurfaceGetHeightOfPlane(v4, a3);
}

- (unint64_t)widthOfPlane:(unint64_t)a3
{
  v4 = [(SIIOSurface *)self surface];

  return IOSurfaceGetWidthOfPlane(v4, a3);
}

- (unint64_t)bytesPerRowOfPlane:(unint64_t)a3
{
  v4 = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerRowOfPlane(v4, a3);
}

- (unint64_t)offsetOfPlane:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SIIOSurface_offsetOfPlane___block_invoke;
  v5[3] = &unk_27833C390;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(SIIOSurface *)self getMutableBytesWithHandler:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__SIIOSurface_offsetOfPlane___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SIIOSurface_offsetOfPlane___block_invoke_2;
  v5[3] = &unk_27833C500;
  v3 = a1[4];
  v5[4] = a1[5];
  v5[5] = a2;
  return [v3 getMutableBytesOfPlane:v2 withHandler:v5];
}

- (unint64_t)bytesPerElementOfPlane:(unint64_t)a3
{
  v4 = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerElementOfPlane(v4, a3);
}

- (unint64_t)elementWidthOfPlane:(unint64_t)a3
{
  v4 = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementWidthOfPlane(v4, a3);
}

- (unint64_t)elementHeightOfPlane:(unint64_t)a3
{
  v4 = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementHeightOfPlane(v4, a3);
}

- (void)getMutableBytesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(SIIOSurface *)self surface];
  CFRetain(v5);
  IOSurfaceLock(v5, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v5);
  v4[2](v4, BaseAddress);

  IOSurfaceUnlock(v5, 0, 0);

  CFRelease(v5);
}

- (void)getMutableBytesOfPlane:(unint64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = [(SIIOSurface *)self surface];
  CFRetain(v7);
  IOSurfaceLock(v7, 0, 0);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v7, a3);
  v6[2](v6, BaseAddressOfPlane);

  IOSurfaceUnlock(v7, 0, 0);

  CFRelease(v7);
}

- (__CVBuffer)createPixelBufferWithAttributes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = a3;
  v6 = CVPixelBufferCreateWithIOSurface(v4, [(SIIOSurface *)self surface], v5, &pixelBufferOut);

  if (v6)
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v13 = 1025;
      v14 = 208;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** failed to create CVPixelBuffer from surface. Error: %d ***", buf, 0x18u);
    }
  }

  result = pixelBufferOut;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unint64_t)getSurfaceIdentifierForPixelBuffer:(__CVBuffer *)a3
{
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    +[SIIOSurface getSurfaceIdentifierForPixelBuffer:];
  }

  return IOSurfaceGetID(IOSurface);
}

- (NSString)description
{
  v2 = [(SIIOSurface *)self propertiesDictionary];
  v3 = [v2 description];

  return v3;
}

- (id)debugQuickLookObject
{
  v3 = SISurfaceGetDebugQuickLookObject(self, 0);
  if (!v3)
  {
    v3 = [MEMORY[0x277CBF758] imageWithIOSurface:-[SIIOSurface ioSurface](self options:{"ioSurface"), 0}];
  }

  return v3;
}

- (void)dealloc
{
  if ([(SIIOSurface *)self surface])
  {
    CFRelease([(SIIOSurface *)self surface]);
  }

  v3.receiver = self;
  v3.super_class = SIIOSurface;
  [(SIIOSurface *)&v3 dealloc];
}

- (void)saveByteToDisk:(id)a3
{
  v4 = a3;
  v5 = [(SIIOSurface *)self copyData];
  [v5 writeToFile:v4 atomically:1];
}

@end
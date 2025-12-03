@interface SIIOSurface
+ (unint64_t)getSurfaceIdentifierForPixelBuffer:(__CVBuffer *)buffer;
- (NSString)description;
- (__CVBuffer)createPixelBufferWithAttributes:(id)attributes;
- (e5rt_buffer_object)createE5RTBuffer;
- (e5rt_surface_object)createE5RTSurface;
- (id)debugQuickLookObject;
- (id)initFromE5RTBuffer:(e5rt_buffer_object *)buffer;
- (id)initFromPixelBuffer:(__CVBuffer *)buffer;
- (id)initFromSurface:(__IOSurface *)surface;
- (unint64_t)allocationSize;
- (unint64_t)bytesPerElement;
- (unint64_t)bytesPerElementOfPlane:(unint64_t)plane;
- (unint64_t)bytesPerRow;
- (unint64_t)bytesPerRowOfPlane:(unint64_t)plane;
- (unint64_t)elementHeight;
- (unint64_t)elementHeightOfPlane:(unint64_t)plane;
- (unint64_t)elementWidth;
- (unint64_t)elementWidthOfPlane:(unint64_t)plane;
- (unint64_t)height;
- (unint64_t)heightOfPlane:(unint64_t)plane;
- (unint64_t)offsetOfPlane:(unint64_t)plane;
- (unint64_t)planes;
- (unint64_t)width;
- (unint64_t)widthOfPlane:(unint64_t)plane;
- (unsigned)pixelFormat;
- (void)dealloc;
- (void)getMutableBytesOfPlane:(unint64_t)plane withHandler:(id)handler;
- (void)getMutableBytesWithHandler:(id)handler;
- (void)saveByteToDisk:(id)disk;
@end

@implementation SIIOSurface

- (id)initFromSurface:(__IOSurface *)surface
{
  selfCopy2 = surface;
  if (surface)
  {
    v6.receiver = self;
    v6.super_class = SIIOSurface;
    self = [(SIIOSurface *)&v6 init];
    if (self)
    {
      selfCopy = self;
      [(SIIOSurface *)self setSurface:selfCopy2];
      CFRetain([(SIIOSurface *)selfCopy surface]);
      self = selfCopy;
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (id)initFromE5RTBuffer:(e5rt_buffer_object *)buffer
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

    selfCopy = 0;
  }

  else
  {
    self = [(SIIOSurface *)self initFromSurface:0];
    selfCopy = self;
  }

  v8 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)initFromPixelBuffer:(__CVBuffer *)buffer
{
  v13 = *MEMORY[0x277D85DE8];
  if (buffer)
  {
    IOSurface = CVPixelBufferGetIOSurface(buffer);
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return selfCopy;
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
      identifier = [(SIIOSurface *)self identifier];
      width = [(SIIOSurface *)self width];
      height = [(SIIOSurface *)self height];
      bytesPerRow = [(SIIOSurface *)self bytesPerRow];
      v10 = SIPixelFormatToStr([(SIIOSurface *)self pixelFormat]);
      *buf = 136382211;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v15 = 1025;
      v16 = 77;
      v17 = 2048;
      v18 = identifier;
      v19 = 2049;
      v20 = width;
      v21 = 2049;
      v22 = height;
      v23 = 2049;
      v24 = bytesPerRow;
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
      identifier = [(SIIOSurface *)self identifier];
      width = [(SIIOSurface *)self width];
      height = [(SIIOSurface *)self height];
      bytesPerRow = [(SIIOSurface *)self bytesPerRow];
      v10 = SIPixelFormatToStr([(SIIOSurface *)self pixelFormat]);
      *buf = 136382211;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v15 = 1025;
      v16 = 91;
      v17 = 2048;
      v18 = identifier;
      v19 = 2049;
      v20 = width;
      v21 = 2049;
      v22 = height;
      v23 = 2049;
      v24 = bytesPerRow;
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
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetPixelFormat(surface);
}

- (unint64_t)height
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetHeight(surface);
}

- (unint64_t)width
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetWidth(surface);
}

- (unint64_t)bytesPerRow
{
  if ([(SIIOSurface *)self planes]< 2)
  {
    surface = [(SIIOSurface *)self surface];

    return IOSurfaceGetBytesPerRow(surface);
  }

  else
  {

    return [(SIIOSurface *)self bytesPerRowOfPlane:0];
  }
}

- (unint64_t)allocationSize
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetAllocSize(surface);
}

- (unint64_t)bytesPerElement
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerElement(surface);
}

- (unint64_t)elementWidth
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementWidth(surface);
}

- (unint64_t)elementHeight
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementHeight(surface);
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

- (unint64_t)heightOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetHeightOfPlane(surface, plane);
}

- (unint64_t)widthOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetWidthOfPlane(surface, plane);
}

- (unint64_t)bytesPerRowOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerRowOfPlane(surface, plane);
}

- (unint64_t)offsetOfPlane:(unint64_t)plane
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
  v5[6] = plane;
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

- (unint64_t)bytesPerElementOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerElementOfPlane(surface, plane);
}

- (unint64_t)elementWidthOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementWidthOfPlane(surface, plane);
}

- (unint64_t)elementHeightOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementHeightOfPlane(surface, plane);
}

- (void)getMutableBytesWithHandler:(id)handler
{
  handlerCopy = handler;
  surface = [(SIIOSurface *)self surface];
  CFRetain(surface);
  IOSurfaceLock(surface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  handlerCopy[2](handlerCopy, BaseAddress);

  IOSurfaceUnlock(surface, 0, 0);

  CFRelease(surface);
}

- (void)getMutableBytesOfPlane:(unint64_t)plane withHandler:(id)handler
{
  handlerCopy = handler;
  surface = [(SIIOSurface *)self surface];
  CFRetain(surface);
  IOSurfaceLock(surface, 0, 0);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(surface, plane);
  handlerCopy[2](handlerCopy, BaseAddressOfPlane);

  IOSurfaceUnlock(surface, 0, 0);

  CFRelease(surface);
}

- (__CVBuffer)createPixelBufferWithAttributes:(id)attributes
{
  v17 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  attributesCopy = attributes;
  v6 = CVPixelBufferCreateWithIOSurface(v4, [(SIIOSurface *)self surface], attributesCopy, &pixelBufferOut);

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

+ (unint64_t)getSurfaceIdentifierForPixelBuffer:(__CVBuffer *)buffer
{
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (!IOSurface)
  {
    +[SIIOSurface getSurfaceIdentifierForPixelBuffer:];
  }

  return IOSurfaceGetID(IOSurface);
}

- (NSString)description
{
  propertiesDictionary = [(SIIOSurface *)self propertiesDictionary];
  v3 = [propertiesDictionary description];

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

- (void)saveByteToDisk:(id)disk
{
  diskCopy = disk;
  copyData = [(SIIOSurface *)self copyData];
  [copyData writeToFile:diskCopy atomically:1];
}

@end
void sub_270F8F744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, id a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  vg::IOSurfaceData::~IOSurfaceData(&a21);

  _Unwind_Resume(a1);
}

CVPixelBufferRef createPixelBufferFromData(NSData *a1, size_t a2, size_t a3, OSType a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  pixelBuffer = 0;
  v20 = *MEMORY[0x277CC4DE8];
  v21[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  CVPixelBufferCreate(0, a2, a3, a4, v8, &pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v10 = VGGetBytesPerElementFromPixelFormat(a4);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v12 = v7;
  v13 = [(NSData *)v7 bytes];
  if (a3)
  {
    v14 = v13;
    v15 = v10 * a2;
    do
    {
      memcpy(BaseAddress, v14, v15);
      v14 += v15;
      BaseAddress += BytesPerRow;
      --a3;
    }

    while (a3);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v16 = pixelBuffer;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL checkEqualSurfaces(IOSurface *a1, IOSurface *a2)
{
  v3 = a1;
  v4 = a2;
  if ((v3 != 0) != (v4 == 0) && (v5 = [(IOSurface *)v3 pixelFormat], v5 == [(IOSurface *)v4 pixelFormat]) && (v6 = [(IOSurface *)v3 width], v6 == [(IOSurface *)v4 width]) && (v7 = [(IOSurface *)v3 height], v7 == [(IOSurface *)v4 height]) && (v8 = [(IOSurface *)v3 bytesPerRow], v8 == [(IOSurface *)v4 bytesPerRow]) && (v9 = [(IOSurface *)v3 planeCount], v9 == [(IOSurface *)v4 planeCount]))
  {
    [(IOSurface *)v3 lockWithOptions:1 seed:0];
    [(IOSurface *)v4 lockWithOptions:1 seed:0];
    if ([(IOSurface *)v3 planeCount])
    {
      v10 = 0;
      do
      {
        v11 = [(IOSurface *)v3 planeCount];
        v12 = v10 >= v11;
        if (v10 >= v11)
        {
          break;
        }

        memset(__s1, 0, sizeof(__s1));
        if (v3)
        {
          [(IOSurface *)v3 vg_vImageBufferOfPlaneAtIndex:v10];
        }

        __s2 = 0;
        if (v4)
        {
          [(IOSurface *)v4 vg_vImageBufferOfPlaneAtIndex:v10, 0];
        }

        if (*&__s1[1] != 0)
        {
          v12 = 0;
          break;
        }

        ++v10;
      }

      while (!memcmp(0, __s2, 0));
    }

    else
    {
      v12 = memcmp([(IOSurface *)v3 baseAddress], [(IOSurface *)v4 baseAddress], [(IOSurface *)v3 height]* [(IOSurface *)v3 bytesPerRow]) == 0;
    }

    [(IOSurface *)v4 unlockWithOptions:1 seed:0, __s2];
    [(IOSurface *)v3 unlockWithOptions:1 seed:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL checkEqualPixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  if ((a1 != 0) == (a2 == 0))
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(a1);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(a1);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    return 0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (BytesPerRow != CVPixelBufferGetBytesPerRow(a2))
  {
    return 0;
  }

  v8 = CVPixelBufferGetBytesPerRow(a1);
  v9 = CVPixelBufferGetHeight(a1) * v8;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v11 = CVPixelBufferGetBaseAddress(a2);
  LODWORD(v9) = memcmp(BaseAddress, v11, v9);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v9 == 0;
}

id createSurfaceFromFilePath(NSString *a1)
{
  *(&v43[1] + 4) = *MEMORY[0x277D85DE8];
  v1 = a1;
  v38 = v1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBF758]);
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v1];
    v6 = [v4 initWithContentsOfURL:v5];

    v35 = [MEMORY[0x277CBF740] context];
    [v6 extent];
    v7 = [v35 createCGImage:v6 fromRect:?];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = ___Z25createSurfaceFromFilePathP8NSString_block_invoke;
    v39[3] = &__block_descriptor_40_e5_v8__0l;
    v39[4] = v7;
    v36 = MEMORY[0x2743B9AA0](v39);
    Width = CGImageGetWidth(v7);
    Height = CGImageGetHeight(v7);
    BytesPerRow = CGImageGetBytesPerRow(v7);
    BitsPerComponent = CGImageGetBitsPerComponent(v7);
    v11 = BitsPerComponent;
    v12 = 1278226488;
    v13 = BytesPerRow / Width;
    if (BytesPerRow / Width == 1 && BitsPerComponent == 8)
    {
      goto LABEL_32;
    }

    if (v13 == 2 && BitsPerComponent == 16)
    {
      v12 = 1278226536;
    }

    else
    {
      if (v13 == 4 && BitsPerComponent == 8)
      {
        v21 = 16961;
      }

      else
      {
        if (v13 == 4 && BitsPerComponent == 16)
        {
          v12 = 843264104;
          goto LABEL_32;
        }

        if (v13 != 8 || BitsPerComponent != 16)
        {
          v19 = __VGLogSharedInstance();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            LODWORD(v43[0]) = v13;
            WORD2(v43[0]) = 1024;
            *(v43 + 6) = v11;
            _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " Unsupported pixel format for UIImage (bytes per pixel: %d, bits per component: %d) ", buf, 0xEu);
          }

          v20 = 0;
LABEL_38:

          v36[2](v36);
          goto LABEL_39;
        }

        v21 = 26689;
      }

      v12 = v21 | 0x52470000u;
    }

LABEL_32:
    v40[0] = *MEMORY[0x277CD2928];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
    v41[0] = v22;
    v40[1] = *MEMORY[0x277CD28D0];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
    v41[1] = v23;
    v40[2] = *MEMORY[0x277CD28D8];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
    v41[2] = v24;
    v40[3] = *MEMORY[0x277CD28B0];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:BytesPerRow / Width];
    v41[3] = v25;
    v40[4] = *MEMORY[0x277CD28B8];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:BytesPerRow];
    v41[4] = v26;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];

    v20 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v19];
    if (v20)
    {
      DataProvider = CGImageGetDataProvider(v7);
      v28 = CGDataProviderCopyData(DataProvider);
      BytePtr = CFDataGetBytePtr(v28);
      [v20 lockWithOptions:0 seed:0];
      v30 = v20;
      memcpy([v20 baseAddress], BytePtr, Height * Width * v13);
      [v20 unlockWithOptions:0 seed:0];
      CFRelease(v28);
      v31 = v20;
    }

    else
    {
      v32 = __VGLogSharedInstance();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v32, OS_LOG_TYPE_ERROR, " Failed to create IOSurface ", buf, 2u);
      }
    }

    goto LABEL_38;
  }

  v6 = __VGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43[0] = v1;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Path does not exist: %@ ", buf, 0xCu);
  }

  v20 = 0;
LABEL_39:

  v33 = *MEMORY[0x277D85DE8];

  return v20;
}

void sub_270F901E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void (**a11)(void), uint64_t a12, void *a13)
{
  a11[2]();

  _Unwind_Resume(a1);
}

id vg_yuvSurfaceFromFilePath(NSString *a1, unsigned int a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v24 = a1;
  v25 = createSurfaceFromFilePath(v24);
  v3 = create32ARGBSurfaceFrom32RGBASurface(v25);
  v4 = MEMORY[0x277CD2920];
  v32[0] = *MEMORY[0x277CD2920];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "width")}];
  v33[0] = v27;
  v5 = MEMORY[0x277CD2900];
  v32[1] = *MEMORY[0x277CD2900];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "height")}];
  v26 = a2;
  v7 = MEMORY[0x277CD28E0];
  v32[2] = *MEMORY[0x277CD28E0];
  v33[1] = v6;
  v33[2] = &unk_2880F6250;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v34[0] = v8;
  v30[0] = *v4;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "width") / 2}];
  v31[0] = v9;
  v30[1] = *v5;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "height") / 2}];
  v30[2] = *v7;
  v31[1] = v10;
  v31[2] = &unk_2880F6268;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v34[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

  v13 = [v3 width];
  v14 = MEMORY[0x2743B89E0](*MEMORY[0x277CD2968], v13);
  v15 = objc_alloc(MEMORY[0x277CD2930]);
  v28[0] = *MEMORY[0x277CD2928];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "width")}];
  v29[0] = v16;
  v28[1] = *MEMORY[0x277CD28D0];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "height")}];
  v29[1] = v17;
  v28[2] = *MEMORY[0x277CD28D8];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
  v29[2] = v18;
  v28[3] = *MEMORY[0x277CD28B8];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v28[4] = *MEMORY[0x277CD2908];
  v29[3] = v19;
  v29[4] = v12;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
  v21 = [v15 initWithProperties:v20];

  [v3 vg_convertARGB8888To420Yp8_CbCr8:v21];
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

CVPixelBufferRef create32BGRABufferFrom32RGBAFilePath(NSString *a1)
{
  v1 = createSurfaceFromFilePath(a1);
  v2 = v1;
  if (v1)
  {
    v3 = create32BGRASurfaceFrom32RGBASurface(v1);
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v3, 0, &pixelBufferOut);
    v4 = pixelBufferOut;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

CVPixelBufferRef create32ARGBBufferFrom32RGBAFilePath(NSString *a1)
{
  v1 = createSurfaceFromFilePath(a1);
  v2 = v1;
  if (v1)
  {
    v3 = create32ARGBSurfaceFrom32RGBASurface(v1);
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v3, 0, &pixelBufferOut);
    v4 = pixelBufferOut;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

CVPixelBufferRef createYCbCrBufferFrom32RGBAFilePath(NSString *a1)
{
  v1 = a1;
  v2 = create32ARGBBufferFrom32RGBAFilePath(v1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___Z35createYCbCrBufferFrom32RGBAFilePathP8NSString_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v2;
  v3 = MEMORY[0x2743B9AA0](v7);
  YCbCrFromARGB = vg::createYCbCrFromARGB(v2, v4);
  v3[2](v3);

  return YCbCrFromARGB;
}

__n128 getImageBBoxAboveThreshold(__CVBuffer *a1, float a2)
{
  v4 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetImageBBoxAboveThreshold", &unk_270FBF062, buf, 2u);
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (Width < 1)
  {
    v18 = 0u;
  }

  else
  {
    v7 = Height;
    v18 = 0u;
    if (Height > 0)
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ___Z26getImageBBoxAboveThresholdP10__CVBufferf_block_invoke_37;
      v19[3] = &__block_descriptor_40_e5_v8__0l;
      v19[4] = a1;
      v9 = MEMORY[0x2743B9AA0](v19);
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v12 = 0;
      *&v13 = __PAIR64__(v7, Width);
      v14 = 0;
      do
      {
        v15 = 0;
        do
        {
          if (BaseAddress[v15] > a2)
          {
            *&v11 = vbsl_s8(vcgtd_s64(v13, v15), __PAIR64__(DWORD1(v13), v15), *&v13);
            v16 = vbsl_s8(vcgtd_s64(v15, v14.i32[0]), __PAIR64__(v14.u32[1], v15), v14);
            v13 = v11;
            DWORD1(v13) = v12;
            *&v13 = vbsl_s8(vcgtd_s64(SDWORD1(v11), v12), *&v13, *&v11);
            v14 = vbsl_s8(vcgtd_s64(v12, v16.i32[1]), __PAIR64__(v12, v16.u32[0]), v16);
          }

          ++v15;
        }

        while ((Width & 0x7FFFFFFF) != v15);
        ++v12;
        BaseAddress = (BaseAddress + BytesPerRow);
      }

      while (v12 != (v7 & 0x7FFFFFFF));
      v18 = v13;
      v9[2](v9);
    }
  }

  ___Z26getImageBBoxAboveThresholdP10__CVBufferf_block_invoke();
  return v18;
}

void ___Z26getImageBBoxAboveThresholdP10__CVBufferf_block_invoke()
{
  v0 = VGLogVGMLUtilities();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetImageBBoxAboveThreshold", &unk_270FBF062, v1, 2u);
  }
}

CVPixelBufferRef createZeroPixelBuffer(size_t a1, size_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  v13 = *MEMORY[0x277CC4DE8];
  v14[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  if (CVPixelBufferCreate(0, a2, a1, 0x20u, v4, &pixelBuffer))
  {
    v5 = 0;
  }

  else
  {
    Height = CVPixelBufferGetHeight(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height)
    {
      v9 = BaseAddress;
      do
      {
        if (BytesPerRow)
        {
          bzero(v9, BytesPerRow);
        }

        v9 += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    v5 = pixelBuffer;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

IOSurface *createMattedImage(IOSurface *a1, IOSurface *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277CD2930]);
  v6 = [(IOSurface *)v3 vg_basicProperties];
  v7 = [v5 initWithProperties:v6];

  vg::IOSurfaceData::IOSurfaceData(v24, v3, 1);
  vg::IOSurfaceData::IOSurfaceData(v22, v4, 1);
  vg::IOSurfaceData::IOSurfaceData(v21, v7, 0);
  for (i = 0; [(IOSurface *)v3 height]> i; ++i)
  {
    for (j = 0; [(IOSurface *)v3 width]> j; ++j)
    {
      v10 = v22[4] + v22[5] * i;
      v11 = *&v10[v23 * j];
      if (v11 <= 1.0)
      {
        v12 = *&v10[v23 * j];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = v24[4] + v24[5] * i + v24[6] * j;
      LOBYTE(v12) = *v14;
      *&v15 = v13 * LODWORD(v12);
      v16 = *&v15;
      LOBYTE(v15) = v14[1];
      *&v17 = v13 * v15;
      v18 = *&v17;
      LOBYTE(v17) = v14[2];
      LOBYTE(v14) = v14[3];
      v19 = v21[4] + v21[5] * i + v21[6] * j;
      *v19 = v16;
      v19[1] = v18;
      v19[2] = (v13 * v17);
      v19[3] = v14;
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v21);
  vg::IOSurfaceData::~IOSurfaceData(v22);
  vg::IOSurfaceData::~IOSurfaceData(v24);

  return v7;
}

void sub_270F90F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, id);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_270F91034(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL18VGLogVGMLUtilitiesv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGMLUtilities");
  v1 = VGLogVGMLUtilities(void)::handle;
  VGLogVGMLUtilities(void)::handle = v0;
}

uint64_t std::unordered_map<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,std::allocator<std::pair<std::pair<unsigned int,unsigned int> const,std::array<unsigned char,4ul>>>>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 12 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int> const,std::array<unsigned char,4ul>> const&>(a1, a2);
      a2 = (a2 + 12);
      v5 -= 12;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int> const,std::array<unsigned char,4ul>> const&>(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (*(v8 + 4) != v2 || *(v8 + 5) != HIDWORD(v2))
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::find<std::pair<unsigned int,unsigned int>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v4 == v9)
    {
      if (*(result + 4) == v3 && *(result + 5) == HIDWORD(v3))
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void vg::shared::VGSharedAmbientLightSensorReaderImpl::~VGSharedAmbientLightSensorReaderImpl(vg::shared::VGSharedAmbientLightSensorReaderImpl *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 2))
    {
      IOHIDEventSystemClientUnregisterEventCallback();
      v3 = *this;
      IOHIDEventSystemClientCancel();
      v2 = *this;
    }

    CFRelease(v2);
    *this = 0;
  }

  std::mutex::~mutex((this + 24));
}

uint64_t vg::shared::VGSharedAmbientLightSensorReaderImpl::init(uint64_t *a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = IOHIDEventSystemClientCreate();
  *a1 = v3;
  if (v3)
  {
    v7[0] = 0;
    sysctlbyname("hw.model", 0, v7, 0, 0);
    operator new[]();
  }

  v4 = vg::shared::VGSharedAmbientLightSensorReaderImpl::_log(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    vg::shared::VGSharedAmbientLightSensorReaderImpl::init(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

id vg::shared::VGSharedAmbientLightSensorReaderImpl::_log(vg::shared::VGSharedAmbientLightSensorReaderImpl *this)
{
  if (vg::shared::VGSharedAmbientLightSensorReaderImpl::_log(void)::sOnceToken != -1)
  {
    vg::shared::VGSharedAmbientLightSensorReaderImpl::_log();
  }

  v2 = vg::shared::VGSharedAmbientLightSensorReaderImpl::_log(void)::sLog;

  return v2;
}

void vg::shared::VGSharedAmbientLightSensorReaderImpl::_eventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    IOHIDEventGetDoubleValue();
    v11 = v5;
    IOHIDEventGetDoubleValue();
    v6.f64[0] = v11;
    v6.f64[1] = v7;
    *&v8 = vcvt_f32_f64(v6);
    v12 = v8;
    IOHIDEventGetDoubleValue();
    *&v9 = v9;
    v10 = v12;
    DWORD2(v10) = LODWORD(v9);
    v13 = v10;
    std::mutex::lock((a1 + 24));
    *(a1 + 96) = v13;

    std::mutex::unlock((a1 + 24));
  }
}

__n128 vg::shared::VGSharedAmbientLightSensorReaderImpl::getColor(vg::shared::VGSharedAmbientLightSensorReaderImpl *this)
{
  std::mutex::lock((this + 24));
  v3 = *(this + 6);
  std::mutex::unlock((this + 24));
  return v3;
}

void vg::shared::VGSharedAmbientLightSensorReaderImpl::_setColor(uint64_t a1, __n128 a2)
{
  std::mutex::lock((a1 + 24));
  *(a1 + 96) = a2;

  std::mutex::unlock((a1 + 24));
}

void ___ZN2vg6shared36VGSharedAmbientLightSensorReaderImpl4_logEv_block_invoke()
{
  v0 = vg_os_log_create_for_category("VGEyeSightRenderingAmbientLightSensorReader");
  v1 = vg::shared::VGSharedAmbientLightSensorReaderImpl::_log(void)::sLog;
  vg::shared::VGSharedAmbientLightSensorReaderImpl::_log(void)::sLog = v0;
}

void sub_270F91D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<vg::shared::VGSharedAmbientLightSensorReader>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::shared::VGSharedAmbientLightSensorReader::VGSharedAmbientLightSensorReader(vg::shared::VGSharedAmbientLightSensorReader *this)
{
  operator new();
}

{
  operator new();
}

vg::shared::VGSharedAmbientLightSensorReaderImpl ***std::unique_ptr<vg::shared::VGSharedAmbientLightSensorReader>::~unique_ptr[abi:ne200100](vg::shared::VGSharedAmbientLightSensorReaderImpl ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::shared::VGSharedAmbientLightSensorReader::~VGSharedAmbientLightSensorReader(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::shared::VGSharedAmbientLightSensorReader::~VGSharedAmbientLightSensorReader(vg::shared::VGSharedAmbientLightSensorReaderImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    vg::shared::VGSharedAmbientLightSensorReaderImpl::~VGSharedAmbientLightSensorReaderImpl(v2);
    MEMORY[0x2743B9370]();
  }
}

__n128 vg::shared::VGSharedAmbientLightSensorReader::getColor(vg::shared::VGSharedAmbientLightSensorReader *this)
{
  v1 = *this;
  std::mutex::lock((*this + 24));
  v3 = *(v1 + 96);
  std::mutex::unlock((v1 + 24));
  return v3;
}

void vg::shared::VGSharedAmbientLightSensorReaderImpl::init(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "No service found", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "Failed to create client", v1, 2u);
}

uint64_t vg::shared::GetMemoryFootprint(vg::shared *this)
{
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t vg::shared::MemoryUsage(vg::shared *this)
{
  v4 = 0u;
  v5 = 0u;
  *task_info_out = 0u;
  task_info_outCnt = 12;
  task_info(*MEMORY[0x277D85F48], 0x14u, task_info_out, &task_info_outCnt);
  return *&task_info_out[2];
}

IOSurface *vg::shared::remapImage(uint64_t a1)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v2 = MTLCreateSystemDefaultDevice();
  v3 = [*a1 pixelFormat];
  if (v3 == 32)
  {
    v4 = create32BGRASurfaceFrom32ARGBSurface(*a1);
    v5 = 81;
  }

  else
  {
    if (v3 != 1278226534)
    {
      v27 = 0;
      goto LABEL_18;
    }

    v4 = *a1;
    v5 = 55;
  }

  v37 = v4;
  *&buf = v37;
  *(&buf + 1) = 1;
  v46 = @"remappedImage";
  LOBYTE(v47) = 0;
  v34 = vg::shared::createMetalTexture(v2, &buf);

  *&buf = *(a1 + 8);
  *(&buf + 1) = 1;
  v46 = @"remapLut";
  LOBYTE(v47) = 0;
  v33 = vg::shared::createMetalTexture(v2, &buf);

  v6 = *(a1 + 16);
  v43 = vmovn_s64(*(a1 + 32));
  v44 = v6;
  v42 = *(a1 + 48);
  v36 = [v2 newCommandQueue];
  [v36 setLabel:@"com.apple.visage.imageUndistortion.queue"];
  v35 = vg::shared::getMetalLibrary(v2);
  v38 = [v36 commandBuffer];
  v7 = vsub_s32(*(a1 + 24), *(a1 + 16));
  v31 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v5 width:v7.i32[0] height:v7.i32[1] mipmapped:0];
  [v31 setUsage:3];
  v8 = [v2 newTextureWithDescriptor:v31];
  v41 = 0;
  v30 = [v35 newFunctionWithName:@"remapImage"];
  v9 = [v2 newComputePipelineStateWithFunction:? error:?];
  v32 = 0;
  if (!v9)
  {
    v10 = __VGLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_impl(&dword_270F06000, v10, OS_LOG_TYPE_ERROR, " Failed to create image undistortion pipeline, error %@ ", &buf, 0xCu);
    }

    v27 = 0;
    goto LABEL_17;
  }

  v10 = [v38 computeCommandEncoder];
  [v10 setTexture:v34 atIndex:0];
  [v10 setTexture:v33 atIndex:1];
  [v10 setBytes:&v44 length:8 atIndex:0];
  [v10 setBytes:&v43 length:8 atIndex:1];
  [v10 setBytes:&v42 length:1 atIndex:2];
  [v10 setTexture:v8 atIndex:2];
  [v10 setComputePipelineState:v9];
  v11 = [v8 width];
  v12 = [v8 height];
  *&buf = v11;
  *(&buf + 1) = v12;
  v46 = 1;
  v39 = vdupq_n_s64(0x10uLL);
  v40 = 1;
  [v10 dispatchThreads:&buf threadsPerThreadgroup:&v39];
  [v10 endEncoding];
  [v38 commit];
  [v38 waitUntilCompleted];
  v13 = objc_alloc(MEMORY[0x277CD2930]);
  v50[0] = *MEMORY[0x277CD2928];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "width")}];
  v51[0] = v14;
  v50[1] = *MEMORY[0x277CD28D0];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "height")}];
  v51[1] = v15;
  v50[2] = *MEMORY[0x277CD28D8];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v37, "pixelFormat")}];
  v51[2] = v16;
  v50[3] = *MEMORY[0x277CD28B0];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v37, "bytesPerElement")}];
  v51[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:4];
  v19 = [v13 initWithProperties:v18];

  [(IOSurface *)v19 lockWithOptions:0 seed:0];
  v20 = [v8 width];
  v21 = [v8 height];
  v22 = v19;
  v23 = [(IOSurface *)v19 baseAddress];
  v24 = [(IOSurface *)v19 bytesPerRow];
  buf = 0uLL;
  v46 = 0;
  v47 = v20;
  v48 = v21;
  v49 = 1;
  [v8 getBytes:v23 bytesPerRow:v24 fromRegion:&buf mipmapLevel:0];
  [(IOSurface *)v19 unlockWithOptions:0 seed:0];
  v25 = [(IOSurface *)v19 pixelFormat];
  if (v25 == 1111970369)
  {
    v26 = create32ARGBSurfaceFrom32BGRASurface(v19);
  }

  else
  {
    if (v25 != 1278226534)
    {
      v27 = 0;
      goto LABEL_16;
    }

    v26 = v19;
  }

  v27 = v26;
LABEL_16:

LABEL_17:
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

IOSurface *vg::shared::inverseRemapLut(vg::shared *this, IOSurface *a2, unsigned int a3)
{
  v4 = a2;
  v126[4] = *MEMORY[0x277D85DE8];
  v5 = this;
  v6 = [(vg::shared *)v5 width];
  v7 = [(vg::shared *)v5 height];
  v105 = a3;
  v106 = v4;
  v107 = v5;
  *v115 = 0u;
  v116 = 0u;
  *__p = 0u;
  if (!(v7 / 2))
  {
    v18 = -1;
LABEL_21:
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v19;
      v22 = v6 - 1;
      if (v6 != 1)
      {
        do
        {
          LODWORD(buf) = v21;
          DWORD1(buf) = v6 + v21;
          DWORD2(buf) = v6 + v21 + 1;
          std::vector<std::array<unsigned int,3ul>>::push_back[abi:ne200100](&v115[1], &buf);
          LODWORD(buf) = v21;
          DWORD1(buf) = v6 + v21 + 1;
          DWORD2(buf) = v21 + 1;
          std::vector<std::array<unsigned int,3ul>>::push_back[abi:ne200100](&v115[1], &buf);
          ++v21;
          --v22;
        }

        while (v22);
      }

      ++v20;
      v19 += v6;
    }

    while (v20 != v18);
    goto LABEL_25;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v103 = v7 / 2;
  v108 = (v7 / 2);
  do
  {
    v11 = v6;
    v12 = v8;
    if (v6)
    {
      do
      {
        if (v9 >= v115[0])
        {
          v13 = (v9 - __p[0]) >> 3;
          if ((v13 + 1) >> 61)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v14 = (v115[0] - __p[0]) >> 2;
          if (v14 <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          if ((v115[0] - __p[0]) >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(__p, v15);
          }

          *(8 * v13) = v12;
          v9 = (8 * v13 + 8);
          v16 = (8 * v13 - (__p[1] - __p[0]));
          memcpy(v16, __p[0], __p[1] - __p[0]);
          v17 = __p[0];
          __p[0] = v16;
          __p[1] = v9;
          v115[0] = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v9 = v12;
          v9 += 8;
        }

        __p[1] = v9;
        ++v12;
        --v11;
      }

      while (v11);
    }

    ++v10;
    v8 += 0x100000000;
  }

  while (v10 != v108);
  v18 = v103 - 1;
  if (v103 != 1)
  {
    goto LABEL_21;
  }

LABEL_25:
  v23 = MTLCreateSystemDefaultDevice();
  v24 = objc_opt_new();
  v25 = [v23 newBufferWithBytes:__p[0] length:__p[1] - __p[0] options:0];
  v26 = v25;
  if (v25)
  {
    [v25 setLabel:@"position"];
    v27 = [v24 layouts];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setStride:8];

    v29 = [v24 layouts];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 setStepRate:1];

    v31 = [v24 layouts];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setStepFunction:1];

    v33 = [v24 attributes];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setFormat:37];

    v35 = [v24 attributes];
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 setOffset:0];

    v37 = [v24 attributes];
    v38 = [v37 objectAtIndexedSubscript:0];
    [v38 setBufferIndex:0];

    v39 = [v23 newBufferWithBytes:v115[1] length:v116 - v115[1] options:0];
    v40 = v39;
    if (v39)
    {
      [v39 setLabel:@"index"];
      *&buf = v107;
      *(&buf + 1) = 1;
      v118 = @"lut";
      v119 = 0;
      v41 = vg::shared::createMetalTexture(v23, &buf);

      if (v41)
      {
        v42 = objc_alloc(MEMORY[0x277CD2930]);
        v125[0] = *MEMORY[0x277CD2928];
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v106];
        v126[0] = v43;
        v125[1] = *MEMORY[0x277CD28D0];
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v105];
        v45 = *MEMORY[0x277CD28D8];
        v126[1] = v44;
        v126[2] = &unk_2880F62C8;
        v46 = *MEMORY[0x277CD28B0];
        v125[2] = v45;
        v125[3] = v46;
        v126[3] = &unk_2880F62E0;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:4];
        v48 = [v42 initWithProperties:v47];

        v110 = v48;
        *&buf = v110;
        *(&buf + 1) = 4;
        v118 = @"inverseRemapLut";
        v119 = 0;
        v104 = vg::shared::createMetalTexture(v23, &buf);

        v49 = vg::shared::getMetalLibrary(v23);
        v50 = v49;
        v101 = v49;
        if (v49)
        {
          v109 = [v49 newFunctionWithName:@"inverseRemapLutVertexShader"];
          v102 = [v50 newFunctionWithName:@"inverseRemapLutFragmentShader"];
          if (v109 && v102)
          {
            v100 = objc_opt_new();
            [v100 setVertexFunction:v109];
            [v100 setFragmentFunction:v102];
            [v100 setVertexDescriptor:v24];
            v51 = [v104 pixelFormat];
            v52 = [v100 colorAttachments];
            v53 = [v52 objectAtIndexedSubscript:0];
            [v53 setPixelFormat:v51];

            v113 = 0;
            v54 = [v23 newRenderPipelineStateWithDescriptor:v100 error:&v113];
            v97 = v113;
            v98 = v54;
            if (v54)
            {
              v99 = [MEMORY[0x277CD6F50] renderPassDescriptor];
              v55 = [v99 colorAttachments];
              v56 = [v55 objectAtIndexedSubscript:0];
              [v56 setTexture:v104];

              v57 = [v99 colorAttachments];
              v58 = [v57 objectAtIndexedSubscript:0];
              [v58 setLoadAction:2];

              v59 = [v99 colorAttachments];
              v60 = [v59 objectAtIndexedSubscript:0];
              [v60 setStoreAction:1];

              v61 = [v99 colorAttachments];
              v62 = [v61 objectAtIndexedSubscript:0];
              [v62 setClearColor:{0.0, 0.0, 0.0, 1.0}];

              v94 = [v23 newCommandQueue];
              v95 = [v94 commandBuffer];
              v96 = [v95 renderCommandEncoderWithDescriptor:v99];
              [v96 setRenderPipelineState:v98];
              __asm { FMOV            V2.2S, #1.0 }

              v112[0] = __PAIR64__(v105, v106);
              v112[1] = vdiv_f32(_D2, vcvt_f32_u32(__PAIR64__(v105, v106)));
              [v96 setVertexBytes:v112 length:16 atIndex:1];
              [v96 setVertexBuffer:v26 offset:0 atIndex:0];
              [v96 setVertexTexture:v41 atIndex:0];
              [v96 drawIndexedPrimitives:3 indexCount:(v116 - v115[1]) >> 2 indexType:1 indexBuffer:v40 indexBufferOffset:0 instanceCount:1];
              [v96 endEncoding];
              [v95 commit];
              [v95 waitUntilCompleted];
              v68 = objc_alloc(MEMORY[0x277CD2930]);
              v123[0] = *MEMORY[0x277CD2928];
              v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v106];
              v124[0] = v93;
              v123[1] = *MEMORY[0x277CD28D0];
              v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2 * v105];
              v70 = *MEMORY[0x277CD28D8];
              v124[1] = v69;
              v124[2] = &unk_2880F62F8;
              v71 = *MEMORY[0x277CD28B0];
              v123[2] = v70;
              v123[3] = v71;
              v124[3] = &unk_2880F6310;
              v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:4];
              v73 = [v68 initWithProperties:v72];

              vg::IOSurfaceData::IOSurfaceData(&buf, v110, 1);
              v74 = v105;
              vg::IOSurfaceData::IOSurfaceData(v111, v73, 0);
              if (v105)
              {
                v75 = 0;
                v76 = 0;
                v77 = v121;
                v78 = v122;
                v79 = v111[4];
                v80 = v111[5];
                v81 = v111[6];
                v82 = (v120 + 4);
                do
                {
                  if (v106)
                  {
                    v83 = v106;
                    v84 = v79;
                    v85 = v82;
                    do
                    {
                      *&v84[v75] = *(v85 - 1);
                      *&v84[v80 * v74] = *v85;
                      v85 = (v85 + v78);
                      v84 = &v81[v84];
                      --v83;
                    }

                    while (v83);
                  }

                  ++v76;
                  v82 = (v82 + v77);
                  ++v74;
                  v75 += v80;
                }

                while (v76 != v105);
              }

              vg::IOSurfaceData::~IOSurfaceData(v111);
              vg::IOSurfaceData::~IOSurfaceData(&buf);
            }

            else
            {
              v90 = __VGLogSharedInstance();
              v99 = v90;
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v97;
                _os_log_impl(&dword_270F06000, v90, OS_LOG_TYPE_ERROR, " Failed to create render pipeline state: %@ ", &buf, 0xCu);
              }

              v73 = 0;
            }
          }

          else
          {
            v89 = __VGLogSharedInstance();
            v100 = v89;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_270F06000, v89, OS_LOG_TYPE_ERROR, " Failed to create inverse remap lut shader ", &buf, 2u);
            }

            v73 = 0;
          }
        }

        else
        {
          v88 = __VGLogSharedInstance();
          v109 = v88;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v88, OS_LOG_TYPE_ERROR, " failed to load metal library. ", &buf, 2u);
          }

          v73 = 0;
        }
      }

      else
      {
        v87 = __VGLogSharedInstance();
        v110 = v87;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_270F06000, v87, OS_LOG_TYPE_ERROR, " failed to create input remap lut texture. ", &buf, 2u);
        }

        v73 = 0;
      }
    }

    else
    {
      v86 = __VGLogSharedInstance();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        v41 = v86;
        _os_log_impl(&dword_270F06000, v86, OS_LOG_TYPE_ERROR, " failed to create index buffer. ", &buf, 2u);
      }

      else
      {
        v41 = v86;
      }

      v73 = 0;
    }
  }

  else
  {
    v40 = __VGLogSharedInstance();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_ERROR, " failed to create vertex buffer. ", &buf, 2u);
    }

    v73 = 0;
  }

  if (v115[1])
  {
    *&v116 = v115[1];
    operator delete(v115[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v91 = *MEMORY[0x277D85DE8];

  return v73;
}

void sub_270F93360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, _Unwind_Exception *exception_object, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  vg::shared::detail::GridMesh::~GridMesh(&a35);

  _Unwind_Resume(a1);
}

void vg::shared::detail::GridMesh::~GridMesh(vg::shared::detail::GridMesh *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::vector<std::array<unsigned int,3ul>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t vg::common::dumpDebugObject(vg::common *this, objc_object *a2, NSString *a3, NSString *a4)
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v7 = this;
  v8 = a2;
  v9 = a3;
  v18 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [(objc_object *)v8 stringByAppendingString:@".plist"];
    v13 = [(NSString *)v9 stringByAppendingPathComponent:v12];

    v14 = [v10 writeToFile:v13 atomically:0];
    if ((v14 & 1) == 0)
    {
      v15 = VGLogSharedDebugDataUtilities();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        vg::common::dumpDebugObject();
      }

      goto LABEL_11;
    }

    if (v4)
    {
      v15 = VGLogSharedDebugDataUtilities();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_INFO, "Wrote %@", buf, 0xCu);
      }

LABEL_11:
    }
  }

  else
  {
    v13 = VGLogSharedDebugDataUtilities();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      vg::common::dumpDebugObject();
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

id VGLogSharedDebugDataUtilities(void)
{
  if (VGLogSharedDebugDataUtilities(void)::onceToken != -1)
  {
    VGLogSharedDebugDataUtilities();
  }

  v1 = VGLogSharedDebugDataUtilities(void)::handle;

  return v1;
}

uint64_t vg::common::dumpDebugObject(vg::common *this, objc_object *a2, NSString *a3)
{
  v5 = this;
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = vg::common::dumpDebugObject(v5, v8, &v6->isa, a3);

  return v9;
}

id vg::common::deserializedObjectFromObject(vg::common *this, objc_object *a2)
{
  v2 = this;
  v11 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v11];
  v4 = v11;
  if (v3)
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
    v6 = v10;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = VGLogSharedDebugDataUtilities();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        vg::common::deserializedObjectFromObject();
      }
    }
  }

  else
  {
    v6 = VGLogSharedDebugDataUtilities();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      vg::common::deserializedObjectFromObject();
    }

    v5 = 0;
  }

  return v5;
}

void ___ZL29VGLogSharedDebugDataUtilitiesv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "SharedDebugDataUtilities");
  v1 = VGLogSharedDebugDataUtilities(void)::handle;
  VGLogSharedDebugDataUtilities(void)::handle = v0;
}

void vg::common::dumpDebugObject()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to dump object file %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_270F06000, v1, OS_LOG_TYPE_ERROR, "Failed to serialize object %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void vg::common::deserializedObjectFromObject()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to unarchive object: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_270F06000, v0, v1, "Failed to archive object: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

double vg::shared::sRGBToXYZ(__n128 a1)
{
  for (i = 0; i != 3; ++i)
  {
    v11 = a1;
    v3 = *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
    if (v3 <= 0.04045)
    {
      v4 = v3 / 12.92;
    }

    else
    {
      v9 = a1;
      v4 = powf((v3 + 0.055) / 1.055, 2.4);
      a1 = v9;
    }

    v10 = a1;
    *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = v4;
    v5 = v10;
    v5.i32[3] = a1.n128_i32[3];
    a1 = v5;
  }

  v5.i32[3] = 0;
  v6 = vmaxnmq_f32(v5, 0);
  v6.i32[3] = 0;
  v7 = vminnmq_f32(v6, xmmword_270FA9280);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_270FA9560, v7.f32[0]), xmmword_270FA9570, *v7.f32, 1), xmmword_270FA9580, v7, 2).u64[0];
  return result;
}

double vg::shared::sRGBToLinearRGB(__n128 a1)
{
  for (i = 0; i != 3; ++i)
  {
    v10 = a1;
    v3 = *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
    if (v3 <= 0.04045)
    {
      v4 = v3 / 12.92;
    }

    else
    {
      v8 = a1;
      v4 = powf((v3 + 0.055) / 1.055, 2.4);
      a1 = v8;
    }

    v9 = a1;
    *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = v4;
    v5 = v9;
    v5.i32[3] = a1.n128_i32[3];
    a1 = v5;
  }

  v5.i32[3] = 0;
  v6 = vmaxnmq_f32(v5, 0);
  v6.i32[3] = 0;
  *&result = vminnmq_f32(v6, xmmword_270FA9280).u64[0];
  return result;
}

double vg::shared::XYZToSRGB(float32x4_t a1)
{
  v1 = 0;
  v2 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_270FA9590, a1.f32[0]), xmmword_270FA95A0, *a1.f32, 1), xmmword_270FA95B0, a1, 2);
  v2.i32[3] = 0;
  v3 = vmaxnmq_f32(v2, 0);
  v3.i32[3] = 0;
  v13 = vminnmq_f32(v3, xmmword_270FA9280);
  v4 = v13;
  do
  {
    v17 = v4;
    v5 = *(&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3)));
    if (v5 <= 0.0031308)
    {
      v7 = v5 * 12.92;
    }

    else
    {
      v16 = v13;
      v14 = v4;
      v6 = powf(*(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3))), 0.41667);
      v4 = v14;
      v7 = (v6 * 1.055) + -0.055;
    }

    v15 = v4;
    *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3))) = v7;
    v8 = v15;
    v8.i32[3] = v4.i32[3];
    ++v1;
    v4 = v8;
  }

  while (v1 != 3);
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  v9.i32[3] = 0;
  v10 = vminnmq_f32(v9, xmmword_270FA9280);
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v10, 0);
  v11.i32[3] = 0;
  *&result = vminnmq_f32(v11, xmmword_270FA9280).u64[0];
  return result;
}

double vg::shared::linearRGBToSRGB(__n128 a1)
{
  v1 = 0;
  v2 = a1;
  do
  {
    v13 = v2;
    v3 = *(&v13 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3)));
    if (v3 <= 0.0031308)
    {
      v5 = v3 * 12.92;
    }

    else
    {
      v12 = a1;
      v10 = v2;
      v4 = powf(*(&v12 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3))), 0.41667);
      v2 = v10;
      v5 = (v4 * 1.055) + -0.055;
    }

    v11 = v2;
    *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3))) = v5;
    v6 = v11;
    v6.i32[3] = v2.n128_i32[3];
    ++v1;
    v2 = v6;
  }

  while (v1 != 3);
  v6.i32[3] = 0;
  v7 = vmaxnmq_f32(v6, 0);
  v7.i32[3] = 0;
  *&result = vminnmq_f32(v7, xmmword_270FA9280).u64[0];
  return result;
}

double vg::shared::XYZToLinearRGB(float32x4_t a1)
{
  v1 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_270FA9590, a1.f32[0]), xmmword_270FA95A0, *a1.f32, 1), xmmword_270FA95B0, a1, 2);
  v1.i32[3] = 0;
  v2 = vmaxnmq_f32(v1, 0);
  v2.i32[3] = 0;
  *&result = vminnmq_f32(v2, xmmword_270FA9280).u64[0];
  return result;
}

float vg::shared::linearRGBToSRGB(vg::shared *this, float a2)
{
  if (a2 <= 0.0031308)
  {
    return a2 * 12.92;
  }

  else
  {
    return (powf(a2, 0.41667) * 1.055) + -0.055;
  }
}

double vg::shared::XYZToxyY(float32x2_t *a1, double a2)
{
  *&a2 = COERCE_FLOAT(*&a1[1]) + vaddv_f32(*a1);
  *&result = vdivq_f32(*a1->f32, vdupq_lane_s32(*&a2, 0)).u64[0];
  return result;
}

__n64 vg::shared::xyYToXYZ(float32x4_t *a1)
{
  result.n64_f32[0] = vmuls_lane_f32(COERCE_FLOAT(*a1), *a1, 2) / COERCE_FLOAT(HIDWORD(a1->i64[0]));
  result.n64_u32[1] = a1->i64[1];
  return result;
}

double vg::shared::changeChromaticity(float32x2_t *a1, float32x2_t *a2)
{
  v2.i32[1] = 1033096535;
  v3 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_270FA9560, COERCE_FLOAT(*a1->f32)), xmmword_270FA9570, *a1, 1), xmmword_270FA9580, *a1->f32, 2).u64[0];
  *v2.i32 = COERCE_FLOAT(*&a2[1]) + vaddv_f32(*a2);
  v4 = vdivq_f32(*a2->f32, vdupq_lane_s32(v2, 0)).u64[0];
  v5 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_270FA9590, vmuls_lane_f32(*&v4, v3, 1) / *(&v4 + 1)), xmmword_270FA95A0, v3, 1), xmmword_270FA95B0, vmuls_lane_f32((1.0 - *&v4) - *(&v4 + 1), v3, 1) / *(&v4 + 1));
  v5.i32[3] = 0;
  v6 = vmaxnmq_f32(v5, 0);
  v6.i32[3] = 0;
  *&result = vminnmq_f32(v6, xmmword_270FA9280).u64[0];
  return result;
}

id vg::shared::getPersonSegmentationMapFromVision(void *a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v3);
  v5 = CVPixelBufferFromIOSurface;
  if (CVPixelBufferFromIOSurface)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN2vg6shared34getPersonSegmentationMapFromVisionEP9IOSurfacePU15__autoreleasingP7NSError_block_invoke;
    v20[3] = &__block_descriptor_40_e5_v8__0l;
    v20[4] = CVPixelBufferFromIOSurface;
    v6 = MEMORY[0x2743B9AA0](v20);
    v7 = objc_alloc(MEMORY[0x277CE2D50]);
    v8 = [v7 initWithCVPixelBuffer:v5 options:MEMORY[0x277CBEC10]];
    if (v8)
    {
      v9 = objc_opt_new();
      [v9 setOutputPixelFormat:1278226534];
      [v9 setQualityLevel:1];
      v22[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v11 = [v8 performRequests:v10 error:a2];

      if (v11)
      {
        v12 = [v9 results];
        v13 = [v12 objectAtIndexedSubscript:0];
        v14 = [v13 pixelBuffer];

        if (v14)
        {
          v15 = CVPixelBufferGetIOSurface(v14);
          if (v15)
          {
            v16 = resizeSurface(v15, [(IOSurface *)v3 width], [(IOSurface *)v3 height]);
LABEL_19:

            goto LABEL_20;
          }

          v17 = __VGLogSharedInstance();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Person segmentation output buffer not iosurface backed ", buf, 2u);
          }
        }

        else
        {
          v15 = __VGLogSharedInstance();
          if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, &v15->super, OS_LOG_TYPE_ERROR, " Failed to get output pixel buffer from person segmentation results ", buf, 2u);
          }
        }

        v16 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v9 = __VGLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Vision request handler failed to instantiate ", buf, 2u);
      }
    }

    v16 = 0;
LABEL_20:

    (*(v6 + 16))(v6);
    goto LABEL_21;
  }

  v6 = __VGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Failed to create pixel buffer ", buf, 2u);
  }

  v16 = 0;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_270F9476C(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

id subkey(NSString *a1, objc_selector *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = [(NSString *)v3 stringByAppendingPathExtension:v4];

  return v5;
}

void sub_270F96E60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void vg::ObjIO::read(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v201 = *MEMORY[0x277D85DE8];
  v193 = 0uLL;
  v194 = 0;
  std::vector<std::vector<double>>::reserve(&v193, 0x3E8uLL);
  v191 = 0uLL;
  v192 = 0;
  std::vector<std::vector<double>>::reserve(&v191, 0x3E8uLL);
  v189 = 0uLL;
  v190 = 0;
  std::vector<std::vector<double>>::reserve(&v193, 0x3E8uLL);
  v187 = 0uLL;
  v188 = 0;
  std::vector<std::vector<unsigned int>>::reserve(&v187, 0x3E8uLL);
  v185 = 0uLL;
  v186 = 0;
  std::vector<std::vector<unsigned int>>::reserve(&v185, 0x3E8uLL);
  v183 = 0uLL;
  v184 = 0;
  std::vector<std::vector<unsigned int>>::reserve(&v183, 0x3E8uLL);
  v163 = a3;
  v181 = 0uLL;
  v182 = 0;
  std::vector<std::vector<double>>::reserve(&v181, 0x3E8uLL);
  memset(&v180, 0, sizeof(v180));
  v164 = -1;
  __val = 1;
  v177[0] = 0;
  v177[1] = 0;
  v178 = 0;
  v165 = -1;
  while (1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v6 = std::locale::use_facet(&v195, MEMORY[0x277D82680]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v195);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v177, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if (v178 >= 0)
    {
      v9 = v177;
    }

    else
    {
      v9 = v177[0];
    }

    if (sscanf(v9, "%3s", __s) == 1)
    {
      v10 = strlen(__s);
      v11 = v9 + v10;
      if (v10 == 1 && __s[0] == 118)
      {
        v12 = sscanf(v11, "%lf %lf %lf %lf %lf %lf\n", &v195, v196, &v197, v198, &v198[8], &v198[16]);
        v13 = v12;
        if (v165 == -1)
        {
          if (v12 != 3 && v12 != 6)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::to_string(&__p, v13);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Vertex positions should have either 3 or 6(with rgb f32 color) components. Invalid obj data. [ComponentCount = ", &__p, &__src);
            v152 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("].", &__src, &v169);
            MEMORY[0x2743B8FD0](exception, &v169, v152);
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v165 = v12;
        }

        else if (v12 != v165)
        {
          v141 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v173, __val);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Vertex on line ", &v173, &v174);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" should have ", &v174, &__p);
          std::to_string(&v172, v165);
          if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v142 = &v172;
          }

          else
          {
            v142 = v172.__r_.__value_.__r.__words[0];
          }

          if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v172.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v172.__r_.__value_.__l.__size_;
          }

          v144 = std::string::append(&__p, v142, size);
          v145 = *&v144->__r_.__value_.__l.__data_;
          __src.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
          *&__src.__r_.__value_.__l.__data_ = v145;
          v144->__r_.__value_.__l.__size_ = 0;
          v144->__r_.__value_.__r.__words[2] = 0;
          v144->__r_.__value_.__r.__words[0] = 0;
          v146 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" coordinates", &__src, &v169);
          MEMORY[0x2743B8FD0](v141, &v169, v146);
          __cxa_throw(v141, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        LODWORD(__src.__r_.__value_.__l.__data_) = 0;
        std::vector<float>::vector[abi:ne200100](&v169, 3uLL);
        v99 = 0;
        v100 = v169.__r_.__value_.__r.__words[0];
        do
        {
          v101 = *(&v195.__locale_ + v99);
          *(v100 + 4 * v99++) = v101;
        }

        while (v99 != 3);
        v102 = *(&v193 + 1);
        if (*(&v193 + 1) >= v194)
        {
          v103 = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float>&>(&v193, &v169);
        }

        else
        {
          **(&v193 + 1) = 0;
          *(v102 + 8) = 0;
          *(v102 + 16) = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v102, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_, (v169.__r_.__value_.__l.__size_ - v169.__r_.__value_.__r.__words[0]) >> 2);
          v103 = v102 + 24;
        }

        *(&v193 + 1) = v103;
        if (v165 == 6)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
          std::vector<float>::vector[abi:ne200100](&__src, 3uLL);
          v104 = 0;
          v105 = __src.__r_.__value_.__r.__words[0];
          do
          {
            v106 = *&v198[8 * v104];
            *(v105 + 4 * v104++) = v106;
          }

          while (v104 != 3);
          v107 = *(&v181 + 1);
          if (*(&v181 + 1) >= v182)
          {
            v108 = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float>&>(&v181, &__src);
          }

          else
          {
            **(&v181 + 1) = 0;
            *(v107 + 8) = 0;
            *(v107 + 16) = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v107, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_, (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2);
            v108 = v107 + 24;
          }

          *(&v181 + 1) = v108;
          if (__src.__r_.__value_.__r.__words[0])
          {
            __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
            operator delete(__src.__r_.__value_.__l.__data_);
          }
        }

LABEL_175:
        v121 = v169.__r_.__value_.__r.__words[0];
        if (!v169.__r_.__value_.__r.__words[0])
        {
          goto LABEL_178;
        }

        v169.__r_.__value_.__l.__size_ = v169.__r_.__value_.__r.__words[0];
        goto LABEL_177;
      }

      if (v10 == 2)
      {
        if (*__s == 28278)
        {
          if (sscanf(v11, "%lf %lf %lf\n", &v195, v196, &v197) != 3)
          {
            v153 = __cxa_allocate_exception(0x10uLL);
            std::to_string(&__p, __val);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Normal on line ", &__p, &__src);
            v154 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" should have 3 coordinates", &__src, &v169);
            MEMORY[0x2743B8FD0](v153, &v169, v154);
            __cxa_throw(v153, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          std::vector<float>::vector[abi:ne200100](&v169, 3uLL);
          v109 = 0;
          v110 = v169.__r_.__value_.__r.__words[0];
          do
          {
            v111 = *(&v195.__locale_ + v109);
            *(v110 + 4 * v109++) = v111;
          }

          while (v109 != 3);
          v112 = *(&v189 + 1);
          if (*(&v189 + 1) >= v190)
          {
            v113 = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float>&>(&v189, &v169);
          }

          else
          {
            **(&v189 + 1) = 0;
            *(v112 + 8) = 0;
            *(v112 + 16) = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v112, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_, (v169.__r_.__value_.__l.__size_ - v169.__r_.__value_.__r.__words[0]) >> 2);
            v113 = v112 + 24;
          }

          *(&v189 + 1) = v113;
        }

        else
        {
          if (*__s != 29814)
          {
            goto LABEL_178;
          }

          v14 = sscanf(v11, "%lf %lf %lf\n", &v195, v196, &v197);
          v15 = v14;
          if (v164 == -1)
          {
            if ((v14 - 4) <= 0xFFFFFFFD)
            {
              v161 = __cxa_allocate_exception(0x10uLL);
              std::to_string(&__p, v15);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Texture coordinates should have either 2 or 3 components. Invalid obj data. [ComponentCount = ", &__p, &__src);
              v162 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("].", &__src, &v169);
              MEMORY[0x2743B8FD0](v161, &v169, v162);
              __cxa_throw(v161, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v164 = v14;
          }

          else if (v14 != v164)
          {
            v155 = __cxa_allocate_exception(0x10uLL);
            std::to_string(&v173, __val);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Texture Coordinate on line ", &v173, &v174);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" should have ", &v174, &__p);
            std::to_string(&v172, v164);
            if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v156 = &v172;
            }

            else
            {
              v156 = v172.__r_.__value_.__r.__words[0];
            }

            if ((v172.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v157 = HIBYTE(v172.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v157 = v172.__r_.__value_.__l.__size_;
            }

            v158 = std::string::append(&__p, v156, v157);
            v159 = *&v158->__r_.__value_.__l.__data_;
            __src.__r_.__value_.__r.__words[2] = v158->__r_.__value_.__r.__words[2];
            *&__src.__r_.__value_.__l.__data_ = v159;
            v158->__r_.__value_.__l.__size_ = 0;
            v158->__r_.__value_.__r.__words[2] = 0;
            v158->__r_.__value_.__r.__words[0] = 0;
            v160 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" coordinates", &__src, &v169);
            MEMORY[0x2743B8FD0](v155, &v169, v160);
            __cxa_throw(v155, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          std::vector<float>::vector[abi:ne200100](&v169, v14);
          if (v15 >= 1)
          {
            v114 = v169.__r_.__value_.__r.__words[0];
            v115 = v15;
            v116 = &v195;
            do
            {
              v117 = *&v116->__locale_;
              ++v116;
              v118 = v117;
              *v114++ = v118;
              --v115;
            }

            while (v115);
          }

          v119 = *(&v191 + 1);
          if (*(&v191 + 1) >= v192)
          {
            v120 = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float>&>(&v191, &v169);
          }

          else
          {
            **(&v191 + 1) = 0;
            *(v119 + 8) = 0;
            *(v119 + 16) = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v119, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_, (v169.__r_.__value_.__l.__size_ - v169.__r_.__value_.__r.__words[0]) >> 2);
            v120 = v119 + 24;
          }

          *(&v191 + 1) = v120;
        }

        goto LABEL_175;
      }

      if (v10 == 1 && __s[0] == 102)
      {
        memset(&__src, 0, sizeof(__src));
        memset(&__p, 0, sizeof(__p));
        memset(&v174, 0, sizeof(v174));
        for (i = 0; sscanf(v11, "%s%n", &v195, &i) == 1; v11 += v16)
        {
          v16 = i;
          v168.__r_.__value_.__r.__words[0] = 0;
          v167 = 0;
          v166 = 0;
          if (sscanf(&v195, "%ld/%ld/%ld", &v168, &v167, &v166) == 3)
          {
            if ((v168.__r_.__value_.__r.__words[0] & 0x8000000000000000) != 0)
            {
              v17 = 0xAAAAAAAAAAAAAAABLL * ((*(&v193 + 1) - v193) >> 3);
            }

            else
            {
              LODWORD(v17) = -1;
            }

            v20 = v17 + LODWORD(v168.__r_.__value_.__l.__data_);
            v21 = __src.__r_.__value_.__l.__size_;
            if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
            {
              v23 = __src.__r_.__value_.__r.__words[0];
              v24 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
              v25 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2;
              v26 = v25 + 1;
              if ((v25 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v27 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
              if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 1 > v26)
              {
                v26 = v27 >> 1;
              }

              v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
              v29 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v29 = v26;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v29);
              }

              *(4 * v25) = v20;
              v22 = 4 * v25 + 4;
              memcpy(0, v23, v24);
              v40 = __src.__r_.__value_.__r.__words[0];
              __src.__r_.__value_.__r.__words[0] = 0;
              *&__src.__r_.__value_.__r.__words[1] = v22;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *__src.__r_.__value_.__l.__size_ = v20;
              v22 = v21 + 4;
            }

            __src.__r_.__value_.__l.__size_ = v22;
            if ((v167 & 0x8000000000000000) != 0)
            {
              v41 = 0xAAAAAAAAAAAAAAABLL * ((*(&v191 + 1) - v191) >> 3);
            }

            else
            {
              LODWORD(v41) = -1;
            }

            v42 = v41 + v167;
            v43 = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
            {
              v45 = __p.__r_.__value_.__r.__words[0];
              v46 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
              v47 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
              v48 = v47 + 1;
              if ((v47 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v49 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
              if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 1 > v48)
              {
                v48 = v49 >> 1;
              }

              v28 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
              v50 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v50 = v48;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, v50);
              }

              *(4 * v47) = v42;
              v44 = 4 * v47 + 4;
              memcpy(0, v45, v46);
              v51 = __p.__r_.__value_.__r.__words[0];
              __p.__r_.__value_.__r.__words[0] = 0;
              *&__p.__r_.__value_.__r.__words[1] = v44;
              if (v51)
              {
                operator delete(v51);
              }
            }

            else
            {
              *__p.__r_.__value_.__l.__size_ = v42;
              v44 = v43 + 4;
            }

            __p.__r_.__value_.__l.__size_ = v44;
            if ((v166 & 0x8000000000000000) != 0)
            {
              v52 = 0xAAAAAAAAAAAAAAABLL * ((*(&v189 + 1) - v189) >> 3);
            }

            else
            {
              LODWORD(v52) = -1;
            }

            v53 = v52 + v166;
            v54 = v174.__r_.__value_.__l.__size_;
            if (v174.__r_.__value_.__l.__size_ >= v174.__r_.__value_.__r.__words[2])
            {
              v55 = v174.__r_.__value_.__r.__words[0];
              v56 = v174.__r_.__value_.__l.__size_ - v174.__r_.__value_.__r.__words[0];
              v57 = (v174.__r_.__value_.__l.__size_ - v174.__r_.__value_.__r.__words[0]) >> 2;
              v58 = v57 + 1;
              if ((v57 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v59 = v174.__r_.__value_.__r.__words[2] - v174.__r_.__value_.__r.__words[0];
              if ((v174.__r_.__value_.__r.__words[2] - v174.__r_.__value_.__r.__words[0]) >> 1 > v58)
              {
                v58 = v59 >> 1;
              }

              v28 = v59 >= 0x7FFFFFFFFFFFFFFCLL;
              v60 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v60 = v58;
              }

              if (v60)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v174, v60);
              }

LABEL_131:
              v96 = 4 * v60;
              *(4 * v57) = v53;
              v93 = 4 * v57 + 4;
              memcpy(0, v55, v56);
              v97 = v174.__r_.__value_.__r.__words[0];
              v174.__r_.__value_.__r.__words[0] = 0;
              v174.__r_.__value_.__l.__size_ = v93;
              v174.__r_.__value_.__r.__words[2] = v96;
              if (v97)
              {
                operator delete(v97);
              }

              goto LABEL_133;
            }
          }

          else
          {
            if (sscanf(&v195, "%ld/%ld", &v168, &v167) == 2)
            {
              if ((v168.__r_.__value_.__r.__words[0] & 0x8000000000000000) != 0)
              {
                v18 = 0xAAAAAAAAAAAAAAABLL * ((*(&v193 + 1) - v193) >> 3);
              }

              else
              {
                LODWORD(v18) = -1;
              }

              v31 = v18 + LODWORD(v168.__r_.__value_.__l.__data_);
              v32 = __src.__r_.__value_.__l.__size_;
              if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
              {
                v34 = __src.__r_.__value_.__r.__words[0];
                v35 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
                v36 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2;
                v37 = v36 + 1;
                if ((v36 + 1) >> 62)
                {
                  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                }

                v38 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
                if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 1 > v37)
                {
                  v37 = v38 >> 1;
                }

                v28 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
                v39 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v39 = v37;
                }

                if (v39)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v39);
                }

                *(4 * v36) = v31;
                v33 = 4 * v36 + 4;
                memcpy(0, v34, v35);
                v79 = __src.__r_.__value_.__r.__words[0];
                __src.__r_.__value_.__r.__words[0] = 0;
                *&__src.__r_.__value_.__r.__words[1] = v33;
                if (v79)
                {
                  operator delete(v79);
                }
              }

              else
              {
                *__src.__r_.__value_.__l.__size_ = v31;
                v33 = v32 + 4;
              }

              __src.__r_.__value_.__l.__size_ = v33;
              if ((v167 & 0x8000000000000000) != 0)
              {
                v80 = 0xAAAAAAAAAAAAAAABLL * ((*(&v191 + 1) - v191) >> 3);
              }

              else
              {
                LODWORD(v80) = -1;
              }

              v81 = v80 + v167;
              v82 = __p.__r_.__value_.__l.__size_;
              if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
              {
                v84 = __p.__r_.__value_.__r.__words[0];
                v85 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
                v86 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
                v87 = v86 + 1;
                if ((v86 + 1) >> 62)
                {
                  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                }

                v88 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
                if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 1 > v87)
                {
                  v87 = v88 >> 1;
                }

                v28 = v88 >= 0x7FFFFFFFFFFFFFFCLL;
                v89 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v89 = v87;
                }

                if (v89)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__p, v89);
                }

                *(4 * v86) = v81;
                v83 = 4 * v86 + 4;
                memcpy(0, v84, v85);
                v90 = __p.__r_.__value_.__r.__words[0];
                __p.__r_.__value_.__r.__words[0] = 0;
                *&__p.__r_.__value_.__r.__words[1] = v83;
                if (v90)
                {
                  operator delete(v90);
                }
              }

              else
              {
                *__p.__r_.__value_.__l.__size_ = v81;
                v83 = v82 + 4;
              }

              __p.__r_.__value_.__l.__size_ = v83;
              continue;
            }

            if (sscanf(&v195, "%ld//%ld", &v168, &v166) != 2)
            {
              if (sscanf(&v195, "%ld", &v168) != 1)
              {
                v147 = __cxa_allocate_exception(0x10uLL);
                std::to_string(&v172, __val);
                std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Face on line ", &v172, &v173);
                v148 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has an invalid element format.", &v173, &v169);
                MEMORY[0x2743B8FD0](v147, &v169, v148);
                __cxa_throw(v147, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              if ((v168.__r_.__value_.__r.__words[0] & 0x8000000000000000) != 0)
              {
                v30 = 0xAAAAAAAAAAAAAAABLL * ((*(&v193 + 1) - v193) >> 3);
              }

              else
              {
                LODWORD(v30) = -1;
              }

              v70 = v30 + LODWORD(v168.__r_.__value_.__l.__data_);
              v71 = __src.__r_.__value_.__l.__size_;
              if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
              {
                v73 = __src.__r_.__value_.__r.__words[0];
                v74 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
                v75 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2;
                v76 = v75 + 1;
                if ((v75 + 1) >> 62)
                {
                  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                }

                v77 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
                if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 1 > v76)
                {
                  v76 = v77 >> 1;
                }

                v28 = v77 >= 0x7FFFFFFFFFFFFFFCLL;
                v78 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v78 = v76;
                }

                if (v78)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v78);
                }

                *(4 * v75) = v70;
                v72 = 4 * v75 + 4;
                memcpy(0, v73, v74);
                v98 = __src.__r_.__value_.__r.__words[0];
                __src.__r_.__value_.__r.__words[0] = 0;
                *&__src.__r_.__value_.__r.__words[1] = v72;
                if (v98)
                {
                  operator delete(v98);
                }
              }

              else
              {
                *__src.__r_.__value_.__l.__size_ = v70;
                v72 = v71 + 4;
              }

              __src.__r_.__value_.__l.__size_ = v72;
              continue;
            }

            if ((v168.__r_.__value_.__r.__words[0] & 0x8000000000000000) != 0)
            {
              v19 = 0xAAAAAAAAAAAAAAABLL * ((*(&v193 + 1) - v193) >> 3);
            }

            else
            {
              LODWORD(v19) = -1;
            }

            v61 = v19 + LODWORD(v168.__r_.__value_.__l.__data_);
            v62 = __src.__r_.__value_.__l.__size_;
            if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
            {
              v64 = __src.__r_.__value_.__r.__words[0];
              v65 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
              v66 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 2;
              v67 = v66 + 1;
              if ((v66 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v68 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
              if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 1 > v67)
              {
                v67 = v68 >> 1;
              }

              v28 = v68 >= 0x7FFFFFFFFFFFFFFCLL;
              v69 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v69 = v67;
              }

              if (v69)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v69);
              }

              *(4 * v66) = v61;
              v63 = 4 * v66 + 4;
              memcpy(0, v64, v65);
              v91 = __src.__r_.__value_.__r.__words[0];
              __src.__r_.__value_.__r.__words[0] = 0;
              *&__src.__r_.__value_.__r.__words[1] = v63;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              *__src.__r_.__value_.__l.__size_ = v61;
              v63 = v62 + 4;
            }

            __src.__r_.__value_.__l.__size_ = v63;
            if ((v166 & 0x8000000000000000) != 0)
            {
              v92 = 0xAAAAAAAAAAAAAAABLL * ((*(&v189 + 1) - v189) >> 3);
            }

            else
            {
              LODWORD(v92) = -1;
            }

            v53 = v92 + v166;
            v54 = v174.__r_.__value_.__l.__size_;
            if (v174.__r_.__value_.__l.__size_ >= v174.__r_.__value_.__r.__words[2])
            {
              v55 = v174.__r_.__value_.__r.__words[0];
              v56 = v174.__r_.__value_.__l.__size_ - v174.__r_.__value_.__r.__words[0];
              v57 = (v174.__r_.__value_.__l.__size_ - v174.__r_.__value_.__r.__words[0]) >> 2;
              v94 = v57 + 1;
              if ((v57 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v95 = v174.__r_.__value_.__r.__words[2] - v174.__r_.__value_.__r.__words[0];
              if ((v174.__r_.__value_.__r.__words[2] - v174.__r_.__value_.__r.__words[0]) >> 1 > v94)
              {
                v94 = v95 >> 1;
              }

              v28 = v95 >= 0x7FFFFFFFFFFFFFFCLL;
              v60 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v28)
              {
                v60 = v94;
              }

              if (v60)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v174, v60);
              }

              goto LABEL_131;
            }
          }

          *v54 = v53;
          v93 = (v54 + 1);
LABEL_133:
          v174.__r_.__value_.__l.__size_ = v93;
        }

        v169.__r_.__value_.__r.__words[0] = &v187;
        v169.__r_.__value_.__l.__size_ = &v185;
        v169.__r_.__value_.__r.__words[2] = &v183;
        p_val = &__val;
        if (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0] >= 0x11)
        {
          v149 = __cxa_allocate_exception(0x10uLL);
          std::to_string(&v168, __val);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Face on line ", &v168, &v172);
          v150 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" is not a triangle or quad.", &v172, &v173);
          MEMORY[0x2743B8FD0](v149, &v173, v150);
          __cxa_throw(v149, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0] == 16)
        {
          memset(&v173, 0, sizeof(v173));
          memset(&v172, 0, sizeof(v172));
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v173, 1uLL);
        }

        vg::ObjIO::read(std::istream &,BOOL)::$_3::operator()(&v169, &__src, &__p, &v174);
        if (v174.__r_.__value_.__r.__words[0])
        {
          v174.__r_.__value_.__l.__size_ = v174.__r_.__value_.__r.__words[0];
          operator delete(v174.__r_.__value_.__l.__data_);
        }

        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v121 = __src.__r_.__value_.__r.__words[0];
        if (__src.__r_.__value_.__r.__words[0])
        {
          __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
LABEL_177:
          operator delete(v121);
        }
      }
    }

LABEL_178:
    ++__val;
  }

  v122 = v191;
  if ((a2 & 1) == 0)
  {
    v123 = *(&v191 + 1) - v191;
    if (*(&v191 + 1) != v191 && v123 > *(&v193 + 1) - v193)
    {
      v124 = (*(v193 + 8) - *v193) >> 2;
      LODWORD(v169.__r_.__value_.__l.__data_) = 0;
      std::vector<float>::vector[abi:ne200100](&v195, v124);
      std::vector<std::vector<float>>::vector[abi:ne200100](__s, 0xAAAAAAAAAAAAAAABLL * (v123 >> 3));
      if (v195.__locale_)
      {
        *v196 = v195;
        operator delete(v195.__locale_);
      }

      *v196 = 0;
      v195.__locale_ = 0;
      v197 = 0;
      if (*(&v181 + 1) != v181)
      {
        v125 = *(&v191 + 1);
        v126 = v191;
        v127 = (*(v181 + 8) - *v181) >> 2;
        LODWORD(__src.__r_.__value_.__l.__data_) = 0;
        std::vector<float>::vector[abi:ne200100](&v169, v127);
        std::vector<std::vector<float>>::resize(&v195, 0xAAAAAAAAAAAAAAABLL * ((v125 - v126) >> 3), &v169);
        if (v169.__r_.__value_.__r.__words[0])
        {
          v169.__r_.__value_.__l.__size_ = v169.__r_.__value_.__r.__words[0];
          operator delete(v169.__r_.__value_.__l.__data_);
        }
      }

      std::vector<unsigned int>::resize(&v180, 0xAAAAAAAAAAAAAAABLL * ((*(&v191 + 1) - v191) >> 3));
      v128 = *(&v187 + 1);
      v129 = v187;
      if (*(&v187 + 1) != v187)
      {
        v130 = 0;
        do
        {
          v131 = *(v129 + 24 * v130);
          if (*(v129 + 24 * v130 + 8) != v131)
          {
            v132 = 0;
            v133 = v185;
            v134 = *(v185 + 24 * v130);
            do
            {
              v135 = (v193 + 24 * *(v131 + 4 * v132));
              v136 = (*__s + 24 * *(v134 + 4 * v132));
              if (v136 != v135)
              {
                std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v136, *v135, v135[1], (v135[1] - *v135) >> 2);
                v129 = v187;
                v133 = v185;
              }

              if (*v196 != v195.__locale_)
              {
                v137 = (v181 + 24 * *(*(v129 + 24 * v130) + 4 * v132));
                v138 = (v195.__locale_ + 24 * *(*(v133 + 24 * v130) + 4 * v132));
                if (v138 != v137)
                {
                  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v138, *v137, v137[1], (v137[1] - *v137) >> 2);
                  v129 = v187;
                  v133 = v185;
                }
              }

              v139 = (v129 + 24 * v130);
              v131 = *v139;
              v134 = *(v133 + 24 * v130);
              v180.__begin_[*(v134 + 4 * v132)] = *(*v139 + 4 * v132);
              ++v132;
            }

            while (v132 < (v139[1] - v131) >> 2);
            v128 = *(&v187 + 1);
          }

          ++v130;
        }

        while (v130 < 0xAAAAAAAAAAAAAAABLL * ((v128 - v129) >> 3));
      }

      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v193, *__s, *v200, 0xAAAAAAAAAAAAAAABLL * ((*v200 - *__s) >> 3));
      if (*v196 != v195.__locale_)
      {
        std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v181, v195.__locale_, *v196, 0xAAAAAAAAAAAAAAABLL * ((*v196 - v195.__locale_) >> 3));
      }

      std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(&v187, v185, *(&v185 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v185 + 1) - v185) >> 3));
      v169.__r_.__value_.__r.__words[0] = &v195;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v169);
      v195.__locale_ = __s;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v195);
      v122 = v191;
    }
  }

  *v163 = v193;
  *(v163 + 16) = v194;
  v194 = 0;
  v193 = 0uLL;
  *(v163 + 24) = v122;
  *(v163 + 40) = v192;
  v192 = 0;
  v191 = 0uLL;
  *(v163 + 48) = v189;
  *(v163 + 64) = v190;
  v189 = 0uLL;
  v190 = 0;
  *(v163 + 72) = v187;
  *(v163 + 88) = v188;
  v187 = 0uLL;
  v188 = 0;
  *(v163 + 96) = v185;
  *(v163 + 112) = v186;
  v185 = 0uLL;
  v186 = 0;
  *(v163 + 120) = v183;
  *(v163 + 136) = v184;
  v183 = 0uLL;
  v184 = 0;
  *(v163 + 144) = v181;
  *(v163 + 160) = v182;
  v181 = 0uLL;
  v182 = 0;
  *(v163 + 168) = v180;
  memset(&v180, 0, sizeof(v180));
  if (SHIBYTE(v178) < 0)
  {
    operator delete(v177[0]);
    if (v180.__begin_)
    {
      v180.__end_ = v180.__begin_;
      operator delete(v180.__begin_);
    }
  }

  *__s = &v181;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  *__s = &v183;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  *__s = &v185;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  *__s = &v187;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  *__s = &v189;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  *__s = &v191;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  *__s = &v193;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__s);
  v140 = *MEMORY[0x277D85DE8];
}

void sub_270F99250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a53 < 0)
  {
    operator delete(a48);
    if ((v78 & 1) == 0)
    {
LABEL_16:
      if (a73 < 0)
      {
        operator delete(a72);
      }

      if (a74)
      {
        operator delete(a74);
      }

      STACK[0x388] = &a75;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      STACK[0x388] = &a76;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      STACK[0x388] = &a77;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      STACK[0x388] = &STACK[0x210];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      STACK[0x388] = &STACK[0x230];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      STACK[0x388] = &STACK[0x250];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      STACK[0x388] = &STACK[0x270];
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x388]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v78)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v77);
  goto LABEL_16;
}

void *std::vector<std::vector<unsigned int>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t vg::ObjIO::read(std::istream &,BOOL)::$_3::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2[1] - *a2;
  if (!v5 || ((v8 = a4[1], v9 = v8 - *a4, v8 != *a4) || a3[1] != *a3) && (v9 != v5 || a3[1] != *a3) && (v8 != *a4 || a3[1] - *a3 != v5) && (v9 != v5 || a3[1] - *a3 != v5))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v21, *a1[3]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Face on line ", &v21, &v22);
    v20 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has an invalid format.", &v22, &v23);
    MEMORY[0x2743B8FD0](exception, &v23, v20);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *a1;
  v12 = *(*a1 + 8);
  v11 = *(*a1 + 16);
  v13 = *a1;
  if (v12 >= v11)
  {
    result = std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(v13, a2);
  }

  else
  {
    std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(v13, a2);
    result = v12 + 24;
  }

  *(v10 + 8) = result;
  if (a3[1] != *a3)
  {
    v15 = a1[1];
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 16))
    {
      result = std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(v15, a3);
    }

    else
    {
      std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(v15, a3);
      result = v16 + 24;
    }

    *(v15 + 8) = result;
  }

  if (a4[1] != *a4)
  {
    v17 = a1[2];
    v18 = *(v17 + 8);
    if (v18 >= *(v17 + 16))
    {
      result = std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(v17, a4);
    }

    else
    {
      std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(v17, a4);
      result = v18 + 24;
    }

    *(v17 + 8) = result;
  }

  return result;
}

void sub_270F99A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void std::vector<std::vector<float>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<float>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

uint64_t vg::ObjIO::read@<X0>(vg::ObjIO *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v12);
  if (!v13[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, this);
    v9 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not open file. ", &v10, &v11);
    MEMORY[0x2743B8FD0](exception, &v11, v9);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  vg::ObjIO::read(v12, v3, a3);
  v12[0] = *MEMORY[0x277D82808];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2743B90B0](v13);
  std::istream::~istream();
  result = MEMORY[0x2743B92E0](v14);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_270F99D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x2743B90A0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_270F99F60(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2743B92E0](v1);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743B90B0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2743B92E0](a1 + 53);
  return a1;
}

uint64_t *vg::ObjIO::write(uint64_t *result, uint64_t *a2)
{
  if (result[1] != *result)
  {
    v3 = result;
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "# v: ", 5);
    v5 = MEMORY[0x2743B9140](v4, 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3));
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " vt: ", 5);
    v7 = MEMORY[0x2743B9140](v6, 0xAAAAAAAAAAAAAAABLL * ((v3[4] - v3[3]) >> 3));
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " vn: ", 5);
    v9 = MEMORY[0x2743B9140](v8, 0xAAAAAAAAAAAAAAABLL * ((v3[7] - v3[6]) >> 3));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " f: ", 4);
    v11 = MEMORY[0x2743B9140](v10, 0xAAAAAAAAAAAAAAABLL * ((v3[10] - v3[9]) >> 3));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ft: ", 5);
    v13 = MEMORY[0x2743B9140](v12, 0xAAAAAAAAAAAAAAABLL * ((v3[13] - v3[12]) >> 3));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " fn: ", 5);
    v15 = MEMORY[0x2743B9140](v14, 0xAAAAAAAAAAAAAAABLL * ((v3[16] - v3[15]) >> 3));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " vc: ", 5);
    result = MEMORY[0x2743B9140](v16, 0xAAAAAAAAAAAAAAABLL * ((v3[19] - v3[18]) >> 3));
    v17 = *a2;
    *(a2 + *(*a2 - 24) + 8) = *(a2 + *(*a2 - 24) + 8) & 0xFFFFFEFB | 4;
    *(a2 + *(v17 - 24) + 16) = 6;
    v18 = *v3;
    if (v3[1] != *v3)
    {
      v19 = 0;
      v20 = 0;
      v22 = v3[18];
      v21 = v3[19];
      do
      {
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "v ", 2);
        v24 = **(v18 + v19);
        v25 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " ", 1);
        v26 = *(*(v18 + v19) + 4);
        v27 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " ", 1);
        v28 = *(*(v18 + v19) + 8);
        result = std::ostream::operator<<();
        if (v21 != v22)
        {
          v29 = v3[18];
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
          v30 = **(v29 + v19);
          v31 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
          v32 = *(*(v29 + v19) + 4);
          v33 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ", 1);
          v34 = *(*(v29 + v19) + 8);
          result = std::ostream::operator<<();
        }

        ++v20;
        v18 = *v3;
        v19 += 24;
      }

      while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3));
    }

    v35 = v3[3];
    if (v3[4] != v35)
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "vt ", 3);
        v39 = **(v35 + v36);
        v40 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " ", 1);
        v41 = *(*(v35 + v36) + 4);
        result = std::ostream::operator<<();
        ++v37;
        v35 = v3[3];
        v36 += 24;
      }

      while (v37 < 0xAAAAAAAAAAAAAAABLL * ((v3[4] - v35) >> 3));
    }

    v42 = v3[6];
    if (v3[7] != v42)
    {
      v43 = 0;
      v44 = 0;
      do
      {
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "vn ", 3);
        v46 = **(v42 + v43);
        v47 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " ", 1);
        v48 = *(*(v42 + v43) + 4);
        v49 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " ", 1);
        v50 = *(*(v42 + v43) + 8);
        result = std::ostream::operator<<();
        ++v44;
        v42 = v3[6];
        v43 += 24;
      }

      while (v44 < 0xAAAAAAAAAAAAAAABLL * ((v3[7] - v42) >> 3));
    }

    v52 = v3[15];
    v51 = v3[16];
    v54 = v3[9];
    v53 = v3[10];
    if (v3[13] == v3[12])
    {
      if (v51 == v52)
      {
        if (v53 != v54)
        {
          v107 = 0;
          v108 = 0;
          do
          {
            v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
            v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "f ", 2);
            v111 = MEMORY[0x2743B9130](v110, (**(v54 + v107) + 1));
            v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, " ", 1);
            v113 = MEMORY[0x2743B9130](v112, (*(*(v54 + v107) + 4) + 1));
            v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, " ", 1);
            result = MEMORY[0x2743B9130](v114, (*(*(v54 + v107) + 8) + 1));
            ++v108;
            v54 = v3[9];
            v107 += 24;
          }

          while (v108 < 0xAAAAAAAAAAAAAAABLL * ((v3[10] - v54) >> 3));
        }
      }

      else if (v53 != v54)
      {
        v77 = 0;
        v78 = 0;
        do
        {
          v79 = v3[15];
          v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
          v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "f ", 2);
          v82 = MEMORY[0x2743B9130](v81, (**(v54 + v77) + 1));
          v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "//", 2);
          v84 = MEMORY[0x2743B9130](v83, (**(v79 + v77) + 1));
          v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, " ", 1);
          v86 = MEMORY[0x2743B9130](v85, (*(*(v54 + v77) + 4) + 1));
          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "//", 2);
          v88 = MEMORY[0x2743B9130](v87, (*(*(v79 + v77) + 4) + 1));
          v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, " ", 1);
          v90 = MEMORY[0x2743B9130](v89, (*(*(v54 + v77) + 8) + 1));
          v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "//", 2);
          result = MEMORY[0x2743B9130](v91, (*(*(v79 + v77) + 8) + 1));
          ++v78;
          v54 = v3[9];
          v77 += 24;
        }

        while (v78 < 0xAAAAAAAAAAAAAAABLL * ((v3[10] - v54) >> 3));
      }
    }

    else if (v51 == v52)
    {
      if (v53 != v54)
      {
        v92 = 0;
        v93 = 0;
        do
        {
          v94 = v3[12];
          v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
          v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "f ", 2);
          v97 = MEMORY[0x2743B9130](v96, (**(v54 + v92) + 1));
          v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "/", 1);
          v99 = MEMORY[0x2743B9130](v98, (**(v94 + v92) + 1));
          v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, " ", 1);
          v101 = MEMORY[0x2743B9130](v100, (*(*(v54 + v92) + 4) + 1));
          v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "/", 1);
          v103 = MEMORY[0x2743B9130](v102, (*(*(v94 + v92) + 4) + 1));
          v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, " ", 1);
          v105 = MEMORY[0x2743B9130](v104, (*(*(v54 + v92) + 8) + 1));
          v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "/", 1);
          result = MEMORY[0x2743B9130](v106, (*(*(v94 + v92) + 8) + 1));
          ++v93;
          v54 = v3[9];
          v92 += 24;
        }

        while (v93 < 0xAAAAAAAAAAAAAAABLL * ((v3[10] - v54) >> 3));
      }
    }

    else if (v53 != v54)
    {
      v55 = 0;
      v56 = 0;
      do
      {
        v57 = v3[12];
        v58 = v3[15];
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "f ", 2);
        v61 = MEMORY[0x2743B9130](v60, (**(v54 + v55) + 1));
        v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "/", 1);
        v63 = MEMORY[0x2743B9130](v62, (**(v57 + v55) + 1));
        v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "/", 1);
        v65 = MEMORY[0x2743B9130](v64, (**(v58 + v55) + 1));
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " ", 1);
        v67 = MEMORY[0x2743B9130](v66, (*(*(v54 + v55) + 4) + 1));
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "/", 1);
        v69 = MEMORY[0x2743B9130](v68, (*(*(v57 + v55) + 4) + 1));
        v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "/", 1);
        v71 = MEMORY[0x2743B9130](v70, (*(*(v58 + v55) + 4) + 1));
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " ", 1);
        v73 = MEMORY[0x2743B9130](v72, (*(*(v54 + v55) + 8) + 1));
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "/", 1);
        v75 = MEMORY[0x2743B9130](v74, (*(*(v57 + v55) + 8) + 1));
        v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "/", 1);
        result = MEMORY[0x2743B9130](v76, (*(*(v58 + v55) + 8) + 1));
        ++v56;
        v54 = v3[9];
        v55 += 24;
      }

      while (v56 < 0xAAAAAAAAAAAAAAABLL * ((v3[10] - v54) >> 3));
    }
  }

  return result;
}

uint64_t vg::ObjIO::write(vg::ObjIO *this, const vg::ObjContents *a2, const char *a3)
{
  v13[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v11);
  if (!v12[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, a2);
    v8 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not open file. ", &v9, &v10);
    MEMORY[0x2743B8FD0](exception, &v10, v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  vg::ObjIO::write(this, &v11);
  v11 = *MEMORY[0x277D82810];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x2743B90B0](v12);
  std::ostream::~ostream();
  result = MEMORY[0x2743B92E0](v13);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_270F9AA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      std::ofstream::~ofstream(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x2743B90A0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_270F9AC64(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2743B92E0](v1);
  _Unwind_Resume(a1);
}

void vg::ObjContentsToObjMeshData(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 200) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  vg::Vector2DToMatRX<float,3ul>(a1, &v38);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v39;
  *a2 = v38;
  *(a2 + 8) = v6;
  v38 = v4;
  v39 = v5;
  *(a2 + 16) = v40;
  v40 = 0;
  free(v4);
  vg::Vector2DToMatRX<unsigned int,3ul>((a1 + 72), &v38);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = v39;
  *(a2 + 24) = v38;
  *(a2 + 32) = v9;
  v38 = v7;
  v39 = v8;
  *(a2 + 40) = v40;
  v40 = 0;
  free(v7);
  if (*(a1 + 32) != *(a1 + 24))
  {
    vg::Vector2DToMatRX<float,2ul>((a1 + 24), &v38);
    v10 = v38;
    if (*(a2 + 72) == 1)
    {
      v11 = *(a2 + 48);
      v12 = *(a2 + 56);
      v13 = v39;
      *(a2 + 48) = v38;
      *(a2 + 56) = v13;
      v38 = v11;
      v39 = v12;
      *(a2 + 64) = v40;
      v40 = 0;
    }

    else
    {
      v11 = 0;
      v14 = v39;
      v38 = 0;
      v39 = 0;
      *(a2 + 48) = v10;
      *(a2 + 56) = v14;
      *(a2 + 64) = v40;
      v40 = 0;
      *(a2 + 72) = 1;
    }

    free(v11);
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    vg::Vector2DToMatRX<float,3ul>((a1 + 48), &v38);
    v15 = v38;
    if (*(a2 + 104) == 1)
    {
      v16 = *(a2 + 80);
      v17 = *(a2 + 88);
      v18 = v39;
      *(a2 + 80) = v38;
      *(a2 + 88) = v18;
      v38 = v16;
      v39 = v17;
      *(a2 + 96) = v40;
      v40 = 0;
    }

    else
    {
      v16 = 0;
      v19 = v39;
      v38 = 0;
      v39 = 0;
      *(a2 + 80) = v15;
      *(a2 + 88) = v19;
      *(a2 + 96) = v40;
      v40 = 0;
      *(a2 + 104) = 1;
    }

    free(v16);
  }

  if (*(a1 + 152) != *(a1 + 144))
  {
    vg::Vector2DToMatRX<float,3ul>((a1 + 144), &v38);
    v20 = v38;
    if (*(a2 + 136) == 1)
    {
      v21 = *(a2 + 112);
      v22 = *(a2 + 120);
      v23 = v39;
      *(a2 + 112) = v38;
      *(a2 + 120) = v23;
      v38 = v21;
      v39 = v22;
      *(a2 + 128) = v40;
      v40 = 0;
    }

    else
    {
      v21 = 0;
      v24 = v39;
      v38 = 0;
      v39 = 0;
      *(a2 + 112) = v20;
      *(a2 + 120) = v24;
      *(a2 + 128) = v40;
      v40 = 0;
      *(a2 + 136) = 1;
    }

    free(v21);
  }

  if (*(a1 + 104) != *(a1 + 96))
  {
    vg::Vector2DToMatRX<unsigned int,3ul>((a1 + 96), &v38);
    v25 = v38;
    if (*(a2 + 168) == 1)
    {
      v26 = *(a2 + 144);
      v27 = *(a2 + 152);
      v28 = v39;
      *(a2 + 144) = v38;
      *(a2 + 152) = v28;
      v38 = v26;
      v39 = v27;
      *(a2 + 160) = v40;
      v40 = 0;
    }

    else
    {
      v26 = 0;
      v29 = v39;
      v38 = 0;
      v39 = 0;
      *(a2 + 144) = v25;
      *(a2 + 152) = v29;
      *(a2 + 160) = v40;
      v40 = 0;
      *(a2 + 168) = 1;
    }

    free(v26);
  }

  v30 = *(a1 + 120);
  v31 = *(a1 + 128);
  v32 = (a1 + 120);
  if (v31 != v30)
  {
    vg::Vector2DToMatRX<unsigned int,3ul>(v32, &v38);
    v33 = v38;
    if (*(a2 + 200) == 1)
    {
      v34 = *(a2 + 176);
      v35 = *(a2 + 184);
      v36 = v39;
      *(a2 + 176) = v38;
      *(a2 + 184) = v36;
      v38 = v34;
      v39 = v35;
      *(a2 + 192) = v40;
      v40 = 0;
    }

    else
    {
      v34 = 0;
      v37 = v39;
      v38 = 0;
      v39 = 0;
      *(a2 + 176) = v33;
      *(a2 + 184) = v37;
      *(a2 + 192) = v40;
      v40 = 0;
      *(a2 + 200) = 1;
    }

    free(v34);
  }
}

uint64_t vg::Vector2DToMatRX<float,3ul>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1] - *a1;
  v5 = -1431655765 * (v4 >> 3);
  v6 = (((v4 >> 1) & 0x3FFFFFFFCLL) + 31) & 0x7FFFFFFE0;
  *(a2 + 8) = v6 >> 2;
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
  v8 = memptr;
  *a2 = memptr;
  *(a2 + 16) = v5;
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  if (v10 != *a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    do
    {
      v15 = 0;
      v16 = *(v9 + 24 * v13);
      v17 = v12;
      do
      {
        v8[v17] = *(v16 + v15);
        v15 += 4;
        ++v17;
      }

      while (v15 != 12);
      v13 = (v13 + 1);
      v12 += 3;
    }

    while (v14 > v13);
  }

  return result;
}

uint64_t vg::Vector2DToMatRX<unsigned int,3ul>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1] - *a1;
  v5 = -1431655765 * (v4 >> 3);
  v6 = (((v4 >> 1) & 0x3FFFFFFFCLL) + 31) & 0x7FFFFFFE0;
  *(a2 + 8) = v6 >> 2;
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
  v8 = memptr;
  *a2 = memptr;
  *(a2 + 16) = v5;
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 - *a1;
  if (v10 != *a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    do
    {
      v15 = 0;
      v16 = *(v9 + 24 * v13);
      v17 = v12;
      do
      {
        v8[v17] = *(v16 + v15);
        v15 += 4;
        ++v17;
      }

      while (v15 != 12);
      v13 = (v13 + 1);
      v12 += 3;
    }

    while (v14 > v13);
  }

  return result;
}

float vg::Vector2DToMatRX<float,2ul>@<S0>(float ***a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = (8 * (v4 & 0x7FFFFFFF) + 31) & 0x7FFFFFFE0;
  *(a2 + 8) = v5 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v5, 0xE1AC2527uLL);
  v7 = memptr;
  *a2 = memptr;
  *(a2 + 16) = v4;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 - *a1;
  if (v9 != *a1)
  {
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    v13 = 1;
    do
    {
      v14 = *v8;
      v8 += 3;
      v15 = &v7[4 * v11];
      *v15 = *v14;
      result = v14[1];
      v15[1] = result;
      v16 = v12 > v13++;
      v11 += 2;
    }

    while (v16);
  }

  return result;
}

void vg::ObjMeshDataToObjContents(vg *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = (4 * (3 * *(this + 4)) + 31) & 0x7FFFFFFE0;
  v55 = v5 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v5, 0xE1AC2527uLL);
  v6 = memptr;
  v54 = memptr;
  v7 = *(this + 4);
  v56 = 3;
  v57 = v7;
  if (v7)
  {
    v8 = (3 * v7);
    v9 = *this;
    v10 = 4 * v8;
    do
    {
      v11 = *v9++;
      *v6++ = v11;
      v10 -= 4;
    }

    while (v10);
  }

  vg::MatRXToVector2D<float>(&v54, &v58);
  if (&v58 != a2)
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a2, v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
  }

  memptr = &v58;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
  free(v54);
  v12 = (4 * (3 * *(this + 10)) + 31) & 0x7FFFFFFE0;
  v54 = 0;
  v55 = v12 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v12, 0xE1AC2527uLL);
  v13 = memptr;
  v54 = memptr;
  v14 = *(this + 10);
  v56 = 3;
  v57 = v14;
  if (v14)
  {
    v15 = (3 * v14);
    v16 = *(this + 3);
    v17 = 4 * v15;
    do
    {
      v18 = *v16++;
      *v13++ = v18;
      v17 -= 4;
    }

    while (v17);
  }

  vg::MatRXToVector2D<unsigned int>(&v54, &v58);
  if ((a2 + 72) != &v58)
  {
    std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>((a2 + 72), v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
  }

  memptr = &v58;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
  free(v54);
  if (*(this + 72) == 1)
  {
    v19 = (4 * (2 * *(this + 16)) + 31) & 0x7FFFFFFE0;
    v54 = 0;
    v55 = v19 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v19, 0xE1AC2527uLL);
    v20 = memptr;
    v54 = memptr;
    v21 = *(this + 16);
    v56 = 2;
    v57 = v21;
    v22 = (2 * v21);
    if (v22)
    {
      v23 = *(this + 6);
      v24 = 4 * v22;
      do
      {
        v25 = *v23++;
        *v20++ = v25;
        v24 -= 4;
      }

      while (v24);
    }

    vg::MatRXToVector2D<float>(&v54, &v58);
    if ((a2 + 24) != &v58)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((a2 + 24), v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
    }

    memptr = &v58;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
    free(v54);
  }

  if (*(this + 104) == 1)
  {
    v26 = (4 * (3 * *(this + 24)) + 31) & 0x7FFFFFFE0;
    v54 = 0;
    v55 = v26 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v26, 0xE1AC2527uLL);
    v27 = memptr;
    v54 = memptr;
    v28 = *(this + 24);
    v56 = 3;
    v57 = v28;
    if (v28)
    {
      v29 = (3 * v28);
      v30 = *(this + 10);
      v31 = 4 * v29;
      do
      {
        v32 = *v30++;
        *v27++ = v32;
        v31 -= 4;
      }

      while (v31);
    }

    vg::MatRXToVector2D<float>(&v54, &v58);
    if ((a2 + 48) != &v58)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((a2 + 48), v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
    }

    memptr = &v58;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
    free(v54);
  }

  if (*(this + 136) == 1)
  {
    v33 = (4 * (3 * *(this + 32)) + 31) & 0x7FFFFFFE0;
    v54 = 0;
    v55 = v33 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v33, 0xE1AC2527uLL);
    v34 = memptr;
    v54 = memptr;
    v35 = *(this + 32);
    v56 = 3;
    v57 = v35;
    if (v35)
    {
      v36 = (3 * v35);
      v37 = *(this + 14);
      v38 = 4 * v36;
      do
      {
        v39 = *v37++;
        *v34++ = v39;
        v38 -= 4;
      }

      while (v38);
    }

    vg::MatRXToVector2D<float>(&v54, &v58);
    if ((a2 + 144) != &v58)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((a2 + 144), v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
    }

    memptr = &v58;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
    free(v54);
  }

  if (*(this + 168) == 1)
  {
    v40 = (4 * (3 * *(this + 40)) + 31) & 0x7FFFFFFE0;
    v55 = v40 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v40, 0xE1AC2527uLL);
    v41 = memptr;
    v54 = memptr;
    v42 = *(this + 40);
    v56 = 3;
    v57 = v42;
    if (v42)
    {
      v43 = (3 * v42);
      v44 = *(this + 18);
      v45 = 4 * v43;
      do
      {
        v46 = *v44++;
        *v41++ = v46;
        v45 -= 4;
      }

      while (v45);
    }

    vg::MatRXToVector2D<unsigned int>(&v54, &v58);
    if ((a2 + 96) != &v58)
    {
      std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>((a2 + 96), v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
    }

    memptr = &v58;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
    free(v54);
  }

  if (*(this + 200) == 1)
  {
    v47 = (4 * (3 * *(this + 48)) + 31) & 0x7FFFFFFE0;
    v55 = v47 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v47, 0xE1AC2527uLL);
    v48 = memptr;
    v54 = memptr;
    v49 = *(this + 48);
    v56 = 3;
    v57 = v49;
    if (v49)
    {
      v50 = (3 * v49);
      v51 = *(this + 22);
      v52 = 4 * v50;
      do
      {
        v53 = *v51++;
        *v48++ = v53;
        v52 -= 4;
      }

      while (v52);
    }

    vg::MatRXToVector2D<unsigned int>(&v54, &v58);
    if ((a2 + 120) != &v58)
    {
      std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>((a2 + 120), v58, v59, 0xAAAAAAAAAAAAAAABLL * (v59 - v58));
    }

    memptr = &v58;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&memptr);
    free(v54);
  }
}

void sub_270F9B7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = &a13;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  free(a10);
  vg::ObjContents::~ObjContents(v13);
  _Unwind_Resume(a1);
}

void vg::MatRXToVector2D<float>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 5);
  std::vector<float>::vector[abi:ne200100](__p, *(a1 + 4));
  std::vector<std::vector<float>>::vector[abi:ne200100](a2, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(a1 + 5);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a1 + 4);
    v9 = *a1;
    v10 = *a2;
    do
    {
      if (v8)
      {
        v11 = *(v10 + 24 * v7);
        v12 = v8;
        v13 = v6;
        do
        {
          *v11++ = *(v9 + 4 * v13++);
          --v12;
        }

        while (v12);
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v5);
  }
}

void sub_270F9B92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::MatRXToVector2D<unsigned int>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 5);
  std::vector<unsigned int>::vector[abi:ne200100](__p, *(a1 + 4));
  std::vector<std::vector<unsigned int>>::vector[abi:ne200100](a2, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(a1 + 5);
  if (v5)
  {
    v6 = 0;
    v7 = *a1;
    v8 = *a2;
    LODWORD(v9) = *(a1 + 4);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = *(v8 + 24 * v6);
        do
        {
          *(v11 + 4 * v10) = *(v7 + 4 * (v10 + v6 * v9));
          ++v10;
          v9 = *(a1 + 4);
        }

        while (v10 < v9);
        v5 = *(a1 + 5);
      }

      ++v6;
    }

    while (v6 < v5);
  }
}

void sub_270F9BA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::UniqueVertexFromObjContents(vg *this@<X0>, vg::ObjContents *a2@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  memset(v64, 0, sizeof(v64));
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  std::vector<std::vector<unsigned int>>::resize(&v62 + 1, 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - *(this + 9)) >> 3));
  v52 = a2;
  *__p = 0u;
  v58 = 0u;
  v59 = 1065353216;
  std::vector<unsigned int>::vector[abi:ne200100](&__src, 3uLL);
  if (*(this + 10) == *(this + 9))
  {
    goto LABEL_68;
  }

  v7 = 0;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v9 = *(*(*(this + 9) + 24 * v7) + 4 * i);
      v10 = *(*this + 24 * v9);
      v11 = *(*this + 24 * v9 + 8) - v10;
      if (!v11 || ((v12 = v11 > 8, v13 = (1 << v11) & 0x11F, !v12) ? (v14 = v13 == 0) : (v14 = 1), !v14))
      {
LABEL_83:
        std::vector<float>::__throw_out_of_range[abi:ne200100]();
      }

      v5.i64[0] = *v10;
      v15 = *(v10 + 8);
      v16 = *(this + 12);
      if (*(this + 13) == v16)
      {
        v21 = 0;
      }

      else
      {
        v18 = *(this + 3) + 24 * *(*(v16 + 24 * v7) + 4 * i);
        v17 = *v18;
        v19 = *(v18 + 8) - *v18;
        if (v19)
        {
          v20 = v19 >= 5;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
          goto LABEL_83;
        }

        v21 = *v17;
      }

      v22 = *(this + 15);
      if (*(this + 16) == v22)
      {
        v6 = 0uLL;
      }

      else
      {
        v24 = (*(this + 6) + 24 * *(*(v22 + 24 * v7) + 4 * i));
        v23 = *v24;
        v25 = v24[1] - *v24;
        if (!v25)
        {
          goto LABEL_83;
        }

        v12 = v25 > 8;
        v26 = (1 << v25) & 0x11F;
        if (!v12 && v26 != 0)
        {
          goto LABEL_83;
        }

        v6.i64[0] = *v23;
        v6.i32[2] = *(v23 + 8);
      }

      v53 = v6;
      v6 = v5;
      v6.i32[2] = v15;
      v28 = (v5.i32[0] ^ (v5.i32[1] << 15) ^ (v15 << 31));
      if (!__p[1])
      {
        goto LABEL_63;
      }

      v29 = vcnt_s8(__p[1]);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = v29.u32[0];
      if (v29.u32[0] > 1uLL)
      {
        v31 = v28;
        if (__p[1] <= v28)
        {
          v31 = v28 % LODWORD(__p[1]);
        }
      }

      else
      {
        v31 = (LODWORD(__p[1]) - 1) & v28;
      }

      v32 = *(__p[0] + v31);
      if (!v32 || (j = *v32) == 0)
      {
LABEL_46:
        if (v30 > 1)
        {
          v38 = v28;
          if (__p[1] <= v28)
          {
            v38 = v28 % LODWORD(__p[1]);
          }
        }

        else
        {
          v38 = (LODWORD(__p[1]) - 1) & v28;
        }

        v39 = *(__p[0] + v38);
        if (v39)
        {
          for (j = *v39; j; j = j->i64[0])
          {
            v40 = j->u64[1];
            if (v40 == v28)
            {
              v41 = vceqq_f32(j[1], v6);
              v41.i32[3] = v41.i32[2];
              if ((vminvq_u32(v41) & 0x80000000) != 0)
              {
                v42 = vceq_f32(*j[2].f32, v21);
                if ((vpmin_u32(v42, v42).u32[0] & 0x80000000) != 0)
                {
                  v5.i64[1] = v53.i64[1];
                  v43 = vceqq_f32(j[3], v53);
                  v43.i32[3] = v43.i32[2];
                  if ((vminvq_u32(v43) & 0x80000000) != 0)
                  {
                    goto LABEL_64;
                  }
                }
              }
            }

            else
            {
              if (v30 > 1)
              {
                if (v40 >= __p[1])
                {
                  v40 %= __p[1];
                }
              }

              else
              {
                v40 &= __p[1] - 1;
              }

              if (v40 != v38)
              {
                break;
              }
            }
          }
        }

LABEL_63:
        operator new();
      }

      while (1)
      {
        v34 = j->u64[1];
        if (v34 == v28)
        {
          break;
        }

        if (v30 > 1)
        {
          if (v34 >= __p[1])
          {
            v34 %= __p[1];
          }
        }

        else
        {
          v34 &= __p[1] - 1;
        }

        if (v34 != v31)
        {
          goto LABEL_46;
        }

LABEL_45:
        j = j->i64[0];
        if (!j)
        {
          goto LABEL_46;
        }
      }

      v35 = vceqq_f32(j[1], v6);
      v35.i32[3] = v35.i32[2];
      if ((vminvq_u32(v35) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v36 = vceq_f32(*j[2].f32, v21);
      if ((vpmin_u32(v36, v36).u32[0] & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v5.i64[1] = v53.i64[1];
      v37 = vceqq_f32(j[3], v53);
      v37.i32[3] = v37.i32[2];
      if ((vminvq_u32(v37) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_64:
      v44 = __src;
      *(__src + i) = j[5].i32[0];
    }

    v45 = (*(&v62 + 1) + 24 * v7);
    if (v45 != &__src)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v45, v44, v56, (v56 - v44) >> 2);
    }

    ++v7;
  }

  while (v7 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - *(this + 9)) >> 3));
LABEL_68:
  std::vector<std::vector<float>>::resize(v60, *(&v58 + 1));
  if (*(this + 12) != *(this + 13))
  {
    std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(v64, *(&v62 + 1), v63, 0xAAAAAAAAAAAAAAABLL * ((v63 - *(&v62 + 1)) >> 3));
    std::vector<std::vector<float>>::resize(&v60[1] + 1, *(&v58 + 1));
  }

  if (*(this + 15) != *(this + 16))
  {
    std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(&v64[3], *(&v62 + 1), v63, 0xAAAAAAAAAAAAAAABLL * ((v63 - *(&v62 + 1)) >> 3));
    std::vector<std::vector<float>>::resize(&v61, *(&v58 + 1));
  }

  std::vector<unsigned int>::vector[abi:ne200100](v65, *(&v58 + 1));
  for (k = v58; k; k = *k)
  {
    v47 = *(k + 1);
    v48 = k[4];
    v54 = *(k + 3);
    v49 = *(k + 16);
    v50 = *(k + 20);
    v66 = k[2];
    v67 = DWORD2(v47);
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((*&v60[0] + 24 * v50), &v66, v68, 3uLL);
    if (*(this + 12) != *(this + 13))
    {
      v66 = v48;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((*(&v60[1] + 1) + 24 * v50), &v66, &v67, 2uLL);
    }

    if (*(this + 15) != *(this + 16))
    {
      v66 = v54;
      v67 = DWORD2(v54);
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((v61 + 24 * v50), &v66, v68, 3uLL);
    }

    *(v65[0] + v50) = v49;
  }

  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN2vg11ObjContentsENS_6vectorIjNS_9allocatorIjEEEEEEC2B8ne200100IJLm0ELm1EEJS4_S8_EJEJEJRS4_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(v52, v60, v65);
  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (__src)
  {
    v56 = __src;
    operator delete(__src);
  }

  std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::~__hash_table(__p);
  vg::ObjContents::~ObjContents(v60);
  v51 = *MEMORY[0x277D85DE8];
}

void sub_270F9C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 160);
  if (v29)
  {
    *(v27 - 152) = v29;
    operator delete(v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::__unordered_map_hasher<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,OSTypePairHash,std::equal_to<std::pair<unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned int,unsigned int>,std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>,std::equal_to<std::pair<unsigned int,unsigned int>>,OSTypePairHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned int,unsigned int>,std::array<unsigned char,4ul>>>>::~__hash_table(&a21);
  vg::ObjContents::~ObjContents(&a27);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<float>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<float>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void vg::ObjRead(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  vg::ObjIO::read(a1, a2, v4);
  vg::ObjContentsToObjMeshData(v4, a3);
  vg::ObjContents::~ObjContents(v4);
}

uint64_t vg::ObjRead@<X0>(vg *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v14[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v12);
  if (!v13[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, this);
    v9 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not open file. ", &v10, &v11);
    MEMORY[0x2743B8FD0](exception, &v11, v9);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  vg::ObjRead(v12, v3, a3);
  v12[0] = *MEMORY[0x277D82808];
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2743B90B0](v13);
  std::istream::~istream();
  result = MEMORY[0x2743B92E0](v14);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_270F9C6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void vg::ObjWrite(vg *a1, uint64_t *a2)
{
  vg::ObjMeshDataToObjContents(a1, v3);
  vg::ObjIO::write(v3, a2);
  vg::ObjContents::~ObjContents(v3);
}

uint64_t vg::ObjWrite(vg *this, const vg::ObjMeshData *a2, const char *a3)
{
  v13[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v11);
  if (!v12[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, a2);
    v8 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not open file. ", &v9, &v10);
    MEMORY[0x2743B8FD0](exception, &v10, v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  vg::ObjWrite(this, &v11);
  v11 = *MEMORY[0x277D82810];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x2743B90B0](v12);
  std::ostream::~ostream();
  result = MEMORY[0x2743B92E0](v13);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_270F9C930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      std::ofstream::~ofstream(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_270F9CA5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<double>>::~__split_buffer(&v14);
  return v8;
}

void sub_270F9CB94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<unsigned int>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<unsigned int>>::__emplace_back_slow_path<std::vector<unsigned int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<double>>::~__split_buffer(&v14);
  return v8;
}

void sub_270F9CD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

size_t *std::vector<std::vector<float>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<float>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<double>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_270F9CEA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*,std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void vg::ObjMeshData::~ObjMeshData(void **this)
{
  if (*(this + 200) == 1)
  {
    free(this[22]);
  }

  if (*(this + 168) == 1)
  {
    free(this[18]);
  }

  if (*(this + 136) == 1)
  {
    free(this[14]);
  }

  if (*(this + 104) == 1)
  {
    free(this[10]);
  }

  if (*(this + 72) == 1)
  {
    free(this[6]);
  }

  free(this[3]);
  free(*this);
}

void std::vector<std::vector<unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<double>>::~__split_buffer(v18);
  }
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<double>>::~__split_buffer(v18);
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

vg::ObjContents *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN2vg11ObjContentsENS_6vectorIjNS_9allocatorIjEEEEEEC2B8ne200100IJLm0ELm1EEJS4_S8_EJEJEJRS4_RS8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(vg::ObjContents *a1, const vg::ObjContents *a2, uint64_t *a3)
{
  v5 = vg::ObjContents::ObjContents(a1, a2);
  *(v5 + 24) = 0;
  *(v5 + 25) = 0;
  v5 = (v5 + 192);
  *(v5 + 2) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v5, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

vg::ObjContents *vg::ObjContents::ObjContents(vg::ObjContents *this, const vg::ObjContents *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(this + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(this + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(this + 72, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(this + 96, *(a2 + 12), *(a2 + 13), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(this + 120, *(a2 + 15), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 15)) >> 3));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  return this;
}

void sub_270F9DD1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F9DE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<unsigned int>>::__init_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F9DE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2743B90C0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_270F9E020(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x270F9DFE0);
  }

  __cxa_rethrow();
}

void *std::vector<std::vector<unsigned int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t vg::shared::VGE5RT::modelVersion@<X0>(_BYTE *a1@<X8>)
{
  E5RT::ProgramLibrary::OpenLibrary();
  if (!v9)
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
    goto LABEL_11;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "main");
  FunctionMetadata = E5RT::ProgramLibrary::GetFunctionMetadata();
  v3 = FunctionMetadata;
  if (v8 < 0)
  {
    operator delete(__p);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(a1, "unknown");
    goto LABEL_11;
  }

  if (!FunctionMetadata)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = [v3 objectForKeyedSubscript:@"UserVersion"];

  if (v4)
  {
    v5 = [v4 UTF8String];
  }

  else
  {
    v5 = "unknown";
  }

  std::string::basic_string[abi:ne200100]<0>(a1, v5);

LABEL_11:
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_270F9E284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vg::shared::VGE5RT::isANESupported(vg::shared::VGE5RT *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CEE958] aneSubType];
  if ([v1 isEqualToString:@"h11"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"h12"] ^ 1;
  }

  v3 = __VGLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = [v1 UTF8String];
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_270F06000, v3, OS_LOG_TYPE_INFO, " Support for ANE %s: %d ", &v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL vg::shared::VGE5RT::isTensorComponentFloat16(vg::shared::VGE5RT *this, const E5RT::TensorDescriptor *a2)
{
  E5RT::TensorDescriptor::GetTensorDataType(v4, this);
  v2 = E5RT::TensorDataType::GetComponentDataType(v4) == 4 && E5RT::TensorDataType::GetComponentSize(v4) == 2;
  E5RT::TensorDataType::~TensorDataType(v4);
  return v2;
}

BOOL vg::shared::VGE5RT::isPortFloat16(E5RT::IOPort **a1)
{
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*a1);
  v2 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);

  return vg::shared::VGE5RT::isTensorComponentFloat16(v2, v3);
}

id vg::shared::VGE5RT::tensorSurfaceProperties(vg::shared::VGE5RT *this, const E5RT::TensorDescriptor *a2)
{
  v20[5] = *MEMORY[0x277D85DE8];
  E5RT::TensorDescriptor::GetTensorDataType(v18, this);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(this);
  TensorStrides = E5RT::TensorDescriptor::GetTensorStrides(this);
  NumElements = E5RT::TensorDescriptor::GetNumElements(this);
  v6 = *(*(TensorShape + 8) - 8);
  v7 = *(*(TensorStrides + 8) - 16);
  v19[0] = *MEMORY[0x277CD2928];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
  v20[0] = v8;
  v19[1] = *MEMORY[0x277CD28D0];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:NumElements / v6];
  v20[1] = v9;
  v19[2] = *MEMORY[0x277CD28B0];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:E5RT::TensorDataType::GetElementSize(v18)];
  v20[2] = v10;
  v19[3] = *MEMORY[0x277CD28B8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
  v20[3] = v11;
  v19[4] = *MEMORY[0x277CD28D8];
  isTensorComponentFloat16 = vg::shared::VGE5RT::isTensorComponentFloat16(this, v12);
  v14 = &unk_2880F6340;
  if (isTensorComponentFloat16)
  {
    v14 = &unk_2880F6328;
  }

  v20[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  E5RT::TensorDataType::~TensorDataType(v18);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_270F9E6A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  E5RT::TensorDataType::~TensorDataType(va);
  _Unwind_Resume(a1);
}

id vg::shared::VGE5RT::convert1DVectorToSurface(uint64_t a1, vg::shared::VGE5RT *this)
{
  v4 = vg::shared::VGE5RT::tensorSurfaceProperties(this, this);
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v7 = *(a1 + 16);
  v8 = [v5 unsignedIntValue];
  if (v7 == [v6 unsignedIntValue] * v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v4];
    if (vg::shared::VGE5RT::isTensorComponentFloat16(this, v10))
    {
      _ZN2vg6shared6VGE5RT6detail24write1DVectorToIOSurfaceIDF16_EEvP9IOSurfaceRKN3cva6MatrixIfLj0ELj1ELb0EEE(v9, a1);
    }

    else
    {
      vg::shared::VGE5RT::detail::write1DVectorToIOSurface<float>(v9, a1);
    }
  }

  else
  {
    v11 = __VGLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " vector size mismatch. ", v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void _ZN2vg6shared6VGE5RT6detail24write1DVectorToIOSurfaceIDF16_EEvP9IOSurfaceRKN3cva6MatrixIfLj0ELj1ELb0EEE(void *a1, void *a2)
{
  v3 = a1;
  vg::IOSurfaceData::IOSurfaceData(v11, v3, 0);
  for (i = 0; i < [(IOSurface *)v3 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)v3 width]; ++j)
    {
      _S0 = *(*a2 + 4 * (j + i * [(IOSurface *)v3 width]));
      __asm { FCVT            H0, S0 }

      *(v11[4] + v11[5] * i + v11[6] * j) = _S0;
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v11);
}

void vg::shared::VGE5RT::detail::write1DVectorToIOSurface<float>(void *a1, void *a2)
{
  v3 = a1;
  vg::IOSurfaceData::IOSurfaceData(v7, v3, 0);
  for (i = 0; i < [(IOSurface *)v3 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)v3 width]; ++j)
    {
      v6 = [(IOSurface *)v3 width];
      *(v7[4] + v7[5] * i + v7[6] * j) = *(*a2 + 4 * (j + i * v6));
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v7);
}

void vg::shared::VGE5RT::convertSurfaceTo1DVector(vg::shared::VGE5RT *this@<X0>, IOSurface *a2@<X1>, const E5RT::TensorDescriptor *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = this;
  v28 = vg::shared::VGE5RT::tensorSurfaceProperties(a2, v6);
  v7 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v31 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v32 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD28B8]];
  v8 = [v7 unsignedIntValue];
  v9 = [v31 unsignedIntValue] * v8;
  v10 = (4 * v9 + 31) & 0x7FFFFFFE0;
  *a4 = 0;
  *(a4 + 8) = v10 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v11 = memptr;
  *a4 = memptr;
  *(a4 + 16) = v9;
  [(vg::shared::VGE5RT *)v30 lockWithOptions:0 seed:0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___ZN2vg6shared6VGE5RT24convertSurfaceTo1DVectorEPK9IOSurfaceRKN4E5RT16TensorDescriptorE_block_invoke;
  v33[3] = &unk_279E28D98;
  v12 = v30;
  v34 = v12;
  v29 = MEMORY[0x2743B9AA0](v33);
  isTensorComponentFloat16 = vg::shared::VGE5RT::isTensorComponentFloat16(a2, v13);
  for (i = 0; i < [v31 unsignedIntValue]; ++i)
  {
    v16 = 0;
    v17 = 0;
    for (j = 0; j < [v7 unsignedIntValue]; ++j)
    {
      v19 = j + i * [v7 unsignedIntValue];
      v20 = v12;
      v21 = [(vg::shared::VGE5RT *)v12 baseAddress];
      if (isTensorComponentFloat16)
      {
        _H0 = *(v21 + [v32 unsignedIntValue] * i + (v17 & 0xFFFFFFFE));
        __asm { FCVT            S0, H0 }
      }

      else
      {
        _S0 = *(v21 + [v32 unsignedIntValue] * i + (v16 & 0xFFFFFFFC));
      }

      v11[v19] = _S0;
      v17 += 2;
      v16 += 4;
    }
  }

  v29[2](v29);
}

void sub_270F9ECC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  free(v21);

  _Unwind_Resume(a1);
}

id vg::shared::VGE5RT::convert2DMatrixToSurface(uint64_t a1, vg::shared::VGE5RT *this)
{
  v4 = vg::shared::VGE5RT::tensorSurfaceProperties(this, this);
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v7 = *(a1 + 20);
  if (v7 == [v5 unsignedIntValue] && (v8 = *(a1 + 16), v8 == objc_msgSend(v6, "unsignedIntValue")))
  {
    v9 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v4];
    if (vg::shared::VGE5RT::isTensorComponentFloat16(this, v10))
    {
      _ZN2vg6shared6VGE5RT6detail24write2DMatrixToIOSurfaceIDF16_EEvP9IOSurfaceRKN3cva6MatrixIfLj0ELj0ELb0EEE(v9, a1);
    }

    else
    {
      vg::shared::VGE5RT::detail::write2DMatrixToIOSurface<float>(v9, a1);
    }
  }

  else
  {
    v11 = __VGLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " matrix size mismatch. ", v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void _ZN2vg6shared6VGE5RT6detail24write2DMatrixToIOSurfaceIDF16_EEvP9IOSurfaceRKN3cva6MatrixIfLj0ELj0ELb0EEE(void *a1, uint64_t a2)
{
  v3 = a1;
  vg::IOSurfaceData::IOSurfaceData(v11, v3, 0);
  for (i = 0; i < [(IOSurface *)v3 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)v3 width]; ++j)
    {
      _S0 = *(*a2 + 4 * (i + *(a2 + 16) * j));
      __asm { FCVT            H0, S0 }

      *(v11[4] + v11[5] * i + v11[6] * j) = _S0;
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v11);
}

void vg::shared::VGE5RT::detail::write2DMatrixToIOSurface<float>(void *a1, uint64_t a2)
{
  v3 = a1;
  vg::IOSurfaceData::IOSurfaceData(v6, v3, 0);
  for (i = 0; i < [(IOSurface *)v3 height]; ++i)
  {
    for (j = 0; j < [(IOSurface *)v3 width]; ++j)
    {
      *(v6[4] + v6[5] * i + v6[6] * j) = *(*a2 + 4 * (i + *(a2 + 16) * j));
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v6);
}

void vg::shared::VGE5RT::convertSurfaceTo2DMatrix(vg::shared::VGE5RT *this@<X0>, IOSurface *a2@<X1>, const E5RT::TensorDescriptor *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  v28 = vg::shared::VGE5RT::tensorSurfaceProperties(a2, v7);
  v32 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v30 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v31 = [v28 objectForKeyedSubscript:*MEMORY[0x277CD28B8]];
  v8 = [v30 unsignedIntValue];
  v9 = [v32 unsignedIntValue];
  v10 = (4 * (v9 * v8) + 31) & 0x7FFFFFFE0;
  *a4 = 0;
  *(a4 + 8) = v10 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v11 = memptr;
  *a4 = memptr;
  *(a4 + 16) = v8;
  *(a4 + 20) = v9;
  [(vg::shared::VGE5RT *)v6 lockWithOptions:0 seed:0];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___ZN2vg6shared6VGE5RT24convertSurfaceTo2DMatrixEPK9IOSurfaceRKN4E5RT16TensorDescriptorE_block_invoke;
  v33[3] = &unk_279E28D98;
  v12 = v6;
  v34 = v12;
  v29 = MEMORY[0x2743B9AA0](v33);
  isTensorComponentFloat16 = vg::shared::VGE5RT::isTensorComponentFloat16(a2, v13);
  for (i = 0; i < [v30 unsignedIntValue]; ++i)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = i;
    while (v18 < [v32 unsignedIntValue])
    {
      v20 = v12;
      v21 = [(vg::shared::VGE5RT *)v12 baseAddress];
      if (isTensorComponentFloat16)
      {
        _H0 = *(v21 + [v31 unsignedIntValue] * i + (v17 & 0xFFFFFFFE));
        __asm { FCVT            S0, H0 }
      }

      else
      {
        _S0 = *(v21 + [v31 unsignedIntValue] * i + (v16 & 0xFFFFFFFC));
      }

      v11[v19] = _S0;
      ++v18;
      v19 += v8;
      v17 += 2;
      v16 += 4;
    }
  }

  v29[2](v29);
}

void sub_270F9F334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  free(v20);

  _Unwind_Resume(a1);
}

void vg::shared::VGE5RT::compileModel(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = VGLogVGE5RT();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CompileE5RTModel", &unk_270FBF062, buf, 2u);
  }

  E5RT::E5CompilerOptions::Create(&v40, v7);
  *__p = 1;
  v38 = 0;
  v39 = 0;
  *buf = 0;
  std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(buf, __p, &__p[8], 1uLL);
  if (a2)
  {
    v8 = v38;
    if (v38 >= v39)
    {
      v10 = *buf;
      v11 = v38 - *buf;
      v12 = (v38 - *buf) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
      }

      v14 = v39 - *buf;
      if ((v39 - *buf) >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      if (v16)
      {
        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(buf, v16);
      }

      *(8 * v12) = 4;
      v9 = 8 * v12 + 8;
      memcpy(0, v10, v11);
      v17 = *buf;
      *buf = 0;
      v38 = v9;
      v39 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v38 = 4;
      v9 = (v8 + 1);
    }

    v38 = v9;
  }

  v18 = E5RT::E5CompilerOptions::SetComputeDeviceTypesAllowed();
  E5RT::E5Compiler::GetCompiler(v18);
  E5RT::E5Compiler::Compile();
  if (!v36)
  {
    v27 = VGLogVGE5RT();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 23) >= 0)
      {
        v28 = a1;
      }

      else
      {
        v28 = *a1;
      }

      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
      vg::shared::VGE5RT::compileModel(v29, __p, v27);
    }

    goto LABEL_43;
  }

  ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  v20 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(ExportedFunctions, __p);
  v21 = v20;
  if (v42 < 0)
  {
    operator delete(*__p);
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

  if (!v20)
  {
LABEL_40:
    v30 = VGLogVGE5RT();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      vg::shared::VGE5RT::compileModel(v30);
    }

LABEL_43:
    *a3 = 0;
    goto LABEL_44;
  }

LABEL_19:
  std::string::basic_string[abi:ne200100]<0>(__p, "main");
  v22 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(ExportedFunctions, __p);
  if (!v22)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v23 = v22[6];
  v33 = v22[5];
  v34 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::PrecompiledComputeOpCreateOptions::Create();
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v42 < 0)
  {
    operator delete(*__p);
  }

  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  v24 = VGLogVGE5RT();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v25, v33}];
    *__p = 138412290;
    *&__p[4] = v26;
    _os_log_impl(&dword_270F06000, v24, OS_LOG_TYPE_INFO, "successfully compiled model in: %@", __p, 0xCu);
  }

  if (v35)
  {
    (*(*v35 + 8))();
  }

LABEL_44:
  if (v36)
  {
    (*(*v36 + 8))();
  }

  if (*buf)
  {
    v38 = *buf;
    operator delete(*buf);
  }

  v31 = v40;
  v40 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  ___ZN2vg6shared6VGE5RT12compileModelERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEb_block_invoke();
  v32 = *MEMORY[0x277D85DE8];
}

void sub_270F9F808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  ___ZN2vg6shared6VGE5RT12compileModelERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEb_block_invoke();
  _Unwind_Resume(a1);
}

id VGLogVGE5RT(void)
{
  if (VGLogVGE5RT(void)::onceToken != -1)
  {
    VGLogVGE5RT();
  }

  v1 = VGLogVGE5RT(void)::handle;

  return v1;
}

void ___ZN2vg6shared6VGE5RT12compileModelERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEb_block_invoke()
{
  v0 = VGLogVGE5RT();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CompileE5RTModel", &unk_270FBF062, v1, 2u);
  }
}

IOSurface *vg::shared::VGE5RT::convert2DTensorToFloatSurface(vg::shared::VGE5RT *this, IOSurface *a2, const E5RT::TensorDescriptor *a3)
{
  v55[4] = *MEMORY[0x277D85DE8];
  v4 = this;
  v6 = vg::shared::VGE5RT::tensorSurfaceProperties(a2, v5);
  v7 = MEMORY[0x277CD2928];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v9 = [v8 unsignedIntValue];

  v10 = MEMORY[0x277CD28D0];
  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v12 = [v11 unsignedIntValue];

  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD28B8]];
  v14 = [v13 unsignedIntValue];

  isTensorComponentFloat16 = vg::shared::VGE5RT::isTensorComponentFloat16(a2, v15);
  v17 = objc_alloc(MEMORY[0x277CD2930]);
  v54[0] = *v7;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v55[0] = v18;
  v54[1] = *v10;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  v20 = v19;
  v21 = &unk_2880F6370;
  if (isTensorComponentFloat16)
  {
    v21 = &unk_2880F6358;
  }

  v55[1] = v19;
  v55[2] = v21;
  v22 = *MEMORY[0x277CD28D8];
  v54[2] = *MEMORY[0x277CD28B0];
  v54[3] = v22;
  v23 = &unk_2880F6340;
  if (isTensorComponentFloat16)
  {
    v23 = &unk_2880F6328;
  }

  v55[3] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v25 = [v17 initWithProperties:v24];

  vg::IOSurfaceData::IOSurfaceData(v52, v4, 1);
  if (isTensorComponentFloat16)
  {
    vg::IOSurfaceData::IOSurfaceData(v48, v25, 0);
    if (v12)
    {
      v26 = 0;
      v27 = 0;
      v28 = v53;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      do
      {
        if (v9)
        {
          v32 = (v28 + v26);
          v33 = v9;
          v34 = v29;
          do
          {
            v35 = *v32++;
            *v34 = v35;
            v34 = (v34 + v31);
            --v33;
          }

          while (v33);
        }

        ++v27;
        v26 += v14;
        v29 = (v29 + v30);
      }

      while (v27 != v12);
    }
  }

  else
  {
    vg::IOSurfaceData::IOSurfaceData(v48, v25, 0);
    if (v12)
    {
      v36 = 0;
      v37 = 0;
      v38 = v53;
      v39 = v49;
      v40 = v50;
      v41 = v51;
      do
      {
        if (v9)
        {
          v42 = (v38 + v36);
          v43 = v9;
          v44 = v39;
          do
          {
            v45 = *v42++;
            *v44 = v45;
            v44 = (v44 + v41);
            --v43;
          }

          while (v43);
        }

        ++v37;
        v36 += v14;
        v39 = (v39 + v40);
      }

      while (v37 != v12);
    }
  }

  vg::IOSurfaceData::~IOSurfaceData(v48);
  vg::IOSurfaceData::~IOSurfaceData(v52);

  v46 = *MEMORY[0x277D85DE8];

  return v25;
}

void sub_270F9FD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

void ___ZL11VGLogVGE5RTv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGE5RT");
  v1 = VGLogVGE5RT(void)::handle;
  VGLogVGE5RT(void)::handle = v0;
}

uint64_t std::vector<E5RT::ComputeDeviceType>::__init_with_size[abi:ne200100]<E5RT::ComputeDeviceType const*,E5RT::ComputeDeviceType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_270F9FE70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void vg::shared::VGE5RT::compileModel(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "failed to compile model: %@", buf, 0xCu);
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

void vg::shared::computeMedian<float>()
{
    ;
  }
}

void j___ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE4findERKS7_()
{
    ;
  }
}

void j___ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE5clearEv()
{
    ;
  }
}

void j___ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE6insertERKS7_RKS9_()
{
    ;
  }
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clearFromIndex()
{
    ;
  }
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clearStaleEntries()
{
    ;
  }
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::find()
{
    ;
  }
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clear()
{
    ;
  }
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::insert()
{
    ;
  }
}

void vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clearFromIndex()
{
    ;
  }
}

void vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clear()
{
    ;
  }
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clearFromIndex()
{
    ;
  }
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clearStaleEntries()
{
    ;
  }
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::find()
{
    ;
  }
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clear()
{
    ;
  }
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::insert()
{
    ;
  }
}

void vg::shared::LRUCache<unsigned int,unsigned int>::clear()
{
    ;
  }
}

void cva::ItemHandler::createValue<BOOL>()
{
    ;
  }
}

void cva::ItemHandler::createMatrix<float>()
{
    ;
  }
}

void cva::ItemHandler::createMatrix<int>()
{
    ;
  }
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::ItemHandler::getMatrix<float>()
{
    ;
  }
}

void cva::ItemHandler::getMatrix<int>()
{
    ;
  }
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2821F7E98](this, a2, a3, a4);
}

{
  return MEMORY[0x2821F7EB0](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2821F7EA0]();
}

{
  return MEMORY[0x2821F7EA8]();
}

{
  return MEMORY[0x2821F7EB8]();
}

{
  return MEMORY[0x2821F7EC0]();
}

{
  return MEMORY[0x2821F7ED0]();
}

{
  return MEMORY[0x2821F7ED8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
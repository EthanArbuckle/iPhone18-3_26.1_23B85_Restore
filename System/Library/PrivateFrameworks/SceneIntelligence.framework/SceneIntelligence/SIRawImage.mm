@interface SIRawImage
- (BOOL)printAsMIMEAttachment:(id)a3;
- (BOOL)printPGMAsMIMEAttachment:(id)a3;
- (BOOL)saveToDataURL:(id)a3 metadataURL:(id)a4;
- (BOOL)saveToURL:(id)a3;
- (SIRawImage)initWithInfo:(id)a3 data:(id)a4;
- (SIRawImage)initWithInfo:(id)a3 mutableData:(id)a4;
- (__CVBuffer)createPixelBufferWithAttributes:(id)a3 zeroCopy:(BOOL)a4;
- (id)ToPGMImageAsBinary:(BOOL)a3;
- (id)asByteArray;
- (id)createSurfaceWithAllocator:(id)a3;
- (id)createSurfaceWithAllocator:(id)a3 stride:(unint64_t)a4;
- (id)debugQuickLookObject;
- (id)initFromCVPixelBuffer:(__CVBuffer *)a3;
- (id)initFromDataURL:(id)a3 metadataURL:(id)a4;
- (id)initFromSurface:(id)a3;
- (id)metadataAsJson;
- (id)reshapeWithWidth:(unint64_t)a3 height:(unint64_t)a4;
- (unint64_t)bytesPerElement;
- (unint64_t)bytesPerRow;
- (unint64_t)height;
- (unint64_t)width;
- (unsigned)pixelFormat;
- (void)getMutableBytesWithHandler:(id)a3;
@end

@implementation SIRawImage

- (id)initFromSurface:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 planes] < 2)
    {
      v8 = objc_opt_new();
      v9 = [v5 width];
      *[v8 width] = v9;
      v10 = [v5 height];
      *[v8 height] = v10;
      v11 = [v5 bytesPerElement];
      *[v8 bytesPerPixel] = v11;
      v12 = [v5 bytesPerRow];
      *[v8 bytesPerRow] = v12;
      v13 = [v5 allocationSize];
      *[v8 size] = v13;
      [v8 setPlanes:{objc_msgSend(v5, "planes")}];
      [v8 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
      [v8 setChannels:0];
      v14 = [v5 copyData];
      self = [(SIRawImage *)self initWithInfo:v8 data:v14];

      v7 = self;
      goto LABEL_10;
    }

    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v19 = 1025;
      v20 = 431;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Multiplanar images not yet supported ***", &v17, 0x12u);
    }
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v19 = 1025;
      v20 = 427;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** initializing Raw image from nil surface ***", &v17, 0x12u);
    }
  }

  v7 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SIRawImage)initWithInfo:(id)a3 mutableData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SIRawImage;
  v8 = [(SIRawImage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (!v6)
    {
      __assert_rtn("[SIRawImage initWithInfo:mutableData:]", "SIIOUtility.mm", 453, "info");
    }

    [(SIRawImage *)v8 setInfo:v6];
    [(SIRawImage *)v9 setData:v7];
    v10 = v9;
  }

  return v9;
}

- (SIRawImage)initWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = [a4 mutableCopy];
  v8 = [(SIRawImage *)self initWithInfo:v6 mutableData:v7];

  return v8;
}

- (id)initFromCVPixelBuffer:(__CVBuffer *)a3
{
  v18.receiver = self;
  v18.super_class = SIRawImage;
  v4 = [(SIRawImage *)&v18 init];
  v5 = [SIIOUtility_private ImageInfoFromCVPixelBuffer:a3];
  if (![v5 planes])
  {
    v16 = "info.planes > 0";
    v17 = 470;
    goto LABEL_17;
  }

  if ([v5 planes] == 1)
  {
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:{*objc_msgSend(v5, "size")}];
  }

  else
  {
    v8 = 0;
    for (i = 0; i < [v5 planes]; ++i)
    {
      v8 += *([v5 size] + 8 * i);
    }

    v7 = [MEMORY[0x277CBEB28] dataWithLength:v8];
    v10 = [v7 mutableBytes];
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    for (j = 0; j < [v5 planes]; ++j)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, j);
      v13 = *([v5 size] + 8 * j);
      if (v13)
      {
        memmove(v10, BaseAddressOfPlane, v13);
      }

      v10 += *([v5 size] + 8 * j);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }

  if (!v7)
  {
    v16 = "data";
    v17 = 495;
LABEL_17:
    __assert_rtn("[SIRawImage initFromCVPixelBuffer:]", "SIIOUtility.mm", v17, v16);
  }

  v14 = [(SIRawImage *)v4 initWithInfo:v5 data:v7];

  return v14;
}

- (id)initFromDataURL:(id)a3 metadataURL:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:0];
    v10 = v9;
    if (!v9)
    {
      v11 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v23 = 136381187;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v25 = 1025;
        v26 = 510;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not decode image metadata at '%@' ***", &v23, 0x1Cu);
      }

      v17 = 0;
      goto LABEL_23;
    }

    v11 = [v9 objectForKeyedSubscript:@"ImageInfo"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", 515, "[ imageInfoDictionary isKindOfClass:NSDictionary.class]");
    }

    v12 = [SIIOUtility_private ImageInfoFromDictionary:v11];
    if ([v12 planes] > 2)
    {
      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", 518, "imageInfo.planes < kSIRawImageInfoMaxPlanes && Excessive plane count.");
    }

    v13 = 0;
    for (i = 0; i < [v12 planes]; ++i)
    {
      v13 += *([v12 size] + 8 * i);
    }

    if (!v13)
    {
      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", 524, "totalSize > 0 && Image size must be positive.");
    }

    v15 = [MEMORY[0x277CBEB28] dataWithContentsOfURL:v6];
    v16 = v15;
    if (v15)
    {
      if (v13 == [v15 length])
      {
        if ([v12 pixelFormat])
        {
          self = [(SIRawImage *)self initWithInfo:v12 data:v16];
          v17 = self;
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v21 = "imageInfo.pixelFormat";
        v22 = 533;
      }

      else
      {
        v21 = "totalSize == imageData.length && Size from metadata does not match data size.  Invalid info file?";
        v22 = 532;
      }

      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", v22, v21);
    }

    v18 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 136381187;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v25 = 1025;
      v26 = 529;
      v27 = 2113;
      v28 = v6;
      _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load image data '%{private}@' ***", &v23, 0x1Cu);
    }

    v17 = 0;
    goto LABEL_22;
  }

  v10 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v23 = 136381187;
    v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v25 = 1025;
    v26 = 504;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load image metadata '%@' ***", &v23, 0x1Cu);
  }

  v17 = 0;
LABEL_24:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (__CVBuffer)createPixelBufferWithAttributes:(id)a3 zeroCopy:(BOOL)a4
{
  v4 = a4;
  v80[3] = *MEMORY[0x277D85DE8];
  v70 = a3;
  v6 = MEMORY[0x277CBEB38];
  v79[0] = *MEMORY[0x277CC4E30];
  v7 = MEMORY[0x277CCABB0];
  v8 = [(SIRawImage *)self info];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(v8, "pixelFormat")}];
  v80[0] = v9;
  v79[1] = *MEMORY[0x277CC4EC8];
  v10 = MEMORY[0x277CCABB0];
  v11 = [(SIRawImage *)self info];
  v12 = [v10 numberWithUnsignedLong:{*objc_msgSend(v11, "width")}];
  v80[1] = v12;
  v79[2] = *MEMORY[0x277CC4DD8];
  v13 = MEMORY[0x277CCABB0];
  v14 = [(SIRawImage *)self info];
  v15 = [v13 numberWithUnsignedLong:{*objc_msgSend(v14, "height")}];
  v80[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
  pixelBufferAttributes = [v6 dictionaryWithDictionary:v16];

  [(__CFDictionary *)pixelBufferAttributes addEntriesFromDictionary:v70];
  if (!v4)
  {
    texture = 0;
    v30 = [(SIRawImage *)self info];
    v31 = *[v30 width];
    v32 = [(SIRawImage *)self info];
    v33 = *[v32 height];
    v34 = [(SIRawImage *)self info];
    v35 = [v34 pixelFormat];
    v36 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v31, v33, v35, pixelBufferAttributes, &texture);

    if (v36)
    {
      v37 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v74 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v75 = 1025;
        v76 = 576;
        v77 = 1024;
        v78 = v36;
        _os_log_impl(&dword_21DE0D000, v37, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed call to CVPixelBufferCreate. Result was: %d ***", buf, 0x18u);
      }

      CVPixelBufferRelease(texture);
      goto LABEL_10;
    }

    if (!texture)
    {
      __assert_rtn("[SIRawImage createPixelBufferWithAttributes:zeroCopy:]", "SIIOUtility.mm", 580, "buffer");
    }

    v39 = [(SIRawImage *)self data];
    v40 = v39;
    v41 = [v39 bytes];

    CVPixelBufferLockBaseAddress(texture, 0);
    v42 = [(SIRawImage *)self info];
    v43 = [v42 planes] == 1;

    if (v43)
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(texture);
      v45 = [(SIRawImage *)self info];
      v46 = *[v45 bytesPerRow];

      Width = CVPixelBufferGetWidth(texture);
      v48 = [(SIRawImage *)self info];
      v49 = *[v48 width];

      Height = CVPixelBufferGetHeight(texture);
      v51 = [(SIRawImage *)self info];
      v52 = *[v51 height];

      BaseAddress = CVPixelBufferGetBaseAddress(texture);
      SIStridedCopy(v41, v49, v52, v46, BaseAddress, Width, Height, BytesPerRow);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v57 = [(SIRawImage *)self info];
        v58 = i < [v57 planes];

        if (!v58)
        {
          break;
        }

        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(texture, i);
        v60 = [(SIRawImage *)self info];
        v61 = *([v60 bytesPerRow] + 8 * i);

        WidthOfPlane = CVPixelBufferGetWidthOfPlane(texture, i);
        v63 = [(SIRawImage *)self info];
        v64 = *([v63 width] + 8 * i);

        HeightOfPlane = CVPixelBufferGetHeightOfPlane(texture, i);
        v66 = [(SIRawImage *)self info];
        v67 = *([v66 height] + 8 * i);

        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(texture, i);
        SIStridedCopy(v41, v64, v67, v61, BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
        v41 += v67 * v61;
      }
    }

    CVPixelBufferUnlockBaseAddress(texture, 0);
LABEL_15:
    v38 = texture;
    goto LABEL_16;
  }

  v17 = [(SIRawImage *)self data];
  texture = 0;
  v69 = [(SIRawImage *)self info];
  v18 = *[v69 width];
  v19 = [(SIRawImage *)self info];
  v20 = *[v19 height];
  v21 = [(SIRawImage *)self info];
  v22 = [v21 pixelFormat];
  v23 = [(SIRawImage *)self data];
  v24 = v23;
  v25 = [v23 bytes];
  v26 = [(SIRawImage *)self info];
  v27 = [v26 bytesPerRow];
  v28 = CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v18, v20, v22, v25, *v27, [SIRawImage createPixelBufferWithAttributes:zeroCopy:]::$_1::__invoke, v17, pixelBufferAttributes, &texture);

  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136381187;
    v74 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v75 = 1025;
    v76 = 565;
    v77 = 1024;
    v78 = v28;
    _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed call to CVPixelBufferCreateWithBytes. Result was: %d ***", buf, 0x18u);
  }

  CVPixelBufferRelease(texture);
LABEL_10:
  v38 = 0;
LABEL_16:

  v54 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)createSurfaceWithAllocator:(id)a3
{
  v3 = [(SIRawImage *)self createSurfaceWithAllocator:a3 stride:0];

  return v3;
}

- (id)createSurfaceWithAllocator:(id)a3 stride:(unint64_t)a4
{
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v7 = [(SIRawImage *)self info];
  v8 = *[v7 width];
  v9 = [(SIRawImage *)self info];
  v10 = *[v9 height];
  v11 = [(SIRawImage *)self info];
  v41 = [v6 allocateWithWidth:v8 height:v10 pixelFormat:objc_msgSend(v11 stride:"pixelFormat"), a4];

  v12 = [(SIRawImage *)self info];
  v13 = [v12 planes];

  if (v13 == 1)
  {
    v14 = v37[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke;
    v35[3] = &unk_27833C218;
    v35[4] = self;
    v35[5] = &v36;
    [v14 getMutableBytesWithHandler:v35];
  }

  else
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v15 = [(SIRawImage *)self data];
    v32 = v6;
    v16 = [v15 bytes];

    v17 = 0;
    v34[3] = v16;
    while (1)
    {
      v18 = [(SIRawImage *)self info];
      v19 = [v18 planes];

      if (v17 >= v19)
      {
        break;
      }

      v20 = [v37[5] bytesPerRowOfPlane:v17];
      v21 = [(SIRawImage *)self info];
      v22 = *([v21 bytesPerRow] + 8 * v17);

      v23 = [v37[5] widthOfPlane:v17];
      v24 = [(SIRawImage *)self info];
      v25 = *([v24 width] + 8 * v17);

      v26 = [v37[5] heightOfPlane:v17];
      v27 = [(SIRawImage *)self info];
      v28 = *([v27 height] + 8 * v17);

      v29 = v37[5];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke_2;
      v33[3] = &unk_27833C240;
      v33[4] = v34;
      v33[5] = v25;
      v33[6] = v28;
      v33[7] = v22;
      v33[8] = v23;
      v33[9] = v26;
      v33[10] = v20;
      [v29 getMutableBytesOfPlane:v17++ withHandler:v33];
    }

    _Block_object_dispose(v34, 8);
    v6 = v32;
  }

  v30 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v30;
}

void __48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v9 = [*(a1 + 32) data];
  v4 = [v9 bytes];

  v10 = [*(a1 + 32) info];
  v5 = *[v10 width];
  v6 = [*(a1 + 32) info];
  v7 = *[v6 height];
  v8 = [*(a1 + 32) info];
  SIStridedCopy(v4, v5, v7, *[v8 bytesPerRow], a2, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "width"), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "height"), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "bytesPerRow"));
}

char *__48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke_2(void *a1, unsigned __int8 *__dst)
{
  result = SIStridedCopy(*(*(a1[4] + 8) + 24), a1[5], a1[6], a1[7], __dst, a1[8], a1[9], a1[10]);
  *(*(a1[4] + 8) + 24) += a1[7] * a1[6];
  return result;
}

- (id)metadataAsJson
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [(SIRawImage *)self info];
  v3 = [SIIOUtility_private DictionaryFromImageInfo:v2];

  v8 = @"ImageInfo";
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:0];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)saveToDataURL:(id)a3 metadataURL:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SIRawImage *)self data];
  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[SIRawImage saveToDataURL:metadataURL:]", "SIIOUtility.mm", 661, "data");
  }

  if (([v8 writeToURL:v6 atomically:0] & 1) == 0)
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v19 = 1025;
      v20 = 663;
      v21 = 2112;
      v22 = v6;
      v14 = " %{private}s:%{private}d *** Error saving raw image: %@ ***";
LABEL_9:
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, v14, &v17, 0x1Cu);
    }

LABEL_10:

    v12 = 0;
    goto LABEL_11;
  }

  v10 = [(SIRawImage *)self metadataAsJson];
  v11 = [v10 writeToURL:v7 atomically:0];

  if ((v11 & 1) == 0)
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v19 = 1025;
      v20 = 668;
      v21 = 2112;
      v22 = v7;
      v14 = " %{private}s:%{private}d *** Error saving image matadata: %@ ***";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v12 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)saveToURL:(id)a3
{
  v4 = a3;
  v5 = [v4 URLByAppendingPathExtension:@"json"];
  LOBYTE(self) = [(SIRawImage *)self saveToDataURL:v4 metadataURL:v5];

  return self;
}

- (BOOL)printAsMIMEAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingPathExtension:@"json"];
  v6 = [(SIRawImage *)self data];
  PrintMIMEAttachment(v6, v4, &cfstr_ApplicationOct.isa);

  v7 = [(SIRawImage *)self metadataAsJson];
  PrintMIMEAttachment(v7, v5, &cfstr_ApplicationJso.isa);

  return 1;
}

- (BOOL)printPGMAsMIMEAttachment:(id)a3
{
  v4 = a3;
  v5 = [(SIRawImage *)self ToPGMImageAsBinary:1];
  PrintMIMEAttachment(v5, v4, &cfstr_ApplicationOct.isa);

  return 1;
}

- (id)debugQuickLookObject
{
  v3 = SISurfaceGetDebugQuickLookObject(self, 0);
  if (!v3)
  {
    v4 = objc_alloc_init(SIIOSurfaceAllocator);
    v5 = MEMORY[0x277CBF758];
    v6 = [(SIRawImage *)self createSurfaceWithAllocator:v4];
    v3 = [v5 imageWithIOSurface:{objc_msgSend(v6, "ioSurface")}];
  }

  return v3;
}

- (id)ToPGMImageAsBinary:(BOOL)a3
{
  v74 = a3;
  v87 = *MEMORY[0x277D85DE8];
  v3 = [(SIRawImage *)self info];
  v4 = [v3 pixelFormat];

  if (v4 <= 1278226535)
  {
    if (v4 > 1278226487)
    {
      if (v4 != 1278226488)
      {
        if (v4 == 1278226534)
        {
          v6 = [(SIRawImage *)self info];
          v9 = 0;
          v10 = 0;
          v70 = *[v6 bytesPerRow];
          v76 = 4;
          v11 = 1;
          v12 = 16;
          v13 = 6;
          v78 = 0xFFFFLL;
          v72 = 1;
          v15 = 4;
          goto LABEL_26;
        }

        goto LABEL_76;
      }

      v6 = [(SIRawImage *)self info];
      v9 = 0;
      v10 = 0;
      v70 = *[v6 bytesPerRow];
      v76 = 1;
      v12 = 8;
      v13 = 4;
      v11 = 1;
      v72 = 1;
    }

    else
    {
      if (v4 != 24)
      {
        if (v4 != 1111970369)
        {
          goto LABEL_76;
        }

        v6 = [(SIRawImage *)self info];
        v72 = 0;
        v70 = *[v6 bytesPerRow];
        v9 = 1;
        v12 = 8;
        v11 = 3;
        v76 = 4;
        v15 = 1;
        v10 = 1;
LABEL_22:
        v78 = 1;
        v13 = 4;
        goto LABEL_26;
      }

      v6 = [(SIRawImage *)self info];
      v72 = 0;
      v10 = 0;
      v70 = *[v6 bytesPerRow];
      v9 = 1;
      v12 = 8;
      v13 = 4;
      v76 = 3;
      v11 = 3;
    }

    v15 = 1;
LABEL_20:
    v78 = 1;
    goto LABEL_26;
  }

  if (v4 <= 1380401728)
  {
    if (v4 == 1278226536)
    {
      v6 = [(SIRawImage *)self info];
      v9 = 0;
      v10 = 0;
      v70 = *[v6 bytesPerRow];
      v15 = 3;
      v11 = 1;
      v12 = 16;
      v13 = 6;
      v78 = 0xFFFFLL;
      v76 = 2;
      v72 = 1;
      goto LABEL_26;
    }

    if (v4 != 1278226742)
    {
      goto LABEL_76;
    }

    v6 = [(SIRawImage *)self info];
    v9 = 0;
    v10 = 0;
    v70 = *[v6 bytesPerRow];
    v76 = 2;
    v11 = 1;
    v12 = 16;
    v13 = 6;
    v72 = 1;
    v15 = 2;
    goto LABEL_20;
  }

  switch(v4)
  {
    case 1380401729:
      v6 = [(SIRawImage *)self info];
      v72 = 0;
      v10 = 0;
      v70 = *[v6 bytesPerRow];
      v9 = 1;
      v12 = 8;
      v11 = 3;
      v76 = 4;
      v15 = 1;
      goto LABEL_22;
    case 1380411457:
      v6 = [(SIRawImage *)self info];
      v72 = 0;
      v10 = 0;
      v70 = *[v6 bytesPerRow];
      v11 = 3;
      v12 = 16;
      v13 = 6;
      v78 = 0xFFFFLL;
      v9 = 2;
      v14 = 8;
      goto LABEL_25;
    case 1919365992:
      v5 = [(SIRawImage *)self info];
      v70 = *[v5 bytesPerRow];

      v6 = [(SIRawImage *)self info];
      v7 = *[v6 bytesPerRow];
      v8 = [(SIRawImage *)self info];
      v9 = *[v8 height] * v7;

      v72 = 0;
      v10 = 0;
      v11 = 3;
      v12 = 16;
      v13 = 6;
      v78 = 0xFFFFLL;
      v14 = 2;
LABEL_25:
      v76 = v14;
      v15 = 3;
LABEL_26:

      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __33__SIRawImage_ToPGMImageAsBinary___block_invoke;
      v81[3] = &__block_descriptor_41_e15___NSString_8__0l;
      v81[4] = v11;
      v82 = v74;
      v68 = __33__SIRawImage_ToPGMImageAsBinary___block_invoke(v81);
      if (!v68)
      {
        v44 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v84 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
          v85 = 1025;
          v86 = 868;
          _os_log_impl(&dword_21DE0D000, v44, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unknown error magic bytes for PGM. ***", buf, 0x12u);
        }

        v22 = 0;
LABEL_72:

        v62 = v68;
        goto LABEL_73;
      }

      if (v70)
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          v80[4] = v12;
          v80[5] = MEMORY[0x277D85DD0];
          v80[6] = 3221225472;
          v80[7] = __33__SIRawImage_ToPGMImageAsBinary___block_invoke_135;
          v80[8] = &__block_descriptor_40_e5_i8__0l;
          v80[9] = v12;
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __33__SIRawImage_ToPGMImageAsBinary___block_invoke_2;
          v80[3] = &__block_descriptor_40_e5_i8__0l;
          v16 = __33__SIRawImage_ToPGMImageAsBinary___block_invoke_2(v80);
          v17 = [(SIRawImage *)self info];
          v18 = *[v17 width];

          v19 = [(SIRawImage *)self info];
          v20 = *[v19 height];

          if (v74)
          {
            v13 = 1;
          }

          v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%ld %ld\n%ld\n", v68, v18, v20, v16];
          v21 = ((v12 * v13) >> 3) * v11 * v18 * v20 + 32;
          if (v74)
          {
            v22 = [MEMORY[0x277CBEB28] dataWithCapacity:v21];
            v23 = [v67 dataUsingEncoding:4];
            [v22 appendData:v23];

            v24 = [(SIRawImage *)self data];
            v25 = v24;
            v69 = [v24 bytes];

            v26 = 0;
            v73 = v72 & v10;
            v27 = v78;
            v28 = v12 >> 3;
            while (1)
            {
              v29 = [(SIRawImage *)self info];
              v71 = v26;
              v30 = v26 < *[v29 height];

              if (!v30)
              {
                break;
              }

              for (i = 0; ; ++i)
              {
                v32 = [(SIRawImage *)self info];
                v33 = i < *[v32 width];

                if (!v33)
                {
                  break;
                }

                if (v73)
                {
                  __assert_rtn("[SIRawImage ToPGMImageAsBinary:]", "SIIOUtility.mm", 921, "channels == 3");
                }

                v34 = 0;
                v35 = 2;
                do
                {
                  if (v10)
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = v34;
                  }

                  v37 = (v69 + v71 * v70 + i * v76 + v36 * v9);
                  if (v15 == 1)
                  {
                    [v22 appendBytes:v37 length:v28];
                  }

                  else if (v15 == 2)
                  {
                    *buf = bswap32(*v37 * v78) >> 16;
                    [v22 appendBytes:buf length:v28];
                  }

                  else
                  {
                    if (v15 == 3)
                    {
                      _H0 = *v37;
                      __asm { FCVT            S0, H0 }

                      *buf = __rev16((v27 * _S0));
                    }

                    else
                    {
                      *buf = __rev16((*v37 * v27));
                    }

                    [v22 appendBytes:buf length:v28];
                  }

                  ++v34;
                  --v35;
                }

                while (v11 != v34);
              }

              v26 = v71 + 1;
            }

LABEL_71:
            v44 = v67;
            goto LABEL_72;
          }

          v45 = [MEMORY[0x277CCAB68] stringWithCapacity:v21];
          [v45 appendString:v67];
          v46 = [(SIRawImage *)self data];
          v47 = v46;
          v75 = [v46 bytes];

          v48 = 0;
          v49 = v78;
          while (1)
          {
            v50 = [(SIRawImage *)self info];
            v79 = v48;
            v51 = v48 < *[v50 height];

            if (!v51)
            {
              v22 = [v45 dataUsingEncoding:4];

              goto LABEL_71;
            }

            v52 = 0;
            v53 = v75;
LABEL_58:
            v54 = [(SIRawImage *)self info];
            v55 = v52 < *[v54 width];

            v56 = v53;
            v57 = v11;
            if (v55)
            {
              break;
            }

            [v45 appendFormat:@"\n "];
            v48 = v79 + 1;
            v75 += v70;
          }

          while (v15 != 3)
          {
            if (v15 == 2)
            {
              v58 = *v56;
            }

            else
            {
              if (v15 != 1)
              {
                v61 = *v56 * v49;
                goto LABEL_66;
              }

              v58 = *v56;
            }

LABEL_67:
            [v45 appendFormat:@"%d ", v58];
            v56 = (v56 + v9);
            if (!--v57)
            {
              [v45 appendFormat:@" "];
              ++v52;
              v53 = (v53 + v76);
              goto LABEL_58;
            }
          }

          _H0 = *v56;
          __asm { FCVT            S0, H0 }

          v61 = v49 * _S0;
LABEL_66:
          v58 = v61;
          goto LABEL_67;
        }

        v65 = "channelStride > -1";
        v66 = 875;
      }

      else
      {
        v65 = "rowStride > 0";
        v66 = 873;
      }

      __assert_rtn("[SIRawImage ToPGMImageAsBinary:]", "SIIOUtility.mm", v66, v65);
  }

LABEL_76:
  v62 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v84 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v85 = 1025;
    v86 = 830;
    _os_log_impl(&dword_21DE0D000, v62, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported pixel format for converting to PGM. ***", buf, 0x12u);
  }

  v22 = 0;
LABEL_73:

  v63 = *MEMORY[0x277D85DE8];

  return v22;
}

__CFString *__33__SIRawImage_ToPGMImageAsBinary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    v3 = *(a1 + 40);
    v4 = @"P3";
    v5 = @"P6";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 40);
    v4 = @"P2";
    v5 = @"P5";
LABEL_5:
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;

    return v7;
  }

  v7 = 0;

  return v7;
}

uint64_t __33__SIRawImage_ToPGMImageAsBinary___block_invoke_135(uint64_t a1)
{
  if (*(a1 + 32) == 8)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

uint64_t __33__SIRawImage_ToPGMImageAsBinary___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 == 8)
  {
    result = 255;
  }

  else if (v1 == 16)
  {
    result = 0xFFFFLL;
  }

  else
  {
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136380931;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v7 = 1025;
      v8 = 896;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unknown bitDepth, cannot determine maximum value ***", &v5, 0x12u);
    }

    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)asByteArray
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(SIRawImage *)self info];
  v4 = [v3 planes];

  if (v4 < 2)
  {
    v7 = objc_opt_new();
    v8 = [(SIRawImage *)self info];
    v9 = *[v8 height];
    v10 = [(SIRawImage *)self info];
    v11 = *[v10 bytesPerRow];
    *[v7 width] = v11 * v9;

    v12 = *[v7 width];
    *[v7 size] = v12;
    *[v7 height] = 1;
    [v7 setPlanes:1];
    [v7 setChannels:1];
    *[v7 bytesPerPixel] = 1;
    v13 = *[v7 width];
    *[v7 bytesPerRow] = v13;
    v14 = [SIRawImage alloc];
    v15 = [(SIRawImage *)self data];
    v6 = [(SIRawImage *)v14 initWithInfo:v7 data:v15];
  }

  else
  {
    v5 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v18 = 136380931;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v20 = 1025;
      v21 = 991;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Representing multiplanar images as byte array is not supported, ***", &v18, 0x12u);
    }

    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)reshapeWithWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [(SIRawImage *)self info];
  v8 = [v7 planes];

  if (v8 == 1)
  {
    v9 = [(SIRawImage *)self info];
    v10 = *[v9 width];
    v11 = [(SIRawImage *)self info];
    v12 = *[v11 bytesPerPixel];
    v13 = [(SIRawImage *)self info];
    v14 = v12 * v10;
    v15 = *[v13 bytesPerRow];

    if (v14 == v15)
    {
      v16 = [(SIRawImage *)self width];
      if ([(SIRawImage *)self height]* v16 == a4 * a3)
      {
        v17 = [SIRawImageInfo alloc];
        v18 = [(SIRawImage *)self info];
        v19 = [(SIRawImageInfo *)v17 initWithInfo:v18];

        *[(SIRawImageInfo *)v19 width]= a3;
        *[(SIRawImageInfo *)v19 height]= a4;
        v20 = *[(SIRawImageInfo *)v19 bytesPerPixel];
        *[(SIRawImageInfo *)v19 bytesPerRow]= v20 * a3;
        v21 = [SIRawImage alloc];
        v22 = [(SIRawImage *)self data];
        v23 = [(SIRawImage *)v21 initWithInfo:v19 mutableData:v22];

        goto LABEL_14;
      }

      v24 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = 136381955;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v29 = 1025;
        v30 = 1039;
        v31 = 2048;
        v32 = [(SIRawImage *)self width];
        v33 = 2048;
        v34 = [(SIRawImage *)self height];
        v35 = 2048;
        v36 = a3;
        v37 = 2048;
        v38 = a4;
        _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Incompatible reshape dimensions.  Source: (%ld, %ld). Destination: (%ld, %ld) ***", &v27, 0x3Au);
      }
    }

    else
    {
      v24 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = 136380931;
        v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v29 = 1025;
        v30 = 1033;
        _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** To reshape, data must be packed (no excess stride) ***", &v27, 0x12u);
      }
    }
  }

  else
  {
    v24 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 136380931;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v29 = 1025;
      v30 = 1029;
      _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Only single-planar images supported. ***", &v27, 0x12u);
    }
  }

  v23 = 0;
LABEL_14:
  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (unsigned)pixelFormat
{
  v2 = [(SIRawImage *)self info];
  v3 = [v2 pixelFormat];

  return v3;
}

- (unint64_t)width
{
  v2 = [(SIRawImage *)self info];
  v3 = *[v2 width];

  return v3;
}

- (unint64_t)height
{
  v2 = [(SIRawImage *)self info];
  v3 = *[v2 height];

  return v3;
}

- (unint64_t)bytesPerRow
{
  v2 = [(SIRawImage *)self info];
  v3 = *[v2 bytesPerRow];

  return v3;
}

- (unint64_t)bytesPerElement
{
  v2 = [(SIRawImage *)self info];
  v3 = *[v2 bytesPerPixel];

  return v3;
}

- (void)getMutableBytesWithHandler:(id)a3
{
  v5 = a3;
  v4 = [(SIRawImage *)self data];
  v5[2](v5, [v4 mutableBytes]);
}

@end
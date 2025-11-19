@interface PVInstructionGraphImageSourceNode
+ (void)purgeBitmapCache:(BOOL)a3;
- (HGRef<HGNode>)applyGainMapToGraph:(HGRef<HGNode>)a3 gainMap:(HGRef<HGBitmap>)a4 withHeadroom:(float)a5;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)x2_0 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4;
- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4;
- (PVInstructionGraphImageSourceNode)initWithURL:(id)a3 animation:(id)a4 isExporting:(BOOL)a5 imageDelegate:(id)a6 renderingIntent:(int)a7 fillMode:(int)a8;
- (PVInstructionGraphImageSourceNode)initWithURL:(id)a3 key:(id)a4 transform:(CGAffineTransform *)a5 isExporting:(BOOL)a6 imageDelegate:(id)a7 renderingIntent:(int)a8;
- (PVInstructionGraphImageSourceNode)initWithURL:(id)a3 key:(id)a4 transform:(CGAffineTransform *)a5 isExporting:(BOOL)a6 imageDelegate:(id)a7 renderingIntent:(int)a8 fillMode:(int)a9;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3;
- (id)instructionGraphNodeDescription;
- (id)loadImageTiles:(CGImage *)a3 size:(CGSize)a4 colorSpace:(id)a5 imageProperties:(PVImageProperties *)a6;
- (id)newCVPixelBufferCacheItemForGainMapWithColorSpace:(id)a3;
- (id)newCVPixelBufferCacheItemForImage:(HGRef<PVInstructionGraphContext>)a3;
- (void)dealloc;
- (void)enableHDRGainMap:(BOOL)a3;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4;
- (void)setHDRGainMapHeadroom:(float)a3;
@end

@implementation PVInstructionGraphImageSourceNode

+ (void)purgeBitmapCache:(BOOL)a3
{
  v3 = a3;
  [sInputBitmapCacheLock lock];
  [sInputBitmapCache purge:v3];
  [sInputBitmapCacheLock unlock];
  if (v3)
  {
    v4 = sPixelBufferCache;

    [v4 removeAllObjects];
  }
}

- (void)enableHDRGainMap:(BOOL)a3
{
  LOBYTE(self->m_renderManager.m_Obj) = a3;
  if (a3)
  {
    v6 = [(PVInstructionGraphImageSourceNode *)self key];
    v4 = [v6 stringByAppendingString:@"_gainmap"];
    v5 = *&self->_useHDRGainMap;
    *&self->_useHDRGainMap = v4;
  }
}

- (void)setHDRGainMapHeadroom:(float)a3
{
  v3 = a3;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 >= 8.0)
  {
    v3 = 8.0;
  }

  v4 = v3;
  *(&self->m_renderManager.m_Obj + 1) = v4;
}

- (PVInstructionGraphImageSourceNode)initWithURL:(id)a3 key:(id)a4 transform:(CGAffineTransform *)a5 isExporting:(BOOL)a6 imageDelegate:(id)a7 renderingIntent:(int)a8
{
  v8 = *&a5->c;
  v11[0] = *&a5->a;
  v11[1] = v8;
  v11[2] = *&a5->tx;
  LODWORD(v10) = 1;
  return [(PVInstructionGraphImageSourceNode *)self initWithURL:a3 key:a4 transform:v11 isExporting:a6 imageDelegate:a7 renderingIntent:*&a8 fillMode:v10];
}

- (PVInstructionGraphImageSourceNode)initWithURL:(id)a3 key:(id)a4 transform:(CGAffineTransform *)a5 isExporting:(BOOL)a6 imageDelegate:(id)a7 renderingIntent:(int)a8 fillMode:(int)a9
{
  v9 = *&a8;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v30.receiver = self;
  v30.super_class = PVInstructionGraphImageSourceNode;
  v18 = [(PVInstructionGraphSourceNode *)&v30 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_18;
  }

  [(PVInstructionGraphImageSourceNode *)v18 setUrl:v15];
  [(PVInstructionGraphImageSourceNode *)v19 setKey:v16];
  v20 = *&a5->c;
  v29[0] = *&a5->a;
  v29[1] = v20;
  v29[2] = *&a5->tx;
  [(PVInstructionGraphSourceNode *)v19 setTransform:v29];
  [(PVInstructionGraphImageSourceNode *)v19 setImageDelegate:v17];
  [(PVInstructionGraphImageSourceNode *)v19 setRenderingIntent:v9];
  [(PVInstructionGraphImageSourceNode *)v19 setUseAnimationInfo:0];
  [(PVInstructionGraphSourceNode *)v19 setIsOverlayTrack:0];
  [(PVInstructionGraphImageSourceNode *)v19 setFillMode:a9];
  LOBYTE(v19->m_renderManager.m_Obj) = 0;
  HIDWORD(v19->m_renderManager.m_Obj) = 1067576197;
  v21 = *&v19->_useHDRGainMap;
  *&v19->_useHDRGainMap = 0;

  if ([PVInstructionGraphImageSourceNode initWithURL:key:transform:isExporting:imageDelegate:renderingIntent:fillMode:]::once != -1)
  {
    [PVInstructionGraphImageSourceNode initWithURL:key:transform:isExporting:imageDelegate:renderingIntent:fillMode:];
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (+[PVDeviceCharacteristics architectureType]<= 2)
    {
      v22 = 3;
    }

    else
    {
      v22 = 6;
    }

    goto LABEL_9;
  }

  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_4:
  v22 = 4;
LABEL_9:
  [sInputBitmapCacheLock lock];
  v23 = [sInputBitmapCache objectForKey:v19->_url];
  v24 = v23;
  if (v23)
  {
    [v23 updateLastUsedTime];
  }

  [sInputBitmapCache setCountLimit:v22];
  [sInputBitmapCacheLock unlock];
  CachedImageInfo::SetSourceNode(&v19->super._transform.ty, v19);
  PVRenderManager::INSTANCE(v25, v29);
  lock = v19->m_cachedImageInfo._lock;
  v27 = *&v29[0];
  if (lock == *&v29[0])
  {
    if (lock)
    {
      (*(**&v29[0] + 24))();
    }
  }

  else
  {
    if (lock)
    {
      (*(lock->var0 + 3))(v19->m_cachedImageInfo._lock);
      v27 = *&v29[0];
    }

    v19->m_cachedImageInfo._lock = v27;
  }

LABEL_18:
  return v19;
}

void __114__PVInstructionGraphImageSourceNode_initWithURL_key_transform_isExporting_imageDelegate_renderingIntent_fillMode___block_invoke()
{
  v0 = objc_alloc_init(PVInputBitmapCache);
  v1 = sInputBitmapCache;
  sInputBitmapCache = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = sPixelBufferCache;
  sPixelBufferCache = v2;

  v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v5 = sImageLoadLock;
  sImageLoadLock = v4;

  v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v7 = sInputBitmapCacheLock;
  sInputBitmapCacheLock = v6;

  v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v9 = sExportRenderAndLoadLock;
  sExportRenderAndLoadLock = v8;
}

- (PVInstructionGraphImageSourceNode)initWithURL:(id)a3 animation:(id)a4 isExporting:(BOOL)a5 imageDelegate:(id)a6 renderingIntent:(int)a7 fillMode:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v35.receiver = self;
  v35.super_class = PVInstructionGraphImageSourceNode;
  v17 = [(PVInstructionGraphSourceNode *)&v35 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_18;
  }

  v19 = *(MEMORY[0x277CBF2C0] + 16);
  v32 = *MEMORY[0x277CBF2C0];
  v33 = v19;
  v34 = *(MEMORY[0x277CBF2C0] + 32);
  [(PVInstructionGraphImageSourceNode *)v17 setUrl:v14];
  v20 = [v14 path];
  v21 = [v20 stringByAppendingFormat:@"_ri%d", v9];
  [(PVInstructionGraphImageSourceNode *)v18 setKey:v21];

  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  [(PVInstructionGraphSourceNode *)v18 setTransform:v31];
  [(PVInstructionGraphSourceNode *)v18 setTransformAnimation:v15];
  [(PVInstructionGraphImageSourceNode *)v18 setImageDelegate:v16];
  [(PVInstructionGraphImageSourceNode *)v18 setRenderingIntent:v9];
  [(PVInstructionGraphImageSourceNode *)v18 setUseAnimationInfo:1];
  [(PVInstructionGraphSourceNode *)v18 setIsOverlayTrack:0];
  [(PVInstructionGraphImageSourceNode *)v18 setFillMode:v8];
  LOBYTE(v18->m_renderManager.m_Obj) = 0;
  HIDWORD(v18->m_renderManager.m_Obj) = 1067576197;
  v22 = *&v18->_useHDRGainMap;
  *&v18->_useHDRGainMap = 0;

  if ([PVInstructionGraphImageSourceNode initWithURL:animation:isExporting:imageDelegate:renderingIntent:fillMode:]::once != -1)
  {
    [PVInstructionGraphImageSourceNode initWithURL:animation:isExporting:imageDelegate:renderingIntent:fillMode:];
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (+[PVDeviceCharacteristics architectureType]<= 2)
    {
      v23 = 3;
    }

    else
    {
      v23 = 6;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_4:
  v23 = 4;
LABEL_9:
  [sInputBitmapCacheLock lock];
  v24 = sInputBitmapCache;
  v25 = [(PVInstructionGraphImageSourceNode *)v18 key];
  v26 = [v24 objectForKey:v25];

  if (v26)
  {
    [v26 updateLastUsedTime];
  }

  [sInputBitmapCache setCountLimit:v23];
  [sInputBitmapCacheLock unlock];
  CachedImageInfo::SetSourceNode(&v18->super._transform.ty, v18);
  PVRenderManager::INSTANCE(v27, v31);
  lock = v18->m_cachedImageInfo._lock;
  v29 = *&v31[0];
  if (lock == *&v31[0])
  {
    if (lock)
    {
      (*(**&v31[0] + 24))();
    }
  }

  else
  {
    if (lock)
    {
      (*(lock->var0 + 3))(v18->m_cachedImageInfo._lock);
      v29 = *&v31[0];
    }

    v18->m_cachedImageInfo._lock = v29;
  }

LABEL_18:
  return v18;
}

void __110__PVInstructionGraphImageSourceNode_initWithURL_animation_isExporting_imageDelegate_renderingIntent_fillMode___block_invoke()
{
  v0 = objc_alloc_init(PVInputBitmapCache);
  v1 = sInputBitmapCache;
  sInputBitmapCache = v0;

  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = sPixelBufferCache;
  sPixelBufferCache = v2;

  v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v5 = sImageLoadLock;
  sImageLoadLock = v4;

  v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v7 = sInputBitmapCacheLock;
  sInputBitmapCacheLock = v6;

  v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v9 = sExportRenderAndLoadLock;
  sExportRenderAndLoadLock = v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PVInstructionGraphImageSourceNode;
  [(PVInstructionGraphImageSourceNode *)&v2 dealloc];
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4
{
  v6 = a4;
  v7 = [(PVInstructionGraphImageSourceNode *)self key];
  if (HIDWORD(self->_keyHDRGainMap) == 1)
  {
    [sExportRenderAndLoadLock lock];
  }

  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  [sInputBitmapCacheLock lock];
  v10 = [sInputBitmapCache objectForKey:v7];
  [sInputBitmapCacheLock unlock];
  if (!v10)
  {
    [sImageLoadLock lock];
    [sInputBitmapCacheLock lock];
    v11 = [sInputBitmapCache objectForKey:v7];
    [sInputBitmapCacheLock unlock];
    if (v11)
    {
      LOBYTE(v12) = 0;
      goto LABEL_24;
    }

    v12 = [sPixelBufferCache objectForKey:v7];
    if (!v12)
    {
      v13 = *a3.m_Obj;
      v28 = v13;
      if (v13)
      {
        (*(*v13 + 16))(v13);
      }

      v12 = [(PVInstructionGraphImageSourceNode *)self newCVPixelBufferCacheItemForImage:&v28];
      if (v28)
      {
        (*(*v28 + 24))(v28);
      }

      if (v7)
      {
        if (v12)
        {
          [sPixelBufferCache setObject:v12 forKey:v7];
          v14 = atomic_load(HGLogger::_enabled);
          if (v14)
          {
            v15 = [v7 UTF8String];
            HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 2, "PVIGImageSourceNode (%p): loadIGNode: Created CVPixel Buffer for key: %s\n", v16, v17, self, v15);
          }
        }
      }

      if (LOBYTE(self->m_renderManager.m_Obj) == 1 && *&self->_useHDRGainMap && v12)
      {
        v18 = [v12 colorSpace];
        v27 = [(PVInstructionGraphImageSourceNode *)self newCVPixelBufferCacheItemForGainMapWithColorSpace:v18];

        if (v27)
        {
          [sPixelBufferCache setObject:v27 forKey:*&self->_useHDRGainMap];
          v19 = atomic_load(HGLogger::_enabled);
          if (v19)
          {
            v20 = [*&self->_useHDRGainMap UTF8String];
            HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 2, "PVIGImageSourceNode (%p): loadIGNode: Created GainMap CVPixelBuffer for key: %s\n", v21, v22, self, v20);
          }
        }
      }

      else if (!v12)
      {
        goto LABEL_24;
      }
    }

    [v12 fullSize];
    v8 = v23;
    v9 = v24;

    LOBYTE(v12) = 1;
LABEL_24:
    [sImageLoadLock unlock];
    v10 = v11;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  [v10 fullSize];
  v8 = v25;
  v9 = v26;
  LOBYTE(v12) = 1;
  v11 = v10;
LABEL_26:
  v29.width = v8;
  v29.height = v9;
  CachedImageInfo::Init(&self->super._transform.ty, v12, v29);
  if (HIDWORD(self->_keyHDRGainMap) == 1)
  {
    [sExportRenderAndLoadLock unlock];
  }
}

- (HGRef<HGNode>)applyGainMapToGraph:(HGRef<HGNode>)a3 gainMap:(HGRef<HGBitmap>)a4 withHeadroom:(float)a5
{
  v7 = v5;
  v8 = *a4.m_Obj;
  if (*a4.m_Obj)
  {
    v11 = self;
    v12 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v12, v8);
    v13 = *&v11->m_cachedImageInfo.cached;
    width = v11->m_cachedImageInfo.size.width;
    v15 = HGObject::operator new(0x1D0uLL);
    v15[27] = 0u;
    v15[28] = 0u;
    v15[25] = 0u;
    v15[26] = 0u;
    v15[23] = 0u;
    v15[24] = 0u;
    v15[21] = 0u;
    v15[22] = 0u;
    v15[19] = 0u;
    v15[20] = 0u;
    v15[17] = 0u;
    v15[18] = 0u;
    v15[15] = 0u;
    v15[16] = 0u;
    v15[13] = 0u;
    v15[14] = 0u;
    v15[11] = 0u;
    v15[12] = 0u;
    v15[9] = 0u;
    v15[10] = 0u;
    v15[7] = 0u;
    v15[8] = 0u;
    v15[5] = 0u;
    v15[6] = 0u;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[1] = 0u;
    v15[2] = 0u;
    *v15 = 0u;
    HGNode::HGNode(v15);
    *v15 = &unk_2872E01A0;
    *(v15 + 51) = 0;
    *(v15 + 104) = 1065353216;
    *(v15 + 424) = 0u;
    *(v15 + 440) = 0u;
    off_2872E0218(v15, 0, *a3.var0);
    (*(*v15 + 120))(v15, 1, v12);
    (*(*v15 + 96))(v15, 0, a5, 0.0, 0.0, 0.0);
    v16 = v13;
    v17 = width;
    (*(*v15 + 96))(v15, 1, v16, v17, 0.0, 0.0);
    self = (*(*v15 + 96))(v15, 2, (*(*a4.m_Obj + 28) - *(*a4.m_Obj + 20)), (*(*a4.m_Obj + 32) - *(*a4.m_Obj + 24)), 0.0, 0.0);
    *v7 = v15;
    if (v12)
    {
      return (*(*v12 + 24))(v12);
    }
  }

  else
  {
    *v5 = *a3.var0;
    *a3.var0 = 0;
  }

  return self;
}

- (id)newCVPixelBufferCacheItemForGainMapWithColorSpace:(id)a3
{
  v4 = a3;
  if (self->_key && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [(NSString *)self->_key hdrGainMapImageForURL:*&self->_fillMode renderingIntent:HIDWORD(self->_keyHDRGainMap)], (v6 = v5) != 0))
  {
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v6);
    v13 = [v4 cgColorSpace];
    v11 = 0x842475241;
    v12 = 8194;
    v9 = [(PVInstructionGraphImageSourceNode *)self loadImageTiles:v6 size:v4 colorSpace:&v11 imageProperties:Width, Height];
    CGImageRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newCVPixelBufferCacheItemForImage:(HGRef<PVInstructionGraphContext>)a3
{
  v4 = [(NSString *)self->_key imageForURL:*&self->_fillMode renderingIntent:HIDWORD(self->_keyHDRGainMap)];
  v5 = v4;
  if (v4)
  {
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v5);
  }

  else
  {
    Width = 0.0;
    Height = 0.0;
  }

  v19.width = Width;
  v19.height = Height;
  CachedImageInfo::Init(&self->super._transform.ty, v5 != 0, v19);
  if (!v5)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(v5);
  v9 = [PVColorSpace pvColorSpaceFromCGColorSpace:ColorSpace];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    if (ColorSpace && CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      v12 = +[PVColorSpace p3d65GammaColorSpace];
    }

    else
    {
      v12 = +[PVColorSpace sRGBColorSpace];
    }

    v10 = v12;
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v5, [(PVColorSpace *)v12 cgColorSpace]);
    if (CopyWithColorSpace)
    {
      CGImageRelease(v5);
      ColorSpace = CGImageGetColorSpace(CopyWithColorSpace);
      v5 = CopyWithColorSpace;
    }
  }

  if ([(PVColorSpace *)v10 isExtendedSRGBColorSpace])
  {
    v14 = [PVColorSpace pvColorSpaceFromCGColorSpace:ColorSpace];
    v15 = v14;
    if (v14 && (([v14 isSRGBColorSpace] & 1) != 0 || objc_msgSend(v15, "isRec709GammaColorSpace")))
    {
      v16 = v15;

      v10 = v16;
    }
  }

  memset(v18, 0, sizeof(v18));
  PVImagePropertiesForColorSpace(v10, 1, v18);
  v11 = [(PVInstructionGraphImageSourceNode *)self loadImageTiles:v5 size:v10 colorSpace:v18 imageProperties:Width, Height];
  CGImageRelease(v5);

  return v11;
}

- (id)loadImageTiles:(CGImage *)a3 size:(CGSize)a4 colorSpace:(id)a5 imageProperties:(PVImageProperties *)a6
{
  height = a4.height;
  width = a4.width;
  v31 = a5;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = height;
  if (height)
  {
    v27 = 0;
    v10 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v11 = v9 >= 0x1000 ? 4096 : v9;
      if (width)
      {
        break;
      }

LABEL_15:
      v27 += 4096;
      v9 -= v11;
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    v12 = 0;
    v13 = width;
    while (1)
    {
      v14 = v13 >= 0x1000 ? 4096 : v13;
      v15 = PVPixelBufferCreationOptions();
      pixelBufferOut = 0;
      CVPixelBufferCreate(v10, v14, v11, a6->var0, v15, &pixelBufferOut);
      if (!pixelBufferOut)
      {
        break;
      }

      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
      var1 = a6->var1;
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      v19 = CGBitmapContextCreate(BaseAddress, v14, v11, var1, BytesPerRow, a6->var3, a6->var2);
      v35.origin.x = v12;
      v35.origin.y = v27;
      v35.size.width = v14;
      v35.size.height = v11;
      v20 = CGImageCreateWithImageInRect(a3, v35);
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = v14;
      v36.size.height = v11;
      CGContextDrawImage(v19, v36, v20);
      CGImageRelease(v20);
      CGContextRelease(v19);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      v23 = atomic_load(HGLogger::_enabled);
      if (v23)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 2, "PVIGImageSourceNode (%p): createCVPixelBuffer for image. w=%zu, h=%zu, size=%lu\n", v21, v22, self, v13, v9, ((v13 * v9) >> 18) & 0x1FFFFFFFFFFLL);
      }

      [v32 addObject:pixelBufferOut];
      CVPixelBufferRelease(pixelBufferOut);
      PVAddColorSpaceAttributesToCVPixelBuffer(pixelBufferOut, v31);
      v24 = [MEMORY[0x277CCAE60] valueWithCGRect:{v12, v27, v14, v11}];
      [v30 addObject:v24];

      v13 -= v14;
      v12 += 4096;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
  }

  else
  {
LABEL_16:
    v25 = [[CVPixelBufferCacheItem alloc] initWithCVPixelBuffers:v32 DODs:v30 fullSize:v31 colorSpace:width, height];
  }

  return v25;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)x2_0 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v186 = v6;
  v216 = *MEMORY[0x277D85DE8];
  v188 = [(PVInstructionGraphImageSourceNode *)self key:x2_0];
  HGTraceGuard::HGTraceGuard(v214, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphImageSourceNode hgNodeForTime:...]");
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    v9 = v188;
    v10 = [v188 UTF8String];
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Image Key: %s\n", v11, v12, v10);
  }

  if (HIDWORD(self->_keyHDRGainMap) == 1)
  {
    [sExportRenderAndLoadLock lock];
  }

  [sInputBitmapCacheLock lock];
  v13 = [sInputBitmapCache objectForKey:v188];
  v14 = v13;
  if (v13)
  {
    [(HGInputBitmapCacheItem *)v13 updateLastUsedTime];
  }

  [sInputBitmapCacheLock unlock];
  if (!v14)
  {
    [sImageLoadLock lock];
    [sInputBitmapCacheLock lock];
    v15 = [sInputBitmapCache objectForKey:v188];
    v14 = v15;
    if (v15)
    {
      [(HGInputBitmapCacheItem *)v15 updateLastUsedTime];
    }

    [sInputBitmapCacheLock unlock];
    if (!v14)
    {
      v16 = [sPixelBufferCache objectForKey:v188];
      if (!v16)
      {
        v69 = *a6.m_Obj;
        v213 = v69;
        if (v69)
        {
          (*(*v69 + 16))(v69);
        }

        v16 = [(PVInstructionGraphImageSourceNode *)self newCVPixelBufferCacheItemForImage:&v213];
        if (v213)
        {
          (*(*v213 + 24))(v213);
        }

        if (!v16)
        {
          [sImageLoadLock unlock];
          if (HIDWORD(self->_keyHDRGainMap) == 1)
          {
            [sExportRenderAndLoadLock unlock];
          }

          v134 = HGObject::operator new(0x1A0uLL);
          HGSolidColor::HGSolidColor(v134);
        }

        v70 = atomic_load(HGLogger::_enabled);
        if (v70)
        {
          v71 = v188;
          v72 = [v188 UTF8String];
          HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 2, "PVIGImageSourceNode (%p): hgNodeForTime: Created CVPixel Buffer for key: %s\n", v73, v74, self, v72);
        }
      }

      if (LOBYTE(self->m_renderManager.m_Obj) == 1)
      {
        v177 = [sPixelBufferCache objectForKey:*&self->_useHDRGainMap];
        if (!v177)
        {
          v17 = [v16 colorSpace];
          v177 = [(PVInstructionGraphImageSourceNode *)self newCVPixelBufferCacheItemForGainMapWithColorSpace:v17];
        }
      }

      else
      {
        v177 = 0;
      }

      [sInputBitmapCacheLock lock];
      v196 = 0uLL;
      *&v197 = 0;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v18 = [v16 buffers];
      v19 = [v18 countByEnumeratingWithState:&v209 objects:v215 count:16];
      if (v19)
      {
        LODWORD(v20) = 0;
        v21 = *v210;
        do
        {
          v22 = 0;
          v20 = v20;
          do
          {
            if (*v210 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v209 + 1) + 8 * v22);
            PixelFormatType = CVPixelBufferGetPixelFormatType(v23);
            v26 = HGCV::HGFormatForCVPixelFormat(PixelFormatType, 0, v25);
            HGCVBitmap::create(v23, v26, 0, &v195);
            v27 = [v16 DODs];
            v28 = [v27 objectAtIndex:v20];
            [v28 CGRectValue];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;

            v37 = v30;
            v38 = v32;
            v39 = v30 + v34;
            v40 = v32 + v36;
            v42 = HGRectMake4f(v41, v37, v38, v39, v40);
            a = v195.a;
            *(*&v195.a + 20) = v42;
            *(*&a + 28) = v44;
            v194.a = a;
            (*(**&a + 16))(COERCE_CGFLOAT(*&a));
            v45 = *(&v196 + 1);
            if (*(&v196 + 1) >= v197)
            {
              *(&v196 + 1) = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(&v196, &v194);
              if (*&v194.a)
              {
                (*(**&v194.a + 24))(*&v194.a);
              }
            }

            else
            {
              **(&v196 + 1) = *&v194.a;
              *(&v196 + 1) = v45 + 8;
            }

            if (*&v195.a)
            {
              (*(**&v195.a + 24))(*&v195.a);
            }

            ++v22;
            ++v20;
          }

          while (v19 != v22);
          v19 = [v18 countByEnumeratingWithState:&v209 objects:v215 count:16];
        }

        while (v19);
      }

      if (v177)
      {
        v46 = [v177 buffers];
        v47 = [v46 objectAtIndexedSubscript:0];

        v48 = CVPixelBufferGetPixelFormatType(v47);
        v50 = HGCV::HGFormatForCVPixelFormat(v48, 0, v49);
        HGCVBitmap::create(v47, v50, 0, &v195);
        v51 = [v177 DODs];
        v52 = [v51 objectAtIndex:0];
        [v52 CGRectValue];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;

        v61 = v54;
        v62 = v56;
        v63 = v54 + v58;
        v64 = v56 + v60;
        v66 = HGRectMake4f(v65, v61, v62, v63, v64);
        v67 = v195.a;
        *(*&v195.a + 20) = v66;
        *(*&v67 + 28) = v68;
        (*(**&v67 + 16))(COERCE_CGFLOAT(*&v67));
        if (*&v195.a)
        {
          (*(**&v195.a + 24))(*&v195.a);
        }
      }

      else
      {
        v67 = 0.0;
      }

      v75 = [HGInputBitmapCacheItem alloc];
      [v16 fullSize];
      v77 = v76;
      v79 = v78;
      v80 = [v16 colorSpace];
      v208 = v67;
      if (v67 != 0.0)
      {
        (*(**&v67 + 16))(COERCE_CGFLOAT(*&v67));
      }

      v14 = [(HGInputBitmapCacheItem *)v75 initWithHGBitmap:&v196 fullSize:v80 colorSpace:&v208 gainMap:v77, v79];
      if (v208 != 0.0)
      {
        (*(**&v208 + 24))(COERCE_CGFLOAT(*&v208));
      }

      if (v188 && v14)
      {
        [sInputBitmapCache setObject:v14 forKey:v188];
        [(HGInputBitmapCacheItem *)v14 updateLastUsedTime];
      }

      [sInputBitmapCacheLock unlock];
      v81 = atomic_load(HGLogger::_enabled);
      if (v81)
      {
        v82 = v188;
        v83 = [v188 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 2, "PVIGImageSourceNode (%p): Cached Texture for key: %s\n", v84, v85, self, v83);
      }

      [sPixelBufferCache removeObjectForKey:v188];
      if (v177)
      {
        [sPixelBufferCache removeObjectForKey:*&self->_useHDRGainMap];
      }

      if (v67 != 0.0)
      {
        (*(**&v67 + 24))(COERCE_CGFLOAT(*&v67));
      }

      *&v195.a = &v196;
      std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v195);
    }

    [sImageLoadLock unlock];
    if (!v14)
    {
      v196 = 0uLL;
      *&v197 = 0;
      *&v195.a = &v196;
      std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v195);
      __break(1u);
      return v172;
    }
  }

  [(HGInputBitmapCacheItem *)v14 bitmaps];
  v86 = *(&v196 + 1) - v196;
  *&v195.a = &v196;
  std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v195);
  if (v86 < 9)
  {
    [(HGInputBitmapCacheItem *)v14 bitmaps];
    v93 = *v196;
    v87 = COERCE_DOUBLE(HGObject::operator new(0x1F0uLL));
    HGBitmapLoader::HGBitmapLoader(*&v87, v93);
    *&v195.a = &v196;
    std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v195);
  }

  else
  {
    v87 = COERCE_DOUBLE(HGObject::operator new(0x1A0uLL));
    HGOverwrite::HGOverwrite(*&v87);
    [(HGInputBitmapCacheItem *)v14 bitmaps];
    v89 = *(&v196 + 1);
    v88 = v196;
    if (v196 != *(&v196 + 1))
    {
      v90 = 0;
      do
      {
        v91 = *v88;
        if (*v88)
        {
          (*(*v91 + 16))(*v88);
        }

        v92 = HGObject::operator new(0x1F0uLL);
        HGBitmapLoader::HGBitmapLoader(v92, v91);
        (*(**&v87 + 120))(COERCE_CGFLOAT(*&v87), v90, v92);
        if (v92)
        {
          (*(*v92 + 24))(v92);
        }

        if (v91)
        {
          (*(*v91 + 24))(v91);
        }

        ++v88;
        v90 = (v90 + 1);
      }

      while (v88 != v89);
      *&v195.a = &v196;
      std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v195);
      goto LABEL_68;
    }

    *&v195.a = &v196;
    std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v195);
    if (v87 != 0.0)
    {
LABEL_68:
      (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
      (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
    }
  }

  [(HGInputBitmapCacheItem *)v14 fullSize];
  CachedImageInfo::Init(&self->super._transform.ty, 1, v218);
  if (LOBYTE(self->m_renderManager.m_Obj) == 1)
  {
    [(HGInputBitmapCacheItem *)v14 gainMap];
    if (v196)
    {
      (*(*v196 + 24))(v196);
      v94 = [(HGInputBitmapCacheItem *)v14 colorSpace];
      v95 = [v94 nclcTriplet];

      PVCreateColorConform([v95 hgColorPrimary], objc_msgSend(v95, "hgTransferFunction"), 0, 3, 8, 0, &v196);
      (*(*v196 + 120))(v196, 0, COERCE_CGFLOAT(*&v87));
      if (*&v87 == v196)
      {
        v207 = v87;
        if (v87 != 0.0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v87 == 0.0)
        {
          v87 = *&v196;
          if (v196)
          {
            goto LABEL_74;
          }
        }

        else
        {
          (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
          v87 = *&v196;
          if (v196)
          {
LABEL_74:
            (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
            v207 = v87;
LABEL_88:
            (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
            v102 = 0;
            goto LABEL_92;
          }
        }

        v207 = 0.0;
      }

      v102 = 1;
LABEL_92:
      [(HGInputBitmapCacheItem *)v14 gainMap];
      LODWORD(v103) = HIDWORD(self->m_renderManager.m_Obj);
      [(PVInstructionGraphImageSourceNode *)self applyGainMapToGraph:&v207 gainMap:&v206 withHeadroom:v103];
      v104 = v195.a;
      if (*&v87 == *&v195.a)
      {
        if (v87 != 0.0)
        {
          (*(**&v195.a + 24))();
        }
      }

      else
      {
        if ((v102 & 1) == 0)
        {
          (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
          v104 = v195.a;
        }

        v195.a = 0.0;
        v87 = v104;
      }

      if (v206)
      {
        (*(*v206 + 24))(v206);
      }

      if (v207 != 0.0)
      {
        (*(**&v207 + 24))(COERCE_CGFLOAT(*&v207));
      }

      PVCreateColorConform(3, 8, 0, 3, 1, 0, &v195);
      (*(**&v195.a + 120))(*&v195.a, 0, COERCE_CGFLOAT(*&v87));
      if (*&v87 != *&v195.a)
      {
        if (v87 == 0.0)
        {
          v87 = v195.a;
          if (!*&v195.a)
          {
            goto LABEL_108;
          }
        }

        else
        {
          (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
          v87 = v195.a;
          if (!*&v195.a)
          {
            goto LABEL_108;
          }
        }

        (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
      }

LABEL_108:
      v105 = HGObject::operator new(0x1B0uLL);
      HGHLG::SDRToHLG::SDRToHLG(v105, 2, 1);
      (*(*v105 + 120))(v105, 0, COERCE_CGFLOAT(*&v87));
      if (*&v87 == v105)
      {
        v106 = v87;
      }

      else
      {
        if (v87 != 0.0)
        {
          (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
        }

        (*(*v105 + 16))(v105);
        v106 = *&v105;
      }

      v107 = PVInstructionGraphContext::WorkingColorSpace(*a6.m_Obj);
      v108 = [v107 nclcTriplet];

      PVCreateColorConform(3, 8, 0, [v108 hgColorPrimary], objc_msgSend(v108, "hgTransferFunction"), 0, &v194);
      (*(**&v194.a + 120))(*&v194.a, 0, COERCE_DOUBLE(*&v106));
      v87 = v194.a;
      if (*&v106 == *&v194.a)
      {
        v109 = v194.a;
        v87 = v106;
        if (!*&v194.a)
        {
LABEL_121:

          (*(*v105 + 24))(v105);
          if (*&v195.a)
          {
            (*(**&v195.a + 24))(*&v195.a);
          }

          if (v196)
          {
            (*(*v196 + 24))(v196);
          }

          goto LABEL_125;
        }
      }

      else
      {
        if (v106 != 0.0)
        {
          (*(**&v106 + 24))(COERCE_DOUBLE(*&v106));
          v87 = v194.a;
        }

        if (v87 == 0.0)
        {
          goto LABEL_121;
        }

        (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
        v109 = v194.a;
        if (!*&v194.a)
        {
          goto LABEL_121;
        }
      }

      (*(**&v109 + 24))(COERCE_CGFLOAT(*&v109));
      goto LABEL_121;
    }
  }

  v205 = v87;
  if (v87 != 0.0)
  {
    (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
  }

  v96 = [(HGInputBitmapCacheItem *)v14 colorSpace];
  v97 = PVInstructionGraphContext::WorkingColorSpace(*a6.m_Obj);
  v98 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(*a6.m_Obj);
  v204 = 0;
  ColorConformInput(&v205, v96, v97, v98, &v204, &v196);
  v95 = v204;
  v99 = *&v196;
  if (*&v87 == v196)
  {
    if (v87 != 0.0)
    {
      (*(*v196 + 24))();
    }
  }

  else
  {
    if (v87 != 0.0)
    {
      (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
      v99 = *&v196;
    }

    *&v196 = 0;
    v87 = v99;
  }

  if (v205 != 0.0)
  {
    (*(**&v205 + 24))(COERCE_CGFLOAT(*&v205));
  }

  if (v95)
  {
    v100 = [(HGInputBitmapCacheItem *)v14 colorSpace];
    v101 = PVInstructionGraphContext::WorkingColorSpace(*a6.m_Obj);
    NSLog(&cfstr_ErrorInColorCo.isa, v100, v101);
  }

LABEL_125:

  v110 = MEMORY[0x277CBF2C0];
  v111 = *(MEMORY[0x277CBF2C0] + 16);
  v202 = *MEMORY[0x277CBF2C0];
  v203 = v111;
  if ((LOBYTE(self->m_cachedImageInfo.size.height) & 1) == 0)
  {
    if (HIDWORD(self->_keyHDRGainMap) == 1)
    {
      [sExportRenderAndLoadLock unlock];
    }

    v128 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v128);
  }

  if ([(PVInstructionGraphImageSourceNode *)self useAnimationInfo])
  {
    v112 = *(v110 + 1);
    v200 = *v110;
    v201 = v112;
    v114 = v110[4];
    v113 = v110[5];
    width = self->m_cachedImageInfo.size.width;
    v183 = *&self->m_cachedImageInfo.cached;
    v116 = (*(**a6.m_Obj + 40))();
    v117 = (*(**a6.m_Obj + 48))();
    (*(**a6.m_Obj + 40))();
    v119 = v118;
    v120 = (*(**a6.m_Obj + 48))();
    v175 = v113;
    v121 = [(PVInstructionGraphSourceNode *)self transformAnimationContentMode];
    v122 = v121;
    v123 = v116 * v117;
    v124 = v119 * v120;
    v125 = v124;
    v126 = v123;
    if (!v121)
    {
      goto LABEL_160;
    }

    v125 = v124;
    v126 = v123;
    if (v121 == 3)
    {
      goto LABEL_160;
    }

    v127 = *&self->_useAnimationInfo;
    if (v127 > 2)
    {
      v126 = v123;
      v125 = v124;
      if (v127 != 3)
      {
        if (v127 == 13)
        {
          v125 = v123 / (v183 / width);
          v126 = v123;
        }

        else
        {
          v126 = v183;
          v125 = width;
          if (v127 == 14)
          {
            v126 = v183 / width * v124;
            v125 = v124;
          }
        }
      }

      goto LABEL_156;
    }

    if (v127 == 1)
    {
      if (v123 <= v124)
      {
        v133 = v124 / width;
        v135 = v183;
        if (v183 * (v124 / width) < v123)
        {
          v133 = v123 / v183;
        }
      }

      else
      {
        v135 = v183;
        v133 = v123 / v183;
        if (width * (v123 / v183) < v124)
        {
          v133 = v124 / width;
        }
      }

      v126 = v135 * v133;
    }

    else
    {
      v126 = v183;
      v125 = width;
      if (v127 != 2)
      {
LABEL_156:
        v136 = [(PVInstructionGraphSourceNode *)self transformAnimation];
        [v136 aspectRatio];
        v138 = *&self->_useAnimationInfo;
        if (v138 <= 3)
        {
          if (v138 == 1)
          {
            if (v126 / v137 <= v125)
            {
              v125 = v126 / v137;
            }

            v126 = v137 * v125;
          }

          else if (v138 == 2)
          {
            if (v126 <= v125)
            {
              v165 = v125;
              if (v125 * v137 < v126)
              {
                v165 = v126 / v137;
              }
            }

            else
            {
              v165 = v126 / v137;
              if (v126 / v137 < v125)
              {
                v165 = v125;
              }
            }

            v126 = v137 * v165;
            v125 = v165;
          }
        }

        else if ((v138 - 4) >= 9)
        {
          if (v138 == 13)
          {
            v125 = v126 / v137;
          }

          else if (v138 == 14)
          {
            v126 = v125 * v137;
          }
        }

        else
        {
          v125 = 1.0;
          v126 = v137;
        }

LABEL_160:
        v139 = [(PVInstructionGraphSourceNode *)self transformAnimation];
        *&v195.a = *&x2_0->var0;
        *&v195.c = x2_0->var3;
        v140 = [PVTransformAnimation getTransformInfoFromAnimation:v139 atTime:&v195 renderSize:v122 contentMode:0 invertY:&v196 outInfo:v126, v125];

        v179 = v124;
        v182 = v123;
        if (v140)
        {
          v141 = v198.f64[1];
          v142 = *(&v197 + 1);
          v143 = v198.f64[0];
          v144 = v199;
          v145 = v144;
          v146 = v141;
          v173 = v142;
          v174 = v143;
        }

        else
        {
          v173 = 0.0;
          v174 = 0.0;
          v146 = 1.0;
          v145 = 0.0;
        }

        v147 = v183 * -0.5;
        v148 = width * -0.5;
        memset(&v195, 0, sizeof(v195));
        v149 = v147;
        v150 = v148;
        CGAffineTransformMakeTranslation(&v195, v147, v148);
        *&t1.a = v200;
        *&t1.c = v201;
        t1.tx = v114;
        t1.ty = v175;
        t2 = v195;
        CGAffineTransformConcat(&v194, &t1, &t2);
        v200 = *&v194.a;
        v201 = *&v194.c;
        tx = v194.tx;
        ty = v194.ty;
        v153 = *(v110 + 1);
        *&v194.a = *v110;
        *&v194.c = v153;
        *&v194.tx = *(v110 + 2);
        if (v145 != 0.0)
        {
          v154 = *(v110 + 1);
          *&t1.a = *v110;
          *&t1.c = v154;
          *&t1.tx = *(v110 + 2);
          CGAffineTransformRotate(&v194, &t1, v145 * 3.14159265 / 180.0);
        }

        v155 = *(v110 + 1);
        *&t2.a = *v110;
        *&t2.c = v155;
        *&t2.tx = *(v110 + 2);
        CGAffineTransformTranslate(&t1, &t2, v149, v150);
        v156 = *&self->_useAnimationInfo;
        if (v156)
        {
          v157 = v183;
          v158 = fabs(v183 * t1.b + width * t1.d);
          v159 = fabs(v183 * t1.a + width * t1.c);
          if (v156 <= 2)
          {
            if (v156 == 1)
            {
              if (v182 <= v179)
              {
                v164 = v179 / v158;
                if (v159 * (v179 / v158) < v182)
                {
                  v164 = v182 / v159;
                }
              }

              else
              {
                v164 = v182 / v159;
                if (v158 * (v182 / v159) < v179)
                {
                  v164 = v179 / v158;
                }
              }

              v160 = v159 * v164;
              goto LABEL_193;
            }

            if (v156 == 2)
            {
              v162 = v158 * (v182 / v159);
              v163 = v179 / v158;
              if (v162 <= v179)
              {
                v163 = v182 / v159;
              }

              v160 = v159 * v163;
              goto LABEL_193;
            }

            goto LABEL_181;
          }

          v160 = v182;
          if (v156 == 3)
          {
LABEL_193:
            v161 = v160 / v159;
            goto LABEL_194;
          }

          if (v156 != 13)
          {
            if (v156 == 14)
            {
              v160 = v179 * (v159 / v158);
              goto LABEL_193;
            }

LABEL_181:
            v160 = v159;
            goto LABEL_193;
          }

          v161 = v182 / (v159 / v158) / v158;
        }

        else
        {
          v161 = 1.0;
          v157 = v183;
        }

LABEL_194:
        memset(&t1, 0, sizeof(t1));
        CGAffineTransformMakeScale(&t1, v146 * v161, v146 * v161);
        if (v145 != 0.0)
        {
          *&v191.a = v200;
          *&v191.c = v201;
          v191.tx = tx;
          v191.ty = ty;
          v190 = v194;
          CGAffineTransformConcat(&t2, &v191, &v190);
          v200 = *&t2.a;
          v201 = *&t2.c;
          tx = t2.tx;
          ty = t2.ty;
        }

        *&v191.a = v200;
        *&v191.c = v201;
        v191.tx = tx;
        v191.ty = ty;
        v190 = t1;
        CGAffineTransformConcat(&t2, &v191, &v190);
        v200 = *&t2.a;
        v201 = *&t2.c;
        v166 = t2.tx;
        v167 = t2.ty;
        v168 = v157 * 0.5 + floor(v182 - v157) * 0.5 + v173;
        v169 = width * 0.5 + floor(v179 - width) * 0.5 + v174;
        CGAffineTransformMakeTranslation(&t2, v168, v169);
        v195 = t2;
        *&v191.a = v200;
        *&v191.c = v201;
        v191.tx = v166;
        v191.ty = v167;
        v190 = t2;
        CGAffineTransformConcat(&t2, &v191, &v190);
        v200 = *&t2.a;
        v201 = *&t2.c;
        v129 = *&t2.tx;
        v202 = *&t2.a;
        v203 = *&t2.c;
        goto LABEL_197;
      }

      v133 = v123 / v183;
      if (width * (v123 / v183) > v124)
      {
        v133 = v124 / width;
      }

      v126 = v183 * v133;
    }

    v125 = width * v133;
    goto LABEL_156;
  }

  [(PVInstructionGraphSourceNode *)self transform];
  v202 = v196;
  v203 = v197;
  *v184 = v198;
  if ([(PVInstructionGraphSourceNode *)self isOverlayTrack])
  {
    v129 = *v184;
  }

  else
  {
    v181 = *&self->m_cachedImageInfo.cached;
    v178 = (*(**a6.m_Obj + 40))();
    v176 = self->m_cachedImageInfo.size.width;
    (*(**a6.m_Obj + 40))();
    v130.f64[0] = v181;
    v131.f64[0] = v178;
    v130.f64[1] = v176;
    v131.f64[1] = v132;
    v129 = vmulq_f64(*v184, vdivq_f64(v130, v131));
  }

LABEL_197:
  v189 = v87;
  if (v87 != 0.0)
  {
    *v185 = v129;
    (*(**&v87 + 16))(COERCE_CGFLOAT(*&v87));
    v129 = *v185;
  }

  v196 = v202;
  v197 = v203;
  v198 = v129;
  v170 = (*(**a6.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v189, &v196, v170, &v195);
  v171 = v195.a;
  if (*&v87 == *&v195.a)
  {
    if (v87 != 0.0)
    {
      (*(**&v195.a + 24))();
    }
  }

  else
  {
    if (v87 != 0.0)
    {
      (*(**&v87 + 24))(COERCE_CGFLOAT(*&v87));
      v171 = v195.a;
    }

    v195.a = 0.0;
    v87 = v171;
  }

  if (v189 != 0.0)
  {
    (*(**&v189 + 24))(COERCE_CGFLOAT(*&v189));
  }

  if (HIDWORD(self->_keyHDRGainMap) == 1)
  {
    [sExportRenderAndLoadLock unlock];
  }

  *v186 = v87;

  HGTraceGuard::~HGTraceGuard(v214);
  return v172;
}

- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4
{
  v6 = v4;
  v22 = a3;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  p_ty = &self->super._transform.ty;
  CachedImageInfo::Init(p_ty);
  if (p_ty[3])
  {
    v14 = p_ty[1];
    v13 = p_ty[2];
    [v22 outputSize];
    if (v13 >= v14)
    {
      v17 = v13 / v16;
    }

    else
    {
      v17 = v14 / v15;
    }

    *(v6 + 16) = vdivq_f64(*(p_ty + 1), vdupq_lane_s64(*&v17, 0));
  }

  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4
{
  v32 = a4;
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  CachedImageInfo::Init(&self->super._transform.ty);
  if (LOBYTE(self->m_cachedImageInfo.size.height))
  {
    if ([(PVInstructionGraphImageSourceNode *)self useAnimationInfo]|| [(PVInstructionGraphSourceNode *)self isOverlayTrack])
    {
      v8 = (*(**a5.m_Obj + 40))();
      v10 = v9;
      v11 = 1.0;
      if (![(PVInstructionGraphSourceNode *)self isOverlayTrack])
      {
        v11 = (*(**a5.m_Obj + 48))();
      }

      [v32 outputSize];
      v13 = v12;
      [v32 outputSize];
      v14 = v8;
      v15 = v10;
      v16 = v11 * v14;
      v17 = v11 * v15;
      v19 = v13 / v18;
      v20 = (v14 / v15);
      if (vabdd_f64(v19, v20) >= 0.0000001)
      {
        if (v19 > v20)
        {
LABEL_10:
          [v32 outputSize];
          v22 = v17 / v21;
LABEL_15:
          v28 = PCMatrix44Tmpl<double>::leftScale(retstr, v22, -v22, 1.0);
          v28.f64[0] = v16;
          v29 = v17;
LABEL_19:
          v28.f64[0] = v28.f64[0] * 0.5;
          PCMatrix44Tmpl<double>::leftTranslate(retstr, v28, v29 * 0.5, 0.0);
          goto LABEL_20;
        }
      }

      else if (v17 > v16)
      {
        goto LABEL_10;
      }

      [v32 outputSize];
      v22 = v16 / v27;
      goto LABEL_15;
    }

    if ([v32 conformToInputAspect])
    {
      v23 = *&self->m_cachedImageInfo.cached;
      width = self->m_cachedImageInfo.size.width;
      if (width >= v23)
      {
        [v32 outputSize];
        v26 = width / v25;
LABEL_18:
        v28 = PCMatrix44Tmpl<double>::leftScale(retstr, v26, -v26, 1.0);
        v28.f64[0] = *&self->m_cachedImageInfo.cached;
        v29 = self->m_cachedImageInfo.size.width;
        goto LABEL_19;
      }
    }

    else
    {
      v23 = *&self->m_cachedImageInfo.cached;
    }

    [v32 outputSize];
    v26 = v23 / v30;
    goto LABEL_18;
  }

LABEL_20:

  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3
{
  v8 = *a3.m_Obj;
  if (v8)
  {
    (*(*v8 + 16))(v8, a2);
  }

  v7.receiver = self;
  v7.super_class = PVInstructionGraphImageSourceNode;
  v4 = [(PVInstructionGraphNode *)&v7 dotTreeLabel:&v8];
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v5 = [v4 stringByAppendingFormat:@" [%.0f, %.0f]", *&self->m_cachedImageInfo.cached, *&self->m_cachedImageInfo.size.width];

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v12.receiver = self;
  v12.super_class = PVInstructionGraphImageSourceNode;
  v3 = [(PVInstructionGraphSourceNode *)&v12 instructionGraphNodeDescription];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  v7 = [*&self->_fillMode absoluteString];
  if (v7)
  {
    v8 = [*&self->_fillMode absoluteString];
  }

  else
  {
    v8 = @"unable to get url.path as string";
  }

  [v4 setObject:v8 forKeyedSubscript:@"imageURL"];
  if (v7)
  {
  }

  v9 = [(PVInstructionGraphImageSourceNode *)self key];
  [v4 setObject:v9 forKeyedSubscript:@"imageKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(self->_keyHDRGainMap)];
  [v4 setObject:v10 forKeyedSubscript:@"renderingIntent"];

  return v4;
}

@end
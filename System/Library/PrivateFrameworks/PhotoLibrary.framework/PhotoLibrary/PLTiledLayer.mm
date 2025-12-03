@interface PLTiledLayer
- (BOOL)visibleTileRegionHasChanged:(CGRect)changed level:(int)level;
- (CGSize)jpegImageSize;
- (PLTiledLayer)initWithJPEGData:(id)data placeholderImage:(CGImage *)image screenSize:(CGSize)size;
- (double)zoomStartScaleForImage:(CGSize)image placeholderImageSize:(CGSize)size;
- (void)dealloc;
- (void)decodeImageRectangle:(CGRect)rectangle forLevel:(int)level requestId:(unsigned int)id completionHandler:(id)handler;
- (void)flushCache;
- (void)prepareForDecoding;
- (void)runMetalConversionOnSurface:(__IOSurface *)surface completionHandler:(id)handler;
- (void)runVImageConversionOnSurface:(__IOSurface *)surface completionHandler:(id)handler;
- (void)setVisibleRectangle:(CGRect)rectangle zoomScale:(double)scale completionHandler:(id)handler;
- (void)setupConverterForSourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace;
- (void)updateSubLayers:(id)layers;
@end

@implementation PLTiledLayer

- (void)setVisibleRectangle:(CGRect)rectangle zoomScale:(double)scale completionHandler:(id)handler
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  if (self->_shouldTile)
  {
    v12 = *&sZoomLevelScaleFactor;
    v13 = -1;
    do
    {
      v12 = v12 * 0.5;
      ++v13;
    }

    while (v12 > scale);
  }

  else
  {
    v13 = 0;
  }

  if (v13 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  v15 = [(PLTiledLayer *)self visibleTileRegionHasChanged:v14 level:x, rectangle.origin.y, rectangle.size.width, rectangle.size.height];
  self->_lastVisibleRect.origin.x = x;
  self->_lastVisibleRect.origin.y = y;
  self->_lastVisibleRect.size.width = width;
  self->_lastVisibleRect.size.height = height;
  self->_lastZoomScale = scale;
  if (!v15)
  {
    if (!handler)
    {
      return;
    }

    goto LABEL_16;
  }

  atomic_fetch_add(&self->_requestId, 1u);
  if (self->_zoomStartScale >= scale || !self->_err)
  {
LABEL_16:
    pl_dispatch_async();
  }
}

- (BOOL)visibleTileRegionHasChanged:(CGRect)changed level:(int)level
{
  if (self->_shouldTile)
  {
    v4 = *&sZoomLevelScaleFactor;
    v5 = -1;
    do
    {
      v4 = v4 * 0.5;
      ++v5;
    }

    while (v4 > self->_lastZoomScale);
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    v5 = 3;
  }

  result = v5 != level || (x = self->_lastVisibleRect.origin.x, v7 = self->_tilePixelSize << level, changed.origin.x / v7 != x / v7) || (y = self->_lastVisibleRect.origin.y, changed.origin.y / v7 != y / v7) || (changed.origin.x + changed.size.width + -1.0) / v7 != (x + self->_lastVisibleRect.size.width + -1.0) / v7 || (changed.origin.y + changed.size.height + -1.0) / v7 != (y + self->_lastVisibleRect.size.height + -1.0) / v7;
  return result;
}

void __30__PLTiledLayer_removeAllTiles__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 184) objectForKey:v7];
        [v8 removeFromSuperlayer];
        [v8 setContents:0];
        [*(*(a1 + 40) + 184) removeObjectForKey:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)decodeImageRectangle:(CGRect)rectangle forLevel:(int)level requestId:(unsigned int)id completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  if (!self->_err)
  {
    v38 = self->_tilePixelSize << level;
    v8 = (rectangle.origin.x / v38);
    v41 = (rectangle.origin.y / v38);
    v42 = ((rectangle.origin.x + rectangle.size.width + -1.0) / v38);
    v40 = ((rectangle.origin.y + rectangle.size.height + -1.0) / v38);
    v39 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    selfCopy = self;
    visibleTileIds = self->_visibleTileIds;
    v11 = [(NSMutableSet *)visibleTileIds countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      do
      {
        v14 = 0;
        do
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(visibleTileIds);
          }

          v15 = *(*(&v54 + 1) + 8 * v14);
          bytes = [v15 bytes];
          if (bytes[2] == level && (*bytes >= v8 ? (v17 = *bytes <= v42) : (v17 = 0), v17 && ((v18 = bytes[1], v18 >= v41) ? (v19 = v18 <= v40) : (v19 = 0), v19)))
          {
            [(NSMutableSet *)v39 addObject:v15];
          }

          else
          {
            v20 = objc_alloc_init(PLTile);
            [(PLTile *)v20 setVisible:0];
            [(PLTile *)v20 setTileId:v15];
            [v9 addObject:v20];
          }

          ++v14;
        }

        while (v12 != v14);
        v21 = [(NSMutableSet *)visibleTileIds countByEnumeratingWithState:&v54 objects:v58 count:16];
        v12 = v21;
      }

      while (v21);
    }

    selfCopy2 = self;
    idCopy3 = id;
    if (v8 <= v42)
    {
      v36 = 0;
      v33 = &v46;
      v34 = v45;
      do
      {
        if (selfCopy->_requestId != idCopy3)
        {
          break;
        }

        v24 = v41;
        if (v41 <= v40)
        {
          v25 = v41 * v38;
          do
          {
            if (selfCopy->_requestId != idCopy3)
            {
              break;
            }

            v53[2] = level;
            v53[0] = v8;
            v53[1] = v24;
            v26 = [MEMORY[0x277CBEA90] dataWithBytes:v53 length:12];
            v27 = [(PLCache *)selfCopy->_tileCache objectForKey:v26];
            if (([(NSMutableSet *)selfCopy->_visibleTileIds containsObject:v26]& 1) == 0)
            {
              if (v27)
              {
                [v27 setVisible:1];
                os_unfair_lock_lock(&selfCopy->_lock);
                [v9 addObject:v27];
                [(NSMutableSet *)v39 addObject:v26];
                idCopy3 = id;
                os_unfair_lock_unlock(&selfCopy->_lock);
              }

              else
              {
                v60.origin.y = v25;
                v62.size.width = selfCopy->_fullSize.width;
                v62.size.height = selfCopy->_fullSize.height;
                v62.origin.x = 0.0;
                v62.origin.y = 0.0;
                v60.origin.x = (v8 * v38);
                v60.size.width = v38;
                v60.size.height = v38;
                v61 = CGRectIntersection(v60, v62);
                if (v61.size.width)
                {
                  v28 = v61.size.height == 0;
                }

                else
                {
                  v28 = 1;
                }

                if (!v28)
                {
                  v51[0] = MEMORY[0x277D85DD0];
                  v51[1] = 3221225472;
                  v51[2] = __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke;
                  v51[3] = &unk_2782A1D70;
                  v52 = v61;
                  v51[4] = v26;
                  v51[5] = selfCopy;
                  v51[6] = v9;
                  v51[7] = v39;
                  if (selfCopy->_metalConverter)
                  {
                    v29 = v49;
                    v49[0] = MEMORY[0x277D85DD0];
                    v49[1] = 3221225472;
                    v49[2] = __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke_2;
                    v49[3] = &unk_2782A1D98;
                    v49[4] = selfCopy;
                    v30 = &v50;
                  }

                  else if (selfCopy->_vimageConverter)
                  {
                    v29 = v47;
                    v47[0] = MEMORY[0x277D85DD0];
                    v47[1] = 3221225472;
                    v47[2] = __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke_3;
                    v47[3] = &unk_2782A1D98;
                    v47[4] = selfCopy;
                    v30 = &v48;
                  }

                  else
                  {
                    v29 = v44;
                    v44[0] = MEMORY[0x277D85DD0];
                    v44[1] = 3221225472;
                    v45[0] = __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke_4;
                    v45[1] = &unk_2782A1DC0;
                    v30 = v33;
                  }

                  ++v36;
                  *v30 = v51;
                  v43 = [v29 copy];
                  idCopy3 = id;
                  pl_dispatch_async();
                }
              }
            }

            ++v24;
            v25 += v38;
          }

          while (v40 + 1 != v24);
        }

        v28 = v8++ == v42;
      }

      while (!v28);
    }

    if (selfCopy->_decoderCount >= 1)
    {
      v31 = 0;
      v32 = 8;
      do
      {
        pl_dispatch_sync();
        ++v31;
        v32 += 16;
      }

      while (v31 < selfCopy2->_decoderCount);
    }

    pl_dispatch_sync();
    if (selfCopy2->_requestId == id)
    {

      selfCopy2->_visibleTileIds = v39;
      selfCopy2->_zoomLevel = level;
      pl_dispatch_async();
    }

    else
    {
    }
  }
}

void __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(PLTile);
  [(PLTile *)v4 setDecodedSurface:a2];
  [(PLTile *)v4 setVisible:1];
  [(PLTile *)v4 setTileId:*(a1 + 32)];
  [(PLTile *)v4 setImageRect:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];
  [*(*(a1 + 40) + 160) setObject:v4 forKey:*(a1 + 32)];
  os_unfair_lock_lock((*(a1 + 40) + 240));
  [*(a1 + 48) addObject:v4];
  [*(a1 + 56) addObject:*(a1 + 32)];
  os_unfair_lock_unlock((*(a1 + 40) + 240));
}

void __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke_4(uint64_t a1, const void *a2)
{
  (*(*(a1 + 32) + 16))();

  CFRelease(a2);
}

void __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke_5(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(a1 + 88) == *(v1 + 208))
  {
    v3 = *(v1 + 168);
    v4 = *(a1 + 92);
    v5 = *(v1 + 112);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    BaseAddressOfPlane = 0u;
    v27 = 0u;
    applejpeg_decode_options_init();
    LODWORD(v23) = 4;
    HIDWORD(v21) = 1 << v4;
    DecodeSurfaceFromPool = createDecodeSurfaceFromPool(v3, v5, v6 / (1 << v4), v7 / (1 << v4));
    if (DecodeSurfaceFromPool)
    {
      v9 = DecodeSurfaceFromPool;
      if (v5 == 875704422)
      {
        v10 = &v20;
        *(&v19 + 1) = IOSurfaceGetBytesPerRowOfPlane(DecodeSurfaceFromPool, 0);
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v9, 1uLL);
      }

      else
      {
        if (v5 != 1111970369)
        {
          if (gPLTiledLayerTrace)
          {
            v14 = MEMORY[0x277D85DF8];
            fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "createDecodedTileSurface");
            fwrite("Unsupported format", 0x12uLL, 1uLL, *v14);
            goto LABEL_20;
          }

LABEL_21:
          IOSurfaceDecrementUseCount(v9);
          CFRelease(v9);
          return;
        }

        v10 = &v19 + 1;
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRow(DecodeSurfaceFromPool);
      }

      *v10 = BytesPerRowOfPlane;
      if (!applejpeg_decode_set_options())
      {
        PlaneCount = IOSurfaceGetPlaneCount(v9);
        IOSurfaceLock(v9, 0, 0);
        if (PlaneCount < 2)
        {
          v16 = &BaseAddressOfPlane + 8;
          *&BaseAddressOfPlane = IOSurfaceGetBaseAddress(v9);
        }

        else
        {
          v16 = &v27 + 8;
          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v9, 0);
          *&v27 = IOSurfaceGetBaseAddressOfPlane(v9, 1uLL);
        }

        *v16 = 0;
        v17 = applejpeg_decode_image_all();
        IOSurfaceUnlock(v9, 0, 0);
        if (!v17 || !gPLTiledLayerTrace)
        {
          if (!v17)
          {
            (*(*(a1 + 40) + 16))();
            return;
          }

          goto LABEL_21;
        }

        v18 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "createDecodedTileSurface");
        fprintf(*v18, "ffjpeg_decode_image_all: error: %d");
        goto LABEL_20;
      }

      if (gPLTiledLayerTrace)
      {
        v13 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "createDecodedTileSurface");
        fprintf(*v13, "ffjpeg_decode_set_options: error: %d");
LABEL_20:
        fputc(10, *MEMORY[0x277D85DF8]);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (gPLTiledLayerTrace)
    {
      v12 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "createDecodedTileSurface");
      fwrite("createDecodeSurfaceFromPool failed", 0x22uLL, 1uLL, *v12);
      fputc(10, *v12);
    }
  }
}

uint64_t __74__PLTiledLayer_decodeImageRectangle_forLevel_requestId_completionHandler___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) updateSubLayers:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)runVImageConversionOnSurface:(__IOSurface *)surface completionHandler:(id)handler
{
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  DecodeSurfaceFromPool = createDecodeSurfaceFromPool(self->_surfacePool, self->_conversionPixelFormat, Width, Height);
  if (!DecodeSurfaceFromPool)
  {
    (*(handler + 2))(handler, surface);
LABEL_12:
    CFRelease(surface);
    return;
  }

  v10 = DecodeSurfaceFromPool;
  IOSurfaceLock(surface, 0, 0);
  IOSurfaceLock(v10, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  v22 = Height;
  v23 = Width;
  BytesPerRow = IOSurfaceGetBytesPerRow(surface);
  v17 = IOSurfaceGetBaseAddress(v10);
  v18 = Height;
  v19 = Width;
  v20 = IOSurfaceGetBytesPerRow(v10);
  vimageConverter = self->_vimageConverter;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v12 = getvImageConvert_AnyToAnySymbolLoc_ptr;
  v33 = getvImageConvert_AnyToAnySymbolLoc_ptr;
  if (!getvImageConvert_AnyToAnySymbolLoc_ptr)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getvImageConvert_AnyToAnySymbolLoc_block_invoke;
    v28 = &unk_2782A1E88;
    v29 = &v30;
    v13 = AccelerateLibrary();
    v31[3] = dlsym(v13, "vImageConvert_AnyToAny");
    getvImageConvert_AnyToAnySymbolLoc_ptr = *(v29[1] + 24);
    v12 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (v12)
  {
    v14 = v12(vimageConverter, &BaseAddress, &v17, 0, 16);
    IOSurfaceUnlock(surface, 0, 0);
    IOSurfaceUnlock(v10, 0, 0);
    if (v14)
    {
      if (gPLTiledLayerTrace)
      {
        v15 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "[PLTiledLayer runVImageConversionOnSurface:completionHandler:]");
        fprintf(*v15, "Color conversion failed with error %zd", v14);
        fputc(10, *v15);
      }

      IOSurfaceDecrementUseCount(v10);
      (*(handler + 2))(handler, surface);
    }

    else
    {
      IOSurfaceDecrementUseCount(surface);
      (*(handler + 2))(handler, v10);
    }

    CFRelease(v10);
    goto LABEL_12;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"vImage_Error PL_vImageConvert_AnyToAny(const vImageConverterRef description:{const vImage_Buffer *, const vImage_Buffer *, void *, vImage_Flags)"), @"PLTiledLayer.m", 79, @"%s", dlerror(), v17, v18, v19, v20, BaseAddress, v22, v23, BytesPerRow}];
  __break(1u);
}

- (void)runMetalConversionOnSurface:(__IOSurface *)surface completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  DecodeSurfaceFromPool = createDecodeSurfaceFromPool(self->_surfacePool, self->_conversionPixelFormat, Width, Height);
  if (DecodeSurfaceFromPool)
  {
    v11 = DecodeSurfaceFromPool;
    commandBuffer = [(MTLCommandQueue *)self->_metalCmdQueue commandBuffer];
    if (self->_hasExtendedColorDisplay)
    {
      v13 = 554;
    }

    else
    {
      v13 = 80;
    }

    v14 = [getMTLTextureDescriptorClass() texture2DDescriptorWithPixelFormat:80 width:Width height:Height mipmapped:0];
    v15 = [getMTLTextureDescriptorClass() texture2DDescriptorWithPixelFormat:v13 width:Width height:Height mipmapped:0];
    [v15 setUsage:6];
    v16 = [(MTLDevice *)self->_metalDevice newTextureWithDescriptor:v14 iosurface:surface plane:0];
    v17 = [(MTLDevice *)self->_metalDevice newTextureWithDescriptor:v15 iosurface:v11 plane:0];
    [(MPSImageConversion *)self->_metalConverter encodeToCommandBuffer:commandBuffer sourceTexture:v16 destinationTexture:v17];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__PLTiledLayer_runMetalConversionOnSurface_completionHandler___block_invoke;
    v20[3] = &unk_2782A1D28;
    v20[4] = handler;
    v20[5] = v11;
    [commandBuffer addScheduledHandler:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__PLTiledLayer_runMetalConversionOnSurface_completionHandler___block_invoke_2;
    v19[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v19[4] = surface;
    [commandBuffer addCompletedHandler:v19];
    [commandBuffer commit];
    v18 = commandBuffer;
    pl_dispatch_async();
  }

  else
  {
    (*(handler + 2))(handler, surface);
    CFRelease(surface);
  }

  objc_autoreleasePoolPop(v7);
}

void __62__PLTiledLayer_runMetalConversionOnSurface_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __62__PLTiledLayer_runMetalConversionOnSurface_completionHandler___block_invoke_2(uint64_t a1)
{
  IOSurfaceDecrementUseCount(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __62__PLTiledLayer_runMetalConversionOnSurface_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) waitUntilScheduled];
  v2 = *(a1 + 32);
}

- (void)updateSubLayers:(id)layers
{
  v28 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [layers countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = 0x277CD9000uLL;
    v9 = 0x27CD37000uLL;
    selfCopy = self;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(layers);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 visible])
        {
          layer = [*(v8 + 3792) layer];
          if (*(&self->super.super.isa + *(v9 + 1932)) == 1)
          {
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v14 = v6;
            v15 = v7;
            v16 = v9;
            layersCopy = layers;
            v18 = v8;
            v19 = CGColorCreate(DeviceRGB, updateSubLayers__orange);
            [layer setBorderColor:v19];
            v20 = v19;
            v8 = v18;
            layers = layersCopy;
            v9 = v16;
            v7 = v15;
            v6 = v14;
            self = selfCopy;
            CGColorRelease(v20);
            CGColorSpaceRelease(DeviceRGB);
            [layer setBorderWidth:4.0];
          }

          [layer setContents:{objc_msgSend(v11, "decodedSurface")}];
          [layer setAllowsDisplayCompositing:0];
          [v11 imageRect];
          [layer setFrame:?];
          [layer setHidden:0];
          [(PLTiledLayer *)self addSublayer:layer];
          -[NSMutableDictionary setObject:forKey:](self->_subLayers, "setObject:forKey:", layer, [v11 tileId]);
        }

        else
        {
          v21 = -[NSMutableDictionary objectForKey:](self->_subLayers, "objectForKey:", [v11 tileId]);
          [v21 removeFromSuperlayer];
          [v21 setContents:0];
          -[NSMutableDictionary removeObjectForKey:](self->_subLayers, "removeObjectForKey:", [v11 tileId]);
        }
      }

      v6 = [layers countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)flushCache
{
  [(PLCache *)self->_tileCache removeAllObjects];
  surfacePool = self->_surfacePool;

  FigJPEGIOSurfacePoolFlush(surfacePool);
}

- (CGSize)jpegImageSize
{
  width = self->_fullSize.width;
  height = self->_fullSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  if (self->_decodeQueue)
  {
    v3 = PLTiledLayerDecodeQueueSpecific;
    if (dispatch_get_specific(PLTiledLayerDecodeQueueSpecific) != v3)
    {
      pl_dispatch_sync();
    }
  }

  if (self->_conversionQueue)
  {
    v4 = PLTiledLayerConversionQueueSpecific;
    if (dispatch_get_specific(PLTiledLayerConversionQueueSpecific) != v4)
    {
      pl_dispatch_sync();
    }
  }

  surfacePool = self->_surfacePool;
  if (surfacePool)
  {
    CFRelease(surfacePool);
  }

  decodeQueue = self->_decodeQueue;
  if (decodeQueue)
  {
    dispatch_release(decodeQueue);
  }

  conversionQueue = self->_conversionQueue;
  if (conversionQueue)
  {
    dispatch_release(conversionQueue);
  }

  if (self->_decoderCount >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      decoders = self->_decoders;
      if (decoders[v8].var0)
      {
        applejpeg_decode_destroy();
        decoders = self->_decoders;
      }

      var1 = decoders[v8].var1;
      if (var1)
      {
        dispatch_release(var1);
      }

      ++v9;
      ++v8;
    }

    while (v9 < self->_decoderCount);
  }

  free(self->_decoders);
  CGImageRelease(self->_placeholderImage);
  colorspace = self->_colorspace;
  if (colorspace)
  {
    CFRelease(colorspace);
  }

  vimageConverter = self->_vimageConverter;
  if (vimageConverter)
  {
    CFRelease(vimageConverter);
  }

  v14.receiver = self;
  v14.super_class = PLTiledLayer;
  [(PLTiledLayer *)&v14 dealloc];
}

- (PLTiledLayer)initWithJPEGData:(id)data placeholderImage:(CGImage *)image screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v76[1] = *MEMORY[0x277D85DE8];
  v74.receiver = self;
  v74.super_class = PLTiledLayer;
  v9 = [(PLTiledLayer *)&v74 init];
  if (!v9)
  {
    return v9;
  }

  v10 = CFPreferencesCopyAppValue(@"ajtiledlayer_trace", @"com.apple.coremedia");
  if (!v10)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 == CFStringGetTypeID())
  {
    v13 = CFStringGetIntValue(v11) == 0;
  }

  else
  {
    v15 = CFGetTypeID(v11);
    if (v15 != CFNumberGetTypeID())
    {
      v37 = CFGetTypeID(v11);
      v14 = v37 == CFBooleanGetTypeID() && v11 == *MEMORY[0x277CBED28];
      goto LABEL_11;
    }

    LODWORD(valuePtr[0]) = 0;
    CFNumberGetValue(v11, kCFNumberIntType, valuePtr);
    v13 = LODWORD(valuePtr[0]) == 0;
  }

  v14 = !v13;
LABEL_11:
  CFRelease(v11);
LABEL_12:
  gPLTiledLayerTrace = v14;
  if (!data)
  {
    goto LABEL_95;
  }

  v9[96] = MGGetBoolAnswer();
  *(v9 + 6) = data;
  if (width * height >= 1000000.0)
  {
    v16 = 512;
  }

  else
  {
    v16 = 256;
  }

  v17 = MEMORY[0x277D85E08];
  if (gPLTiledLayerTrace)
  {
    fprintf(*MEMORY[0x277D85E08], "using tile size: %d x %d\n", v16, v16);
    v18 = gPLTiledLayerTrace == 0;
  }

  else
  {
    v18 = 1;
  }

  *(v9 + 17) = v16;
  v19 = width / (v16 >> 1) + 1 + (width / (v16 >> 1) + 1) * (height / (v16 >> 1));
  v20 = v19 + v19 / 4;
  v21 = v20 / 10 + v20;
  if (!v18)
  {
    fprintf(*v17, "Maximum number of cached tiles: %d\n", v20 / 10 + v20);
  }

  *(v9 + 18) = v21;
  LODWORD(valuePtr[0]) = 0;
  v22 = CFPreferencesCopyAppValue(@"ajtiledlayer_decoder_count", @"com.apple.coremedia");
  if (v22)
  {
    v23 = v22;
    v24 = CFGetTypeID(v22);
    if (v24 == CFStringGetTypeID())
    {
      LODWORD(valuePtr[0]) = CFStringGetIntValue(v23);
    }

    else
    {
      v26 = CFGetTypeID(v23);
      if (v26 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v23, kCFNumberIntType, valuePtr);
      }
    }

    CFRelease(v23);
    LODWORD(v27) = valuePtr[0];
    v25 = v9 + 64;
    *(v9 + 16) = valuePtr[0];
    if (v27 > 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v25 = v9 + 64;
    *(v9 + 16) = 0;
  }

  LODWORD(v27) = FigThreadGetMaxLogicalCoreCount();
LABEL_29:
  if (v27 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v27;
  }

  *v25 = v27;
  *(v9 + 7) = malloc_type_calloc(v27, 0x10uLL, 0xA0040AFF93C70uLL);
  if (gPLTiledLayerTrace)
  {
    fprintf(*v17, "creating %d decoders\n", *v25);
  }

  *&valuePtr[0] = 0;
  v28 = CFPreferencesCopyAppValue(@"ajtiledlayer_zoomlevel_scale_factor", @"com.apple.coremedia");
  if (v28)
  {
    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFStringGetTypeID())
    {
      *&valuePtr[0] = CFStringGetDoubleValue(v29);
    }

    else
    {
      v32 = CFGetTypeID(v29);
      if (v32 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v29, kCFNumberCGFloatType, valuePtr);
      }
    }

    CFRelease(v29);
    v31 = *valuePtr;
  }

  else
  {
    v31 = 0.0;
  }

  if (v31 <= 0.0)
  {
    v31 = 1.0;
  }

  sZoomLevelScaleFactor = *&v31;
  if (gPLTiledLayerTrace)
  {
    fprintf(*v17, "using zoom-level scale factor %f\n", v31);
  }

  bytes = 0;
  v73 = 0;
  v71 = 0;
  memset(valuePtr, 0, sizeof(valuePtr));
  bytes = [*(v9 + 6) bytes];
  v73 = [*(v9 + 6) length];
  v33 = dispatch_queue_create("com.apple.coremedia.ajtiledecoder", 0);
  *(v9 + 24) = v33;
  dispatch_queue_set_specific(v33, PLTiledLayerDecodeQueueSpecific, PLTiledLayerDecodeQueueSpecific, 0);
  v34 = dispatch_queue_create("com.apple.coremedia.ajconversionqueue", 0);
  *(v9 + 25) = v34;
  dispatch_queue_set_specific(v34, PLTiledLayerConversionQueueSpecific, PLTiledLayerConversionQueueSpecific, 0);
  pl_dispatch_sync();
  if (!**(v9 + 7))
  {
    if (gPLTiledLayerTrace)
    {
      v36 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "[PLTiledLayer initWithJPEGData:placeholderImage:screenSize:]");
      fwrite("ffjpeg_decode_create failed", 0x1BuLL, 1uLL, *v36);
      goto LABEL_94;
    }

LABEL_95:

    return 0;
  }

  if (applejpeg_decode_open_mem())
  {
    if (gPLTiledLayerTrace)
    {
      v35 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "[PLTiledLayer initWithJPEGData:placeholderImage:screenSize:]");
      fprintf(*v35, "ffjpeg_decode_open_mem: error: %d");
LABEL_94:
      fputc(10, *MEMORY[0x277D85DF8]);
      goto LABEL_95;
    }

    goto LABEL_95;
  }

  if (applejpeg_decode_get_image_info())
  {
    if (gPLTiledLayerTrace)
    {
      v38 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "[PLTiledLayer initWithJPEGData:placeholderImage:screenSize:]");
      fprintf(*v38, "ffjpeg_decode_get_image_info: error: %d");
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v39.i64[0] = SDWORD2(valuePtr[0]);
  v39.i64[1] = SHIDWORD(valuePtr[0]);
  v69 = (v9 + 80);
  *(v9 + 5) = vcvtq_f64_s64(v39);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *(v9 + 28) = 875704422;
  v75 = @"kCGImageSourceKeepOriginalProfile";
  v76[0] = *MEMORY[0x277CBED28];
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
  v42 = CGImageSourceCreateWithData(data, v41);
  if (v42)
  {
    v43 = v42;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v42, 0, v41);
    if (ImageAtIndex)
    {
      v45 = ImageAtIndex;
      ColorSpace = CGImageGetColorSpace(ImageAtIndex);
      *(v9 + 13) = CGColorSpaceRetain(ColorSpace);
      CFRelease(v45);
    }

    CFRelease(v43);
  }

  if (*(v9 + 13))
  {
    v47 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (v47 && (CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      if (v9[96])
      {
        goto LABEL_103;
      }

      if (gPLTiledLayerTrace)
      {
        fwrite("Baking in color matching", 0x18uLL, 1uLL, *MEMORY[0x277D85E08]);
      }

      [v9 setupConverterForSourceColorSpace:*(v9 + 13) destinationColorSpace:v47];
      if (*(v9 + 17) || *(v9 + 18))
      {
        *(v9 + 28) = 1111970369;
        if (v9[96])
        {
          v68 = 1999843442;
        }

        else
        {
          v68 = 1111970369;
        }

        *(v9 + 29) = v68;
        LODWORD(v48) = 1;
      }

      else
      {
LABEL_103:
        v48 = CGColorSpaceCopyPropertyList(*(v9 + 13));
        if (v48)
        {
          if (gPLTiledLayerTrace)
          {
            fwrite("Doing color conversion at render time", 0x25uLL, 1uLL, *MEMORY[0x277D85E08]);
          }

          [dictionary setObject:v48 forKeyedSubscript:*MEMORY[0x277CD29C0]];
          CFRelease(v48);
          LODWORD(v48) = 0;
        }
      }
    }

    else
    {
      LODWORD(v48) = 0;
    }

    CGColorSpaceRelease(v47);
  }

  else
  {
    LODWORD(v48) = 0;
  }

  v49 = *v69;
  v50 = *(v9 + 11);
  v51 = *(v9 + 17) * *(v9 + 17);
  if (*(v9 + 28) == 875704422)
  {
    v52 = v51 + (v51 >> 1);
    v53 = v50 * v49;
    v54 = 3 * v53 / 2;
  }

  else
  {
    v52 = 4 * v51;
    v53 = v50 * v49;
    v54 = 4 * v53;
  }

  v55 = v52 * *(v9 + 18);
  if (v49 < v50)
  {
    v49 = *(v9 + 11);
  }

  v57 = v49 >= 4096.0 || v55 < v54;
  v58 = v48 | v57;
  if (v48)
  {
    v59 = MEMORY[0x277D85E08];
    if (!v57)
    {
      if (*(v9 + 29) == 875704422)
      {
        v60 = 3 * v53 / 2;
      }

      else
      {
        v60 = 4 * v53;
      }

      v58 = v55 < v60 + v54;
    }
  }

  else
  {
    v59 = MEMORY[0x277D85E08];
  }

  if (gPLTiledLayerTrace)
  {
    fprintf(*v59, "shouldTileImage: %d", v58 & 1);
  }

  v9[97] = v58 & 1;
  if ((v58 & 1) == 0)
  {
    *(v9 + 18) = 1;
    v61 = *v69;
    if (*(v9 + 10) < *(v9 + 11))
    {
      v61 = *(v9 + 11);
    }

    *(v9 + 17) = v61;
  }

  [dictionary setObject:&unk_282C53640 forKeyedSubscript:@"HighWaterBytes"];
  [dictionary setObject:&unk_282C53640 forKeyedSubscript:@"LowWaterBytes"];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInteger:", 2 * *(v9 + 18) + 50), @"HighWaterBufferCount"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInteger:", 2 * *(v9 + 18)), @"LowWaterBufferCount"}];
  if (FigJPEGIOSurfaceImagePoolCreate(*MEMORY[0x277CBECE8], dictionary, v9 + 21))
  {
    if (gPLTiledLayerTrace)
    {
      v62 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "[PLTiledLayer initWithJPEGData:placeholderImage:screenSize:]");
      fprintf(*v62, "FigJPEGIOSurfaceImagePoolCreate: error: %d");
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  [v9 setFrame:{0.0, 0.0, SDWORD2(valuePtr[0]), SHIDWORD(valuePtr[0])}];
  *(v9 + 20) = [[PLCache alloc] initWithCountLimit:*(v9 + 18) totalCostLimit:0];
  *(v9 + 22) = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
  *(v9 + 23) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  *(v9 + 53) = -1;
  *(v9 + 60) = 0;
  *(v9 + 28) = image;
  if (image)
  {
    CGImageRetain(image);
    layer = [MEMORY[0x277CD9ED0] layer];
    *(v9 + 27) = layer;
    [layer setContents:*(v9 + 28)];
    [*(v9 + 27) setAllowsDisplayCompositing:0];
    [v9 frame];
    [*(v9 + 27) setFrame:?];
    [*(v9 + 27) setHidden:0];
    [v9 addSublayer:*(v9 + 27)];
    v65 = CGImageGetWidth(*(v9 + 28));
    [v9 zoomStartScaleForImage:*(v9 + 10) placeholderImageSize:{*(v9 + 11), v65, CGImageGetHeight(*(v9 + 28))}];
    *(v9 + 29) = v66;
  }

  if (gPLTiledLayerTrace)
  {
    fprintf(*v59, "zoomStartScale: %f\n", *(v9 + 29));
  }

  v67 = *(MEMORY[0x277CBF398] + 16);
  *(v9 + 248) = *MEMORY[0x277CBF398];
  *(v9 + 264) = v67;
  v9[288] = getShowTilePreferences();
  pl_dispatch_async();
  return v9;
}

dispatch_queue_t __61__PLTiledLayer_initWithJPEGData_placeholderImage_screenSize___block_invoke(uint64_t a1)
{
  **(*(a1 + 32) + 56) = applejpeg_decode_create();
  result = dispatch_queue_create("com.apple.coremedia.ajdecodesession", 0);
  *(*(*(a1 + 32) + 56) + 8) = result;
  return result;
}

- (void)setupConverterForSourceColorSpace:(CGColorSpace *)space destinationColorSpace:(CGColorSpace *)colorSpace
{
  v81[1] = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v62 = 0;
  spaceCopy = &v62;
  *v64 = 0x2020000000;
  v8 = getMTLCreateSystemDefaultDeviceSymbolLoc_ptr;
  *&v64[8] = getMTLCreateSystemDefaultDeviceSymbolLoc_ptr;
  if (!getMTLCreateSystemDefaultDeviceSymbolLoc_ptr)
  {
    v65 = MEMORY[0x277D85DD0];
    v66 = 3221225472;
    v67 = __getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke;
    v68 = &unk_2782A1E88;
    v69 = &v62;
    v9 = MetalLibrary();
    v10 = dlsym(v9, "MTLCreateSystemDefaultDevice");
    *(*(v69 + 1) + 24) = v10;
    getMTLCreateSystemDefaultDeviceSymbolLoc_ptr = *(*(v69 + 1) + 24);
    v8 = *(spaceCopy + 24);
  }

  _Block_object_dispose(&v62, 8);
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"id PL_MTLCreateSystemDefaultDevice(void)") description:{@"PLTiledLayer.m", 72, @"%s", dlerror()}];
    goto LABEL_40;
  }

  v11 = v8();
  self->_metalDevice = v11;
  if (v11)
  {
    v80 = *MEMORY[0x277CBF4D0];
    v81[0] = MEMORY[0x277CBEC38];
    v12 = CGColorConversionInfoCreateFromList([MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1], space, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, colorSpace, 1, 0, 0);
    if (v12)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x3052000000;
      v68 = __Block_byref_object_copy__3047;
      v13 = getMPSImageConversionClass_softClass;
      v69 = __Block_byref_object_dispose__3048;
      v70 = getMPSImageConversionClass_softClass;
      if (!getMPSImageConversionClass_softClass)
      {
        v62 = MEMORY[0x277D85DD0];
        spaceCopy = 3221225472;
        *v64 = __getMPSImageConversionClass_block_invoke;
        *&v64[8] = &unk_2782A1E88;
        *&v64[16] = &v65;
        __getMPSImageConversionClass_block_invoke(&v62);
        v13 = *(v66 + 40);
      }

      _Block_object_dispose(&v65, 8);
      self->_metalConverter = [[v13 alloc] initWithDevice:self->_metalDevice srcAlpha:1 destAlpha:1 backgroundColor:0 conversionInfo:v12];
      self->_metalCmdQueue = [(MTLDevice *)self->_metalDevice newCommandQueue];
      v14 = v12;
    }

    metalDevice = self->_metalDevice;
    if (metalDevice && self->_metalConverter && self->_metalCmdQueue)
    {
      goto LABEL_38;
    }

    self->_metalDevice = 0;
    self->_metalCmdQueue = 0;

    self->_metalConverter = 0;
  }

  v62 = 0x2000000008;
  spaceCopy = space;
  *v64 = 8198;
  memset(&v64[4], 0, 20);
  v61 = 0;
  v57[0] = 0x2000000008;
  v57[1] = colorSpace;
  v58 = 8198;
  v59 = 0;
  v60 = 0;
  v16 = CGColorSpaceCopyICCData(space);
  v17 = CGColorSpaceCopyICCData(colorSpace);
  v18 = v16;
  v19 = v17;
  if (v16)
  {
    if (v17)
    {
      v20 = PL_ColorSyncProfileCreate(v16);
      v21 = PL_ColorSyncProfileCreate(v17);
      v22 = v20;
      v23 = v21;
      if (v20)
      {
        if (v21)
        {
          v78[0] = getkColorSyncProfile();
          v79[0] = v20;
          v78[1] = getkColorSyncRenderingIntent();
          v79[1] = getkColorSyncRenderingIntentPerceptual();
          v78[2] = getkColorSyncTransformTag();
          v71 = 0;
          v72 = &v71;
          v73 = 0x2020000000;
          v24 = getkColorSyncTransformDeviceToPCSSymbolLoc_ptr;
          v74 = getkColorSyncTransformDeviceToPCSSymbolLoc_ptr;
          if (!getkColorSyncTransformDeviceToPCSSymbolLoc_ptr)
          {
            v65 = MEMORY[0x277D85DD0];
            v66 = 3221225472;
            v67 = __getkColorSyncTransformDeviceToPCSSymbolLoc_block_invoke;
            v68 = &unk_2782A1E88;
            v69 = &v71;
            v25 = ColorSyncLibrary();
            v26 = dlsym(v25, "kColorSyncTransformDeviceToPCS");
            *(*(v69 + 1) + 24) = v26;
            getkColorSyncTransformDeviceToPCSSymbolLoc_ptr = *(*(v69 + 1) + 24);
            v24 = v72[3];
          }

          _Block_object_dispose(&v71, 8);
          if (!v24)
          {
            goto LABEL_41;
          }

          v79[2] = *v24;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
          v76[0] = getkColorSyncProfile();
          v77[0] = v21;
          v76[1] = getkColorSyncRenderingIntent();
          v77[1] = getkColorSyncRenderingIntentPerceptual();
          v76[2] = getkColorSyncTransformTag();
          v71 = 0;
          v72 = &v71;
          v73 = 0x2020000000;
          v28 = getkColorSyncTransformPCSToDeviceSymbolLoc_ptr;
          v74 = getkColorSyncTransformPCSToDeviceSymbolLoc_ptr;
          if (!getkColorSyncTransformPCSToDeviceSymbolLoc_ptr)
          {
            v65 = MEMORY[0x277D85DD0];
            v66 = 3221225472;
            v67 = __getkColorSyncTransformPCSToDeviceSymbolLoc_block_invoke;
            v68 = &unk_2782A1E88;
            v69 = &v71;
            v29 = ColorSyncLibrary();
            v30 = dlsym(v29, "kColorSyncTransformPCSToDevice");
            *(*(v69 + 1) + 24) = v30;
            getkColorSyncTransformPCSToDeviceSymbolLoc_ptr = *(*(v69 + 1) + 24);
            v28 = v72[3];
          }

          _Block_object_dispose(&v71, 8);
          if (!v28)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncTransformPCSToDevice(void)") description:{@"PLTiledLayer.m", 87, @"%s", dlerror()}];
            goto LABEL_40;
          }

          v77[2] = *v28;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
          v75[0] = v27;
          v75[1] = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
          v71 = 0;
          v72 = &v71;
          v73 = 0x2020000000;
          v33 = getColorSyncTransformCreateSymbolLoc_ptr;
          v74 = getColorSyncTransformCreateSymbolLoc_ptr;
          if (!getColorSyncTransformCreateSymbolLoc_ptr)
          {
            v65 = MEMORY[0x277D85DD0];
            v66 = 3221225472;
            v67 = __getColorSyncTransformCreateSymbolLoc_block_invoke;
            v68 = &unk_2782A1E88;
            v69 = &v71;
            v34 = ColorSyncLibrary();
            v35 = dlsym(v34, "ColorSyncTransformCreate");
            *(*(v69 + 1) + 24) = v35;
            getColorSyncTransformCreateSymbolLoc_ptr = *(*(v69 + 1) + 24);
            v33 = v72[3];
          }

          _Block_object_dispose(&v71, 8);
          if (!v33)
          {
            currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler3 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"ColorSyncTransformRef PL_ColorSyncTransformCreate(CFArrayRef description:{CFDictionaryRef)"), @"PLTiledLayer.m", 82, @"%s", dlerror()}];
            goto LABEL_40;
          }

          v36 = v33(v32, 0);
          v37 = v36;
          if (v36)
          {
            v71 = 0;
            v72 = &v71;
            v73 = 0x2020000000;
            v38 = getkColorSyncTransformFullConversionDataSymbolLoc_ptr;
            v74 = getkColorSyncTransformFullConversionDataSymbolLoc_ptr;
            if (!getkColorSyncTransformFullConversionDataSymbolLoc_ptr)
            {
              v65 = MEMORY[0x277D85DD0];
              v66 = 3221225472;
              v67 = __getkColorSyncTransformFullConversionDataSymbolLoc_block_invoke;
              v68 = &unk_2782A1E88;
              v69 = &v71;
              v39 = ColorSyncLibrary();
              v40 = dlsym(v39, "kColorSyncTransformFullConversionData");
              *(*(v69 + 1) + 24) = v40;
              getkColorSyncTransformFullConversionDataSymbolLoc_ptr = *(*(v69 + 1) + 24);
              v38 = v72[3];
            }

            _Block_object_dispose(&v71, 8);
            if (!v38)
            {
              currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler4 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncTransformFullConversionData(void)") description:{@"PLTiledLayer.m", 88, @"%s", dlerror()}];
              goto LABEL_40;
            }

            v41 = *v38;
            v71 = 0;
            v72 = &v71;
            v73 = 0x2020000000;
            v42 = getColorSyncTransformCopyPropertySymbolLoc_ptr;
            v74 = getColorSyncTransformCopyPropertySymbolLoc_ptr;
            if (!getColorSyncTransformCopyPropertySymbolLoc_ptr)
            {
              v65 = MEMORY[0x277D85DD0];
              v66 = 3221225472;
              v67 = __getColorSyncTransformCopyPropertySymbolLoc_block_invoke;
              v68 = &unk_2782A1E88;
              v69 = &v71;
              v43 = ColorSyncLibrary();
              v44 = dlsym(v43, "ColorSyncTransformCopyProperty");
              *(*(v69 + 1) + 24) = v44;
              getColorSyncTransformCopyPropertySymbolLoc_ptr = *(*(v69 + 1) + 24);
              v42 = v72[3];
            }

            _Block_object_dispose(&v71, 8);
            if (!v42)
            {
              currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler5 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"CFTypeRef PL_ColorSyncTransformCopyProperty(ColorSyncTransformRef description:{CFTypeRef, CFDictionaryRef)"), @"PLTiledLayer.m", 84, @"%s", dlerror()}];
              goto LABEL_40;
            }

            v45 = v42(v36, v41, 0);
            v46 = v45;
            if (v45)
            {
              v71 = 0;
              v72 = &v71;
              v73 = 0x2020000000;
              v47 = getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_ptr;
              v74 = getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_ptr;
              if (!getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_ptr)
              {
                v65 = MEMORY[0x277D85DD0];
                v66 = 3221225472;
                v67 = __getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_block_invoke;
                v68 = &unk_2782A1E88;
                v69 = &v71;
                v48 = AccelerateLibrary();
                v49 = dlsym(v48, "vImageConverter_CreateWithColorSyncCodeFragment");
                *(*(v69 + 1) + 24) = v49;
                getvImageConverter_CreateWithColorSyncCodeFragmentSymbolLoc_ptr = *(*(v69 + 1) + 24);
                v47 = v72[3];
              }

              _Block_object_dispose(&v71, 8);
              if (v47)
              {
                self->_vimageConverter = (v47)(v45, &v62, v57, 0, 0, 0);
                goto LABEL_38;
              }

              currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler6 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"vImageConverterRef PL_vImageConverter_CreateWithColorSyncCodeFragment(CFTypeRef description:{const vImage_CGImageFormat *, const vImage_CGImageFormat *, const CGFloat *, vImage_Flags, vImage_Error *)"), @"PLTiledLayer.m", 78, @"%s", dlerror()}];
              while (1)
              {
LABEL_40:
                __break(1u);
LABEL_41:
                currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler7 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"NSString *getkColorSyncTransformDeviceToPCS(void)") description:{@"PLTiledLayer.m", 86, @"%s", dlerror()}];
              }
            }
          }
        }
      }
    }
  }

LABEL_38:
  objc_autoreleasePoolPop(v7);
}

- (double)zoomStartScaleForImage:(CGSize)image placeholderImageSize:(CGSize)size
{
  v4 = size.width / image.width;
  v5 = size.height / image.height;
  if (v4 >= v5)
  {
    v5 = v4;
  }

  v6 = 1.0;
  do
  {
    result = v6;
    v6 = v6 * 0.5;
  }

  while (v6 > v5);
  return result;
}

- (void)prepareForDecoding
{
  applejpeg_decode_options_init();
  v3 = applejpeg_decode_build_index_table();
  self->_err = v3;
  if (v3)
  {
    if (gPLTiledLayerTrace)
    {
      v4 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Error in %s: ", "[PLTiledLayer prepareForDecoding]");
      fprintf(*v4, "ffjpeg_decode_build_index_table: error: %d", self->_err);
      fputc(10, *v4);
    }
  }

  else if (self->_decoderCount >= 2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      self->_decoders[v5 + 1].var0 = applejpeg_decode_clone_session();
      self->_decoders[v5 + 1].var1 = dispatch_queue_create("com.apple.coremedia.ajdecodesession", 0);
      ++v6;
      ++v5;
    }

    while (v6 < self->_decoderCount);
  }
}

@end
@interface PXGTextureManager
- (BOOL)_getRequestDetails:(id *)details forRequestID:(int)d;
- (BOOL)streamUpdatedTexturesForDisplayLinkIfNeeded:(id)needed;
- (CGImage)textureSnapshotForSpriteIndex:(unsigned int)index;
- (NSString)description;
- (PXGTextureManager)initWithEntityManager:(id)manager layoutQueue:(id)queue;
- (PXGTextureManagerDelegate)delegate;
- (id).cxx_construct;
- (id)_createTextureForCGImage:(CGImage *)image requestID:(int)d requestDetails:(id)details processingOptions:(id)options fromTextureProvider:(id)provider withTextureConverter:(id)converter;
- (id)_createTextureForCVPixelBuffer:(__CVBuffer *)buffer requestID:(int)d requestDetails:(id)details processingOptions:(id)options fromTextureProvider:(id)provider withTextureConverter:(id)converter;
- (id)_existingAdjustedTextureForSourceTexture:(id)texture adjustment:(id)adjustment wantsMipmaps:(BOOL)mipmaps presentationType:(unsigned __int8)type;
- (id)_existingTextureForCGImage:(CGImage *)image processingOptions:(id)options presentationType:(unsigned __int8)type;
- (id)_existingTextureForKey:(id)key presentationType:(unsigned __int8)type;
- (id)_existingTextureForPayload:(id)payload presentationType:(unsigned __int8)type;
- (id)_existingTextureForPixelBuffer:(__CVBuffer *)buffer processingOptions:(id)options presentationType:(unsigned __int8)type;
- (id)_storeAdjustedTexture:(id)texture forSourceTexture:(id)sourceTexture adjustment:(id)adjustment mipmaps:(BOOL)mipmaps;
- (id)_storeTexture:(id)texture forKey:(id)key;
- (id)_storeTexture:(id)texture forKey:(id)key replaceExisting:(BOOL)existing presentationType:(unsigned __int8)type;
- (id)_storeTexture:(id)texture forPayload:(id)payload;
- (id)_textureAtlasManagerForImageDataSpec:(id *)spec;
- (id)_textureConverterForPresentationType:(unsigned __int8)type contentType:(unint64_t)contentType;
- (id)textureProvider:(id)provider requestRenderSnapshot:(id *)snapshot offscreenEffect:(id)effect;
- (int64_t)_processTextureProviderResults;
- (void)_addTextureToTexturesInUse:(id)use;
- (void)_applyAdjustment:(id)adjustment withMipmaps:(BOOL)mipmaps toTexture:(id)texture fromTextureProvider:(id)provider withTextureConverter:(id)converter forRequestID:(int)d deliveryOrder:(unsigned int)order requestDetails:(id)self0;
- (void)_configureAllTextureConverters;
- (void)_configureAllTextureProviders;
- (void)_configureTextureConverter:(id)converter;
- (void)_configureTextureProvider:(id)provider;
- (void)_enumerateSpriteTextures:(id)textures;
- (void)_enumerateTextureConverters:(id)converters;
- (void)_enumerateTextureProviders:(id)providers;
- (void)_handleProvidedSpriteTexture:(id)texture fromTextureProvider:(id)provider requestID:(int)d deliveryOrder:(unsigned int)order;
- (void)_lookupLock_requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range textureProvider:(id)provider mediaKind:(unsigned __int8)kind presentationType:(unsigned __int8)type isAppearing:(BOOL)appearing layout:(id)layout leafSpriteIndexRange:(_PXGSpriteIndexRange)indexRange sprites:(id *)self0 textureStreamInfos:(id *)self1 loadingStatus:(id)self2;
- (void)_processCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded fromTextureProvider:(id)provider withTextureConverter:(id)converter requestID:(int)d requestDetails:(id)self0 deliveryOrder:(unsigned int)self1;
- (void)_processPixelBuffer:(__CVBuffer *)buffer options:(id)options adjustment:(id)adjustment fromTextureProvider:(id)provider withTextureConverter:(id)converter forRequestID:(int)d requestDetails:(id)details deliveryOrder:(unsigned int)self0;
- (void)_pruneTextures:(id)textures;
- (void)_registerTextureConverter:(id)converter forPresentationType:(unsigned __int8)type;
- (void)_removeAllTexturesForPresentationType:(unsigned __int8)type;
- (void)_requestQueue_scheduleUpdateIfAllowed;
- (void)_resizeStorageIfNeededForSpriteCount:(int64_t)count;
- (void)_setNeedsUpdate;
- (void)_streamTexturesForSpritesInDataStore:(id)store presentationDataStore:(id)dataStore changeDetails:(id)details layout:(id)layout interactionState:(id *)state loadingStatus:(id)status;
- (void)_updatePreheatingStrategy;
- (void)dealloc;
- (void)registerTextureProvider:(id)provider forMediaKind:(unsigned __int8)kind;
- (void)releaseCachedResources;
- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)mode;
- (void)setLowMemoryMode:(BOOL)mode;
- (void)setPreferBGRA:(BOOL)a;
- (void)setPreferMipmaps:(BOOL)mipmaps;
- (void)setPreferredColorSpaceName:(unint64_t)name;
- (void)setTextureConverters:(id)converters;
- (void)setViewEnvironment:(id)environment;
- (void)streamTexturesForSpritesInDataStore:(id)store presentationDataStore:(id)dataStore changeDetails:(id)details layout:(id)layout interactionState:(id *)state;
- (void)textureProvider:(id)provider didProvideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d;
- (void)textureProvider:(id)provider didProvideFailureWithError:(id)error forRequestID:(int)d;
- (void)textureProvider:(id)provider didProvideImageData:(id)data withSpecAtIndex:(int64_t)index size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect forRequestID:(int)d;
- (void)textureProvider:(id)provider didProvideNothingForRequestID:(int)d;
- (void)textureProvider:(id)provider didProvidePayload:(id)payload forRequestID:(int)d;
- (void)textureProvider:(id)provider didProvidePixelBuffer:(__CVBuffer *)buffer options:(id)options adjustment:(id)adjustment forRequestID:(int)d;
- (void)textureProviderNeedsToRegisterToDisplayLinkUpdates:(id)updates;
- (void)textureProviderNeedsToUnregisterFromDisplayLinkUpdates:(id)updates;
@end

@implementation PXGTextureManager

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
  return self;
}

- (void)_updatePreheatingStrategy
{
  if ([(PXGTextureManager *)self lowMemoryMode])
  {
    +[PXGTextureManagerPreheatingStrategy lowMemoryPreheatingStrategy];
  }

  else
  {
    +[PXGTextureManagerPreheatingStrategy defaultPreheatingStrategy];
  }
  v3 = ;
  preheatingStrategy = self->_preheatingStrategy;
  self->_preheatingStrategy = v3;
}

- (void)_setNeedsUpdate
{
  layoutQueue = [(PXGTextureManager *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  delegate = [(PXGTextureManager *)self delegate];
  [delegate textureManagerNeedsUpdate:self];
}

- (PXGTextureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_configureAllTextureProviders
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__PXGTextureManager__configureAllTextureProviders__block_invoke;
  v2[3] = &unk_2782AC280;
  v2[4] = self;
  [(PXGTextureManager *)self _enumerateTextureProviders:v2];
}

- (int64_t)_processTextureProviderResults
{
  layoutQueue = [(PXGTextureManager *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  entityManager = [(PXGTextureManager *)self entityManager];
  loadingStatus = [entityManager loadingStatus];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PXGTextureManager__processTextureProviderResults__block_invoke;
  v8[3] = &unk_2782AC208;
  v8[4] = self;
  v8[5] = &v9;
  [loadingStatus performChanges:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __51__PXGTextureManager__processTextureProviderResults__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mutableStates];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__PXGTextureManager__processTextureProviderResults__block_invoke_2;
  v16[3] = &unk_2782AC1B8;
  v18 = v4;
  v17 = *(a1 + 32);
  [v17 _enumerateSpriteTextures:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) textureAtlasManagers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __51__PXGTextureManager__processTextureProviderResults__block_invoke_4;
        v11[3] = &unk_2782AC1E0;
        v10 = *(a1 + 40);
        v11[4] = *(a1 + 32);
        v11[5] = v9;
        v11[6] = v10;
        v11[7] = v4;
        [v9 processPendingThumbnailRequestIDsWithHandler:v11];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v6);
  }
}

void __51__PXGTextureManager__processTextureProviderResults__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PXGTextureManager__processTextureProviderResults__block_invoke_3;
  v5[3] = &unk_2782AC190;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 40);
  v4 = v3;
  [v4 processPendingTextureRequestIDsWithHandler:v5];
}

- (void)_requestQueue_scheduleUpdateIfAllowed
{
  if (!atomic_fetch_or(&self->_isPerformingUpdateFromRequestQueue, 1u))
  {
    block[7] = v2;
    block[8] = v3;
    self->_requestQueue_pendingSetNeedsUpdate = 0;
    layoutQueue = [(PXGTextureManager *)self layoutQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PXGTextureManager__requestQueue_scheduleUpdateIfAllowed__block_invoke;
    block[3] = &unk_2782ABE50;
    block[4] = self;
    dispatch_async(layoutQueue, block);
  }
}

uint64_t __51__PXGTextureManager__processTextureProviderResults__block_invoke_3(uint64_t a1, int a2, unsigned int a3)
{
  v30 = a2;
  v6 = *(a1 + 32);
  if (std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::find<int>(v6 + 20, a2))
  {
    v31 = &v30;
    v7 = *(std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v6 + 20, a2) + 5);
    v6 = *(a1 + 32);
    v8 = (v6[26] + 66 * v7);
    if (v8[11] < a3)
    {
      v9 = *(a1 + 40);
      v10 = *(v8 + 9);
      if (v10)
      {
        v11 = v10;
        [v11 removeSpriteIndex:v7];

        *(v8 + 64) = 0;
        *(v8 + 9) = 0;
        *(v8 + 7) = 0;
      }

      [v9 pixelSize];
      v28 = v13;
      v29 = v12;
      v14 = v9;
      *(v8 + 9) = v14;
      v15.f64[0] = v29;
      v15.f64[1] = v28;
      *(v8 + 7) = vcvt_f32_f64(v15);
      v8[11] = a3;
      if ([v14 isDegraded])
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      *(v8 + 64) = v16;

      v17 = *(a1 + 56);
      if (*(v8 + 64) == 3)
      {
        LOBYTE(v18) = 4;
LABEL_31:
        *(v17 + *v8) = v18;
        ++*(*(*(a1 + 48) + 8) + 24);
        v6 = *(a1 + 32);
        goto LABEL_32;
      }

      v19 = *(v8 + 9);
      if (v19 <= 0xC)
      {
        v20 = *(v8 + 5);
        v21 = 1 << v19;
        if ((v21 & 0x15D8) != 0)
        {
          v28 = *(v8 + 3);
          if (PXFloatApproximatelyEqualToFloat() && (PXFloatApproximatelyEqualToFloat() & 1) != 0)
          {
            goto LABEL_30;
          }

LABEL_18:
          if (v8[11] && *(v8 + 9))
          {
            v22 = *(v8 + 64);
            if (v22 >= 2)
            {
              if (v22 != 2)
              {
                if (v22 == 3)
                {
                  v26 = [MEMORY[0x277CCA890] currentHandler];
                  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGUpdateLoadingStatusForStreamInfo(PXGSpriteIndex, const PXGStreamInfo *, PXGLoadingState *)"}];
                  [v26 handleFailureInFunction:v27 file:@"PXGTextureManager.mm" lineNumber:191 description:@"Should be handled earlier"];

                  abort();
                }

                LOBYTE(v18) = 0;
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          else if (COERCE_FLOAT(*(v8 + 5)) <= 0.0)
          {
            v18 = v8[1];
            if (v18)
            {
              LOBYTE(v18) = *(v8 + 9) != 0;
            }

            goto LABEL_31;
          }

          LOBYTE(v18) = 2;
          goto LABEL_31;
        }

        if ((v21 & 0x807) == 0)
        {
          if (v20.f32[0] > 0.0)
          {
            v20.i32[0] = HIDWORD(*(v8 + 5));
            if (v20.f32[1] > 0.0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_18;
        }

        v20 = vcge_f32(v20, *(v8 + 3));
        if ((v20.i32[0] & v20.i32[1] & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_30:
      LOBYTE(v18) = 3;
      goto LABEL_31;
    }
  }

  v7 = 0xFFFFFFFFLL;
LABEL_32:
  v23 = v6[14];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:{v30, *&v28}];
  [v23 removeObjectForKey:v24];

  return v7;
}

uint64_t __51__PXGTextureManager__processTextureProviderResults__block_invoke_4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, double a5)
{
  v27 = a2;
  v10 = *(a1 + 32);
  if (std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::find<int>((v10 + 160), a2))
  {
    v28 = &v27;
    v11 = *(std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v10 + 160), a2) + 5);
    v12 = (*(*(a1 + 32) + 208) + 66 * v11);
    if (v12[15] < a4)
    {
      v13 = *(a1 + 40);
      v14 = *(v12 + 6);
      v15 = v14;
      if (v14)
      {
        [v14 removeSpriteIndex:v11 atThumbnailIndex:v12[14]];
        *(v12 + 6) = 0;
        v12[5] = 0;
        v12[6] = 0;
      }

      v12[14] = a3;
      v12[15] = a4;
      *(v12 + 6) = v13;
      *(v12 + 5) = a5;

      if (!v12[11])
      {
        v16 = *(v12 + 9);
        if (v16)
        {
          v17 = v16;
          [v17 removeSpriteIndex:v11];

          *(v12 + 64) = 0;
          *(v12 + 9) = 0;
          *(v12 + 7) = 0;
        }
      }

      v18 = *(a1 + 56);
      if (*(v12 + 64) == 3)
      {
        LOBYTE(v19) = 4;
LABEL_31:
        *(v18 + *v12) = v19;
        ++*(*(*(a1 + 48) + 8) + 24);
        return v11;
      }

      v20 = *(v12 + 9);
      if (v20 <= 0xC)
      {
        v21 = *(v12 + 5);
        v22 = 1 << v20;
        if ((v22 & 0x15D8) != 0)
        {
          if (PXFloatApproximatelyEqualToFloat() && (PXFloatApproximatelyEqualToFloat() & 1) != 0)
          {
            goto LABEL_30;
          }

LABEL_18:
          if (v12[11] && *(v12 + 9))
          {
            v23 = *(v12 + 64);
            if (v23 >= 2)
            {
              if (v23 != 2)
              {
                if (v23 == 3)
                {
                  v25 = [MEMORY[0x277CCA890] currentHandler];
                  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGUpdateLoadingStatusForStreamInfo(PXGSpriteIndex, const PXGStreamInfo *, PXGLoadingState *)"}];
                  [v25 handleFailureInFunction:v26 file:@"PXGTextureManager.mm" lineNumber:191 description:@"Should be handled earlier"];

                  abort();
                }

                LOBYTE(v19) = 0;
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          else if (COERCE_FLOAT(*(v12 + 5)) <= 0.0)
          {
            v19 = v12[1];
            if (v19)
            {
              LOBYTE(v19) = *(v12 + 9) != 0;
            }

            goto LABEL_31;
          }

          LOBYTE(v19) = 2;
          goto LABEL_31;
        }

        if ((v22 & 0x807) == 0)
        {
          if (v21.f32[0] > 0.0)
          {
            v21.i32[0] = HIDWORD(*(v12 + 5));
            if (v21.f32[1] > 0.0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_18;
        }

        v21 = vcge_f32(v21, *(v12 + 3));
        if ((v21.i32[0] & v21.i32[1] & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_30:
      LOBYTE(v19) = 3;
      goto LABEL_31;
    }
  }

  return 0xFFFFFFFFLL;
}

- (id)textureProvider:(id)provider requestRenderSnapshot:(id *)snapshot offscreenEffect:(id)effect
{
  effectCopy = effect;
  delegate = [(PXGTextureManager *)self delegate];
  v9 = *&snapshot->var1.origin.y;
  v12[0] = *&snapshot->var0;
  v12[1] = v9;
  height = snapshot->var1.size.height;
  v10 = [delegate textureManager:self requestRenderSnapshot:v12 offscreenEffect:effectCopy];

  return v10;
}

- (void)textureProviderNeedsToUnregisterFromDisplayLinkUpdates:(id)updates
{
  updatesCopy = updates;
  layoutQueue = [(PXGTextureManager *)self layoutQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__PXGTextureManager_textureProviderNeedsToUnregisterFromDisplayLinkUpdates___block_invoke;
  v7[3] = &unk_2782AC0A8;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(layoutQueue, v7);
}

- (void)textureProviderNeedsToRegisterToDisplayLinkUpdates:(id)updates
{
  updatesCopy = updates;
  layoutQueue = [(PXGTextureManager *)self layoutQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__PXGTextureManager_textureProviderNeedsToRegisterToDisplayLinkUpdates___block_invoke;
  v7[3] = &unk_2782AC0A8;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(layoutQueue, v7);
}

uint64_t __72__PXGTextureManager_textureProviderNeedsToRegisterToDisplayLinkUpdates___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 152) setObject:MEMORY[0x277CBEC38] forKey:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _setNeedsUpdate];
}

- (void)textureProvider:(id)provider didProvidePayload:(id)payload forRequestID:(int)d
{
  v5 = *&d;
  providerCopy = provider;
  payloadCopy = payload;
  dispatch_assert_queue_V2(self->_requestQueue);
  v10 = +[PXTungstenSettings sharedInstance];
  requestThumbnailsOnly = [v10 requestThumbnailsOnly];

  if ((requestThumbnailsOnly & 1) == 0 && [providerCopy isRequestActive:v5] && -[PXGTextureManager _getRequestDetails:forRequestID:](self, "_getRequestDetails:forRequestID:", v16, v5))
  {
    add = atomic_fetch_add(PXGMakeNextTextureDeliveryOrderID_lastRequestID, 1u);
    v13 = [(PXGTextureManager *)self _existingTextureForPayload:payloadCopy presentationType:v16[0]];
    if (v13)
    {
      [(PXGTextureManager *)self _handleProvidedSpriteTexture:v13 fromTextureProvider:providerCopy requestID:v5 deliveryOrder:add];
    }

    else
    {
      v14 = [(PXGTextureManager *)self _textureConverterForPresentationType:v16[0] contentType:4];
      v15 = [v14 createPayloadTextureFromPayload:payloadCopy];
      if (v15)
      {
        v13 = [(PXGTextureManager *)self _storeTexture:v15 forPayload:payloadCopy];
        [(PXGTextureManager *)self _handleProvidedSpriteTexture:v13 fromTextureProvider:providerCopy requestID:v5 deliveryOrder:add];
      }

      else
      {
        v13 = 0;
      }
    }
  }
}

- (void)textureProvider:(id)provider didProvideFailureWithError:(id)error forRequestID:(int)d
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_requestQueue);
  layoutQueue = self->_layoutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PXGTextureManager_textureProvider_didProvideFailureWithError_forRequestID___block_invoke;
  block[3] = &unk_2782AC3E8;
  dCopy = d;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(layoutQueue, block);
}

void __77__PXGTextureManager_textureProvider_didProvideFailureWithError_forRequestID___block_invoke(uint64_t a1)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  if (std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::find<int>((v4 + 160), v2))
  {
    v12 = v3;
    v5 = *(std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v4 + 160), v2) + 5);
    v6 = [*(a1 + 32) entityManager];
    v7 = [v6 loadingStatus];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__PXGTextureManager_textureProvider_didProvideFailureWithError_forRequestID___block_invoke_2;
    v9[3] = &unk_2782AC3C0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v11 = v5;
    v10 = v8;
    [v7 performChanges:v9];
  }
}

void __77__PXGTextureManager_textureProvider_didProvideFailureWithError_forRequestID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 208) + 66 * *(a1 + 48));
  *(v4 + 64) = 3;
  v16 = v3;
  v5 = [v16 mutableStates];
  if (*(v4 + 64) == 3)
  {
    LOBYTE(v6) = 4;
    goto LABEL_24;
  }

  v7 = *(v4 + 9);
  if (v7 > 0xC)
  {
    goto LABEL_19;
  }

  v8 = *(v4 + 5);
  v9 = 1 << v7;
  if ((v9 & 0x15D8) != 0)
  {
    v14 = *(v4 + 3);
    v15 = *(v4 + 5);
    v10 = PXFloatApproximatelyEqualToFloat();
    v8 = v15;
    if (v10 && (PXFloatApproximatelyEqualToFloat() & 1) != 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v9 & 0x807) != 0)
  {
    v8 = vcge_f32(v8, *(v4 + 3));
    if (v8.i32[0] & v8.i32[1])
    {
      goto LABEL_19;
    }
  }

  else if (v8.f32[0] > 0.0)
  {
    v8.i32[0] = HIDWORD(*(v4 + 5));
    if (v8.f32[1] > 0.0)
    {
      goto LABEL_19;
    }
  }

  if (v4[11] && *(v4 + 9))
  {
    v11 = *(v4 + 64);
    if (v11 >= 2)
    {
      if (v11 != 2)
      {
        if (v11 == 3)
        {
          v12 = [MEMORY[0x277CCA890] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGUpdateLoadingStatusForStreamInfo(PXGSpriteIndex, const PXGStreamInfo *, PXGLoadingState *)"}];
          [v12 handleFailureInFunction:v13 file:@"PXGTextureManager.mm" lineNumber:191 description:@"Should be handled earlier"];

          abort();
        }

        LOBYTE(v6) = 0;
        goto LABEL_24;
      }

LABEL_19:
      LOBYTE(v6) = 3;
      goto LABEL_24;
    }

LABEL_21:
    LOBYTE(v6) = 2;
    goto LABEL_24;
  }

  if (COERCE_FLOAT(*(v4 + 5)) > 0.0)
  {
    goto LABEL_21;
  }

  v6 = v4[1];
  if (v6)
  {
    LOBYTE(v6) = *(v4 + 9) != 0;
  }

LABEL_24:
  *(v5 + *v4) = v6;
  [v16 setError:*(a1 + 40) forEntity:v14];
}

- (void)textureProvider:(id)provider didProvideImageData:(id)data withSpecAtIndex:(int64_t)index size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect forRequestID:(int)d
{
  v9 = *&d;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = size.height;
  v16 = size.width;
  providerCopy = provider;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_requestQueue);
  if ([providerCopy isRequestActive:v9])
  {
    v22 = [providerCopy textureAtlasManagerAtSpecIndex:index];
    if (!v22)
    {
      v25 = 0uLL;
      v26 = 0;
      if (providerCopy)
      {
        [providerCopy imageDataSpecAtIndex:index];
      }

      v23 = v25;
      v24 = v26;
      v22 = [(PXGTextureManager *)self _textureAtlasManagerForImageDataSpec:&v23];
      [providerCopy setTextureAtlasManager:v22 atSpecIndex:index];
    }

    [v22 addSpriteWithTextureRequestID:v9 thumbnailData:dataCopy size:row bytesPerRow:v16 contentsRect:{v15, x, y, width, height}];
    [(PXGTextureManager *)self _requestQueue_setNeedsUpdate];
  }
}

- (void)textureProvider:(id)provider didProvidePixelBuffer:(__CVBuffer *)buffer options:(id)options adjustment:(id)adjustment forRequestID:(int)d
{
  v8 = *&options.var2;
  v9 = *&options.var0;
  providerCopy = provider;
  v13 = v8;
  dispatch_assert_queue_V2(self->_requestQueue);
  if (([providerCopy isRequestActive:adjustment] & 1) != 0 && -[PXGTextureManager _getRequestDetails:forRequestID:](self, "_getRequestDetails:forRequestID:", &v51, adjustment))
  {
    add = atomic_fetch_add(PXGMakeNextTextureDeliveryOrderID_lastRequestID, 1u);
    v15 = v9[1];
    *location = *v9;
    v50 = v15;
    v16 = [(PXGTextureManager *)self _existingTextureForPixelBuffer:buffer processingOptions:location presentationType:v51];
    if (v16)
    {
      if (v13 || (v9[1] & 1) != 0)
      {
        v21 = [(PXGTextureManager *)self _existingAdjustedTextureForSourceTexture:v16 adjustment:v13 wantsMipmaps:(v13 == 0) | (v9[1] & 1) presentationType:v51];
        if (v21)
        {
          [(PXGTextureManager *)self _handleProvidedSpriteTexture:v21 fromTextureProvider:providerCopy requestID:adjustment deliveryOrder:add];
        }

        else
        {
          v22 = [(PXGTextureManager *)self _textureConverterForPresentationType:v51 contentType:1];
          v23 = v22;
          if (v13 || *(v9 + 16) == 1 && [v22 supportsMipmaps])
          {
            objc_initWeak(location, self);
            adjustQueue = self->_adjustQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__PXGTextureManager_textureProvider_didProvidePixelBuffer_options_adjustment_forRequestID___block_invoke;
            block[3] = &unk_2782AC2F8;
            objc_copyWeak(&v44, location);
            v40 = v13;
            v25 = v9[1];
            v38 = *v9;
            v39 = v25;
            v41 = v16;
            v42 = providerCopy;
            v43 = v23;
            adjustmentCopy = adjustment;
            v46 = add;
            v47 = v51;
            v48 = v52;
            dispatch_async(adjustQueue, block);

            objc_destroyWeak(&v44);
            objc_destroyWeak(location);
          }

          else
          {
            [(PXGTextureManager *)self _handleProvidedSpriteTexture:v16 fromTextureProvider:providerCopy requestID:adjustment deliveryOrder:add];
          }
        }
      }

      else
      {
        [(PXGTextureManager *)self _handleProvidedSpriteTexture:v16 fromTextureProvider:providerCopy requestID:adjustment deliveryOrder:add];
      }
    }

    else
    {
      v17 = [(PXGTextureManager *)self _textureConverterForPresentationType:v51 contentType:1];
      CVPixelBufferRetain(buffer);
      objc_initWeak(location, self);
      processQueue = self->_processQueue;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __91__PXGTextureManager_textureProvider_didProvidePixelBuffer_options_adjustment_forRequestID___block_invoke_2;
      v26[3] = &unk_2782AC398;
      objc_copyWeak(v32, location);
      v32[1] = buffer;
      v19 = v9[1];
      v27 = *v9;
      v28 = v19;
      v29 = v13;
      v30 = providerCopy;
      v31 = v17;
      v34 = add;
      v35 = v51;
      v36 = v52;
      adjustmentCopy2 = adjustment;
      v20 = v17;
      dispatch_async(processQueue, v26);

      objc_destroyWeak(v32);
      objc_destroyWeak(location);
    }
  }
}

void __91__PXGTextureManager_textureProvider_didProvidePixelBuffer_options_adjustment_forRequestID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  LODWORD(v3) = *(a1 + 108);
  v4 = WeakRetained;
  [WeakRetained _applyAdjustment:*(a1 + 64) withMipmaps:*(a1 + 48) toTexture:*(a1 + 72) fromTextureProvider:*(a1 + 80) withTextureConverter:*(a1 + 88) forRequestID:*(a1 + 104) deliveryOrder:v3 requestDetails:*(a1 + 112) | (*(a1 + 116) << 32)];
}

void __91__PXGTextureManager_textureProvider_didProvidePixelBuffer_options_adjustment_forRequestID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = *(a1 + 96);
  v4 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v4;
  LODWORD(v5) = *(a1 + 108);
  [WeakRetained _processPixelBuffer:v3 options:v6 adjustment:*(a1 + 64) fromTextureProvider:*(a1 + 72) withTextureConverter:*(a1 + 80) forRequestID:*(a1 + 104) requestDetails:*(a1 + 112) | (*(a1 + 116) << 32) deliveryOrder:v5];

  CVPixelBufferRelease(*(a1 + 96));
}

- (void)textureProvider:(id)provider didProvideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d
{
  degradedCopy = degraded;
  adjustmentCopy = adjustment;
  v10 = *&options.var2;
  v11 = *&options.var0;
  v58 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v15 = v10;
  dispatch_assert_queue_V2(self->_requestQueue);
  v16 = +[PXTungstenSettings sharedInstance];
  requestThumbnailsOnly = [v16 requestThumbnailsOnly];

  if ((requestThumbnailsOnly & 1) == 0 && [providerCopy isRequestActive:degradedCopy] && -[PXGTextureManager _getRequestDetails:forRequestID:](self, "_getRequestDetails:forRequestID:", &v55, degradedCopy))
  {
    add = atomic_fetch_add(PXGMakeNextTextureDeliveryOrderID_lastRequestID, 1u);
    if (image)
    {
      v19 = v11[1];
      *buf = *v11;
      *&buf[16] = v19;
      v20 = [(PXGTextureManager *)self _existingTextureForCGImage:image processingOptions:buf presentationType:v55];
      if (v20)
      {
        if (!v15 && (v11[1] & 1) == 0)
        {
          [(PXGTextureManager *)self _handleProvidedSpriteTexture:v20 fromTextureProvider:providerCopy requestID:degradedCopy deliveryOrder:add];
LABEL_23:

          goto LABEL_24;
        }

        v30 = v20;
        v26 = [(PXGTextureManager *)self _existingAdjustedTextureForSourceTexture:v20 adjustment:v15 wantsMipmaps:(v15 == 0) | (v11[1] & 1) presentationType:v55];
        if (v26)
        {
          [(PXGTextureManager *)self _handleProvidedSpriteTexture:v26 fromTextureProvider:providerCopy requestID:degradedCopy deliveryOrder:add];
        }

        else
        {
          v27 = [(PXGTextureManager *)self _textureConverterForPresentationType:v55 contentType:1];
          objc_initWeak(buf, self);
          if (v15 || *(v11 + 16) == 1 && [v27 supportsMipmaps])
          {
            adjustQueue = self->_adjustQueue;
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __98__PXGTextureManager_textureProvider_didProvideCGImage_options_adjustment_isDegraded_forRequestID___block_invoke;
            v43[3] = &unk_2782AC2F8;
            objc_copyWeak(&v50, buf);
            v46 = v15;
            v29 = v11[1];
            v44 = *v11;
            v45 = v29;
            v47 = v20;
            v48 = providerCopy;
            v49 = v27;
            v51 = degradedCopy;
            v52 = add;
            v53 = v55;
            v54 = v56;
            dispatch_async(adjustQueue, v43);

            objc_destroyWeak(&v50);
          }

          else
          {
            [(PXGTextureManager *)self _handleProvidedSpriteTexture:v20 fromTextureProvider:providerCopy requestID:degradedCopy deliveryOrder:add];
          }

          objc_destroyWeak(buf);
        }
      }

      else
      {
        v30 = 0;
        v22 = [(PXGTextureManager *)self _textureConverterForPresentationType:v55 contentType:1];
        CGImageRetain(image);
        objc_initWeak(buf, self);
        processQueue = self->_processQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__PXGTextureManager_textureProvider_didProvideCGImage_options_adjustment_isDegraded_forRequestID___block_invoke_2;
        block[3] = &unk_2782AC370;
        objc_copyWeak(v37, buf);
        v37[1] = image;
        v24 = v11[1];
        v32 = *v11;
        v33 = v24;
        v34 = v15;
        v40 = adjustmentCopy;
        v35 = providerCopy;
        v36 = v22;
        v41 = v55;
        v42 = v56;
        v38 = degradedCopy;
        v39 = add;
        v25 = v22;
        dispatch_async(processQueue, block);

        objc_destroyWeak(v37);
        objc_destroyWeak(buf);
      }

      v20 = v30;
      goto LABEL_23;
    }

    v21 = PXGTungstenGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = providerCopy;
      *&buf[12] = 1024;
      *&buf[14] = degradedCopy;
      *&buf[18] = 2112;
      *&buf[20] = 0;
      _os_log_impl(&dword_21AD38000, v21, OS_LOG_TYPE_ERROR, "Error textureProvider:%@ requestID:%d provided invalid cgImage:%@", buf, 0x1Cu);
    }

    [(PXGTextureManager *)self _handleProvidedSpriteTexture:self->_emptyTexture fromTextureProvider:providerCopy requestID:degradedCopy deliveryOrder:add];
  }

LABEL_24:
}

void __98__PXGTextureManager_textureProvider_didProvideCGImage_options_adjustment_isDegraded_forRequestID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  LODWORD(v3) = *(a1 + 108);
  v4 = WeakRetained;
  [WeakRetained _applyAdjustment:*(a1 + 64) withMipmaps:*(a1 + 48) toTexture:*(a1 + 72) fromTextureProvider:*(a1 + 80) withTextureConverter:*(a1 + 88) forRequestID:*(a1 + 104) deliveryOrder:v3 requestDetails:*(a1 + 112) | (*(a1 + 116) << 32)];
}

void __98__PXGTextureManager_textureProvider_didProvideCGImage_options_adjustment_isDegraded_forRequestID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = *(a1 + 96);
  v4 = *(a1 + 48);
  v7[0] = *(a1 + 32);
  v7[1] = v4;
  LODWORD(v6) = *(a1 + 108);
  LODWORD(v5) = *(a1 + 104);
  [WeakRetained _processCGImage:v3 options:v7 adjustment:*(a1 + 64) isDegraded:*(a1 + 112) fromTextureProvider:*(a1 + 72) withTextureConverter:*(a1 + 80) requestID:v5 requestDetails:*(a1 + 113) | (*(a1 + 117) << 32) deliveryOrder:v6];

  CGImageRelease(*(a1 + 96));
}

- (void)textureProvider:(id)provider didProvideNothingForRequestID:(int)d
{
  v4 = *&d;
  providerCopy = provider;
  dispatch_assert_queue_V2(self->_requestQueue);
  emptyTexture = self->_emptyTexture;
  atomic_fetch_add(PXGMakeNextTextureDeliveryOrderID_lastRequestID, 1u);
  [(PXGTextureManager *)self _handleProvidedSpriteTexture:emptyTexture fromTextureProvider:providerCopy requestID:v4 deliveryOrder:?];
}

- (BOOL)_getRequestDetails:(id *)details forRequestID:(int)d
{
  dCopy = d;
  os_unfair_lock_assert_not_owner(&self->_lookupLock);
  os_unfair_lock_lock(&self->_lookupLock);
  size = self->_lookupLock_requestDetailsByRequestID.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(size);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    dCopy2 = d;
    if (size <= d)
    {
      dCopy2 = d % size;
    }
  }

  else
  {
    dCopy2 = (size - 1) & d;
  }

  v10 = self->_lookupLock_requestDetailsByRequestID.__table_.__bucket_list_.__ptr_[dCopy2];
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == d)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= size)
      {
        v12 %= size;
      }
    }

    else
    {
      v12 &= size - 1;
    }

    if (v12 != dCopy2)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (*(v11 + 4) != d)
  {
    goto LABEL_16;
  }

  v18 = &dCopy;
  v14 = std::__hash_table<std::__hash_value_type<int,PXGRequestDetails>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PXGRequestDetails>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PXGRequestDetails>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PXGRequestDetails>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&self->_lookupLock_requestDetailsByRequestID.__table_.__bucket_list_.__ptr_, d);
  v15 = *(v14 + 5);
  LOBYTE(details->var1) = *(v14 + 24);
  *&details->var0 = v15;
  v16 = 1;
LABEL_18:
  os_unfair_lock_unlock(&self->_lookupLock);
  return v16;
}

- (void)_applyAdjustment:(id)adjustment withMipmaps:(BOOL)mipmaps toTexture:(id)texture fromTextureProvider:(id)provider withTextureConverter:(id)converter forRequestID:(int)d deliveryOrder:(unsigned int)order requestDetails:(id)self0
{
  v10 = *&d;
  mipmapsCopy = mipmaps;
  adjustmentCopy = adjustment;
  textureCopy = texture;
  providerCopy = provider;
  converterCopy = converter;
  dispatch_assert_queue_V2(self->_adjustQueue);
  if ([providerCopy isRequestActive:v10])
  {
    v20 = -[PXGTextureManager _existingAdjustedTextureForSourceTexture:adjustment:wantsMipmaps:presentationType:](self, "_existingAdjustedTextureForSourceTexture:adjustment:wantsMipmaps:presentationType:", textureCopy, adjustmentCopy, mipmapsCopy, [converterCopy presentationType]);
    if (!v20)
    {
      if (mipmapsCopy)
      {
        v21 = 0x100000000;
      }

      else
      {
        v21 = 0;
      }

      v20 = [converterCopy applyAdjustment:adjustmentCopy toTexture:textureCopy options:{v21 & 0xFFFFFFFF00000000 | (*&details >> 8), 0}];
      if (!v20)
      {
        v20 = textureCopy;
LABEL_11:
        objc_initWeak(&location, self);
        requestQueue = self->_requestQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __143__PXGTextureManager__applyAdjustment_withMipmaps_toTexture_fromTextureProvider_withTextureConverter_forRequestID_deliveryOrder_requestDetails___block_invoke;
        block[3] = &unk_2782AC320;
        objc_copyWeak(&v28, &location);
        v26 = v20;
        v27 = providerCopy;
        v29 = v10;
        orderCopy = order;
        v24 = v20;
        dispatch_async(requestQueue, block);

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        goto LABEL_12;
      }

      v22 = [(PXGTextureManager *)self _storeAdjustedTexture:v20 forSourceTexture:textureCopy adjustment:adjustmentCopy mipmaps:mipmapsCopy];
    }

    if (v20 != textureCopy)
    {
      [v20 setSourceCGImage:{objc_msgSend(textureCopy, "sourceCGImage")}];
      [v20 setSourceCVPixelBuffer:{objc_msgSend(textureCopy, "sourceCVPixelBuffer")}];
    }

    goto LABEL_11;
  }

LABEL_12:
}

void __143__PXGTextureManager__applyAdjustment_withMipmaps_toTexture_fromTextureProvider_withTextureConverter_forRequestID_deliveryOrder_requestDetails___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleProvidedSpriteTexture:*(a1 + 32) fromTextureProvider:*(a1 + 40) requestID:*(a1 + 56) deliveryOrder:*(a1 + 60)];
}

- (id)_createTextureForCVPixelBuffer:(__CVBuffer *)buffer requestID:(int)d requestDetails:(id)details processingOptions:(id)options fromTextureProvider:(id)provider withTextureConverter:(id)converter
{
  v9 = *&options.var0;
  v14 = *&options.var2;
  providerCopy = provider;
  dispatch_assert_queue_V2(self->_processQueue);
  v16 = v9[1];
  *location = *v9;
  v32 = v16;
  v17 = -[PXGTextureManager _existingTextureForPixelBuffer:processingOptions:presentationType:](self, "_existingTextureForPixelBuffer:processingOptions:presentationType:", buffer, location, [providerCopy presentationType]);
  if (!v17)
  {
    CVPixelBufferGetWidth(buffer);
    CVPixelBufferGetHeight(buffer);
    kdebug_trace();
    v18 = *(v9 + 6);
    v19 = *v9;
    LODWORD(v20) = *(v9 + 5);
    v30 = 0;
    v21 = [providerCopy createTextureFromCVPixelBuffer:buffer transform:(*&details >> 8) alpha:v18 options:&v30 error:{*&v19, v20}];
    v22 = v30;
    [v21 pixelSize];
    kdebug_trace();
    if (v21)
    {
      v17 = -[PXGTextureManager _storeTexture:forKey:replaceExisting:presentationType:](self, "_storeTexture:forKey:replaceExisting:presentationType:", v21, buffer, *(v9 + 28), [providerCopy presentationType]);
    }

    else
    {
      objc_initWeak(location, self);
      requestQueue = self->_requestQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __136__PXGTextureManager__createTextureForCVPixelBuffer_requestID_requestDetails_processingOptions_fromTextureProvider_withTextureConverter___block_invoke;
      block[3] = &unk_2782AC348;
      objc_copyWeak(&v28, location);
      v26 = v14;
      v27 = v22;
      dCopy = d;
      dispatch_async(requestQueue, block);

      objc_destroyWeak(&v28);
      objc_destroyWeak(location);
      v17 = 0;
    }
  }

  return v17;
}

void __136__PXGTextureManager__createTextureForCVPixelBuffer_requestID_requestDetails_processingOptions_fromTextureProvider_withTextureConverter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained textureProvider:*(a1 + 32) didProvideFailureWithError:*(a1 + 40) forRequestID:*(a1 + 56)];
}

- (void)_processPixelBuffer:(__CVBuffer *)buffer options:(id)options adjustment:(id)adjustment fromTextureProvider:(id)provider withTextureConverter:(id)converter forRequestID:(int)d requestDetails:(id)details deliveryOrder:(unsigned int)self0
{
  v13 = *&options.var0;
  v16 = *&options.var2;
  adjustmentCopy = adjustment;
  providerCopy = provider;
  dispatch_assert_queue_V2(self->_processQueue);
  if ([adjustmentCopy isRequestActive:converter])
  {
    v19 = v13[1];
    *location = *v13;
    v44 = v19;
    v20 = [(PXGTextureManager *)self _createTextureForCVPixelBuffer:buffer requestID:converter requestDetails:*&d & 0xFFFFFFFFFFLL processingOptions:location fromTextureProvider:adjustmentCopy withTextureConverter:providerCopy];
    if (v20)
    {
      if (v16 || *(v13 + 16) == 1 && [providerCopy supportsMipmaps])
      {
        objc_initWeak(location, self);
        adjustQueue = self->_adjustQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __143__PXGTextureManager__processPixelBuffer_options_adjustment_fromTextureProvider_withTextureConverter_forRequestID_requestDetails_deliveryOrder___block_invoke;
        block[3] = &unk_2782AC2F8;
        objc_copyWeak(&v38, location);
        v34 = v16;
        v22 = v13[1];
        v32 = *v13;
        v33 = v22;
        v35 = v20;
        v36 = adjustmentCopy;
        v37 = providerCopy;
        converterCopy = converter;
        v40 = *&details.var0;
        v42 = v45;
        dCopy = d;
        dispatch_async(adjustQueue, block);

        v23 = &v38;
      }

      else
      {
        objc_initWeak(location, self);
        requestQueue = self->_requestQueue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __143__PXGTextureManager__processPixelBuffer_options_adjustment_fromTextureProvider_withTextureConverter_forRequestID_requestDetails_deliveryOrder___block_invoke_2;
        v25[3] = &unk_2782AC320;
        objc_copyWeak(&v28, location);
        v26 = v20;
        v27 = adjustmentCopy;
        converterCopy2 = converter;
        v30 = *&details.var0;
        dispatch_async(requestQueue, v25);

        v23 = &v28;
      }

      objc_destroyWeak(v23);
      objc_destroyWeak(location);
    }
  }
}

void __143__PXGTextureManager__processPixelBuffer_options_adjustment_fromTextureProvider_withTextureConverter_forRequestID_requestDetails_deliveryOrder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  LODWORD(v3) = *(a1 + 108);
  v4 = WeakRetained;
  [WeakRetained _applyAdjustment:*(a1 + 64) withMipmaps:*(a1 + 48) toTexture:*(a1 + 72) fromTextureProvider:*(a1 + 80) withTextureConverter:*(a1 + 88) forRequestID:*(a1 + 104) deliveryOrder:v3 requestDetails:*(a1 + 112) | (*(a1 + 116) << 32)];
}

void __143__PXGTextureManager__processPixelBuffer_options_adjustment_fromTextureProvider_withTextureConverter_forRequestID_requestDetails_deliveryOrder___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleProvidedSpriteTexture:*(a1 + 32) fromTextureProvider:*(a1 + 40) requestID:*(a1 + 56) deliveryOrder:*(a1 + 60)];
}

- (id)_createTextureForCGImage:(CGImage *)image requestID:(int)d requestDetails:(id)details processingOptions:(id)options fromTextureProvider:(id)provider withTextureConverter:(id)converter
{
  v9 = *&options.var0;
  v14 = *&options.var2;
  providerCopy = provider;
  dispatch_assert_queue_V2(self->_processQueue);
  v16 = v9[1];
  *location = *v9;
  v32 = v16;
  v17 = -[PXGTextureManager _existingTextureForCGImage:processingOptions:presentationType:](self, "_existingTextureForCGImage:processingOptions:presentationType:", image, location, [providerCopy presentationType]);
  if (!v17)
  {
    CGImageGetWidth(image);
    CGImageGetHeight(image);
    kdebug_trace();
    v18 = *(v9 + 6);
    v19 = *v9;
    LODWORD(v20) = *(v9 + 5);
    v30 = 0;
    v21 = [providerCopy createTextureFromCGImage:image transform:(*&details >> 8) alpha:v18 options:&v30 error:{*&v19, v20}];
    v22 = v30;
    [v21 pixelSize];
    kdebug_trace();
    if (v21)
    {
      [v21 setSourceCGImage:image];
      v17 = -[PXGTextureManager _storeTexture:forKey:replaceExisting:presentationType:](self, "_storeTexture:forKey:replaceExisting:presentationType:", v21, image, *(v9 + 28), [providerCopy presentationType]);
    }

    else
    {
      objc_initWeak(location, self);
      requestQueue = self->_requestQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __130__PXGTextureManager__createTextureForCGImage_requestID_requestDetails_processingOptions_fromTextureProvider_withTextureConverter___block_invoke;
      block[3] = &unk_2782AC348;
      objc_copyWeak(&v28, location);
      v26 = v14;
      v27 = v22;
      dCopy = d;
      dispatch_async(requestQueue, block);

      objc_destroyWeak(&v28);
      objc_destroyWeak(location);
      v17 = 0;
    }
  }

  return v17;
}

void __130__PXGTextureManager__createTextureForCGImage_requestID_requestDetails_processingOptions_fromTextureProvider_withTextureConverter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained textureProvider:*(a1 + 32) didProvideFailureWithError:*(a1 + 40) forRequestID:*(a1 + 56)];
}

- (void)_processCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded fromTextureProvider:(id)provider withTextureConverter:(id)converter requestID:(int)d requestDetails:(id)self0 deliveryOrder:(unsigned int)self1
{
  degradedCopy = degraded;
  v14 = *&options.var0;
  v17 = *&options.var2;
  v18 = degradedCopy;
  providerCopy = provider;
  dispatch_assert_queue_V2(self->_processQueue);
  if ([v18 isRequestActive:converter])
  {
    v20 = v14[1];
    *location = *v14;
    v45 = v20;
    v21 = [(PXGTextureManager *)self _createTextureForCGImage:image requestID:converter requestDetails:*&d & 0xFFFFFFFFFFLL processingOptions:location fromTextureProvider:v18 withTextureConverter:providerCopy];
    [v21 setIsDegraded:adjustment];
    if (v21)
    {
      if (v17 || *(v14 + 16) == 1 && [providerCopy supportsMipmaps])
      {
        objc_initWeak(location, self);
        adjustQueue = self->_adjustQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __147__PXGTextureManager__processCGImage_options_adjustment_isDegraded_fromTextureProvider_withTextureConverter_requestID_requestDetails_deliveryOrder___block_invoke;
        block[3] = &unk_2782AC2F8;
        objc_copyWeak(&v39, location);
        v35 = v17;
        v23 = v14[1];
        v33 = *v14;
        v34 = v23;
        v36 = v21;
        v37 = v18;
        v38 = providerCopy;
        converterCopy = converter;
        v41 = *&details.var0;
        v43 = v46;
        dCopy = d;
        dispatch_async(adjustQueue, block);

        v24 = &v39;
      }

      else
      {
        objc_initWeak(location, self);
        requestQueue = self->_requestQueue;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __147__PXGTextureManager__processCGImage_options_adjustment_isDegraded_fromTextureProvider_withTextureConverter_requestID_requestDetails_deliveryOrder___block_invoke_2;
        v26[3] = &unk_2782AC320;
        objc_copyWeak(&v29, location);
        v27 = v21;
        v28 = v18;
        converterCopy2 = converter;
        v31 = *&details.var0;
        dispatch_async(requestQueue, v26);

        v24 = &v29;
      }

      objc_destroyWeak(v24);
      objc_destroyWeak(location);
    }
  }
}

void __147__PXGTextureManager__processCGImage_options_adjustment_isDegraded_fromTextureProvider_withTextureConverter_requestID_requestDetails_deliveryOrder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  LODWORD(v3) = *(a1 + 108);
  v4 = WeakRetained;
  [WeakRetained _applyAdjustment:*(a1 + 64) withMipmaps:*(a1 + 48) toTexture:*(a1 + 72) fromTextureProvider:*(a1 + 80) withTextureConverter:*(a1 + 88) forRequestID:*(a1 + 104) deliveryOrder:v3 requestDetails:*(a1 + 112) | (*(a1 + 116) << 32)];
}

void __147__PXGTextureManager__processCGImage_options_adjustment_isDegraded_fromTextureProvider_withTextureConverter_requestID_requestDetails_deliveryOrder___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleProvidedSpriteTexture:*(a1 + 32) fromTextureProvider:*(a1 + 40) requestID:*(a1 + 56) deliveryOrder:*(a1 + 60)];
}

- (void)_addTextureToTexturesInUse:(id)use
{
  useCopy = use;
  v5 = [useCopy objectAtIndexedSubscript:0];
  integerValue = [v5 integerValue];
  v7 = [useCopy objectAtIndexedSubscript:1];
  unsignedIntValue = [v7 unsignedIntValue];

  v9 = [useCopy objectAtIndexedSubscript:2];
  if (([v9 hasPendingTextureRequestID:integerValue deliveryOrder:unsignedIntValue] & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = [(NSMapTable *)self->_pendingSpriteTextureByRequestID objectForKey:v5];
  v11 = v10;
  if (v10 && v10 != v9)
  {
    if (![v10 removePendingSpriteWithTextureRequestID:integerValue ifDeliveredBefore:unsignedIntValue])
    {
      [v9 removePendingSpriteWithTextureRequestID:integerValue ifDeliveredBefore:0xFFFFFFFFLL];
      goto LABEL_9;
    }

    if (([v11 hasSprites] & 1) == 0)
    {
      [(NSHashTable *)self->_spriteTexturesInUse removeObject:v11];
      deallocationsQueue = self->_deallocationsQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__PXGTextureManager__addTextureToTexturesInUse___block_invoke;
      block[3] = &unk_2782ABE50;
      v14 = v11;
      dispatch_async(deallocationsQueue, block);
    }
  }

  [(NSMapTable *)self->_pendingSpriteTextureByRequestID setObject:v9 forKey:v5];
LABEL_9:
  if ([v9 hasSprites])
  {
    [(NSHashTable *)self->_spriteTexturesInUse addObject:v9];
  }

LABEL_12:
}

- (void)_handleProvidedSpriteTexture:(id)texture fromTextureProvider:(id)provider requestID:(int)d deliveryOrder:(unsigned int)order
{
  v6 = *&order;
  v7 = *&d;
  v23[3] = *MEMORY[0x277D85DE8];
  textureCopy = texture;
  providerCopy = provider;
  dispatch_assert_queue_V2(self->_requestQueue);
  if ([providerCopy isRequestActive:v7])
  {
    [textureCopy addSpriteWithTextureRequestID:v7 deliveryOrder:v6];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v23[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    v23[1] = v13;
    v23[2] = textureCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

    layoutQueue = [(PXGTextureManager *)self layoutQueue];
    LODWORD(v12) = layoutQueue == MEMORY[0x277D85CD0];

    if (v12)
    {
      [(PXGTextureManager *)self performSelectorOnMainThread:sel__addTextureToTexturesInUse_ withObject:v14 waitUntilDone:0];
    }

    else
    {
      layoutQueue2 = [(PXGTextureManager *)self layoutQueue];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __94__PXGTextureManager__handleProvidedSpriteTexture_fromTextureProvider_requestID_deliveryOrder___block_invoke;
      v20 = &unk_2782AC0A8;
      selfCopy = self;
      v22 = v14;
      dispatch_async(layoutQueue2, &v17);
    }

    [(PXGTextureManager *)self _requestQueue_setNeedsUpdate:v17];
  }
}

- (id)_textureAtlasManagerForImageDataSpec:(id *)spec
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_requestQueue);
  [(PXGTextureManager *)self textureAtlasManagers];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      [v9 thumbnailSize];
      LOWORD(v10) = spec->var2;
      if (v11 == v10)
      {
        [v9 thumbnailSize];
        LOWORD(v12) = spec->var3;
        if (v13 == v12 && [v9 pixelFormat] == spec->var0)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    atlasTextureConverter = v9;

    if (atlasTextureConverter)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

  atlasTextureConverter = self->_atlasTextureConverter;
  if (atlasTextureConverter)
  {
    v17 = *&spec->var0;
    LODWORD(v18) = *&spec->var2;
    atlasTextureConverter = [atlasTextureConverter createTextureAtlasManagerForImageDataSpec:&v17 mipmapped:{-[PXGTextureManager preferMipmaps](self, "preferMipmaps", v17, v18)}];
    [atlasTextureConverter setDelegate:self];
    v15 = [v5 arrayByAddingObject:atlasTextureConverter];
    [(PXGTextureManager *)self setTextureAtlasManagers:v15];
  }

LABEL_15:

  return atlasTextureConverter;
}

- (id)_storeTexture:(id)texture forPayload:(id)payload
{
  v4 = [(PXGTextureManager *)self _storeTexture:texture forKey:payload];

  return v4;
}

- (id)_storeAdjustedTexture:(id)texture forSourceTexture:(id)sourceTexture adjustment:(id)adjustment mipmaps:(BOOL)mipmaps
{
  mipmapsCopy = mipmaps;
  textureCopy = texture;
  sourceTextureCopy = sourceTexture;
  adjustmentCopy = adjustment;
  v13 = [[PXGAdjustedTexturePayload alloc] initWithTexture:sourceTextureCopy adjustment:adjustmentCopy mipmaps:mipmapsCopy];
  [textureCopy setCacheKey:v13];
  v14 = [(PXGTextureManager *)self _storeTexture:textureCopy forKey:v13];

  return v14;
}

- (id)_storeTexture:(id)texture forKey:(id)key replaceExisting:(BOOL)existing presentationType:(unsigned __int8)type
{
  typeCopy = type;
  existingCopy = existing;
  textureCopy = texture;
  keyCopy = key;
  os_unfair_lock_assert_not_owner(&self->_lookupLock);
  os_unfair_lock_lock(&self->_lookupLock);
  v12 = [(PXGSpriteTextureStore *)self->_lookupLock_textureCache storedTextureForTexture:textureCopy key:keyCopy presentationType:typeCopy policy:existingCopy];
  os_unfair_lock_unlock(&self->_lookupLock);

  return v12;
}

- (id)_storeTexture:(id)texture forKey:(id)key
{
  textureCopy = texture;
  keyCopy = key;
  v8 = -[PXGTextureManager _storeTexture:forKey:replaceExisting:presentationType:](self, "_storeTexture:forKey:replaceExisting:presentationType:", textureCopy, keyCopy, 0, [textureCopy presentationType]);

  return v8;
}

- (id)_existingTextureForPayload:(id)payload presentationType:(unsigned __int8)type
{
  v4 = [(PXGTextureManager *)self _existingTextureForKey:payload presentationType:type];

  return v4;
}

- (id)_existingAdjustedTextureForSourceTexture:(id)texture adjustment:(id)adjustment wantsMipmaps:(BOOL)mipmaps presentationType:(unsigned __int8)type
{
  typeCopy = type;
  mipmapsCopy = mipmaps;
  textureCopy = texture;
  adjustmentCopy = adjustment;
  v12 = [[PXGAdjustedTexturePayload alloc] initWithTexture:textureCopy adjustment:adjustmentCopy mipmaps:mipmapsCopy];
  v13 = [(PXGTextureManager *)self _existingTextureForKey:v12 presentationType:typeCopy];

  return v13;
}

- (id)_existingTextureForPixelBuffer:(__CVBuffer *)buffer processingOptions:(id)options presentationType:(unsigned __int8)type
{
  v5 = *&options.var2;
  v6 = *&options.var0;
  v9 = [(PXGTextureManager *)self _existingTextureForKey:buffer presentationType:*&options.var2];
  [v9 alpha];
  if (v12 != v6[1].f32[1] || ([v9 suppressContentsRect], v13 != v6[1].f32[2]) || (objc_msgSend(v9, "orientationTransform"), v10 = *v6, (vminv_u16(vmovn_s32(vceqq_f32(v14, *v6))) & 1) == 0))
  {
    v10.i32[0] = v6[1].i32[1];
    LODWORD(v11) = v6[1].i32[2];
    v15 = [v9 copyWithOrientationTransform:*v6->i64 alpha:*v10.i64 suppressContentsRect:v11];

    v9 = v15;
    v16 = [(PXGTextureManager *)self _storeTexture:v15 forKey:buffer replaceExisting:v6[1].u8[12] presentationType:v5];
  }

  return v9;
}

- (id)_existingTextureForCGImage:(CGImage *)image processingOptions:(id)options presentationType:(unsigned __int8)type
{
  v5 = *&options.var2;
  v6 = *&options.var0;
  v9 = [(PXGTextureManager *)self _existingTextureForKey:image presentationType:*&options.var2];
  [v9 alpha];
  if (v12 != v6[1].f32[1] || ([v9 suppressContentsRect], v13 != v6[1].f32[2]) || (objc_msgSend(v9, "orientationTransform"), v10 = *v6, (vminv_u16(vmovn_s32(vceqq_f32(v14, *v6))) & 1) == 0))
  {
    v10.i32[0] = v6[1].i32[1];
    LODWORD(v11) = v6[1].i32[2];
    v15 = [v9 copyWithOrientationTransform:*v6->i64 alpha:*v10.i64 suppressContentsRect:v11];
    v16 = [(PXGTextureManager *)self _storeTexture:v15 forKey:image replaceExisting:v6[1].u8[12] presentationType:v5];

    v9 = v16;
  }

  return v9;
}

- (id)_existingTextureForKey:(id)key presentationType:(unsigned __int8)type
{
  typeCopy = type;
  keyCopy = key;
  os_unfair_lock_assert_not_owner(&self->_lookupLock);
  os_unfair_lock_lock(&self->_lookupLock);
  v7 = [(PXGSpriteTextureStore *)self->_lookupLock_textureCache textureForKey:keyCopy presentationType:typeCopy];
  os_unfair_lock_unlock(&self->_lookupLock);

  return v7;
}

- (void)_removeAllTexturesForPresentationType:(unsigned __int8)type
{
  typeCopy = type;
  os_unfair_lock_assert_not_owner(&self->_lookupLock);
  os_unfair_lock_lock(&self->_lookupLock);
  [(PXGSpriteTextureStore *)self->_lookupLock_textureCache removeAllTexturesForPresentationType:typeCopy];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (void)_enumerateTextureConverters:(id)converters
{
  convertersCopy = converters;
  textureConverterByPresentationType = self->_textureConverterByPresentationType;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PXGTextureManager__enumerateTextureConverters___block_invoke;
  v7[3] = &unk_2782AC2D0;
  v8 = convertersCopy;
  v6 = convertersCopy;
  [(NSDictionary *)textureConverterByPresentationType enumerateKeysAndObjectsUsingBlock:v7];
}

void __49__PXGTextureManager__enumerateTextureConverters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 integerValue], v5);
}

- (void)_enumerateTextureProviders:(id)providers
{
  providersCopy = providers;
  textureProviderByMediaKind = self->_textureProviderByMediaKind;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PXGTextureManager__enumerateTextureProviders___block_invoke;
  v7[3] = &unk_2782AC2A8;
  v8 = providersCopy;
  v6 = providersCopy;
  [(NSMutableDictionary *)textureProviderByMediaKind enumerateKeysAndObjectsUsingBlock:v7];
}

void __48__PXGTextureManager__enumerateTextureProviders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 integerValue], v5);
}

- (void)_configureTextureProvider:(id)provider
{
  providerCopy = provider;
  [providerCopy setLowMemoryMode:{-[PXGTextureManager lowMemoryMode](self, "lowMemoryMode")}];
  [providerCopy setAllowLargerImagesDuringScrollingInLowMemoryMode:{-[PXGTextureManager allowLargerImagesDuringScrollingInLowMemoryMode](self, "allowLargerImagesDuringScrollingInLowMemoryMode")}];
  [providerCopy setCanDeliverThumbnailData:self->_atlasTextureConverter != 0];
  [providerCopy setPreferBGRA:{-[PXGTextureManager preferBGRA](self, "preferBGRA")}];
  [providerCopy setPreferMipmaps:{-[PXGTextureManager preferMipmaps](self, "preferMipmaps")}];
  [providerCopy setPreferredColorSpaceName:{-[PXGTextureManager preferredColorSpaceName](self, "preferredColorSpaceName")}];
}

- (void)_configureTextureConverter:(id)converter
{
  converterCopy = converter;
  [converterCopy setLowMemoryMode:{-[PXGTextureManager lowMemoryMode](self, "lowMemoryMode")}];
}

- (void)_configureAllTextureConverters
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PXGTextureManager__configureAllTextureConverters__block_invoke;
  v2[3] = &unk_2782AC258;
  v2[4] = self;
  [(PXGTextureManager *)self _enumerateTextureConverters:v2];
}

- (void)setLowMemoryMode:(BOOL)mode
{
  if (self->_lowMemoryMode != mode)
  {
    self->_lowMemoryMode = mode;
    [(PXGTextureManager *)self _updatePreheatingStrategy];
    [(PXGTextureManager *)self _configureAllTextureProviders];

    [(PXGTextureManager *)self _configureAllTextureConverters];
  }
}

- (void)setPreferredColorSpaceName:(unint64_t)name
{
  if (self->_preferredColorSpaceName != name)
  {
    self->_preferredColorSpaceName = name;
    [(PXGTextureManager *)self _configureAllTextureProviders];
  }
}

- (void)setPreferMipmaps:(BOOL)mipmaps
{
  if (self->_preferMipmaps != mipmaps)
  {
    self->_preferMipmaps = mipmaps;
    [(PXGTextureManager *)self _configureAllTextureProviders];
  }
}

- (void)setPreferBGRA:(BOOL)a
{
  if (self->_preferBGRA != a)
  {
    self->_preferBGRA = a;
    [(PXGTextureManager *)self _configureAllTextureProviders];
  }
}

- (void)setAllowLargerImagesDuringScrollingInLowMemoryMode:(BOOL)mode
{
  if (self->_allowLargerImagesDuringScrollingInLowMemoryMode != mode)
  {
    self->_allowLargerImagesDuringScrollingInLowMemoryMode = mode;
    [(PXGTextureManager *)self _configureAllTextureProviders];
  }
}

- (BOOL)streamUpdatedTexturesForDisplayLinkIfNeeded:(id)needed
{
  v19 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  layoutQueue = [(PXGTextureManager *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  kdebug_trace();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_textureProviderByMediaKind objectEnumerator];
  v7 = 0;
  v8 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_textureProvidersDisplayLinkRegistrationState objectForKey:v11];
        if ([v12 BOOLValue])
        {
          [v11 requestUpdatedTexturesForDisplayLink:neededCopy];
          v7 = 1;
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  kdebug_trace();
  return v7 & 1;
}

- (void)releaseCachedResources
{
  v13 = *MEMORY[0x277D85DE8];
  layoutQueue = [(PXGTextureManager *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_textureProviderByMediaKind objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v7++) releaseCachedResources];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (CGImage)textureSnapshotForSpriteIndex:(unsigned int)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PXGTextureManager_textureSnapshotForSpriteIndex___block_invoke;
  v5[3] = &unk_2782AC230;
  indexCopy = index;
  v5[4] = &v7;
  [(PXGTextureManager *)self _enumerateSpriteTextures:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __51__PXGTextureManager_textureSnapshotForSpriteIndex___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 containsSpriteIndex:*(a1 + 40)])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 imageRepresentation];
    *a3 = 1;
  }
}

- (void)_enumerateSpriteTextures:(id)textures
{
  texturesCopy = textures;
  os_unfair_lock_assert_not_owner(&self->_lookupLock);
  os_unfair_lock_lock(&self->_lookupLock);
  [(PXGSpriteTextureStore *)self->_lookupLock_textureCache enumerateTexturesWithHandler:texturesCopy];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (void)_lookupLock_requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range textureProvider:(id)provider mediaKind:(unsigned __int8)kind presentationType:(unsigned __int8)type isAppearing:(BOOL)appearing layout:(id)layout leafSpriteIndexRange:(_PXGSpriteIndexRange)indexRange sprites:(id *)self0 textureStreamInfos:(id *)self1 loadingStatus:(id)self2
{
  appearingCopy = appearing;
  typeCopy = type;
  kindCopy = kind;
  providerCopy = provider;
  layoutCopy = layout;
  statusCopy = status;
  mutableStates = [statusCopy mutableStates];
  var2 = sprites->var2;
  var3 = sprites->var3;
  var4 = sprites->var4;
  entityManager = [(PXGTextureManager *)self entityManager];
  effectComponent = [entityManager effectComponent];
  effectIds = [effectComponent effectIds];

  os_unfair_lock_assert_owner(&self->_lookupLock);
  transparentTexture = 0;
  if (kindCopy == 2 && appearingCopy)
  {
    v24 = [(PXGTextureManager *)self _textureConverterForPresentationType:typeCopy contentType:1];
    presentationType = [v24 presentationType];
    if (v24)
    {
      v26 = presentationType;
      contentSource = [layoutCopy contentSource];
      v27 = [contentSource desiredPlaceholderStyleInLayout:layoutCopy];
      if (v27 == 1)
      {
        viewEnvironment = [providerCopy viewEnvironment];
        userInterfaceStyle = [viewEnvironment userInterfaceStyle];
        v30 = 280;
        if (userInterfaceStyle == 2)
        {
          v30 = 288;
        }

        v31 = *(&self->super.isa + v30);

        transparentTexture = [(PXGSpriteTextureStore *)self->_lookupLock_textureCache textureForKey:v31 presentationType:v26];
        if (!transparentTexture && v31)
        {
          if (v26 == 1)
          {
            LODWORD(v32) = 1.0;
            v33 = [v24 createTextureFromCGImage:v31 transform:0 alpha:0 options:0 error:{COERCE_DOUBLE(1065353216), v32}];
            [(PXGSpriteTextureStore *)self->_lookupLock_textureCache storeTexture:v33 forKey:v31 presentationType:1];
            processQueue = self->_processQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __190__PXGTextureManager__lookupLock_requestTexturesForSpritesInRange_textureProvider_mediaKind_presentationType_isAppearing_layout_leafSpriteIndexRange_sprites_textureStreamInfos_loadingStatus___block_invoke;
            block[3] = &unk_2782AC0A8;
            block[4] = self;
            v35 = &v71;
            transparentTexture = v33;
            v71 = transparentTexture;
            dispatch_async(processQueue, block);
          }

          else
          {
            v36 = self->_processQueue;
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __190__PXGTextureManager__lookupLock_requestTexturesForSpritesInRange_textureProvider_mediaKind_presentationType_isAppearing_layout_leafSpriteIndexRange_sprites_textureStreamInfos_loadingStatus___block_invoke_2;
            v66[3] = &unk_2782AC168;
            v66[4] = self;
            v69 = v31;
            v35 = &v67;
            v67 = providerCopy;
            v68 = v24;
            dispatch_async(v36, v66);

            transparentTexture = 0;
          }
        }
      }

      else if (v27 == 2)
      {
        transparentTexture = [v24 transparentTexture];
      }

      else
      {
        transparentTexture = 0;
      }
    }

    else
    {
      transparentTexture = 0;
    }
  }

  v37 = [providerCopy requestTexturesForSpritesInRange:indexRange geometries:var2 + 32 * (range.location - indexRange.location) styles:var3 + 160 * (range.location - indexRange.location) infos:var4 + 40 * (range.location - indexRange.location) inLayout:layoutCopy];
  v38 = HIDWORD(*&indexRange);
  if (HIDWORD(*&indexRange))
  {
    v39 = v37;
    v64 = transparentTexture;
    v54 = layoutCopy;
    v58 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v65 = v39;
      v41 = (&infos->var0.var0 + 66 * range.location);
      v42 = sprites->var4 + 40 * range.location;
      *(mutableStates + *v41) = v42[1] != 0;
      v72 = &v65;
      *(std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&self->_spriteIndexByRequestID.__table_.__bucket_list_.__ptr_, v39) + 5) = range.location;
      v43 = *v42;
      v44 = *(effectIds + 4 * *v41);
      v72 = &v65;
      v45 = std::__hash_table<std::__hash_value_type<int,PXGRequestDetails>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PXGRequestDetails>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PXGRequestDetails>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PXGRequestDetails>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&self->_lookupLock_requestDetailsByRequestID.__table_.__bucket_list_.__ptr_, v65);
      *(v45 + 20) = v43;
      *(v45 + 21) = v44;
      v41[1] = v65;
      *(v41 + 8) = *v42;
      *(v41 + 9) = v42[1];
      *(v41 + 3) = *(v42 + 1);
      *(v41 + 5) = *(v42 + 16);
      *(v41 + 32) = 0;
      if (!v64 || *(v41 + 9) || *(v41 + 6))
      {
        goto LABEL_35;
      }

      v46 = v64;
      v47 = *(v41 + 9);
      if (v47)
      {
        v48 = v47;
        [v48 removeSpriteIndex:range];

        *(v41 + 64) = 0;
        *(v41 + 9) = 0;
        *(v41 + 7) = 0;
      }

      [v46 pixelSize];
      v56 = v50;
      v57 = v49;
      v51 = v46;
      *(v41 + 9) = v51;
      v52.f64[0] = v57;
      v52.f64[1] = v56;
      *(v41 + 7) = vcvt_f32_f64(v52);
      v41[11] = 0;
      if ([v51 isDegraded])
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      *(v41 + 64) = v53;

      if (!v58 || location == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_34;
      }

      if (v58 + location != range.location)
      {
        break;
      }

      ++v58;
LABEL_35:
      ++v39;
      range = (range.location + 1);
      if (!--v38)
      {
        layoutCopy = v54;
        transparentTexture = v64;
        if (v58)
        {
          [v64 addSpriteIndexRange:location];
        }

        goto LABEL_38;
      }
    }

    [v51 addSpriteIndexRange:location];
LABEL_34:
    location = range.location;
    v58 = 1;
    goto LABEL_35;
  }

LABEL_38:
}

void __190__PXGTextureManager__lookupLock_requestTexturesForSpritesInRange_textureProvider_mediaKind_presentationType_isAppearing_layout_leafSpriteIndexRange_sprites_textureStreamInfos_loadingStatus___block_invoke_2(uint64_t a1)
{
  v3[0] = PXGTextureProcessingOptionsDefault;
  v3[1] = unk_21AE2E320;
  v2 = [*(a1 + 32) _createTextureForCGImage:*(a1 + 56) requestID:0 requestDetails:0 processingOptions:v3 fromTextureProvider:*(a1 + 40) withTextureConverter:*(a1 + 48)];
  [*(*(a1 + 32) + 256) addObject:v2];
}

uint64_t __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke_2;
  v5[3] = &unk_2782AC0D0;
  v2 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = *(a1 + 72);
  v5[4] = &v9;
  [v1 enumerateRangesUsingBlock:v5];
  v3 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    dispatch_sync(*(*(a1 + 32) + 24), &__block_literal_global_73);
  }
}

uint64_t __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke_2(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 < a2 + a3)
  {
    v4 = 32 * a2;
    for (i = *(result + 40) + 66 * a2 + 44; ; i += 66)
    {
      if (!*(i + 4) && !*i)
      {
        v6 = *(i - 32);
        if (*&v6 > 0.0 && *(&v6 + 1) > 0.0)
        {
          v7 = *(result + 48) + v4;
          v8 = *(result + 56);
          v9 = vmul_f32(*(v7 + 24), 0x3F0000003F000000);
          if (*v7 - v9.f32[0] <= v8 + *(result + 72) && *v7 + v9.f32[0] >= v8)
          {
            v11 = *(result + 64);
            v12 = *(v7 + 8);
            v13 = v9.f32[1];
            v14 = v12 - v13;
            v15 = v12 + v13;
            if (v14 <= *(result + 80) + v11 && v15 >= v11)
            {
              break;
            }
          }
        }
      }

      v4 += 32;
      if (!--a3)
      {
        return result;
      }
    }

    *(*(*(result + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_pruneTextures:(id)textures
{
  texturesCopy = textures;
  deallocationsQueue = self->_deallocationsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PXGTextureManager__pruneTextures___block_invoke;
  block[3] = &unk_2782ABE50;
  v8 = texturesCopy;
  v6 = texturesCopy;
  dispatch_async(deallocationsQueue, block);
}

- (void)_streamTexturesForSpritesInDataStore:(id)store presentationDataStore:(id)dataStore changeDetails:(id)details layout:(id)layout interactionState:(id *)state loadingStatus:(id)status
{
  v216 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  dataStoreCopy = dataStore;
  detailsCopy = details;
  layoutCopy = layout;
  statusCopy = status;
  v16 = self->_streamCount + 1;
  self->_streamCount = v16;
  v105 = layoutCopy;
  v106 = statusCopy;
  mutableStates = [v106 mutableStates];
  if (atomic_exchange(&self->_isPerformingUpdateFromRequestQueue, 0))
  {
    requestQueue = self->_requestQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke;
    block[3] = &unk_2782ABE50;
    block[4] = self;
    dispatch_async(requestQueue, block);
  }

  fences = [layoutCopy fences];
  [layoutCopy removeAllFences];
  preheatingStrategy = [(PXGTextureManager *)self preheatingStrategy];
  v20 = *&state->var4;
  *buf = *&state->var0;
  v213 = v20;
  size = state->var8.size;
  origin = state->var8.origin;
  v215 = size;
  [preheatingStrategy preheatingRectForLayout:layoutCopy interactionState:buf];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  kdebug_trace();
  -[PXGTextureManager _resizeStorageIfNeededForSpriteCount:](self, "_resizeStorageIfNeededForSpriteCount:", [storeCopy count]);
  self->_streamInfoBySpriteIndexCount = [storeCopy count];
  streamInfoBySpriteIndex = self->_streamInfoBySpriteIndex;
  v107 = self->_textureProviderByMediaKind;
  v205[0] = MEMORY[0x277D85DD0];
  v205[1] = 3221225472;
  v205[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_2;
  v205[3] = &unk_2782ABEC8;
  v205[4] = self;
  v205[5] = a2;
  v205[6] = &self->_lookupLock_requestDetailsByRequestID;
  v108 = MEMORY[0x21CEE40A0](v205);
  p_loadedSpriteIndexes = &self->_loadedSpriteIndexes;
  loadedSpriteIndexes = self->_loadedSpriteIndexes;
  removedSpriteIndexes = [detailsCopy removedSpriteIndexes];
  v115 = [(NSIndexSet *)loadedSpriteIndexes px_intersectionWithIndexSet:removedSpriteIndexes];

  v199[0] = MEMORY[0x277D85DD0];
  v199[1] = 3221225472;
  v199[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_3;
  v199[3] = &unk_2782ABEF0;
  v199[4] = self;
  v202 = streamInfoBySpriteIndex;
  v124 = v108;
  v201 = v124;
  p_spriteIndexByRequestID = &self->_spriteIndexByRequestID;
  v111 = v107;
  v200 = v111;
  v204 = mutableStates;
  v118 = MEMORY[0x21CEE40A0](v199);
  os_unfair_lock_lock(&self->_lookupLock);
  [v115 enumerateRangesUsingBlock:v118];
  os_unfair_lock_unlock(&self->_lookupLock);
  if ([detailsCopy hasAnyInsertionsRemovalsOrMoves])
  {
    v33 = storeCopy;
    entities = [storeCopy entities];
    v35 = self->_streamInfoBySpriteIndex;
    streamInfoBySpriteIndexCount = self->_streamInfoBySpriteIndexCount;
    v198[0] = MEMORY[0x277D85DD0];
    v198[1] = 3221225472;
    v198[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_4;
    v198[3] = &unk_2782ABF18;
    v198[5] = entities;
    v198[4] = self;
    v198[6] = a2;
    v198[7] = streamInfoBySpriteIndex;
    [detailsCopy applyToArray:v35 elementSize:66 countAfterChanges:streamInfoBySpriteIndexCount insertionHandler:v198 modifiedHandler:0];
    v37 = [detailsCopy indexSetAfterApplyingChangeDetails:*p_loadedSpriteIndexes];
    v38 = self->_loadedSpriteIndexes;
    self->_loadedSpriteIndexes = v37;

    v196[0] = MEMORY[0x277D85DD0];
    v196[1] = 3221225472;
    v196[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_5;
    v196[3] = &unk_2782ABF40;
    v39 = detailsCopy;
    v197 = v39;
    [(PXGTextureManager *)self _enumerateSpriteTextures:v196];
    v195 = 0u;
    v194 = 0u;
    v193 = 0u;
    v192 = 0u;
    textureAtlasManagers = [(PXGTextureManager *)self textureAtlasManagers];
    v41 = [textureAtlasManagers countByEnumeratingWithState:&v192 objects:v211 count:16];
    if (v41)
    {
      v42 = *v193;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v193 != v42)
          {
            objc_enumerationMutation(textureAtlasManagers);
          }

          [*(*(&v192 + 1) + 8 * i) applyChangeDetails:v39];
        }

        v41 = [textureAtlasManagers countByEnumeratingWithState:&v192 objects:v211 count:16];
      }

      while (v41);
    }

    v44 = v39;
    spriteIndexAfterChangeBySpriteIndexBeforeChange = [v39 spriteIndexAfterChangeBySpriteIndexBeforeChange];
    for (j = self->_spriteIndexByRequestID.__table_.__first_node_.__next_; j; j = *j)
    {
      j[5] = *(spriteIndexAfterChangeBySpriteIndexBeforeChange + 4 * j[5]);
    }
  }

  isInactive = [(PXGTextureManager *)self isInactive];
  viewEnvironment = [(PXGTextureManager *)self viewEnvironment];
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_textureProviderByMediaKind objectEnumerator];
  v49 = [objectEnumerator countByEnumeratingWithState:&v188 objects:v210 count:16];
  if (v49)
  {
    v50 = *v189;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v189 != v50)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v52 = *(*(&v188 + 1) + 8 * k);
        [v52 setViewEnvironment:viewEnvironment];
        v53 = *&state->var4;
        *buf = *&state->var0;
        v213 = v53;
        v54 = state->var8.size;
        origin = state->var8.origin;
        v215 = v54;
        [v52 setInteractionState:buf];
      }

      v49 = [objectEnumerator countByEnumeratingWithState:&v188 objects:v210 count:16];
    }

    while (v49);
  }

  [(PXGTextureManager *)self _processTextureProviderResults];
  v114 = *p_loadedSpriteIndexes;
  v187 = 0;
  v186 = 0u;
  v185 = 0u;
  if (storeCopy)
  {
    [storeCopy sprites];
    v109 = v186;
    v55 = v187;
  }

  else
  {
    v55 = 0;
    v109 = 0;
  }

  if (isInactive)
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
    indexSet2 = [MEMORY[0x277CCAA78] indexSet];
    v57 = PXGTungstenGetLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_21AD38000, v57, OS_LOG_TYPE_DEFAULT, "%@ purging resources", buf, 0xCu);
    }
  }

  else
  {
    v57 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v58 = [storeCopy spriteIndexesInRect:{v23, v25, v27, v29}];
    if (CGRectIsNull(state->var8))
    {
      indexSet2 = 0;
    }

    else
    {
      indexSet2 = [storeCopy spriteIndexesInRect:{state->var8.origin.x, state->var8.origin.y, state->var8.size.width, state->var8.size.height}];
    }

    v59 = [storeCopy spriteIndexesWithSpriteInfoFlags:1];
    [v57 addIndexes:v58];
    [v57 addIndexes:v59];
    indexSet = [v57 copy];
  }

  v119 = [indexSet mutableCopy];
  [v119 removeIndexes:v114];
  v122 = [(NSIndexSet *)v114 mutableCopy];
  [v122 removeIndexes:indexSet];
  if (self->_didSwitchTextureConverter)
  {
    v120 = [indexSet mutableCopy];
  }

  else
  {
    modifiedSpriteIndexes = [detailsCopy modifiedSpriteIndexes];
    v120 = [modifiedSpriteIndexes mutableCopy];
  }

  [v120 removeIndexes:v122];
  [v120 removeIndexes:v119];
  if (dataStoreCopy && [v122 count] != 0 && !isInactive)
  {
    v62 = [dataStoreCopy spriteAtIndexes:v122 inRect:{v23, v25, v27, v29}];
    if ([v62 count])
    {
      [v122 removeIndexes:v62];
      v63 = [indexSet mutableCopy];
      [v63 addIndexes:v62];
    }

    else
    {
      v63 = indexSet;
    }

    v61 = v63;
  }

  else
  {
    v61 = indexSet;
  }

  v103 = v61;
  objc_storeStrong(&self->_loadedSpriteIndexes, v61);
  v64 = self->_requestQueue;
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_40;
  v184[3] = &unk_2782ABF68;
  v184[4] = self;
  v184[5] = v16;
  dispatch_async(v64, v184);
  os_unfair_lock_lock(&self->_lookupLock);
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_2_41;
  v175[3] = &unk_2782ABFB8;
  v65 = v105;
  v179 = v55;
  v176 = v65;
  selfCopy = self;
  v180 = v185;
  v181 = v186;
  v182 = v187;
  v183 = streamInfoBySpriteIndex;
  v66 = v106;
  v178 = v66;
  [v119 enumerateRangesUsingBlock:v175];
  [v122 enumerateRangesUsingBlock:v118];
  if ([(PXGTextureManager *)self deferModifiedTextureRequestsDuringViewResizing]&& !state->var5 && self->_hasDeferredRequests)
  {
    v67 = *p_loadedSpriteIndexes;
    v172[0] = MEMORY[0x277D85DD0];
    v172[1] = 3221225472;
    v172[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_4_44;
    v172[3] = &unk_2782ABFE0;
    v174 = streamInfoBySpriteIndex;
    v173 = v120;
    v68 = v67;
    [(NSIndexSet *)v68 enumerateRangesUsingBlock:v172];
    self->_hasDeferredRequests = 0;
  }

  if ([(PXGTextureManager *)self deferModifiedTextureRequestsDuringViewResizing])
  {
    var5 = state->var5;
  }

  else
  {
    var5 = 0;
  }

  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_5_45;
  v159[3] = &unk_2782AC030;
  v165 = v55;
  v171 = var5;
  v164 = streamInfoBySpriteIndex;
  v159[4] = self;
  v102 = v124;
  v163 = v102;
  v166 = &self->_spriteIndexByRequestID;
  v101 = v111;
  v160 = v101;
  v112 = v65;
  v161 = v112;
  v167 = a2;
  v168 = v185;
  v169 = v186;
  v170 = v187;
  v100 = v66;
  v162 = v100;
  [v120 enumerateRangesUsingBlock:v159];
  if (indexSet2)
  {
    indexSet3 = [MEMORY[0x277CCAB58] indexSet];
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_59;
    v156[3] = &unk_2782ABFE0;
    v158 = streamInfoBySpriteIndex;
    v130 = indexSet3;
    v157 = v130;
    [indexSet2 enumerateRangesUsingBlock:v156];
  }

  else
  {
    v130 = 0;
  }

  os_unfair_lock_unlock(&self->_lookupLock);
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  objectEnumerator2 = [(NSMutableDictionary *)self->_textureProviderByMediaKind objectEnumerator];
  v72 = [objectEnumerator2 countByEnumeratingWithState:&v152 objects:v209 count:16];
  if (v72)
  {
    v73 = *v153;
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (*v153 != v73)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v75 = *(*(&v152 + 1) + 8 * m);
        [v75 setRequestIDsInTargetRect:v130];
        [v75 performDeferredCancellations];
        [v75 didFinishRequestingTextures];
        if (isInactive)
        {
          [v75 releaseCachedResources];
        }
      }

      v72 = [objectEnumerator2 countByEnumeratingWithState:&v152 objects:v209 count:16];
    }

    while (v72);
  }

  v76 = self->_requestQueue;
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_2_60;
  v151[3] = &unk_2782ABF68;
  v151[4] = self;
  v151[5] = v16;
  dispatch_async(v76, v151);
  [v112 visibleRect];
  v77 = *&state->var4;
  *buf = *&state->var0;
  v213 = v77;
  v78 = state->var8.size;
  origin = state->var8.origin;
  v215 = v78;
  [(PXGTextureManager *)self _blockOnThumbnailsIfNeededWithGeometries:v109 visibleRect:buf interactionState:fences fences:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  *buf = 0;
  *&buf[8] = buf;
  v213 = 0x2020000000uLL;
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_3_61;
  v148[3] = &unk_2782AC058;
  obj = dictionary;
  v99 = dictionary;
  v149 = v99;
  v150 = buf;
  v104 = MEMORY[0x21CEE40A0](v148);
  indexSet4 = [MEMORY[0x277CCAB58] indexSet];
  v96 = self->_emptyTexture;
  v80 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_4_64;
  v142[3] = &unk_2782AC080;
  v97 = v96;
  v143 = v97;
  v81 = v104;
  v147 = v81;
  v128 = indexSet4;
  v144 = v128;
  selfCopy2 = self;
  v82 = v80;
  v146 = v82;
  v110 = v82;
  [(PXGTextureManager *)self _enumerateSpriteTextures:v142, indexSet4, v96];
  if ([v82 count])
  {
    layoutQueue = [(PXGTextureManager *)self layoutQueue];
    v84 = layoutQueue == MEMORY[0x277D85CD0];

    if (v84)
    {
      [(PXGTextureManager *)self performSelectorOnMainThread:sel__pruneTextures_ withObject:v110 waitUntilDone:0];
    }

    else
    {
      layoutQueue2 = [(PXGTextureManager *)self layoutQueue];
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_5_67;
      v140[3] = &unk_2782AC0A8;
      v140[4] = self;
      v141 = v110;
      dispatch_async(layoutQueue2, v140);
    }
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  textureAtlasManagers2 = [(PXGTextureManager *)self textureAtlasManagers];
  v87 = [textureAtlasManagers2 countByEnumeratingWithState:&v136 objects:v208 count:16];
  if (v87)
  {
    v125 = textureAtlasManagers2;
    v126 = *v137;
    do
    {
      for (n = 0; n != v87; ++n)
      {
        if (*v137 != v126)
        {
          objc_enumerationMutation(textureAtlasManagers2);
        }

        v89 = *(*(&v136 + 1) + 8 * n);
        [v89 setSkipRenderSpriteIndexes:v128];
        [v89 pruneUnusedTextures];
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        textures = [v89 textures];
        v91 = [textures countByEnumeratingWithState:&v132 objects:v207 count:16];
        if (v91)
        {
          v92 = *v133;
          do
          {
            for (ii = 0; ii != v91; ++ii)
            {
              if (*v133 != v92)
              {
                objc_enumerationMutation(textures);
              }

              v94 = *(*(&v132 + 1) + 8 * ii);
              if ([v94 spriteCount])
              {
                (*(v81 + 2))(v81, v94, self->_atlasPresentationType);
              }
            }

            v91 = [textures countByEnumeratingWithState:&v132 objects:v207 count:16];
          }

          while (v91);
        }

        textureAtlasManagers2 = v125;
      }

      v87 = [v125 countByEnumeratingWithState:&v136 objects:v208 count:16];
    }

    while (v87);
  }

  objc_storeStrong(&self->_texturesByPresentationType, obj);
  self->_didSwitchTextureConverter = 0;
  [v119 count];
  [v122 count];
  kdebug_trace();

  _Block_object_dispose(buf, 8);
}

void *__132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[30])
  {
    return [result _requestQueue_scheduleUpdateIfAllowed];
  }

  return result;
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 4);
  if (v8)
  {
    v42 = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 9)];
    v10 = [v42 objectForKeyedSubscript:v9];

    *(a2 + 4) = 0;
    *(a2 + 9) = 0;
    *(a2 + 64) = 0;
    v11 = a3[1];
    if (v11)
    {
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      if (v12.u32[0] > 1uLL)
      {
        v13 = v8;
        if (*&v11 <= v8)
        {
          v13 = v8 % *&v11;
        }
      }

      else
      {
        v13 = (*&v11 - 1) & v8;
      }

      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      if (v15)
      {
        v16 = *v15;
        if (*v15)
        {
          v17 = *&v11 - 1;
          do
          {
            v18 = v16[1];
            if (v18 == v8)
            {
              if (*(v16 + 4) == v8)
              {
                v19 = v16[1];
                if (v12.u32[0] > 1uLL)
                {
                  if (v19 >= *&v11)
                  {
                    v19 %= *&v11;
                  }
                }

                else
                {
                  v19 &= v17;
                }

                v20 = *(v14 + 8 * v19);
                do
                {
                  v21 = v20;
                  v20 = *v20;
                }

                while (v20 != v16);
                if (v21 == a3 + 2)
                {
                  goto LABEL_37;
                }

                v22 = v21[1];
                if (v12.u32[0] > 1uLL)
                {
                  if (v22 >= *&v11)
                  {
                    v22 %= *&v11;
                  }
                }

                else
                {
                  v22 &= v17;
                }

                if (v22 != v19)
                {
LABEL_37:
                  if (!*v16)
                  {
                    goto LABEL_38;
                  }

                  v23 = *(*v16 + 8);
                  if (v12.u32[0] > 1uLL)
                  {
                    if (v23 >= *&v11)
                    {
                      v23 %= *&v11;
                    }
                  }

                  else
                  {
                    v23 &= v17;
                  }

                  if (v23 != v19)
                  {
LABEL_38:
                    *(v14 + 8 * v19) = 0;
                  }
                }

                v24 = *v16;
                if (*v16)
                {
                  v25 = *(v24 + 8);
                  if (v12.u32[0] > 1uLL)
                  {
                    if (v25 >= *&v11)
                    {
                      v25 %= *&v11;
                    }
                  }

                  else
                  {
                    v25 &= v17;
                  }

                  if (v25 != v19)
                  {
                    *(*a3 + 8 * v25) = v21;
                    v24 = *v16;
                  }
                }

                *v21 = v24;
                *v16 = 0;
                --a3[3];
                operator delete(v16);
                break;
              }
            }

            else
            {
              if (v12.u32[0] > 1uLL)
              {
                if (v18 >= *&v11)
                {
                  v18 %= *&v11;
                }
              }

              else
              {
                v18 &= v17;
              }

              if (v18 != v13)
              {
                break;
              }
            }

            v16 = *v16;
          }

          while (v16);
        }
      }
    }

    v26 = *(a1 + 48);
    v27 = v26[1];
    if (v27)
    {
      v28 = vcnt_s8(v27);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        v29 = v8;
        if (*&v27 <= v8)
        {
          v29 = v8 % *&v27;
        }
      }

      else
      {
        v29 = (*&v27 - 1) & v8;
      }

      v30 = *v26;
      v31 = *(*v26 + 8 * v29);
      if (v31)
      {
        v32 = *v31;
        if (*v31)
        {
          v33 = *&v27 - 1;
          do
          {
            v34 = v32[1];
            if (v34 == v8)
            {
              if (*(v32 + 4) == v8)
              {
                v35 = v32[1];
                if (v28.u32[0] > 1uLL)
                {
                  if (v35 >= *&v27)
                  {
                    v35 %= *&v27;
                  }
                }

                else
                {
                  v35 &= v33;
                }

                v36 = *(v30 + 8 * v35);
                do
                {
                  v37 = v36;
                  v36 = *v36;
                }

                while (v36 != v32);
                if (v37 == v26 + 2)
                {
                  goto LABEL_82;
                }

                v38 = v37[1];
                if (v28.u32[0] > 1uLL)
                {
                  if (v38 >= *&v27)
                  {
                    v38 %= *&v27;
                  }
                }

                else
                {
                  v38 &= v33;
                }

                if (v38 != v35)
                {
LABEL_82:
                  if (!*v32)
                  {
                    goto LABEL_83;
                  }

                  v39 = *(*v32 + 8);
                  if (v28.u32[0] > 1uLL)
                  {
                    if (v39 >= *&v27)
                    {
                      v39 %= *&v27;
                    }
                  }

                  else
                  {
                    v39 &= v33;
                  }

                  if (v39 != v35)
                  {
LABEL_83:
                    *(v30 + 8 * v35) = 0;
                  }
                }

                v40 = *v32;
                if (*v32)
                {
                  v41 = *(v40 + 8);
                  if (v28.u32[0] > 1uLL)
                  {
                    if (v41 >= *&v27)
                    {
                      v41 %= *&v27;
                    }
                  }

                  else
                  {
                    v41 &= v33;
                  }

                  if (v41 != v35)
                  {
                    *(*v26 + 8 * v41) = v37;
                    v40 = *v32;
                  }
                }

                *v37 = v40;
                *v32 = 0;
                --v26[3];
                operator delete(v32);
                break;
              }
            }

            else
            {
              if (v28.u32[0] > 1uLL)
              {
                if (v34 >= *&v27)
                {
                  v34 %= *&v27;
                }
              }

              else
              {
                v34 &= v33;
              }

              if (v34 != v29)
              {
                break;
              }
            }

            v32 = *v32;
          }

          while (v32);
        }
      }
    }

    [v10 cancelTextureRequestDeferred:v8];

    v7 = v42;
  }
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_assert_owner((a1[4] + 48));
  v6 = a2 + a3;
  if (a2 + a3 > a2)
  {
    v7 = a2;
    do
    {
      v8 = (a1[7] + 66 * v7);
      (*(a1[6] + 16))();
      v9 = *(v8 + 9);
      if (v9)
      {
        v10 = v9;
        [v10 removeSpriteIndex:a2];

        *(v8 + 64) = 0;
        *(v8 + 9) = 0;
        *(v8 + 7) = 0;
      }

      v11 = *(v8 + 6);
      v12 = v11;
      if (v11)
      {
        [v11 removeSpriteIndex:a2 atThumbnailIndex:v8[14]];
        *(v8 + 6) = 0;
        v8[5] = 0;
        v8[6] = 0;
      }

      *(a1[9] + *v8) = 0;
      v7 = (a2 + 1);
      a2 = v7;
    }

    while (v6 > v7);
  }
}

uint64_t __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_4(uint64_t result, uint64_t a2)
{
  v2 = (HIDWORD(a2) + a2);
  if (v2 > a2)
  {
    v3 = a2;
    v4 = 66 * a2;
    do
    {
      v5 = *(result + 56) + v4;
      *v5 = *(*(result + 40) + 4 * v3++);
      *(v5 + 4) = 0uLL;
      *(v5 + 20) = 0uLL;
      *(v5 + 36) = 0uLL;
      *(v5 + 50) = 0uLL;
      v4 += 66;
    }

    while (v2 != v3);
  }

  return result;
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_2_41(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = a2;
  v3 = a2 | (a3 << 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_3_42;
  v9[3] = &unk_2782ABF90;
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v11 = v17;
  v12 = v4;
  v6 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v7 = *(a1 + 80);
  v13 = *(a1 + 64);
  v14 = v7;
  v8 = *(a1 + 104);
  v15 = *(a1 + 96);
  v16 = v8;
  v10 = v5;
  [v6 enumerateLayoutsForSpritesInRange:v3 options:1 usingBlock:v9];

  _Block_object_dispose(v17, 8);
}

uint64_t __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_4_44(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    v6 = 66 * a2 + 65;
    do
    {
      if (*(*(v5 + 40) + v6) == 1)
      {
        result = [*(v5 + 32) addIndex:v4];
      }

      ++v4;
      v6 += 66;
      --v3;
    }

    while (v3);
  }

  return result;
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_5_45(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v4 = a2 + a3;
  if (a2 + a3 > a2)
  {
    v6 = a2;
    while (1)
    {
      v7 = *(a1 + 72) + 66 * v6;
      if (*(v7 + 4))
      {
        break;
      }

LABEL_39:
      v6 = (v3 + 1);
      v3 = v6;
      if (v4 <= v6)
      {
        return;
      }
    }

    v8 = (*(a1 + 80) + 40 * v6);
    v9 = v8[1];
    if (v9 == *(v7 + 9) && *(v8 + 16) == *(v7 + 10))
    {
      v10 = *(v7 + 65);
    }

    else
    {
      v10 = 1;
    }

    v11 = *(v8 + 8);
    v36 = v11;
    v12 = (v7 + 28);
    v13 = *(v7 + 20);
    if (v9 <= 0xB)
    {
      v14 = *(v7 + 12);
      v15 = qword_21AE2DC50[v8[1]];
      if (v15 == 1)
      {
        v17 = vcgt_f32(v11, v14);
        if ((v17.i32[0] | v17.i32[1]))
        {
          v16 = vcgt_f32(v11, vmaxnm_f32(*(v7 + 28), v13));
          goto LABEL_14;
        }
      }

      else if (!v15)
      {
        v16 = vmvn_s8(vceq_f32(v11, v14));
LABEL_14:
        if (v16.i8[0])
        {
          goto LABEL_18;
        }

        v18 = v16.i32[1];
LABEL_17:
        if (((v10 | v18) & 1) == 0)
        {
LABEL_33:
          v31 = *(v7 + 36);
          if (v31)
          {
            if (vcgt_f32(v13, v36).u32[0])
            {
              v32 = vmul_f32(*v12, 0x3F0000003F000000);
              v33 = vcgt_f32(vzip2_s32(v32, v13), vdup_lane_s32(v36, 1));
              if (v33.i8[4] & 1) != 0 && (vcgt_f32(v32, v36).u32[0] & 1) != 0 && (v33.i8[0])
              {
                v34 = v31;
                [v34 removeSpriteIndex:v3];

                *(v7 + 64) = 0;
                *v12 = 0;
                *(v7 + 36) = 0;

                *(v7 + 12) = v13;
              }
            }
          }

          goto LABEL_39;
        }

LABEL_18:
        if (*(a1 + 144) == 1)
        {
          *(v7 + 65) = 1;
          *(*(a1 + 32) + 272) = 1;
        }

        else
        {
          (*(*(a1 + 64) + 16))();
          v19 = *(*(a1 + 32) + 144);
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8[1]];
          v21 = [v19 objectForKeyedSubscript:v20];

          if (v21)
          {
            v44 = 0;
            v45 = &v44;
            v46 = 0x3032000000;
            v47 = __Block_byref_object_copy__18859;
            v48 = __Block_byref_object_dispose__18860;
            v49 = 0;
            v38 = 0;
            v39 = &v38;
            v40 = 0x3812000000;
            v41 = __Block_byref_object_copy__46;
            v42 = __Block_byref_object_dispose__47;
            v43 = "";
            v22 = *(a1 + 48);
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_48;
            v37[3] = &unk_2782AC008;
            v37[4] = &v44;
            v37[5] = &v38;
            [v22 enumerateLayoutsForSpritesInRange:v6 | 0x100000000 options:1 usingBlock:v37];
            if (!v45[5] && (*(*(a1 + 32) + 137) & 1) == 0)
            {
              v23 = PXAssertGetLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v35 = *(a1 + 48);
                *buf = 67109378;
                *&buf[4] = v3;
                *&buf[8] = 2112;
                *&buf[10] = v35;
                _os_log_error_impl(&dword_21AD38000, v23, OS_LOG_TYPE_ERROR, "missing leaf layout for spriteIndex %i in layout %@", buf, 0x12u);
              }
            }

            if (!v8[1])
            {
              v24 = *(v7 + 36);
              if (v24)
              {
                v25 = v24;
                [v25 removeSpriteIndex:v3];

                *(v7 + 64) = 0;
                *v12 = 0;
                *(v7 + 36) = 0;
              }
            }

            if (v45[5])
            {
              v26 = *(a1 + 32);
              v27 = v8[1];
              v28 = *v8;
              v29 = v39[6];
              v30 = *(a1 + 120);
              *buf = *(a1 + 104);
              *&buf[16] = v30;
              v51 = *(a1 + 136);
              [v26 _lookupLock_requestTexturesForSpritesInRange:v6 | 0x100000000 textureProvider:v21 mediaKind:v27 presentationType:v28 isAppearing:0 layout:v29 leafSpriteIndexRange:buf sprites:*(a1 + 72) textureStreamInfos:*(a1 + 56) loadingStatus:?];
            }

            _Block_object_dispose(&v38, 8);
            _Block_object_dispose(&v44, 8);
          }
        }

        goto LABEL_33;
      }
    }

    v18 = 0;
    goto LABEL_17;
  }
}

uint64_t __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_59(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= a2 + a3)
  {
    return result;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  v6 = 66 * a2 + 4;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v8 = *(*(v4 + 40) + v6);
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v5 && v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v5 + v7 == v8)
      {
        ++v5;
        goto LABEL_10;
      }

      result = [*(v4 + 32) addIndexesInRange:?];
    }

    v7 = v8;
    v5 = 1;
LABEL_10:
    v6 += 66;
    --v3;
  }

  while (v3);
  if (v5)
  {
    v9 = *(v4 + 32);

    return [v9 addIndexesInRange:v7];
  }

  return result;
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_3_61(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3];
    [v9 setObject:v8 forKeyedSubscript:v10];

    v7 = v8;
  }

  [v7 addObject:v11];
  ++*(*(*(a1 + 40) + 8) + 24);
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_4_64(void *a1, void *a2)
{
  v7 = a2;
  if ([v7 spriteCount])
  {
    v3 = v7;
    if (a1[4] != v7)
    {
      (*(a1[8] + 16))(a1[8], v7, [v7 presentationType]);
      v3 = v7;
    }

    v4 = a1[5];
    v5 = [v3 spriteIndexes];
    [v4 addIndexes:v5];

    v6 = (a1[6] + 104);
  }

  else
  {
    [*(a1[6] + 104) removeObject:v7];
    v6 = (a1 + 7);
  }

  [*v6 addObject:v7];
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_48(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = HIDWORD(a2);
  v10 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v7 = v10;
  if (v6 != 1)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGTextureManager _streamTexturesForSpritesInDataStore:presentationDataStore:changeDetails:layout:interactionState:loadingStatus:]_block_invoke"];
    [v8 handleFailureInFunction:v9 file:@"PXGTextureManager.mm" lineNumber:817 description:{@"Invalid parameter not satisfying: %@", @"subrange.length == 1"}];

    v7 = v10;
  }

  *(*(*(a1 + 40) + 8) + 48) = a2;
}

void __132__PXGTextureManager__streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState_loadingStatus___block_invoke_3_42(uint64_t a1, unint64_t a2, void *a3)
{
  v27 = a3;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) + a2 <= a2)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = -1;
    do
    {
      v13 = *(a1 + 56);
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 24);
      v16 = (v13 + 40 * v15);
      v17 = v16[1];
      if (__PAIR64__(v17, *v16) != __PAIR64__(v12, v6))
      {
        if (v9 && v7)
        {
          v18 = v8 | (v9 << 32);
          v19 = *(a1 + 80);
          v28 = *(a1 + 64);
          v29 = v19;
          v20 = *(a1 + 104);
          v30 = *(a1 + 96);
          [*(a1 + 32) _lookupLock_requestTexturesForSpritesInRange:v10 | (v11 << 32) textureProvider:v7 mediaKind:v12 presentationType:v6 isAppearing:1 layout:v27 leafSpriteIndexRange:v18 sprites:&v28 textureStreamInfos:v20 loadingStatus:*(a1 + 40)];
          v13 = *(a1 + 56);
          v15 = *(*(*(a1 + 48) + 8) + 24);
          v17 = *(v13 + 40 * v15 + 1);
        }

        v6 = *(v13 + 40 * v15);
        v21 = *(*(a1 + 32) + 144);
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v17];
        v23 = [v21 objectForKeyedSubscript:v22];

        LODWORD(v11) = 0;
        LODWORD(v9) = 0;
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 24);
        v10 = v15;
        v8 = a2;
        v7 = v23;
        v12 = v17;
      }

      v9 = (v9 + 1);
      v11 = (v11 + 1);
      *(v14 + 24) = v15 + 1;
      LODWORD(a2) = a2 + 1;
      LODWORD(v5) = v5 - 1;
    }

    while (v5);
    if (v9 && v7)
    {
      v24 = v8 | (v9 << 32);
      v25 = *(a1 + 80);
      v28 = *(a1 + 64);
      v29 = v25;
      v26 = *(a1 + 104);
      v30 = *(a1 + 96);
      [*(a1 + 32) _lookupLock_requestTexturesForSpritesInRange:v10 | (v11 << 32) textureProvider:v7 mediaKind:v12 presentationType:v6 isAppearing:1 layout:v27 leafSpriteIndexRange:v24 sprites:&v28 textureStreamInfos:v26 loadingStatus:*(a1 + 40)];
    }
  }
}

- (void)streamTexturesForSpritesInDataStore:(id)store presentationDataStore:(id)dataStore changeDetails:(id)details layout:(id)layout interactionState:(id *)state
{
  storeCopy = store;
  dataStoreCopy = dataStore;
  detailsCopy = details;
  layoutCopy = layout;
  entityManager = [(PXGTextureManager *)self entityManager];
  loadingStatus = [entityManager loadingStatus];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __117__PXGTextureManager_streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState___block_invoke;
  v24[3] = &unk_2782ABEA0;
  v24[4] = self;
  v17 = storeCopy;
  v25 = v17;
  v18 = dataStoreCopy;
  v26 = v18;
  v19 = detailsCopy;
  v27 = v19;
  v20 = layoutCopy;
  v28 = v20;
  v21 = *&state->var4;
  v29 = *&state->var0;
  v30 = v21;
  size = state->var8.size;
  origin = state->var8.origin;
  v32 = size;
  [loadingStatus performChanges:v24];
}

uint64_t __117__PXGTextureManager_streamTexturesForSpritesInDataStore_presentationDataStore_changeDetails_layout_interactionState___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 88);
  v10[0] = *(a1 + 72);
  v10[1] = v7;
  v8 = *(a1 + 120);
  v10[2] = *(a1 + 104);
  v10[3] = v8;
  return [v3 _streamTexturesForSpritesInDataStore:v2 presentationDataStore:v4 changeDetails:v5 layout:v6 interactionState:v10 loadingStatus:a2];
}

- (void)_resizeStorageIfNeededForSpriteCount:(int64_t)count
{
  streamInfoBySpriteIndexCapacity = self->_streamInfoBySpriteIndexCapacity;
  if (streamInfoBySpriteIndexCapacity < count)
  {
    if (!streamInfoBySpriteIndexCapacity)
    {
      streamInfoBySpriteIndexCapacity = 10;
      self->_streamInfoBySpriteIndexCapacity = 10;
    }

    if (streamInfoBySpriteIndexCapacity < count)
    {
      do
      {
        streamInfoBySpriteIndexCapacity *= 2;
      }

      while (streamInfoBySpriteIndexCapacity < count);
      self->_streamInfoBySpriteIndexCapacity = streamInfoBySpriteIndexCapacity;
    }

    self->_streamInfoBySpriteIndex = malloc_type_realloc(self->_streamInfoBySpriteIndex, 66 * streamInfoBySpriteIndexCapacity, 0x42760281uLL);
  }
}

- (void)setViewEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = self->_viewEnvironment;
  v7 = environmentCopy;
  v9 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    v8 = [(PXGViewEnvironment *)v6 isEqual:v7];

    if (!v8)
    {
      objc_storeStrong(&self->_viewEnvironment, environment);
      [(PXGTextureManager *)self _setNeedsUpdate];
    }
  }
}

- (void)registerTextureProvider:(id)provider forMediaKind:(unsigned __int8)kind
{
  kindCopy = kind;
  providerCopy = provider;
  textureProviderByMediaKind = self->_textureProviderByMediaKind;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:kindCopy];
  [(NSMutableDictionary *)textureProviderByMediaKind setObject:providerCopy forKeyedSubscript:v7];

  [(NSMapTable *)self->_textureProvidersDisplayLinkRegistrationState setObject:MEMORY[0x277CBEC28] forKey:providerCopy];
  [providerCopy setLayoutQueue:self->_layoutQueue];
  [providerCopy setRequestQueue:self->_requestQueue];
  [providerCopy setWorkQueue:self->_workQueue];
  [providerCopy setProcessingQueue:self->_processQueue];
  viewEnvironment = [(PXGTextureManager *)self viewEnvironment];
  [providerCopy setViewEnvironment:viewEnvironment];

  [providerCopy setDelegate:self];
  [(PXGTextureManager *)self _configureTextureProvider:providerCopy];
  [providerCopy prepareImageDataSpecs];
}

- (id)_textureConverterForPresentationType:(unsigned __int8)type contentType:(unint64_t)contentType
{
  typeCopy = type;
  v26 = *MEMORY[0x277D85DE8];
  textureConverterByPresentationType = self->_textureConverterByPresentationType;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:?];
  v9 = [(NSDictionary *)textureConverterByPresentationType objectForKeyedSubscript:v8];

  if (!v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    textureConverters = [(PXGTextureManager *)self textureConverters];
    v11 = [textureConverters countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = *v18;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(textureConverters);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if ((contentType & ~[v14 supportedContentTypes]) == 0)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [textureConverters countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v9 = v14;

      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_10:
    }

    v15 = PXGTungstenGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v22 = typeCopy;
      v23 = 2048;
      contentTypeCopy = contentType;
      _os_log_impl(&dword_21AD38000, v15, OS_LOG_TYPE_DEFAULT, "Missing textureConverter for presentationType:%d contentType:%lu", buf, 0x12u);
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (void)_registerTextureConverter:(id)converter forPresentationType:(unsigned __int8)type
{
  typeCopy = type;
  converterCopy = converter;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  v9 = [(NSDictionary *)self->_textureConverterByPresentationType objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9 != converterCopy)
  {
    if (v9)
    {
      v34 = v9;
      streamInfoBySpriteIndexCount = self->_streamInfoBySpriteIndexCount;
      if (streamInfoBySpriteIndexCount)
      {
        v12 = 0;
        streamInfoBySpriteIndex = self->_streamInfoBySpriteIndex;
        v14 = 1;
        do
        {
          v15 = streamInfoBySpriteIndex + 66 * v12;
          if (v15[8] == typeCopy)
          {
            v16 = *(v15 + 6);
            v17 = v16;
            if (v16)
            {
              [v16 removeSpriteIndex:v14 - 1 atThumbnailIndex:*(v15 + 14)];
              *(v15 + 6) = 0;
              *(v15 + 5) = 0;
              *(v15 + 6) = 0;
            }

            v18 = *(v15 + 36);
            if (v18)
            {
              v19 = v18;
              [v19 removeSpriteIndex:v14 - 1];

              v15[64] = 0;
              *(v15 + 36) = 0;
              *(v15 + 28) = 0;
            }

            *(v15 + 5) = -1;
            streamInfoBySpriteIndexCount = self->_streamInfoBySpriteIndexCount;
          }

          v12 = v14;
        }

        while (streamInfoBySpriteIndexCount > v14++);
      }

      self->_didSwitchTextureConverter = 1;
      v21 = self->_textureAtlasManagers;
      textureAtlasManagers = self->_textureAtlasManagers;
      self->_textureAtlasManagers = MEMORY[0x277CBEBF8];

      allValues = [(NSMutableDictionary *)self->_textureProviderByMediaKind allValues];
      requestQueue = self->_requestQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__PXGTextureManager__registerTextureConverter_forPresentationType___block_invoke;
      block[3] = &unk_2782ABE78;
      v25 = allValues;
      v37 = v25;
      selfCopy = self;
      v26 = v21;
      v39 = v26;
      dispatch_async(requestQueue, block);
      processQueue = self->_processQueue;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__PXGTextureManager__registerTextureConverter_forPresentationType___block_invoke_3;
      v35[3] = &unk_2782ABE50;
      v35[4] = self;
      dispatch_async(processQueue, v35);
      [(PXGTextureManager *)self _removeAllTexturesForPresentationType:typeCopy];
      v28 = [(PXGTextureManager *)self _storeTexture:self->_emptyTexture forKey:self->_emptyTexture];
      [(PXGTextureManager *)self _setNeedsUpdate];

      v10 = v34;
    }

    v29 = [(NSDictionary *)self->_textureConverterByPresentationType mutableCopy];
    [v29 setObject:converterCopy forKeyedSubscript:v8];
    v30 = [v29 copy];
    textureConverterByPresentationType = self->_textureConverterByPresentationType;
    self->_textureConverterByPresentationType = v30;

    if (converterCopy)
    {
      if (([converterCopy supportedContentTypes] & 8) != 0)
      {
        objc_storeStrong(&self->_atlasTextureConverter, converter);
        self->_atlasPresentationType = typeCopy;
      }

      [converterCopy setRequestQueue:self->_requestQueue];
      [converterCopy setProcessingQueue:self->_processQueue];
      [(PXGTextureManager *)self _configureTextureConverter:converterCopy];
      transparentTexture = [converterCopy transparentTexture];
      if (transparentTexture)
      {
        v33 = [(PXGTextureManager *)self _storeTexture:transparentTexture forKey:transparentTexture];
      }
    }
  }
}

void __67__PXGTextureManager__registerTextureConverter_forPresentationType___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v5++) clearTextureAtlasManagerCache];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v6 = [a1[5] layoutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PXGTextureManager__registerTextureConverter_forPresentationType___block_invoke_2;
  block[3] = &unk_2782ABE50;
  v8 = a1[6];
  dispatch_async(v6, block);
}

- (void)setTextureConverters:(id)converters
{
  v32 = *MEMORY[0x277D85DE8];
  convertersCopy = converters;
  v5 = self->_textureConverters;
  v6 = convertersCopy;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(NSArray *)v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      v20 = v7;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = self->_textureConverters;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __42__PXGTextureManager_setTextureConverters___block_invoke;
            v25[3] = &unk_2782ABE28;
            v25[4] = v13;
            if ([(NSArray *)v20 indexOfObjectPassingTest:v25]== 0x7FFFFFFFFFFFFFFFLL)
            {
              -[PXGTextureManager _registerTextureConverter:forPresentationType:](self, "_registerTextureConverter:forPresentationType:", 0, [v13 presentationType]);
            }
          }

          v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v10);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = v20;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v15)
      {
        v16 = *v22;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v14);
            }

            -[PXGTextureManager _registerTextureConverter:forPresentationType:](self, "_registerTextureConverter:forPresentationType:", *(*(&v21 + 1) + 8 * j), [*(*(&v21 + 1) + 8 * j) presentationType]);
          }

          v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v15);
      }

      v18 = [(NSArray *)v14 copy];
      textureConverters = self->_textureConverters;
      self->_textureConverters = v18;

      v7 = v20;
    }
  }
}

BOOL __42__PXGTextureManager_setTextureConverters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [*(a1 + 32) presentationType];
  v4 = a1 == [v3 presentationType];

  return v4;
}

- (NSString)description
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __32__PXGTextureManager_description__block_invoke;
  v32[3] = &unk_2782ABE00;
  v32[4] = &v37;
  v32[5] = &v33;
  [(PXGTextureManager *)self _enumerateSpriteTextures:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  textureAtlasManagers = [(PXGTextureManager *)self textureAtlasManagers];
  v4 = [textureAtlasManagers countByEnumeratingWithState:&v28 objects:v42 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(textureAtlasManagers);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        textures = [v7 textures];
        v9 = [textures countByEnumeratingWithState:&v24 objects:v41 count:16];
        if (v9)
        {
          v10 = *v25;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(textures);
              }

              estimatedByteSize = [*(*(&v24 + 1) + 8 * j) estimatedByteSize];
              v38[3] += estimatedByteSize;
            }

            v9 = [textures countByEnumeratingWithState:&v24 objects:v41 count:16];
          }

          while (v9);
        }
      }

      v4 = [textureAtlasManagers countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v4);
  }

  v13 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = PXGTextureManager;
  v14 = [(PXGTextureManager *)&v23 description];
  v15 = v38[3];
  v16 = v34[3];
  textureAtlasManagers2 = [(PXGTextureManager *)self textureAtlasManagers];
  v18 = [v13 stringWithFormat:@"<%@ totalMemory:%.2fMB imageTextures:%lu atlasManagers:%@>", v14, vcvtd_n_f64_u64(v15, 0xAuLL) * 0.0009765625, v16, textureAtlasManagers2];

  do
  {
    v19 = [v18 length];
    v20 = [v18 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

    v21 = [v20 stringByReplacingOccurrencesOfString:@"\ withString:@"];

    v18 = v21;
  }

  while ([v21 length] != v19);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v21;
}

void __32__PXGTextureManager_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) += [v3 estimatedByteSize];
  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)dealloc
{
  CGImageRelease(self->_lightPlaceholderImage);
  CGImageRelease(self->_darkPlaceholderImage);
  streamInfoBySpriteIndex = self->_streamInfoBySpriteIndex;
  streamInfoBySpriteIndexCount = self->_streamInfoBySpriteIndexCount;
  if (streamInfoBySpriteIndexCount)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = streamInfoBySpriteIndex + 66 * v5;
      v8 = *(v7 + 36);
      if (v8)
      {
        v9 = v8;
        [v9 removeSpriteIndex:v6 - 1];

        v7[64] = 0;
        *(v7 + 36) = 0;
        *(v7 + 28) = 0;

        streamInfoBySpriteIndexCount = self->_streamInfoBySpriteIndexCount;
      }

      v5 = v6;
    }

    while (streamInfoBySpriteIndexCount > v6++);
    streamInfoBySpriteIndex = self->_streamInfoBySpriteIndex;
  }

  free(streamInfoBySpriteIndex);
  v11.receiver = self;
  v11.super_class = PXGTextureManager;
  [(PXGTextureManager *)&v11 dealloc];
}

- (PXGTextureManager)initWithEntityManager:(id)manager layoutQueue:(id)queue
{
  v62[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  queueCopy = queue;
  v55.receiver = self;
  v55.super_class = PXGTextureManager;
  v9 = [(PXGTextureManager *)&v55 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityManager, manager);
    loadingStatus = [managerCopy loadingStatus];
    v62[0] = loadingStatus;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
    trackedComponents = v10->_trackedComponents;
    v10->_trackedComponents = v12;

    objc_storeStrong(&v10->_layoutQueue, queue);
    textureConverterByPresentationType = v10->_textureConverterByPresentationType;
    v10->_textureConverterByPresentationType = MEMORY[0x277CBEC10];

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    textureProviderByMediaKind = v10->_textureProviderByMediaKind;
    v10->_textureProviderByMediaKind = v15;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    textureProvidersDisplayLinkRegistrationState = v10->_textureProvidersDisplayLinkRegistrationState;
    v10->_textureProvidersDisplayLinkRegistrationState = strongToStrongObjectsMapTable;

    v19 = objc_alloc_init(PXGSpriteTextureStore);
    lookupLock_textureCache = v10->_lookupLock_textureCache;
    v10->_lookupLock_textureCache = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCAA50]);
    spriteTexturesInUse = v10->_spriteTexturesInUse;
    v10->_spriteTexturesInUse = v21;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    pendingSpriteTextureByRequestID = v10->_pendingSpriteTextureByRequestID;
    v10->_pendingSpriteTextureByRequestID = strongToWeakObjectsMapTable;

    textureAtlasManagers = v10->_textureAtlasManagers;
    v10->_textureAtlasManagers = MEMORY[0x277CBEBF8];

    indexSet = [MEMORY[0x277CCAA78] indexSet];
    loadedSpriteIndexes = v10->_loadedSpriteIndexes;
    v10->_loadedSpriteIndexes = indexSet;

    [(PXGTextureManager *)v10 _updatePreheatingStrategy];
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_USER_INTERACTIVE, 0);
    v30 = dispatch_queue_create("com.apple.photos.texture-manager-request", v29);
    requestQueue = v10->_requestQueue;
    v10->_requestQueue = v30;

    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_attr_make_with_qos_class(v32, QOS_CLASS_USER_INTERACTIVE, 0);
    v34 = dispatch_queue_create("com.apple.photos.texture-manager-work", v33);
    workQueue = v10->_workQueue;
    v10->_workQueue = v34;

    v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v37 = dispatch_queue_attr_make_with_qos_class(v36, QOS_CLASS_USER_INITIATED, 0);
    v38 = dispatch_queue_create("com.apple.photos.texture-manager-process", v37);
    processQueue = v10->_processQueue;
    v10->_processQueue = v38;

    v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v41 = dispatch_queue_attr_make_with_qos_class(v40, QOS_CLASS_USER_INITIATED, 0);
    v42 = dispatch_queue_create("com.apple.photos.texture-manager-adjust", v41);
    adjustQueue = v10->_adjustQueue;
    v10->_adjustQueue = v42;

    v44 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v45 = dispatch_queue_attr_make_with_qos_class(v44, QOS_CLASS_USER_INITIATED, 0);
    v46 = dispatch_queue_create("com.apple.photos.texture-manager-deallocations", v45);
    deallocationsQueue = v10->_deallocationsQueue;
    v10->_deallocationsQueue = v46;

    v10->_lookupLock._os_unfair_lock_opaque = 0;
    v48 = objc_alloc_init(PXGEmptyTexture);
    emptyTexture = v10->_emptyTexture;
    v10->_emptyTexture = v48;

    v50 = [(PXGTextureManager *)v10 _storeTexture:v10->_emptyTexture forKey:v10->_emptyTexture];
    v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
    placeholderTextures = v10->_placeholderTextures;
    v10->_placeholderTextures = v51;

    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __PXGPlaceholderImageWithColor_block_invoke;
    v59 = &__block_descriptor_64_e54_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__CGContext__40l;
    v60 = vdupq_n_s64(0x3FEDC28F5C28F5C3uLL);
    v61 = xmmword_21AE2D370;
    v10->_lightPlaceholderImage = PXCreateCGImageWithDrawBlock();
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __PXGPlaceholderImageWithColor_block_invoke;
    v59 = &__block_descriptor_64_e54_v48__0_CGRect__CGPoint_dd__CGSize_dd__8__CGContext__40l;
    v60 = vdupq_n_s64(0x3FC1EB851EB851ECuLL);
    v61 = xmmword_21AE2D380;
    v10->_darkPlaceholderImage = PXCreateCGImageWithDrawBlock();
    v53 = objc_alloc_init(PXGTextureProvider);
    [(PXGTextureManager *)v10 registerTextureProvider:v53 forMediaKind:0];
  }

  return v10;
}

@end
@interface VLTileDataProvider
- (VLLocalizationDataProviderDelegate)delegate;
- (VLTileDataProvider)init;
- (VLTileDataProvider)initWithAuditToken:(id)token supportedFormatVersions:(id)versions;
- (id).cxx_construct;
- (id)cachedTileForKey:(id *)key;
- (id)fileURLForKey:(id *)key error:(id *)error;
- (void)_commonInitWithTileLoader:(id)loader auditToken:(id)token supportedFormatVersions:(id)versions;
- (void)_disburseMetadataTileForKey:(uint64_t)key tileData:(void *)data error:(void *)error;
- (void)_fetchDataTile:(uint64_t)tile originalKey:(_OWORD *)key additionalInfo:(uint64_t *)info;
- (void)_fetchMetadataForCoordinate:(id *)coordinate completionHandler:(id)handler;
- (void)_fetchMetadataForDataKey:(id *)key completionHandler:(id)handler;
- (void)_fetchMetadataTile:(uint64_t)tile completionHandler:(void *)handler;
- (void)_fetchTileDataForKey:(id *)key completion:(id)completion;
- (void)dealloc;
- (void)determineAvailabilityForCoordinate:(id *)coordinate horizontalAccuracy:(double)accuracy purpose:(int64_t)purpose callbackQueue:(id)queue callback:(id)callback;
@end

@implementation VLTileDataProvider

- (VLTileDataProvider)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLTileDataProvider)initWithAuditToken:(id)token supportedFormatVersions:(id)versions
{
  tokenCopy = token;
  versionsCopy = versions;
  v12.receiver = self;
  v12.super_class = VLTileDataProvider;
  v8 = [(VLTileDataProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(VLTileDataProvider *)v8 _commonInitWithTileLoader:0 auditToken:tokenCopy supportedFormatVersions:versionsCopy];
    v10 = v9;
  }

  return v9;
}

- (void)_commonInitWithTileLoader:(id)loader auditToken:(id)token supportedFormatVersions:(id)versions
{
  v33 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  tokenCopy = token;
  versionsCopy = versions;
  objc_storeStrong(self + 4, token);
  if (loaderCopy)
  {
    modernLoader = loaderCopy;
  }

  else
  {
    modernLoader = [MEMORY[0x277D0EDA8] modernLoader];
  }

  v12 = *(self + 2);
  *(self + 2) = modernLoader;

  v13 = GEOTileLoaderClientIdentifier();
  v14 = *(self + 3);
  *(self + 3) = v13;

  [*(self + 2) openForClient:*(self + 3)];
  v15 = [versionsCopy copy];
  v16 = *(self + 26);
  *(self + 26) = v15;

  *(self + 54) = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = *(self + 26);
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        v23 = *(self + 54);
        if (v23 > [v22 unsignedIntValue])
        {
          unsignedIntValue = *(self + 54);
        }

        else
        {
          unsignedIntValue = [v22 unsignedIntValue];
        }

        *(self + 54) = unsignedIntValue;
      }

      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  v24 = geo_isolater_create();
  v25 = *(self + 5);
  *(self + 5) = v24;

  v26 = [objc_alloc(MEMORY[0x277D0EDA0]) initWithMapType:0];
  v27 = *(self + 21);
  *(self + 21) = v26;
}

- (void)dealloc
{
  [*(self + 2) cancelAllForClient:*(self + 3)];
  [*(self + 2) closeForClient:*(self + 3)];
  v3.receiver = self;
  v3.super_class = VLTileDataProvider;
  [(VLTileDataProvider *)&v3 dealloc];
}

void __45__VLTileDataProvider_setShouldCacheMetadata___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 200) = *(a1 + 40);
  v1 = *(a1 + 32);
  if ((*(v1 + 200) & 1) == 0)
  {
    v2 = *(v1 + 192);
    *(v1 + 192) = 0;
  }
}

- (void)_disburseMetadataTileForKey:(uint64_t)key tileData:(void *)data error:(void *)error
{
  v71 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  errorCopy = error;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = 0;
  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __65__VLTileDataProvider__disburseMetadataTileForKey_tileData_error___block_invoke;
  v50 = &unk_279E2D840;
  selfCopy = self;
  v52 = &v54;
  keyCopy = key;
  geo_isolate_sync_data();
  if ([v55[5] count])
  {
    if (!errorCopy)
    {
      v42 = 0;
      v17 = [dataCopy readDataWithOptions:0 error:&v42];
      v13 = v42;
      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x277D0EE28]) initWithData:v17];
        v19 = v18;
        if (v18)
        {
          v31 = MEMORY[0x277D85DD0];
          v32 = 3221225472;
          v33 = __65__VLTileDataProvider__disburseMetadataTileForKey_tileData_error___block_invoke_11;
          v34 = &unk_279E2D7A0;
          selfCopy2 = self;
          keyCopy2 = key;
          v36 = v18;
          geo_isolate_sync_data();
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v20 = v55[5];
        v21 = [v20 countByEnumeratingWithState:&v27 objects:v60 count:16];
        if (v21)
        {
          v22 = *v28;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(v20);
              }

              (*(*(*(&v27 + 1) + 8 * i) + 16))(*(*(&v27 + 1) + 8 * i));
            }

            v21 = [v20 countByEnumeratingWithState:&v27 objects:v60 count:16];
          }

          while (v21);
        }
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v19 = v55[5];
        v24 = [v19 countByEnumeratingWithState:&v38 objects:v61 count:16];
        if (v24)
        {
          v25 = *v39;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v39 != v25)
              {
                objc_enumerationMutation(v19);
              }

              (*(*(*(&v38 + 1) + 8 * j) + 16))();
            }

            v24 = [v19 countByEnumeratingWithState:&v38 objects:v61 count:16];
          }

          while (v24);
        }
      }

      goto LABEL_33;
    }

    if (qword_281181C70 == -1)
    {
      v10 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v10 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v13 = v55[5];
        v14 = [v13 countByEnumeratingWithState:&v43 objects:v62 count:16];
        if (v14)
        {
          v15 = *v44;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v44 != v15)
              {
                objc_enumerationMutation(v13);
              }

              (*(*(*(&v43 + 1) + 8 * k) + 16))();
            }

            v14 = [v13 countByEnumeratingWithState:&v43 objects:v62 count:16];
          }

          while (v14);
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    v11 = *(key + 6);
    v12 = *(key + 10) & 0x3FFFFFF;
    *buf = 67175427;
    v64 = v11 & 0x3F;
    v65 = 1025;
    v66 = v11 >> 6;
    v67 = 1025;
    v68 = v12;
    v69 = 2114;
    v70 = errorCopy;
    _os_log_impl(&dword_27103D000, v10, OS_LOG_TYPE_ERROR, "Failed to load metadata tile %{private}i_%{private}i_%{private}i: %{public}@", buf, 0x1Eu);
    goto LABEL_6;
  }

LABEL_34:
  _Block_object_dispose(&v54, 8);
}

uint64_t __65__VLTileDataProvider__disburseMetadataTileForKey_tileData_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 168) objectForKey:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[4] + 168);
  v6 = a1[6];

  return [v5 removeObjectForKey:v6];
}

void __65__VLTileDataProvider__disburseMetadataTileForKey_tileData_error___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 200) == 1)
  {
    *(v1 + 176) = **(a1 + 48);
    objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  }
}

- (void)_fetchMetadataForCoordinate:(id *)coordinate completionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    modernManager = [MEMORY[0x277D0ECD0] modernManager];
    v8 = [modernManager maximumZoomLevelForStyle:70];

    if (v8 == 255)
    {
      v17 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__VLTileDataProvider__fetchMetadataForCoordinate_completionHandler___block_invoke;
      block[3] = &unk_279E2D7C8;
      v25 = handlerCopy;
      dispatch_async(v17, block);
    }

    else
    {
      GEOMapPointForCoordinate();
      v9 = (1 << v8) / *(MEMORY[0x277D0E7E0] + 16);
      v11 = vcvtmd_u64_f64(v10 * v9);
      v18 = *MEMORY[0x277D0EA78] & 0x7F;
      v13 = *MEMORY[0x277D0EA70] & 0x3F | ((*(self + 54) & 0x1FF) << 6);
      v20 = 0;
      v19 = v13;
      v21 = v8 & 0x3F | (v11 << 6);
      v14 = vcvtmd_u64_f64(v12 * v9) & 0x3FFFFFF;
      v23 = 0;
      v22 = v14;
      if (qword_281181C70 != -1)
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
      }

      v15 = _MergedGlobals_1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%+.8f, %+.8f", *&coordinate->var0, *&coordinate->var1];
        *buf = 138478595;
        v27 = v16;
        v28 = 1025;
        v29 = v8 & 0x3F;
        v30 = 1025;
        v31 = v11 & 0x3FFFFFF;
        v32 = 1025;
        v33 = v14;
        _os_log_impl(&dword_27103D000, v15, OS_LOG_TYPE_DEBUG, "Coordinate %{private}@ maps to metadata tile %{private}i_%{private}i_%{private}i", buf, 0x1Eu);
      }

      [(VLTileDataProvider *)self _fetchMetadataTile:&v18 completionHandler:handlerCopy];
    }
  }
}

void __68__VLTileDataProvider__fetchMetadataForCoordinate_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v4 = GEOErrorDomain();
  v3 = [v2 errorWithDomain:? code:? userInfo:?];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)_fetchMetadataForDataKey:(id *)key completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    modernManager = [MEMORY[0x277D0ECD0] modernManager];
    v8 = [modernManager maximumZoomLevelForStyle:70];

    if (v8 != 255)
    {
      v9 = *(self + 54);
      v10 = ldexp(1.0, v8 - key->var0);
      v11 = (v10 * key->var1);
      v12 = v10 * key->var2;
      LOBYTE(buf) = *MEMORY[0x277D0EA78] & 0x7F;
      v13 = *MEMORY[0x277D0EA70] & 0x3F | ((v9 & 0x1FF) << 6);
      BYTE5(buf) = 0;
      *(&buf + 1) = v13;
      *(&buf + 6) = v8 & 0x3F | (v11 << 6);
      HIWORD(buf) = 0;
      *(&buf + 10) = v12 & 0x3FFFFFF;
      v14 = *(&buf + 1);
      v21 = buf;
      if (qword_281181C70 == -1)
      {
        v15 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
LABEL_6:
          [(VLTileDataProvider *)self _fetchMetadataTile:&v21 completionHandler:handlerCopy];
          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
        v15 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_6;
        }
      }

      var0 = key->var0;
      var1 = key->var1;
      var2 = key->var2;
      LODWORD(buf) = 67175937;
      DWORD1(buf) = var0;
      WORD4(buf) = 1025;
      *(&buf + 10) = var1;
      HIWORD(buf) = 1025;
      v25 = var2;
      v26 = 1025;
      v27 = BYTE6(v21) & 0x3F;
      v28 = 1025;
      v29 = *(&v21 + 6) >> 6;
      v30 = 1025;
      v31 = (v14 >> 16) & 0x3FFFFFF;
      _os_log_impl(&dword_27103D000, v15, OS_LOG_TYPE_DEBUG, "Data key %{private}i_%{private}i_%{private}i maps to metadata tile %{private}i_%{private}i_%{private}i", &buf, 0x26u);
      goto LABEL_6;
    }

    if (qword_281181C70 == -1)
    {
      v19 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
      {
LABEL_10:
        v20 = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__VLTileDataProvider__fetchMetadataForDataKey_completionHandler___block_invoke;
        block[3] = &unk_279E2D7C8;
        v23 = handlerCopy;
        dispatch_async(v20, block);

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v19 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }
    }

    LOWORD(buf) = 0;
    _os_log_impl(&dword_27103D000, v19, OS_LOG_TYPE_DEBUG, "No matching tileset found for VL_METADATA. Cannot fetch metadata.", &buf, 2u);
    goto LABEL_10;
  }

LABEL_11:
}

void __65__VLTileDataProvider__fetchMetadataForDataKey_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v4 = GEOErrorDomain();
  v3 = [v2 errorWithDomain:? code:? userInfo:?];
  (*(v1 + 16))(v1, 0, v3);
}

- (void)_fetchMetadataTile:(uint64_t)tile completionHandler:(void *)handler
{
  v41 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v21[1] = MEMORY[0x277D85DD0];
  v21[2] = 3221225472;
  v21[3] = __59__VLTileDataProvider__fetchMetadataTile_completionHandler___block_invoke;
  v21[4] = &unk_279E2D7F0;
  v21[5] = self;
  v23 = &v26;
  v24 = &v32;
  tileCopy = tile;
  v7 = handlerCopy;
  v22 = v7;
  geo_isolate_sync();
  if (!v27[5])
  {
    if (*(v33 + 24) == 1)
    {
      if (qword_281181C70 == -1)
      {
        v11 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
        v11 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }
      }

      v12 = *(tile + 6);
      v13 = *(tile + 10) & 0x3FFFFFF;
      LODWORD(buf) = 67175169;
      HIDWORD(buf) = v12 & 0x3F;
      v37 = 1025;
      v38 = v12 >> 6;
      v39 = 1025;
      v40 = v13;
      _os_log_impl(&dword_27103D000, v11, OS_LOG_TYPE_DEBUG, "Metadata tile %{private}i_%{private}i_%{private}i is already loading", &buf, 0x14u);
      goto LABEL_14;
    }

    if (qword_281181C70 == -1)
    {
      v14 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
LABEL_13:
        objc_initWeak(&buf, self);
        v18 = self[2];
        v17 = self[3];
        v19 = dispatch_get_global_queue(21, 0);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __59__VLTileDataProvider__fetchMetadataTile_completionHandler___block_invoke_15;
        v20[3] = &unk_279E2D818;
        objc_copyWeak(v21, &buf);
        [v18 loadKey:tile priority:3221225469 forClient:v17 options:3 reason:4 callbackQ:v19 beginNetwork:0 callback:v20];

        objc_destroyWeak(v21);
        objc_destroyWeak(&buf);
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v14 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }
    }

    v15 = *(tile + 6);
    v16 = *(tile + 10) & 0x3FFFFFF;
    LODWORD(buf) = 67175169;
    HIDWORD(buf) = v15 & 0x3F;
    v37 = 1025;
    v38 = v15 >> 6;
    v39 = 1025;
    v40 = v16;
    _os_log_impl(&dword_27103D000, v14, OS_LOG_TYPE_INFO, "Loading metadata tile %{private}i_%{private}i_%{private}i from GeoServices...", &buf, 0x14u);
    goto LABEL_13;
  }

  if (qword_281181C70 != -1)
  {
    dispatch_once(&qword_281181C70, &__block_literal_global_1);
    v8 = _MergedGlobals_1;
    if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
  {
LABEL_4:
    v9 = *(tile + 6);
    v10 = *(tile + 10) & 0x3FFFFFF;
    LODWORD(buf) = 67175169;
    HIDWORD(buf) = v9 & 0x3F;
    v37 = 1025;
    v38 = v9 >> 6;
    v39 = 1025;
    v40 = v10;
    _os_log_impl(&dword_27103D000, v8, OS_LOG_TYPE_DEBUG, "Using cached metadata tile %{private}i_%{private}i_%{private}i", &buf, 0x14u);
  }

LABEL_5:
  (*(v7 + 2))(v7, v27[5], 0);
LABEL_14:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

uint64_t __59__VLTileDataProvider__fetchMetadataTile_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 192) && (v3 = GEOTileKeyEquals(), v2 = *(a1 + 32), v3))
  {
    v4 = *(*(a1 + 48) + 8);
    *(v4 + 40) = *(v2 + 192);
  }

  else
  {
    v8 = [*(v2 + 168) objectForKey:*(a1 + 64)];
    *(*(*(a1 + 56) + 8) + 24) = [v8 count] != 0;
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      [*(*(a1 + 32) + 168) setObject:? forKey:?];
    }

    v5 = [*(a1 + 40) copy];
    v6 = _Block_copy(v5);
    [v8 addObject:v6];
  }

  return MEMORY[0x2821F96F8]();
}

void __59__VLTileDataProvider__fetchMetadataTile_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disburseMetadataTileForKey:a2 tileData:v9 error:v8];
}

- (id)cachedTileForKey:(id *)key
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  geo_isolate_sync_data();
  if (v12[5])
  {
    if (qword_281181C70 == -1)
    {
      v4 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        v9 = v12[5];
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v4 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    var0 = key->var0;
    var1 = key->var1;
    var2 = key->var2;
    var3 = key->var3;
    *buf = 67109888;
    v18 = var0;
    v19 = 1024;
    v20 = var1;
    v21 = 1024;
    v22 = var2;
    v23 = 1024;
    v24 = var3;
    _os_log_impl(&dword_27103D000, v4, OS_LOG_TYPE_INFO, "Returning cached track data: <z: %i, x: %i, y: %i, uncertainty: %i>", buf, 0x1Au);
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  _Block_object_dispose(&v11, 8);

  return v9;
}

void __39__VLTileDataProvider_cachedTileForKey___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = v1[20];
  if (v2)
  {
    v3 = a1[6];
    v5 = v1[18];
    v4 = v1[19];
    v7 = *v3;
    v6 = v3[1];
    if (v5 == v7 && v4 == v6)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), v2);
    }
  }
}

- (id)fileURLForKey:(id *)key error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = [(VLTileDataProvider *)self cachedTileForKey:?];
  v8 = v7;
  if (v7)
  {
    fileURL = [v7 fileURL];
    goto LABEL_19;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  geo_isolate_sync_data();
  if (*(v26 + 24) != 1)
  {
    if (*(v22 + 24) != 1)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"VLLocalizationDataProviderErrorDomain" code:1 userInfo:0];
      }

      if ((v30[3] & 1) == 0)
      {
        [(VLTileDataProvider *)self _fetchTileDataForKey:key completion:0];
      }

      goto LABEL_18;
    }

    if (qword_281181C70 == -1)
    {
      v10 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v10 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }
    }

    var0 = key->var0;
    var1 = key->var1;
    var2 = key->var2;
    var3 = key->var3;
    *buf = 67175425;
    v34 = var0;
    v35 = 1025;
    v36 = var1;
    v37 = 1025;
    v38 = var2;
    v39 = 1025;
    v40 = var3;
    v15 = "Tile %{private}i_%{private}i_%{private}i:%{private}i is not supported/available.";
    goto LABEL_11;
  }

  if (qword_281181C70 == -1)
  {
    v10 = _MergedGlobals_1;
    if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  dispatch_once(&qword_281181C70, &__block_literal_global_1);
  v10 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
  {
LABEL_6:
    v11 = key->var0;
    v12 = key->var1;
    v13 = key->var2;
    v14 = key->var3;
    *buf = 67175425;
    v34 = v11;
    v35 = 1025;
    v36 = v12;
    v37 = 1025;
    v38 = v13;
    v39 = 1025;
    v40 = v14;
    v15 = "Tile %{private}i_%{private}i_%{private}i:%{private}i has recently failed.";
LABEL_11:
    _os_log_impl(&dword_27103D000, v10, OS_LOG_TYPE_DEBUG, v15, buf, 0x1Au);
  }

LABEL_12:
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"VLLocalizationDataProviderErrorDomain" code:2 userInfo:0];
  }

LABEL_18:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  fileURL = 0;
LABEL_19:

  return fileURL;
}

void *__42__VLTileDataProvider_fileURLForKey_error___block_invoke(void *result)
{
  v1 = result[4];
  v2 = (v1 + 48);
  v3 = *(v1 + 56);
  v4 = result[8];
  if (v3 == v2)
  {
LABEL_7:
    v3 = v2;
  }

  else
  {
    while (v3[2] != *v4 || v3[3] != v4[1])
    {
      v3 = v3[1];
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  *(*(result[5] + 8) + 24) = v3 != v2;
  v6 = result[4];
  v7 = (v6 + 72);
  v8 = *(v6 + 80);
  if (v8 == v7)
  {
LABEL_14:
    v8 = v7;
  }

  else
  {
    while (v8[2] != *v4 || v8[3] != v4[1])
    {
      v8 = v8[1];
      if (v8 == v7)
      {
        goto LABEL_14;
      }
    }
  }

  *(*(result[6] + 8) + 24) = v8 != v7;
  v10 = result[4];
  v11 = (v10 + 96);
  v12 = *(v10 + 104);
  if (v12 == v11)
  {
LABEL_22:
    v12 = v11;
  }

  else
  {
    v14 = *v4;
    v13 = v4[1];
    while (v12[2] != v14 || v12[3] != v13)
    {
      v12 = v12[1];
      if (v12 == v11)
      {
        goto LABEL_22;
      }
    }
  }

  *(*(result[7] + 8) + 24) = v12 != v11;
  return result;
}

- (void)_fetchTileDataForKey:(id *)key completion:(id)completion
{
  v71 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy || ([(VLTileDataProvider *)self cachedTileForKey:key], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_2;
    v46 = &unk_279E2D868;
    selfCopy = self;
    v48 = &v60;
    v50 = &v52;
    keyCopy = key;
    v49 = &v56;
    geo_isolate_sync_data();
    if (*(v57 + 24) == 1)
    {
      if (qword_281181C70 == -1)
      {
        v10 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_8;
        }
      }

      else
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
        v10 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
LABEL_8:
          if (completionCopy)
          {
            v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VLLocalizationDataProviderErrorDomain" code:2 userInfo:0];
            v16 = dispatch_get_global_queue(21, 0);
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_17;
            v40[3] = &unk_279E2D890;
            v41 = v15;
            v42 = completionCopy;
            v17 = v15;
            dispatch_async(v16, v40);
          }

          goto LABEL_23;
        }
      }

      var0 = key->var0;
      var1 = key->var1;
      var2 = key->var2;
      var3 = key->var3;
      *buf = 67175425;
      *&buf[4] = var0;
      *&buf[8] = 1025;
      *&buf[10] = var1;
      *&buf[14] = 1025;
      v68 = var2;
      v69 = 1025;
      v70 = var3;
      _os_log_impl(&dword_27103D000, v10, OS_LOG_TYPE_DEBUG, "Tile %{private}i_%{private}i_%{private}i:%{private}i has recently failed.", buf, 0x1Au);
      goto LABEL_8;
    }

    if (*(v53 + 24) == 1)
    {
      if (qword_281181C70 == -1)
      {
        v18 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }
      }

      else
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
        v18 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
LABEL_14:
          if (completionCopy)
          {
            v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VLLocalizationDataProviderErrorDomain" code:2 userInfo:0];
            v24 = dispatch_get_global_queue(21, 0);
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_18;
            v37[3] = &unk_279E2D890;
            v38 = v23;
            v39 = completionCopy;
            v25 = v23;
            dispatch_async(v24, v37);
          }

          goto LABEL_23;
        }
      }

      v19 = key->var0;
      v20 = key->var1;
      v21 = key->var2;
      v22 = key->var3;
      *buf = 67175425;
      *&buf[4] = v19;
      *&buf[8] = 1025;
      *&buf[10] = v20;
      *&buf[14] = 1025;
      v68 = v21;
      v69 = 1025;
      v70 = v22;
      _os_log_impl(&dword_27103D000, v18, OS_LOG_TYPE_DEBUG, "Tile %{private}i_%{private}i_%{private}i:%{private}i is not supported/available.", buf, 0x1Au);
      goto LABEL_14;
    }

    if (completionCopy)
    {
      location[1] = MEMORY[0x277D85DD0];
      location[2] = 3221225472;
      location[3] = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_2_19;
      location[4] = &unk_279E2D8B8;
      location[5] = self;
      keyCopy2 = key;
      v35 = completionCopy;
      geo_isolate_sync_data();
    }

    if (*(v61 + 24) != 1)
    {
      *buf = *key;
      objc_initWeak(location, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_20;
      v31[3] = &unk_279E2D958;
      objc_copyWeak(&v32, location);
      v33 = *buf;
      [(VLTileDataProvider *)self _fetchMetadataForDataKey:key completionHandler:v31];
      objc_destroyWeak(&v32);
      objc_destroyWeak(location);
      goto LABEL_23;
    }

    if (qword_281181C70 == -1)
    {
      v26 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:
        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(&v60, 8);
        goto LABEL_24;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v26 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }
    }

    v27 = key->var0;
    v28 = key->var1;
    v29 = key->var2;
    v30 = key->var3;
    *buf = 67175425;
    *&buf[4] = v27;
    *&buf[8] = 1025;
    *&buf[10] = v28;
    *&buf[14] = 1025;
    v68 = v29;
    v69 = 1025;
    v70 = v30;
    _os_log_impl(&dword_27103D000, v26, OS_LOG_TYPE_DEBUG, "Tile %{private}i_%{private}i_%{private}i:%{private}i is already loading.", buf, 0x1Au);
    goto LABEL_23;
  }

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke;
  block[3] = &unk_279E2D890;
  v65 = v7;
  v66 = completionCopy;
  v9 = v7;
  dispatch_async(v8, block);

LABEL_24:
}

void *__54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_2(void *result)
{
  v1 = result[4];
  v2 = (v1 + 48);
  v3 = *(v1 + 56);
  v4 = result[8];
  if (v3 == v2)
  {
LABEL_7:
    v3 = v2;
  }

  else
  {
    while (v3[2] != *v4 || v3[3] != v4[1])
    {
      v3 = v3[1];
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  *(*(result[5] + 8) + 24) = v3 != v2;
  v6 = result[4];
  v7 = (v6 + 72);
  v8 = *(v6 + 80);
  if (v8 == v7)
  {
LABEL_14:
    v8 = v7;
  }

  else
  {
    while (v8[2] != *v4 || v8[3] != v4[1])
    {
      v8 = v8[1];
      if (v8 == v7)
      {
        goto LABEL_14;
      }
    }
  }

  *(*(result[6] + 8) + 24) = v8 != v7;
  v10 = result[4];
  v11 = (v10 + 96);
  v12 = *(v10 + 104);
  if (v12 == v11)
  {
LABEL_21:
    v12 = v11;
  }

  else
  {
    while (v12[2] != *v4 || v12[3] != v4[1])
    {
      v12 = v12[1];
      if (v12 == v11)
      {
        goto LABEL_21;
      }
    }
  }

  *(*(result[7] + 8) + 24) = v12 != v11;
  if ((*(*(result[5] + 8) + 24) & 1) == 0 && (*(*(result[6] + 8) + 24) & 1) == 0 && (*(*(result[7] + 8) + 24) & 1) == 0)
  {
    operator new();
  }

  return result;
}

void __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v58 = a2;
  v60 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_79;
  }

  v57 = WeakRetained;
  if (v60)
  {
    v72 = MEMORY[0x277D85DD0];
    v73 = 3221225472;
    v74 = __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_2_21;
    v75 = &unk_279E2D8E0;
    v76 = WeakRetained;
    v78 = *(a1 + 40);
    v77 = v60;
    geo_isolate_sync_data();

    v7 = v57;
    goto LABEL_79;
  }

  v8 = WeakRetained[26];
  v9 = v58;
  v66 = v8;
  *v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [v9 tiles];
  v10 = [obj countByEnumeratingWithState:v79 objects:&v88 count:16];
  if (!v10)
  {
    goto LABEL_67;
  }

  v56 = 0;
  v55 = *MEMORY[0x277D0EA68] & 0x7F;
  v63 = *v80;
  v67 = *MEMORY[0x277D0EA70];
  *(&v11 + 1) = 0xF0E0D0C0B0A1918;
  *&v11 = 67175425;
  v54 = v11;
  do
  {
    v12 = 0;
    v62 = v10;
    do
    {
      if (*v80 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*&v79[8] + 8 * v12);
      context = objc_autoreleasePoolPush();
      v14 = [v13 coord];
      if ([v14 x] != *(a1 + 44) || objc_msgSend(v14, "y") != *(a1 + 48) || objc_msgSend(v14, "zoom") != *(a1 + 40))
      {
        v38 = 1;
        goto LABEL_55;
      }

      v15 = [v13 precisionIndexsCount];
      if (v15 != [v13 buildIndexsCount])
      {
        goto LABEL_84;
      }

      v16 = 0;
      v64 = 0;
      v59 = -1;
      while (v16 < [v13 buildIndexsCount])
      {
        v17 = [v13 buildIndexAtIndex:v16];
        if ([v9 buildsCount] <= v17)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_83;
          }

          *buf = 0;
          v52 = MEMORY[0x277D86220];
          for (i = "Assertion failed: buildIndex < metadata.buildsCount"; ; i = "Assertion failed: tile.precisionIndexsCount == tile.buildIndexsCount")
          {
            _os_log_fault_impl(&dword_27103D000, v52, OS_LOG_TYPE_FAULT, i, buf, 2u);
            do
            {
LABEL_83:
              __break(1u);
LABEL_84:
              ;
            }

            while (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT));
            *buf = 0;
            v52 = MEMORY[0x277D86220];
          }
        }

        v18 = [v9 buildAtIndex:?];
        if ([v18 dataOutputVersion] <= v67)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "dataFormatVersion")}];
          v24 = [v66 containsObject:v23];

          if (v24)
          {
            v19 = [v9 precisionAtIndex:{objc_msgSend(v13, "precisionIndexAtIndex:", v16)}];
            v25 = 0;
            v26 = -1;
            while (v25 < [v19 precisionsCount])
            {
              v27 = [v19 precisionsAtIndex:v25];
              if (v27 >= v26)
              {
                v28 = v26;
              }

              else
              {
                v28 = v27;
              }

              if (v27 >= *(a1 + 52))
              {
                v26 = v28;
              }

              ++v25;
            }

            if (v26 == -1)
            {
              if (qword_281181C70 != -1)
              {
                dispatch_once(&qword_281181C70, &__block_literal_global_1);
              }

              v30 = _MergedGlobals_1;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v32 = [v18 identifier];
                v33 = *(a1 + 52);
                *buf = 134283777;
                *v84 = v32;
                *&v84[8] = 1025;
                *v85 = v33;
                _os_log_impl(&dword_27103D000, v30, OS_LOG_TYPE_DEBUG, "Build %{private}llu does not support the requested precision (%{private}i) or higher", buf, 0x12u);
              }

              goto LABEL_42;
            }

            if (v26 >= 0x100)
            {
              if (qword_281181C70 != -1)
              {
                dispatch_once(&qword_281181C70, &__block_literal_global_1);
              }

              v30 = _MergedGlobals_1;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = [v18 identifier];
                *buf = 134283777;
                *v84 = v31;
                *&v84[8] = 1025;
                *v85 = v26;
                _os_log_impl(&dword_27103D000, v30, OS_LOG_TYPE_ERROR, "Build %{private}llu's best available precision (%{private}i) is larger than UINT8_MAX, which is unsupported", buf, 0x12u);
              }

LABEL_42:

              goto LABEL_35;
            }

            if (!v64 || (v34 = [v18 dataFormatVersion], v34 > objc_msgSend(v64, "dataFormatVersion")) || (v36 = objc_msgSend(v18, "dataFormatVersion"), v36 == objc_msgSend(v64, "dataFormatVersion")) && (v37 = objc_msgSend(v18, "dataOutputVersion"), v37 > objc_msgSend(v64, "dataOutputVersion")))
            {
              v35 = v18;

              v59 = v26;
              v64 = v35;
            }
          }

          else
          {
            if (qword_281181C70 != -1)
            {
              dispatch_once(&qword_281181C70, &__block_literal_global_1);
            }

            v19 = _MergedGlobals_1;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v29 = [v18 identifier];
              *buf = 134283521;
              *v84 = v29;
              v21 = v19;
              v22 = "Build %{private}llu's data format version is not supported by this client";
              goto LABEL_34;
            }
          }
        }

        else
        {
          if (qword_281181C70 != -1)
          {
            dispatch_once(&qword_281181C70, &__block_literal_global_1);
          }

          v19 = _MergedGlobals_1;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v18 identifier];
            *buf = 134283521;
            *v84 = v20;
            v21 = v19;
            v22 = "Build %{private}llu's data output version is not supported by this client";
LABEL_34:
            _os_log_impl(&dword_27103D000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0xCu);
          }
        }

LABEL_35:

        ++v16;
      }

      v3 = v64 != 0;
      if (v64)
      {
        v70 = [v64 routingKey];
        v71 = v71 & 0xC0 | [v64 dataOutputVersion] & 0x3F;
        v56 = [v64 dataFormatVersion];
        v39.i64[0] = [v64 identifier];
        v93.val[1] = vextq_s8(v39, v39, 0xFuLL);
        v93.val[1].i8[0] = v55;
        v93.val[1].i8[9] = v59;
        v40.i64[0] = *(a1 + 40) & 0x1F | (32 * (*(a1 + 44) & 0x1FFFFFu)) | ((*(a1 + 48) & 0x1FFFFF) << 26);
        v93.val[0] = vextq_s8(v39, v40, 6uLL);
        v68 = vqtbl2q_s8(v93, xmmword_271103670);
        goto LABEL_63;
      }

      if (qword_281181C70 == -1)
      {
        v41 = _MergedGlobals_1;
        if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_62;
        }
      }

      else
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
        v41 = _MergedGlobals_1;
        if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
        {
LABEL_62:
          v42 = *(a1 + 40);
          v43 = *(a1 + 44);
          v44 = *(a1 + 48);
          v45 = *(a1 + 52);
          *buf = v54;
          *v84 = v42;
          *&v84[4] = 1025;
          *&v84[6] = v43;
          *v85 = 1025;
          *&v85[2] = v44;
          v86 = 1025;
          v87 = v45;
          _os_log_impl(&dword_27103D000, v41, OS_LOG_TYPE_ERROR, "Metadata tile does not contain supported build for tile %{private}i_%{private}i_%{private}i: %{private}i", buf, 0x1Au);
        }
      }

LABEL_63:

      v38 = 0;
LABEL_55:

      objc_autoreleasePoolPop(context);
      if (!v38)
      {

        if (!v3)
        {
          goto LABEL_78;
        }

        v88 = 0;
        v89 = &v88;
        v90 = 0x2020000000;
        v91 = 0;
        v7 = v57;
        geo_isolate_sync();
        if (*(v89 + 24) == 1)
        {
          v50 = objc_loadWeakRetained(v57 + 1);
          [v50 dataProvider:v57 didChangeFormatVersion:v56];

          v7 = v57;
        }

        if (qword_281181C70 == -1)
        {
          v51 = _MergedGlobals_1;
          if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_76;
          }
        }

        else
        {
          dispatch_once(&qword_281181C70, &__block_literal_global_1);
          v51 = _MergedGlobals_1;
          if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
          {
LABEL_76:
            *v79 = 0;
            _os_log_impl(&dword_27103D000, v51, OS_LOG_TYPE_DEBUG, "Metadata supports requested data tile. Loading data tile.", v79, 2u);
          }
        }

        [v7 _fetchDataTile:&v68 originalKey:a1 + 40 additionalInfo:{v69, v54}];
        _Block_object_dispose(&v88, 8);
        goto LABEL_79;
      }

      ++v12;
    }

    while (v12 != v62);
    v10 = [obj countByEnumeratingWithState:v79 objects:&v88 count:16];
  }

  while (v10);
LABEL_67:

  if (qword_281181C70 == -1)
  {
    v46 = _MergedGlobals_1;
    if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }
  }

  else
  {
    dispatch_once(&qword_281181C70, &__block_literal_global_1);
    v46 = _MergedGlobals_1;
    if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
    {
LABEL_69:
      v47 = *(a1 + 40);
      v48 = *(a1 + 44);
      v49 = *(a1 + 48);
      *buf = 67109632;
      *v84 = v47;
      *&v84[4] = 1024;
      *&v84[6] = v48;
      *v85 = 1024;
      *&v85[2] = v49;
      _os_log_impl(&dword_27103D000, v46, OS_LOG_TYPE_INFO, "Tile %i_%i_%i is not supported/available", buf, 0x14u);
    }
  }

LABEL_78:
  v7 = v57;
  geo_isolate_sync_data();
LABEL_79:
}

uint64_t __54__VLTileDataProvider__fetchTileDataForKey_completion___block_invoke_4(uint64_t result)
{
  v1 = *(result + 48);
  *(*(*(result + 40) + 8) + 24) = v1 != *(*(result + 32) + 220);
  *(*(result + 32) + 220) = v1;
  return result;
}

- (void)_fetchDataTile:(uint64_t)tile originalKey:(_OWORD *)key additionalInfo:(uint64_t *)info
{
  v33 = *MEMORY[0x277D85DE8];
  if (qword_281181C70 != -1)
  {
    dispatch_once(&qword_281181C70, &__block_literal_global_1);
    v9 = _MergedGlobals_1;
    if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    v10 = *(tile + 6);
    v11 = *(tile + 10) & 0x3FFFFFF;
    v12 = *(tile + 3);
    v13 = *info;
    v14 = *(info + 2);
    *buf = 67175937;
    *&buf[4] = v10 & 0x3F;
    *&buf[8] = 1025;
    *&buf[10] = v10 >> 6;
    *&buf[14] = 1025;
    v26 = v11;
    v27 = 1025;
    v28 = v12;
    v29 = 2048;
    v30 = v13;
    v31 = 1024;
    v32 = v14;
    _os_log_impl(&dword_27103D000, v9, OS_LOG_TYPE_INFO, "Loading tile %{private}i_%{private}i_%{private}i:%{private}i [%llu:%i] from GeoServices...", buf, 0x2Au);
  }

LABEL_4:
  objc_initWeak(&location, self);
  *buf = *key;
  v16 = self[2];
  v15 = self[3];
  v17 = qos_class_self();
  v18 = self[4];
  v19 = dispatch_get_global_queue(21, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__VLTileDataProvider__fetchDataTile_originalKey_additionalInfo___block_invoke;
  v21[3] = &unk_279E2D9A8;
  objc_copyWeak(&v22, &location);
  v23 = *buf;
  LODWORD(v20) = v17;
  [v16 loadKey:tile additionalInfo:info priority:3221225469 forClient:v15 options:3 reason:4 qos:v20 signpostID:0 auditToken:v18 callbackQ:v19 beginNetwork:0 callback:v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __64__VLTileDataProvider__fetchDataTile_originalKey_additionalInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = v9;
    v22 = v8;
    geo_isolate_sync_data();
    if (!v11)
    {
      if (qword_281181C70 == -1)
      {
        v20 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_12;
        }
      }

      else
      {
        dispatch_once(&qword_281181C70, &__block_literal_global_1);
        v20 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_12;
        }
      }

      v15 = *(a2 + 6);
      v16 = *(a2 + 10) & 0x3FFFFFF;
      v17 = *(a2 + 3);
      *buf = 67175683;
      v24 = v15 & 0x3F;
      v25 = 1025;
      v26 = v15 >> 6;
      v27 = 1025;
      v28 = v16;
      v29 = 1025;
      v30 = v17;
      v31 = 2114;
      v32 = 0;
      _os_log_impl(&dword_27103D000, v20, OS_LOG_TYPE_DEBUG, "Tile loaded: %{private}i_%{private}i_%{private}i:%{private}i: %{public}@", buf, 0x24u);
      goto LABEL_12;
    }

    if (qword_281181C70 == -1)
    {
      v18 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        geo_isolate_sync_data();
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v18 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }
    }

    v12 = *(a2 + 6);
    v13 = *(a2 + 10) & 0x3FFFFFF;
    v14 = *(a2 + 3);
    *buf = 67175683;
    v24 = v12 & 0x3F;
    v25 = 1025;
    v26 = v12 >> 6;
    v27 = 1025;
    v28 = v13;
    v29 = 1025;
    v30 = v14;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_27103D000, v18, OS_LOG_TYPE_ERROR, "Tile failed to load: %{private}i_%{private}i_%{private}i:%{private}i: %{public}@", buf, 0x24u);
    goto LABEL_7;
  }

LABEL_13:
}

void __64__VLTileDataProvider__fetchDataTile_originalKey_additionalInfo___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 56);
  std::list<VLLocalizationDataKey>::remove((*(a1 + 32) + 48), (a1 + 56));
  v3 = *(a1 + 32);
  v27 = v2;
  v4 = std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::__emplace_unique_key_args<VLLocalizationDataKey,std::piecewise_construct_t const&,std::tuple<VLLocalizationDataKey const&>,std::tuple<>>(v3 + 120, v2);
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  if (v4[7] != v4 + 6)
  {
    operator new();
  }

  v5 = *(a1 + 32);
  v8 = *(v5 + 128);
  v6 = (v5 + 128);
  v7 = v8;
  if (v8)
  {
    v9 = (v6 - 1);
    v10 = bswap64(*v2);
    v11 = v6;
    while (1)
    {
      while (1)
      {
        v14 = bswap64(v7[4]);
        if (v14 == v10)
        {
          break;
        }

        v12 = v10;
LABEL_6:
        if (v14 < v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (v13 >= 0)
        {
          v11 = v7;
        }

        v7 = *(v7 + ((v13 >> 28) & 8));
        if (!v7)
        {
LABEL_15:
          if (v11 != v6)
          {
            if ((v15 = bswap64(*v2), v16 = bswap64(v11[4]), v15 == v16) && (v15 = bswap64(v2[1]), v16 = bswap64(v11[5]), v15 == v16) || (v15 < v16 ? (v17 = -1) : (v17 = 1), (v17 & 0x80000000) == 0))
            {
              std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::erase(v9, v11);
            }
          }

          goto LABEL_23;
        }
      }

      v14 = bswap64(v7[5]);
      v12 = bswap64(v2[1]);
      if (v14 != v12)
      {
        goto LABEL_6;
      }

      v11 = v7;
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (!*(a1 + 40))
  {
    *(*(a1 + 32) + 144) = *v2;
    objc_storeStrong((*(a1 + 32) + 160), *(a1 + 48));
  }

  for (i = v25; i != &v24; i = i[1])
  {
    v19 = _Block_copy(i[2]);
    (*(v19 + 2))(v19, *(a1 + 48), *(a1 + 40));
  }

  if (v26)
  {
    v20 = v25;
    v21 = *(v24 + 8);
    v22 = *v25;
    *(v22 + 8) = v21;
    *v21 = v22;
    v26 = 0;
    if (v20 != &v24)
    {
      do
      {
        v23 = v20[1];

        operator delete(v20);
        v20 = v23;
      }

      while (v23 != &v24);
    }
  }
}

- (void)determineAvailabilityForCoordinate:(id *)coordinate horizontalAccuracy:(double)accuracy purpose:(int64_t)purpose callbackQueue:(id)queue callback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  v22 = *coordinate;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__VLTileDataProvider_determineAvailabilityForCoordinate_horizontalAccuracy_purpose_callbackQueue_callback___block_invoke;
  v16[3] = &unk_279E2D9F8;
  v16[4] = self;
  v17 = queueCopy;
  v18 = callbackCopy;
  v19 = v22;
  accuracyCopy = accuracy;
  purposeCopy = purpose;
  v14 = callbackCopy;
  v15 = queueCopy;
  [(VLTileDataProvider *)self _fetchMetadataForCoordinate:&v22 completionHandler:v16];
}

void __107__VLTileDataProvider_determineAvailabilityForCoordinate_horizontalAccuracy_purpose_callbackQueue_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v62 = v6;
  v63 = v7;
  v61 = v5;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__VLTileDataProvider_determineAvailabilityForCoordinate_horizontalAccuracy_purpose_callbackQueue_callback___block_invoke_2;
    block[3] = &unk_279E2D890;
    v8 = *(a1 + 40);
    v75 = *(a1 + 48);
    v74 = v6;
    dispatch_async(v8, block);

    v9 = &v75;
    goto LABEL_89;
  }

  v10 = *(a1 + 72);
  v11 = *(v7 + 26);
  v12 = *(a1 + 80);
  v13 = v5;
  v69 = v11;
  v65 = v12;
  if (v12 != 0.0 && [v13 purposeDenylistsCount])
  {
    v14 = 0;
    do
    {
      if (v14 >= [v13 purposeDenylistsCount])
      {
        goto LABEL_15;
      }

      v15 = [v13 purposeDenylistAtIndex:v14] - 1;
      if (v15 < 3)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = 0;
      }

      ++v14;
    }

    while (v16 != *&v12);
    if (qword_281181C70 == -1)
    {
      v17 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
LABEL_14:
        v60 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v17 = _MergedGlobals_1;
      if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }
    }

    *buf = 134349056;
    v83 = v12;
    _os_log_impl(&dword_27103D000, v17, OS_LOG_TYPE_INFO, "Metadata denylist contains purpose %{public}llu", buf, 0xCu);
    goto LABEL_14;
  }

LABEL_15:
  v60 = 1;
LABEL_16:
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  [v13 tiles];
  obj = v68 = a1;
  v18 = [obj countByEnumeratingWithState:&v76 objects:buf count:16];
  if (!v18)
  {
    goto LABEL_84;
  }

  v66 = *v77;
  v20 = *MEMORY[0x277D0EA70];
  *&v19 = 134217984;
  v59 = v19;
  do
  {
    v21 = 0;
    v67 = v18;
    do
    {
      if (*v77 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v76 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      v24 = [v22 coord];
      GEOMapPointForCoordinate();
      v26 = v25;
      v28 = v27;
      v29 = [v24 zoom];
      v30 = (1 << v29) / *(MEMORY[0x277D0E7E0] + 16);
      if ([v24 x] != vcvtmd_u64_f64(v26 * v30) || objc_msgSend(v24, "y") != vcvtmd_u64_f64(v28 * v30))
      {
        v37 = 0;
        goto LABEL_36;
      }

      if ([v22 precisionIndexsCount] != 1)
      {
        v31 = [v22 precisionIndexsCount];
        if (v31 != [v22 buildIndexsCount])
        {
          goto LABEL_94;
        }
      }

      for (i = 0; ; ++i)
      {
        if (i >= [v22 buildIndexsCount])
        {
          v38 = 0;
          v39 = 0;
          goto LABEL_34;
        }

        v33 = [v22 buildIndexAtIndex:i];
        if ([v13 buildsCount] <= v33)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_93;
          }

          *v80 = 0;
          v57 = MEMORY[0x277D86220];
          j = "Assertion failed: buildIndex < metadata.buildsCount";
          goto LABEL_92;
        }

        v34 = [v13 buildAtIndex:?];
        if ([v34 dataOutputVersion] <= v20)
        {
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v34, "dataFormatVersion")}];
          v36 = [v69 containsObject:v35];

          if (v36)
          {
            break;
          }
        }
      }

      v38 = v34;
      v40 = [v22 precisionIndexAtIndex:i];
      if ([v13 precisionsCount] <= v40)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_93;
        }

        *v80 = 0;
        v57 = MEMORY[0x277D86220];
        for (j = "Assertion failed: precisionIndex < metadata.precisionsCount"; ; j = "Assertion failed: tile.precisionIndexsCount == 1 || tile.precisionIndexsCount == tile.buildIndexsCount")
        {
LABEL_92:
          _os_log_fault_impl(&dword_27103D000, v57, OS_LOG_TYPE_FAULT, j, v80, 2u);
          do
          {
LABEL_93:
            __break(1u);
LABEL_94:
            ;
          }

          while (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT));
          *v80 = 0;
          v57 = MEMORY[0x277D86220];
        }
      }

      v39 = [v13 precisionAtIndex:?];

      if (!v38)
      {
        goto LABEL_34;
      }

      if (v65 == 0.0)
      {
        goto LABEL_61;
      }

      if (![v22 purposeDenylistsCount])
      {
        if ((v60 & 1) == 0)
        {
          if (qword_281181C70 == -1)
          {
            v47 = _MergedGlobals_1;
            if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
            {
              goto LABEL_34;
            }
          }

          else
          {
            dispatch_once(&qword_281181C70, &__block_literal_global_1);
            v47 = _MergedGlobals_1;
            if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
            {
              goto LABEL_34;
            }
          }

          *v80 = 134349056;
          v81 = v65;
          v45 = v47;
          v46 = "Metadata tile denylist contains purpose %{public}llu, and data tile has no override denylist. This tile is not usable";
          goto LABEL_56;
        }

LABEL_61:
        if (v10 <= 0.0 || (*&v65 | 2) == 2 || (GEOConfigGetBOOL() & 1) != 0)
        {
          v37 = 1;
          goto LABEL_35;
        }

        v49 = uncertainty_limits;
        if (v10 > *&uncertainty_limits)
        {
          v49 = dword_28087552C;
          if (v10 > *&dword_28087552C)
          {
            v49 = dword_280875530;
          }
        }

        v50 = 0;
        v51 = *&v49;
        while (v50 < [v39 precisionsCount])
        {
          v52 = [v39 precisionsAtIndex:v50++];
          v37 = 1;
          if (v52 == v51)
          {
            goto LABEL_35;
          }
        }

        if (qword_281181C70 == -1)
        {
          v53 = _MergedGlobals_1;
          if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
          {
            goto LABEL_34;
          }
        }

        else
        {
          dispatch_once(&qword_281181C70, &__block_literal_global_1);
          v53 = _MergedGlobals_1;
          if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
          {
            goto LABEL_34;
          }
        }

        *v80 = v59;
        v81 = v10;
        v45 = v53;
        v46 = "Metadata contains tile at this location, but only for lower-precision locations than the input (%.1f meters). Considering VL to be unavailable at this location.";
LABEL_56:
        _os_log_impl(&dword_27103D000, v45, OS_LOG_TYPE_INFO, v46, v80, 0xCu);
        goto LABEL_34;
      }

      v41 = 0;
      do
      {
        if (v41 >= [v22 purposeDenylistsCount])
        {
          if (v60)
          {
            goto LABEL_61;
          }

          if (qword_281181C70 == -1)
          {
            v48 = _MergedGlobals_1;
            if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
            {
              goto LABEL_61;
            }
          }

          else
          {
            dispatch_once(&qword_281181C70, &__block_literal_global_1);
            v48 = _MergedGlobals_1;
            if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
            {
              goto LABEL_61;
            }
          }

          *v80 = 134349056;
          v81 = v65;
          _os_log_impl(&dword_27103D000, v48, OS_LOG_TYPE_INFO, "Data tile denylist does not contain purpose %{public}llu, even though metadata tile does. The tile is usable", v80, 0xCu);
          goto LABEL_61;
        }

        v42 = [v22 purposeDenylistAtIndex:v41] - 1;
        if (v42 < 3)
        {
          v43 = v42 + 1;
        }

        else
        {
          v43 = 0;
        }

        ++v41;
      }

      while (v43 != *&v65);
      if (qword_281181C70 == -1)
      {
        v44 = _MergedGlobals_1;
        if (!os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
        {
          goto LABEL_34;
        }

        goto LABEL_51;
      }

      dispatch_once(&qword_281181C70, &__block_literal_global_1);
      v44 = _MergedGlobals_1;
      if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
      {
LABEL_51:
        *v80 = 134349056;
        v81 = v65;
        v45 = v44;
        v46 = "Data tile denylist contains purpose %{public}llu";
        goto LABEL_56;
      }

LABEL_34:
      v37 = 6;
LABEL_35:

LABEL_36:
      objc_autoreleasePoolPop(v23);
      if (v37 != 6 && v37)
      {

        v55 = 1;
        goto LABEL_88;
      }

      ++v21;
    }

    while (v21 != v67);
    v18 = [obj countByEnumeratingWithState:&v76 objects:buf count:16];
  }

  while (v18);
LABEL_84:

  if (qword_281181C70 == -1)
  {
    v54 = _MergedGlobals_1;
    if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_86;
    }
  }

  else
  {
    dispatch_once(&qword_281181C70, &__block_literal_global_1);
    v54 = _MergedGlobals_1;
    if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_INFO))
    {
LABEL_86:
      *v80 = 0;
      _os_log_impl(&dword_27103D000, v54, OS_LOG_TYPE_INFO, "Location is not supported/available", v80, 2u);
    }
  }

  v55 = 0;
LABEL_88:

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __107__VLTileDataProvider_determineAvailabilityForCoordinate_horizontalAccuracy_purpose_callbackQueue_callback___block_invoke_3;
  v70[3] = &unk_279E2D9D0;
  v9 = &v71;
  v56 = *(v68 + 40);
  v71 = *(v68 + 48);
  v72 = v55;
  dispatch_async(v56, v70);
LABEL_89:
}

- (VLLocalizationDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(self + 1);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 6) = self + 48;
  *(self + 7) = self + 48;
  *(self + 8) = 0;
  *(self + 9) = self + 72;
  *(self + 10) = self + 72;
  *(self + 11) = 0;
  *(self + 12) = self + 96;
  *(self + 13) = self + 96;
  *(self + 17) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 15) = self + 128;
  return self;
}

@end
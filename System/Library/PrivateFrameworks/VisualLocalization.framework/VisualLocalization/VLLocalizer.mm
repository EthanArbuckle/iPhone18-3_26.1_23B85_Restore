@interface VLLocalizer
+ (BOOL)isVisualLocalizationSupported;
+ (id)_debugInfoRecorder;
+ (void)_setDebugInfoRecorder:(id)recorder;
- (BOOL)shouldCacheMetadata;
- (VLLocalizationResult)_locateWithPixelBuffer:(float64_t)buffer deviceLocation:(int32x4_t)location heading:(int32x4_t)heading gravity:(int32x4_t)gravity transform:(int8x16_t)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(void *)distortion exposureTargetOffset:(void *)self0 timestamp:(float64x2_t *)self1 calculationBlock:(void *)self2 error:(unint64_t)self3;
- (VLLocalizer)initWithAuditToken:(id)token;
- (VLLocalizer)initWithDataProvider:(id)provider;
- (id)_altitudesAtLocation:(id *)location error:(id *)error;
- (id)_clLocationFrom:(id)from;
- (id)_fileURLForTile:(const vl_tile_t *)tile error:(id *)error;
- (id)locateWithPixelBuffer:(double)buffer location:(double)location heading:(double)heading gravity:(double)gravity transform:(double)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(uint64_t)distortion timestamp:(__int128 *)self0 error:(__int128 *)self1;
- (id)locateWithPixelBuffer:(double)buffer timestamp:(double)timestamp location:(double)location gravity:(__n128)gravity transform:(__n128)transform cameraIntrinsics:(__n128)intrinsics radialDistortion:(double)distortion error:(uint64_t)self0;
- (id)locateWithPixelBuffer:(uint64_t)buffer deviceLocation:(uint64_t)location heading:(_OWORD *)heading gravity:(uint64_t)gravity transform:(uint64_t)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(__int128)distortion ambientLightIntensity:(__int128)self0 timestamp:(__int128)self1 error:(uint64_t)self2;
- (id)locateWithPixelBuffer:(uint64_t)buffer deviceLocation:(uint64_t)location heading:(_OWORD *)heading gravity:(uint64_t)gravity transform:(uint64_t)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(__int128)distortion exposureTargetOffset:(__int128)self0 timestamp:(__int128)self1 error:(uint64_t)self2;
- (id)locateWithPixelBuffer:(uint64_t)buffer timestamp:(unint64_t)timestamp location:(uint64_t)location heading:(uint64_t)heading gravity:(uint64_t)gravity transform:(uint64_t)transform cameraIntrinsics:(__int128)intrinsics radialDistortion:(__int128)self0 error:(__int128)self1;
- (vl_t)_vlHandle;
- (void)_commonInit;
- (void)_deterministicLocateWithPixelBuffer:(double)buffer deviceLocation:(__n128)location heading:(__n128)heading gravity:(__n128)gravity transform:(__n128)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(uint64_t)distortion exposureTargetOffset:(void *)self0 timestamp:(__int128 *)self1 completionHandler:(void *)self2;
- (void)_resolveCurrentAltitudeQuery;
- (void)_setAlgorithmVersion:(int)version;
- (void)dataProvider:(id)provider didChangeFormatVersion:(unsigned int)version;
- (void)dealloc;
- (void)determineAltitudesAtLocation:(id)location callbackQueue:(id)queue callback:(id)callback;
- (void)determineAvailabilityAtLocation:(id)location callbackQueue:(id)queue callback:(id)callback;
- (void)determineAvailabilityAtLocation:(id)location purpose:(int64_t)purpose callbackQueue:(id)queue callback:(id)callback;
- (void)prepareWithDeviceLocation:(id)location;
- (void)prepareWithLocation:(id)location;
- (void)setShouldCacheMetadata:(BOOL)metadata;
@end

@implementation VLLocalizer

+ (BOOL)isVisualLocalizationSupported
{
  if (qword_281181CA8 != -1)
  {
    dispatch_once(&qword_281181CA8, &__block_literal_global_3);
  }

  return _MergedGlobals_3;
}

void __44__VLLocalizer_isVisualLocalizationSupported__block_invoke()
{
  v1 = MTLCreateSystemDefaultDevice();
  if ([v1 supportsFamily:3003] & 1) != 0 || (objc_msgSend(v1, "supportsFamily:", 1004))
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 supportsFamily:2002];
  }

  _MergedGlobals_3 = v0;
}

+ (id)_debugInfoRecorder
{
  v2 = [qword_281181CA0 copy];

  return v2;
}

+ (void)_setDebugInfoRecorder:(id)recorder
{
  qword_281181CA0 = [recorder copy];

  MEMORY[0x2821F96F8]();
}

- (VLLocalizer)initWithAuditToken:(id)token
{
  v25[2] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v24.receiver = self;
  v24.super_class = VLLocalizer;
  v5 = [(VLLocalizer *)&v24 init];
  v6 = v5;
  if (v5)
  {
    [(VLLocalizer *)v5 _commonInit];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:vl_argo_support_data_ver];
    [v7 addObject:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:dword_280875538];
    [v7 addObject:v9];

    v10 = [MEMORY[0x277CCABB0] numberWithInt:dword_28087553C];
    [v7 addObject:v10];

    v11 = [MEMORY[0x277CCABB0] numberWithInt:dword_280875540];
    [v7 addObject:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:dword_280875544];
    [v7 addObject:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:dword_280875548];
    [v7 addObject:v13];

    v14 = [[VLTileDataProvider alloc] initWithAuditToken:tokenCopy supportedFormatVersions:v7];
    dataProvider = v6->_dataProvider;
    v6->_dataProvider = v14;

    [(VLLocalizationDataProvider *)v6->_dataProvider setDelegate:v6];
    v16 = MEMORY[0x277CBEBC0];
    geoServicesCacheDirectoryPath = [MEMORY[0x277D0EB20] geoServicesCacheDirectoryPath];
    v25[0] = geoServicesCacheDirectoryPath;
    v25[1] = @"VisualLocalization";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v19 = [v16 fileURLWithPathComponents:v18];

    v20 = [[VLFilesystemDataProvider alloc] initWithBaseDirectory:v19];
    backupDataProvider = v6->_backupDataProvider;
    v6->_backupDataProvider = v20;

    v22 = v6;
  }

  return v6;
}

- (VLLocalizer)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = VLLocalizer;
  v6 = [(VLLocalizer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(VLLocalizer *)v6 _commonInit];
    objc_storeStrong(&v7->_dataProvider, provider);
    [(VLLocalizationDataProvider *)v7->_dataProvider setDelegate:v7];
    v8 = v7;
  }

  return v7;
}

- (void)_commonInit
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  self->_signpostID = os_signpost_id_generate(qword_281181CD0);
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v3 = qword_281181CD0;
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_27103D000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "Session", "", v18, 2u);
  }

  self->_vlOnce.lock._os_unfair_lock_opaque = 0;
  self->_vlOnce.didRun = 0;
  self->_algorithmVersion = GEOConfigGetInteger();
  v6 = MEMORY[0x277CBEBC0];
  geoServicesCacheDirectoryPath = [MEMORY[0x277D0EB20] geoServicesCacheDirectoryPath];
  v19[0] = geoServicesCacheDirectoryPath;
  v19[1] = @"VisualLocalization";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v9 = [v6 fileURLWithPathComponents:v8];

  v10 = [[VLFilesystemDataProvider alloc] initWithBaseDirectory:v9];
  backupDataProvider = self->_backupDataProvider;
  self->_backupDataProvider = v10;

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.VisualLocalization.Recorder", v12);
  recorderQueue = self->_recorderQueue;
  self->_recorderQueue = v13;

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("com.apple.VisualLocalization.AltitudeCalculation", v15);
  altitudeCalculationQueue = self->_altitudeCalculationQueue;
  self->_altitudeCalculationQueue = v16;
}

- (void)dealloc
{
  vl = self->_vl;
  if (vl)
  {
    vl_free(vl);
  }

  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v4 = qword_281181CD0;
  v5 = v4;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_27103D000, v5, OS_SIGNPOST_INTERVAL_END, signpostID, "Session", "", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = VLLocalizer;
  [(VLLocalizer *)&v7 dealloc];
}

- (vl_t)_vlHandle
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __24__VLLocalizer__vlHandle__block_invoke;
  v7 = &unk_279E2DA70;
  selfCopy = self;
  v3 = v5;
  os_unfair_lock_lock(&self->_vlOnce);
  if (!self->_vlOnce.didRun)
  {
    self->_vlOnce.didRun = 1;
    v6(v3);
  }

  os_unfair_lock_unlock(&self->_vlOnce);

  return self->_vl;
}

void __24__VLLocalizer__vlHandle__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v2 bundleIdentifier];

  v3 = *(a1 + 32);
  v4 = v7;
  *(*(a1 + 32) + 16) = vl_create(_vlTrackCallback, v3, 0, _vlLogCallback, v3, [v7 cStringUsingEncoding:1], "");
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  LODWORD(v3) = *(v5 + 48);
  vl_par_version(v3, __src);
  memcpy(v6, __src, 0x3F0uLL);
  v6[252] = v3;
}

- (BOOL)shouldCacheMetadata
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dataProvider = self->_dataProvider;

  return [(VLLocalizationDataProvider *)dataProvider shouldCacheMetadata];
}

- (void)setShouldCacheMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataProvider = self->_dataProvider;

    [(VLLocalizationDataProvider *)dataProvider setShouldCacheMetadata:metadataCopy];
  }
}

- (void)_setAlgorithmVersion:(int)version
{
  self->_algorithmVersion = version;
  self->_hasExplicitAlgorithmVersion = 1;
  _vlHandle = [(VLLocalizer *)self _vlHandle];
  vl_par_version(version, v5);
  memcpy(_vlHandle, v5, 0x3F0uLL);
  _vlHandle->var1 = version;
}

- (void)determineAvailabilityAtLocation:(id)location callbackQueue:(id)queue callback:(id)callback
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = *(queue + 1);
  v7[0] = *queue;
  v7[1] = v6;
  v7[2] = *(queue + 2);
  [(VLLocalizer *)self determineAvailabilityAtLocation:v7 purpose:0 callbackQueue:callback callback:v5];
}

- (void)determineAvailabilityAtLocation:(id)location purpose:(int64_t)purpose callbackQueue:(id)queue callback:(id)callback
{
  v11 = v6;
  callbackCopy = callback;
  if (([objc_opt_class() isVisualLocalizationSupported] & 1) == 0)
  {
    if (qword_281181CD8 == -1)
    {
      v27 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
      {
LABEL_17:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__VLLocalizer_determineAvailabilityAtLocation_purpose_callbackQueue_callback___block_invoke;
        block[3] = &unk_279E2DAC0;
        v34 = v11;
        dispatch_async(callbackCopy, block);

        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v27 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_27103D000, v27, OS_LOG_TYPE_INFO, "Visual localization is not supported on this device", buf, 2u);
    goto LABEL_17;
  }

  v13 = *purpose;
  v14 = *(purpose + 8);
  v15 = sqrt(vmuld_lane_f64(v14, *purpose, 1) + v13.f64[0] * v13.f64[0]);
  v16 = v15 * 0.99330562;
  v30 = 1.57079633;
  if (v15 * 0.99330562 == 0.0)
  {
    goto LABEL_13;
  }

  v28 = *(purpose + 8);
  v29 = *purpose;
  v17 = 0;
  __y = *(purpose + 16);
  v18 = 0.0;
  v19 = 0.0;
  while (1)
  {
    v21 = v18;
    v18 = atan2(__y, v16);
    v22 = __sincos_stret(v18);
    v23 = 6378137.0 / sqrt(v22.__sinval * -0.00669437999 * v22.__sinval + 1.0);
    v24 = v15 / v22.__cosval - v23;
    if (vabdd_f64(v21, v18) < 0.000001)
    {
      break;
    }

    if (v17 > 8)
    {
      goto LABEL_11;
    }

LABEL_8:
    ++v17;
    v16 = v15 * (v23 / (v23 + v24) * -0.00669437999 + 1.0);
    v19 = v15 / v22.__cosval - v23;
    if (v16 == 0.0)
    {
      goto LABEL_12;
    }
  }

  if (vabdd_f64(v19, v24) >= 0.001 && v17 < 9)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v18;
LABEL_12:
  v13.f64[0] = v29.f64[0];
  v14 = v28;
LABEL_13:
  v25 = atan2(v14, v13.f64[0]);
  v26.f64[0] = v30;
  v26.f64[1] = v25;
  *buf = vdivq_f64(v26, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  [(VLLocalizationDataProvider *)self->_dataProvider determineAvailabilityForCoordinate:buf horizontalAccuracy:queue purpose:callbackCopy callbackQueue:v11 callback:*(purpose + 32)];

LABEL_18:
}

- (void)determineAltitudesAtLocation:(id)location callbackQueue:(id)queue callback:(id)callback
{
  v42 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  queueCopy = queue;
  callbackCopy = callback;
  [locationCopy coordinate];
  v12 = v11;
  [locationCopy coordinate];
  v14 = v13;
  v15 = [[_VLLocalizerAltitudeQuery alloc] initWithLocation:locationCopy callbackQueue:queueCopy callback:callbackCopy];
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v16 = qword_281181CD0;
  signpostID = [(_VLLocalizerAltitudeQuery *)v15 signpostID];
  if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = signpostID;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "QueryAltitude", "", buf, 2u);
    }
  }

  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    v19 = qword_281181CD0;
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = qword_281181CD0;
  if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
  {
LABEL_8:
    v20 = v19;
    [locationCopy coordinate];
    v22 = v21;
    [locationCopy coordinate];
    *buf = 134218240;
    *&buf[4] = v22;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    _os_log_impl(&dword_27103D000, v20, OS_LOG_TYPE_DEBUG, "Determining altitudes at location: <%f, %f>", buf, 0x16u);
  }

LABEL_9:
  v24 = __sincos_stret(v14 * 0.0174532925);
  v25 = __sincos_stret(v12 * 0.0174532925);
  v26 = 6378137.0 / sqrt(v25.__sinval * -0.00669437999 * v25.__sinval + 1.0);
  v27.f64[0] = v24.__cosval;
  v27.f64[1] = v24.__sinval;
  altitudeCalculationQueue = self->_altitudeCalculationQueue;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__VLLocalizer_determineAltitudesAtLocation_callbackQueue_callback___block_invoke;
  v34[3] = &unk_279E2DB10;
  v34[4] = self;
  v35 = locationCopy;
  v36 = v15;
  v37 = queueCopy;
  v38 = callbackCopy;
  *&v29 = v25.__sinval * (v26 * 0.99330562 + 0.0);
  *buf = vmulq_n_f64(v27, v25.__cosval * (v26 + 0.0));
  *&buf[16] = v29;
  v40 = 0;
  v41 = 0;
  v30 = callbackCopy;
  v31 = queueCopy;
  v32 = v15;
  v33 = locationCopy;
  [(VLLocalizer *)self determineAvailabilityAtLocation:buf callbackQueue:altitudeCalculationQueue callback:v34];
}

void __67__VLLocalizer_determineAltitudesAtLocation_callbackQueue_callback___block_invoke(uint64_t a1, char a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 72));
  if (v5)
  {
    if (qword_281181CD8 == -1)
    {
      v6 = qword_281181CD0;
      if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v6 = qword_281181CD0;
      if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        v7 = *(a1 + 40);
        v8 = v6;
        [v7 coordinate];
        v10 = v9;
        [*(a1 + 40) coordinate];
        *buf = 134218498;
        v43 = v10;
        v44 = 2048;
        v45 = v11;
        v46 = 2112;
        v47 = v5;
        _os_log_impl(&dword_27103D000, v8, OS_LOG_TYPE_ERROR, "Got an error determining availability of tiles at location: <%f, %f>: %@", buf, 0x20u);

        if (qword_281181CD8 != -1)
        {
          dispatch_once(&qword_281181CD8, &__block_literal_global_225);
        }
      }
    }

    v12 = qword_281181CD0;
    v13 = [*(a1 + 48) signpostID];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_27103D000, v12, OS_SIGNPOST_INTERVAL_END, v14, "QueryAltitude", "", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__VLLocalizer_determineAltitudesAtLocation_callbackQueue_callback___block_invoke_22;
    block[3] = &unk_279E2DAE8;
    v15 = *(a1 + 56);
    v41 = *(a1 + 64);
    v40 = v5;
    dispatch_async(v15, block);

    goto LABEL_24;
  }

  if (a2)
  {
    v16 = *(a1 + 32);
    v18 = *(v16 + 88);
    v17 = (v16 + 88);
    if (v18)
    {
      v19 = *(*(a1 + 32) + 80);
      if (!v19)
      {
        v20 = [MEMORY[0x277CBEB18] array];
        v21 = *(a1 + 32);
        v22 = *(v21 + 80);
        *(v21 + 80) = v20;

        v19 = *(*(a1 + 32) + 80);
      }

      [v19 addObject:*(a1 + 48)];
    }

    else
    {
      objc_storeStrong(v17, *(a1 + 48));
      [*(a1 + 32) _resolveCurrentAltitudeQuery];
    }

    goto LABEL_24;
  }

  if (qword_281181CD8 == -1)
  {
    v23 = qword_281181CD0;
    if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    v23 = qword_281181CD0;
    if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
    {
LABEL_17:
      v24 = *(a1 + 40);
      v25 = v23;
      [v24 coordinate];
      v27 = v26;
      [*(a1 + 40) coordinate];
      *buf = 134218240;
      v43 = v27;
      v44 = 2048;
      v45 = v28;
      _os_log_impl(&dword_27103D000, v25, OS_LOG_TYPE_INFO, "VL is not available at location: <%f, %f>", buf, 0x16u);

      if (qword_281181CD8 != -1)
      {
        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      }
    }
  }

  v29 = qword_281181CD0;
  v30 = [*(a1 + 48) signpostID];
  if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v31 = v30;
    if (os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v29, OS_SIGNPOST_INTERVAL_END, v31, "QueryAltitude", "", buf, 2u);
    }
  }

  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VLAltitudeDataProviderError" code:0 userInfo:0];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __67__VLLocalizer_determineAltitudesAtLocation_callbackQueue_callback___block_invoke_24;
  v36[3] = &unk_279E2DAE8;
  v33 = *(a1 + 56);
  v34 = *(a1 + 64);
  v37 = v32;
  v38 = v34;
  v35 = v32;
  dispatch_async(v33, v36);

LABEL_24:
}

- (void)_resolveCurrentAltitudeQuery
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = self->_currentAltitudeQuery;
  if (v3)
  {
    if (qword_281181CD8 == -1)
    {
      v4 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
      {
LABEL_5:
        v22 = 0;
        memset(buf, 0, sizeof(buf));
        location = [(_VLLocalizerAltitudeQuery *)v3 location];
        VLLocationFromCLLocation(location, buf);

        LODWORD(v22) = 1;
        _vlHandle = [(VLLocalizer *)self _vlHandle];
        altitudeCalculationQueue = self->_altitudeCalculationQueue;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __43__VLLocalizer__resolveCurrentAltitudeQuery__block_invoke;
        v16[3] = &unk_279E2DB60;
        v16[4] = self;
        v17 = v3;
        v18 = *buf;
        v19 = *&buf[16];
        v20 = v22;
        v14[0] = *buf;
        v14[1] = *&buf[16];
        v15 = v22;
        _prepareAltitudeQuery(_vlHandle, v14, 0, altitudeCalculationQueue, v16);

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v4 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }
    }

    v5 = v4;
    location2 = [(_VLLocalizerAltitudeQuery *)v3 location];
    [location2 coordinate];
    v8 = v7;
    location3 = [(_VLLocalizerAltitudeQuery *)v3 location];
    [location3 coordinate];
    *buf = 134218240;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(&dword_27103D000, v5, OS_LOG_TYPE_DEBUG, "Trying to get altitude at location: %f, %f", buf, 0x16u);

    goto LABEL_5;
  }

LABEL_6:
}

void __43__VLLocalizer__resolveCurrentAltitudeQuery__block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 72));
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v2 = qword_281181CD0;
  v3 = [*(a1 + 40) signpostID];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CalculateAltitude", "", buf, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  *buf = *(a1 + 48);
  v50 = v6;
  v51 = *(a1 + 80);
  v52 = 0;
  v7 = [v5 _altitudesAtLocation:buf error:&v52];
  v8 = v52;
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v9 = qword_281181CD0;
  v10 = [*(a1 + 40) signpostID];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v9, OS_SIGNPOST_INTERVAL_END, v11, "CalculateAltitude", "", buf, 2u);
    }
  }

  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v12 = qword_281181CD0;
  v13 = [*(a1 + 40) signpostID];
  if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v12, OS_SIGNPOST_INTERVAL_END, v14, "QueryAltitude", "", buf, 2u);
    }
  }

  v15 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__VLLocalizer__resolveCurrentAltitudeQuery__block_invoke_26;
  block[3] = &unk_279E2DB38;
  v46 = *(a1 + 40);
  v16 = v7;
  v47 = v16;
  v17 = v8;
  v48 = v17;
  dispatch_async(v15, block);

  v18 = [*(*(a1 + 32) + 80) count];
  v19 = *(a1 + 32);
  if (v18)
  {
    v20 = *(*(v19 + 16) + 144);
    v21 = *(a1 + 40);
    v22 = [v21 location];
    [v22 coordinate];
    v23 = [v21 location];

    [v23 coordinate];
    GEOMapPointForCoordinate();
    v25 = v24;
    v27 = v26;

    if (![*(*(a1 + 32) + 80) count])
    {
      goto LABEL_27;
    }

    v28 = 0;
    v29 = vcvtd_n_f64_s32(1 << v20, 0x1CuLL);
    v30 = vcvtmd_u64_f64(v29 * v25);
    v31 = vcvtmd_u64_f64(v29 * v27);
    while (1)
    {
      v32 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:v28];
      v33 = [v32 location];
      [v33 coordinate];
      v34 = [v32 location];

      [v34 coordinate];
      GEOMapPointForCoordinate();
      v36 = v35;
      v38 = v37;

      v39 = vcvtmd_u64_f64(v29 * v38);
      if (vcvtmd_u64_f64(v29 * v36) == v30 && v39 == v31)
      {
        break;
      }

      if (++v28 >= [*(*(a1 + 32) + 80) count])
      {
        goto LABEL_27;
      }
    }

    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_27:
      v28 = 0;
    }

    v42 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:v28];
    v43 = *(a1 + 32);
    v44 = *(v43 + 88);
    *(v43 + 88) = v42;

    [*(*(a1 + 32) + 80) removeObjectAtIndex:v28];
    [*(a1 + 32) _resolveCurrentAltitudeQuery];
  }

  else
  {
    v41 = *(v19 + 88);
    *(v19 + 88) = 0;
  }
}

void __43__VLLocalizer__resolveCurrentAltitudeQuery__block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)_altitudesAtLocation:(id *)location error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = location->var0[0];
  v7 = location->var0[1];
  v8 = location->var0[2];
  v9 = sqrt(v7 * v7 + v6 * v6);
  if (v9 >= 0.001)
  {
    v10 = atan2(location->var0[2], v9 * 0.996647189);
  }

  else
  {
    v10 = dbl_2711036C0[v8 < 0.0];
    v9 = 0.001;
  }

  v11 = __sincos_stret(v10);
  v12 = atan2(v7, v6);
  v13 = atan2(v8 + v11.__sinval * (v11.__sinval * v11.__sinval) * 42841.3115, v9 + v11.__cosval * (v11.__cosval * v11.__cosval) * -42697.6727);
  v34 = 0;
  v33 = 0;
  _vlHandle = [(VLLocalizer *)self _vlHandle];
  v15 = v13;
  v16 = v12;
  altitudes = vl_get_altitudes(_vlHandle, &v33, &v34, v15, v16);
  if (altitudes)
  {
    v18 = altitudes;
    if (qword_281181CD8 == -1)
    {
      v19 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v19 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        if (!error)
        {
          goto LABEL_33;
        }

        if (v18 == 1)
        {
          v23 = 1;
          goto LABEL_32;
        }

        if (v18 != 2)
        {
          v23 = 2;
          goto LABEL_32;
        }

        if (qword_281181CD8 == -1)
        {
          v20 = qword_281181CD0;
          if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_FAULT))
          {
LABEL_14:
            v23 = -1;
LABEL_32:
            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"VLAltitudeDataProviderError" code:v23 userInfo:0];
LABEL_33:
            if (v34)
            {
              free(v34);
            }

LABEL_35:
            v27 = 0;
            goto LABEL_36;
          }
        }

        else
        {
          dispatch_once(&qword_281181CD8, &__block_literal_global_225);
          v20 = qword_281181CD0;
          if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }
        }

        v21 = v20;
        _vlHandle2 = [(VLLocalizer *)self _vlHandle];
        *buf = 134217984;
        v36 = _vlHandle2;
        _os_log_impl(&dword_27103D000, v21, OS_LOG_TYPE_FAULT, "vl_get_altitudes returned error vl_not_init with vlHandle: %p", buf, 0xCu);

        goto LABEL_14;
      }
    }

    *buf = 67109120;
    LODWORD(v36) = v18;
    _os_log_impl(&dword_27103D000, v19, OS_LOG_TYPE_DEFAULT, "vl_get_altitudes returned status: %d", buf, 8u);
    goto LABEL_8;
  }

  v24 = v33;
  v25 = v34;
  if (v33 < 1 || !v34)
  {
    if (qword_281181CD8 == -1)
    {
      v31 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v31 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        if (v25)
        {
          free(v25);
        }

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"VLAltitudeDataProviderError" code:-1 userInfo:0];
          *error = v27 = 0;
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_27103D000, v31, OS_LOG_TYPE_ERROR, "Received <= 0 altitudes", buf, 2u);
    goto LABEL_26;
  }

  if (qword_281181CD8 == -1)
  {
    v26 = qword_281181CD0;
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  v26 = qword_281181CD0;
  if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEFAULT))
  {
LABEL_19:
    *buf = 134349056;
    v36 = v24;
    _os_log_impl(&dword_27103D000, v26, OS_LOG_TYPE_DEFAULT, "vl_get_altitudes returned %{public}llu altitudes", buf, 0xCu);
  }

LABEL_20:
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:v24];
  v29 = 0;
  do
  {
    LODWORD(v28) = *(v25 + v29);
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    [v27 addObject:v30];

    v29 = (v29 + 1);
  }

  while (v24 != v29);
  free(v25);
LABEL_36:

  return v27;
}

- (id)_fileURLForTile:(const vl_tile_t *)tile error:(id *)error
{
  v13 = *tile;
  v6 = [(VLLocalizationDataProvider *)self->_dataProvider fileURLForKey:&v13 error:?];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(VLLocalizationDataProvider *)self->_backupDataProvider fileURLForKey:&v13 error:error];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v7 path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    v11 = v7;
    v7 = v11;
    goto LABEL_9;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"VLLocalizationDataProviderErrorDomain" code:2 userInfo:0];
    *error = v11 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

- (void)prepareWithLocation:(id)location
{
  v4 = v3;
  v37 = *MEMORY[0x277D85DE8];
  if (([objc_opt_class() isVisualLocalizationSupported] & 1) == 0)
  {
    if (qword_281181CD8 == -1)
    {
      v26 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v26 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
      {
        return;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_27103D000, v26, OS_LOG_TYPE_INFO, "prepareWithLocation: Visual localization is not supported on this device", buf, 2u);
    return;
  }

  if (qword_281181CD8 == -1)
  {
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }
  }

  v6 = v4->f64[1];
  __x = *v4;
  v7 = sqrt(vmuld_lane_f64(v6, *v4, 1) + __x.f64[0] * __x.f64[0]);
  v8 = v7 * 0.99330562;
  v9 = 0.0;
  v10 = 1.57079633;
  if (v7 * 0.99330562 != 0.0)
  {
    v11 = 0;
    __y = v4[1].f64[0];
    v10 = 0.0;
    v12 = 0.0;
    while (1)
    {
      v13 = v10;
      v10 = atan2(__y, v8);
      v14 = __sincos_stret(v10);
      v15 = 6378137.0 / sqrt(v14.__sinval * -0.00669437999 * v14.__sinval + 1.0);
      v9 = v7 / v14.__cosval - v15;
      if (vabdd_f64(v13, v10) >= 0.000001)
      {
        if (v11 > 8)
        {
          v17 = qword_281181CD0;
          if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }
      }

      else if (vabdd_f64(v12, v9) < 0.001 || v11 >= 9)
      {
        v17 = qword_281181CD0;
        if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      ++v11;
      v8 = v7 * (v15 / (v15 + v9) * -0.00669437999 + 1.0);
      v12 = v7 / v14.__cosval - v15;
      if (v8 == 0.0)
      {
        v10 = 1.57079633;
        break;
      }
    }
  }

  v17 = qword_281181CD0;
  if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
  {
LABEL_23:
    v18 = atan2(v6, __x.f64[0]);
    *buf = 134284801;
    v19 = *v4;
    v20 = v4[1].f64[0];
    *&buf[4] = v10 / 0.0174532925;
    *&buf[12] = 2049;
    *&buf[14] = v18 / 0.0174532925;
    *&buf[22] = 2049;
    v31 = v9;
    *v32 = 2049;
    *&v32[2] = v19.f64[0];
    v33 = 2049;
    v34 = v19.f64[1];
    v35 = 2049;
    v36 = v20;
    _os_log_impl(&dword_27103D000, v17, OS_LOG_TYPE_DEBUG, "prepare: (%{private}f, %{private}f, %{private}.2f) / ECEF: (%{private}f, %{private}f, %{private}f)", buf, 0x3Eu);
    if (qword_281181CD8 != -1)
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    }
  }

LABEL_25:
  v21 = qword_281181CD0;
  v22 = v21;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_27103D000, v22, OS_SIGNPOST_EVENT, signpostID, "Update", "", buf, 2u);
  }

  *v32 = 0;
  *buf = *v4;
  *&buf[16] = v4[1].f64[0];
  *&v24 = v4[2].f64[0];
  *&v31 = v24;
  vl_update([(VLLocalizer *)self _vlHandle], buf);
}

- (void)prepareWithDeviceLocation:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (([objc_opt_class() isVisualLocalizationSupported] & 1) == 0)
  {
    if (qword_281181CD8 == -1)
    {
      v20 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v20 = qword_281181CD0;
      if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }
    }

    LOWORD(v22[0]) = 0;
    _os_log_impl(&dword_27103D000, v20, OS_LOG_TYPE_INFO, "prepareWithLocation: Visual localization is not supported on this device", v22, 2u);
    goto LABEL_17;
  }

  if (qword_281181CD8 == -1)
  {
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }
  }

  [locationCopy coordinate];
  v6 = v5;
  [locationCopy coordinate];
  v8 = v7;
  [locationCopy altitude];
  v10 = v9;
  v11 = __sincos_stret(v6 * 0.0174532925);
  v12 = __sincos_stret(v8 * 0.0174532925);
  if (qword_281181CD8 == -1)
  {
    v13 = qword_281181CD0;
    if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    v13 = qword_281181CD0;
    if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:
      v14 = 6378137.0 / sqrt(v11.__sinval * -0.00669437999 * v11.__sinval + 1.0);
      v15 = v11.__cosval * (v10 + v14);
      LODWORD(v22[0]) = 134284801;
      *(v22 + 4) = v6;
      WORD6(v22[0]) = 2049;
      *(v22 + 14) = v8;
      WORD3(v22[1]) = 2049;
      *(&v22[1] + 1) = v10;
      *v23 = 2049;
      *&v23[2] = v12.__cosval * v15;
      v24 = 2049;
      v25 = v12.__sinval * v15;
      v26 = 2049;
      v27 = v11.__sinval * (v10 + v14 * 0.99330562);
      _os_log_impl(&dword_27103D000, v13, OS_LOG_TYPE_DEBUG, "prepare: (%{private}f, %{private}f, %{private}.2f) / ECEF: (%{private}f, %{private}f, %{private}f)", v22, 0x3Eu);
      if (qword_281181CD8 != -1)
      {
        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      }
    }
  }

LABEL_9:
  v16 = qword_281181CD0;
  v17 = v16;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v22[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_27103D000, v17, OS_SIGNPOST_EVENT, signpostID, "Update", "", v22, 2u);
  }

  *v23 = 0;
  memset(v22, 0, sizeof(v22));
  VLLocationFromCLLocation(locationCopy, v22);
  vl_update([(VLLocalizer *)self _vlHandle], v22);
LABEL_17:
}

- (id)locateWithPixelBuffer:(double)buffer timestamp:(double)timestamp location:(double)location gravity:(__n128)gravity transform:(__n128)transform cameraIntrinsics:(__n128)intrinsics radialDistortion:(double)distortion error:(uint64_t)self0
{
  v12 = a2;
  if (qword_281181CB8 != -1)
  {
    selfCopy = self;
    distortionCopy = distortion;
    v17 = a12;
    gravityCopy = gravity;
    intrinsicsCopy = intrinsics;
    transformCopy = transform;
    dispatch_once(&qword_281181CB8, &__block_literal_global_29);
    v12 = a2;
    intrinsics = intrinsicsCopy;
    transform = transformCopy;
    gravity = gravityCopy;
    a12 = v17;
    distortion = distortionCopy;
    self = selfCopy;
  }

  v13 = [self locateWithPixelBuffer:-1.0 location:-1.0 heading:v12 gravity:*&gravity transform:*&transform cameraIntrinsics:*&intrinsics radialDistortion:*&distortion timestamp:*&qword_281181CB0 * a12 error:?];

  return v13;
}

double __114__VLLocalizer_locateWithPixelBuffer_timestamp_location_gravity_transform_cameraIntrinsics_radialDistortion_error___block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 / 1000000000.0;
    qword_281181CB0 = *&result;
  }

  return result;
}

- (id)locateWithPixelBuffer:(uint64_t)buffer timestamp:(unint64_t)timestamp location:(uint64_t)location heading:(uint64_t)heading gravity:(uint64_t)gravity transform:(uint64_t)transform cameraIntrinsics:(__int128)intrinsics radialDistortion:(__int128)self0 error:(__int128)self1
{
  distortionCopy2 = distortion;
  errorCopy2 = error;
  intrinsicsCopy2 = intrinsics;
  if (qword_281181CC8 != -1)
  {
    selfCopy = self;
    timestampCopy = timestamp;
    dispatch_once(&qword_281181CC8, &__block_literal_global_31);
    errorCopy2 = error;
    distortionCopy2 = distortion;
    intrinsicsCopy2 = intrinsics;
    timestamp = timestampCopy;
    self = selfCopy;
  }

  v15 = [self locateWithPixelBuffer:intrinsicsCopy2 location:distortionCopy2 heading:errorCopy2 gravity:a12 transform:*&qword_281181CC0 * timestamp cameraIntrinsics:? radialDistortion:? timestamp:? error:?];

  return v15;
}

double __122__VLLocalizer_locateWithPixelBuffer_timestamp_location_heading_gravity_transform_cameraIntrinsics_radialDistortion_error___block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 / 1000000000.0;
    qword_281181CC0 = *&result;
  }

  return result;
}

- (id)locateWithPixelBuffer:(double)buffer location:(double)location heading:(double)heading gravity:(double)gravity transform:(double)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(uint64_t)distortion timestamp:(__int128 *)self0 error:(__int128 *)self1
{
  v55 = *MEMORY[0x277D85DE8];
  v31 = error[1];
  v32 = *error;
  v24 = timestamp[1];
  v46 = *timestamp;
  v47 = v24;
  v48 = timestamp[2];
  v25 = [self _clLocationFrom:&v46];
  v26 = v25;
  v53 = 0u;
  memset(v54, 0, 28);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  if (v25)
  {
    [v25 clientLocation];
  }

  LODWORD(v52) = 1;
  v27 = objc_alloc(getCLLocationClass());
  v43 = v52;
  v44 = v53;
  v45[0] = v54[0];
  *(v45 + 12) = *(v54 + 12);
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v37 = v46;
  v38 = v47;
  v28 = [v27 initWithClientLocation:&v37];

  v37 = v32;
  v38 = v31;
  v29 = [self locateWithPixelBuffer:distortion deviceLocation:v28 heading:&v37 gravity:a12 transform:a2 cameraIntrinsics:buffer radialDistortion:location exposureTargetOffset:heading timestamp:gravity error:{transform, a15, a16, a17, a18, 0xBFF0000000000000, a19}];

  return v29;
}

- (id)locateWithPixelBuffer:(uint64_t)buffer deviceLocation:(uint64_t)location heading:(_OWORD *)heading gravity:(uint64_t)gravity transform:(uint64_t)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(__int128)distortion ambientLightIntensity:(__int128)self0 timestamp:(__int128)self1 error:(uint64_t)self2
{
  v14 = heading[1];
  v17[0] = *heading;
  v17[1] = v14;
  v15 = [self locateWithPixelBuffer:buffer deviceLocation:location heading:v17 gravity:distortion transform:intensity cameraIntrinsics:timestamp radialDistortion:error exposureTargetOffset:a13 timestamp:a14 error:?];

  return v15;
}

- (id)locateWithPixelBuffer:(uint64_t)buffer deviceLocation:(uint64_t)location heading:(_OWORD *)heading gravity:(uint64_t)gravity transform:(uint64_t)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(__int128)distortion exposureTargetOffset:(__int128)self0 timestamp:(__int128)self1 error:(uint64_t)self2
{
  v14 = heading[1];
  v17[0] = *heading;
  v17[1] = v14;
  v15 = [self _locateWithPixelBuffer:buffer deviceLocation:location heading:v17 gravity:&__block_literal_global_34 transform:gravity cameraIntrinsics:distortion radialDistortion:offset exposureTargetOffset:timestamp timestamp:error calculationBlock:a13 error:a14];

  return v15;
}

- (VLLocalizationResult)_locateWithPixelBuffer:(float64_t)buffer deviceLocation:(int32x4_t)location heading:(int32x4_t)heading gravity:(int32x4_t)gravity transform:(int8x16_t)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(void *)distortion exposureTargetOffset:(void *)self0 timestamp:(float64x2_t *)self1 calculationBlock:(void *)self2 error:(unint64_t)self3
{
  v23 = a22;
  v275[2] = *MEMORY[0x277D85DE8];
  v151 = timestamp[1];
  v152 = *timestamp;
  offsetCopy = offset;
  blockCopy = block;
  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
  }

  v25 = qword_281181CD0;
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);

  if (v26)
  {
    [offsetCopy coordinate];
    v28 = v27;
    [offsetCopy coordinate];
    v30 = v29;
    [offsetCopy altitude];
    v32 = v31;
    v33 = __sincos_stret(v28 * 0.0174532925);
    v34 = __sincos_stret(v30 * 0.0174532925);
    if (qword_281181CD8 == -1)
    {
      v35 = qword_281181CD0;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
LABEL_7:

        v23 = a22;
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
      v35 = qword_281181CD0;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }
    }

    v36 = 6378137.0 / sqrt(v33.__sinval * -0.00669437999 * v33.__sinval + 1.0);
    v37 = v33.__cosval * (v32 + v36);
    *buf = 134285057;
    *&buf[4] = v28;
    *&buf[12] = 2049;
    *&buf[14] = v30;
    *&buf[22] = 2049;
    *&buf[24] = v32;
    *&buf[32] = 2049;
    *&buf[34] = v34.__cosval * v37;
    *&buf[42] = 2049;
    *&buf[44] = v34.__sinval * v37;
    *&buf[52] = 2049;
    *&buf[54] = v33.__sinval * (v32 + v36 * 0.99330562);
    *&buf[62] = 2050;
    *&v242 = a22;
    _os_log_impl(&dword_27103D000, v35, OS_LOG_TYPE_DEBUG, "locate: (%{private}f, %{private}f, %{private}.2f) / ECEF: (%{private}f, %{private}f, %{private}f) @ %{public}.2f", buf, 0x48u);
    goto LABEL_7;
  }

LABEL_8:
  GEOGetMonotonicTime();
  v39 = v38;
  v216 = 0;
  v215 = 0u;
  v214 = 0u;
  VLLocationFromCLLocation(offsetCopy, &v214);
  v164 = [qword_281181CA0 copy];
  if ([objc_opt_class() isVisualLocalizationSupported])
  {
    if (*(self + 64))
    {
      v40 = 1;
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
      if (v164)
      {
        v40 = 1;
      }

      else
      {
        v40 = BOOL;
      }
    }

    v147 = v40;
    if (qword_281181CD8 != -1)
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    }

    v53 = qword_281181CD0;
    spid = os_signpost_id_make_with_pointer(v53, distortion);

    if (qword_281181CD8 != -1)
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    }

    v54 = qword_281181CD0;
    v55 = v54;
    v148 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      v56 = *(self + 40);
      *buf = 134217984;
      *&buf[4] = v56;
      _os_signpost_emit_with_name_impl(&dword_27103D000, v55, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Locate", "parent_signpost=%llu", buf, 0xCu);
    }

    v209 = 0;
    BaseAddress = 0;
    v210 = 0;
    PixelFormatType = CVPixelBufferGetPixelFormatType(distortion);
    v58 = PixelFormatType;
    if (PixelFormatType <= 1278226487)
    {
      if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
      {
LABEL_44:
        if (qword_281181CD8 == -1)
        {
          v65 = qword_281181CD0;
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            goto LABEL_47;
          }
        }

        else
        {
          dispatch_once(&qword_281181CD8, &__block_literal_global_225);
          v65 = qword_281181CD0;
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
LABEL_47:

            if (qword_281181CD8 == -1)
            {
              v66 = qword_281181CD0;
              if (v148 > 0xFFFFFFFFFFFFFFFDLL)
              {
                goto LABEL_51;
              }
            }

            else
            {
              dispatch_once(&qword_281181CD8, &__block_literal_global_225);
              v66 = qword_281181CD0;
              if (v148 > 0xFFFFFFFFFFFFFFFDLL)
              {
                goto LABEL_51;
              }
            }

            if (os_signpost_enabled(v66))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_27103D000, v66, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ConvertImage", "", buf, 2u);
            }

LABEL_51:

            v187.f64[0] = 0.0;
            *&v187.f64[1] = &v187;
            v188.i64[0] = 0x2050000000;
            v67 = qword_281181D00;
            v188.i64[1] = qword_281181D00;
            if (!qword_281181D00)
            {
              *&v171.f64[0] = MEMORY[0x277D85DD0];
              *&v171.f64[1] = 3221225472;
              *&v172.f64[0] = __getCIImageClass_block_invoke_0;
              *&v172.f64[1] = &unk_279E2D710;
              *&v173 = &v187;
              v239[0] = 0;
              if (!qword_281181D08)
              {
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __CoreImageLibraryCore_block_invoke_0;
                *&buf[24] = &__block_descriptor_40_e5_v8__0l;
                *&buf[32] = v239;
                *v226 = xmmword_279E2DC08;
                *&v226[16] = 0;
                qword_281181D08 = _sl_dlopen();
                if (!qword_281181D08)
                {
                  goto LABEL_254;
                }

                if (v239[0])
                {
                  free(v239[0]);
                }
              }

              *(*(v173 + 8) + 24) = objc_getClass("CIImage");
              if (!*(*(v173 + 8) + 24))
              {
LABEL_254:
                abort_report_np();
                __break(1u);
              }

              qword_281181D00 = *(*(v173 + 8) + 24);
              v67 = *(*&v187.f64[1] + 24);
            }

            v68 = v67;
            _Block_object_dispose(&v187, 8);
            v69 = [[v67 alloc] initWithCVPixelBuffer:distortion];
            [v69 extent];
            v71 = v70;
            [v69 extent];
            v73 = v72;
            v74 = v71;
            pixelBufferOut = 0;
            v272 = *MEMORY[0x277CC4D98];
            v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v71];
            v273 = v75;
            pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v273 forKeys:&v272 count:1];

            if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], v71, v73, 0x4C303038u, pixelBufferAttributes, &pixelBufferOut) && CVPixelBufferGetBytesPerRow(pixelBufferOut) == v74)
            {
              v187.f64[0] = 0.0;
              *&v187.f64[1] = &v187;
              v188.i64[0] = 0x2050000000;
              v76 = qword_281181D10;
              v188.i64[1] = qword_281181D10;
              if (qword_281181D10)
              {
                goto LABEL_79;
              }

              *&v171.f64[0] = MEMORY[0x277D85DD0];
              *&v171.f64[1] = 3221225472;
              *&v172.f64[0] = __getCIContextClass_block_invoke_0;
              *&v172.f64[1] = &unk_279E2D710;
              *&v173 = &v187;
              v239[0] = 0;
              if (!qword_281181D08)
              {
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __CoreImageLibraryCore_block_invoke_0;
                *&buf[24] = &__block_descriptor_40_e5_v8__0l;
                *&buf[32] = v239;
                *v226 = xmmword_279E2DC08;
                *&v226[16] = 0;
                qword_281181D08 = _sl_dlopen();
                if (!qword_281181D08)
                {
                  goto LABEL_254;
                }

                if (v239[0])
                {
                  free(v239[0]);
                }
              }

              *(*(v173 + 8) + 24) = objc_getClass("CIContext");
              if (*(*(v173 + 8) + 24))
              {
                qword_281181D10 = *(*(v173 + 8) + 24);
                v76 = *(*&v187.f64[1] + 24);
LABEL_79:
                v91 = v76;
                _Block_object_dispose(&v187, 8);
                context = [v76 context];
                [context render:v69 toCVPixelBuffer:pixelBufferOut];

                CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
                BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
                v209 = __PAIR64__(v73, v74);
                LODWORD(v210) = 0;
                v201[0] = MEMORY[0x277D85DD0];
                v201[1] = 3221225472;
                v201[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_2_47;
                v201[3] = &__block_descriptor_40_e5_v8__0l;
                v201[4] = pixelBufferOut;
                v62 = _Block_copy(v201);
                if (qword_281181CD8 == -1)
                {
                  v93 = qword_281181CD0;
                  if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                  v93 = qword_281181CD0;
                  if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                  {
LABEL_82:

                    if (qword_281181CD8 == -1)
                    {
                      v94 = qword_281181CD0;
                      if (v148 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                      v94 = qword_281181CD0;
                      if (v148 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
LABEL_84:
                        if (os_signpost_enabled(v94))
                        {
                          *buf = 0;
                          _os_signpost_emit_with_name_impl(&dword_27103D000, v94, OS_SIGNPOST_INTERVAL_END, spid, "ConvertImage", "", buf, 2u);
                        }
                      }
                    }

LABEL_87:
                    *&v95.f64[0] = vtrn1q_s32(a17, a18).u64[0];
                    *&v95.f64[1] = __PAIR64__(a17.u32[1], a19.u32[0]);
                    v96 = vuzp1q_s32(vuzp2q_s32(a18, a19), a18);
                    v96.i32[2] = a17.i32[2];
                    v187 = v95;
                    v188 = v96;
                    v189 = vzip1_s32(*&vextq_s8(a19, a19, 8uLL), a20);
                    v190 = a20.u32[1];
                    v191 = v214;
                    v192 = v215;
                    v193 = v216;
                    v95.f64[0] = a2;
                    v95.f64[1] = buffer;
                    v195 = vcvt_hight_f32_f64(vcvt_f32_f64(v95), v152);
                    *v95.f64 = v151.f64[0];
                    v196 = LODWORD(v95.f64[0]);
                    *&v95.f64[0] = vtrn1q_s32(location, heading).u64[0];
                    *&v95.f64[1] = __PAIR64__(location.u32[1], gravity.u32[0]);
                    v194 = v23;
                    v197 = v95;
                    v97 = vuzp1q_s32(vuzp2q_s32(heading, gravity), heading);
                    v97.i32[2] = location.i32[2];
                    v198 = v97;
                    v199 = vextq_s8(vuzp1q_s32(gravity, gravity), transform, 0xCuLL);
                    v200 = -1;
                    _vlHandle = [self _vlHandle];
                    v186 = 0;
                    v184 = 0u;
                    v185 = 0u;
                    v182 = 0u;
                    v183 = 0u;
                    v180 = 0u;
                    v181 = 0u;
                    v178 = 0u;
                    v179 = 0u;
                    v176 = 0u;
                    v177 = 0u;
                    v174 = 0u;
                    v175 = 0u;
                    v172 = 0u;
                    v173 = 0u;
                    v171 = 0u;
                    v99 = blockCopy[2](blockCopy, _vlHandle, &BaseAddress, &v187, &v171);
                    v62[2](v62);
                    v269 = 0;
                    v268 = 0u;
                    v267 = 0u;
                    v266 = 0u;
                    v265 = 0u;
                    v264 = 0u;
                    v263 = 0u;
                    v262 = 0u;
                    v261 = 0u;
                    v260 = 0u;
                    v259 = 0u;
                    v258 = 0u;
                    v257 = 0u;
                    v256 = 0u;
                    v255 = 0u;
                    v254 = 0u;
                    v253 = 0u;
                    v252 = 0u;
                    v251 = 0u;
                    v250 = 0u;
                    v249 = 0u;
                    v248 = 0u;
                    v247 = 0u;
                    v246 = 0u;
                    v245 = 0u;
                    v244 = 0u;
                    v243 = 0u;
                    v242 = 0u;
                    memset(buf, 0, sizeof(buf));
                    vl_stats_get(_vlHandle, buf);
                    if (v99 == 1)
                    {
                      v100 = [VLLocalizationDebugInfo alloc];
                      GEOGetMonotonicTime();
                      *v226 = v214;
                      *&v226[16] = v215;
                      *v227 = v216;
                      v240 = v151;
                      *v239 = v152;
                      LOBYTE(v146) = v147;
                      v146 = [(VLLocalizationDebugInfo *)v100 initWithPixelBuffer:distortion monotonicTimestamp:v226 timestamp:offsetCopy duration:v239 location:buf clLocation:1 heading:v39 gravity:v23 transform:v101 - v39 cameraIntrinsics:a2 radialDistortion:buffer exposureTargetOffset:*&location statistics:*&heading resultStatus:*&gravity resultPose:*&transform preserveImageData:*&a17, *&a18, *&a19, *&a20, a21, &v171, v146];
                      v51 = [[VLLocalizationResult alloc] initWithTimestamp:&v171 pose:v146 debugInfo:v23];
                      if (qword_281181CD8 == -1)
                      {
                        if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_142;
                        }
                      }

                      else
                      {
                        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                        if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_142;
                        }
                      }

                      [offsetCopy coordinate];
                      [offsetCopy coordinate];
                      if (v51)
                      {
                        [(VLLocalizationResult *)v51 location];
                        __ya = *&v237;
                        v103 = v236;
                      }

                      else
                      {
                        v103 = 0uLL;
                        v238 = 0u;
                        v237 = 0u;
                        v236 = 0u;
                        __ya = 0.0;
                      }

                      v113 = v103.f64[1];
                      v114 = sqrt(vmuld_lane_f64(v103.f64[1], v103, 1) + v103.f64[0] * v103.f64[0]);
                      v115 = v114 * 0.99330562;
                      v116 = 0.0;
                      v117 = 1.57079633;
                      if (v114 * 0.99330562 != 0.0)
                      {
                        v154 = v103.f64[1];
                        v156 = v103.f64[0];
                        v118 = 0;
                        v117 = 0.0;
                        v119 = 0.0;
                        do
                        {
                          v121 = v117;
                          v117 = atan2(__ya, v115);
                          v122 = __sincos_stret(v117);
                          v123 = 6378137.0 / sqrt(v122.__sinval * -0.00669437999 * v122.__sinval + 1.0);
                          v116 = v114 / v122.__cosval - v123;
                          if (vabdd_f64(v121, v117) < 0.000001)
                          {
                            if (vabdd_f64(v119, v116) < 0.001 || v118 >= 9)
                            {
LABEL_120:
                              v103.f64[0] = v156;
                              v113 = v154;
                              goto LABEL_135;
                            }
                          }

                          else if (v118 > 8)
                          {
                            goto LABEL_120;
                          }

                          ++v118;
                          v115 = v114 * (v123 / (v123 + v116) * -0.00669437999 + 1.0);
                          v119 = v114 / v122.__cosval - v123;
                        }

                        while (v115 != 0.0);
                        v103.f64[0] = v156;
                        v113 = v154;
                        v117 = 1.57079633;
                      }

LABEL_135:
                      v124 = atan2(v113, v103.f64[0]) / 0.0174532925;
                      v125 = v117 / 0.0174532925;
                      GEOCalculateDistance();
                      v127 = v126;
                      if (qword_281181CD8 == -1)
                      {
                        v128 = qword_281181CD0;
                        if (!os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_141;
                        }
                      }

                      else
                      {
                        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                        v128 = qword_281181CD0;
                        if (!os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                        {
                          goto LABEL_141;
                        }
                      }

                      if (v51)
                      {
                        [(VLLocalizationResult *)v51 location];
                        v129 = v223;
                        [(VLLocalizationResult *)v51 location];
                        v130 = *(&v220 + 1);
                        [(VLLocalizationResult *)v51 location];
                        v131 = v218;
                      }

                      else
                      {
                        v130 = 0;
                        v129 = 0;
                        v225 = 0u;
                        v224 = 0u;
                        v223 = 0u;
                        v220 = 0u;
                        v221 = 0u;
                        v222 = 0u;
                        v217 = 0u;
                        v218 = 0u;
                        v131 = 0;
                        v219 = 0u;
                      }

                      *v226 = 134285313;
                      *&v226[4] = v125;
                      *&v226[12] = 2049;
                      *&v226[14] = v124;
                      *&v226[22] = 2049;
                      *&v226[24] = v116;
                      *v227 = 2049;
                      *&v227[2] = v129;
                      v228 = 2049;
                      v229 = v130;
                      v230 = 2049;
                      v231 = v131;
                      v232 = 2050;
                      v233 = v127;
                      v234 = 2048;
                      v235 = v23;
                      _os_log_impl(&dword_27103D000, v128, OS_LOG_TYPE_INFO, "locate result: (%{private}f, %{private}f, %{private}.2f) / ECEF: (%{private}f, %{private}f, %{private}f) -- Correction: %{public}.1f meters @ %.2f", v226, 0x52u);
LABEL_141:

                      if (qword_281181CD8 != -1)
                      {
                        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                        v132 = qword_281181CD0;
                        if (v148 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
LABEL_143:
                          if (os_signpost_enabled(v132))
                          {
                            v133 = *(self + 40);
                            *v226 = 134217984;
                            *&v226[4] = v133;
                            _os_signpost_emit_with_name_impl(&dword_27103D000, v132, OS_SIGNPOST_INTERVAL_END, spid, "Locate", "parent_signpost=%llu", v226, 0xCu);
                          }
                        }

LABEL_145:

                        if (!v164)
                        {
LABEL_222:

                          goto LABEL_223;
                        }

                        v134 = *(self + 56);
                        v168[0] = MEMORY[0x277D85DD0];
                        v168[1] = 3221225472;
                        v168[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_49;
                        v168[3] = &unk_279E2DAE8;
                        v135 = &v170;
                        v170 = v164;
                        v136 = &v169;
                        v146 = v146;
                        v169 = v146;
                        dispatch_async(v134, v168);
LABEL_221:

                        goto LABEL_222;
                      }

LABEL_142:
                      v132 = qword_281181CD0;
                      if (v148 <= 0xFFFFFFFFFFFFFFFDLL)
                      {
                        goto LABEL_143;
                      }

                      goto LABEL_145;
                    }

                    if (qword_281181CD8 == -1)
                    {
                      v104 = qword_281181CD0;
                      if (!os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                      {
                        goto LABEL_95;
                      }
                    }

                    else
                    {
                      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                      v104 = qword_281181CD0;
                      if (!os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
                      {
LABEL_95:

                        if (qword_281181CD8 == -1)
                        {
                          v105 = qword_281181CD0;
                          if (v148 > 0xFFFFFFFFFFFFFFFDLL)
                          {
                            goto LABEL_99;
                          }
                        }

                        else
                        {
                          dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                          v105 = qword_281181CD0;
                          if (v148 > 0xFFFFFFFFFFFFFFFDLL)
                          {
                            goto LABEL_99;
                          }
                        }

                        if (os_signpost_enabled(v105))
                        {
                          v106 = *(self + 40);
                          *v226 = 134217984;
                          *&v226[4] = v106;
                          _os_signpost_emit_with_name_impl(&dword_27103D000, v105, OS_SIGNPOST_INTERVAL_END, spid, "Locate", "parent_signpost=%llu", v226, 0xCu);
                        }

LABEL_99:

                        if (!(error | v164))
                        {
                          v51 = 0;
LABEL_223:

                          goto LABEL_224;
                        }

                        v107 = [VLLocalizationDebugInfo alloc];
                        GEOGetMonotonicTime();
                        v109 = v99;
                        *v226 = v214;
                        *&v226[16] = v215;
                        *v227 = v216;
                        v240 = v151;
                        *v239 = v152;
                        LOBYTE(v146) = v147;
                        v1462 = [(VLLocalizationDebugInfo *)v107 initWithPixelBuffer:distortion monotonicTimestamp:v226 timestamp:offsetCopy duration:v239 location:buf clLocation:v99 heading:v39 gravity:v23 transform:v108 - v39 cameraIntrinsics:a2 radialDistortion:buffer exposureTargetOffset:*&location statistics:*&heading resultStatus:*&gravity resultPose:*&transform preserveImageData:*&a17, *&a18, *&a19, *&a20, a21, 0, v146];
                        v146 = v1462;
                        if (!error)
                        {
                          goto LABEL_219;
                        }

                        v111 = MEMORY[0x277CCA9B8];
                        if (v1462)
                        {
                          if (v99 <= 1023)
                          {
                            if (v99 <= 31)
                            {
                              if (v99 > 7)
                              {
                                if (v99 != 8)
                                {
                                  if (v99 == 16)
                                  {
                                    errorCopy18 = error;
                                    v109 = 101;
                                    goto LABEL_206;
                                  }

                                  goto LABEL_205;
                                }
                              }

                              else
                              {
                                if (v99 == 2)
                                {
                                  errorCopy18 = error;
                                  goto LABEL_206;
                                }

                                if (v99 != 4)
                                {
                                  goto LABEL_205;
                                }
                              }

                              errorCopy18 = error;
                              v109 = 100;
                              goto LABEL_206;
                            }

                            if (v99 <= 127)
                            {
                              if (v99 == 32)
                              {
                                errorCopy18 = error;
                                v109 = 200;
                                goto LABEL_206;
                              }

                              if (v99 == 64)
                              {
                                errorCopy18 = error;
                                v109 = 201;
                                goto LABEL_206;
                              }
                            }

                            else
                            {
                              switch(v99)
                              {
                                case 0x80:
                                  errorCopy18 = error;
                                  v109 = 202;
                                  goto LABEL_206;
                                case 0x100:
                                  errorCopy18 = error;
                                  v109 = 203;
                                  goto LABEL_206;
                                case 0x200:
                                  errorCopy18 = error;
                                  v109 = 204;
                                  goto LABEL_206;
                              }
                            }
                          }

                          else if (v99 > 0x4000)
                          {
                            if (v99 <= 16386)
                            {
                              errorCopy18 = error;
                              if (v99 == 16385)
                              {
                                v109 = 401;
                              }

                              else
                              {
                                v109 = 402;
                              }

                              goto LABEL_206;
                            }

                            switch(v99)
                            {
                              case 0x4003:
                                errorCopy18 = error;
                                v109 = 403;
                                goto LABEL_206;
                              case 0x4004:
                                errorCopy18 = error;
                                v109 = 404;
                                goto LABEL_206;
                              case 0x8000:
                                errorCopy18 = error;
                                v109 = 405;
                                goto LABEL_206;
                            }
                          }

                          else if (v99 <= 4095)
                          {
                            if (v99 == 1024)
                            {
                              errorCopy18 = error;
                              v109 = 205;
                              goto LABEL_206;
                            }

                            if (v99 == 2048)
                            {
                              errorCopy18 = error;
                              v109 = 300;
                              goto LABEL_206;
                            }
                          }

                          else
                          {
                            switch(v99)
                            {
                              case 0x1000:
                                errorCopy18 = error;
                                v109 = 206;
                                goto LABEL_206;
                              case 0x2000:
                                errorCopy18 = error;
                                v109 = 207;
                                goto LABEL_206;
                              case 0x4000:
                                errorCopy18 = error;
                                v109 = 400;
LABEL_206:
                                v239[0] = @"UnderlyingVLStatus";
                                v137 = MEMORY[0x277CCABB0];
                                v138 = v1462;
                                v139 = [v137 numberWithUnsignedInt:v99];
                                error = errorCopy18;
                                v239[1] = @"VLLocalizerDebugInfo";
                                *v226 = v139;
                                *&v226[8] = v138;
                                v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v239 count:2];
                                v141 = [v111 errorWithDomain:@"VLLocalizerError" code:v109 userInfo:v140];
LABEL_218:
                                v142 = v141;

                                v143 = v142;
                                *error = v142;
LABEL_219:
                                if (!v164)
                                {
                                  v51 = 0;
                                  goto LABEL_222;
                                }

                                v144 = *(self + 56);
                                v165[0] = MEMORY[0x277D85DD0];
                                v165[1] = 3221225472;
                                v165[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_50;
                                v165[3] = &unk_279E2DAE8;
                                v135 = &v167;
                                v167 = v164;
                                v136 = &v166;
                                v146 = v146;
                                v166 = v146;
                                dispatch_async(v144, v165);
                                v51 = 0;
                                goto LABEL_221;
                            }
                          }

LABEL_205:
                          errorCopy18 = error;
                          v109 = 1000;
                          goto LABEL_206;
                        }

                        if (v99 <= 1023)
                        {
                          if (v99 <= 31)
                          {
                            if (v99 > 7)
                            {
                              if (v99 != 8)
                              {
                                if (v99 == 16)
                                {
                                  v109 = 101;
                                  goto LABEL_217;
                                }

                                goto LABEL_216;
                              }
                            }

                            else
                            {
                              if (v99 == 2)
                              {
                                goto LABEL_217;
                              }

                              if (v99 != 4)
                              {
                                goto LABEL_216;
                              }
                            }

                            v109 = 100;
                            goto LABEL_217;
                          }

                          if (v99 <= 127)
                          {
                            if (v99 == 32)
                            {
                              v109 = 200;
                              goto LABEL_217;
                            }

                            if (v99 == 64)
                            {
                              v109 = 201;
                              goto LABEL_217;
                            }
                          }

                          else
                          {
                            switch(v99)
                            {
                              case 0x80:
                                v109 = 202;
                                goto LABEL_217;
                              case 0x100:
                                v109 = 203;
                                goto LABEL_217;
                              case 0x200:
                                v109 = 204;
                                goto LABEL_217;
                            }
                          }
                        }

                        else if (v99 > 0x4000)
                        {
                          if (v99 <= 16386)
                          {
                            if (v99 == 16385)
                            {
                              v109 = 401;
                            }

                            else
                            {
                              v109 = 402;
                            }

                            goto LABEL_217;
                          }

                          switch(v99)
                          {
                            case 0x4003:
                              v109 = 403;
                              goto LABEL_217;
                            case 0x4004:
                              v109 = 404;
                              goto LABEL_217;
                            case 0x8000:
                              v109 = 405;
                              goto LABEL_217;
                          }
                        }

                        else if (v99 <= 4095)
                        {
                          if (v99 == 1024)
                          {
                            v109 = 205;
                            goto LABEL_217;
                          }

                          if (v99 == 2048)
                          {
                            v109 = 300;
                            goto LABEL_217;
                          }
                        }

                        else
                        {
                          switch(v99)
                          {
                            case 0x1000:
                              v109 = 206;
                              goto LABEL_217;
                            case 0x2000:
                              v109 = 207;
                              goto LABEL_217;
                            case 0x4000:
                              v109 = 400;
LABEL_217:
                              v239[0] = @"UnderlyingVLStatus";
                              v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v99];
                              *v226 = v139;
                              v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v239 count:1];
                              v141 = [v111 errorWithDomain:@"VLLocalizerError" code:v109 userInfo:v140];
                              goto LABEL_218;
                          }
                        }

LABEL_216:
                        v109 = 1000;
                        goto LABEL_217;
                      }
                    }

                    *v226 = 134349312;
                    *&v226[4] = v99;
                    *&v226[12] = 2048;
                    *&v226[14] = v23;
                    _os_log_impl(&dword_27103D000, v104, OS_LOG_TYPE_INFO, "locate failed: %{public}llu @ %.2f", v226, 0x16u);
                    goto LABEL_95;
                  }
                }

                *buf = 0;
                _os_log_impl(&dword_27103D000, v93, OS_LOG_TYPE_DEBUG, "Successfully converted image to grayscale", buf, 2u);
                goto LABEL_82;
              }

              goto LABEL_254;
            }

            if (CVPixelBufferGetBytesPerRow(pixelBufferOut) != v74)
            {
              if (qword_281181CD8 != -1)
              {
                dispatch_once(&qword_281181CD8, &__block_literal_global_225);
                v77 = qword_281181CD0;
                if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_67;
                }

                goto LABEL_66;
              }

              v77 = qword_281181CD0;
              if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_FAULT))
              {
LABEL_66:
                errorCopy19 = error;
                v79 = pixelBufferOut;
                v80 = v77;
                v81 = v79;
                error = errorCopy19;
                BytesPerRow = CVPixelBufferGetBytesPerRow(v81);
                *buf = 134349312;
                *&buf[4] = BytesPerRow;
                *&buf[12] = 2050;
                *&buf[14] = v71;
                _os_log_impl(&dword_27103D000, v80, OS_LOG_TYPE_FAULT, "Image conversion failed to produce desired stride: %{public}zu vs %{public}zu", buf, 0x16u);
              }
            }

LABEL_67:
            if (error | v164)
            {
              v83 = [VLLocalizationDebugInfo alloc];
              GEOGetMonotonicTime();
              *buf = v214;
              *&buf[16] = v215;
              *&buf[32] = v216;
              v171 = v152;
              v172 = v151;
              LOBYTE(v146) = v147;
              v1463 = [(VLLocalizationDebugInfo *)v83 initWithPixelBuffer:distortion monotonicTimestamp:buf timestamp:offsetCopy duration:&v171 location:0 clLocation:0 heading:v39 gravity:v23 transform:v84 - v39 cameraIntrinsics:a2 radialDistortion:buffer exposureTargetOffset:*&location statistics:*&heading resultStatus:*&gravity resultPose:*&transform preserveImageData:*&a17, *&a18, *&a19, *&a20, a21, 0, v146];
              v86 = MEMORY[0x277CCA9B8];
              v270[0] = *MEMORY[0x277CBEE28];
              v270[1] = @"VLLocalizerDebugInfo";
              v271[0] = @"Failed to convert image format";
              v271[1] = v1463;
              v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v271 forKeys:v270 count:2];
              v88 = [v86 errorWithDomain:@"VLLocalizerError" code:2 userInfo:v87];

              if (error)
              {
                v89 = v88;
                *error = v88;
              }

              if (v164)
              {
                v90 = *(self + 56);
                v202[0] = MEMORY[0x277D85DD0];
                v202[1] = 3221225472;
                v202[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_46;
                v202[3] = &unk_279E2DAE8;
                v204 = v164;
                v203 = v1463;
                dispatch_async(v90, v202);
              }
            }

            v51 = 0;
            v62 = &__block_literal_global_42;
            goto LABEL_223;
          }
        }

        *buf = 67109888;
        *&buf[4] = HIBYTE(v58);
        *&buf[8] = 1024;
        *&buf[10] = BYTE2(v58);
        *&buf[14] = 1024;
        *&buf[16] = BYTE1(v58);
        *&buf[20] = 1024;
        *&buf[22] = v58;
        _os_log_impl(&dword_27103D000, v65, OS_LOG_TYPE_INFO, "Input pixel format (%c%c%c%c) requires conversion", buf, 0x1Au);
        goto LABEL_47;
      }
    }

    else
    {
      if (PixelFormatType == 1278226488)
      {
        CVPixelBufferLockBaseAddress(distortion, 1uLL);
        Width = CVPixelBufferGetWidth(distortion);
        Height = CVPixelBufferGetHeight(distortion);
        if (CVPixelBufferGetBytesPerRow(distortion) == Width)
        {
          BaseAddress = CVPixelBufferGetBaseAddress(distortion);
          v209 = __PAIR64__(Height, Width);
          LODWORD(v210) = 0;
          v206[0] = MEMORY[0x277D85DD0];
          v206[1] = 3221225472;
          v206[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_3;
          v206[3] = &__block_descriptor_40_e5_v8__0l;
          v206[4] = distortion;
          v61 = _Block_copy(v206);
          goto LABEL_40;
        }

LABEL_43:
        CVPixelBufferUnlockBaseAddress(distortion, 1uLL);
        goto LABEL_44;
      }

      if (PixelFormatType != 2033463856 && PixelFormatType != 1714696752)
      {
        goto LABEL_44;
      }
    }

    CVPixelBufferLockBaseAddress(distortion, 1uLL);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(distortion, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(distortion, 0);
    if (CVPixelBufferGetBytesPerRowOfPlane(distortion, 0) == WidthOfPlane)
    {
      BaseAddress = CVPixelBufferGetBaseAddressOfPlane(distortion, 0);
      v209 = __PAIR64__(HeightOfPlane, WidthOfPlane);
      LODWORD(v210) = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_2;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = distortion;
      v61 = _Block_copy(aBlock);
LABEL_40:
      v62 = v61;
      goto LABEL_87;
    }

    goto LABEL_43;
  }

  if (qword_281181CD8 != -1)
  {
    dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    v41 = v164;
    v42 = qword_281181CD0;
    if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v41 = v164;
  v42 = qword_281181CD0;
  if (os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
  {
LABEL_13:
    *buf = 0;
    _os_log_impl(&dword_27103D000, v42, OS_LOG_TYPE_INFO, "locateWithPixelBuffer: Visual localization is not supported on this device", buf, 2u);
  }

LABEL_14:
  if (!(error | v41))
  {
    v51 = 0;
    goto LABEL_225;
  }

  v43 = [VLLocalizationDebugInfo alloc];
  GEOGetMonotonicTime();
  *buf = v214;
  *&buf[16] = v215;
  *&buf[32] = v216;
  v171 = v152;
  v172 = v151;
  LOBYTE(v146) = 0;
  v1464 = [(VLLocalizationDebugInfo *)v43 initWithPixelBuffer:0 monotonicTimestamp:buf timestamp:offsetCopy duration:&v171 location:0 clLocation:0 heading:v39 gravity:v23 transform:v44 - v39 cameraIntrinsics:a2 radialDistortion:buffer exposureTargetOffset:*&location statistics:*&heading resultStatus:*&gravity resultPose:*&transform preserveImageData:*&a17, *&a18, *&a19, *&a20, a21, 0, v146];
  v46 = MEMORY[0x277CCA9B8];
  v274[0] = *MEMORY[0x277CBEE28];
  v274[1] = @"VLLocalizerDebugInfo";
  v275[0] = @"Not supported";
  v275[1] = v1464;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v275 forKeys:v274 count:2];
  v48 = [v46 errorWithDomain:@"VLLocalizerError" code:1 userInfo:v47];

  if (error)
  {
    v49 = v48;
    *error = v48;
  }

  if (v164)
  {
    v50 = *(self + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke;
    block[3] = &unk_279E2DAE8;
    v213 = v164;
    v212 = v1464;
    dispatch_async(v50, block);
  }

  v51 = 0;
LABEL_224:
  v41 = v164;
LABEL_225:

  return v51;
}

void __167__VLLocalizer__locateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_calculationBlock_error___block_invoke_2_47(uint64_t a1)
{
  CVPixelBufferUnlockBaseAddress(*(a1 + 32), 1uLL);
  v2 = *(a1 + 32);

  CVPixelBufferRelease(v2);
}

- (void)_deterministicLocateWithPixelBuffer:(double)buffer deviceLocation:(__n128)location heading:(__n128)heading gravity:(__n128)gravity transform:(__n128)transform cameraIntrinsics:(uint64_t)intrinsics radialDistortion:(uint64_t)distortion exposureTargetOffset:(void *)self0 timestamp:(__int128 *)self1 completionHandler:(void *)self2
{
  v32 = *timestamp;
  v31 = timestamp[1];
  offsetCopy = offset;
  handlerCopy = handler;
  v27 = qos_class_self();
  v28 = dispatch_get_global_queue(v27, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __175__VLLocalizer__deterministicLocateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_completionHandler___block_invoke;
  block[3] = &unk_279E2DBA8;
  selfCopy = self;
  v48 = offsetCopy;
  v51 = a2;
  bufferCopy = buffer;
  v38 = v32;
  v39 = v31;
  locationCopy = location;
  headingCopy = heading;
  gravityCopy = gravity;
  transformCopy = transform;
  v44 = a15;
  v45 = a16;
  v46 = a17;
  v53 = a18;
  v54 = a19;
  v55 = a20;
  v49 = handlerCopy;
  distortionCopy = distortion;
  v29 = handlerCopy;
  v30 = offsetCopy;
  dispatch_async(v28, block);
}

void __175__VLLocalizer__deterministicLocateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  v9 = *(a1 + 240);
  v15 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v14[0] = v5;
  v14[1] = v6;
  v12 = [v3 _locateWithPixelBuffer:v2 deviceLocation:v4 heading:v14 gravity:&__block_literal_global_53 transform:&v15 cameraIntrinsics:v10 radialDistortion:v11 exposureTargetOffset:*(a1 + 64) timestamp:*(a1 + 80) calculationBlock:*(a1 + 96) error:{*(a1 + 112), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), v7, v8, v9}];
  v13 = v15;
  (*(*(a1 + 192) + 16))();
}

uint64_t __175__VLLocalizer__deterministicLocateWithPixelBuffer_deviceLocation_heading_gravity_transform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 64);
  v11[0] = *(a4 + 48);
  v11[1] = v9;
  v12 = *(a4 + 80);
    ;
  }

  return vl_locate(a2, a3, a4, a5);
}

- (id)_clLocationFrom:(id)from
{
  v4 = v3;
  v5 = *v3;
  v6 = v3->f64[1];
  v7 = sqrt(vmuld_lane_f64(v6, *v3, 1) + v5.f64[0] * v5.f64[0]);
  v8 = v7 * 0.99330562;
  v9 = 0.0;
  v10 = 1.57079633;
  if (v7 * 0.99330562 != 0.0)
  {
    v24 = v3->f64[1];
    v25 = *v3;
    v11 = 0;
    __y = v3[1].f64[0];
    v10 = 0.0;
    v12 = 0.0;
    do
    {
      v14 = v10;
      v10 = atan2(__y, v8);
      v15 = __sincos_stret(v10);
      v16 = 6378137.0 / sqrt(v15.__sinval * -0.00669437999 * v15.__sinval + 1.0);
      v9 = v7 / v15.__cosval - v16;
      if (vabdd_f64(v14, v10) < 0.000001)
      {
        if (vabdd_f64(v12, v9) < 0.001 || v11 >= 9)
        {
LABEL_10:
          v5.f64[0] = v25.f64[0];
          v6 = v24;
          goto LABEL_12;
        }
      }

      else if (v11 > 8)
      {
        goto LABEL_10;
      }

      ++v11;
      v8 = v7 * (v16 / (v16 + v9) * -0.00669437999 + 1.0);
      v12 = v7 / v15.__cosval - v16;
    }

    while (v8 != 0.0);
    v5.f64[0] = v25.f64[0];
    v10 = 1.57079633;
    v6 = v24;
  }

LABEL_12:
  v17 = atan2(v6, v5.f64[0]) / 0.0174532925;
  v18 = v10 / 0.0174532925;
  v19 = objc_alloc(getCLLocationClass());
  v20 = v4[2].f64[0];
  date = [MEMORY[0x277CBEAA8] date];
  v22 = [v19 initWithCoordinate:date altitude:v18 horizontalAccuracy:v17 verticalAccuracy:v9 timestamp:{v20, 0.0}];

  return v22;
}

- (void)dataProvider:(id)provider didChangeFormatVersion:(unsigned int)version
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_hasExplicitAlgorithmVersion)
  {
    if (vl_argo_support_data_ver == version)
    {
      v5 = 0;
    }

    else if (dword_280875538 == version)
    {
      v5 = 1;
    }

    else if (dword_28087553C == version)
    {
      v5 = 2;
    }

    else if (dword_280875540 == version)
    {
      v5 = 3;
    }

    else if (dword_280875544 == version)
    {
      v5 = 4;
    }

    else
    {
      if (dword_280875548 != version)
      {
        v6 = -1;
        if (qword_281181CD8 == -1)
        {
LABEL_15:
          v7 = qword_281181CD0;
          if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
          {
LABEL_17:
            self->_algorithmVersion = v6;
            _vlHandle = [(VLLocalizer *)self _vlHandle];
            vl_par_version(v6, v9);
            memcpy(_vlHandle, v9, 0x3F0uLL);
            _vlHandle->var1 = v6;
            return;
          }

LABEL_16:
          LODWORD(v9[0]) = 67109120;
          DWORD1(v9[0]) = v6;
          _os_log_impl(&dword_27103D000, v7, OS_LOG_TYPE_INFO, "Setting algorithm version: %i", v9, 8u);
          goto LABEL_17;
        }

LABEL_20:
        dispatch_once(&qword_281181CD8, &__block_literal_global_225);
        v7 = qword_281181CD0;
        if (!os_log_type_enabled(qword_281181CD0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v5 = 5;
    }

    v6 = vl_argo_support_algorithm_ver[v5];
    if (qword_281181CD8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }
}

@end
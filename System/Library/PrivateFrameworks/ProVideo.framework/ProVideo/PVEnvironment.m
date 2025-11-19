@interface PVEnvironment
+ (BOOL)PVHighlightHDRRegions;
+ (void)Initialize;
@end

@implementation PVEnvironment

+ (void)Initialize
{
  if (+[PVEnvironment Initialize]::once != -1)
  {
    +[PVEnvironment Initialize];
  }
}

void __27__PVEnvironment_Initialize__block_invoke()
{
  v51 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = getenv("PV_DISABLE_PROXY_RENDERING");
  if (v0 && atoi(v0))
  {
    s_disableProxyRendering = 1;
  }

  v1 = getenv("PV_DISABLE_TIMELINE_SCROLLING");
  if (v1 && atoi(v1))
  {
    s_disableTimelineScrolling = 1;
  }

  v2 = getenv("PV_DISABLE_YCBCR_INPUTS");
  if (v2 && atoi(v2))
  {
    s_disableYCbCrInputs = 1;
  }

  v3 = getenv("PV_PERFORMANCE_LOG_LEVEL");
  if (v3)
  {
    v4 = atoi(v3);
  }

  else
  {
    v5 = [v51 objectForKey:@"PV_PERFORMANCE_LOG_LEVEL"];

    if (!v5)
    {
      goto LABEL_15;
    }

    v4 = [v51 integerForKey:@"PV_PERFORMANCE_LOG_LEVEL"];
  }

  PVPerfStats::_logLevel = v4;
LABEL_15:
  v6 = getenv("PV_PERFORMANCE_LOG_FORMAT");
  if (v6)
  {
    v7 = atoi(v6);
  }

  else
  {
    v8 = [v51 objectForKey:@"PV_PERFORMANCE_LOG_FORMAT"];

    if (!v8)
    {
      goto LABEL_20;
    }

    v7 = [v51 integerForKey:@"PV_PERFORMANCE_LOG_FORMAT"];
  }

  PVPerfStats::_logFormat = v7;
LABEL_20:
  v9 = getenv("PV_PERFORMANCE_LOG_OUTPUT");
  if (v9)
  {
    v10 = atoi(v9);
  }

  else
  {
    v11 = [v51 objectForKey:@"PV_PERFORMANCE_LOG_OUTPUT"];

    if (!v11)
    {
      goto LABEL_25;
    }

    v10 = [v51 integerForKey:@"PV_PERFORMANCE_LOG_OUTPUT"];
  }

  PVPerfStats::_logOutput = v10;
LABEL_25:
  v12 = getenv("PV_TEXTURE_BORDER_WIDTH");
  if (v12)
  {
    v13 = atoi(v12);
    s_textureBorderWidth = v13 & ~(v13 >> 31);
  }

  v14 = getenv("PV_TEXTURE_POOL_SIZE_MB");
  if (v14)
  {
    v15 = atoi(v14);
  }

  else
  {
    v15 = ((+[PVDeviceCharacteristics actualMemory]>> 20) * 0.2);
  }

  s_texturePoolSizeMB = v15;
  v16 = getenv("PV_TEXTURE_POOL_FINISH_SIZE_RATIO");
  if (v16)
  {
    *&v17 = atof(v16);
    s_texturePoolFinishSizeRatio = v17;
  }

  v18 = getenv("PV_TEXTURE_CLUSTER_PADDING_REMEMBRANCE");
  if (v18)
  {
    v19 = atoi(v18);
  }

  else
  {
    v19 = 20;
  }

  s_textureClusterPaddingRemembrance = v19;
  v20 = getenv("PV_TEXTURE_CLUSTER_PADDING_CUSHIONING");
  if (v20)
  {
    v21 = atoi(v20);
  }

  else
  {
    v21 = 32;
  }

  s_textureClusterPaddingCushioning = v21;
  v22 = getenv("PV_TEXTURE_CLUSTER_PADDING_CLUMPING");
  if (v22)
  {
    v23 = atoi(v22);
  }

  else
  {
    v23 = 64;
  }

  s_textureClusterPaddingClumping = v23;
  v24 = getenv("PV_ENABLE_CHECK_PASSTHRUS");
  if (v24)
  {
    v25 = atoi(v24) != 0;
  }

  else
  {
    v25 = 0;
  }

  s_enableCheckPassthrus = v25;
  v26 = getenv("PV_MULTI_SOURCE_PLAYBACK_FPS");
  if (v26 && atoi(v26))
  {
    s_enableMultiSourcePlaybackFPS = 1;
  }

  v27 = [v51 objectForKey:@"PV_MULTI_SOURCE_PLAYBACK_FPS"];
  if (v27)
  {
    v28 = [v51 BOOLForKey:@"PV_MULTI_SOURCE_PLAYBACK_FPS"];

    if (v28)
    {
      s_enableMultiSourcePlaybackFPS = 1;
    }
  }

  v29 = getenv("PV_NUM_RENDER_PASSES");
  if (v29)
  {
    s_numRenderPasses = atoi(v29);
  }

  v30 = getenv("PV_RENDER_PASS_TEST_TYPE");
  if (v30)
  {
    s_renderPassTestType = atoi(v30);
  }

  v31 = getenv("PV_ENABLE_420V_OUTPUT");
  if (v31 && atoi(v31))
  {
    s_enable420vOutput = 1;
  }

  v32 = getenv("PV_ENABLE_BGRA_OUTPUT_EXPORT");
  if (v32 && atoi(v32))
  {
    s_enableBGRAOutputExport = 1;
  }

  v33 = getenv("PV_ENABLE_AVF_COLOR_CONFORM_INPUTS");
  if (v33 && atoi(v33))
  {
    s_enableAVFColorConformInputs = 1;
  }

  v34 = getenv("PV_APPLY_AVF_RENDER_TRANSFORM_TO_OUTPUT");
  if (v34 && atoi(v34))
  {
    s_applyAVFRenderTransformToOutput = 1;
  }

  v35 = getenv("PV_RENDER_THREAD_PRIORITY");
  if (v35)
  {
    s_renderThreadPriority = atoi(v35);
  }

  v36 = getenv("PV_SERIALIZE_EXPORT_REQUESTS");
  if (v36 && atoi(v36) || +[PVDeviceCharacteristics isLowMemDevice])
  {
    s_serializeExportRequests = 1;
  }

  v37 = [v51 objectForKey:@"PVExportPrefilterValue"];

  if (v37)
  {
    v38 = [v51 integerForKey:@"PVExportPrefilterValue"];
    if (v38 < 5)
    {
      s_exportPrefilterValue = dword_260342948[v38];
    }
  }

  v39 = getenv("PV_THROTTLE_AVF_EXPORT_REQUEST_HANDLING_MS");
  if (v39)
  {
    s_throttleAVFExportRequestReturnMS = atoi(v39);
  }

  v40 = getenv("PV_THROTTLE_EXPORT_ON_MEM_WARNING");
  if (v40 && !atoi(v40))
  {
    s_throttleExportOnMemWarning = 1;
  }

  v41 = getenv("PV_DEBUG_COLOR_OUT_OF_RANGE_EFFECTS");
  if (v41 && atoi(v41))
  {
    s_debugColorOutOfRangeEffects = 1;
  }

  v42 = getenv("PV_DEBUG_COLOR_NO_SOURCE_TRACK_NODE");
  if (v42 && atoi(v42))
  {
    s_debugColorNoSourceTrackNode = 1;
  }

  v43 = getenv("PV_ENABLE_ENV_LOGS");
  if (v43 && atoi(v43))
  {
    s_enableEnvLogs = 1;
  }

  v44 = getenv("PV_MAX_EXPECTED_LIVE_COMPOSITORS");
  if (v44)
  {
    s_maxExpectedLiveCompositors = atoi(v44);
  }

  v45 = getenv("PV_HIGHLIGHT_OUT_OF_GAMUT");
  if (v45 && atoi(v45))
  {
    s_highlightOutOfGamut = 1;
  }

  v46 = getenv("PV_CLAMP_XR_INPUTS_TO_FILTERS");
  if (v46 && !atoi(v46))
  {
    s_clampInputsToFilters = 1;
  }

  v47 = getenv("PV_HG_POOL_OBSERVER_INTERVAL");
  if (v47)
  {
    s_hgPoolObserverInterval = atoi(v47);
  }

  v48 = getenv("PV_METAL_COMMAND_Q_COMMAND_BUFFER_COUNT_MIN");
  if (v48)
  {
    s_metalCommandQCommandBufferCountMin = atoi(v48);
  }

  v49 = getenv("PV_METAL_COMMAND_Q_COMMAND_BUFFER_COUNT_MAX");
  if (v49)
  {
    s_metalCommandQCommandBufferCountMax = atoi(v49);
  }

  v50 = getenv("PV_METAL_COMMAND_Q_MEM_USAGE");
  if (v50)
  {
    s_metalCommandQMemUsage = atoi(v50);
  }
}

+ (BOOL)PVHighlightHDRRegions
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 valueForKey:@"PVHighlightHDRRegions"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
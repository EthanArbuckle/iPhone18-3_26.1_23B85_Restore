@interface TSCH3DChartPlatformSettings
+ (BOOL)isMetalExcludedWithCapabilities:(id)capabilities;
+ (BOOL)p_isMetalEnabled;
+ (id)p_defaultSettingsDictionary;
+ (id)p_platformSettingsDictionary;
+ (id)sharedInstance;
- (BOOL)backgroundLayoutUsesTiledRendering;
- (BOOL)buildImageDefaultAntialias;
- (BOOL)buildShouldDiscardBuffers;
- (BOOL)buildTextureRendersAsSingleImage;
- (BOOL)buildsCanUseDynamicShadows;
- (BOOL)buildsUseLowDetailedGeometries;
- (BOOL)interactiveCanvasCanUseHighQualityRenderer;
- (BOOL)interactiveModeUsesFastPerformanceHint;
- (BOOL)knobTrackingUsesRealTimePerformanceHint;
- (BOOL)protectCachedShaders;
- (BOOL)shouldHandleResourceCacheOutOfMemory;
- (BOOL)skipFirstMipmapLevel;
- (BOOL)useHighQualityShadows;
- (BOOL)useInteractiveModeWhileSelected;
- (BOOL)useLayoutInwardForInsertionIcons;
- (BOOL)useMetal;
- (BOOL)useTiledFullSizeInteractiveLayer;
- (TSCH3DChartPlatformSettings)initWithDictionary:(id)dictionary;
- (double)backgroundLayoutContentsScaleFactor;
- (double)buildTargetFPS;
- (double)printingDPI;
- (float)normalizedLabelPickingSlackForViewScale:(double)scale viewport:(void *)viewport;
- (float)p_labelPickingSlack;
- (float)prefilteredLinesFilterRadius;
- (float)rotationTrackerSpeed;
- (int)p_labelPickingSlackMethod;
- (unint64_t)buildImageTileSize;
- (unint64_t)buildMultisamples;
- (unint64_t)highQualityShadowsSize;
- (unint64_t)insertionIconSupersamplingSamples;
- (unint64_t)interactiveCanvasMultisamples;
- (unint64_t)labelMaxTextureSize;
- (unint64_t)printingMaxImageSize;
- (unint64_t)resourceCacheMemoryLimitInBytes;
- (unint64_t)supersamplingSamples;
- (unint64_t)supersamplingTileSize;
@end

@implementation TSCH3DChartPlatformSettings

+ (BOOL)isMetalExcludedWithCapabilities:(id)capabilities
{
  v28 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  if (qword_280A46B68 != -1)
  {
    sub_2764A6EA4();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = qword_280A46B60;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v23, v27, 16);
  if (v10)
  {
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = objc_msgSend_device(capabilitiesCopy, v9, v11, v12, v13, v23);
        if (v17 == objc_msgSend_integerValue(v16, v18, v19, v20, v21))
        {
          LOBYTE(v10) = 1;
          goto LABEL_13;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, v11, v12, v13, &v23, v27, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v10;
}

+ (BOOL)p_isMetalEnabled
{
  v3 = objc_alloc_init(MEMORY[0x277D801F0]);
  if (objc_msgSend_isMetalCapable(v3, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_isMetalExcludedWithCapabilities_(self, v8, v9, v10, v11, v3) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if (__C != -1)
  {
    sub_2764A6EB8();
  }

  return v12;
}

+ (id)p_defaultSettingsDictionary
{
  v18[33] = *MEMORY[0x277D85DE8];
  isMetalEnabled = objc_msgSend_p_isMetalEnabled(self, a2, v2, v3, v4);
  v17[0] = @"kTSCH3DChartPlatformSettingsSkipFirstMipmapLevel";
  v17[1] = @"kTSCH3DChartPlatformSettingsBuildImageTileSize";
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = &unk_28856BC60;
  v17[2] = @"kTSCH3DChartPlatformSettingsBuildMultisamples";
  v17[3] = @"kTSCH3DChartPlatformSettingsBuildShouldDiscardBuffers";
  v18[2] = &unk_28856BC78;
  v18[3] = MEMORY[0x277CBEC28];
  v17[4] = @"kTSCH3DChartPlatformSettingsBuildTargetFPS";
  v17[5] = @"kTSCH3DChartPlatformSettingsBuildUseLowDetailedGeometries";
  v18[4] = &unk_28856EC90;
  v18[5] = MEMORY[0x277CBEC28];
  v17[6] = @"kTSCH3DChartPlatformSettingsBuildDynamicShadows";
  v17[7] = @"kTSCH3DChartPlatformSettingsBuildTextureRendersAsSingleImage";
  v18[6] = MEMORY[0x277CBEC28];
  v18[7] = MEMORY[0x277CBEC38];
  v17[8] = @"kTSCH3DChartPlatformSettingsSupersamplingTileSize";
  v17[9] = @"kTSCH3DChartPlatformSettingsSupersamplingSamples";
  v18[8] = &unk_28856BC90;
  v18[9] = &unk_28856BCA8;
  v17[10] = @"kTSCH3DChartPlatformSettingsBuildImageDefaultAntialias";
  v17[11] = @"kTSCH3DChartPlatformSettingsInsertionIconSupersamplingSamples";
  v18[10] = MEMORY[0x277CBEC38];
  v18[11] = &unk_28856BC78;
  v17[12] = @"kTSCH3DChartPlatformSettingsPrintingDPI";
  v17[13] = @"kTSCH3DChartPlatformSettingsPrintingMaxImageSize";
  v18[12] = &unk_28856ECA0;
  v18[13] = &unk_28856BCC0;
  v17[14] = @"kTSCH3DChartPlatformSettingsLabelMaxTextureSize";
  v17[15] = @"kTSCH3DChartPlatformSettingsResourceCacheMemoryLimitInBytes";
  v18[14] = &unk_28856BCD8;
  v18[15] = &unk_28856BCF0;
  v17[16] = @"kTSCH3DChartPlatformSettingsInteractiveCanvasMultisamples";
  v17[17] = @"kTSCH3DChartPlatformSettingsRotationUsesFastPerformanceSettings";
  v18[16] = &unk_28856BD08;
  v18[17] = MEMORY[0x277CBEC28];
  v17[18] = @"kTSCH3DChartPlatformSettingsKnobTrackingUsesRealTimePerformanceSettings";
  v17[19] = @"kTSCH3DChartPlatformSettingsUseInteractiveModeWhileSelected";
  v17[20] = @"kTSCH3DChartPlatformSettingsUseLayoutInwardForInsertionIcons";
  v17[21] = @"kTSCH3DChartPlatformSettingsLabelPickingSlack";
  v18[20] = MEMORY[0x277CBEC28];
  v18[21] = &unk_28856ECB0;
  v17[22] = @"kTSCH3DChartPlatformSettingsLabelPickingSlackMethod";
  v17[23] = @"kTSCH3DChartPlatformSettingsRotationTrackerSpeed";
  v17[24] = @"kTSCH3DChartPlatformSettingsUseHighQualityShadows";
  v17[25] = @"kTSCH3DChartPlatformSettingsHighQualityShadowsSize";
  v18[24] = MEMORY[0x277CBEC28];
  v18[25] = &unk_28856BC60;
  v18[18] = MEMORY[0x277CBEC38];
  v18[19] = MEMORY[0x277CBEC28];
  v17[26] = @"kTSCH3DChartPlatformSettingsUseTiledFullSizeInteractiveLayer";
  v17[27] = @"kTSCH3DChartPlatformSettingsPrefilteredLinesFilterRadius";
  v18[26] = MEMORY[0x277CBEC28];
  v18[27] = &unk_28856ECD0;
  v18[22] = &unk_28856BD20;
  v18[23] = &unk_28856ECC0;
  v17[28] = @"kTSCH3DChartPlatformSettingsProtectCachedShaders";
  v17[29] = @"kTSCH3DChartPlatformSettingsBackgroundLayoutContentsScaleFactor";
  v18[28] = MEMORY[0x277CBEC38];
  v18[29] = &unk_28856ECC0;
  v17[30] = @"kTSCH3DChartPlatformSettingsBackgroundLayoutUsesTiledRendering";
  v17[31] = @"kTSCH3DChartPlatformSettingsShouldHandleResourceCacheOutOfMemory";
  v18[30] = MEMORY[0x277CBEC28];
  v18[31] = MEMORY[0x277CBEC38];
  v17[32] = @"kTSCH3DChartPlatformSettingsUseMetal";
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, v7, v8, v9, isMetalEnabled);
  v18[32] = v10;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v12, v13, v14, v18, v17, 33);

  return v15;
}

+ (id)p_platformSettingsDictionary
{
  v5 = objc_msgSend_p_defaultSettingsDictionary(self, a2, v2, v3, v4);
  v10 = objc_msgSend_objectForKeyedSubscript_(v5, v6, v7, v8, v9, @"kTSCH3DChartPlatformSettingsSkipFirstMipmapLevel");
  v11 = MEMORY[0x277CBEC38];
  isEqual = objc_msgSend_isEqual_(v10, v12, v13, v14, v15, MEMORY[0x277CBEC38]);

  if ((isEqual & 1) == 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "+[TSCH3DChartPlatformSettings p_platformSettingsDictionary]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    v32 = objc_msgSend_objectForKeyedSubscript_(v5, v28, v29, v30, v31, @"kTSCH3DChartPlatformSettingsSkipFirstMipmapLevel");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v33, v34, v35, v36, v22, v27, 439, 0, "skipFirstMipmapLevel value differs for server %@ expects %@", v32, v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  return v5;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276224644;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A46B78 != -1)
  {
    dispatch_once(&qword_280A46B78, block);
  }

  v2 = qword_280A46B70;

  return v2;
}

- (TSCH3DChartPlatformSettings)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = TSCH3DChartPlatformSettings;
  v6 = [(TSCH3DChartPlatformSettings *)&v13 init];
  if (v6)
  {
    v10 = objc_msgSend_mutableCopy(dictionaryCopy, v5, v7, v8, v9);
    settings = v6->_settings;
    v6->_settings = v10;
  }

  return v6;
}

- (BOOL)useMetal
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsUseMetal");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings useMetal]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 474, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsUseMetal]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsUseMetal");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)skipFirstMipmapLevel
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsSkipFirstMipmapLevel");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings skipFirstMipmapLevel]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 479, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsSkipFirstMipmapLevel]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsSkipFirstMipmapLevel");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)buildImageTileSize
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildImageTileSize");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildImageTileSize]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 484, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildImageTileSize]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildImageTileSize");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)buildImageDefaultAntialias
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildImageDefaultAntialias");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildImageDefaultAntialias]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 489, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildImageDefaultAntialias]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildImageDefaultAntialias");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)buildMultisamples
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildMultisamples");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildMultisamples]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 497, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildMultisamples]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildMultisamples");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)buildShouldDiscardBuffers
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildShouldDiscardBuffers");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildShouldDiscardBuffers]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 502, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildShouldDiscardBuffers]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildShouldDiscardBuffers");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (double)buildTargetFPS
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildTargetFPS");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildTargetFPS]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 507, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildTargetFPS]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildTargetFPS");
  v31 = TSUCheckedDynamicCast();
  objc_msgSend_doubleValue(v31, v32, v33, v34, v35);
  v37 = v36;

  return v37;
}

- (BOOL)buildsUseLowDetailedGeometries
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildUseLowDetailedGeometries");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildsUseLowDetailedGeometries]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 512, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildUseLowDetailedGeometries]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildUseLowDetailedGeometries");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)buildsCanUseDynamicShadows
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildDynamicShadows");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildsCanUseDynamicShadows]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 517, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildDynamicShadows]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildDynamicShadows");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)buildTextureRendersAsSingleImage
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBuildTextureRendersAsSingleImage");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings buildTextureRendersAsSingleImage]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 522, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBuildTextureRendersAsSingleImage]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBuildTextureRendersAsSingleImage");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)supersamplingTileSize
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsSupersamplingTileSize");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings supersamplingTileSize]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 532, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsSupersamplingTileSize]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsSupersamplingTileSize");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)supersamplingSamples
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsSupersamplingSamples");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings supersamplingSamples]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 537, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsSupersamplingSamples]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsSupersamplingSamples");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)insertionIconSupersamplingSamples
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsInsertionIconSupersamplingSamples");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings insertionIconSupersamplingSamples]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 542, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsInsertionIconSupersamplingSamples]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsInsertionIconSupersamplingSamples");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (double)printingDPI
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsPrintingDPI");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings printingDPI]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 547, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsPrintingDPI]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsPrintingDPI");
  v31 = TSUCheckedDynamicCast();
  objc_msgSend_doubleValue(v31, v32, v33, v34, v35);
  v37 = v36;

  return v37;
}

- (unint64_t)printingMaxImageSize
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsPrintingMaxImageSize");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings printingMaxImageSize]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 552, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsPrintingMaxImageSize]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsPrintingMaxImageSize");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)labelMaxTextureSize
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsLabelMaxTextureSize");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings labelMaxTextureSize]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 557, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsLabelMaxTextureSize]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsLabelMaxTextureSize");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)resourceCacheMemoryLimitInBytes
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsResourceCacheMemoryLimitInBytes");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings resourceCacheMemoryLimitInBytes]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 562, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsResourceCacheMemoryLimitInBytes]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsResourceCacheMemoryLimitInBytes");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)interactiveCanvasCanUseHighQualityRenderer
{
  v6 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, v2, v3, v4);
  v11 = objc_msgSend_disableHighQualityRenderingIfNecessary(v6, v7, v8, v9, v10);
  LOBYTE(self) = objc_msgSend_buildImageDefaultAntialias(self, v12, v13, v14, v15) | ~v11;

  return self & 1;
}

- (unint64_t)interactiveCanvasMultisamples
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsInteractiveCanvasMultisamples");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings interactiveCanvasMultisamples]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 580, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsInteractiveCanvasMultisamples]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsInteractiveCanvasMultisamples");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)interactiveModeUsesFastPerformanceHint
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsRotationUsesFastPerformanceSettings");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings interactiveModeUsesFastPerformanceHint]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 585, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsInteractiveModeUsesFastPerformanceSettings]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsRotationUsesFastPerformanceSettings");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)knobTrackingUsesRealTimePerformanceHint
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsKnobTrackingUsesRealTimePerformanceSettings");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings knobTrackingUsesRealTimePerformanceHint]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 590, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsKnobTrackingUsesRealTimePerformanceSettings]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsKnobTrackingUsesRealTimePerformanceSettings");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)useInteractiveModeWhileSelected
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsUseInteractiveModeWhileSelected");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings useInteractiveModeWhileSelected]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 595, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsUseInteractiveModeWhileSelected]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsUseInteractiveModeWhileSelected");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)useLayoutInwardForInsertionIcons
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsUseLayoutInwardForInsertionIcons");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings useLayoutInwardForInsertionIcons]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 600, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsUseLayoutInwardForInsertionIcons]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsUseLayoutInwardForInsertionIcons");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (int)p_labelPickingSlackMethod
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsLabelPickingSlackMethod");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings p_labelPickingSlackMethod]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 605, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsLabelPickingSlackMethod]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsLabelPickingSlackMethod");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

  return v36;
}

- (float)p_labelPickingSlack
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsLabelPickingSlack");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings p_labelPickingSlack]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 610, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsLabelPickingSlack]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsLabelPickingSlack");
  v31 = TSUCheckedDynamicCast();
  objc_msgSend_floatValue(v31, v32, v33, v34, v35);
  v37 = v36;

  return v37;
}

- (float)normalizedLabelPickingSlackForViewScale:(double)scale viewport:(void *)viewport
{
  if (scale <= 0.0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, scale, v4, v5, "[TSCH3DChartPlatformSettings normalizedLabelPickingSlackForViewScale:viewport:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 615, 0, "invalid view scale %f", *&scale);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_p_labelPickingSlackMethod(self, a2, scale, v4, v5);
  if (v24 == 1)
  {
    if (*viewport <= *(viewport + 1))
    {
      v30 = *(viewport + 1);
    }

    else
    {
      v30 = *viewport;
    }

    if (v30 <= 0)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DChartPlatformSettings normalizedLabelPickingSlackForViewScale:viewport:]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
      v38 = MEMORY[0x277CCACA8];
      v60 = *(viewport + 1);
      sub_276152FD4("ivec2(%d, %d)", v39, v40, v41, v42, v43, v44, v45, *viewport);
      if (v62 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v38, v46, v47, v48, v49, &__p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v38, v46, v47, v48, v49, __p);
      }
      v51 = ;
      if (v62 < 0)
      {
        operator delete(__p);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v50, v52, v53, v54, v32, v37, 625, 0, "invalid viewport %@", v51, v60);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
    }

    v29 = 1.0 / v30;
  }

  else
  {
    v29 = 0.0;
    if (!v24)
    {
      objc_msgSend_p_labelPickingSlack(self, v25, 0.0, v27, v28);
    }
  }

  return v29 / scale;
}

- (float)rotationTrackerSpeed
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsRotationTrackerSpeed");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings rotationTrackerSpeed]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 634, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsRotationTrackerSpeed]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsRotationTrackerSpeed");
  v31 = TSUCheckedDynamicCast();
  objc_msgSend_floatValue(v31, v32, v33, v34, v35);
  v37 = v36;

  return v37;
}

- (BOOL)useHighQualityShadows
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsUseHighQualityShadows");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings useHighQualityShadows]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 639, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsUseHighQualityShadows]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsUseHighQualityShadows");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (unint64_t)highQualityShadowsSize
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsHighQualityShadowsSize");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings highQualityShadowsSize]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 644, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsHighQualityShadowsSize]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsHighQualityShadowsSize");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_unsignedIntegerValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)useTiledFullSizeInteractiveLayer
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsUseTiledFullSizeInteractiveLayer");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings useTiledFullSizeInteractiveLayer]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 649, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsUseTiledFullSizeInteractiveLayer]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsUseTiledFullSizeInteractiveLayer");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (float)prefilteredLinesFilterRadius
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsPrefilteredLinesFilterRadius");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings prefilteredLinesFilterRadius]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 654, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsPrefilteredLinesFilterRadius]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsPrefilteredLinesFilterRadius");
  v31 = TSUCheckedDynamicCast();
  objc_msgSend_floatValue(v31, v32, v33, v34, v35);
  v37 = v36;

  return v37;
}

- (BOOL)protectCachedShaders
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsProtectCachedShaders");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings protectCachedShaders]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 659, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsProtectCachedShaders]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsProtectCachedShaders");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (double)backgroundLayoutContentsScaleFactor
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBackgroundLayoutContentsScaleFactor");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings backgroundLayoutContentsScaleFactor]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 664, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBackgroundLayoutContentsScaleFactor]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_objectForKey_(self->_settings, v7, v8, v9, v10, @"kTSCH3DChartPlatformSettingsBackgroundLayoutContentsScaleFactor");
  objc_msgSend_tsu_CGFloatValue(v26, v27, v28, v29, v30);
  v32 = v31;

  return v32;
}

- (BOOL)backgroundLayoutUsesTiledRendering
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsBackgroundLayoutUsesTiledRendering");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings backgroundLayoutUsesTiledRendering]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 669, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsBackgroundLayoutUsesTiledRendering]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsBackgroundLayoutUsesTiledRendering");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)shouldHandleResourceCacheOutOfMemory
{
  v6 = objc_msgSend_objectForKey_(self->_settings, a2, v2, v3, v4, @"kTSCH3DChartPlatformSettingsShouldHandleResourceCacheOutOfMemory");

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartPlatformSettings shouldHandleResourceCacheOutOfMemory]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPlatformSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 674, 0, "invalid nil value for '%{public}s'", "[_settings objectForKey:kTSCH3DChartPlatformSettingsShouldHandleResourceCacheOutOfMemory]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_opt_class();
  v30 = objc_msgSend_objectForKey_(self->_settings, v26, v27, v28, v29, @"kTSCH3DChartPlatformSettingsShouldHandleResourceCacheOutOfMemory");
  v31 = TSUCheckedDynamicCast();
  v36 = objc_msgSend_BOOLValue(v31, v32, v33, v34, v35);

  return v36;
}

@end
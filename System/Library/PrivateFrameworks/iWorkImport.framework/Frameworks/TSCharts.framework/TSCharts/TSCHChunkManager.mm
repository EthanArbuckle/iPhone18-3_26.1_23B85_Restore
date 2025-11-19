@interface TSCHChunkManager
- (BOOL)hasBackgroundLayerForPieChart;
- (BOOL)lastChunkForSeriesIndex:(unint64_t)a3 currentChunk:(unint64_t)a4 chunkStyle:(unint64_t)a5;
- (BOOL)p_hasBackgroundFillForChart:(id)a3;
- (BOOL)p_hasBackgroundLayerForPieChartForChart:(id)a3;
- (BOOL)p_isMultiDataForChart:(id)a3;
- (BOOL)p_supportsByWedgeDeliveryStyle:(id)a3;
- (TSCHChunkManager)initWithChartInfo:(id)a3;
- (id)animationFiltersWithDefaultFilters:(id)a3;
- (id)containedTextForChartDeliveryStyle:(unint64_t)a3 chunkIndex:(unint64_t)a4 displayName:(id)a5;
- (id)p_allChartDeliveryStylesLocalized:(BOOL)a3;
- (id)p_allLocalizedChartDeliveryStyles;
- (id)p_allNonLocalizedChartDeliveryStyles;
- (id)p_backgroundStringForChartWithTitle:(id)a3;
- (id)p_cachedChunkMap;
- (id)p_chart;
- (id)p_chunkMapForChart:(id)a3 chunkStyle:(unint64_t)a4 forceUpdateCache:(BOOL)a5;
- (id)p_createChunkMapForChart:(id)a3 chunkStyle:(unint64_t)a4;
- (id)p_makeAllChartDeliveryStylesLocalized:(BOOL)a3;
- (id)p_nameForMultiDataSetCategory:(unint64_t)a3 chart:(id)a4;
- (id)p_seriesNameForSeriesAtIndex:(unint64_t)a3 withPrefix:(id)a4 chart:(id)a5;
- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4;
- (unint64_t)chartDeliveryStyleFromTSDDeliveryStyle:(unint64_t)a3;
- (unint64_t)chunkCountByUpdatingCacheIfNecessaryForChartDeliveryStyle:(unint64_t)a3;
- (unint64_t)chunkCountForChartDeliveryStyle:(unint64_t)a3;
- (unint64_t)p_chunkCountForChart:(id)a3 chunkStyle:(unint64_t)a4 chunkMap:(id)a5;
- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)a3;
- (void)adjustRangeForRep:(id)a3 chunkIndex:(unint64_t)a4 finalTexture:(BOOL)a5 seriesStart:(int64_t *)a6 seriesCount:(int64_t *)a7;
- (void)adjustRangeForRep:(id)a3 seriesIndex:(unint64_t)a4 chunkIndex:(unint64_t)a5 finalTexture:(BOOL)a6 outGroupStart:(int64_t *)a7 outGroupCount:(int64_t *)a8;
- (void)updateCache:(unint64_t)a3;
@end

@implementation TSCHChunkManager

- (id)p_makeAllChartDeliveryStylesLocalized:(BOOL)a3
{
  v124[20] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_p_chart(self, a2, v3, v4, v5);
  v12 = objc_msgSend_chartType(v7, v8, v9, v10, v11);

  if (!v12)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChunkManager p_makeAllChartDeliveryStylesLocalized:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 286, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v120 = v12;
  if (a3)
  {
    v32 = sub_276360774(v14, v15, v16);
    v122 = objc_msgSend_localizedStringForKey_value_table_(v32, v33, v34, v35, v36, @"All at Once", &stru_288528678, @"TSCharts");

    v40 = sub_276360774(v37, v38, v39);
    v121 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, v42, v43, v44, @"Continuous", &stru_288528678, @"TSCharts");

    v48 = sub_276360774(v45, v46, v47);
    v53 = objc_msgSend_localizedStringForKey_value_table_(v48, v49, v50, v51, v52, @"Cascade", &stru_288528678, @"TSCharts");

    v58 = objc_msgSend_localizedDeliveryTypeForWedge(v12, v54, v55, v56, v57);
    v62 = sub_276360774(v59, v60, v61);
    v67 = objc_msgSend_localizedStringForKey_value_table_(v62, v63, v64, v65, v66, @"Background First", &stru_288528678, @"TSCharts");

    v71 = sub_276360774(v68, v69, v70);
    v76 = objc_msgSend_localizedStringForKey_value_table_(v71, v72, v73, v74, v75, @"By Series", &stru_288528678, @"TSCharts");

    v80 = sub_276360774(v77, v78, v79);
    v85 = objc_msgSend_localizedStringForKey_value_table_(v80, v81, v82, v83, v84, @"By Set", &stru_288528678, @"TSCharts");

    v89 = sub_276360774(v86, v87, v88);
    v94 = objc_msgSend_localizedStringForKey_value_table_(v89, v90, v91, v92, v93, @"By Element in Series", &stru_288528678, @"TSCharts");

    v98 = sub_276360774(v95, v96, v97);
    v103 = objc_msgSend_localizedStringForKey_value_table_(v98, v99, v100, v101, v102, @"By Element in Set", &stru_288528678, @"TSCharts");
  }

  else
  {
    v58 = objc_msgSend_unlocalizedDeliveryTypeForWedge(v12, v13, v14, v15, v16);
    v94 = @"By Element in Series";
    v76 = @"By Series";
    v121 = @"Continuous";
    v122 = @"All at Once";
    v53 = @"Cascade";
    v67 = @"Background First";
    v85 = @"By Set";
    v103 = @"By Element in Set";
  }

  v119 = objc_msgSend_null(MEMORY[0x277CBEB68], v104, v105, v106, v107);
  v123[0] = v119;
  v123[1] = v122;
  v124[0] = &unk_28856E708;
  v124[1] = &unk_28856E720;
  v123[2] = v121;
  v123[3] = v53;
  v124[2] = &unk_28856E738;
  v124[3] = &unk_28856E750;
  v123[4] = v58;
  v123[5] = v67;
  v124[4] = &unk_28856E768;
  v124[5] = &unk_28856E780;
  v123[6] = v76;
  v123[7] = v85;
  v124[6] = &unk_28856E798;
  v124[7] = &unk_28856E7B0;
  v123[8] = v94;
  v123[9] = v103;
  v124[8] = &unk_28856E7C8;
  v124[9] = &unk_28856E7E0;
  v123[10] = &unk_28856E708;
  v112 = objc_msgSend_null(MEMORY[0x277CBEB68], v108, v109, v110, v111);
  v124[10] = v112;
  v124[11] = v122;
  v123[11] = &unk_28856E720;
  v123[12] = &unk_28856E738;
  v124[12] = v121;
  v124[13] = v53;
  v123[13] = &unk_28856E750;
  v123[14] = &unk_28856E768;
  v124[14] = v58;
  v124[15] = v67;
  v123[15] = &unk_28856E780;
  v123[16] = &unk_28856E798;
  v124[16] = v76;
  v124[17] = v85;
  v123[17] = &unk_28856E7B0;
  v123[18] = &unk_28856E7C8;
  v123[19] = &unk_28856E7E0;
  v124[18] = v94;
  v124[19] = v103;
  v117 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v113, v114, v115, v116, v124, v123, 20);

  return v117;
}

- (id)p_allLocalizedChartDeliveryStyles
{
  v6 = objc_msgSend_p_makeAllChartDeliveryStylesLocalized_(self, a2, v2, v3, v4, 1);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChunkManager p_allLocalizedChartDeliveryStyles]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 334, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_allNonLocalizedChartDeliveryStyles
{
  v6 = objc_msgSend_p_makeAllChartDeliveryStylesLocalized_(self, a2, v2, v3, v4, 0);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChunkManager p_allNonLocalizedChartDeliveryStyles]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 340, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v6;
}

- (id)p_allChartDeliveryStylesLocalized:(BOOL)a3
{
  if (a3)
  {
    objc_msgSend_p_allLocalizedChartDeliveryStyles(self, a2, v3, v4, v5);
  }

  else
  {
    objc_msgSend_p_allNonLocalizedChartDeliveryStyles(self, a2, v3, v4, v5);
  }
  v6 = ;

  return v6;
}

- (TSCHChunkManager)initWithChartInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSCHChunkManager;
  v5 = [(TSCHChunkManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakChart, v4);
  }

  return v6;
}

- (id)p_chart
{
  WeakRetained = objc_loadWeakRetained(&self->_weakChart);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHChunkManager p_chart]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 359, 0, "Chunk manager being used after chart has been deallocated %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_loadWeakRetained(&self->_weakChart);

  return v23;
}

- (id)p_createChunkMapForChart:(id)a3 chunkStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [TSCHChunkMap alloc];
  v11 = objc_msgSend_initWithChart_chunkStyle_(v6, v7, v8, v9, v10, v5, a4);

  return v11;
}

- (id)p_chunkMapForChart:(id)a3 chunkStyle:(unint64_t)a4 forceUpdateCache:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  if (v5)
  {
    cachedChunkMap = v9->_cachedChunkMap;
    v9->_cachedChunkMap = 0;
  }

  v15 = v9->_cachedChunkMap;
  if (!v15)
  {
    v16 = objc_msgSend_p_createChunkMapForChart_chunkStyle_(v9, v10, v11, v12, v13, v8, a4);
    v17 = v9->_cachedChunkMap;
    v9->_cachedChunkMap = v16;

    v15 = v9->_cachedChunkMap;
  }

  v18 = v15;
  objc_sync_exit(v9);

  return v18;
}

- (id)p_cachedChunkMap
{
  v2 = self;
  objc_sync_enter(v2);
  cachedChunkMap = v2->_cachedChunkMap;
  if (!cachedChunkMap)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, "[TSCHChunkManager p_cachedChunkMap]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 386, 0, "invalid nil value for '%{public}s'", "_cachedChunkMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    cachedChunkMap = v2->_cachedChunkMap;
  }

  v23 = cachedChunkMap;
  objc_sync_exit(v2);

  return v23;
}

- (void)updateCache:(unint64_t)a3
{
  v15 = objc_msgSend_p_chart(self, a2, v3, v4, v5);
  v8 = self;
  objc_sync_enter(v8);
  v13 = objc_msgSend_p_createChunkMapForChart_chunkStyle_(v8, v9, v10, v11, v12, v15, a3);
  cachedChunkMap = v8->_cachedChunkMap;
  v8->_cachedChunkMap = v13;

  objc_sync_exit(v8);
}

- (unint64_t)chunkCountByUpdatingCacheIfNecessaryForChartDeliveryStyle:(unint64_t)a3
{
  v8 = objc_msgSend_p_chart(self, a2, v3, v4, v5);
  v13 = objc_msgSend_p_chunkMapForChart_chunkStyle_forceUpdateCache_(self, v9, v10, v11, v12, v8, a3, 0);
  v18 = objc_msgSend_p_chunkCountForChart_chunkStyle_chunkMap_(self, v14, v15, v16, v17, v8, a3, v13);

  return v18;
}

- (BOOL)p_supportsByWedgeDeliveryStyle:(id)a3
{
  v6 = objc_msgSend_chartType(a3, a2, v3, v4, v5);
  v11 = objc_msgSend_animationDeliveryStylesForFilter_(v6, v7, v8, v9, v10, &stru_288528678);

  LOBYTE(v6) = objc_msgSend_containsIndex_(v11, v12, v13, v14, v15, 103);
  return v6;
}

- (BOOL)p_isMultiDataForChart:(id)a3
{
  v6 = objc_msgSend_chartType(a3, a2, v3, v4, v5);
  isMultiData = objc_msgSend_isMultiData(v6, v7, v8, v9, v10);

  return isMultiData;
}

- (BOOL)p_hasBackgroundFillForChart:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_objectValueForProperty_(v3, v4, v5, v6, v7, 1101);
  if (objc_msgSend_hasNoFill_(TSCHStyleUtilities, v9, v10, v11, v12, v8))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v14) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v3, v13, v14, v15, v16, 1102);
    if (v26 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v27 = 1;
    goto LABEL_7;
  }

  v17 = objc_msgSend_clearColor(MEMORY[0x277D801F8], v13, v14, v15, v16);
  if (!objc_msgSend_isEqual_(v8, v18, v19, v20, v21, v17))
  {
    LODWORD(v23) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v3, v22, v23, v24, v25, 1102);
    v30 = v29;

    if (v30 == 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_6:
  v27 = 0;
LABEL_7:

  return v27;
}

- (BOOL)p_hasBackgroundLayerForPieChartForChart:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_chartType(v4, v5, v6, v7, v8);
  if (objc_msgSend_is3D(v9, v10, v11, v12, v13))
  {
    hasBackgroundFillForChart = 0;
  }

  else if (objc_msgSend_p_titleOnForChart_(self, v14, v15, v16, v17, v4) & 1) != 0 || (objc_msgSend_p_legendOnForChart_(self, v19, v20, v21, v22, v4))
  {
    hasBackgroundFillForChart = 1;
  }

  else
  {
    hasBackgroundFillForChart = objc_msgSend_p_hasBackgroundFillForChart_(self, v23, v24, v25, v26, v4);
  }

  return hasBackgroundFillForChart;
}

- (BOOL)hasBackgroundLayerForPieChart
{
  v5 = self;
  v6 = objc_msgSend_p_chart(self, a2, v2, v3, v4);
  LOBYTE(v5) = objc_msgSend_p_hasBackgroundLayerForPieChartForChart_(v5, v7, v8, v9, v10, v6);

  return v5;
}

- (unint64_t)chartDeliveryStyleFromTSDDeliveryStyle:(unint64_t)a3
{
  v7 = objc_msgSend_p_allChartDeliveryStylesLocalized_(self, a2, v3, v4, v5, 0);
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v9, v10, v11, a3);
  v17 = objc_msgSend_objectForKeyedSubscript_(v7, v13, v14, v15, v16, v12);

  if (!v17)
  {
    a3 = 0;
  }

  return a3;
}

- (unint64_t)textureDeliveryStyleFromDeliveryString:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_allChartDeliveryStylesLocalized_(self, v5, v6, v7, v8, 0);
  v14 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v11, v12, v13, v4);

  if (v14)
  {
    v19 = objc_msgSend_unsignedIntegerValue(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4
{
  v4 = a3;
  v6 = a4;
  v11 = objc_msgSend_p_chart(self, v7, v8, v9, v10);
  v16 = objc_msgSend_p_allChartDeliveryStylesLocalized_(self, v12, v13, v14, v15, v4);
  v21 = objc_msgSend_chartType(v11, v17, v18, v19, v20);
  v26 = objc_msgSend_animationDeliveryStylesForFilter_(v21, v22, v23, v24, v25, v6);

  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_2762FC7F4;
  v77 = sub_2762FC804;
  v78 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, COERCE_DOUBLE(0x3032000000), v28, v29);
  v67 = MEMORY[0x277D85DD0];
  v68 = 3221225472;
  v69 = sub_2762FC80C;
  v70 = &unk_27A6B9840;
  v30 = v16;
  v71 = v30;
  v72 = &v73;
  objc_msgSend_enumerateIndexesUsingBlock_(v26, v31, v32, v33, v34, &v67);
  v35 = v74[5];
  v40 = objc_msgSend_null(MEMORY[0x277CBEB68], v36, v37, v38, v39, v67, v68, v69, v70);
  v45 = objc_msgSend_indexOfObject_(v35, v41, v42, v43, v44, v40);

  if (v45 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCHChunkManager textureDeliveryStylesLocalized:animationFilter:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 473, 0, "invalid delivery style encountered");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  v65 = v74[5];

  _Block_object_dispose(&v73, 8);

  return v65;
}

- (unint64_t)chunkCountForChartDeliveryStyle:(unint64_t)a3
{
  v8 = objc_msgSend_p_chart(self, a2, v3, v4, v5);
  v13 = objc_msgSend_p_chunkMapForChart_chunkStyle_forceUpdateCache_(self, v9, v10, v11, v12, v8, a3, 1);
  v18 = objc_msgSend_p_chunkCountForChart_chunkStyle_chunkMap_(self, v14, v15, v16, v17, v8, a3, v13);

  return v18;
}

- (unint64_t)p_chunkCountForChart:(id)a3 chunkStyle:(unint64_t)a4 chunkMap:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_model(v8, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfSeries(v14, v15, v16, v17, v18);
  if (objc_msgSend_p_supportsByWedgeDeliveryStyle_(self, v20, v21, v22, v23, v8))
  {
    if (a4 == 103)
    {
      hasBackgroundLayerForPieChartForChart = objc_msgSend_p_hasBackgroundLayerForPieChartForChart_(self, v24, v25, v26, v27, v8);
      if (v19 + hasBackgroundLayerForPieChartForChart <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v19 + hasBackgroundLayerForPieChartForChart;
      }

      goto LABEL_12;
    }

LABEL_11:
    v29 = 1;
    goto LABEL_12;
  }

  if (!objc_msgSend_p_isMultiDataForChart_(self, v24, v25, v26, v27, v8))
  {
    if (a4 > 103)
    {
      if (a4 - 105 < 4)
      {
        v41 = objc_msgSend_count(v9, v30, v31, v32, v33);
        hasReferenceLines = objc_msgSend_hasReferenceLines(v14, v42, v43, v44, v45);
        v47 = 1;
        if (hasReferenceLines)
        {
          v47 = 2;
        }

        v29 = v47 + v41;
        goto LABEL_12;
      }

      if (a4 == 104)
      {
        v29 = 2;
        goto LABEL_12;
      }
    }

    else
    {
      v29 = 1;
      if (!a4 || a4 == 100 || a4 == 102)
      {
        goto LABEL_12;
      }
    }

    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCHChunkManager p_chunkCountForChart:chunkStyle:chunkMap:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 540, 0, "invalid chart delivery style: %ld", a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
    v29 = 0;
    goto LABEL_12;
  }

  if (a4 != 106)
  {
    goto LABEL_11;
  }

  v34 = objc_msgSend_model(v8, v30, v31, v32, v33);
  v39 = objc_msgSend_numberOfChunkableMultiDataSets(v34, v35, v36, v37, v38);

  if ((v39 + 1) > 1)
  {
    v29 = v39 + 1;
  }

  else
  {
    v29 = 1;
  }

LABEL_12:

  return v29;
}

- (void)adjustRangeForRep:(id)a3 chunkIndex:(unint64_t)a4 finalTexture:(BOOL)a5 seriesStart:(int64_t *)a6 seriesCount:(int64_t *)a7
{
  v9 = a5;
  v12 = a3;
  v230 = objc_msgSend_p_chart(self, v13, v14, v15, v16);
  v22 = objc_msgSend_p_cachedChunkMap(self, v17, v18, v19, v20);
  if (a6)
  {
    v26 = *a6;
    if (a7)
    {
LABEL_3:
      v27 = *a7;
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v27 = 0;
LABEL_6:
  v28 = objc_msgSend_chartDeliveryStyle(v12, v21, v23, v24, v25);

  if (!objc_msgSend_p_supportsByWedgeDeliveryStyle_(self, v29, v30, v31, v32, v230))
  {
    if (objc_msgSend_p_isMultiDataForChart_(self, v33, v34, v35, v36, v230))
    {
      if (!v28)
      {
        goto LABEL_21;
      }

      if (v28 != 106)
      {
        if (v28 != 100)
        {
          v37 = MEMORY[0x277D81150];
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 597, 0, "multidata chart delivery style not supported %lu", v28);
LABEL_71:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120, v121);
          goto LABEL_72;
        }

        goto LABEL_21;
      }

      v50 = v230;
      goto LABEL_42;
    }

    v48 = a4 - 1;
    v49 = objc_msgSend_count(v22, v33, v34, v35, v36);
    if ((a4 - 1) >= v49)
    {
      v48 = v49;
    }

    if (v28 <= 104)
    {
      v50 = v230;
      if (v28 <= 101)
      {
        if (v28 && v28 != 100)
        {
          goto LABEL_70;
        }

LABEL_46:
        if ((a4 || v9) && (a4 != 1 || !v9))
        {
          v27 = 0;
          v26 = 0;
        }

        goto LABEL_73;
      }

      if (v28 == 102)
      {
        goto LABEL_46;
      }

      if (v28 == 104)
      {
LABEL_42:
        if (a4 && (a4 != 1 || !v9))
        {
          goto LABEL_73;
        }

        goto LABEL_68;
      }

LABEL_70:
      v109 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v114, v115, v116, v117, v38, v43, 702, 0, "invalid chart delivery style %ld", v28);
      goto LABEL_71;
    }

    v50 = v230;
    if (v28 > 106)
    {
      if (v28 == 107)
      {
        if (!a4)
        {
          goto LABEL_68;
        }

        v94 = objc_msgSend_model(v230, v33, v34, v35, v36);
        if (objc_msgSend_hasReferenceLines(v94, v95, v96, v97, v98))
        {
          v103 = objc_msgSend_count(v22, v99, v100, v101, v102) + 1;

          if (v103 == a4)
          {
            if (!v9)
            {
              goto LABEL_117;
            }

            goto LABEL_67;
          }
        }

        else
        {
        }

        if (v9)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            v154 = MEMORY[0x277D81150];
            v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
            v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, v157, v158, v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v161, v162, v163, v164, v155, v160, 660, 0, "Doing a final texture on a chunk index less than 0. Bad juju.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v165, v166, v167, v168);
          }

          if (v48 > objc_msgSend_count(v22, v33, v34, v35, v36))
          {
            v169 = MEMORY[0x277D81150];
            v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
            v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, v171, v172, v173, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v169, v174, v175, v176, v177, v144, v149, 661, 0, "Getting start series for an out of range build chunk.");
            goto LABEL_100;
          }

LABEL_101:
          if (v48)
          {
            v26 = 0;
            v27 = objc_msgSend_seriesIndexAtIndex_(v22, v33, v34, v35, v36, v48 - 1) + 1;
            goto LABEL_72;
          }

          goto LABEL_117;
        }

        if (v48 >= objc_msgSend_count(v22, v33, v34, v35, v36))
        {
          goto LABEL_117;
        }

        if ((v48 & 0x8000000000000000) != 0 || v48 >= objc_msgSend_count(v22, v33, v34, v35, v36))
        {
          v208 = MEMORY[0x277D81150];
          v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
          v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, v210, v211, v212, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v208, v213, v214, v215, v216, v198, v203, 670, 0, "Getting start series for an out of range build chunk.");
          goto LABEL_121;
        }
      }

      else
      {
        if (v28 != 108)
        {
          goto LABEL_70;
        }

        if (!a4)
        {
          goto LABEL_68;
        }

        v70 = objc_msgSend_model(v230, v33, v34, v35, v36);
        if (objc_msgSend_hasReferenceLines(v70, v71, v72, v73, v74))
        {
          v79 = objc_msgSend_count(v22, v75, v76, v77, v78) + 1;

          if (v79 == a4)
          {
            goto LABEL_61;
          }
        }

        else
        {
        }

        v50 = v230;
        if (v9)
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            v182 = MEMORY[0x277D81150];
            v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
            v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v184, v185, v186, v187, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v182, v189, v190, v191, v192, v183, v188, 684, 0, "Doing a final texture on a chunk index less than 0. Bad juju.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v193, v194, v195, v196);
            v50 = v230;
          }

          if (!v48)
          {
            v27 = 0;
            v26 = 0;
          }

          goto LABEL_73;
        }

        if ((v48 & 0x8000000000000000) != 0 || v48 >= objc_msgSend_count(v22, v33, v34, v35, v36))
        {
          v217 = MEMORY[0x277D81150];
          v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
          v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v218, v219, v220, v221, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v217, v222, v223, v224, v225, v198, v203, 695, 0, "Getting start series for an out of range build chunk.");
          goto LABEL_121;
        }
      }
    }

    else
    {
      if (v28 != 105)
      {
        v51 = objc_msgSend_model(v230, v33, v34, v35, v36);
        if (!objc_msgSend_hasReferenceLines(v51, v52, v53, v54, v55))
        {

          goto LABEL_72;
        }

        v60 = objc_msgSend_count(v22, v56, v57, v58, v59) + 1;

        if (v60 != a4)
        {
LABEL_72:
          v50 = v230;
          goto LABEL_73;
        }

        v27 = 0;
        v26 = 0;
        v50 = v230;
        if (!v9)
        {
          goto LABEL_73;
        }

        goto LABEL_67;
      }

      if (!a4)
      {
LABEL_68:
        v27 = 0;
        goto LABEL_69;
      }

      v84 = objc_msgSend_model(v230, v33, v34, v35, v36);
      if (objc_msgSend_hasReferenceLines(v84, v85, v86, v87, v88))
      {
        v93 = objc_msgSend_count(v22, v89, v90, v91, v92) + 1;

        if (v93 == a4)
        {
LABEL_61:
          v50 = v230;
          if (v9)
          {
LABEL_67:
            v104 = objc_msgSend_model(v230, v33, v34, v35, v36);
            v27 = objc_msgSend_numberOfSeries(v104, v105, v106, v107, v108);

            v50 = v230;
LABEL_69:
            v26 = 0;
LABEL_73:
            objc_msgSend_model(v50, v33, v34, v35, v36);
            goto LABEL_74;
          }

          goto LABEL_68;
        }
      }

      else
      {
      }

      if (v9)
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          v128 = MEMORY[0x277D81150];
          v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
          v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, v131, v132, v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v135, v136, v137, v138, v129, v134, 639, 0, "Doing a final texture on a chunk index less than 0. Bad juju.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v139, v140, v141, v142);
        }

        if (v48 > objc_msgSend_count(v22, v33, v34, v35, v36))
        {
          v143 = MEMORY[0x277D81150];
          v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
          v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, v146, v147, v148, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v143, v150, v151, v152, v153, v144, v149, 640, 0, "Getting start series for an out of range build chunk.");
LABEL_100:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181);
          goto LABEL_101;
        }

        goto LABEL_101;
      }

      if ((v48 & 0x8000000000000000) != 0 || v48 >= objc_msgSend_count(v22, v33, v34, v35, v36))
      {
        v197 = MEMORY[0x277D81150];
        v198 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
        v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v199, v200, v201, v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v197, v204, v205, v206, v207, v198, v203, 645, 0, "Getting start series for an out of range build chunk.");
LABEL_121:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v226, v227, v228, v229);
      }
    }

    v26 = objc_msgSend_seriesIndexAtIndex_(v22, v33, v34, v35, v36, v48);
    goto LABEL_123;
  }

  if (v28 <= 101)
  {
    if (v28 && v28 != 100)
    {
      goto LABEL_38;
    }

LABEL_21:
    if ((a4 || v9) && (a4 != 1 || !v9))
    {
      v27 = 0;
      v26 = 0;
    }

    goto LABEL_72;
  }

  if (v28 == 102)
  {
    goto LABEL_21;
  }

  if (v28 != 103)
  {
LABEL_38:
    v61 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChunkManager adjustRangeForRep:chunkIndex:finalTexture:seriesStart:seriesCount:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v66, v67, v68, v69, v38, v43, 582, 0, "invalid chart delivery style %ld", v28);
    goto LABEL_71;
  }

  if (v9)
  {
    if (a4)
    {
      v26 = 0;
      v27 = a4 - objc_msgSend_p_hasBackgroundLayerForPieChartForChart_(self, v33, v34, v35, v36, v230);
      goto LABEL_72;
    }

LABEL_117:
    v27 = 0;
    v26 = 0;
    goto LABEL_72;
  }

  if (!a4)
  {
    v26 = 0;
LABEL_123:
    v27 = 1;
    goto LABEL_72;
  }

  v26 = a4 - objc_msgSend_p_hasBackgroundLayerForPieChartForChart_(self, v33, v34, v35, v36, v230);
  v27 = 1;
  objc_msgSend_model(v230, v80, v81, v82, v83);
  v122 = LABEL_74:;
  v127 = objc_msgSend_numberOfSeries(v122, v123, v124, v125, v126);

  if (v26 >= v127 || v26 < 0 || v26 + v27 > v127 || v27 < 0)
  {
    v27 = 0;
    v26 = 0;
  }

  if (a6)
  {
    *a6 = v26;
  }

  if (a7)
  {
    *a7 = v27;
  }
}

- (id)animationFiltersWithDefaultFilters:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_chart(self, v5, v6, v7, v8);
  v14 = objc_msgSend_chartType(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_animationFiltersWithDefaultFilters_(v14, v15, v16, v17, v18, v4);

  return v19;
}

- (void)adjustRangeForRep:(id)a3 seriesIndex:(unint64_t)a4 chunkIndex:(unint64_t)a5 finalTexture:(BOOL)a6 outGroupStart:(int64_t *)a7 outGroupCount:(int64_t *)a8
{
  v10 = a6;
  v209 = a3;
  v17 = objc_msgSend_p_chart(self, v13, v14, v15, v16);
  v23 = objc_msgSend_p_cachedChunkMap(self, v18, v19, v20, v21);
  if (!a7)
  {
    v27 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = 0;
    goto LABEL_6;
  }

  v27 = *a7;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v28 = *a8;
LABEL_6:
  v29 = objc_msgSend_chartDeliveryStyle(v209, v22, v24, v25, v26);
  if (objc_msgSend_p_supportsByWedgeDeliveryStyle_(self, v30, v31, v32, v33, v17) & 1) != 0 || (objc_msgSend_p_isMultiDataForChart_(self, v34, v35, v36, v37, v17))
  {
    goto LABEL_8;
  }

  v43 = a5 - 1;
  v44 = objc_msgSend_count(v23, v38, v39, v40, v41);
  if ((a5 - 1) >= v44)
  {
    v43 = v44;
  }

  if (v29 <= 104)
  {
    if (v29 > 101)
    {
      if (v29 != 102)
      {
        if (v29 == 104)
        {
          if (!a5)
          {
            v28 = 0;
            v27 = 0;
          }

          goto LABEL_8;
        }

        goto LABEL_55;
      }
    }

    else if (v29 && v29 != 100)
    {
      goto LABEL_55;
    }

    if ((a5 || v10) && (a5 != 1 || !v10))
    {
      v28 = 0;
      v27 = 0;
    }

    goto LABEL_8;
  }

  if (v29 > 106)
  {
    if (v29 != 107)
    {
      if (v29 != 108)
      {
LABEL_55:
        v107 = MEMORY[0x277D81150];
        v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
        v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, v110, v111, v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v114, v115, v116, v117, v108, v113, 838, 0, "invalid chart delivery style %ld", v29);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120, v121);
        goto LABEL_8;
      }

      if (!a5)
      {
        goto LABEL_53;
      }

      v63 = objc_msgSend_model(v17, v45, v46, v47, v48);
      if (objc_msgSend_hasReferenceLines(v63, v64, v65, v66, v67))
      {
        v72 = objc_msgSend_count(v23, v68, v69, v70, v71) + 1;

        if (v72 == a5)
        {
          goto LABEL_51;
        }
      }

      else
      {
      }

      v42 = v23;
      if (!v10)
      {
        v27 = v43;
        if ((v43 & 0x8000000000000000) == 0 && v43 < objc_msgSend_count(v23, v59, v60, v61, v62))
        {
          goto LABEL_88;
        }

        v190 = MEMORY[0x277D81150];
        v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
        v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v192, v193, v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v190, v195, v196, v197, v198, v171, v176, 832, 0, "Getting start series for an out of range build chunk.");
        goto LABEL_87;
      }

      v153 = v43;
      if ((v43 & 0x8000000000000000) != 0 || v43 > objc_msgSend_count(v42, v59, v60, v61, v62))
      {
        v154 = MEMORY[0x277D81150];
        v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
        v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, v157, v158, v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v161, v162, v163, v164, v155, v160, 818, 0, "Getting start values for an out of range build chunk.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v165, v166, v167, v168);
      }

      if (v153 >= 1)
      {
        v169 = 0;
        v28 = 0;
        do
        {
          if (objc_msgSend_seriesIndexAtIndex_(v42, v59, v60, v61, v62, v169) == a4)
          {
            v28 = objc_msgSend_groupIndexAtMapIndex_(v42, v59, v60, v61, v62, v169) + 1;
          }

          v27 = 0;
          ++v169;
        }

        while (v153 != v169);
        goto LABEL_9;
      }

      goto LABEL_92;
    }

    if (!a5)
    {
      goto LABEL_53;
    }

    v92 = objc_msgSend_model(v17, v45, v46, v47, v48);
    if (objc_msgSend_hasReferenceLines(v92, v93, v94, v95, v96))
    {
      v101 = objc_msgSend_count(v23, v97, v98, v99, v100) + 1;

      if (v101 == a5)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v42 = v23;
    if (!v10)
    {
      v27 = v43;
      if ((v43 & 0x8000000000000000) == 0 && v43 < objc_msgSend_count(v23, v59, v60, v61, v62))
      {
        goto LABEL_88;
      }

      v170 = MEMORY[0x277D81150];
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
      v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, v173, v174, v175, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v170, v177, v178, v179, v180, v171, v176, 804, 0, "Getting start values for an out of range build chunk.");
      goto LABEL_87;
    }

    if ((v43 & 0x8000000000000000) != 0 || (v122 = v43, v43 > objc_msgSend_count(v23, v59, v60, v61, v62)))
    {
      v123 = MEMORY[0x277D81150];
      v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, v126, v127, v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v123, v130, v131, v132, v133, v124, v129, 795, 0, "Getting start values for an out of range build chunk.");

      v122 = v43;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v135, v136, v137);
    }

    else if (!v43)
    {
LABEL_92:
      v28 = 0;
      goto LABEL_93;
    }

    if (objc_msgSend_seriesIndexAtIndex_(v42, v59, v60, v61, v62, v122 - 1) <= a4)
    {
      v207 = objc_msgSend_groupIndexAtMapIndex_(v42, v203, v204, v205, v206, v122 - 1);
LABEL_96:
      v27 = 0;
      v28 = v207 + 1;
      goto LABEL_9;
    }

    goto LABEL_93;
  }

  if (v29 == 105)
  {
    v73 = objc_msgSend_model(v17, v45, v46, v47, v48);
    if (!objc_msgSend_hasReferenceLines(v73, v74, v75, v76, v77))
    {

      goto LABEL_8;
    }

    v82 = objc_msgSend_count(v23, v78, v79, v80, v81) + 1;

    if (v82 != a5)
    {
LABEL_8:
      v42 = v23;
      goto LABEL_9;
    }

    v28 = 0;
    v27 = 0;
    v42 = v23;
    if (!v10)
    {
      goto LABEL_9;
    }

    v87 = objc_msgSend_model(v17, v83, v84, v85, v86);
    v28 = objc_msgSend_numberOfGroupsInAllSeries(v87, v88, v89, v90, v91);

LABEL_93:
    v27 = 0;
    goto LABEL_9;
  }

  if (!a5)
  {
    goto LABEL_53;
  }

  v49 = objc_msgSend_model(v17, v45, v46, v47, v48);
  if (!objc_msgSend_hasReferenceLines(v49, v50, v51, v52, v53))
  {

    goto LABEL_63;
  }

  v58 = objc_msgSend_count(v23, v54, v55, v56, v57) + 1;

  if (v58 == a5)
  {
LABEL_51:
    if (v10)
    {
      v102 = objc_msgSend_model(v17, v59, v60, v61, v62);
      v28 = objc_msgSend_numberOfGroupsInAllSeries(v102, v103, v104, v105, v106);

LABEL_54:
      v27 = 0;
      goto LABEL_8;
    }

LABEL_53:
    v28 = 0;
    goto LABEL_54;
  }

LABEL_63:
  v42 = v23;
  v27 = v43;
  if (!v10)
  {
    if ((v43 & 0x8000000000000000) == 0 && v43 < objc_msgSend_count(v23, v59, v60, v61, v62))
    {
      goto LABEL_88;
    }

    v181 = MEMORY[0x277D81150];
    v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
    v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, v183, v184, v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v186, v187, v188, v189, v171, v176, 781, 0, "Getting start values for an out of range build chunk.");
LABEL_87:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v199, v200, v201, v202);
LABEL_88:
    v27 = objc_msgSend_groupIndexAtMapIndex_(v42, v59, v60, v61, v62, v27);
    v28 = 1;
    goto LABEL_9;
  }

  if ((v43 & 0x8000000000000000) != 0 || v43 > objc_msgSend_count(v23, v59, v60, v61, v62))
  {
    v138 = MEMORY[0x277D81150];
    v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCHChunkManager adjustRangeForRep:seriesIndex:chunkIndex:finalTexture:outGroupStart:outGroupCount:]");
    v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v141, v142, v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v145, v146, v147, v148, v139, v144, 777, 0, "Getting start values for an out of range build chunk.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151, v152);
LABEL_95:
    v207 = objc_msgSend_groupIndexAtMapIndex_(v23, v59, v60, v61, v62, v27 - 1);
    goto LABEL_96;
  }

  if (v43)
  {
    goto LABEL_95;
  }

  v28 = 0;
LABEL_9:
  if (a7)
  {
    *a7 = v27;
  }

  if (a8)
  {
    *a8 = v28;
  }
}

- (BOOL)lastChunkForSeriesIndex:(unint64_t)a3 currentChunk:(unint64_t)a4 chunkStyle:(unint64_t)a5
{
  v12 = objc_msgSend_p_chart(self, a2, v5, v6, v7);
  v17 = objc_msgSend_chartType(v12, v13, v14, v15, v16);
  if (!objc_msgSend_supportsMultipleValuesPerSeries(v17, v18, v19, v20, v21))
  {
    v31 = 1;
    goto LABEL_5;
  }

  isMultiDataForChart = objc_msgSend_p_isMultiDataForChart_(self, v22, v23, v24, v25, v12);

  if ((isMultiDataForChart & 1) == 0)
  {
    v33 = objc_msgSend_p_cachedChunkMap(self, v27, v28, v29, v30);
    v17 = v33;
    v31 = 1;
    if (a5 <= 103)
    {
      if (!a5 || a5 == 100)
      {
        goto LABEL_5;
      }

      if (a5 == 102)
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCHChunkManager lastChunkForSeriesIndex:currentChunk:chunkStyle:]");
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 887, 0, "TODO implement cascade");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
LABEL_20:
        v31 = 0;
        goto LABEL_5;
      }

LABEL_19:
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "[TSCHChunkManager lastChunkForSeriesIndex:currentChunk:chunkStyle:]");
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v66, v67, v68, v69, v60, v65, 891, 0, "invalid chart delivery style %ld", a5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
      goto LABEL_20;
    }

    if (a5 - 104 >= 2)
    {
      if (a5 - 107 < 2)
      {
        do
        {
          v53 = objc_msgSend_count(v17, v34, v35, v36, v37);
          v31 = a4 >= v53;
          if (a4 >= v53)
          {
            break;
          }

          v58 = objc_msgSend_seriesIndexAtIndex_(v17, v54, v55, v56, v57, a4++);
        }

        while (v58 != a3);
        goto LABEL_5;
      }

      if (a5 != 106)
      {
        goto LABEL_19;
      }

      v31 = objc_msgSend_count(v33, v34, v35, v36, v37) == a4;
    }

LABEL_5:

    goto LABEL_6;
  }

  v31 = 1;
LABEL_6:

  return v31;
}

- (id)p_backgroundStringForChartWithTitle:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v8 = sub_276360774(v5, v6, v7);
  v13 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, v10, v11, v12, @"Background (%@)", &stru_288528678, @"TSCharts");
  v18 = objc_msgSend_stringWithFormat_(v3, v14, v15, v16, v17, v13, v4);

  return v18;
}

- (id)p_seriesNameForSeriesAtIndex:(unint64_t)a3 withPrefix:(id)a4 chart:(id)a5
{
  v7 = a4;
  v12 = objc_msgSend_model(a5, v8, v9, v10, v11);
  v17 = objc_msgSend_nameForSeries_(v12, v13, v14, v15, v16, a3);
  v22 = v17;
  if (!v17 || !objc_msgSend_length(v17, v18, v19, v20, v21))
  {
    v23 = objc_msgSend_tswp_stringForValue_withListNumberFormat_includeFormatting_(MEMORY[0x277CCACA8], v18, v19, v20, v21, (a3 + 1), 9, 0);
    if (!objc_msgSend_length(v7, v24, v25, v26, v27))
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCHChunkManager p_seriesNameForSeriesAtIndex:withPrefix:chart:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 910, 0, "invalid prefix %@", v7);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    }

    v47 = MEMORY[0x277CCACA8];
    v48 = sub_276360774(v29, v30, v31);
    v53 = objc_msgSend_localizedStringForKey_value_table_(v48, v49, v50, v51, v52, @"%@ %@", &stru_288528678, @"TSCharts");
    v58 = objc_msgSend_stringWithFormat_(v47, v54, v55, v56, v57, v53, v7, v23);

    v22 = v58;
  }

  return v22;
}

- (id)p_nameForMultiDataSetCategory:(unint64_t)a3 chart:(id)a4
{
  v8 = objc_msgSend_model(a4, a2, v4, v5, v6);
  v13 = objc_msgSend_nameForMultiDataSetCategory_(v8, v9, v10, v11, v12, a3);
  v18 = v13;
  if (!v13 || !objc_msgSend_length(v13, v14, v15, v16, v17))
  {
    v19 = objc_msgSend_tswp_stringForValue_withListNumberFormat_includeFormatting_(MEMORY[0x277CCACA8], v14, v15, v16, v17, (a3 + 1), 9, 0);
    v20 = MEMORY[0x277CCACA8];
    v24 = sub_276360774(v21, v22, v23);
    v29 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, v26, v27, v28, @"%@ %@", &stru_288528678, @"TSCharts");
    v33 = sub_276360774(v30, v31, v32);
    v38 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, v35, v36, v37, @"Set", &stru_288528678, @"TSCharts");
    v43 = objc_msgSend_stringWithFormat_(v20, v39, v40, v41, v42, v29, v38, v19);

    v18 = v43;
  }

  return v18;
}

- (id)containedTextForChartDeliveryStyle:(unint64_t)a3 chunkIndex:(unint64_t)a4 displayName:(id)a5
{
  v8 = a5;
  v13 = objc_msgSend_p_chart(self, v9, v10, v11, v12);
  v19 = objc_msgSend_p_chunkMapForChart_chunkStyle_forceUpdateCache_(self, v14, v15, v16, v17, v13, a3, 1);
  if (!v19)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21, v22, "[TSCHChunkManager containedTextForChartDeliveryStyle:chunkIndex:displayName:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 932, 0, "invalid nil value for '%{public}s'", "chunkMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = v8;
  if (objc_msgSend_p_supportsByWedgeDeliveryStyle_(self, v39, v40, v41, v42, v13))
  {
    if (a3 == 103)
    {
      hasBackgroundLayerForPieChartForChart = objc_msgSend_p_hasBackgroundLayerForPieChartForChart_(self, v43, v44, v45, v46, v13);
      if (a4 || !hasBackgroundLayerForPieChartForChart)
      {
        v52 = a4 - ((a4 != 0) & hasBackgroundLayerForPieChartForChart);
        v53 = sub_276360774(v49, v50, v51);
        objc_msgSend_localizedStringForKey_value_table_(v53, v54, v55, v56, v57, @"Wedge", &stru_288528678, @"TSCharts");
        v58 = LABEL_8:;
        v63 = objc_msgSend_p_seriesNameForSeriesAtIndex_withPrefix_chart_(self, v59, v60, v61, v62, v52, v58, v13);

        v64 = MEMORY[0x277CCACA8];
        v68 = sub_276360774(v65, v66, v67);
        objc_msgSend_localizedStringForKey_value_table_(v68, v69, v70, v71, v72, @"%@ (%@)", &stru_288528678, @"TSCharts");
        v80 = LABEL_14:;
        objc_msgSend_stringWithFormat_(v64, v81, v82, v83, v84, v80, v63, v38);
        v85 = LABEL_15:;

LABEL_16:
        goto LABEL_47;
      }

      goto LABEL_45;
    }

LABEL_33:
    v126 = v38;
LABEL_46:
    v85 = v126;
    goto LABEL_47;
  }

  if (objc_msgSend_p_isMultiDataForChart_(self, v43, v44, v45, v46, v13))
  {
    if (a3 != 106)
    {
      goto LABEL_33;
    }

    if (a4)
    {
      objc_msgSend_p_nameForMultiDataSetCategory_chart_(self, v48, v49, v50, v51, a4 - 1, v13);
      v63 = LABEL_13:;
      v64 = MEMORY[0x277CCACA8];
      v68 = sub_276360774(v73, v74, v75);
      objc_msgSend_localizedStringForKey_value_table_(v68, v76, v77, v78, v79, @"%@ (%@)", &stru_288528678, @"TSCharts");
      goto LABEL_14;
    }

LABEL_45:
    v126 = objc_msgSend_p_backgroundStringForChartWithTitle_(self, v48, v49, v50, v51, v38);
    goto LABEL_46;
  }

  if (a3 <= 105)
  {
    if (a3 == 101)
    {
      v111 = MEMORY[0x277D81150];
      v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "[TSCHChunkManager containedTextForChartDeliveryStyle:chunkIndex:displayName:]");
      v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v118, v119, v120, v121, v112, v117, 1041, 0, "invalid continuous delivery style for non multidata chart");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
      goto LABEL_33;
    }

    if (a3 == 104)
    {
      if (!a4)
      {
        goto LABEL_45;
      }

      v138 = MEMORY[0x277CCACA8];
      v63 = sub_276360774(v49, v50, v51);
      objc_msgSend_localizedStringForKey_value_table_(v63, v139, v140, v141, v142, @"Content (%@)", &stru_288528678, @"TSCharts");
      v68 = LABEL_44:;
      v85 = objc_msgSend_stringWithFormat_(v138, v158, v159, v160, v161, v68, v38);
      goto LABEL_16;
    }

    if (a3 != 105)
    {
      goto LABEL_33;
    }

    if (!a4)
    {
      goto LABEL_45;
    }

    v86 = objc_msgSend_model(v13, v48, v49, v50, v51);
    if (!objc_msgSend_hasReferenceLines(v86, v87, v88, v89, v90))
    {

LABEL_54:
      if (objc_msgSend_count(v19, v96, v97, v98, v99) + 1 > a4)
      {
        v52 = objc_msgSend_seriesIndexAtIndex_(v19, v172, v173, v174, v175, a4 - 1);
        v53 = sub_276360774(v176, v177, v178);
        objc_msgSend_localizedStringForKey_value_table_(v53, v179, v180, v181, v182, @"Series", &stru_288528678, @"TSCharts");
        goto LABEL_8;
      }

      v276 = MEMORY[0x277D81150];
      v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, v173, v174, v175, "[TSCHChunkManager containedTextForChartDeliveryStyle:chunkIndex:displayName:]");
      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v277, v278, v279, v280, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      v260 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v281, v282, v283, v284, a4);
      v285 = MEMORY[0x277CCABB0];
      v290 = objc_msgSend_count(v19, v286, v287, v288, v289);
      v271 = objc_msgSend_numberWithUnsignedInteger_(v285, v291, v292, v293, v294, v290);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v276, v295, v296, v297, v298, v250, v255, 988, 0, "Index (%@) out of range for chunk map count (%@)", v260, v271);
      goto LABEL_66;
    }

    v95 = objc_msgSend_count(v19, v91, v92, v93, v94) + 1;

    if (v95 != a4)
    {
      goto LABEL_54;
    }

LABEL_43:
    v138 = MEMORY[0x277CCACA8];
    v63 = sub_276360774(v97, v98, v99);
    objc_msgSend_localizedStringForKey_value_table_(v63, v154, v155, v156, v157, @"Reference Lines (%@)", &stru_288528678, @"TSCharts");
    goto LABEL_44;
  }

  switch(a3)
  {
    case 'j':
      if (!a4)
      {
        goto LABEL_45;
      }

      v127 = objc_msgSend_model(v13, v48, v49, v50, v51);
      if (objc_msgSend_hasReferenceLines(v127, v128, v129, v130, v131))
      {
        v136 = objc_msgSend_count(v19, v132, v133, v134, v135) + 1;

        if (v136 == a4)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if (objc_msgSend_count(v19, v137, v97, v98, v99) + 1 > a4)
      {
        v167 = objc_msgSend_groupIndexAtMapIndex_(v19, v163, v164, v165, v166, a4 - 1);
        objc_msgSend_p_nameForMultiDataSetCategory_chart_(self, v168, v169, v170, v171, v167, v13);
        goto LABEL_13;
      }

      v249 = MEMORY[0x277D81150];
      v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, v164, v165, v166, "[TSCHChunkManager containedTextForChartDeliveryStyle:chunkIndex:displayName:]");
      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, v252, v253, v254, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      v260 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v256, v257, v258, v259, a4);
      v261 = MEMORY[0x277CCABB0];
      v266 = objc_msgSend_count(v19, v262, v263, v264, v265);
      v271 = objc_msgSend_numberWithUnsignedInteger_(v261, v267, v268, v269, v270, v266);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v249, v272, v273, v274, v275, v250, v255, 1002, 0, "Index (%@) out of range for chunk map count (%@)", v260, v271);
      break;
    case 'k':
      if (!a4)
      {
        goto LABEL_45;
      }

      v143 = objc_msgSend_model(v13, v48, v49, v50, v51);
      if (objc_msgSend_hasReferenceLines(v143, v144, v145, v146, v147))
      {
        v152 = objc_msgSend_count(v19, v148, v149, v150, v151) + 1;

        if (v152 == a4)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if (objc_msgSend_count(v19, v153, v97, v98, v99) + 1 > a4)
      {
        v214 = a4 - 1;
        v215 = objc_msgSend_seriesIndexAtIndex_(v19, v210, v211, v212, v213, v214);
        v220 = objc_msgSend_groupIndexAtMapIndex_(v19, v216, v217, v218, v219, v214) + 1;
        v224 = sub_276360774(v221, v222, v223);
        v229 = objc_msgSend_localizedStringForKey_value_table_(v224, v225, v226, v227, v228, @"Series", &stru_288528678, @"TSCharts");
        v234 = objc_msgSend_p_seriesNameForSeriesAtIndex_withPrefix_chart_(self, v230, v231, v232, v233, v215, v229, v13);

        v235 = MEMORY[0x277CCACA8];
        v239 = sub_276360774(v236, v237, v238);
        v244 = objc_msgSend_localizedStringForKey_value_table_(v239, v240, v241, v242, v243, @"%@ %tu (%@)", &stru_288528678, @"TSCharts");
        v85 = objc_msgSend_stringWithFormat_(v235, v245, v246, v247, v248, v244, v234, v220, v38);

        goto LABEL_47;
      }

      v322 = MEMORY[0x277D81150];
      v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, v211, v212, v213, "[TSCHChunkManager containedTextForChartDeliveryStyle:chunkIndex:displayName:]");
      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v323, v324, v325, v326, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      v260 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v327, v328, v329, v330, a4);
      v331 = MEMORY[0x277CCABB0];
      v336 = objc_msgSend_count(v19, v332, v333, v334, v335);
      v271 = objc_msgSend_numberWithUnsignedInteger_(v331, v337, v338, v339, v340, v336);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v322, v341, v342, v343, v344, v250, v255, 1018, 0, "Index (%@) out of range for chunk map count (%@)", v260, v271);
      break;
    case 'l':
      if (!a4)
      {
        goto LABEL_45;
      }

      v100 = objc_msgSend_model(v13, v48, v49, v50, v51);
      if (objc_msgSend_hasReferenceLines(v100, v101, v102, v103, v104))
      {
        v109 = objc_msgSend_count(v19, v105, v106, v107, v108) + 1;

        if (v109 == a4)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if (objc_msgSend_count(v19, v110, v97, v98, v99) + 1 > a4)
      {
        v187 = a4 - 1;
        v188 = objc_msgSend_groupIndexAtMapIndex_(v19, v183, v184, v185, v186, v187);
        v193 = objc_msgSend_seriesIndexAtIndex_(v19, v189, v190, v191, v192, v187) + 1;
        v63 = objc_msgSend_p_nameForMultiDataSetCategory_chart_(self, v194, v195, v196, v197, v188, v13);
        v198 = MEMORY[0x277CCACA8];
        v68 = sub_276360774(v199, v200, v201);
        v80 = objc_msgSend_localizedStringForKey_value_table_(v68, v202, v203, v204, v205, @"%@ %tu (%@)", &stru_288528678, @"TSCharts");
        objc_msgSend_stringWithFormat_(v198, v206, v207, v208, v209, v80, v63, v193, v38);
        goto LABEL_15;
      }

      v299 = MEMORY[0x277D81150];
      v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v184, v185, v186, "[TSCHChunkManager containedTextForChartDeliveryStyle:chunkIndex:displayName:]");
      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v300, v301, v302, v303, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
      v260 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v304, v305, v306, v307, a4);
      v308 = MEMORY[0x277CCABB0];
      v313 = objc_msgSend_count(v19, v309, v310, v311, v312);
      v271 = objc_msgSend_numberWithUnsignedInteger_(v308, v314, v315, v316, v317, v313);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v299, v318, v319, v320, v321, v250, v255, 1035, 0, "Index (%@) out of range for chunk map count (%@)", v260, v271);
      break;
    default:
      goto LABEL_33;
  }

LABEL_66:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v345, v346, v347, v348);
  v85 = 0;
LABEL_47:

  return v85;
}

@end
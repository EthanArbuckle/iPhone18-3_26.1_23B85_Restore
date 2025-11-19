@interface TSCHPresetImagerInfoBased
+ (id)presetImagerForChartType:(id)a3;
- (CGRect)p_updateSwatchFrameForInwardLayoutIfNeeded:(CGRect)a3 outImageSize:(CGSize *)a4 outImageScale:(double *)a5 outSwatchOffset:(CGPoint *)a6 outCanvasScale:(double *)a7;
- (CGRect)p_updateSwatchFrameForRectAdjustmentIfNeeded:(CGRect)a3 rectAdjustment:(id)a4 outSwatchOffset:(CGPoint *)a5;
- (TSCHPresetImagerInfoBased)initWithChartType:(id)a3;
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)a3;
- (double)p_canvasScale;
- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9;
- (id)p_imageRectAdjustments;
- (id)p_rectAdjustmentForChartType:(id)a3;
- (void)p_debugGenerateLayoutCacheWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7;
@end

@implementation TSCHPresetImagerInfoBased

+ (id)presetImagerForChartType:(id)a3
{
  v3 = a3;
  v8 = objc_alloc(objc_msgSend_presetImagerClass(v3, v4, v5, v6, v7));
  v13 = objc_msgSend_initWithChartType_(v8, v9, v10, v11, v12, v3);

  return v13;
}

- (TSCHPresetImagerInfoBased)initWithChartType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCHPresetImagerInfoBased;
  v6 = [(TSCHPresetImager *)&v9 initWithChartType:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_chartType, a3);
  }

  return v7;
}

- (id)p_imageRectAdjustments
{
  v193[8] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v2, v3, v4);
  v10 = objc_msgSend_useLayoutInwardForInsertionIcons(v5, v6, v7, v8, v9);

  v15 = objc_msgSend_columnChart3D(TSCHChartType, v11, v12, v13, v14);
  v186 = v15;
  if (v10)
  {
    v192[0] = v15;
    v184 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v16, 5.0, 0.0, -10.0, -4.0);
    v193[0] = v184;
    v182 = objc_msgSend_stackedColumnChart3D(TSCHChartType, v17, v18, v19, v20);
    v192[1] = v182;
    v180 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v21, 4.0, 0.0, -8.0, -2.0);
    v193[1] = v180;
    v178 = objc_msgSend_barChart3D(TSCHChartType, v22, v23, v24, v25);
    v192[2] = v178;
    v176 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v26, 5.0, -3.5, -16.0, 0.0);
    v193[2] = v176;
    v31 = objc_msgSend_stackedBarChart3D(TSCHChartType, v27, v28, v29, v30);
    v192[3] = v31;
    v33 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v32, 5.0, -1.75, -12.0, 0.0);
    v193[3] = v33;
    v38 = objc_msgSend_areaChart3D(TSCHChartType, v34, v35, v36, v37);
    v192[4] = v38;
    v40 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v39, 0.0, -8.25, -5.0, 2.0);
    v193[4] = v40;
    v45 = objc_msgSend_stackedAreaChart3D(TSCHChartType, v41, v42, v43, v44);
    v192[5] = v45;
    v47 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v46, 2.0, -2.0, -10.0, -3.0);
    v193[5] = v47;
    v52 = objc_msgSend_pieChart3D(TSCHChartType, v48, v49, v50, v51);
    v192[6] = v52;
    v54 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v53, 1.0, 0.0, 0.0, 0.0);
    v193[6] = v54;
    v59 = objc_msgSend_lineChart3D(TSCHChartType, v55, v56, v57, v58);
    v192[7] = v59;
    v61 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v60, -1.0, 8.0, 0.0, -16.0);
    v193[7] = v61;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v62, v63, v64, v65, v193, v192, 8);
  }

  else
  {
    v190[0] = v15;
    v184 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v16, 5.0, -1.0, -10.0, -4.0);
    v191[0] = v184;
    v182 = objc_msgSend_stackedColumnChart3D(TSCHChartType, v66, v67, v68, v69);
    v190[1] = v182;
    v180 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v70, 4.0, 0.0, -8.0, -2.0);
    v191[1] = v180;
    v178 = objc_msgSend_barChart3D(TSCHChartType, v71, v72, v73, v74);
    v190[2] = v178;
    v176 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v75, 5.0, 0.0, -16.0, 0.0);
    v191[2] = v176;
    v31 = objc_msgSend_stackedBarChart3D(TSCHChartType, v76, v77, v78, v79);
    v190[3] = v31;
    v33 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v80, 5.0, 0.0, -12.0, 0.0);
    v191[3] = v33;
    v38 = objc_msgSend_areaChart3D(TSCHChartType, v81, v82, v83, v84);
    v190[4] = v38;
    v40 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v85, 0.0, -5.0, -5.0, 2.0);
    v191[4] = v40;
    v45 = objc_msgSend_stackedAreaChart3D(TSCHChartType, v86, v87, v88, v89);
    v190[5] = v45;
    v47 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v90, 2.0, 0.0, -10.0, -3.0);
    v191[5] = v47;
    v52 = objc_msgSend_pieChart3D(TSCHChartType, v91, v92, v93, v94);
    v190[6] = v52;
    v54 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v95, 1.0, 0.0, 0.0, 0.0);
    v191[6] = v54;
    v59 = objc_msgSend_lineChart3D(TSCHChartType, v96, v97, v98, v99);
    v190[7] = v59;
    v61 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v100, 0.0, 0.0, 0.0, 0.0);
    v191[7] = v61;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v101, v102, v103, v104, v191, v190, 8);
  }
  v175 = ;

  v109 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v105, v106, v107, v108);
  if (!objc_msgSend_useLayoutInwardForInsertionIcons(v109, v110, v111, v112, v113))
  {
    v171 = v175;
    goto LABEL_8;
  }

  shouldLayoutInwardForInsertionIcons = objc_msgSend_p_shouldLayoutInwardForInsertionIcons(self, v114, v115, v116, v117);

  if (shouldLayoutInwardForInsertionIcons)
  {
    v109 = objc_msgSend_columnChart3D(TSCHChartType, v119, v120, v121, v122);
    v188[0] = v109;
    v187 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v123, 5.0, 0.0, -10.0, -4.0);
    v189[0] = v187;
    v185 = objc_msgSend_stackedColumnChart3D(TSCHChartType, v124, v125, v126, v127);
    v188[1] = v185;
    v183 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v128, 4.0, 0.0, -8.0, -2.0);
    v189[1] = v183;
    v181 = objc_msgSend_barChart3D(TSCHChartType, v129, v130, v131, v132);
    v188[2] = v181;
    v179 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v133, 5.0, 0.0, -16.0, 0.0);
    v189[2] = v179;
    v177 = objc_msgSend_stackedBarChart3D(TSCHChartType, v134, v135, v136, v137);
    v188[3] = v177;
    v174 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v138, 5.0, 0.0, -12.0, 0.0);
    v189[3] = v174;
    v143 = objc_msgSend_areaChart3D(TSCHChartType, v139, v140, v141, v142);
    v188[4] = v143;
    v145 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v144, 0.0, -8.25, -5.0, 2.0);
    v189[4] = v145;
    v150 = objc_msgSend_stackedAreaChart3D(TSCHChartType, v146, v147, v148, v149);
    v188[5] = v150;
    v152 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v151, 2.0, -1.0, -10.0, -3.0);
    v189[5] = v152;
    v157 = objc_msgSend_pieChart3D(TSCHChartType, v153, v154, v155, v156);
    v188[6] = v157;
    v159 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v158, 1.0, 0.0, 0.0, 0.0);
    v189[6] = v159;
    v164 = objc_msgSend_lineChart3D(TSCHChartType, v160, v161, v162, v163);
    v188[7] = v164;
    v166 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v165, -1.0, 8.0, 0.0, -16.0);
    v189[7] = v166;
    v171 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v167, v168, v169, v170, v189, v188, 8);

LABEL_8:
    goto LABEL_10;
  }

  v171 = v175;
LABEL_10:

  return v171;
}

- (id)p_rectAdjustmentForChartType:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_imageRectAdjustments(self, v5, v6, v7, v8);
  v14 = objc_msgSend_objectForKey_(v9, v10, v11, v12, v13, v4);

  return v14;
}

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)a3
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)imageWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7 documentRoot:(id)a8 shouldCache:(BOOL *)a9
{
  v11 = *&a4;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v210[1] = *MEMORY[0x277D85DE8];
  v208 = a5;
  v18 = a3;
  v207 = a6;
  v19 = a8;
  objc_opt_class();
  v24 = objc_msgSend_p_chartType(self, v20, v21, v22, v23);
  v25 = TSUDynamicCast();

  if (!v25)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHPresetImagerInfoBased imageWithPreset:target:imageSize:imageScale:swatchFrame:documentRoot:shouldCache:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 2044, 0, "invalid nil value for '%{public}s'", "chartType");

    v25 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v26, v27, v28, v29);
  v50 = objc_msgSend_useLayoutInwardForInsertionIcons(v45, v46, v47, v48, v49);

  if (v11 == 2)
  {
    v55 = height;
    v56 = width;
    v57 = y;
    v58 = x;
    goto LABEL_10;
  }

  objc_opt_class();
  if (!(v50 & 1 | ((objc_opt_isKindOfClass() & 1) == 0)) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    TSURoundedRect();
    v58 = v52;
    v57 = v53;
    v56 = v54;
    v55 = v59;
    v208.width = v54;
    v208.height = v59;
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v58 = x;
  v57 = y;
  v56 = width;
  v55 = height;
  if (!v11)
  {
LABEL_9:
    v60 = MEMORY[0x277D81150];
    v61 = a9;
    v62 = v25;
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCHPresetImagerInfoBased imageWithPreset:target:imageSize:imageScale:swatchFrame:documentRoot:shouldCache:]");
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v69, v70, v71, v72, v63, v68, 2078, 0, "invalid operation target");

    v25 = v62;
    a9 = v61;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
  }

LABEL_10:
  v77 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v51, v52, v53, v54);
  v82 = objc_msgSend_isInBackground(v77, v78, v79, v80, v81);

  if (v82)
  {
    v84 = 0;
  }

  else
  {
    v86 = objc_msgSend_activateLayoutCacheForTarget_requestedSwatchFrame_(v25, v83, x, y, width, v11, height);
    v90 = (v86 == 0) | v50;
    v197 = a9;
    if ((v86 == 0) | v50 & 1)
    {
      v91 = objc_msgSend_p_chartType(self, v85, v87, v88, v89);
      v96 = objc_msgSend_p_rectAdjustmentForChartType_(self, v92, v93, v94, v95, v91);
    }

    else
    {
      v96 = 0;
    }

    objc_msgSend_p_canvasScale(self, v85, v87, v88, v89);
    v205 = v57;
    v206 = v97;
    v204 = v58;
    v194 = v96;
    objc_msgSend_p_updateSwatchFrameForRectAdjustmentIfNeeded_rectAdjustment_outSwatchOffset_(self, v98, v58, v57, v56, v96, &v204, v55);
    objc_msgSend_p_updateSwatchFrameForInwardLayoutIfNeeded_outImageSize_outImageScale_outSwatchOffset_outCanvasScale_(self, v99, v100, v101, v102, &v208, &v207, &v204, &v206);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v111 = objc_alloc(MEMORY[0x277D802E0]);
    v198 = v19;
    v116 = objc_msgSend_initWithDocumentRoot_(v111, v112, v113, v114, v115, v19);
    TSUMultiplySizeScalar();
    objc_msgSend_setScaledImageSize_(v116, v117, v118, v119, v120);
    TSUMultiplySizeScalar();
    TSURectWithOriginAndSize();
    objc_msgSend_setUnscaledClipRect_(v116, v121, v122, v123, v124);
    v195 = v86;
    v196 = v25;
    v199 = v18;
    v126 = objc_msgSend_drawableChartInfoForIconWithPreset_target_inFrame_offset_layoutCache_layoutInward_(v25, v125, v104, v106, v108, v18, v11, v86, v90 & 1, v110, v204, v205);
    v210[0] = v126;
    LOBYTE(v19) = 1;
    v131 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v127, v128, v129, v130, v210, 1);
    v193 = v116;
    objc_msgSend_setInfos_(v116, v132, v133, v134, v135, v131);

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v192 = v126;
    v139 = objc_msgSend_chart(v126, v136, 0.0, v137, v138);
    v144 = objc_msgSend_model(v139, v140, v141, v142, v143);
    v149 = objc_msgSend_seriesList(v144, v145, v146, v147, v148);

    v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v150, v151, v152, v153, &v200, v209, 16);
    if (v154)
    {
      v159 = v154;
      v160 = *v201;
      LODWORD(v19) = 1;
      do
      {
        for (i = 0; i != v159; ++i)
        {
          if (*v201 != v160)
          {
            objc_enumerationMutation(v149);
          }

          v162 = objc_msgSend_objectValueForProperty_(*(*(&v200 + 1) + 8 * i), v155, v156, v157, v158, 1160);
          objc_opt_class();
          v163 = TSUDynamicCast();
          v168 = objc_msgSend_identifier(v163, v164, v165, v166, v167);
          v173 = objc_msgSend_isOnDemandResource(v168, v169, v170, v171, v172);

          if (v173)
          {
            LODWORD(v19) = v173 & v19;
          }

          else
          {
            v178 = v19 ^ 1;
            LODWORD(v19) = v173 & v19;
            if ((v178 & 1) == 0)
            {
              LODWORD(v19) = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v174, v175, v176, v177, v162);
            }
          }
        }

        v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v155, v156, v157, v158, &v200, v209, 16);
      }

      while (v159);
    }

    v183 = objc_msgSend_newImage(v193, v179, v180, v181, v182);
    v84 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D811F8], v184, v206, v185, v186, v183, 0);
    CGImageRelease(v183);
    v25 = v196;
    objc_msgSend_didRenderIconForInfo_(v196, v187, v188, v189, v190, v192);
    if (v197)
    {
      *v197 = v19;
    }

    v19 = v198;
    v18 = v199;
  }

  return v84;
}

- (void)p_debugGenerateLayoutCacheWithPreset:(id)a3 target:(int)a4 imageSize:(CGSize)a5 imageScale:(double)a6 swatchFrame:(CGRect)a7
{
  v7 = *&a4;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v82 = a5;
  v81 = a6;
  v13 = a3;
  objc_opt_class();
  v18 = objc_msgSend_p_chartType(self, v14, v15, v16, v17);
  v19 = TSUDynamicCast();

  if (!v19)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHPresetImagerInfoBased p_debugGenerateLayoutCacheWithPreset:target:imageSize:imageScale:swatchFrame:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 2185, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  *v80 = x;
  *&v80[1] = y;
  v39 = objc_msgSend_p_chartType(self, v20, v21, v22, v23);
  v44 = objc_msgSend_p_rectAdjustmentForChartType_(self, v40, v41, v42, v43, v39);

  objc_msgSend_p_updateSwatchFrameForRectAdjustmentIfNeeded_rectAdjustment_outSwatchOffset_(self, v45, x, y, width, v44, v80, height);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  objc_msgSend_p_canvasScale(self, v54, v46, v48, v50);
  v79 = v55;
  v59 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v56, v55, v57, v58);
  objc_msgSend_useLayoutInwardForInsertionIcons(v59, v60, v61, v62, v63);

  objc_msgSend_p_updateSwatchFrameForInwardLayoutIfNeeded_outImageSize_outImageScale_outSwatchOffset_outCanvasScale_(self, v64, v47, v49, v51, &v82, &v81, v80, &v79, v53);
  v69 = objc_msgSend_drawableChartInfoForIconWithPreset_target_inFrame_offset_layoutCache_layoutInward_(v19, v65, v66, v67, v68, v13, v7, 0, 1);

  v74 = objc_msgSend_chart(v69, v70, v71, v72, v73);
  objc_msgSend_debugLayoutCache(v74, v75, v76, v77, v78);
}

- (CGRect)p_updateSwatchFrameForRectAdjustmentIfNeeded:(CGRect)a3 rectAdjustment:(id)a4 outSwatchOffset:(CGPoint *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v15 = v10;
  if (a5)
  {
    v12 = *MEMORY[0x277CBF348];
    *a5 = *MEMORY[0x277CBF348];
  }

  if (v10)
  {
    objc_msgSend_CGRectValue(v10, v11, *&v12, v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    if ((TSURectIsFinite() & 1) == 0)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForRectAdjustmentIfNeeded:rectAdjustment:outSwatchOffset:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 2219, 0, "rect is not finite");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    }

    v43 = width + v21;
    if (v43 <= 0.0 || (v44 = height + v23, v44 <= 0.0))
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForRectAdjustmentIfNeeded:rectAdjustment:outSwatchOffset:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 2234, 0, "Swatch frame adjustments will result in a negative swatchFrame size, so not making any adjustments. We should not get into this state and will likely see odd preset rendering behavior. Please look into this.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    }

    else
    {
      if (a5)
      {
        a5->x = v17;
        a5->y = v19;
      }

      else
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForRectAdjustmentIfNeeded:rectAdjustment:outSwatchOffset:]");
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 2229, 0, "swatchOffset is NULL");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
      }

      height = v44;
      width = v43;
    }
  }

  v75 = x;
  v76 = y;
  v77 = width;
  v78 = height;
  result.size.height = v78;
  result.size.width = v77;
  result.origin.y = v76;
  result.origin.x = v75;
  return result;
}

- (CGRect)p_updateSwatchFrameForInwardLayoutIfNeeded:(CGRect)a3 outImageSize:(CGSize *)a4 outImageScale:(double *)a5 outSwatchOffset:(CGPoint *)a6 outCanvasScale:(double *)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a7)
  {
    *a7 = 1.0;
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3.origin.x, a3.origin.y, a3.size.width, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForInwardLayoutIfNeeded:outImageSize:outImageScale:outSwatchOffset:outCanvasScale:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 2244, 0, "canvasScale is NULL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (TSURectIsFinite() && width > 0.0 && height > 0.0)
  {
    while (1)
    {
      while (1)
      {
        if (width >= 192.0 || height >= 192.0)
        {
          goto LABEL_29;
        }

        if (a4)
        {
          TSUMultiplySizeScalar();
          a4->width = v34;
          a4->height = v35;
        }

        else
        {
          v36 = MEMORY[0x277D81150];
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForInwardLayoutIfNeeded:outImageSize:outImageScale:outSwatchOffset:outCanvasScale:]");
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 2257, 0, "imageSize is NULL");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
        }

        TSUMultiplySizeScalar();
        width = v51;
        height = v52;
        IsFinite = TSURectIsFinite();
        v58 = width > 0.0 ? IsFinite : 0;
        v59 = height > 0.0 ? v58 : 0;
        if (a5)
        {
          break;
        }

        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForInwardLayoutIfNeeded:outImageSize:outImageScale:outSwatchOffset:outCanvasScale:]");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v68, v69, v70, v71, v62, v67, 2265, 0, "imageScale is NULL");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
        if (a6)
        {
          goto LABEL_23;
        }

LABEL_26:
        v76 = MEMORY[0x277D81150];
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v60, v56, v57, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForInwardLayoutIfNeeded:outImageSize:outImageScale:outSwatchOffset:outCanvasScale:]");
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v84, v85, v86, v77, v82, 2270, 0, "swatchOffset is NULL");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
        if ((v59 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v60 = *a5 * 0.5;
      *a5 = v60;
      if (!a6)
      {
        goto LABEL_26;
      }

LABEL_23:
      TSUMultiplyPointScalar();
      a6->x = v30;
      a6->y = v31;
      if ((v59 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  v91 = MEMORY[0x277D81150];
  v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCHPresetImagerInfoBased p_updateSwatchFrameForInwardLayoutIfNeeded:outImageSize:outImageScale:outSwatchOffset:outCanvasScale:]");
  v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v98, v99, v100, v101, v92, v97, 2255, 0, "Starting swatch frame is not valid.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
LABEL_29:
  v106 = x;
  v107 = y;
  v108 = width;
  v109 = height;
  result.size.height = v109;
  result.size.width = v108;
  result.origin.y = v107;
  result.origin.x = v106;
  return result;
}

- (double)p_canvasScale
{
  v5 = objc_msgSend_tsk_phoneUI(MEMORY[0x277D75418], a2, v2, v3, v4);
  result = 2.0;
  if (v5)
  {
    return 3.0;
  }

  return result;
}

@end
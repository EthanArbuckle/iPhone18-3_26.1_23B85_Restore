@interface TSCH3DChartSeriesSceneObject
+ (float)depthLimitFactorForSeriesCount:(int64_t)a3 maxLimitingSeries:(int64_t)a4;
- (BOOL)shouldRenderSeries:(id)a3;
- (float)chartMinZForScene:(id)a3;
- (float)depthForScene:(id)a3;
- (float)shadowCameraDepthLimitAdjustmentFactorForScene:(id)a3;
- (void)postrenderElement:(id)a3;
- (void)prerenderElement:(id)a3;
- (void)renderLabelsSceneObject:(id)a3 pipeline:(id)a4 enumerator:(id)a5 properties:(id)a6;
- (void)sortElements:(id *)a3 pipeline:(id)a4;
- (void)updateElementEffectsStates:(id)a3 depthToWidthRatio:(float)a4;
- (void)updateTilingEffect:(void *)a3 properties:(id)a4 textureTiling:(id)a5 size:(void *)a6;
@end

@implementation TSCH3DChartSeriesSceneObject

- (void)renderLabelsSceneObject:(id)a3 pipeline:(id)a4 enumerator:(id)a5 properties:(id)a6
{
  v9 = a3;
  v160 = a4;
  v10 = a5;
  v156 = a6;
  v16 = objc_msgSend_seriesEnumerator(v10, v11, v12, v13, v14);
  if (v10)
  {
    objc_msgSend_size(v10, v15, v17, v18, v19);
    v20 = (LODWORD(v177[0]) - 1);
  }

  else
  {
    v20 = -1.0;
  }

  v21 = objc_opt_class();
  objc_msgSend_chartSeriesDepth(v21, v22, v23, v24, v25);
  v27 = *&v26;
  v31 = objc_msgSend_scene(v160, v28, v26, v29, v30);
  v155 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v32, v33, v34, v35, v31);

  v40 = objc_msgSend_scene(v160, v36, v37, v38, v39);
  v152 = v10;
  v45 = objc_msgSend_delegateForSceneObject_(v40, v41, v42, v43, v44, v9);

  v51 = objc_msgSend_labels(v156, v46, v47, v48, v49);
  v159 = fmaxf(v20, 1.0);
  *v54.i32 = v27 * 0.5;
  v158 = v27 * 0.5;
  v55 = COERCE_DOUBLE(vdup_lane_s32(v54, 0));
  v157 = *&v55;
  v153 = v45;
  v154 = v16;
  while (1)
  {
    v56 = objc_msgSend_nextSeries(v16, v50, v55, v52, v53);
    v61 = v56;
    if (!v56)
    {
      break;
    }

    v62 = objc_msgSend_index(v56, v57, v58, v59, v60);
    v67 = objc_msgSend_index(v61, v63, v64, v65, v66);
    if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v45, v68, v69, v70, v71, 5, v62, 0, v67, v9) & 1) == 0 && objc_msgSend_showValueLabels(v61, v72, v73, v74, v75))
    {
      memset(v178, 0, 48);
      memset(v177, 0, sizeof(v177));
      v79 = objc_msgSend_series(v61, v76, 0.0, v77, v78);
      objc_msgSend_position(v61, v80, v81, v82, v83);
      objc_msgSend_applyCombinedTransform_series_index_propertyAccessor_(v156, v84, v85, v86, v87, v177, v79, &v169, v155);

      v93 = objc_msgSend_elementEnumerator(v61, v88, v89, v90, v91);
      while (1)
      {
        v97 = objc_msgSend_nextElement(v93, v92, v94, v95, v96);
        v102 = v97;
        if (!v97)
        {
          break;
        }

        objc_msgSend_unitSpaceValue(v97, v98, v99, v100, v101);
        v104 = v103;
        objc_msgSend_axisSpaceValue(v102, v105, v103, v106, v107);
        *&v110 = v104;
        LODWORD(v111) = 1.0;
        v162 = *&v110;
        if (*&v110 >= 0.0 && *&v110 <= 1.0)
        {
          v113 = objc_msgSend_valueLabelPositionForAxisValue_(v61, v108, v109, v111, v110);
          v116 = v113;
          LODWORD(v117) = -8.0;
          HIDWORD(v118) = 0;
          if ((v113 & 8) == 0)
          {
            *&v117 = 0.0;
          }

          LODWORD(v118) = 8.0;
          if ((v113 & 4) != 0)
          {
            v119 = 8.0;
          }

          else
          {
            v119 = *&v117;
          }

          objc_msgSend_position(v102, v114, v117, v118, v115);
          v161 = v119;
          v120 = v169.i32[0];
          sub_276169AD4(v177, &v169, v121);
          v122 = v169;
          v123 = v171;
          v124 = v173;
          v125 = v175;
          v126 = v170;
          v127 = v172;
          v128 = v174;
          v129 = v176;
          v134 = objc_msgSend_valueStringForLabelResources_(v102, v130, v131, v132, v133, v51);
          objc_msgSend_position(v102, v135, v136, v137, v138);
          objc_msgSend_position(v102, v139, v140, v141, v142);
          v143 = v120 / v159;
          v169 = vadd_f32(v125, vmla_f32(vmla_n_f32(vmul_n_f32(v123, v162), v122, v143), v157, v124));
          v170 = v129 + (((v127 * v162) + (v126 * v143)) + (v128 * v158));
          v165 = 0;
          v166 = 0;
          v164[0] = 0;
          *&v164[1] = v161;
          sub_27615613C(&v163);
          LODWORD(v151) = v116 | 2;
          v146 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, v144, 0.0, 0.0, v145, v160, v168, v167, v134, &v169, &v165, v151, v164, &v163);
          objc_msgSend_renderLabelRenderInfo_(v9, v147, v148, v149, v150, v146);
        }
      }

      sub_27616B32C(v178);
      sub_27616B32C(v177);
      v45 = v153;
      v16 = v154;
    }
  }
}

- (void)prerenderElement:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ((objc_msgSend_geometryOnly(v3, v4, v5, v6, v7) & 1) == 0)
  {
    v8 = objc_opt_class();
    objc_msgSend_chartSeriesPolygonOffset(v8, v9, v10, v11, v12);
    v17 = *&v14;
    if (*&v14 > 0.0)
    {
      v18 = objc_msgSend_pipeline(v3, v13, v14, v15, v16);
      v24 = objc_msgSend_processor(v18, v19, v20, v21, v22);
      if (v24)
      {
        v28 = objc_msgSend_pipeline(v3, v23, v25, v26, v27);
        v33 = objc_msgSend_processor(v28, v29, v30, v31, v32);
        v38 = v33;
        if (v33)
        {
          objc_msgSend_renderState(v33, v34, v35, v36, v37);
        }

        else
        {
          v55 = 0u;
          v56 = 0u;
        }
      }

      else
      {
        *&v55 = 0;
        DWORD2(v55) = 16843008;
        BYTE12(v55) = 0;
        v56 = 0uLL;
      }

      BYTE12(v55) = 1;
      LODWORD(v56) = 1065353216;
      if (v3)
      {
        objc_msgSend_index(v3, v39, v40, v41, v42);
        *&v43 = v54;
      }

      else
      {
        v43 = 0.0;
      }

      *&v43 = v17 * *&v43;
      DWORD1(v56) = LODWORD(v43);
      v44 = objc_msgSend_pipeline(v3, v39, v43, v41, v42);
      v49 = objc_msgSend_processor(v44, v45, v46, v47, v48);
      objc_msgSend_setRenderState_(v49, v50, v51, v52, v53, &v55);
    }
  }
}

- (void)postrenderElement:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ((objc_msgSend_geometryOnly(v3, v4, v5, v6, v7) & 1) == 0)
  {
    v8 = objc_opt_class();
    objc_msgSend_chartSeriesPolygonOffset(v8, v9, v10, v11, v12);
    if (*&v14 > 0.0)
    {
      v17 = objc_msgSend_pipeline(v3, v13, v14, v15, v16);
      v23 = objc_msgSend_processor(v17, v18, v19, v20, v21);
      if (v23)
      {
        v27 = objc_msgSend_pipeline(v3, v22, v24, v25, v26);
        v32 = objc_msgSend_processor(v27, v28, v29, v30, v31);
        v37 = v32;
        if (v32)
        {
          objc_msgSend_renderState(v32, v33, v34, v35, v36);
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }
      }

      else
      {
        *&v52 = 0;
        DWORD2(v52) = 16843008;
        BYTE12(v52) = 0;
        v53 = 0uLL;
      }

      BYTE12(v52) = 0;
      v42 = objc_msgSend_pipeline(v3, v38, v39, v40, v41);
      v47 = objc_msgSend_processor(v42, v43, v44, v45, v46);
      objc_msgSend_setRenderState_(v47, v48, v49, v50, v51, &v52);
    }
  }
}

- (void)updateTilingEffect:(void *)a3 properties:(id)a4 textureTiling:(id)a5 size:(void *)a6
{
  v8 = a4;
  v9 = a5;
  v15 = v9;
  if (v9)
  {
    v16 = objc_msgSend_mode(v9, v10, v11, v13, v14);
    objc_msgSend_scale(v15, v17, v18, v19, v20);
    LODWORD(v25) = 1.0;
    if (v16 == 1)
    {
      *&v25 = 2.0;
    }

    LODWORD(v24) = DWORD1(v37);
    *&v22 = *&v25 * *&v37;
    v26 = *&v25 * *(&v37 + 1);
    objc_msgSend_mode(v15, v21, v25, v22, v24, *&v22, v23);
  }

  else
  {
    LODWORD(v11) = 1.0;
    v26 = 1.0;
    objc_msgSend_mode(0, v10, v11, v13, v14, *&v11, v12);
  }

  v40 = 0uLL;
  v39 = 0uLL;
  v37 = xmmword_2764D6230;
  v38 = 0x3F00000041200000;
  sub_27615615C(&v37, 2, v36, 0.0000305175855);
  LODWORD(v27) = v34;
  *(&v27 + 1) = -v26;
  v35 = vdupq_lane_s64(v27, 0);
  sub_2761563D8(v36, &v37, &v35, &v40, &v39, 1, v35, *&v27, v28);
  v29.i64[0] = *(v39.i64 + 4);
  v30 = v39.i32[0];
  v31 = v39.i32[3];
  LODWORD(v32) = v40.i32[0];
  v33 = vdup_lane_s32(*v40.f32, 1).u32[0];
  *(a3 + 5) = v40.i64[0];
  DWORD1(v32) = v40.i32[3];
  *(&v32 + 1) = __PAIR64__(v29.u32[0], v30);
  v29.i32[2] = v33;
  *(a3 + 4) = v30;
  *(a3 + 5) = v31;
  v29.i32[3] = v40.i32[2];
  *a3 = vrev64q_s32(v29);
  *(a3 + 24) = v32;
}

- (void)updateElementEffectsStates:(id)a3 depthToWidthRatio:(float)a4
{
  v6 = a3;
  v11 = objc_msgSend_properties(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_series(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_renderingLightingModelForSeries_(v11, v17, v18, v19, v20, v16);

  if (!v21)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCH3DChartSeriesSceneObject updateElementEffectsStates:depthToWidthRatio:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 191, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_msgSend_lightingModel(v21, v22, v23, v24, v25);
  v46 = objc_msgSend_diffuseTextureTiling(v41, v42, v43, v44, v45);
  v73[0] = xmmword_2764D5F30;
  v73[1] = xmmword_2764D5F30;
  v73[2] = xmmword_2764D5F30;
  __asm { FMOV            V0.2S, #1.0 }

  v71 = _D0;
  v72 = a4;
  objc_msgSend_updateTilingEffect_properties_textureTiling_size_(self, v52, _D0, v53, v54, v73, v11, v46, &v71);
  v59 = objc_msgSend_processor(v6, v55, v56, v57, v58);
  v64 = objc_msgSend_effectsStates(v59, v60, v61, v62, v63);
  v65 = objc_opt_class();
  v70 = objc_msgSend_stateSharingID(v65, v66, v67, v68, v69);
  sub_276181410(v64, v70, v73);
}

- (float)depthForScene:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_elementPropertiesFromScene_(self, v5, v6, v7, v8, v4);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartSeriesSceneObject depthForScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 206, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_depthForScene_(v10, v9, v11, v12, v13, v4);
  v30 = v29;

  return v30;
}

+ (float)depthLimitFactorForSeriesCount:(int64_t)a3 maxLimitingSeries:(int64_t)a4
{
  if (a4 <= 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "+[TSCH3DChartSeriesSceneObject depthLimitFactorForSeriesCount:maxLimitingSeries:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 211, 0, "Max limiting series must be > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (a3 <= a4)
  {
    v24 = a4;
  }

  else
  {
    v24 = a3;
  }

  return a4 / v24;
}

- (float)chartMinZForScene:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_elementPropertiesFromScene_(self, v5, v6, v7, v8, v4);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartSeriesSceneObject chartMinZForScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 218, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_chartMinZForScene_(v10, v9, v11, v12, v13, v4);
  v30 = v29;

  return v30;
}

- (BOOL)shouldRenderSeries:(id)a3
{
  v6 = objc_msgSend_series(a3, a2, v3, v4, v5);
  v11 = objc_msgSend_numberOfValues(v6, v7, v8, v9, v10) != 0;

  return v11;
}

- (float)shadowCameraDepthLimitAdjustmentFactorForScene:(id)a3
{
  v7 = objc_msgSend_elementPropertiesFromScene_(self, a2, v3, v4, v5, a3);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartSeriesSceneObject shadowCameraDepthLimitAdjustmentFactorForScene:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 233, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_msgSend_shadowCameraDepthLimitAdjustmentFactor(v7, v6, v8, v9, v10);
  v27 = v26;

  return v27;
}

- (void)sortElements:(id *)a3 pipeline:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_scene(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v11, v12, v13, v14, v10);

  if (v15)
  {
    objc_msgSend_rotation(v15, v16, v17, v18, v19);
    v20 = v177;
  }

  else
  {
    v20 = 0.0;
  }

  if (v20 >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = -v20;
  }

  v173 = self;
  v175 = v5;
  v27 = objc_msgSend_processor(v175, v22, v23, v24, v25);
  v172 = v15;
  if (!v27)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v28, v29, v30, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v46 = objc_msgSend_scene(v175, v26, v28, v29, v30);
  v176 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v47, v48, v49, v50, v46);

  v51 = *a3;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v56 = objc_msgSend_count(v51, v52, v53, v54, v55);
  sub_276182010(&v185, v56);
  for (i = 0; i < objc_msgSend_count(v51, v57, v58, v59, v60); ++i)
  {
    v66 = objc_msgSend_objectAtIndexedSubscript_(v51, v62, v63, v64, v65, i);
    objc_msgSend_pushMatrix(v27, v67, v68, v69, v70);
    v75 = objc_msgSend_properties(v66, v71, v72, v73, v74);
    v81 = objc_msgSend_series(v66, v76, v77, v78, v79);
    if (v66)
    {
      objc_msgSend_index(v66, v80, v82, v83, v84);
    }

    else
    {
      *v178 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v75, v80, v82, v83, v84, v27, v81, v178, v176);

    *&v178[3] = 0;
    *&v178[1] = 0;
    v178[0] = 1065353216;
    v178[5] = 1065353216;
    v179 = 0;
    v180 = 0;
    v183 = 0;
    v182 = 0;
    v181 = 1065353216;
    v184 = 1065353216;
    objc_msgSend_copyTransformInto_(v27, v85, v86, v87, v88, v178);
    v89 = v66;
    v94 = v89;
    if (v66)
    {
      objc_msgSend_index(v89, v90, v91, v92, v93);
      v95 = v188;
    }

    else
    {
      v95 = 0.0;
    }

    if (v21 <= 85.0)
    {
      v96 = -v95;
    }

    else
    {
      v96 = v95;
    }

    v101 = v186;
    if (v186 >= v187)
    {
      v103 = v185;
      v104 = v186 - v185;
      v105 = (v186 - v185) >> 4;
      v106 = v105 + 1;
      if ((v105 + 1) >> 60)
      {
        sub_276161760();
      }

      v107 = v187 - v185;
      if ((v187 - v185) >> 3 > v106)
      {
        v106 = v107 >> 3;
      }

      v108 = v107 >= 0x7FFFFFFFFFFFFFF0;
      v109 = 0xFFFFFFFFFFFFFFFLL;
      if (!v108)
      {
        v109 = v106;
      }

      if (v109)
      {
        sub_2761820B0(&v185, v109);
      }

      v110 = (v186 - v185) >> 4;
      v111 = 16 * v105;
      *v111 = v96;
      *(v111 + 8) = i;
      v102 = (16 * v105 + 16);
      v112 = (16 * v105 - 16 * v110);
      memcpy((v111 - 16 * v110), v103, v104);
      v113 = v185;
      v185 = v112;
      v186 = v102;
      v187 = 0;
      if (v113)
      {
        operator delete(v113);
      }
    }

    else
    {
      *v186 = v96;
      *(v101 + 1) = i;
      v102 = v101 + 4;
    }

    v186 = v102;
    objc_msgSend_popMatrix(v27, v97, v98, v99, v100);
  }

  v114 = 126 - 2 * __clz((v186 - v185) >> 4);
  if (v186 == v185)
  {
    v115 = 0;
  }

  else
  {
    v115 = v114;
  }

  sub_2761820F8(v185, v186, v178, v115, 1);
  v116 = MEMORY[0x277CBEB18];
  v121 = objc_msgSend_count(v51, v117, v118, v119, v120);
  v127 = objc_msgSend_arrayWithCapacity_(v116, v122, v123, v124, v125, v121);
  for (j = v185; j != v186; j += 4)
  {
    v132 = objc_msgSend_objectAtIndexedSubscript_(v51, v126, v128, v129, v130, *(j + 1));
    objc_msgSend_addObject_(v127, v133, v134, v135, v136, v132);
  }

  v137 = objc_msgSend_count(v51, v126, v128, v129, v130);
  if (v137 != objc_msgSend_count(v127, v138, v139, v140, v141))
  {
    v146 = MEMORY[0x277D81150];
    v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, v149, v150, v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v157 = objc_msgSend_count(v51, v153, v154, v155, v156);
    v162 = objc_msgSend_count(v127, v158, v159, v160, v161);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v163, v164, v165, v166, v147, v152, 59, 0, "size mismatch between elements and sorted %lu, %lu", v157, v162);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v167, v168, v169, v170);
  }

  v171 = v127;
  *a3 = v127;

  if (v185)
  {
    v186 = v185;
    operator delete(v185);
  }
}

@end
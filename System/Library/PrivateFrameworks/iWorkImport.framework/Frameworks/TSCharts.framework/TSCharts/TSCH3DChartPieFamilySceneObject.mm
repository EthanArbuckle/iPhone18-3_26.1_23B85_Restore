@interface TSCH3DChartPieFamilySceneObject
+ (float)calculateHalfAngleForSeries:(id)a3;
+ (id)createBoundsForSeries:(id)a3;
+ (id)createGeometryWithStartAngle:(float)a3 endAngle:(float)a4 bevel:(BOOL)a5 bevelEdges:(BOOL)a6;
+ (id)createMeshForSeries:(id)a3;
+ (id)p_boundsDataBufferWithDepthFactor:(float)a3 angleRange:(void *)a4 includeEndPoints:(BOOL)a5;
+ (id)p_wholePieBounds;
+ (id)wholePieBoundsResource;
+ (unint64_t)p_boundsStepsForAngle:(double)a3;
- (float)explosionAtElementIndex:(void *)a3 forScene:(id)a4;
- (void)renderLabelsSceneObject:(id)a3 pipeline:(id)a4 enumerator:(id)a5 properties:(id)a6;
- (void)setExplosion:(float)a3 atElementIndex:(void *)a4 forScene:(id)a5;
- (void)sortElements:(id *)a3 pipeline:(id)a4;
- (void)updateElementEffectsStates:(id)a3 depthToWidthRatio:(float)a4;
- (void)updateTilingEffect:(void *)a3 properties:(id)a4 textureTiling:(id)a5 depth:(float)a6 percentOfTotal:(float)a7;
@end

@implementation TSCH3DChartPieFamilySceneObject

+ (id)createGeometryWithStartAngle:(float)a3 endAngle:(float)a4 bevel:(BOOL)a5 bevelEdges:(BOOL)a6
{
  v7 = a6;
  v8 = a5;
  v11 = objc_msgSend_geometry(TSCH3DPieWedgeGeometry, a2, *&a3, *&a4, v6);
  v15 = v11;
  LODWORD(v16) = 1044975579;
  if (v8)
  {
    *&v16 = 0.049087;
  }

  *&v13 = vabds_f32(a4, a3);
  *&v16 = *&v13 / *&v16;
  if (*&v16 <= 2)
  {
    objc_msgSend_setAngleSteps_(v11, v12, v16, v13, v14, 2);
  }

  else
  {
    objc_msgSend_setAngleSteps_(v11, v12, v16, v13, v14, *&v16);
  }

  if (v8)
  {
    objc_msgSend_setRadiusSteps_(v15, v17, v18, v19, v20, 8);
  }

  else
  {
    objc_msgSend_setRadiusSteps_(v15, v17, v18, v19, v20, 2);
  }

  *&v22 = a3;
  objc_msgSend_setStartAngle_(v15, v21, v22, v23, v24);
  if (v7)
  {
    objc_msgSend_setBevelEdgeSteps_(v15, v25, v26, v27, v28, 7);
  }

  else
  {
    objc_msgSend_setBevelEdgeSteps_(v15, v25, v26, v27, v28, 0);
  }

  *&v30 = a4;
  objc_msgSend_setEndAngle_(v15, v29, v30, v31, v32);
  *&v33 = +[TSCH3DChartPieFamilySceneObject geometrySpaceRadius]_0();
  objc_msgSend_setRadius_(v15, v34, v33, v35, v36);
  *&v37 = sub_276156338();
  objc_msgSend_setBottomZ_(v15, v38, v37, v39, v40);
  *&v41 = sub_276156344();
  objc_msgSend_setTopZ_(v15, v42, v41, v43, v44);
  objc_msgSend_generateArrays(v15, v45, v46, v47, v48);

  return v15;
}

+ (float)calculateHalfAngleForSeries:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_model(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_seriesIndex(v3, v9, v10, v11, v12);
  v18 = objc_msgSend_pieSeriesModelCacheForSeries_(v8, v14, v15, v16, v17, v13);
  objc_msgSend_midAngle(v18, v19, v20, v21, v22);
  v24 = v23;
  objc_msgSend_startAngle(v18, v25, v23, v26, v27);
  *&v28 = v24 - v28;
  *&v24 = fabsf(*&v28);

  return *&v24;
}

+ (unint64_t)p_boundsStepsForAngle:(double)a3
{
  v3 = vcvtpd_s64_f64(a3 / 0.785398163 + -0.00100000005);
  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (id)p_boundsDataBufferWithDepthFactor:(float)a3 angleRange:(void *)a4 includeEndPoints:(BOOL)a5
{
  v5 = a5;
  v9 = sub_276156338();
  v10 = sub_276156344();
  *&v11 = v9 * a3;
  *&v12 = v10 * a3;
  v26[0] = v9 * a3;
  v26[1] = *&v12;
  objc_msgSend_geometrySpaceRadius(a1, v13, v12, v11, v14);
  v16 = v15;
  v20 = objc_msgSend_p_boundsStepsForAngle_(a1, v17, *(a4 + 1), v18, v19);
  v25[0] = 0.0;
  v25[1] = 0.0;
  v23 = sub_27635C7DC(a4, v20, v5, v26, 2, v25, v16, v21, v22);

  return v23;
}

+ (id)p_wholePieBounds
{
  *&v3 = sub_2761564F4();
  v8 = xmmword_2764D6270;
  v6 = objc_msgSend_p_boundsDataBufferWithDepthFactor_angleRange_includeEndPoints_(a1, v4, v3, 0.0, v5, &v8, 0);

  return v6;
}

+ (id)wholePieBoundsResource
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27618A790;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46830 != -1)
  {
    dispatch_once(&qword_280A46830, block);
  }

  v2 = qword_280A46828;

  return v2;
}

+ (id)createBoundsForSeries:(id)a3
{
  objc_msgSend_calculateHalfAngleForSeries_(a1, a2, v3, v4, v5, a3);
  v8 = v7;
  v9 = -v8;
  v10 = v8 + v8;
  *v15 = v9;
  *&v15[1] = v10;
  LODWORD(v10) = 1.0;
  v13 = objc_msgSend_p_boundsDataBufferWithDepthFactor_angleRange_includeEndPoints_(a1, v11, v10, v9, v12, v15, 1);

  return v13;
}

+ (id)createMeshForSeries:(id)a3
{
  v4 = a3;
  v64 = 0xBF000000BF000000;
  v65 = sub_276156338();
  v66 = 0x3F0000003F000000;
  v67 = sub_276156344();
  v7 = objc_msgSend_model(v4, v5, -6.7429742e-62, 0.0000305175853, v6, 0xBF800000B33BBD2ELL, 0, 0xB33BBD2E3F800000, 0, 0, 0x3F7FFFFFu, 0x3F80000000000000);
  v12 = objc_msgSend_chartInfo(v7, v8, v9, v10, v11);

  if (objc_msgSend_isSingleCircleSpecialCaseOutSeries_(v12, v13, v14, v15, v16, 0))
  {
    v21 = 0;
  }

  else
  {
    v22 = objc_msgSend_model(v4, v17, v18, v19, v20);
    v27 = objc_msgSend_chartInfo(v22, v23, v24, v25, v26);
    v21 = objc_msgSend_intValueForProperty_defaultValue_(v27, v28, v29, v30, v31, 1068, 0) != 0;
  }

  v32 = [TSCH3DTexCoordGenerationCube alloc];
  v37 = objc_msgSend_initWithBBox_transform_(v32, v33, v34, v35, v36, &v64, &v63);
  objc_msgSend_calculateHalfAngleForSeries_(a1, v38, v39, v40, v41, v4);
  *&v43 = v42;
  *&v44 = -v42;
  v47 = objc_msgSend_createGeometryWithStartAngle_endAngle_bevel_bevelEdges_(a1, v45, v44, v43, v46, 1, v21);
  v52 = objc_msgSend_normalDirectionMapper(v47, v48, v49, v50, v51);
  objc_msgSend_setNormalDirectionMapper_(v37, v53, v54, v55, v56, v52);

  v61 = objc_msgSend_dataWithGeometry_texcoordGenerator_(TSCH3DMeshData, v57, v58, v59, v60, v47, v37);

  return v61;
}

- (void)renderLabelsSceneObject:(id)a3 pipeline:(id)a4 enumerator:(id)a5 properties:(id)a6
{
  v9 = a3;
  v134 = a4;
  v10 = a5;
  v133 = a6;
  v15 = objc_msgSend_reverseSeriesEnumerator(v10, v11, v12, v13, v14);
  v132 = objc_msgSend_info(v10, v16, v17, v18, v19);
  v131 = v10;
  v24 = objc_msgSend_model(v10, v20, v21, v22, v23);
  isSingleCircleSpecialCaseOutSeries = objc_msgSend_isSingleCircleSpecialCaseOutSeries_(v132, v25, v26, v27, v28, 0);
  v34 = objc_msgSend_scene(v134, v30, v31, v32, v33);
  v39 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v35, v36, v37, v38, v34);

  v44 = objc_msgSend_scene(v134, v40, v41, v42, v43);
  v49 = objc_msgSend_delegateForSceneObject_(v44, v45, v46, v47, v48, v9);

  while (1)
  {
    v54 = objc_msgSend_nextSeries(v15, v50, v51, v52, v53);
    v59 = v54;
    if (!v54)
    {
      break;
    }

    v60 = objc_msgSend_index(v54, v55, v56, v57, v58);
    v65 = objc_msgSend_index(v59, v61, v62, v63, v64);
    if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v49, v66, v67, v68, v69, 5, v60, 0, v65, v9) & 1) == 0)
    {
      v74 = objc_msgSend_index(v59, v70, v71, v72, v73);
      v79 = objc_msgSend_pieSeriesModelCacheForSeries_(v24, v75, v76, v77, v78, v74);
      if (objc_msgSend_shouldRenderLabel(v79, v80, v81, v82, v83))
      {
        v87 = 0.0;
        v136 = 0.0;
        if ((isSingleCircleSpecialCaseOutSeries & 1) == 0)
        {
          v88 = objc_msgSend_series(v59, v84, 0.0, v85, v86);
          objc_msgSend_effectiveLabelExplosion(v88, v89, v90, v91, v92);
          *&v93 = v93 * 0.5 / 100.0;
          v136 = *&v93;
        }

        objc_msgSend_position(v59, v84, v87, v85, v86);
        memset(v154, 0, sizeof(v154));
        memset(v153, 0, sizeof(v153));
        v97 = objc_msgSend_series(v59, v94, 0.0, v95, v96);
        objc_msgSend_applyCombinedTransform_series_index_propertyAccessor_(v133, v98, v99, v100, v101, v153, v97, &v155, v39);

        sub_276169AD4(v153, &v145, v102);
        objc_msgSend_seriesAxisValue(v79, v103, v104, v105, v106);
        LODWORD(v97) = objc_msgSend_valueLabelPositionForAxisValue_(v59, v107, v108, v109, v110);
        *&v111 = sub_276156344();
        v135 = *&v111;
        v112 = v145;
        v113 = v147;
        v114 = v149;
        v115 = v151;
        v116 = v146;
        v117 = v148;
        v118 = v150;
        v119 = v152;
        v123 = objc_msgSend_labelString(v79, v120, v111, v121, v122);
        v144[0] = v155;
        v144[1] = v156;
        v143[0] = v155;
        v143[1] = v156;
        v141 = vadd_f32(v115, vmla_n_f32(vmla_f32(vmul_n_f32(v113, v136), 0, v112), v114, v135));
        v142 = v119 + (((v136 * v117) + (v116 * 0.0)) + (v118 * v135));
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v137 = 0;
        LODWORD(v130) = v97;
        v125 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, v124, 0.0, 0.0, 0.0, v134, v144, v143, v123, &v141, &v139, v130, &v138, &v137);
        objc_msgSend_renderLabelRenderInfo_(v9, v126, v127, v128, v129, v125);

        sub_27616B32C(v154);
        sub_27616B32C(v153);
      }
    }
  }
}

- (void)updateTilingEffect:(void *)a3 properties:(id)a4 textureTiling:(id)a5 depth:(float)a6 percentOfTotal:(float)a7
{
  v10 = a5;
  v16 = objc_msgSend_mode(v10, v11, v12, v13, v14);
  if (!v16)
  {
    LODWORD(v17) = 1.0;
    v64 = 1.0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_7:
    __asm { FMOV            V0.2S, #1.0 }

    v21 = -_D0;
    goto LABEL_8;
  }

  sub_276156200(a7);
  v64 = *&v17;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_3:
  objc_msgSend_scale(v10, v15, v17, v18, v19);
  v20.i32[0] = 2.0;
  if (!v16)
  {
    v20.f32[0] = 1.0;
  }

  v20.f32[1] = -v20.f32[0];
  v21 = COERCE_DOUBLE(vmul_f32(v20, v75[0]));
LABEL_8:
  v63 = *&v21;
  sub_276156254(v72, a7);
  v68 = 0xBF000000BF000000;
  v69 = v73;
  v70 = 0x3F0000003F000000;
  v71 = v74;
  v67 = 0uLL;
  v66 = 0uLL;
  sub_27615615C(v72, 2, v75, 0.0000305175853);
  v27.i64[0] = v63;
  v27.i64[1] = v63;
  v65 = vmulq_n_f32(v27, v64);
  sub_2761563D8(v75, &v68, &v65, &v67, &v66, 2, v65, *&v63, v28);
  if (byte_280A46430 == 1)
  {
    v36 = MEMORY[0x277CCACA8];
    v60 = v66.f32[0];
    sub_276152FD4("vec4(%f, %f, %f, %f)", v29, v30, v31, v32, v33, v34, v35, SLOBYTE(v60));
    if (v76 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, v75);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v36, v37, v38, v39, v40, *v75);
    }
    v48 = ;
    if (v76 < 0)
    {
      operator delete(*v75);
    }

    v49 = MEMORY[0x277CCACA8];
    v62 = v67.f32[3];
    v61 = v67.f32[0];
    sub_276152FD4("vec4(%f, %f, %f, %f)", v41, v42, v43, v44, v45, v46, v47, SLOBYTE(v61));
    if (v76 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v75);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, *v75);
    }
    v54 = ;
    if (v76 < 0)
    {
      operator delete(*v75);
    }

    NSLog(&cfstr_ScaleOffsetDep.isa, v48, v54, a6, *&v62);
  }

  v55.i64[0] = *(v66.i64 + 4);
  v56 = v66.i32[0];
  v57 = v66.i32[3];
  LODWORD(v58) = v67.i32[0];
  v59 = vdup_lane_s32(*v67.f32, 1).u32[0];
  *(a3 + 5) = v67.i64[0];
  DWORD1(v58) = v67.i32[3];
  *(&v58 + 1) = __PAIR64__(v55.u32[0], v56);
  v55.i32[2] = v59;
  *(a3 + 4) = v56;
  *(a3 + 5) = v57;
  v55.i32[3] = v67.i32[2];
  *a3 = vrev64q_s32(v55);
  *(a3 + 24) = v58;
}

- (void)updateElementEffectsStates:(id)a3 depthToWidthRatio:(float)a4
{
  v6 = a3;
  v11 = objc_msgSend_properties(v6, v7, v8, v9, v10);
  v12 = objc_opt_class();
  v17 = objc_msgSend_getPropertiesOfType_(v11, v13, v14, v15, v16, v12);

  if (!v17)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DChartPieFamilySceneObject updateElementEffectsStates:depthToWidthRatio:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieFamilySceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 288, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v37 = objc_msgSend_series(v6, v18, v19, v20, v21);
  v42 = objc_msgSend_renderingLightingModelForSeries_(v17, v38, v39, v40, v41, v37);

  if (!v42)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DChartPieFamilySceneObject updateElementEffectsStates:depthToWidthRatio:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPieFamilySceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 290, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  v62 = objc_msgSend_lightingModel(v42, v43, v44, v45, v46);
  v67 = objc_msgSend_diffuseTextureTiling(v62, v63, v64, v65, v66);
  v73 = objc_msgSend_processor(v6, v68, v69, v70, v71);
  v76 = 0.00781250185;
  v94[0] = xmmword_2764D5F30;
  v94[1] = xmmword_2764D5F30;
  v94[2] = xmmword_2764D5F30;
  if (v6)
  {
    objc_msgSend_index(v6, v72, 0.00781250185, v74, v75);
  }

  else
  {
    v93 = 0;
  }

  objc_msgSend_percentOfTotalAtElementIndex_(v17, v72, v76, v74, v75, &v93);
  LODWORD(v78) = v77;
  *&v79 = a4;
  objc_msgSend_updateTilingEffect_properties_textureTiling_depth_percentOfTotal_(self, v80, v79, v78, v81, v94, v17, v67);
  v86 = objc_msgSend_effectsStates(v73, v82, v83, v84, v85);
  v87 = objc_opt_class();
  v92 = objc_msgSend_stateSharingID(v87, v88, v89, v90, v91);
  sub_276181410(v86, v92, v94);
}

- (float)explosionAtElementIndex:(void *)a3 forScene:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_scenePropertiesKey(self, v7, v8, v9, v10);
  v16 = objc_msgSend_propertiesForType_(v6, v12, v13, v14, v15, v11);

  objc_msgSend_explosionAtElementIndex_(v16, v17, v18, v19, v20, a3);
  v22 = v21;

  return v22;
}

- (void)setExplosion:(float)a3 atElementIndex:(void *)a4 forScene:(id)a5
{
  v22 = a5;
  v12 = objc_msgSend_scenePropertiesKey(self, v8, v9, v10, v11);
  v17 = objc_msgSend_mutablePropertiesForType_(v22, v13, v14, v15, v16, v12);

  *&v18 = a3;
  objc_msgSend_setExplosion_atElementIndex_(v17, v19, v18, v20, v21, a4);
}

- (void)sortElements:(id *)a3 pipeline:(id)a4
{
  v5 = a4;
  v154 = self;
  v156 = v5;
  v11 = objc_msgSend_processor(v156, v6, v7, v8, v9);
  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_scene(v156, v10, v12, v13, v14);
  v35 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v31, v32, v33, v34, v30);

  v36 = *a3;
  __src = 0;
  v166 = 0;
  v167 = 0;
  v41 = objc_msgSend_count(v36, v37, v38, v39, v40);
  sub_276182010(&__src, v41);
  v46 = 0;
  v157 = v35;
  while (v46 < objc_msgSend_count(v36, v42, v43, v44, v45))
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(v36, v47, v48, v49, v50, v46);
    objc_msgSend_pushMatrix(v11, v52, v53, v54, v55);
    v60 = objc_msgSend_properties(v51, v56, v57, v58, v59);
    v66 = objc_msgSend_series(v51, v61, v62, v63, v64);
    if (v51)
    {
      objc_msgSend_index(v51, v65, v67, v68, v69);
    }

    else
    {
      *v158 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v60, v65, v67, v68, v69, v11, v66, v158, v35);

    *&v158[3] = 0;
    *&v158[1] = 0;
    v158[0] = 1065353216;
    v158[5] = 1065353216;
    v159 = 0;
    v160 = 0;
    v163 = 0;
    v162 = 0;
    v161 = 1065353216;
    v164 = 1065353216;
    objc_msgSend_copyTransformInto_(v11, v70, v71, v72, v73, v158);
    v74 = v51;
    v79 = v74;
    if (v51)
    {
      objc_msgSend_index(v74, v75, v76, v77, v78);
      v80 = v168;
    }

    else
    {
      v80 = 0.0;
    }

    v85 = v166;
    if (v166 >= v167)
    {
      v87 = __src;
      v88 = v166 - __src;
      v89 = (v166 - __src) >> 4;
      v90 = v89 + 1;
      if ((v89 + 1) >> 60)
      {
        sub_276161760();
      }

      v91 = v167 - __src;
      if ((v167 - __src) >> 3 > v90)
      {
        v90 = v91 >> 3;
      }

      v92 = v91 >= 0x7FFFFFFFFFFFFFF0;
      v93 = 0xFFFFFFFFFFFFFFFLL;
      if (!v92)
      {
        v93 = v90;
      }

      if (v93)
      {
        sub_2761820B0(&__src, v93);
      }

      v94 = 16 * v89;
      *v94 = v80;
      *(v94 + 8) = v46;
      v86 = (16 * v89 + 16);
      memcpy(0, v87, v88);
      v95 = __src;
      __src = 0;
      v166 = v86;
      v167 = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v35 = v157;
    }

    else
    {
      *v166 = v80;
      *(v85 + 1) = v46;
      v86 = v85 + 4;
    }

    v166 = v86;
    objc_msgSend_popMatrix(v11, v81, v82, v83, v84);

    ++v46;
  }

  v96 = 126 - 2 * __clz((v166 - __src) >> 4);
  if (v166 == __src)
  {
    v97 = 0;
  }

  else
  {
    v97 = v96;
  }

  sub_2761820F8(__src, v166, v158, v97, 1);
  v98 = MEMORY[0x277CBEB18];
  v103 = objc_msgSend_count(v36, v99, v100, v101, v102);
  v109 = objc_msgSend_arrayWithCapacity_(v98, v104, v105, v106, v107, v103);
  for (i = __src; i != v166; i += 4)
  {
    v114 = objc_msgSend_objectAtIndexedSubscript_(v36, v108, v110, v111, v112, *(i + 1));
    objc_msgSend_addObject_(v109, v115, v116, v117, v118, v114);
  }

  v119 = objc_msgSend_count(v36, v108, v110, v111, v112);
  if (v119 != objc_msgSend_count(v109, v120, v121, v122, v123))
  {
    v128 = MEMORY[0x277D81150];
    v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, v131, v132, v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v139 = objc_msgSend_count(v36, v135, v136, v137, v138);
    v144 = objc_msgSend_count(v109, v140, v141, v142, v143);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v145, v146, v147, v148, v129, v134, 59, 0, "size mismatch between elements and sorted %lu, %lu", v139, v144);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151, v152);
  }

  v153 = v109;
  *a3 = v109;

  if (__src)
  {
    v166 = __src;
    operator delete(__src);
  }
}

@end
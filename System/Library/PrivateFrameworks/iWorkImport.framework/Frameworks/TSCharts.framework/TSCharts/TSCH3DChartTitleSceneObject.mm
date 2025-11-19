@interface TSCH3DChartTitleSceneObject
+ (BOOL)setLabelWrapBounds:(void *)a3 forScene:(id)a4;
+ (CGSize)labelWrapSizeForScene:(id)a3;
+ (CGSize)p_labelWrapSizeForScene:(id)a3 returningSizeValue:(id *)a4;
+ (id)partWithChartInfo:(id)a3 styleProvidingSource:(id)a4;
+ (void)setSelectionPath:(id)a3 selectionMode:(int)a4 forScene:(id)a5;
- (id)renderInfoForSelectionPath:(id)a3 info:(id)a4;
- (void)p_renderLabel:(id)a3;
- (void)renderAnnotatedLabels:(id)a3;
- (void)renderLabels:(id)a3;
@end

@implementation TSCH3DChartTitleSceneObject

+ (CGSize)p_labelWrapSizeForScene:(id)a3 returningSizeValue:(id *)a4
{
  v8 = objc_msgSend_propertiesForType_(a3, a2, v4, v5, v6, @"TSCH3DChartTitleSceneObjectLabelWrapBoundsPropertyKey");
  v13 = v8;
  if (!v8)
  {
    v15 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  objc_msgSend_CGSizeValue(v8, v9, v10, v11, v12);
  v15 = v14;
  v17 = v16;
  if (a4)
  {
LABEL_3:
    v18 = v13;
    *a4 = v13;
  }

LABEL_4:

  v19 = v15;
  v20 = v17;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (BOOL)setLabelWrapBounds:(void *)a3 forScene:(id)a4
{
  v6 = a4;
  v31 = 0;
  objc_msgSend_p_labelWrapSizeForScene_returningSizeValue_(a1, v7, v8, v9, v10, v6, &v31);
  v28 = v12;
  v29 = v11;
  v13 = v31;
  v14 = *a3;
  *&v30[0] = vsub_f32(*(a3 + 8), *a3);
  objc_msgSend_adjustLabelWrapSize_forScene_(TSCH3DChartResizer, v15, v30[0], *&v14, v16, v30, v6);
  v19 = vcvt_s32_f32(*&v30[1]);
  if (v13 && (*&v20.f64[0] = v29, *&v20.f64[1] = v28, *&v20.f64[0] = vsub_f32(vcvt_f32_s32(v19), vcvt_f32_f64(v20)), v18 = vcgez_f32(*&v20.f64[0]), *&v20.f64[0] = vcgt_f32(vbsl_s8(v18, *&v20.f64[0], vneg_f32(*&v20.f64[0])), vdup_n_s32(0x358637BDu)), ((LODWORD(v20.f64[0]) | HIDWORD(v20.f64[0])) & 1) == 0))
  {
    v26 = 0;
  }

  else
  {
    v21 = objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v17, v19.i32[0], v19.i32[1], *&v18, v28, v29);
    objc_msgSend_setProperties_forType_(v6, v22, v23, v24, v25, v21, @"TSCH3DChartTitleSceneObjectLabelWrapBoundsPropertyKey");

    v26 = 1;
  }

  return v26;
}

+ (CGSize)labelWrapSizeForScene:(id)a3
{
  v4 = a3;
  v35 = 0;
  objc_msgSend_p_labelWrapSizeForScene_returningSizeValue_(a1, v5, v6, v7, v8, v4, &v35);
  v10 = v9;
  v12 = v11;
  v14 = v35;
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "+[TSCH3DChartTitleSceneObject labelWrapSizeForScene:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartTitleSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 325, 0, "invalid nil value for '%{public}s'", "sizeValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = v10;
  v34 = v12;
  result.height = v34;
  result.width = v33;
  return result;
}

+ (id)partWithChartInfo:(id)a3 styleProvidingSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_styleIndexForInfo_(a1, v8, v9, v10, v11, v6);
  if (objc_msgSend_supportsStyleProvidingSource(a1, v13, v14, v15, v16))
  {
    objc_msgSend_propertiesWithInfo_styleIndex_styleProvidingSource_(TSCH3DChartTitleProperties, v17, v18, v19, v20, v6, v12, v7);
  }

  else
  {
    objc_msgSend_propertiesWithInfo_styleIndex_styleProvidingSource_(TSCH3DChartTitleProperties, v17, v18, v19, v20, v6, v12, 0);
  }
  v21 = ;
  v26 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v22, v23, v24, v25, 0, v21);

  return v26;
}

- (void)p_renderLabel:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_scene(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_delegateForSceneObject_(v9, v10, v11, v12, v13, self);

  v19 = objc_msgSend_labelType(self, v15, v16, v17, v18);
  if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v14, v20, v21, v22, v23, v19, 0, 0, 0, self) & 1) == 0)
  {
    v28 = objc_msgSend_scene(v4, v24, v25, v26, v27);
    v29 = objc_opt_class();
    v34 = objc_msgSend_partForType_(v28, v30, v31, v32, v33, v29);

    v39 = objc_msgSend_properties(v34, v35, v36, v37, v38);
    v44 = objc_msgSend_chartInfo(v39, v40, v41, v42, v43);
    if (objc_msgSend_hidden(v39, v45, v46, v47, v48))
    {
      shouldSkipLabelsIfHidden = objc_msgSend_shouldSkipLabelsIfHidden(v4, v49, v50, v51, v52);
    }

    else
    {
      shouldSkipLabelsIfHidden = 0;
    }

    if (shouldSkipLabelsIfHidden & 1 | ((objc_msgSend_enabledForInfo_(self, v49, v50, v51, v52, v44) & 1) == 0))
    {
      goto LABEL_19;
    }

    v58 = objc_msgSend_cachedPositioner(v39, v54, v55, v56, v57);
    v63 = objc_msgSend_scene(v4, v59, v60, v61, v62);
    hasScene = objc_msgSend_hasScene_(v58, v64, v65, v66, v67, v63);

    if ((hasScene & 1) == 0)
    {
      v73 = objc_msgSend_chartType(v44, v69, v70, v71, v72);
      v78 = objc_msgSend_scene(v4, v74, v75, v76, v77);
      v83 = objc_msgSend_titlePositionerWithInfo_scene_(v73, v79, v80, v81, v82, v44, v78);

      v58 = v83;
      objc_msgSend_setCachedPositioner_(v39, v84, v85, v86, v87, v83);
    }

    v153 = v58;
    objc_msgSend_labelTransformForPositioner_(self, v69, v70, v71, v72, v58);
    v88 = objc_opt_class();
    v93 = objc_msgSend_scene(v4, v89, v90, v91, v92);
    objc_msgSend_labelWrapSizeForScene_(v88, v94, v95, v96, v97, v93);
    v99 = v98;
    v101 = v100;

    objc_msgSend_wrapWidthForSize_labelTransform_(v58, v102, v99, v101, v103, &v171);
    v105 = v104;
    v109 = objc_msgSend_textForInfo_(self, v106, v104, v107, v108, v44);
    v114 = v109;
    if (v105 <= 0.0)
    {
      v145 = 0;
LABEL_18:
      v146 = objc_msgSend_labels(v39, v110, v111, v112, v113);
      v170 = 0x200000001;
      v154[0] = MEMORY[0x277D85DD0];
      v154[1] = 3321888768;
      v154[2] = sub_276179094;
      v154[3] = &unk_28851CEA8;
      v155 = v4;
      v159 = 0;
      v160 = 0;
      v161 = v145;
      v147 = v114;
      v162 = v171;
      v163 = v172;
      v164 = v173;
      v165 = v174;
      v166 = 0;
      v167 = 0;
      v158 = v105;
      v156 = v147;
      v157 = self;
      objc_msgSend_renderLabelsResourcesSessionWithResources_expectedSize_pipeline_renderBlock_(self, v148, COERCE_DOUBLE(__PAIR64__(DWORD1(v171), v172)), v149, v150, v146, &v170, v155, v154);

LABEL_19:
      goto LABEL_20;
    }

    v151 = v34;
    v152 = v109;
    v115 = objc_msgSend_scene(v4, v110, v111, v112, v113);
    v120 = objc_msgSend_contextInfoForScene_(TSCH3DLabelBitmapContextInfo, v116, v117, v118, v119, v115);

    v125 = objc_msgSend_labels(v39, v121, v122, v123, v124);
    v170 = 0;
    v129 = objc_msgSend_resourceAtIndex_string_bitmapContextInfo_labelWidth_(v125, v126, v105, v127, v128, &v170, v152, v120);

    v134 = objc_msgSend_labels(v39, v130, v131, v132, v133);
    v170 = 0x100000000;
    v138 = objc_msgSend_resourceAtIndex_string_bitmapContextInfo_labelWidth_(v134, v135, 0.0, v136, v137, &v170, v152, v120);

    if (v138)
    {
      objc_msgSend_labelSize(v138, v139, v140, v141, v142);
      if (v129)
      {
LABEL_11:
        objc_msgSend_labelSize(v129, v139, v140, v141, v142);
        v144 = v168;
        v143 = v169;
LABEL_15:
        v145 = *&v170 <= v144 && *(&v170 + 1) <= v143;
        if (*&v170 <= v144 && *(&v170 + 1) <= v143)
        {
          v105 = 0.0;
        }

        v34 = v151;
        v114 = v152;
        goto LABEL_18;
      }
    }

    else
    {
      v170 = 0;
      if (v129)
      {
        goto LABEL_11;
      }
    }

    v143 = 0.0;
    v144 = 0.0;
    goto LABEL_15;
  }

LABEL_20:
}

- (void)renderAnnotatedLabels:(id)a3
{
  v12 = a3;
  if (objc_msgSend_isAnnotated(self, v4, v5, v6, v7))
  {
    objc_msgSend_p_renderLabel_(self, v8, v9, v10, v11, v12);
  }
}

- (void)renderLabels:(id)a3
{
  v12 = a3;
  if ((objc_msgSend_isAnnotated(self, v4, v5, v6, v7) & 1) == 0)
  {
    objc_msgSend_p_renderLabel_(self, v8, v9, v10, v11, v12);
  }
}

+ (void)setSelectionPath:(id)a3 selectionMode:(int)a4 forScene:(id)a5
{
  v13 = objc_msgSend_mutablePropertiesForType_(a5, a2, v5, v6, v7, a1);
  objc_msgSend_setHidden_(v13, v9, v10, v11, v12, a4 == 2);
}

- (id)renderInfoForSelectionPath:(id)a3 info:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_textForInfo_(self, v6, v7, v8, v9, v5);
  v11 = objc_opt_class();
  v16 = objc_msgSend_styleIndexForInfo_(v11, v12, v13, v14, v15, v5);
  v17 = objc_opt_class();
  objc_msgSend_textRotationForChartInfo_(v17, v18, v19, v20, v21, v5);
  v26 = objc_msgSend_renderInfoWithString_styleIndex_rotation_(TSCH3DSelectionPathRenderInfo, v22, v23, v24, v25, v10, v16);

  return v26;
}

@end
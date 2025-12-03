@interface TSCH3DChartAxisLabelsSceneObject
+ (id)partWithEnumerator:(id)enumerator chartInfo:(id)info styleIndex:(unint64_t)index;
+ (unsigned)valueAxisLabelAlignmentForScene:(id)scene;
+ (void)cacheValueAxisLabelAlignmentForScene:(id)scene;
+ (void)setSelectionPath:(id)path selectionMode:(int)mode forScene:(id)scene;
- (BOOL)canEditTextForSelectionPath:(id)path forInfo:(id)info;
- (BOOL)canRenderSelectionPath:(id)path forInfo:(id)info;
- (id)convertSelectionPathTo3D:(id)d path:(id)path;
- (id)effects;
- (id)renderInfoForSelectionPath:(id)path info:(id)info;
- (id)selectionPathForInfo:(id)info axis:(id)axis selectionPathLabelIndex:(unint64_t)index;
- (id)selectionPathForInfo:(id)info scene:(id)scene pickedPoint:(id)point;
- (int)knobsModeForLabelType:(int)type scene:(id)scene;
- (int64_t)p_categoryStride:(id)stride;
- (tvec3<float>)labelPositionDirectionForScene:(id)scene enumerator:(id)enumerator;
- (tvec3<float>)p_categoryLabelsOffsetFromAccessor:(id)accessor;
- (tvec3<float>)p_valueLabelsOffsetFromAccessor:(id)accessor;
- (unsigned)alignmentForPositioner:(id)positioner scene:(id)scene enumerator:(id)enumerator returningDirection:(void *)direction;
- (void)p_renderCategoryLabels:(id)labels;
- (void)p_renderLabels:(id)labels labelType:(int)type part:(id)part positioner:(id)positioner offset:(void *)offset offset2DBlock:(id)block strideBlock:(id)strideBlock skipFirst:(BOOL)self0 showLast:(BOOL)self1;
- (void)p_renderValueLabels:(id)labels;
- (void)p_setOffset:(void *)offset forLabelType:(int)type pipeline:(id)pipeline part:(id)part positioner:(id)positioner;
- (void)postRenderBounds:(id)bounds;
@end

@implementation TSCH3DChartAxisLabelsSceneObject

+ (id)partWithEnumerator:(id)enumerator chartInfo:(id)info styleIndex:(unint64_t)index
{
  enumeratorCopy = enumerator;
  infoCopy = info;
  v39 = objc_msgSend_count(enumeratorCopy, v9, v10, v11, v12);
  v40 = 1;
  v17 = objc_msgSend_resourcesWithSize_(TSCH3DLabelResources, v13, v14, v15, v16, &v39);
  v23 = objc_msgSend_paragraphStyleAtIndex_(infoCopy, v18, v19, v20, v21, index);
  for (i = 0; i < objc_msgSend_count(enumeratorCopy, v22, v24, v25, v26); ++i)
  {
    v39 = i;
    v40 = 0;
    objc_msgSend_setParagraphStyle_forKey_atIndex_(v17, v28, v29, v30, v31, v23, index, &v39);
  }

  v32 = objc_msgSend_propertiesWithInfo_labels_styleIndex_(TSCH3DChartAxisLabelsProperties, v28, v29, v30, v31, infoCopy, v17, index);
  v37 = objc_msgSend_scenePartWithEnumerator_properties_(TSCH3DScenePart, v33, v34, v35, v36, enumeratorCopy, v32);

  return v37;
}

+ (void)setSelectionPath:(id)path selectionMode:(int)mode forScene:(id)scene
{
  pathCopy = path;
  sceneCopy = scene;
  v12 = objc_msgSend_kind(TSCH3DCategoryAxisLabelKind, v8, v9, v10, v11);
  v17 = objc_msgSend_mutablePropertiesForType_(sceneCopy, v13, v14, v15, v16, v12);

  v22 = objc_msgSend_kind(TSCH3DValueAxisLabelKind, v18, v19, v20, v21);
  v27 = objc_msgSend_mutablePropertiesForType_(sceneCopy, v23, v24, v25, v26, v22);

  if (pathCopy && mode)
  {
    objc_msgSend_setSelectionPath_(v17, v28, v29, v30, v31, pathCopy);
    objc_msgSend_setHidden_(v17, v32, v33, v34, v35, mode == 2);
    objc_msgSend_setSelectionPath_(v27, v36, v37, v38, v39, 0);
    v44 = mode == 1;
  }

  else
  {
    objc_msgSend_setSelectionPath_(v17, v28, v29, v30, v31, 0);
    objc_msgSend_setHidden_(v17, v45, v46, v47, v48, 0);
    objc_msgSend_setSelectionPath_(v27, v49, v50, v51, v52, 0);
    v44 = 0;
  }

  objc_msgSend_setHidden_(v27, v40, v41, v42, v43, v44);
}

+ (void)cacheValueAxisLabelAlignmentForScene:(id)scene
{
  sceneCopy = scene;
  v8 = objc_msgSend_valueAxisLabelAlignmentForScene_(self, v4, v5, v6, v7);
  v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v9, v10, v11, v12, v8);
  objc_msgSend_setProperties_forType_(sceneCopy, v14, v15, v16, v17, v13, @"TSCH3DChartAxisLabelsSceneObjectValueLabelAlignment");
}

+ (unsigned)valueAxisLabelAlignmentForScene:(id)scene
{
  sceneCopy = scene;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_27617504C;
  v47 = sub_27617505C;
  v48 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_276175064;
  v42[3] = &unk_27A6B6420;
  v42[4] = &v43;
  v42[5] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(sceneCopy, v5, COERCE_DOUBLE(3221225472), v6, v7, v42);
  if (!v44[5])
  {
    objc_opt_class();
    v36 = objc_msgSend_propertiesForType_(sceneCopy, v32, v33, v34, v35, @"TSCH3DChartAxisLabelsSceneObjectValueLabelAlignment");
    v17 = TSUDynamicCast();

    if (v17)
    {
      v31 = objc_msgSend_integerValue(v17, v37, v38, v39, v40);
      goto LABEL_7;
    }

LABEL_6:
    v31 = 0;
    goto LABEL_7;
  }

  v12 = objc_msgSend_kind(TSCH3DValueAxisLabelKind, v8, v9, v10, v11);
  v17 = objc_msgSend_enumeratorForType_(sceneCopy, v13, v14, v15, v16, v12);

  if (!objc_msgSend_shouldRender(v17, v18, v19, v20, v21))
  {
    goto LABEL_6;
  }

  v26 = objc_msgSend_valueLabelPositioner(v44[5], v22, v23, v24, v25);
  v31 = objc_msgSend_alignmentForPositioner_scene_enumerator_returningDirection_(v44[5], v27, v28, v29, v30, v26, sceneCopy, v17, 0);

LABEL_7:
  _Block_object_dispose(&v43, 8);

  return v31;
}

- (id)effects
{
  v5 = objc_msgSend_labelsRenderer(self, a2, v2, v3, v4);
  v10 = objc_msgSend_effects(v5, v6, v7, v8, v9);

  return v10;
}

- (tvec3<float>)labelPositionDirectionForScene:(id)scene enumerator:(id)enumerator
{
  v6 = v4;
  sceneCopy = scene;
  enumeratorCopy = enumerator;
  if (!sceneCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCH3DChartAxisLabelsSceneObject labelPositionDirectionForScene:enumerator:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 211, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (!enumeratorCopy)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCH3DChartAxisLabelsSceneObject labelPositionDirectionForScene:enumerator:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 212, 0, "invalid nil value for '%{public}s'", "enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  v43 = objc_msgSend_labelPosition(enumeratorCopy, v8, v10, v11, v12);
  if (v43 == 2)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    goto LABEL_9;
  }

  if (v43 == 3)
  {
    __asm { FMOV            V0.2S, #1.0 }

LABEL_9:
    *v6 = -_D0;
    *(v6 + 8) = 0;
    goto LABEL_14;
  }

  v53 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v44, v45, v46, v47, sceneCopy);
  v58 = v53;
  __asm { FMOV            V8.2S, #1.0 }

  if (v53)
  {
    objc_msgSend_cachedRotation(v53, v54, v55, v56, v57);
    __asm { FMOV            V1.2S, #-1.0 }

    v61 = COERCE_DOUBLE(vbsl_s8(vcgez_f32(v64), COERCE_INT8X8_T(-_D8), COERCE_INT8X8_T(-_D1)));
  }

  else
  {
    v61 = -_D8;
  }

  *v6 = vrev64_s32(*&v61);

LABEL_14:
  result.var0 = v62;
  result.var1 = *(&v62 + 4);
  result.var2 = v63;
  return result;
}

- (unsigned)alignmentForPositioner:(id)positioner scene:(id)scene enumerator:(id)enumerator returningDirection:(void *)direction
{
  positionerCopy = positioner;
  sceneCopy = scene;
  enumeratorCopy = enumerator;
  if (!sceneCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DChartAxisLabelsSceneObject alignmentForPositioner:scene:enumerator:returningDirection:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 233, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  if (!positionerCopy)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DChartAxisLabelsSceneObject alignmentForPositioner:scene:enumerator:returningDirection:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 234, 0, "invalid nil value for '%{public}s'", "positioner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  if (!enumeratorCopy)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DChartAxisLabelsSceneObject alignmentForPositioner:scene:enumerator:returningDirection:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 235, 0, "invalid nil value for '%{public}s'", "enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  objc_msgSend_labelPositionDirectionForScene_enumerator_(self, v12, v14, v15, v16, sceneCopy, enumeratorCopy);
  v66 = objc_msgSend_alignmentForChartDirection_(positionerCopy, v62, v63, v64, v65, &v68);
  if (direction)
  {
    *direction = v68;
    *(direction + 2) = v69;
  }

  return v66;
}

- (void)p_renderLabels:(id)labels labelType:(int)type part:(id)part positioner:(id)positioner offset:(void *)offset offset2DBlock:(id)block strideBlock:(id)strideBlock skipFirst:(BOOL)self0 showLast:(BOOL)self1
{
  labelsCopy = labels;
  partCopy = part;
  positionerCopy = positioner;
  blockCopy = block;
  strideBlockCopy = strideBlock;
  v19 = MEMORY[0x277C98B30](blockCopy);

  if (!v19)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCH3DChartAxisLabelsSceneObject p_renderLabels:labelType:part:positioner:offset:offset2DBlock:strideBlock:skipFirst:showLast:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 246, 0, "invalid nil value for '%{public}s'", "id(offset2DBlock)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v39 = MEMORY[0x277C98B30](strideBlockCopy);

  if (!v39)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "[TSCH3DChartAxisLabelsSceneObject p_renderLabels:labelType:part:positioner:offset:offset2DBlock:strideBlock:skipFirst:showLast:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 247, 0, "invalid nil value for '%{public}s'", "id(strideBlock)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  }

  v59 = objc_msgSend_enumerator(partCopy, v40, v41, v42, v43);
  v64 = objc_msgSend_enumerator(v59, v60, v61, v62, v63);

  if (objc_msgSend_shouldRender(v64, v65, v66, v67, v68))
  {
    v180 = 0;
    v181 = 0;
    v73 = objc_msgSend_scene(labelsCopy, v69, v70, v71, v72);
    v78 = objc_msgSend_enumerator(partCopy, v74, v75, v76, v77);
    v83 = objc_msgSend_alignmentForPositioner_scene_enumerator_returningDirection_(self, v79, v80, v81, v82, positionerCopy, v73, v78, &v180);

    v88 = objc_msgSend_scene(labelsCopy, v84, v85, v86, v87);
    v93 = objc_msgSend_delegateForSceneObject_(v88, v89, v90, v91, v92, self);

    if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v93, v94, v95, v96, v97, type, v83, v83, 0, self) & 1) == 0)
    {
      v151 = v93;
      v154 = blockCopy;
      v155 = positionerCopy;
      v156 = objc_msgSend_properties(partCopy, v98, v99, v100, v101);
      v107 = objc_msgSend_info(v156, v102, v103, v104, v105);
      if (type == 3)
      {
        objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v106, v108, v109, v110, v107);
      }

      else
      {
        objc_msgSend_axisForInfo_(TSCHChartValueAxis, v106, v108, v109, v110, v107);
      }
      v152 = ;

      v153 = objc_msgSend_selectionPath(v156, v111, v112, v113, v114);
      objc_opt_class();
      v119 = objc_msgSend_argumentAtIndex_(v153, v115, v116, v117, v118, 1);
      v120 = TSUDynamicCast();

      v150 = v120;
      v125 = objc_msgSend_integerValue(v120, v121, v122, v123, v124);
      v130 = objc_msgSend_indexForSelectionPathLabelIndex_(v152, v126, v127, v128, v129, v125);
      LOBYTE(v120) = objc_msgSend_hidden(v156, v131, v132, v133, v134);
      v139 = objc_msgSend_labels(v156, v135, v136, v137, v138);
      v179[0] = objc_msgSend_count(v64, v140, v141, v142, v143);
      v179[1] = 1;
      v160[0] = MEMORY[0x277D85DD0];
      v160[1] = 3321888768;
      v160[2] = sub_276175D20;
      v160[3] = &unk_28851CE50;
      v168 = strideBlockCopy;
      v169 = blockCopy;
      v161 = partCopy;
      v144 = v139;
      v162 = v144;
      firstCopy = first;
      lastCopy = last;
      v145 = v150;
      v163 = v145;
      v170 = v130;
      v178 = v120;
      v164 = v155;
      v172 = v180;
      v173 = v181;
      typeCopy = type;
      v165 = labelsCopy;
      offsetCopy = offset;
      v175 = v83;
      v93 = v151;
      v166 = v151;
      selfCopy = self;
      objc_msgSend_renderLabelsResourcesSessionWithResources_expectedSize_pipeline_renderBlock_(self, v146, v147, v148, v149, v144, v179, v165, v160);

      blockCopy = v154;
      positionerCopy = v155;
    }
  }
}

- (tvec3<float>)p_valueLabelsOffsetFromAccessor:(id)accessor
{
  v4 = v3;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DChartAxisLabelsSceneObject p_valueLabelsOffsetFromAccessor:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 328, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  *&v26 = sub_27615656C();
  v29 = *&v26;
  if (accessorCopy)
  {
    objc_msgSend_gridlinesOffset(accessorCopy, v25, v26, v27, v28);
    v30 = v35;
    v31 = vadd_f32(v34, 0);
  }

  else
  {
    v31 = 0;
    v30 = 0.0;
  }

  *v4 = v31;
  v4[1].f32[0] = v29 + v30;

  result.var0 = v32;
  result.var1 = *(&v32 + 4);
  result.var2 = v33;
  return result;
}

- (void)p_renderValueLabels:(id)labels
{
  labelsCopy = labels;
  v9 = objc_msgSend_scene(labelsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v10, v11, v12, v13, v9);

  objc_msgSend_p_valueLabelsOffsetFromAccessor_(self, v15, v16, v17, v18, v14);
  v23 = objc_msgSend_scene(labelsCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_kind(TSCH3DValueAxisLabelKind, v24, v25, v26, v27);
  v33 = objc_msgSend_partForType_(v23, v29, v30, v31, v32, v28);

  v38 = objc_msgSend_properties(v33, v34, v35, v36, v37);
  if ((objc_msgSend_hidden(v38, v39, v40, v41, v42) & 1) == 0)
  {
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_2761764A8;
    v86[3] = &unk_27A6B6448;
    v43 = v33;
    v87 = v43;
    selfCopy = self;
    v44 = labelsCopy;
    v89 = v44;
    v85 = MEMORY[0x277C98B30](v86);
    v49 = objc_msgSend_info(v38, v45, v46, v47, v48);
    v54 = objc_msgSend_axisForInfo_(TSCHChartValueAxis, v50, v51, v52, v53, v49);

    if (!v54)
    {
      v84 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "[TSCH3DChartAxisLabelsSceneObject p_renderValueLabels:]");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v65, v66, v67, v68, v59, v64, 359, 0, "invalid nil value for '%{public}s'", "axis");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v73 = objc_msgSend_intValueForProperty_defaultValue_(v54, v55, v56, v57, v58, 1056, 1);
    v78 = objc_msgSend_valueLabelPositioner(self, v74, v75, v76, v77);
    HIBYTE(v83) = 0;
    LOBYTE(v83) = v73 == 0;
    objc_msgSend_p_renderLabels_labelType_part_positioner_offset_offset2DBlock_strideBlock_skipFirst_showLast_(self, v79, v80, v81, v82, v44, 4, v43, v78, v90, v85, &unk_28851CE80, v83);
  }
}

- (int64_t)p_categoryStride:(id)stride
{
  strideCopy = stride;
  v9 = objc_msgSend_scene(strideCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_kind(TSCH3DCategoryAxisLabelKind, v10, v11, v12, v13);
  v19 = objc_msgSend_partForType_(v9, v15, v16, v17, v18, v14);

  v24 = objc_msgSend_enumerator(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_enumerator(v24, v25, v26, v27, v28);

  if ((objc_msgSend_shouldRender(v29, v30, v31, v32, v33) & 1) == 0)
  {
    v69 = 1;
    goto LABEL_12;
  }

  v38 = objc_msgSend_properties(v19, v34, v35, v36, v37);
  selfCopy = self;
  v43 = objc_msgSend_info(v38, v39, v40, v41, v42);
  v48 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v44, v45, v46, v47, v43);
  v205 = v48;
  v53 = objc_msgSend_chartType(v43, v49, v50, v51, v52);
  isHorizontal = objc_msgSend_isHorizontal(v53, v54, v55, v56, v57);

  if (isHorizontal)
  {
    v63 = objc_msgSend_intValueForProperty_defaultValue_(v48, v59, v60, v61, v62, 1066, 0);
  }

  else
  {
    v63 = objc_msgSend_intValueForProperty_defaultValue_(v48, v59, v60, v61, v62, 1031, 0);
  }

  if (v63 < 1)
  {
    v71 = objc_msgSend_selectionPath(v38, v64, v65, v66, v67);
    if (v71)
    {
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_41;
      }
    }

    v76 = objc_msgSend_scene(strideCopy, v72, v73, v74, v75);
    v81 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v77, v78, v79, v80, v76);

    v203 = v81;
    if (v81)
    {
      objc_msgSend_sageChartInfoSize(v81, v82, v83, v84, v85);
      LODWORD(v87) = v206;
      LODWORD(v86) = v207;
    }

    else
    {
      v86 = 0.0;
      v87 = 0.0;
    }

    if (isHorizontal)
    {
      v88 = *&v86;
    }

    else
    {
      v88 = *&v87;
    }

    v89 = objc_msgSend_categoryStridingCache(v38, v82, v86, v87, v85);
    *&v90 = v88;
    v94 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v91, v90, v92, v93);
    v99 = objc_msgSend_objectForKey_(v89, v95, v96, v97, v98, v94);

    v202 = v99;
    if (v99)
    {
      v68 = objc_msgSend_integerValue(v99, v100, v101, v102, v103);
      goto LABEL_44;
    }

    objc_msgSend_cachedTextFactor(v38, v100, v101, v102, v103);
    v107 = *&v108;
    LODWORD(v108) = -1.0;
    if (v107 == -1.0)
    {
      v109 = *MEMORY[0x277CBF3A8];
      v110 = *(MEMORY[0x277CBF3A8] + 8);
      v111 = objc_msgSend_sharedText(TSCHText, v104, v108, v105, v106);
      v116 = objc_msgSend_styleIndex(v38, v112, v113, v114, v115);
      v122 = objc_msgSend_paragraphStyleAtIndex_(v43, v117, v118, v119, v120, v116);
      while (1)
      {
        v126 = objc_msgSend_nextObject(v29, v121, v123, v124, v125);
        v131 = v126;
        if (!v126)
        {
          break;
        }

        v132 = objc_msgSend_string(v126, v127, v128, v129, v130);
        objc_msgSend_measureText_paragraphStyle_(v111, v133, v134, v135, v136, v132, v122);
        v138 = v137;
        v140 = v139;

        if (v109 < v138)
        {
          v109 = v138;
        }

        if (v110 < v140)
        {
          v110 = v140;
        }
      }

      if (isHorizontal)
      {
        v141 = v110;
      }

      else
      {
        v141 = v109;
      }

      v107 = v141;
      *&v141 = v107;
      objc_msgSend_setCachedTextFactor_(v38, v127, v141, v129, v130);
    }

    if (v88 != 0.0 && v107 != 0.0)
    {
      v142 = objc_msgSend_count(v29, v104, v108, v105, v106);
      v147 = objc_msgSend_categoryLabelPositioner(selfCopy, v143, v144, v145, v146);
      hasOffset = objc_msgSend_hasOffset(v147, v148, v149, v150, v151);

      v157 = objc_msgSend_categoryLabelPositioner(selfCopy, v153, v154, v155, v156);
      objc_msgSend_labelGapForCount_(v157, v158, v159, v160, v161, v142 - (hasOffset ^ 1u));
      v163 = v162;

      LODWORD(v166) = 1061494456;
      *&v167 = (v88 * v163) * 0.77;
      if (*&v167 == 0.0)
      {
        v68 = 1;
      }

      else
      {
        *&v167 = v107 / *&v167;
        v68 = vcvtps_s32_f32(*&v167);
      }

      v168 = objc_msgSend_categoryStridingCache(v38, v164, v167, v166, v165);
      v173 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v169, v170, v171, v172, v68);
      *&v174 = v88;
      v178 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v175, v174, v176, v177);
      objc_msgSend_setObject_forKey_(v168, v179, v180, v181, v182, v173, v178);

LABEL_44:
      if (v68 <= 0)
      {
        v187 = MEMORY[0x277D81150];
        v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v184, v185, v186, "[TSCH3DChartAxisLabelsSceneObject p_categoryStride:]");
        v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, v190, v191, v192, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v187, v194, v195, v196, v197, v188, v193, 454, 0, "illegal value for stride");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199, v200, v201);
      }

      goto LABEL_7;
    }

LABEL_41:
    v68 = 1;
    goto LABEL_7;
  }

  v68 = v63;
LABEL_7:
  if (v68 <= 1)
  {
    v69 = 1;
  }

  else
  {
    v69 = v68;
  }

LABEL_12:
  return v69;
}

- (tvec3<float>)p_categoryLabelsOffsetFromAccessor:(id)accessor
{
  v4 = v3;
  accessorCopy = accessor;
  v27 = accessorCopy;
  if (accessorCopy)
  {
    objc_msgSend_categoryLabelsOffset(accessorCopy, v6, v7, v8, v9);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DChartAxisLabelsSceneObject p_categoryLabelsOffsetFromAccessor:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 462, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    *(v4 + 8) = 0;
    *v4 = 0;
  }

  result.var0 = v25;
  result.var1 = *(&v25 + 4);
  result.var2 = v26;
  return result;
}

- (void)p_renderCategoryLabels:(id)labels
{
  labelsCopy = labels;
  v8 = objc_msgSend_scene(labelsCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);

  v67 = v13;
  objc_msgSend_p_categoryLabelsOffsetFromAccessor_(self, v14, v15, v16, v17, v13);
  v22 = objc_msgSend_scene(labelsCopy, v18, v19, v20, v21);
  v27 = objc_msgSend_kind(TSCH3DCategoryAxisLabelKind, v23, v24, v25, v26);
  v32 = objc_msgSend_partForType_(v22, v28, v29, v30, v31, v27);

  v37 = objc_msgSend_properties(v32, v33, v34, v35, v36);
  v42 = objc_msgSend_info(v37, v38, v39, v40, v41);
  v47 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v43, v44, v45, v46, v42);

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_276176FE0;
  v71[3] = &unk_27A6B6490;
  v48 = v37;
  v72 = v48;
  v49 = v47;
  v73 = v49;
  v50 = MEMORY[0x277C98B30](v71);
  v55 = objc_msgSend_intValueForProperty_defaultValue_(v49, v51, v52, v53, v54, 1053, 0);
  v60 = objc_msgSend_categoryLabelPositioner(self, v56, v57, v58, v59);
  LOBYTE(v13) = v55 != 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_276177164;
  v69[3] = &unk_27A6B64B8;
  v69[4] = self;
  v61 = labelsCopy;
  v70 = v61;
  HIBYTE(v66) = v13;
  LOBYTE(v66) = 0;
  objc_msgSend_p_renderLabels_labelType_part_positioner_offset_offset2DBlock_strideBlock_skipFirst_showLast_(self, v62, v63, v64, v65, v61, 3, v32, v60, v74, v50, v69, v66);
}

- (void)p_setOffset:(void *)offset forLabelType:(int)type pipeline:(id)pipeline part:(id)part positioner:(id)positioner
{
  v9 = *&type;
  pipelineCopy = pipeline;
  partCopy = part;
  positionerCopy = positioner;
  v18 = objc_msgSend_scene(pipelineCopy, v14, v15, v16, v17);
  v23 = objc_msgSend_enumerator(partCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_alignmentForPositioner_scene_enumerator_returningDirection_(self, v24, v25, v26, v27, positionerCopy, v18, v23, 0);

  v33 = objc_msgSend_scene(pipelineCopy, v29, v30, v31, v32);
  v38 = objc_msgSend_delegateForSceneObject_(v33, v34, v35, v36, v37, self);

  objc_msgSend_setOffset_labelType_boundsIndex_forSceneObject_(v38, v39, v40, v41, v42, offset, v9, v28, self);
}

- (void)postRenderBounds:(id)bounds
{
  boundsCopy = bounds;
  v9 = objc_msgSend_scene(boundsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v10, v11, v12, v13, v9);

  objc_msgSend_p_categoryLabelsOffsetFromAccessor_(self, v15, v16, v17, v18, v14);
  v23 = objc_msgSend_scene(boundsCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_kind(TSCH3DCategoryAxisLabelKind, v24, v25, v26, v27);
  v33 = objc_msgSend_partForType_(v23, v29, v30, v31, v32, v28);

  v38 = objc_msgSend_categoryLabelPositioner(self, v34, v35, v36, v37);
  objc_msgSend_p_setOffset_forLabelType_pipeline_part_positioner_(self, v39, v40, v41, v42, v73, 3, boundsCopy, v33, v38);

  objc_msgSend_p_valueLabelsOffsetFromAccessor_(self, v43, v44, v45, v46, v14);
  v51 = objc_msgSend_scene(boundsCopy, v47, v48, v49, v50);
  v56 = objc_msgSend_kind(TSCH3DValueAxisLabelKind, v52, v53, v54, v55);
  v61 = objc_msgSend_partForType_(v51, v57, v58, v59, v60, v56);

  v66 = objc_msgSend_valueLabelPositioner(self, v62, v63, v64, v65);
  objc_msgSend_p_setOffset_forLabelType_pipeline_part_positioner_(self, v67, v68, v69, v70, v72, 4, boundsCopy, v61, v66);

  v71.receiver = self;
  v71.super_class = TSCH3DChartAxisLabelsSceneObject;
  [(TSCH3DChartLabelsContainingSceneObject *)&v71 postRenderBounds:boundsCopy];
}

- (id)selectionPathForInfo:(id)info axis:(id)axis selectionPathLabelIndex:(unint64_t)index
{
  v35[2] = *MEMORY[0x277D85DE8];
  axisCopy = axis;
  v11 = objc_msgSend_intValueForProperty_defaultValue_(axisCopy, v7, v8, v9, v10, 1034, 0);
  v17 = objc_msgSend_axisID(axisCopy, v12, v13, v14, v15);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = v17;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v18, v19, v20, &v34, 1);
  }

  else
  {
    v35[0] = v17;
    v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v16, v18, v19, v20, index);
    v35[1] = v22;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v24, v25, v26, v35, 2);
  }

  v27 = objc_opt_class();
  v32 = objc_msgSend_selectionPathWithClass_styleIndex_type_name_arguments_(TSCH3DSelectionPath, v28, v29, v30, v31, v27, v11, @"text", @"axisLabel", v21);

  return v32;
}

- (id)selectionPathForInfo:(id)info scene:(id)scene pickedPoint:(id)point
{
  infoCopy = info;
  sceneCopy = scene;
  pointCopy = point;
  v15 = pointCopy;
  if (pointCopy)
  {
    objc_msgSend_element(pointCopy, v11, v12, v13, v14);
    if (v48 == 3)
    {
      v20 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v16, v17, v18, v19, infoCopy);
      goto LABEL_6;
    }
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartAxisLabelsSceneObject selectionPathForInfo:scene:pickedPoint:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 570, 0, "invalid nil value for '%{public}s'", "pickedPoint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    v49 = 0;
  }

  v20 = objc_msgSend_axisForInfo_(TSCHChartValueAxis, v16, v17, v18, v19, infoCopy);
LABEL_6:
  v40 = v20;
  v41 = objc_msgSend_selectionPathLabelIndexForIndex_(v20, v21, v22, v23, v24, v49);
  v46 = objc_msgSend_selectionPathForInfo_axis_selectionPathLabelIndex_(self, v42, v43, v44, v45, infoCopy, v40, v41);

  return v46;
}

- (id)convertSelectionPathTo3D:(id)d path:(id)path
{
  dCopy = d;
  pathCopy = path;
  v12 = objc_msgSend_pathType(pathCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v13, v14, v15, v16);
  isEqual = objc_msgSend_isEqual_(v12, v18, v19, v20, v21, v17);

  if ((isEqual & 1) == 0)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DChartAxisLabelsSceneObject convertSelectionPathTo3D:path:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 582, 0, "selection path should have axis labels type %@", pathCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  if (objc_msgSend_argumentsCount(pathCopy, v23, v24, v25, v26) >= 2)
  {
    v47 = objc_msgSend_argumentAtIndex_(pathCopy, v42, v43, v44, v45, 0);
    v52 = objc_msgSend_model(dCopy, v48, v49, v50, v51);
    v57 = objc_msgSend_axisForID_(v52, v53, v54, v55, v56, v47);

    objc_opt_class();
    v62 = objc_msgSend_argumentAtIndex_(pathCopy, v58, v59, v60, v61, 1);
    v63 = TSUDynamicCast();

    if (!v63)
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "[TSCH3DChartAxisLabelsSceneObject convertSelectionPathTo3D:path:]");
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 591, 0, "invalid nil value for '%{public}s'", "selectionPathLabelIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
    }

    v83 = objc_msgSend_unsignedIntegerValue(v63, v64, v65, v66, v67);
    v46 = objc_msgSend_selectionPathForInfo_axis_selectionPathLabelIndex_(self, v84, v85, v86, v87, dCopy, v57, v83);
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (int)knobsModeForLabelType:(int)type scene:(id)scene
{
  sceneCopy = scene;
  if (type == 3)
  {
    v11 = &OBJC_IVAR___TSCH3DChartAxisLabelsSceneObject__categoryLabelPositioner;
  }

  else
  {
    if (type != 4)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartAxisLabelsSceneObject knobsModeForLabelType:scene:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 605, 0, "invalid label type %lu", type);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
      goto LABEL_11;
    }

    v11 = &OBJC_IVAR___TSCH3DChartAxisLabelsSceneObject__valueLabelPositioner;
  }

  v12 = *(&self->super.super.super.isa + *v11);
  if (!v12)
  {
LABEL_11:
    v18 = 1;
    goto LABEL_12;
  }

  v17 = v12;
  if (objc_msgSend_isHorizontal(v12, v13, v14, v15, v16))
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

LABEL_12:
  return v18;
}

- (BOOL)canRenderSelectionPath:(id)path forInfo:(id)info
{
  pathCopy = path;
  v10 = objc_msgSend_type(pathCopy, v5, v6, v7, v8);
  if (v10 == @"text")
  {
    v15 = objc_msgSend_name(pathCopy, v9, v11, v12, v13);
    v14 = v15 == @"axisLabel";
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)canEditTextForSelectionPath:(id)path forInfo:(id)info
{
  pathCopy = path;
  infoCopy = info;
  v12 = objc_msgSend_type(pathCopy, v7, v8, v9, v10);
  if (v12 == @"text")
  {
    v17 = objc_msgSend_name(pathCopy, v11, v13, v14, v15);

    if (v17 != @"axisLabel")
    {
      v16 = 0;
      goto LABEL_6;
    }

    objc_opt_class();
    v23 = objc_msgSend_argumentAtIndex_(pathCopy, v19, v20, v21, v22, 0);
    v12 = TSUDynamicCast();

    v28 = objc_msgSend_model(infoCopy, v24, v25, v26, v27);
    v33 = objc_msgSend_axisForID_(v28, v29, v30, v31, v32, v12);

    if (objc_msgSend_isCategory(v33, v34, v35, v36, v37))
    {
      v16 = objc_msgSend_argumentsCount(pathCopy, v38, v39, v40, v41) == 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_6:
  return v16;
}

- (id)renderInfoForSelectionPath:(id)path info:(id)info
{
  pathCopy = path;
  infoCopy = info;
  v12 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v7, v8, v9, v10, infoCopy);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartAxisLabelsSceneObject renderInfoForSelectionPath:info:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 634, 0, "invalid nil value for '%{public}s'", "axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_opt_class();
  v35 = objc_msgSend_argumentAtIndex_(pathCopy, v31, v32, v33, v34, 1);
  v36 = TSUDynamicCast();

  if (!v36)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DChartAxisLabelsSceneObject renderInfoForSelectionPath:info:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 636, 0, "invalid nil value for '%{public}s'", "selectionPathLabelIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  v56 = objc_msgSend_unsignedIntegerValue(v36, v37, v38, v39, v40);
  v61 = objc_msgSend_indexForSelectionPathLabelIndex_(v12, v57, v58, v59, v60, v56);
  v66 = objc_msgSend_intValueForProperty_defaultValue_(v12, v62, v63, v64, v65, 1034, 0);
  v71 = objc_msgSend_model(infoCopy, v67, v68, v69, v70);
  v76 = objc_msgSend_nameForCategory_(v71, v72, v73, v74, v75, v61);
  v80 = objc_msgSend_renderInfoWithString_styleIndex_rotation_(TSCH3DSelectionPathRenderInfo, v77, 0.0, v78, v79, v76, v66);

  return v80;
}

@end
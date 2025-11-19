@interface TSCH3DChartLayout
+ (id)p_allScaleProperties;
+ (id)p_propertiesThatInvalidateShadows;
+ (id)p_propertiesThatResetSceneProperties;
+ (id)p_propertiesThatResetSeriesStorage;
+ (id)propertiesThatInvalidateLayout;
+ (void)upgradeSceneDepthSettingsForChartInfo:(id)a3 hasConstantDepth:(BOOL)a4 willModifyBlock:(id)a5;
- (BOOL)hasProjectedBounds;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3;
- (TSCH3DChartLayout)initWithChartInfo:(id)a3;
- (TSCH3DChartSceneAreaLayoutItem)areaItem;
- (TSCH3DScene)scene;
- (const)projectedBounds;
- (id)containingViewportVector;
- (id)infoChartScale;
- (id)p_layoutTree;
- (void)dealloc;
- (void)p_ensureValidForInwardLayout;
- (void)p_resetSceneProperties;
- (void)p_resetSeriesStorage;
- (void)setLayoutSettings:(id *)a3;
- (void)setSeriesIndexedPieWedgeExplosions:(id)a3;
@end

@implementation TSCH3DChartLayout

+ (void)upgradeSceneDepthSettingsForChartInfo:(id)a3 hasConstantDepth:(BOOL)a4 willModifyBlock:(id)a5
{
  v5 = a4;
  v22 = a5;
  v11 = objc_msgSend_upgraderWithChartInfo_(TSCH3DChartLayoutSceneSettingsUpgrader, v7, v8, v9, v10, a3);
  objc_msgSend_setHasConstantDepth_(v11, v12, v13, v14, v15, v5);
  objc_msgSend_setWillModifyBlock_(v11, v16, v17, v18, v19, v22);
  objc_msgSend_upgradeForSpice_naturalSize_(v11, v20, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v21, 0);
}

- (TSCH3DChartLayout)initWithChartInfo:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TSCH3DChartLayout;
  v5 = [(TSCH2DChartLayout *)&v22 initWithChartInfo:v4];
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_chartInfo(v5, v6, v7, v8, v9);
    v16 = v11;
    if (v11)
    {
      objc_msgSend_defaultLayoutSettings(v11, v12, v13, v14, v15);
    }

    else
    {
      v20 = 0uLL;
      v21 = 0;
    }

    v18 = v20;
    v19 = v21;
    objc_msgSend_setLayoutSettings_(v10, v12, *&v20, v14, v15, &v18);
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSCH3DChartLayout;
  [(TSCH3DChartLayout *)&v2 dealloc];
}

- (void)setLayoutSettings:(id *)a3
{
  v8 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v3, v4, v5);
  v13 = objc_msgSend_useLayoutInwardForInsertionIcons(v8, v9, v10, v11, v12);

  v18 = objc_msgSend_chartInfo(self, v14, v15, v16, v17);
  if (objc_msgSend_hasSetDefaultLayoutSettings(v18, v19, v20, v21, v22))
  {
    if (v13)
    {
      v27 = objc_msgSend_chartInfo(self, v23, v24, v25, v26);
      v32 = v27;
      if (v27)
      {
        objc_msgSend_defaultLayoutSettings(v27, v28, v29, v30, v31);
        v33 = BYTE6(v87);
      }

      else
      {
        v33 = 0;
        v87 = 0uLL;
        var9 = 0;
      }

      var6 = a3->var6;
    }

    else
    {
      v37 = objc_msgSend_chartInfo(self, v23, v24, v25, v26);
      v32 = v37;
      if (v37)
      {
        objc_msgSend_defaultLayoutSettings(v37, v38, v39, v40, v41);
        v33 = HIBYTE(v84);
      }

      else
      {
        v33 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
      }

      var6 = a3->var7;
    }

    if (v33 != var6)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v43, v35, v36, "[TSCH3DChartLayout setLayoutSettings:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
      v55 = objc_msgSend_chartInfo(self, v51, v52, v53, v54);
      v60 = v55;
      if (v55)
      {
        objc_msgSend_defaultLayoutSettings(v55, v56, v57, v58, v59);
      }

      else
      {
        v87 = 0uLL;
        var9 = 0;
      }

      v61 = sub_27635FC90(&v87, v56, v57, v58, v59);
      v87 = *&a3->var0;
      var9 = a3->var9;
      v65 = sub_27635FC90(&v87, v62, *&v87, v63, v64);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v66, v67, v68, v69, v45, v50, 204, 0, "default layout settings out of sync layout inward %lu info %@ lyaout %@", v13, v61, v65);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    }
  }

  else
  {
  }

  v87 = *&a3->var0;
  var9 = a3->var9;
  if (objc_msgSend_p_shouldClearSceneForLayoutSettings_(self, v34, *&v87, v35, v36, &v87) && self->super._layoutTreeRoot)
  {
    v78 = objc_msgSend_areaItem(self, v74, v75, v76, v77);
    objc_msgSend_clearScene(v78, v79, v80, v81, v82);
  }

  v87 = *&a3->var0;
  var9 = a3->var9;
  v83.receiver = self;
  v83.super_class = TSCH3DChartLayout;
  [(TSCH2DChartLayout *)&v83 setLayoutSettings:&v87];
}

- (id)p_layoutTree
{
  v3 = self->super._layoutTreeRoot;
  v17.receiver = self;
  v17.super_class = TSCH3DChartLayout;
  v5 = [(TSCH2DChartLayout *)&v17 p_layoutTree];
  if (v5 != v3)
  {
    objc_msgSend_layoutSettings(self, v4, v6, v7, v8);
    v13 = v15;
    v14 = v16;
    objc_msgSend_setLayoutSettings_(v5, v9, *&v15, v10, v11, &v13);
  }

  return v5;
}

- (void)p_ensureValidForInwardLayout
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_intValueForProperty_defaultValue_(v6, v7, v8, v9, v10, 1113, 1);

  if (v11)
  {
    v45.receiver = self;
    v45.super_class = TSCH3DChartLayout;
    [(TSCH2DChartLayout *)&v45 p_ensureValidForInwardLayout];
  }

  else if ((objc_msgSend_isValid(self, v12, v13, v14, v15) & 1) == 0)
  {
    width = self->super._lastChartBodySize.width;
    height = self->super._lastChartBodySize.height;
    v20 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
    if (*MEMORY[0x277CBF3A8] == width && v21 == height)
    {
      v23 = objc_msgSend_chartInfo(self, v16, v20, v21, v17);
      v28 = objc_msgSend_geometry(v23, v24, v25, v26, v27);
      objc_msgSend_size(v28, v29, v30, v31, v32);
      width = v33;
      height = v34;
    }

    *&v20 = width;
    *&v21 = height;
    v46 = 0;
    v47 = LODWORD(v20);
    v48 = LODWORD(v21);
    v35 = objc_msgSend_areaItem(self, v16, v20, v21, v17);
    v40 = objc_msgSend_scene(v35, v36, v37, v38, v39);
    objc_msgSend_setLabelWrapBounds_forScene_(TSCH3DChartTitleSceneObject, v41, v42, v43, v44, &v46, v40);
  }
}

- (TSCH3DChartSceneAreaLayoutItem)areaItem
{
  v6 = objc_msgSend_p_layoutTree(self, a2, v2, v3, v4);
  objc_msgSend_layoutSettings(self, v7, v8, v9, v10);
  v20 = v22;
  v21 = v23;
  objc_msgSend_setLayoutSettings_(v6, v11, *&v22, v12, v13, &v20);
  v18 = objc_msgSend_chartAreaLayoutItem(v6, v14, v15, v16, v17);

  return v18;
}

- (BOOL)hasProjectedBounds
{
  v5 = objc_msgSend_areaItem(self, a2, v2, v3, v4);
  v6 = v5 != 0;

  return v6;
}

- (id)containingViewportVector
{
  v5 = objc_msgSend_areaItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_containingViewportVector(v5, v6, v7, v8, v9);

  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DChartLayout containingViewportVector]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 263, 0, "invalid nil value for '%{public}s'", "containingViewportVector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  return v10;
}

- (id)infoChartScale
{
  v5 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v10 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v6, v7, v8, v9, v5);
  v15 = v10;
  if (v10)
  {
    objc_msgSend_infoChartScale(v10, v11, v12, v13, v14);
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0;
  }

  v16 = objc_msgSend_vectorWithVec4_(TSCH3DVector, v11, v12, v13, v14, v18);

  return v16;
}

- (const)projectedBounds
{
  v5 = objc_msgSend_areaItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_projectedBounds(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCH3DScene)scene
{
  v5 = objc_msgSend_areaItem(self, a2, v2, v3, v4);
  v10 = objc_msgSend_scene(v5, v6, v7, v8, v9);

  return v10;
}

- (void)p_resetSceneProperties
{
  v6 = objc_msgSend_scene(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  objc_msgSend_layoutSettings(self, v12, v13, v14, v15);
  v20 = objc_msgSend_styleProvidingSource(self, v16, v17, v18, v19);
  v25 = objc_msgSend_create3DSceneWithLayoutSettings_styleProvidingSource_(v11, v21, v22, v23, v24, v34, v20);

  if (v25)
  {
    objc_msgSend_resetProperties(v6, v26, v27, v28, v29);
    objc_msgSend_copyPropertiesFromScene_(v6, v30, v31, v32, v33, v25);
  }
}

- (void)p_resetSeriesStorage
{
  v14 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v9 = objc_msgSend_model(v14, v5, v6, v7, v8);
  objc_msgSend_resetSeriesStorage(v9, v10, v11, v12, v13);
}

+ (id)p_propertiesThatResetSceneProperties
{
  if (qword_280A46A60 != -1)
  {
    sub_2764A6DDC();
  }

  v3 = qword_280A46A58;

  return v3;
}

+ (id)p_propertiesThatResetSeriesStorage
{
  if (qword_280A46A70 != -1)
  {
    sub_2764A6DF0();
  }

  v3 = qword_280A46A68;

  return v3;
}

+ (id)p_allScaleProperties
{
  if (qword_280A46A80 != -1)
  {
    sub_2764A6E04();
  }

  v3 = qword_280A46A78;

  return v3;
}

+ (id)p_propertiesThatInvalidateShadows
{
  if (qword_280A46A90 != -1)
  {
    sub_2764A6E18();
  }

  v3 = qword_280A46A88;

  return v3;
}

+ (id)propertiesThatInvalidateLayout
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27620FF80;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46AA0 != -1)
  {
    dispatch_once(&qword_280A46AA0, block);
  }

  v2 = qword_280A46A98;

  return v2;
}

- (void)setSeriesIndexedPieWedgeExplosions:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TSCH3DChartLayout;
  [(TSCH2DChartLayout *)&v14 setSeriesIndexedPieWedgeExplosions:v4];
  v9 = objc_msgSend_areaItem(self, v5, v6, v7, v8);
  objc_msgSend_invalidateBounds(v9, v10, v11, v12, v13);
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = a3;
  if (!objc_msgSend_count(v48, v4, v5, v6, v7))
  {
    goto LABEL_15;
  }

  Mutable = CGPathCreateMutable();
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v48;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v10, v11, v12, &v50, v54, 16);
  if (v14)
  {
    v18 = *v51;
    do
    {
      v19 = 0;
      do
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v50 + 1) + 8 * v19);
        v21 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v13, v15, v16, v17);
        v26 = objc_msgSend_pathType(v20, v22, v23, v24, v25);
        isEqual = objc_msgSend_isEqual_(v21, v27, v28, v29, v30, v26);

        if (isEqual)
        {
          objc_msgSend_chartAreaFrame(self, v32, v33, v34, v35);
          CGPathAddRectSafe();
        }

        v36 = objc_msgSend_chartTitleType(TSCHSelectionPathType, v32, v33, v34, v35);
        v41 = objc_msgSend_pathType(v20, v37, v38, v39, v40);
        v46 = objc_msgSend_isEqual_(v36, v42, v43, v44, v45, v41);

        if (v46)
        {
          objc_msgSend_titleFrame(self, v13, v15, v16, v17);
          CGPathAddRectSafe();
        }

        ++v19;
      }

      while (v14 != v19);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, v15, v16, v17, &v50, v54, 16);
    }

    while (v14);
  }

  if (CGPathIsEmpty(Mutable))
  {
    CGPathRelease(Mutable);
LABEL_15:
    Mutable = 0;
  }

  return Mutable;
}

@end
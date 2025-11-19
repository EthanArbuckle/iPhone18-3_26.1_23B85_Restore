@interface TSCH3DChartLayoutSceneSettingsUpgrader
- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)oldLayoutSettings;
- (CGRect)oldResizingFrame;
- (id)containingViewportByResizingScene:(id)a3 toResizingFrame:(CGRect)a4;
- (id)sceneResetWithLayoutSettings:(id *)a3;
- (void)dealloc;
- (void)mutateInfoWithContainingViewport:(id)a3 scene:(id)a4;
- (void)updateInfoGeometryIfNecessary;
- (void)upgradeForSpice:(BOOL)a3 naturalSize:(CGSize)a4;
@end

@implementation TSCH3DChartLayoutSceneSettingsUpgrader

- (void)dealloc
{
  if (self->_infoGeometryOffset)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartLayoutSceneSettingsUpgrader dealloc]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 73, 0, "expected nil value for '%{public}s'", "_infoGeometryOffset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21.receiver = self;
  v21.super_class = TSCH3DChartLayoutSceneSettingsUpgrader;
  [(TSCH3DChartLayoutSceneSettingsUpgrader *)&v21 dealloc];
}

- ($6BF1DF173A55784CAE4B3BED4B6FCF3F)oldLayoutSettings
{
  *&retstr->var0 = 0;
  retstr->var8 = 0;
  retstr->var9 = 0;
  v10.receiver = self;
  v10.super_class = TSCH3DChartLayoutSceneSettingsUpgrader;
  [($6BF1DF173A55784CAE4B3BED4B6FCF3F *)&v10 oldLayoutSettings];
  result = objc_msgSend_hasConstantDepth(self, v5, v6, v7, v8);
  if (result)
  {
    retstr->var7 = 0;
  }

  return result;
}

- (id)sceneResetWithLayoutSettings:(id *)a3
{
  v8 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, a2, v3, v4, v5, self->super._chartInfo);
  chartLayout = self->_chartLayout;
  self->_chartLayout = v8;

  v14 = self->_chartLayout;
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DChartLayoutSceneSettingsUpgrader sceneResetWithLayoutSettings:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 86, 0, "invalid nil value for '%{public}s'", "_chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    v14 = self->_chartLayout;
  }

  v36 = *&a3->var0;
  var9 = a3->var9;
  objc_msgSend_setLayoutSettings_(v14, v10, *&v36, v12, v13, &v36);
  v34 = objc_msgSend_scene(self->_chartLayout, v30, v31, v32, v33);

  return v34;
}

- (CGRect)oldResizingFrame
{
  v6 = objc_msgSend_geometry(self->super._chartInfo, a2, v2, v3, v4);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartLayoutSceneSettingsUpgrader oldResizingFrame]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 92, 0, "invalid nil value for '%{public}s'", "_chartInfo.geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_geometry(self->super._chartInfo, v7, v8, v9, v10);
  objc_msgSend_boundsBeforeRotation(v26, v27, v28, v29, v30);
  v32 = v31;
  v34 = v33;

  chartLayout = self->_chartLayout;
  if (!chartLayout)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCH3DChartLayoutSceneSettingsUpgrader oldResizingFrame]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 95, 0, "invalid nil value for '%{public}s'", "_chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    chartLayout = self->_chartLayout;
  }

  objc_msgSend_layoutForChartBodySize_(chartLayout, v35, v32, v34, v38);
  v59 = self->_chartLayout;

  objc_msgSend_chartBodyFrame(v59, v55, v56, v57, v58);
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v60;
  return result;
}

- (id)containingViewportByResizingScene:(id)a3 toResizingFrame:(CGRect)a4
{
  y = a4.origin.y;
  x = a4.origin.x;
  objc_msgSend_layoutForChartBodySize_(self->_chartLayout, a2, a4.size.width, a4.size.height, a4.size.width, a3);
  objc_msgSend_chartBodyFrame(self->_chartLayout, v7, v8, v9, v10);
  v15 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v13, v11 - x, v12 - y, v14);
  infoGeometryOffset = self->_infoGeometryOffset;
  self->_infoGeometryOffset = v15;

  v21 = objc_msgSend_containingViewportVector(self->_chartLayout, v17, v18, v19, v20);

  return v21;
}

- (void)mutateInfoWithContainingViewport:(id)a3 scene:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSCH3DChartLayoutSceneSettingsUpgrader;
  [(TSCH3DAbstractLimitingSeriesUpgrader *)&v5 mutateInfoWithContainingViewport:a3 scene:a4];
  self->_isMutatedForSceneSettings = 1;
}

- (void)updateInfoGeometryIfNecessary
{
  infoGeometryOffset = self->_infoGeometryOffset;
  v7 = MEMORY[0x277CBF348];
  if (infoGeometryOffset)
  {
    objc_msgSend_CGPointValue(infoGeometryOffset, a2, v2, v3, v4);
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v11 = *(MEMORY[0x277CBF348] + 8);
    v9 = *MEMORY[0x277CBF348];
  }

  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    v16 = objc_msgSend_geometry(self->super._chartInfo, v12, v13, v14, v15);
    v21 = objc_msgSend_mutableCopy(v16, v17, v18, v19, v20);

    objc_msgSend_position(v21, v22, v23, v24, v25);
    objc_msgSend_setPosition_(v21, v28, v9 + v26, v11 + v27, v29);
    if (!self->_chartLayout)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCH3DChartLayoutSceneSettingsUpgrader updateInfoGeometryIfNecessary]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 120, 0, "invalid nil value for '%{public}s'", "_chartLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }

    if (objc_msgSend_intValueForProperty_defaultValue_(self->super._chartInfo, v30, v31, v32, v33, 1113, 1))
    {
      v53 = objc_msgSend_legend(self->super._chartInfo, v49, v50, v51, v52);

      if (!v53)
      {
        v58 = MEMORY[0x277D81150];
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCH3DChartLayoutSceneSettingsUpgrader updateInfoGeometryIfNecessary]");
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 124, 0, "invalid nil value for '%{public}s'", "_chartInfo.legend");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
      }

      v73 = objc_msgSend_legend(self->super._chartInfo, v54, v55, v56, v57);
      objc_msgSend_legendOffset(v73, v74, v75, v76, v77);

      v82 = objc_msgSend_legend(self->super._chartInfo, v78, v79, v80, v81);
      objc_msgSend_legendSize(v82, v83, v84, v85, v86);

      objc_msgSend_legendFrame(self->_chartLayout, v87, v88, v89, v90);
      v92 = *&v91;
      v94 = *&v93;
      v96 = *&v95;
      v98 = v97;
      objc_msgSend_chartBodyFrame(self->_chartLayout, v99, v91, v93, v95);
      v120 = *v7;
      v119 = *MEMORY[0x277CBF3A8];
      sub_27628348C(&v120, &v119, v100, v101, v102, v103, v104, v105, v92, v94, v96, v98);
      v106 = v120;
      if ((TSUNearlyEqualPoints() & 1) == 0)
      {
        v111 = objc_msgSend_legend(self->super._chartInfo, v107, v108, v109, v110);
        objc_msgSend_setLegendOffset_(v111, v112, *&v106, *(&v106 + 1), v113);
      }

      v114 = v119;
      if ((TSUNearlyEqualSizes() & 1) == 0)
      {
        v115 = objc_msgSend_legend(self->super._chartInfo, v49, v50, v51, v52);
        objc_msgSend_setLegendSize_(v115, v116, *&v114, *(&v114 + 1), v117);
      }
    }

    objc_msgSend_setGeometry_clearObjectPlaceholderFlag_(self->super._chartInfo, v49, v50, v51, v52, v21, 0);
  }

  v118 = self->_infoGeometryOffset;
  self->_infoGeometryOffset = 0;
}

- (void)upgradeForSpice:(BOOL)a3 naturalSize:(CGSize)a4
{
  v5 = a3;
  if (self->_isMutatedForSceneSettings)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a4.width, a4.height, v4, "[TSCH3DChartLayoutSceneSettingsUpgrader upgradeForSpice:naturalSize:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 146, 0, "should not be mutated before upgrading");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = *MEMORY[0x277CBF3A8];
  v23 = *(MEMORY[0x277CBF3A8] + 8);
  v54.receiver = self;
  v54.super_class = TSCH3DChartLayoutSceneSettingsUpgrader;
  [(TSCH3DAbstractLimitingSeriesUpgrader *)&v54 upgradeForSpice:v5 naturalSize:v22, v23];
  if (!self->_isMutatedForSceneSettings)
  {
    chartLayout = self->_chartLayout;
    if (!chartLayout)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DChartLayoutSceneSettingsUpgrader upgradeForSpice:naturalSize:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartLayout.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 150, 0, "invalid nil value for '%{public}s'", "_chartLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
      chartLayout = self->_chartLayout;
    }

    v44 = objc_msgSend_containingViewportVector(chartLayout, v24, v25, v26, v27);
    v49 = objc_msgSend_scene(self->_chartLayout, v45, v46, v47, v48);
    objc_msgSend_mutateInfoWithContainingViewport_scene_(self, v50, v51, v52, v53, v44, v49);
  }

  objc_msgSend_updateInfoGeometryIfNecessary(self, v24, v25, v26, v27);
}

@end
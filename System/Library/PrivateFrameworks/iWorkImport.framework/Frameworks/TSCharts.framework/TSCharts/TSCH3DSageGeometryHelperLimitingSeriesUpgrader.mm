@interface TSCH3DSageGeometryHelperLimitingSeriesUpgrader
- (CGRect)oldResizingFrame;
- (id)boundsLayoutByResizingToLayoutSize:(void *)size;
- (id)containingViewportByResizingScene:(id)scene toResizingFrame:(CGRect)frame;
- (id)sceneResetWithLayoutSettings:(id *)settings;
@end

@implementation TSCH3DSageGeometryHelperLimitingSeriesUpgrader

- (id)sceneResetWithLayoutSettings:(id *)settings
{
  v8 = objc_msgSend_helperWithInfo_(TSCH3DChartResizerHelper, a2, v3, v4, v5, self->super._chartInfo);
  resizerHelper = self->_resizerHelper;
  self->_resizerHelper = v8;

  v34 = *settings;
  objc_msgSend_setLayoutSettings_(self->_resizerHelper, v10, *&v34.var0, v11, v12, &v34);
  v17 = objc_msgSend_create3DSceneWithLayoutSettings_styleProvidingSource_(self->super._chartInfo, v13, v14, v15, v16, settings, 0);
  boundsLayout = self->_boundsLayout;
  self->_boundsLayout = 0;

  v23 = objc_msgSend_boundsLayoutForScene_mode_(self->_resizerHelper, v19, v20, v21, v22, v17, 5);
  v24 = self->_boundsLayout;
  self->_boundsLayout = v23;

  v25 = self->_boundsLayout;
  *&v34.var0 = xmmword_2764D5ED0;
  objc_msgSend_setLayoutInPage_(v25, v26, 0.0, v27, v28, &v34);
  v29 = self->_boundsLayout;
  *&v34.var0 = xmmword_2764D5ED0;
  objc_msgSend_setBodyLayoutInPage_(v29, v30, 0.0, v31, v32, &v34);

  return v17;
}

- (CGRect)oldResizingFrame
{
  v5 = objc_msgSend_projectedBounds(self->_boundsLayout, a2, v2, v3, v4);
  v15 = xmmword_2764D5ED0;
  sub_2761526F4(&v15, v5 + 10, &v16);
  v10 = v16;
  v11 = v5;
  v12 = 1.0;
  v13 = 0;
  v14 = 0;
  sub_2761526F4(&v10, v5 + 14, &v16);
  v6 = (v12 * v16.f32[0]);
  v7 = (v12 * v16.f32[1]);
  v8 = ((v12 * v16.f32[2]) - (v12 * v16.f32[0]));
  v9 = ((v12 * v16.f32[3]) - (v12 * v16.f32[1]));
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)containingViewportByResizingScene:(id)scene toResizingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DSageGeometryHelperLimitingSeriesUpgrader containingViewportByResizingScene:toResizingFrame:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 72, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  MinY = CGRectGetMinY(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  MaxX = CGRectGetMaxX(v68);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  MaxY = CGRectGetMaxY(v69);
  v36 = MaxY;
  resizerHelper = self->_resizerHelper;
  if (!resizerHelper)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, MaxY, v34, v35, "[TSCH3DSageGeometryHelperLimitingSeriesUpgrader containingViewportByResizingScene:toResizingFrame:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 74, 0, "invalid nil value for '%{public}s'", "_resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    resizerHelper = self->_resizerHelper;
  }

  *&MaxY = MinX;
  *&v34 = MinY;
  *&v35 = MaxX;
  v53 = v36;
  *&MaxY = *&v35 - *&MaxY;
  v62 = 0;
  *&v34 = v53 - *&v34;
  v63 = LODWORD(MaxY);
  v64 = LODWORD(v34);
  v54 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(resizerHelper, v32, MaxY, v34, v35, sceneCopy, &v62, 0, 2, 0);
  boundsLayout = self->_boundsLayout;
  self->_boundsLayout = v54;

  v60 = objc_msgSend_containingViewportVector(self->_resizerHelper, v56, v57, v58, v59);

  return v60;
}

- (id)boundsLayoutByResizingToLayoutSize:(void *)size
{
  v8 = objc_msgSend_scene(self->_boundsLayout, a2, v3, v4, v5);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DSageGeometryHelperLimitingSeriesUpgrader boundsLayoutByResizingToLayoutSize:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 84, 0, "invalid nil value for '%{public}s'", "_boundsLayout.scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  resizerHelper = self->_resizerHelper;
  v29 = objc_msgSend_scene(self->_boundsLayout, v9, v10, v11, v12);
  v37 = 0;
  v38 = *size;
  v33 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(resizerHelper, v30, v38, v31, v32, v29, &v37, 0, 1, 0);
  boundsLayout = self->_boundsLayout;
  self->_boundsLayout = v33;

  v35 = self->_boundsLayout;

  return v35;
}

@end
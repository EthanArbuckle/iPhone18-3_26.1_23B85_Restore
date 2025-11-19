@interface TSCHChartRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
- (BOOL)buildShouldUseRenderer:(id)a3;
- (BOOL)isCorrectRepClassForInfo;
- (BOOL)isDrawingIntoPDF;
- (BOOL)p_hasBackgroundFill;
- (BOOL)p_hasBackgroundLayerForPieChart;
- (BOOL)p_legendHitByLayoutPoint:(CGPoint)a3;
- (BOOL)planeIsVisible:(int)a3;
- (BOOL)renderElements;
- (BOOL)renderGrid;
- (BOOL)renderLabels;
- (BOOL)renderReferenceLines;
- (BOOL)renderTrendLinesForSeriesIndex:(unint64_t)a3;
- (BOOL)shouldUseChartAreaRectForEditMenuTargetRectMinY;
- (CGPoint)lastSubselectionLayerRelativeReferencePosition;
- (CGPoint)scaledSubpixelOffsetFromLayerFrameInScaledCanvas;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)geometryFrame;
- (CGRect)outerShadowFrame;
- (CGRect)targetRectForEditMenu;
- (NSArray)renderers;
- (TSCHChartDrawableInfo)chartInfo;
- (TSCHChartDrawableLayout)drawableLayout;
- (TSCHChartLayout)chartLayout;
- (TSCHChartRep)initWithLayout:(id)a3 canvas:(id)a4 is2DRepFor3DChartRep:(BOOL)a5;
- (TSCHLegendRenderer)legendRenderer;
- (double)captionBottomDistanceToRect:(CGRect)a3;
- (double)contentsScale;
- (double)viewScale;
- (id)dataForUpdateUploadIndicator;
- (id)geometry;
- (id)p_textImageForPath:(CGPath *)a3 renderer:(id)a4 selection:(id)a5 shouldPulsate:(BOOL)a6;
- (id)p_textureForDescription:(id)a3;
- (id)renderGroupIndexSetForSeriesIndex:(unint64_t)a3 finalElements:(BOOL)a4 currentChunk:(int64_t)a5;
- (id)renderSeriesIndexSetForFinalElements:(BOOL)a3 currentChunk:(int64_t)a4;
- (id)textureForDescription:(id)a3;
- (int)p_backgroundLikePlaneStateForEffectiveStage:(int64_t)a3;
- (int)planeState:(int)a3 finalElements:(BOOL)a4 chunkStage:(int64_t)a5;
- (unint64_t)chartDeliveryStyle;
- (void)clearRenderers;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)editor:(id)a3 isDeselectingInfos:(id)a4;
- (void)p_addChildTexturesToTextureSet:(id)a3 forDescription:(id)a4 stage:(int64_t)a5 finalTexture:(BOOL)a6;
- (void)p_checkFillPropertiesForDataListeningWithChangedProperties:(id)a3;
- (void)p_forceDismissTransientMessage;
- (void)renderChunkInBounds:(CGRect)a3 textureSet:(id)a4 description:(id)a5;
- (void)renderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
- (void)updateFromLayout;
- (void)updateMessageOverlayNow;
@end

@implementation TSCHChartRep

- (TSCHChartRep)initWithLayout:(id)a3 canvas:(id)a4 is2DRepFor3DChartRep:(BOOL)a5
{
  v8 = a3;
  v10 = a4;
  if (!v8)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartRep initWithLayout:canvas:is2DRepFor3DChartRep:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 235, 0, "Invalid parameter not satisfying: %{public}s", "layout != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_info(v8, v9, v11, v12, v13);

  if (!v29)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "[TSCHChartRep initWithLayout:canvas:is2DRepFor3DChartRep:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 236, 0, "Invalid parameter not satisfying: %{public}s", "layout.info != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = objc_msgSend_info(v8, v30, v31, v32, v33);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCHChartRep initWithLayout:canvas:is2DRepFor3DChartRep:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 237, 0, "Invalid parameter not satisfying: %{public}s", "[layout.info isKindOfClass:[TSCHChartDrawableInfo class]]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  v83.receiver = self;
  v83.super_class = TSCHChartRep;
  v70 = [(TSWPTextHostRep *)&v83 initWithLayout:v8 canvas:v10];
  v71 = v70;
  if (v70)
  {
    v70->_is2DRepFor3DChartRep = a5;
    v70->_renderPassChunkPhase = 0;
    renderers = v70->_renderers;
    v70->_renderers = 0;

    if (objc_msgSend_isCanvasInteractive(v10, v73, v74, v75, v76))
    {
      objc_msgSend_p_checkFillPropertiesForDataListeningWithChangedProperties_(v71, v77, v78, v79, v80, 0);
    }

    v82.receiver = v71;
    v82.super_class = TSCHChartRep;
    [(TSWPTextHostRep *)&v82 finishInit];
  }

  return v71;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v6, v7, v8, v9, v10, self);

  v11.receiver = self;
  v11.super_class = TSCHChartRep;
  [(TSWPTextHostRep *)&v11 dealloc];
}

- (TSCHChartDrawableInfo)chartInfo
{
  objc_opt_class();
  v7 = objc_msgSend_info(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  return v8;
}

- (TSCHChartDrawableLayout)drawableLayout
{
  objc_opt_class();
  v7 = objc_msgSend_layout(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  return v8;
}

- (TSCHChartLayout)chartLayout
{
  v5 = objc_msgSend_drawableLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartLayout(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCHLegendRenderer)legendRenderer
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = objc_msgSend_renderers(self, a2, 0.0, v2, v3, 0, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v20, v24, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v13 = TSUDynamicCast();
        if (v13)
        {
          v18 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, v15, v16, v17, &v20, v24, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

- (BOOL)isCorrectRepClassForInfo
{
  v3 = objc_opt_class();
  v8 = objc_msgSend_chartInfo(self, v4, v5, v6, v7);
  LOBYTE(v3) = v3 == objc_msgSend_repClass(v8, v9, v10, v11, v12);

  return v3;
}

- (NSArray)renderers
{
  v2 = self;
  objc_sync_enter(v2);
  renderers = v2->_renderers;
  if (!renderers)
  {
    v8 = objc_msgSend_drawableLayout(v2, v3, v4, v5, v6);
    v13 = objc_msgSend_renderersWithRep_(v8, v9, v10, v11, v12, v2);
    v14 = v2->_renderers;
    v2->_renderers = v13;

    renderers = v2->_renderers;
  }

  v15 = renderers;
  objc_sync_exit(v2);

  return v15;
}

- (void)clearRenderers
{
  obj = self;
  objc_sync_enter(obj);
  renderers = obj->_renderers;
  obj->_renderers = 0;

  objc_sync_exit(obj);
}

- (void)updateFromLayout
{
  v2.receiver = self;
  v2.super_class = TSCHChartRep;
  [(TSDRep *)&v2 updateFromLayout];
}

- (id)geometry
{
  v6 = objc_msgSend_layout(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartRep geometry]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 486, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_geometry(v6, v5, v7, v8, v9);

  return v25;
}

- (CGRect)geometryFrame
{
  v5 = objc_msgSend_geometry(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_frame(v5, v6, v7, v8, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartRep geometryFrame]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 492, 0, "invalid nil value for '%{public}s'", "geometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v12 = *MEMORY[0x277CBF398];
    v14 = *(MEMORY[0x277CBF398] + 8);
    v16 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  v34 = v12;
  v35 = v14;
  v36 = v16;
  v37 = v18;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (double)viewScale
{
  v7 = objc_msgSend_canvas(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = objc_msgSend_canvas(self, v6, v8, v9, v10);
    objc_msgSend_viewScale(v11, v12, v13, v14, v15);
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  return v17;
}

- (double)contentsScale
{
  v7 = objc_msgSend_canvas(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = objc_msgSend_canvas(self, v6, v8, v9, v10);
    objc_msgSend_contentsScale(v11, v12, v13, v14, v15);
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  return v17;
}

- (BOOL)isDrawingIntoPDF
{
  v5 = objc_msgSend_canvas(self, a2, v2, v3, v4);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v5, v6, v7, v8, v9);

  return isDrawingIntoPDF;
}

- (BOOL)p_hasBackgroundFill
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chart(v5, v6, v7, v8, v9);

  v15 = objc_msgSend_objectValueForProperty_(v10, v11, v12, v13, v14, 1101);
  if (objc_msgSend_hasNoFill_(TSCHStyleUtilities, v16, v17, v18, v19, v15))
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v21) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v10, v20, v21, v22, v23, 1102);
    if (v33 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v34 = 1;
    goto LABEL_7;
  }

  v24 = objc_msgSend_clearColor(MEMORY[0x277D801F8], v20, v21, v22, v23);
  if (!objc_msgSend_isEqual_(v15, v25, v26, v27, v28, v24))
  {
    LODWORD(v30) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v10, v29, v30, v31, v32, 1102);
    v37 = v36;

    if (v37 == 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_6:
  v34 = 0;
LABEL_7:

  return v34;
}

- (BOOL)p_hasBackgroundLayerForPieChart
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chunkManager(v5, v6, v7, v8, v9);
  hasBackgroundLayerForPieChart = objc_msgSend_hasBackgroundLayerForPieChart(v10, v11, v12, v13, v14);

  return hasBackgroundLayerForPieChart;
}

- (CGRect)frameInUnscaledCanvas
{
  v16.receiver = self;
  v16.super_class = TSCHChartRep;
  [(TSDRep *)&v16 frameInUnscaledCanvas];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (objc_msgSend_frameInUnscaledCanvasNeedsPaddingForShadows(self, v11, v3, v5, v7))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectInset(v17, -100.0, -100.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)scaledSubpixelOffsetFromLayerFrameInScaledCanvas
{
  objc_msgSend_layerFrameInScaledCanvas(self, a2, v2, v3, v4);
  objc_msgSend_frameInUnscaledCanvas(self, v6, v7, v8, v9);
  objc_msgSend_viewScale(self, v10, v11, v12, v13);
  TSUMultiplyRectScalar();

  TSUSubtractPoints();
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)drawInContext:(CGContext *)a3
{
  if (objc_msgSend_isDrawingInFlippedContext(self, a2, v3, v4, v5))
  {
    sub_27631FDD8(a3, 1, v8, v9, v10);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  objc_msgSend_renderIntoContext_visible_(self, v11, ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, a3, ClipBoundingBox.size.height);
  if (objc_msgSend_isDrawingInFlippedContext(self, v12, v13, v14, v15))
  {
    sub_27631FF58(a3, v16, v17, v18, v19);

    sub_27632008C(v22, v23, v24, v20, v21);
  }
}

- (void)renderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v112 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    objc_msgSend_outerShadowFrame(self, a2, a4.origin.x, a4.origin.y, a4.size.width);
    v11 = v10;
    v13 = v12;
    CGContextTranslateCTM(a3, -v10, -v12);
    CGAffineTransformMakeTranslation(&v110, v11, v13);
    v113.origin.x = x;
    v113.origin.y = y;
    v113.size.width = width;
    v113.size.height = height;
    a4 = CGRectApplyAffineTransform(v113, &v110);
    x = v14;
    y = a4.origin.y;
    width = a4.size.width;
    height = v15;
  }

  if (self->_buildingChunks)
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v16 = objc_msgSend_renderers(self, a2, 0.0, a4.origin.y, a4.size.width);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, &v106, v111, 16);
    if (v22)
    {
      v26 = *v107;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v107 != v26)
          {
            objc_enumerationMutation(v16);
          }

          v28 = *(*(&v106 + 1) + 8 * i);
          if (objc_msgSend_buildShouldUseRenderer_(self, v21, v23, v24, v25, v28))
          {
            objc_msgSend_renderIntoContext_visible_(v28, v21, x, y, width, a3, height);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v21, v23, v24, v25, &v106, v111, 16);
      }

      while (v22);
    }
  }

  else
  {
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = sub_276273CD4;
    v105[3] = &unk_27A6B7188;
    v105[4] = self;
    v105[5] = a3;
    *&v105[6] = x;
    *&v105[7] = y;
    *&v105[8] = width;
    *&v105[9] = height;
    v30 = MEMORY[0x277C98B30](v105, a2);
    if (self->_buildingChunks)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v31, v32, v33, "[TSCHChartRep renderIntoContext:visible:]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 935, 0, "Should not use render pass chunk phase when chunking");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }

    v49 = objc_msgSend_chartInfo(self, v29, v31, v32, v33);
    v54 = objc_msgSend_chart(v49, v50, v51, v52, v53);
    v59 = objc_msgSend_chartType(v54, v55, v56, v57, v58);
    v64 = objc_msgSend_requiresSeparateLabelsRenderPass(v59, v60, v61, v62, v63);

    if (v64)
    {
      v65 = self;
      objc_sync_enter(v65);
      if (v65->_renderPassChunkPhase)
      {
        v70 = MEMORY[0x277D81150];
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCHChartRep renderIntoContext:visible:]");
        v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 939, 0, "Render pass chunk phase must be none when not rendering %ld", v65->_renderPassChunkPhase);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
      }

      v65->_renderPassChunkPhase = 1;
      v30[2](v30);
      v65->_renderPassChunkPhase = 5;
      v30[2](v30);
      v89 = objc_msgSend_chartInfo(v65, v85, v86, v87, v88);
      v94 = objc_msgSend_chart(v89, v90, v91, v92, v93);
      v99 = objc_msgSend_model(v94, v95, v96, v97, v98);
      hasReferenceLines = objc_msgSend_hasReferenceLines(v99, v100, v101, v102, v103);

      if (hasReferenceLines)
      {
        v65->_renderPassChunkPhase = 4;
        v30[2](v30);
      }

      v65->_renderPassChunkPhase = 0;
      objc_sync_exit(v65);
    }

    else
    {
      v30[2](v30);
    }
  }
}

- (void)p_checkFillPropertiesForDataListeningWithChangedProperties:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v67 = self;
  v9 = objc_msgSend_chartInfo(self, v5, v6, v7, v8);
  v14 = objc_msgSend_chart(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_allStyleOwners(v14, v15, v16, v17, v18);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v19;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, v21, v22, v23, &v72, v76, 16);
  if (v24)
  {
    v25 = v24;
    v26 = *v73;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v73 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v72 + 1) + 8 * i);
        objc_opt_class();
        v33 = objc_msgSend_style(v28, v29, v30, v31, v32);
        v34 = TSUCheckedDynamicCast();

        v35 = objc_opt_class();
        v40 = objc_msgSend_imageFillProperties(v35, v36, v37, v38, v39);
        v45 = v40;
        if (v4 && v40)
        {
          v46 = objc_msgSend_propertySetByIntersectingWithPropertySet_(v4, v41, v42, v43, v44, v40);
        }

        else
        {
          v46 = v40;
        }

        v51 = v46;
        if (objc_msgSend_count(v46, v47, v48, v49, v50))
        {
          v56 = objc_msgSend_g_specificToGenericPropertyMap(v34, v52, v53, v54, v55);
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_276274064;
          v68[3] = &unk_27A6B6DB0;
          v69 = v56;
          v70 = v28;
          v71 = v67;
          v57 = v56;
          objc_msgSend_enumeratePropertiesUsingBlock_(v51, v58, v59, v60, v61, v68);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, v63, v64, v65, &v72, v76, 16);
    }

    while (v25);
  }
}

- (id)dataForUpdateUploadIndicator
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_msgSend_chartInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_chart(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_allStyleOwners(v13, v14, v15, v16, v17);

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v18;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v70, v74, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v71;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v71 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v70 + 1) + 8 * i);
        objc_opt_class();
        v32 = objc_msgSend_style(v27, v28, v29, v30, v31);
        v33 = TSUCheckedDynamicCast();

        v34 = objc_opt_class();
        v39 = objc_msgSend_imageFillProperties(v34, v35, v36, v37, v38);
        v44 = objc_msgSend_g_specificToGenericPropertyMap(v33, v40, v41, v42, v43);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = sub_276274368;
        v66[3] = &unk_27A6B6DB0;
        v67 = v44;
        v68 = v27;
        v69 = v3;
        v45 = v44;
        objc_msgSend_enumeratePropertiesUsingBlock_(v39, v46, v47, v48, v49, v66);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, v51, v52, v53, &v70, v74, 16);
    }

    while (v24);
  }

  v58 = objc_msgSend_allObjects(v3, v54, v55, v56, v57);
  v63 = objc_msgSend_mutableCopy(v58, v59, v60, v61, v62);

  return v63;
}

- (BOOL)shouldUseChartAreaRectForEditMenuTargetRectMinY
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chart(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_intValueForProperty_defaultValue_(v11, v12, v13, v14, v15, 1114, 0);

  if (!v16)
  {
    return 0;
  }

  v21 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
  v26 = objc_msgSend_chart(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_chartType(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_supportsPlaceTitleAtCenter(v31, v32, v33, v34, v35);

  if (!v36)
  {
    return 1;
  }

  v41 = objc_msgSend_chartInfo(self, v37, v38, v39, v40);
  v46 = objc_msgSend_chart(v41, v42, v43, v44, v45);
  v51 = objc_msgSend_intValueForProperty_defaultValue_(v46, v47, v48, v49, v50, 1100, 1) == 0;

  return v51;
}

- (CGRect)targetRectForEditMenu
{
  v6 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  objc_msgSend_chartAreaFrame(v6, v7, v8, v9, v10);
  objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v6, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  objc_msgSend_boundsForResize(v6, v23, v15, v17, v19);
  objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v6, v24, v25, v26, v27);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (objc_msgSend_shouldUseChartAreaRectForEditMenuTargetRectMinY(self, v34, v28, v30, v32))
  {
    v31 = v18;
  }

  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  v40.size.height = v22;
  v35 = CGRectGetMaxY(v40) - v31;

  v36 = v29;
  v37 = v31;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)p_forceDismissTransientMessage
{
  if (objc_msgSend_messageIsVisible(self, a2, v2, v3, v4))
  {

    MEMORY[0x2821F9670](self, sel_dismissMessageOverlayNowWithAnimation_, v6, v7, v8);
  }
}

- (void)updateMessageOverlayNow
{
  objc_msgSend_p_invalidateMessageOverlay(self, a2, v2, v3, v4);

  MEMORY[0x2821F9670](self, sel_p_removeOrShowAndPositionMessageOverlay, v6, v7, v8);
}

- (void)editor:(id)a3 isDeselectingInfos:(id)a4
{
  self->_editorIsEditingInfo = 0;
  if (objc_msgSend_messageIsVisible(self, a2, v4, v5, v6, a3, a4))
  {

    MEMORY[0x2821F9670](self, sel_dismissMessageOverlayNowWithAnimation_, v8, v9, v10);
  }
}

- (unint64_t)chartDeliveryStyle
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chunkManager(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_textureDeliveryStyle(self, v12, v13, v14, v15);
  v21 = objc_msgSend_chartDeliveryStyleFromTSDDeliveryStyle_(v11, v17, v18, v19, v20, v16);

  return v21;
}

- (void)p_addChildTexturesToTextureSet:(id)a3 forDescription:(id)a4 stage:(int64_t)a5 finalTexture:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (objc_msgSend_planeIsVisible_(self, v12, v13, v14, v15, 0))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276274848;
    v20[3] = &unk_27A6B71B0;
    v23 = a6;
    v21 = v10;
    v22 = a5;
    objc_msgSend_enumerateChildTexturesForDescription_passingTest_withBlock_(self, v16, v17, v18, v19, v11, 0, v20);
  }
}

- (void)renderChunkInBounds:(CGRect)a3 textureSet:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v138 = objc_msgSend_currentChunk(self, v9, v10, v11, v12);
  chunkPhase = self->_chunkPhase;
  buildingFinalBackground = self->_buildingFinalBackground;
  buildingChunks = self->_buildingChunks;
  buildingFinalElements = self->_buildingFinalElements;
  v17 = objc_msgSend_textureDeliveryStyle(self, v13, v14, v15, v16);
  isKPFExportForMultiData = self->_isKPFExportForMultiData;
  v22 = objc_msgSend_chartLayout(self, v18, v19, v20, v21);
  v27 = objc_msgSend_dataSetIndex(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_textureStage(self, v28, v29, v30, v31);
  v37 = objc_msgSend_canvas(self, v33, v34, v35, v36);
  objc_msgSend_viewScale(v37, v38, v39, v40, v41);
  TSUMultiplyRectScalar();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v154.origin.x = v43;
  v154.origin.y = v45;
  v154.size.width = v47;
  v154.size.height = v49;
  v155 = CGRectIntegral(v154);
  v51 = objc_msgSend_chartInfo(self, v50, v155.origin.x, v155.origin.y, v155.size.width, v155.size.height);
  v56 = objc_msgSend_chunkManager(v51, v52, v53, v54, v55);
  v61 = objc_msgSend_chartDeliveryStyle(self, v57, v58, v59, v60);
  objc_msgSend_updateCache_(v56, v62, v63, v64, v65, v61);

  objc_msgSend_clipRectForElementsDrawnByRenderState_(TSCHElementBuilder, v66, v67, v68, v69, self);
  x = v156.origin.x;
  y = v156.origin.y;
  width = v156.size.width;
  height = v156.size.height;
  IsNull = CGRectIsNull(v156);
  IsVisible = objc_msgSend_planeIsVisible_(self, v75, v76, v77, v78, 0);
  v84 = IsVisible;
  if (!IsNull || IsVisible)
  {
    if (((IsVisible | IsNull) & 1) == 0)
    {
      v85 = objc_msgSend_layout(self, v80, v81, v82, v83);
      v90 = v85;
      if (v85)
      {
        objc_msgSend_transform(v85, v86, v87, v88, v89);
      }

      else
      {
        memset(&v153, 0, sizeof(v153));
      }

      v157.origin.x = x;
      v157.origin.y = y;
      v157.size.width = width;
      v157.size.height = height;
      CGRectApplyAffineTransform(v157, &v153);
    }

    v91 = objc_msgSend_canvas(self, v80, v81, v82, v83);
    objc_msgSend_viewScale(v91, v92, v93, v94, v95);
    TSUMultiplyRectScalar();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v158.origin.x = v97;
    v158.origin.y = v99;
    v158.size.width = v101;
    v158.size.height = v103;
    v159 = CGRectIntegral(v158);
    v160 = CGRectInset(v159, -1.0, -1.0);
    v104 = v160.size.width;
    v105 = v160.size.height;
    TSUSubtractPoints();
    TSUSubtractPoints();
    TSUAddPoints();
    v107 = v106;
    v109 = v108;
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v110 = *(MEMORY[0x277CBF2C0] + 16);
    v141 = *MEMORY[0x277CBF2C0];
    v140[2] = sub_276274CF8;
    v140[3] = &unk_27A6B71D8;
    v140[4] = self;
    *&v140[5] = v106;
    *&v140[6] = v109;
    v142 = v110;
    v143 = *(MEMORY[0x277CBF2C0] + 32);
    v149 = buildingChunks;
    v148 = chunkPhase;
    v150 = buildingFinalBackground;
    v151 = buildingFinalElements;
    v144 = v138;
    v145 = v17;
    v152 = isKPFExportForMultiData;
    v146 = v27;
    v147 = v32;
    v111 = MEMORY[0x277C98B30](v140);
    v112 = objc_alloc(MEMORY[0x277D803E8]);
    v114 = objc_msgSend_initWithSize_offset_renderBlock_(v112, v113, v104, v105, v107, v111, v109);
    v119 = v114;
    if (v84)
    {
      goto LABEL_9;
    }

    v124 = 5;
    if (chunkPhase == 2)
    {
      v124 = 2;
    }

    if (chunkPhase == 5)
    {
      v124 = 6;
    }

    if (self->_buildingFinalBackground)
    {
LABEL_9:
      objc_msgSend_setTextureType_(v114, v115, v116, v117, v118, 5);
    }

    else
    {
      objc_msgSend_setTextureType_(v114, v115, v116, v117, v118, v124);
    }

    if (self->_buildingFinalElements || self->_buildingFinalBackground)
    {
      v125 = self->_currentChunk - 1;
      objc_msgSend_addFinalTexture_forStage_(v7, v120, v121, v122, v123, v119, v125);
      objc_msgSend_p_addChildTexturesToTextureSet_forDescription_stage_finalTexture_(self, v126, v127, v128, v129, v7, v8, v125, 1);
    }

    else
    {
      objc_msgSend_addRenderable_forStage_(v7, v120, v121, v122, v123, v119, self->_currentChunk);
      objc_msgSend_p_addChildTexturesToTextureSet_forDescription_stage_finalTexture_(self, v130, v131, v132, v133, v7, v8, self->_currentChunk, 0);
    }
  }
}

- (id)textureForDescription:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10 = objc_msgSend_p_textureForDescription_(v5, v6, v7, v8, v9, v4);
  objc_sync_exit(v5);

  return v10;
}

- (id)p_textureForDescription:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_stage(v4, v5, v6, v7, v8);
  objc_msgSend_setTextureStage_(self, v10, v11, v12, v13, v9);
  v18 = objc_msgSend_deliveryStyle(v4, v14, v15, v16, v17);
  objc_msgSend_setTextureDeliveryStyle_(self, v19, v20, v21, v22, v18);
  v27 = objc_msgSend_byGlyphStyle(v4, v23, v24, v25, v26);
  objc_msgSend_setTextureByGlyphStyle_(self, v28, v29, v30, v31, v27);
  v36 = objc_msgSend_chartDeliveryStyle(self, v32, v33, v34, v35);
  v41 = objc_msgSend_chartInfo(self, v37, v38, v39, v40);
  v46 = objc_msgSend_chart(v41, v42, v43, v44, v45);
  v51 = objc_msgSend_chartLayout(self, v47, v48, v49, v50);
  v56 = objc_msgSend_model(v51, v52, v53, v54, v55);

  objc_msgSend_clearRenderers(self, v57, v58, v59, v60);
  v65 = objc_msgSend_chunkManager(v41, v61, v62, v63, v64);
  v70 = objc_msgSend_chunkCountForChartDeliveryStyle_(v65, v66, v67, v68, v69, v36);

  self->_chunkPhase = 0;
  self->_buildingChunks = v70 > 1;
  self->_buildingFinalElements = 0;
  self->_buildingFinalBackground = 0;
  v75 = objc_msgSend_chartType(v46, v71, v72, v73, v74);
  v231 = objc_msgSend_rendersBackgroundAxis(v75, v76, v77, v78, v79);

  v230 = v46;
  if (objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v80, v81, v82, v83, v56) && objc_msgSend_shadowsEnabled(self, v84, v85, v86, v87) && objc_msgSend_numberOfSeries(v56, v88, v89, v90, v91))
  {
    v96 = objc_msgSend_seriesAtIndex_(v56, v92, v93, v94, v95, 0);
    objc_msgSend_chartType(v46, v97, v98, v99, v100);
    v101 = v229 = v41;
    v106 = objc_msgSend_objectValueForProperty_(v96, v102, v103, v104, v105, 1172);
    v111 = objc_msgSend_supportsIndividualShadowRendering(v101, v107, v108, v109, v110);
    hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v112, v113, v114, v115, v106);

    v41 = v229;
    v117 = hasShadow & v111 ^ 1;
  }

  else
  {
    v117 = 1;
  }

  v118 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v118, v119, v120, v121, v122, self);
  isMagicMove = objc_msgSend_isMagicMove(v4, v123, v124, v125, v126);
  objc_msgSend_setIsMagicMove_(v118, v128, v129, v130, v131, isMagicMove);
  objc_msgSend_setObjectType_(v118, v132, v133, v134, v135, 4);
  v140 = objc_msgSend_layout(self, v136, v137, v138, v139);
  v145 = objc_msgSend_geometry(v140, v141, v142, v143, v144);
  objc_msgSend_frame(v145, v146, v147, v148, v149);
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v157 = v156;

  if (!objc_msgSend_textureStage(self, v158, v159, v160, v161) && v231 & 1 | !self->_buildingChunks)
  {
    self->_currentChunk = 0;
    objc_msgSend_renderChunkInBounds_textureSet_description_(self, v162, v151, v153, v155, v118, v4, v157);
    v170 = v56;
    goto LABEL_33;
  }

  v170 = v56;
  if (objc_msgSend_textureStage(self, v162, v163, v164, v165) > v70)
  {
    goto LABEL_33;
  }

  v171 = v41;
  v172 = objc_msgSend_textureStage(self, v166, v167, v168, v169);
  v177 = v172;
  if (v231)
  {
    self->_currentChunk = v172;
LABEL_13:
    v181 = 1;
    self->_buildingFinalBackground = 1;
    objc_msgSend_renderChunkInBounds_textureSet_description_(self, v173, v151, v153, v155, v118, v4, v157);
    self->_buildingFinalBackground = 0;
    goto LABEL_14;
  }

  self->_currentChunk = objc_msgSend_textureStage(self, v173, v174, v175, v176);
  if (v177)
  {
    goto LABEL_13;
  }

  v181 = 0;
LABEL_14:
  v41 = v171;
  if ((v117 & 1) != 0 || !self->_buildingChunks)
  {
    v170 = v56;
    if (objc_msgSend_textureStage(self, v173, v178, v179, v180) < v70)
    {
      self->_chunkPhase = 1;
      objc_msgSend_renderChunkInBounds_textureSet_description_(self, v186, v151, v153, v155, v118, v4, v157);
      self->_chunkPhase = 0;
    }

    if (v181 && self->_buildingChunks)
    {
      self->_buildingFinalElements = 1;
      objc_msgSend_renderChunkInBounds_textureSet_description_(self, v186, v151, v153, v155, v118, v4, v157);
      self->_buildingFinalElements = 0;
    }
  }

  else
  {
    v170 = v56;
    if (objc_msgSend_textureStage(self, v173, v178, v179, v180) < v70)
    {
      self->_chunkPhase = 2;
      objc_msgSend_renderChunkInBounds_textureSet_description_(self, v182, v151, v153, v155, v118, v4, v157);
      self->_chunkPhase = 0;
    }

    if (v181)
    {
      self->_buildingFinalElements = 1;
      objc_msgSend_renderChunkInBounds_textureSet_description_(self, v182, v151, v153, v155, v118, v4, v157);
      self->_buildingFinalElements = 0;
    }

    if (objc_msgSend_textureStage(self, v182, v183, v184, v185) < v70)
    {
      self->_chunkPhase = 3;
      objc_msgSend_renderChunkInBounds_textureSet_description_(self, v186, v151, v153, v155, v118, v4, v157);
      self->_chunkPhase = 0;
    }
  }

  if (objc_msgSend_textureStage(self, v186, v187, v188, v189) < v70)
  {
    self->_chunkPhase = 5;
    objc_msgSend_renderChunkInBounds_textureSet_description_(self, v190, v151, v153, v155, v118, v4, v157);
    self->_chunkPhase = 0;
  }

  if (objc_msgSend_hasReferenceLines(v170, v190, v191, v192, v193) && (objc_msgSend_isMultiData(v170, v166, v167, v168, v169) & 1) == 0 && objc_msgSend_textureStage(self, v166, v167, v168, v169) == v70 - 1)
  {
    self->_chunkPhase = 4;
    objc_msgSend_renderChunkInBounds_textureSet_description_(self, v166, v151, v153, v155, v118, v4, v157);
    self->_chunkPhase = 0;
  }

LABEL_33:
  if (objc_msgSend_textureStage(self, v166, v167, v168, v169) < v70)
  {
    v198 = objc_msgSend_chartLayout(self, v194, v195, v196, v197);
    objc_msgSend_chartAreaFrame(v198, v199, v200, v201, v202);

    objc_msgSend_viewScale(self, v203, v204, v205, v206);
    TSUMultiplyRectScalar();
    v234 = CGRectIntegral(v233);
    objc_msgSend_setBoundingRect_(v118, v207, v234.origin.x, v234.origin.y, v234.size.width, v234.size.height);
    if ((v231 & 1) == 0)
    {
      v212 = objc_msgSend_chartLayout(self, v208, v209, v210, v211);
      objc_msgSend_outerShadowFrame(v212, v213, v214, v215, v216);

      TSUSubtractPoints();
      objc_msgSend_viewScale(self, v217, v218, v219, v220);
      TSUMultiplyRectScalar();
      v236 = CGRectIntegral(v235);
      x = v236.origin.x;
      y = v236.origin.y;
      width = v236.size.width;
      height = v236.size.height;
      v226 = objc_msgSend_textureStage(self, v225, v236.origin.x, v236.origin.y, v236.size.width);
      objc_msgSend_setBoundingRect_forStage_(v118, v227, x, y, width, v226, height);
    }
  }

  self->_buildingChunks = 0;

  return v118;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_chartInfo(v7, v10, v11, v12, v13);
  v19 = objc_msgSend_chartInfo(v8, v15, v16, v17, v18);
  v24 = objc_msgSend_mixingTypeWithObject_context_(v14, v20, v21, v22, v23, v19, v9);

  v29 = objc_msgSend_chartInfo(v7, v25, v26, v27, v28);
  v34 = objc_msgSend_chart(v29, v30, v31, v32, v33);

  v39 = objc_msgSend_chartInfo(v8, v35, v36, v37, v38);
  v44 = objc_msgSend_chart(v39, v40, v41, v42, v43);

  v49 = 0.0;
  if (v24 != 1)
  {
    v50 = objc_msgSend_chartType(v34, v45, v46, v47, v48);
    v55 = objc_msgSend_chartType(v44, v51, v52, v53, v54);
    isEqual = objc_msgSend_isEqual_(v50, v56, v57, v58, v59, v55);

    if (isEqual)
    {
      if (v24 == 5)
      {
        v63 = 11.0;
      }

      else
      {
        v63 = 1.0;
      }

      v64 = objc_msgSend_chartInfo(v7, v61, 1.0, 11.0, v62);
      v69 = objc_msgSend_chart(v64, v65, v66, v67, v68);
      v74 = objc_msgSend_model(v69, v70, v71, v72, v73);

      v79 = objc_msgSend_chartInfo(v8, v75, v76, v77, v78);
      v84 = objc_msgSend_chart(v79, v80, v81, v82, v83);
      v89 = objc_msgSend_model(v84, v85, v86, v87, v88);

      v94 = objc_msgSend_numberOfChunkableMultiDataSets(v74, v90, v91, v92, v93);
      v158 = v74;
      v159 = v34;
      v157 = v89;
      if (v94 == objc_msgSend_numberOfChunkableMultiDataSets(v89, v95, v96, v97, v98))
      {
        v103 = objc_msgSend_numberOfMultiDataSetCategories(v74, v99, v100, v101, v102);
        if (v103 == objc_msgSend_numberOfMultiDataSetCategories(v89, v104, v105, v106, v107))
        {
          v108 = objc_msgSend_numberOfMultiDataSets(v74, v99, v100, v101, v102);
          if (v108 == objc_msgSend_numberOfMultiDataSets(v89, v109, v110, v111, v112))
          {
            v113 = objc_msgSend_numberOfSeries(v74, v99, v100, v101, v102);
            if (v113 == objc_msgSend_numberOfSeries(v89, v114, v115, v116, v117))
            {
              v118 = objc_msgSend_numberOfValues(v74, v99, v100, v101, v102);
              v123 = objc_msgSend_numberOfValues(v89, v119, v120, v121, v122);
              v100 = v63 + 1.0;
              if (v118 == v123)
              {
                v63 = v63 + 1.0;
              }
            }
          }
        }
      }

      v124 = objc_msgSend_chartInfo(v7, v99, v100, v101, v102);
      v129 = objc_msgSend_chart(v124, v125, v126, v127, v128);
      v134 = objc_msgSend_style(v129, v130, v131, v132, v133);
      v139 = objc_msgSend_chartInfo(v8, v135, v136, v137, v138);
      v144 = objc_msgSend_chart(v139, v140, v141, v142, v143);
      v149 = objc_msgSend_style(v144, v145, v146, v147, v148);
      v154 = objc_msgSend_isEqual_(v134, v150, v151, v152, v153, v149);

      v155 = v63 + 3.0;
      if (!v154)
      {
        v155 = v63;
      }

      v49 = v155 / 14.0;

      v34 = v159;
    }
  }

  return v49;
}

- (BOOL)renderElements
{
  renderPassChunkPhase = self->_renderPassChunkPhase;
  if (self->_buildingChunks)
  {
    if (renderPassChunkPhase)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartRep renderElements]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 2031, 0, "Render pass chunk phase must be none when chunking %ld", self->_renderPassChunkPhase);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    }

    renderPassChunkPhase = self->_chunkPhase;
    if (renderPassChunkPhase != 1)
    {
      LOBYTE(renderPassChunkPhase) = (renderPassChunkPhase & 0xFFFFFFFE) == 2 || self->_buildingFinalElements;
    }
  }

  else
  {
    LOBYTE(renderPassChunkPhase) = renderPassChunkPhase < 2;
  }

  return renderPassChunkPhase & 1;
}

- (BOOL)renderGrid
{
  if (self->_buildingChunks)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_renderElements(self, a2, v2, v3, v4);
  }
}

- (BOOL)renderReferenceLines
{
  renderPassChunkPhase = self->_renderPassChunkPhase;
  if (!self->_buildingChunks)
  {
    return (renderPassChunkPhase & 0xFFFFFFFB) == 0;
  }

  if (renderPassChunkPhase)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartRep renderReferenceLines]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 2049, 0, "Render pass chunk phase must be none when chunking %ld", self->_renderPassChunkPhase);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (self->_chunkPhase == 4)
  {
    return 1;
  }

  currentChunk = self->_currentChunk;
  v24 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v29 = objc_msgSend_chunkManager(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_chartDeliveryStyle(self, v30, v31, v32, v33);
  v22 = currentChunk == objc_msgSend_chunkCountForChartDeliveryStyle_(v29, v35, v36, v37, v38, v34);

  return v22;
}

- (BOOL)renderLabels
{
  renderPassChunkPhase = self->_renderPassChunkPhase;
  if (self->_buildingChunks)
  {
    if (renderPassChunkPhase)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartRep renderLabels]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 2067, 0, "Render pass chunk phase must be none when chunking %ld", self->_renderPassChunkPhase);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    }

    return self->_chunkPhase == 5 || self->_buildingFinalElements;
  }

  else
  {
    return !renderPassChunkPhase || renderPassChunkPhase == 5;
  }
}

- (BOOL)renderTrendLinesForSeriesIndex:(unint64_t)a3
{
  if (!self->_buildingChunks)
  {
    return 1;
  }

  v8 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v13 = objc_msgSend_chunkManager(v8, v9, v10, v11, v12);
  v14 = self->_currentChunk - self->_buildingFinalElements;
  v19 = objc_msgSend_chartDeliveryStyle(self, v15, v16, v17, v18);
  LOBYTE(a3) = objc_msgSend_lastChunkForSeriesIndex_currentChunk_chunkStyle_(v13, v20, v21, v22, v23, a3, v14, v19);

  return a3;
}

- (id)renderSeriesIndexSetForFinalElements:(BOOL)a3 currentChunk:(int64_t)a4
{
  v8 = a3;
  v10 = objc_msgSend_chartLayout(self, a2, v4, v5, v6);
  v15 = objc_msgSend_model(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_numberOfSeries(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_chartInfo(self, v21, v22, v23, v24);
  v30 = v25;
  v42 = v20;
  v43 = 0;
  if (self->_buildingChunks)
  {
    v31 = objc_msgSend_chunkManager(v25, v26, v27, v28, v29);
    objc_msgSend_adjustRangeForRep_chunkIndex_finalTexture_seriesStart_seriesCount_(v31, v32, v33, v34, v35, self, a4, v8, &v43, &v42);

    objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v36, v37, v38, v39, v43, v42, v42, v43);
  }

  else
  {
    objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v26, v27, v28, v29, 0, v20, v42, v43);
  }
  v40 = ;

  return v40;
}

- (id)renderGroupIndexSetForSeriesIndex:(unint64_t)a3 finalElements:(BOOL)a4 currentChunk:(int64_t)a5
{
  v9 = a4;
  v44 = 0;
  v12 = objc_msgSend_chartLayout(self, a2, v5, v6, v7);
  v17 = objc_msgSend_model(v12, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfGroupsInSeriesAtIndex_(v17, v18, v19, v20, v21, a3);

  v43 = v22;
  if (self->_buildingChunks)
  {
    v27 = objc_msgSend_chartInfo(self, v23, v24, v25, v26);
    v32 = objc_msgSend_chunkManager(v27, v28, v29, v30, v31);
    objc_msgSend_adjustRangeForRep_seriesIndex_chunkIndex_finalTexture_outGroupStart_outGroupCount_(v32, v33, v34, v35, v36, self, a3, a5, v9, &v44, &v43);

    objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v37, v38, v39, v40, v44, v43, v43);
  }

  else
  {
    objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v23, v24, v25, v26, 0, v22, v43);
  }
  v41 = ;

  return v41;
}

- (int)p_backgroundLikePlaneStateForEffectiveStage:(int64_t)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a3 >= 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int)planeState:(int)a3 finalElements:(BOOL)a4 chunkStage:(int64_t)a5
{
  v9 = a4;
  v12 = objc_msgSend_chartDeliveryStyle(self, a2, v5, v6, v7);
  if (v12 == 100)
  {
    return 0;
  }

  v19 = a5 - v9;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (!sub_2762FEAF8(v12))
      {
        v62 = objc_msgSend_chartInfo(self, v58, v59, v60, v61);
        v67 = objc_msgSend_chart(v62, v63, v64, v65, v66);
        v72 = objc_msgSend_chartType(v67, v68, v69, v70, v71);
        v77 = objc_msgSend_rendersBackgroundAxis(v72, v73, v74, v75, v76);

        return !v77 || v19 > 0;
      }
    }

    else if (a3 != 3)
    {
LABEL_12:
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartRep planeState:finalElements:chunkStage:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 2178, 0, "invalid plane type %ld", a3);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
      return 0;
    }

    return 1;
  }

  if (!a3)
  {
    v17 = objc_msgSend_p_backgroundLikePlaneStateForEffectiveStage_(self, v13, v14, v15, v16, v19);
    v39 = objc_msgSend_chartInfo(self, v35, v36, v37, v38);
    v44 = objc_msgSend_chart(v39, v40, v41, v42, v43);
    v49 = objc_msgSend_chartType(v44, v45, v46, v47, v48);
    if ((objc_msgSend_rendersBackgroundAxis(v49, v50, v51, v52, v53) & 1) == 0 && !objc_msgSend_p_hasBackgroundLayerForPieChart(self, v54, v55, v56, v57))
    {
      v17 = 0;
    }

    return v17;
  }

  if (a3 != 1)
  {
    goto LABEL_12;
  }

  return objc_msgSend_p_backgroundLikePlaneStateForEffectiveStage_(self, v13, v14, v15, v16, v19);
}

- (BOOL)planeIsVisible:(int)a3
{
  v7 = self;
  v8 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v13 = objc_msgSend_chart(v8, v9, v10, v11, v12);

  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_rendersBackgroundAxis(v18, v19, v20, v21, v22);

  v29 = objc_msgSend_chartDeliveryStyle(v7, v24, v25, v26, v27);
  if (a3 != 2)
  {
    if (!a3)
    {
      currentChunk = v7->_currentChunk;
      if (v23)
      {
        if (!currentChunk)
        {
          goto LABEL_13;
        }
      }

      else if (!currentChunk && (objc_msgSend_renderElements(v7, v28, v30, v31, v32) & 1) != 0)
      {
        goto LABEL_13;
      }

      LOBYTE(v7) = v7->_buildingFinalBackground;
      goto LABEL_15;
    }

LABEL_13:
    LOBYTE(v7) = 1;
    goto LABEL_15;
  }

  buildingFinalElements = v7->_buildingFinalElements;
  v35 = v7->_currentChunk;
  v36 = v35 > buildingFinalElements;
  if ((v23 & 1) == 0)
  {
    v37 = objc_msgSend_p_hasBackgroundLayerForPieChart(v7, v28, v30, v31, v32) ^ 1;
    if (v35 > buildingFinalElements)
    {
      v36 = 1;
    }

    else
    {
      v36 = v37;
    }
  }

  LODWORD(v7) = !v7->_buildingFinalBackground & (sub_2762FEAF8(v29) || v36);
LABEL_15:

  return (v29 != 100) & v7;
}

- (BOOL)buildShouldUseRenderer:(id)a3
{
  v8 = objc_msgSend_chunkPlane(a3, a2, v3, v4, v5);

  return objc_msgSend_planeIsVisible_(self, v7, v9, v10, v11, v8);
}

- (BOOL)p_legendHitByLayoutPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_msgSend_chartLayout(self, a2, a3.x, a3.y, v3);
  objc_msgSend_legendFrame(v6, v7, v8, v9, v10);
  v11 = v18.origin.x;
  v12 = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectIsNull(v18) || (TSUNearlyEqualSizes() & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    v19.origin.x = v11;
    v19.origin.y = v12;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectInset(v19, -6.0, -6.0);
    v17.x = x;
    v17.y = y;
    v15 = CGRectContainsPoint(v20, v17);
  }

  return v15;
}

- (id)p_textImageForPath:(CGPath *)a3 renderer:(id)a4 selection:(id)a5 shouldPulsate:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v16 = objc_msgSend_canvas(self, v12, v13, v14, v15);
  objc_msgSend_contentsScale(v16, v17, v18, v19, v20);
  v22 = v21;

  v27 = objc_msgSend_canvas(self, v23, v24, v25, v26);
  objc_msgSend_viewScale(v27, v28, v29, v30, v31);
  v33 = v32;

  BoundingBox = CGPathGetBoundingBox(a3);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v114 = CGRectIntegral(BoundingBox);
  v38 = v114.origin.x;
  v39 = v114.origin.y;
  v40 = v22 * v33;
  TSUMultiplyRectScalar();
  v116 = CGRectIntegral(v115);
  v41 = v116.size.width == *MEMORY[0x277CBF3A8] && v116.size.height == *(MEMORY[0x277CBF3A8] + 8);
  if (!v41 && (v42 = TSDBitmapContextCreate()) != 0 && (v47 = v42, objc_msgSend_canvas(self, v43, v44, v45, v46), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isPrinting(v48, v49, v50, v51, v52), objc_msgSend_canvas(self, v53, v54, v55, v56), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isDrawingIntoPDF(v57, v58, v59, v60, v61), objc_msgSend_contentsScale(self, v62, v63, v64, v65), objc_msgSend_canvas(self, v66, v67, v68, v69), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend_shouldSuppressBackgrounds(v70, v71, v72, v73, v74), TSDSetCGContextInfo(), v70, v57, v48, sub_27631FDD8(v47, 1, v75, v76, v77), CGContextScaleCTM(v47, v40, v40), CGContextTranslateCTM(v47, -v38, -v39), CGContextSetShouldSmoothFonts(v47, 0), CGContextSetShouldAntialias(v47, 1), v117.origin.x = x, v117.origin.y = y, v117.size.width = width, v117.size.height = height, CGRectInset(v117, -2.0, -2.0), CGContextClipToRectSafe(), objc_msgSend_drawTextBackground_insetRect_pulsating_shouldTint_(self, v78, x, y, width, v47, v6, 1, height), objc_msgSend_sharedText(TSCHText, v79, v80, v81, v82), v83 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setTextColorShouldBeBlack_(v83, v84, v85, v86, v87, 1), v83, objc_msgSend_renderIntoContext_selection_(v10, v88, v89, v90, v91, v47, v11), objc_msgSend_sharedText(TSCHText, v92, v93, v94, v95), v96 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setTextColorShouldBeBlack_(v96, v97, v98, v99, v100, 0), v96, Image = CGBitmapContextCreateImage(v47), sub_27631FF58(v47, v102, v103, v104, v105), CGContextRelease(v47), Image))
  {
    v106 = objc_alloc(MEMORY[0x277D811F8]);
    v110 = objc_msgSend_initWithCGImage_scale_orientation_(v106, v107, v22, v108, v109, Image, 0);
    CGImageRelease(Image);
  }

  else
  {
    v110 = 0;
  }

  return v110;
}

- (CGRect)outerShadowFrame
{
  v5 = objc_msgSend_chartLayout(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_outerShadowFrame(v5, v6, v7, v8, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartRep outerShadowFrame]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 4318, 0, "invalid nil value for '%{public}s'", "chartLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v12 = *MEMORY[0x277CBF398];
    v14 = *(MEMORY[0x277CBF398] + 8);
    v16 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  v34 = v12;
  v35 = v14;
  v36 = v16;
  v37 = v18;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)convertUnscaledToBoundsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_msgSend_canvas(self, a2, a3.origin.x, a3.origin.y, a3.size.width);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartRep convertUnscaledToBoundsRect:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 4331, 0, "invalid nil value for '%{public}s'", "self.canvas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_canvas(self, v9, v10, v11, v12);
  objc_msgSend_convertUnscaledToBoundsRect_(v28, v29, x, y, width, height);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (double)captionBottomDistanceToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_opt_class();
  v12 = objc_msgSend_info(self, v8, v9, v10, v11);
  v13 = TSUCheckedDynamicCast();
  v18 = objc_msgSend_caption(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_layout(self, v19, v20, v21, v22);
  v28 = objc_msgSend_layoutController(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_layout(self, v29, v30, v31, v32);
  v38 = objc_msgSend_layoutForInfo_childOfLayout_(v28, v34, v35, v36, v37, v18, v33);

  if (v38)
  {
    v43 = objc_msgSend_geometry(v38, v39, v40, v41, v42);
    objc_msgSend_frame(v43, v44, v45, v46, v47);
    MaxY = CGRectGetMaxY(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v49 = MaxY - CGRectGetMaxY(v52);
  }

  else
  {
    v49 = 0.0;
  }

  return v49;
}

- (CGPoint)lastSubselectionLayerRelativeReferencePosition
{
  x = self->_lastSubselectionLayerRelativeReferencePosition.x;
  y = self->_lastSubselectionLayerRelativeReferencePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
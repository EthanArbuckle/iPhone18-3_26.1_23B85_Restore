@interface TSCHChartBarElementsRenderer
- (CGPath)clippingPathForRect:(CGRect)rect inGroupIndex:(unint64_t)index series:(id)series withContext:(CGContext *)context relativelyPositive:(BOOL)positive stackRects:(id)rects forceRoundedCornersOff:(BOOL)off;
- (CGPath)roundedCornerPathForRect:(CGRect)rect shouldRoundOuterEndOnly:(BOOL)only relativelyPositive:(BOOL)positive;
- (CGRect)barElementFrameForSeries:(id)series groupIndex:(unint64_t)index;
- (CGRect)renderingElementFrameForBarElementFrame:(CGRect)frame groupIndex:(unint64_t)index modelCache:(id)cache stroke:(id)stroke viewScale:(double)scale contextInfo:(id *)info returningFillRect:(CGRect *)rect strokeRect:(CGRect *)self0;
- (TSCHChartBarElementsRenderer)initWithChartRep:(id)rep layoutItem:(id)item;
- (id)allRenderingFills;
- (id)p_strokeForSeriesIndex:(unint64_t)index withContext:(CGContext *)context;
- (void)enumerateElementsForSeries:(id)series context:(CGContext *)context elementCount:(unint64_t)count groupIndexes:(unint64_t *)indexes elementRects:(CGRect *)rects clipRects:(CGRect *)clipRects forBlock:(id)block;
- (void)p_drawBars:(CGContext *)bars visible:(CGRect)visible;
- (void)p_drawLabels:(CGContext *)labels visible:(CGRect)visible;
- (void)p_drawLayer:(CGLayer *)layer intoContext:(CGContext *)context contextRect:(CGRect)rect groupIndex:(unint64_t)index series:(id)series relativelyPositive:(BOOL)positive stackRects:(id)rects forceRoundedCornersOff:(BOOL)self0;
- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)p_renderLabelsWithLabelCount:(unint64_t)count transforms:(CGAffineTransform *)transforms clipRects:(CGRect *)rects strings:(id)strings context:(CGContext *)context tLayerRect:(CGRect)rect groupedShadows:(BOOL)shadows groupedTransparencyLayerOpened:(BOOL *)self0 textEngine:(id)self1 paragraphStyle:(id)self2 viewScale:(double)self3;
- (void)renderElementStroke:(id)stroke intoContext:(CGContext *)context usingElementRenderRect:(CGRect)rect inGroupIndex:(unint64_t)index series:(id)series relativelyPositive:(BOOL)positive stackRects:(id)rects forceRoundedCornersOff:(BOOL)self0;
- (void)renderRoundedCornerElementStrokeIntoContext:(CGContext *)context stroke:(id)stroke clippingPath:(CGPath *)path elementRenderRect:(CGRect)rect;
@end

@implementation TSCHChartBarElementsRenderer

- (TSCHChartBarElementsRenderer)initWithChartRep:(id)rep layoutItem:(id)item
{
  v40 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = TSCHChartBarElementsRenderer;
  v4 = [(TSCHRenderer *)&v38 initWithChartRep:rep layoutItem:item];
  v8 = v4;
  if (v4)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = objc_msgSend_model(v4, v5, 0.0, v6, v7, 0);
    v14 = objc_msgSend_axisList(v9, v10, v11, v12, v13);

    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v34, v39, 16);
    if (v19)
    {
      v24 = v19;
      v25 = *v35;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v14);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          if ((objc_msgSend_isCategory(v27, v20, v21, v22, v23) & 1) == 0)
          {
            v28 = objc_msgSend_axisID(v27, v20, v21, v22, v23);
            v8->_vertical = objc_msgSend_type(v28, v29, v30, v31, v32) == 2;

            goto LABEL_12;
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, v21, v22, v23, &v34, v39, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v8;
}

- (CGRect)barElementFrameForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  v72 = 0;
  objc_opt_class();
  v11 = objc_msgSend_seriesType(seriesCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_elementBuilder(v11, v12, v13, v14, v15);
  v17 = TSUDynamicCast();

  if (!v17)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHChartBarElementsRenderer barElementFrameForSeries:groupIndex:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 109, 0, "invalid nil value for '%{public}s'", "elementBuilder");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v37 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v18, v19, v20, v21, index);
  v42 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(v17, v38, v39, v40, v41, seriesCopy, v37, self->super._layoutItem, 0, &v72, 0);

  if (v42 >= 2)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCHChartBarElementsRenderer barElementFrameForSeries:groupIndex:]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 117, 0, "invalid number of element rects %lu", v42);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

  else if (!v42)
  {
    v47 = MEMORY[0x277CBF398];
    v48 = v72;
    goto LABEL_8;
  }

  v48 = v72;
  v47 = v72;
LABEL_8:
  v64 = *v47;
  v65 = v47[1];
  v66 = v47[2];
  v67 = v47[3];
  if (v48)
  {
    free(v48);
  }

  v68 = v64;
  v69 = v65;
  v70 = v66;
  v71 = v67;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (CGRect)renderingElementFrameForBarElementFrame:(CGRect)frame groupIndex:(unint64_t)index modelCache:(id)cache stroke:(id)stroke viewScale:(double)scale contextInfo:(id *)info returningFillRect:(CGRect *)rect strokeRect:(CGRect *)self0
{
  width = frame.size.width;
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  v165 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  strokeCopy = stroke;
  if (!cacheCopy)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21.width, v22, "[TSCHChartBarElementsRenderer renderingElementFrameForBarElementFrame:groupIndex:modelCache:stroke:viewScale:contextInfo:returningFillRect:strokeRect:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 128, 0, "invalid nil value for '%{public}s'", "modelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = MEMORY[0x277CBF398];
  if (rect)
  {
    v21 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v21;
  }

  if (strokeRect)
  {
    v21 = *(v38 + 16);
    strokeRect->origin = *v38;
    strokeRect->size = v21;
  }

  objc_msgSend_barElementsRendererValueRangeForModelCache_groupIndex_(TSCHRenderUtilities, v18, 0.0, v21.width, v22, cacheCopy, index);
  layoutItem = self->super._layoutItem;
  if (!layoutItem)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartBarElementsRenderer renderingElementFrameForBarElementFrame:groupIndex:modelCache:stroke:viewScale:contextInfo:returningFillRect:strokeRect:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 142, 0, "invalid nil value for '%{public}s'", "_layoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
    layoutItem = self->super._layoutItem;
  }

  objc_msgSend_rootedLayoutRect(layoutItem, v39, v40, v41, v42);
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = objc_msgSend_series(cacheCopy, v67, v59, v61, v63);
  v73 = objc_msgSend_seriesType(v68, v69, v70, v71, v72);
  objc_opt_class();
  v78 = objc_msgSend_elementBuilder(v73, v74, v75, v76, v77);
  v79 = TSUDynamicCast();

  if (!v79)
  {
    v84 = MEMORY[0x277D81150];
    rectCopy = rect;
    v86 = v73;
    strokeRectCopy = strokeRect;
    v88 = strokeCopy;
    infoCopy = info;
    v90 = v68;
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "[TSCHChartBarElementsRenderer renderingElementFrameForBarElementFrame:groupIndex:modelCache:stroke:viewScale:contextInfo:returningFillRect:strokeRect:]");
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v97, v98, v99, v100, v91, v96, 147, 0, "invalid nil value for '%{public}s'", "elementBuilder");

    v68 = v90;
    info = infoCopy;
    strokeCopy = v88;
    strokeRect = strokeRectCopy;
    v73 = v86;
    rect = rectCopy;
    v79 = 0;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
  }

  objc_msgSend_nudgeBarElementFrame_inPlotAreaFrame_usingBarModelCache_unitSpaceValueBegin_unitSpaceValueEnd_withViewScale_(v79, v80, x, y, width, cacheCopy, height, v60, v62, v64, v66, 0, 0, *&scale);
  v109 = v106;
  v110 = v107;
  v111 = v108;
  v113 = v112;
  if (!strokeCopy)
  {
    strokeCopy = objc_msgSend_stroke(cacheCopy, v105, v106, v107, v108);
  }

  v118 = 0.0;
  if (objc_msgSend_shouldRender(strokeCopy, v105, v106, v107, v108))
  {
    objc_msgSend_width(strokeCopy, v114, v115, v116, v117);
    v118 = v119 + v119;
  }

  v166.origin.x = v109;
  v166.origin.y = v110;
  v166.size.width = v111;
  v166.size.height = v113;
  if (!CGRectIsNull(v166))
  {
    if (rect)
    {
      vertical = self->_vertical;
      a = info->var0.a;
      b = info->var0.b;
      c = info->var0.c;
      d = info->var0.d;
      var1 = info->var1;
      v163 = *&info->var0.tx;
      v164 = var1;
      v161.a = a;
      v161.b = b;
      v155 = b;
      v157 = c;
      v161.c = c;
      v161.d = d;
      v159 = d;
      v126 = info->var1;
      *&v161.tx = *&info->var0.tx;
      v162 = v126;
      sub_27628C534(&v161, v109, v110, v111, v113, 0.0);
      v131 = v130;
      v132 = v127;
      v133 = v128;
      v134 = v129;
      if (vertical)
      {
        v135 = v128 < 1.0 || v128 == 1.0;
        if (v135 || fabs(v128 + -1.0) < 0.01)
        {
          v136 = v113 * v157 + a * v111;
          if (v136 < 0.95 && fabs(v136 + -0.95) >= 0.00999999978)
          {
            v160.a = a;
            v160.b = v155;
            v160.c = v157;
            v160.d = v159;
            *&v160.tx = v163;
            v137 = v131;
            v138 = v127;
            CGAffineTransformInvert(&v161, &v160);
            v132 = v138;
            v131 = v137;
            v133 = *(MEMORY[0x277D814F0] + 8) * v161.c + v161.a * *MEMORY[0x277D814F0];
          }
        }
      }

      else
      {
        v139 = v129 < 1.0 || v129 == 1.0;
        if (v139 || fabs(v129 + -1.0) < 0.01)
        {
          v140 = v113 * v159 + v155 * v111;
          if (v140 < 0.95 && fabs(v140 + -0.95) >= 0.00999999978)
          {
            v160.a = a;
            v160.b = v155;
            v160.c = v157;
            v160.d = v159;
            *&v160.tx = v163;
            v141 = v131;
            v142 = v127;
            CGAffineTransformInvert(&v161, &v160);
            v132 = v142;
            v131 = v141;
            v134 = *(MEMORY[0x277D814F0] + 8) * v161.d + v161.b * *MEMORY[0x277D814F0];
          }
        }
      }

      rect->origin.x = v131;
      rect->origin.y = v132;
      rect->size.width = v133;
      rect->size.height = v134;
    }

    if (strokeRect)
    {
      v143 = *&info->var0.c;
      *&v161.a = *&info->var0.a;
      *&v161.c = v143;
      v144 = info->var1;
      *&v161.tx = *&info->var0.tx;
      v162 = v144;
      sub_27628C534(&v161, v109, v110, v111, v113, v118);
      strokeRect->origin.x = v145;
      strokeRect->origin.y = v146;
      strokeRect->size.width = v147;
      strokeRect->size.height = v148;
    }
  }

  v149 = v109;
  v150 = v110;
  v151 = v111;
  v152 = v113;
  result.size.height = v152;
  result.size.width = v151;
  result.origin.y = v150;
  result.origin.x = v149;
  return result;
}

- (void)p_drawBars:(CGContext *)bars visible:(CGRect)visible
{
  v6 = objc_msgSend_chartRep(self, a2, visible.origin.x, visible.origin.y, visible.size.width);
  v11 = objc_msgSend_renderElementsShadowOnly(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_renderElementsWithoutShadows(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_model(self, v17, v18, v19, v20);
  HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
  objc_msgSend_viewScale(self, v23, v24, v25, v26);
  v116 = v27;
  objc_msgSend_tLayerRectForContext_(self, v28, v27, v29, v30, bars);
  v114 = v32;
  v115 = v31;
  v34 = v33;
  rect = v35;
  objc_msgSend_rootedLayoutRect(self->super._layoutItem, v36, v31, v32, v33);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  CGContextSaveGState(bars);
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = sub_276256200;
  v144[3] = &unk_27A6B6E70;
  v145 = v11;
  v144[4] = v38;
  v144[5] = v40;
  v144[6] = v42;
  v144[7] = v44;
  v144[8] = bars;
  v46 = MEMORY[0x277C98B30](v144);
  v111 = HasBackgroundsSuppressed;
  if (HasBackgroundsSuppressed)
  {
    v50 = 0;
  }

  else
  {
    v51 = objc_msgSend_model(self, v45, v47, v48, v49);
    v50 = objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v52, v53, v54, v55, v51);
  }

  v138 = 0;
  v139 = &v138;
  v140 = 0x3032000000;
  v141 = sub_2762562F4;
  v142 = sub_276256304;
  v143 = 0;
  if (v50)
  {
    v56 = v16;
    v110 = objc_msgSend_seriesAtIndex_(v21, v45, COERCE_DOUBLE(0x3032000000), v48, v49, 0);
    v61 = objc_msgSend_chartInfo(v21, v57, v58, v59, v60);
    v66 = objc_msgSend_chartType(v61, v62, v63, v64, v65);
    v71 = objc_msgSend_supportsSeriesShadow(v66, v67, v68, v69, v70);

    if (v71)
    {
      v76 = objc_msgSend_objectValueForProperty_(v110, v72, v73, v74, v75, 1172);
      v77 = v139[5];
      v139[5] = v76;
    }

    v78 = v46[2](v46, v139[5]);
    v80 = v79;
    v16 = v56;
    if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v81, v78, v79, v82, v139[5]))
    {
      v91 = 0;
      if (objc_msgSend_shadowsEnabled(v6, v83, v84, v85, v86) && (v16 & 1) == 0)
      {
        v92 = sub_27631FD2C(bars, v87, v88, v89, v90);
        objc_msgSend_applyToContext_viewScale_flipped_extraOffset_(v139[5], v93, v116, v78, v80, bars, v92);
        v146.origin.y = v114;
        v146.origin.x = v115;
        v146.size.width = v34;
        v146.size.height = rect;
        CGContextBeginTransparencyLayerWithRect(bars, v146, 0);
        v91 = 1;
      }
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0;
  }

  v94 = *MEMORY[0x277CBF398];
  v95 = *(MEMORY[0x277CBF398] + 16);
  self->_lastDrawRect.origin = *MEMORY[0x277CBF398];
  self->_lastDrawRect.size = v95;
  v96 = objc_msgSend_renderSeriesIndexSet(v6, v45, *&v94, v95.width, v49);
  v101 = objc_msgSend_stackRectsWithContext_(self, v97, v98, v99, v100, bars);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = sub_27625630C;
  v117[3] = &unk_27A6B6EC0;
  barsCopy = bars;
  v102 = v21;
  v118 = v102;
  selfCopy = self;
  v135 = v50;
  v123 = &v138;
  v136 = v111;
  v103 = v6;
  v120 = v103;
  v104 = v46;
  v122 = v104;
  v137 = v16;
  v125 = v116;
  v126 = v115;
  v127 = v114;
  v128 = v34;
  v129 = rect;
  v130 = v38;
  v131 = v40;
  v132 = v42;
  v133 = v44;
  visibleCopy = visible;
  v105 = v101;
  v121 = v105;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v96, v106, v107, v108, v109, 2, v117);
  if (v91)
  {
    CGContextEndTransparencyLayer(bars);
  }

  CGContextRestoreGState(bars);

  _Block_object_dispose(&v138, 8);
}

- (void)p_drawLayer:(CGLayer *)layer intoContext:(CGContext *)context contextRect:(CGRect)rect groupIndex:(unint64_t)index series:(id)series relativelyPositive:(BOOL)positive stackRects:(id)rects forceRoundedCornersOff:(BOOL)self0
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = objc_msgSend_clippingPathForRect_inGroupIndex_series_withContext_relativelyPositive_stackRects_forceRoundedCornersOff_(self, a2, rect.origin.x, rect.origin.y, rect.size.width, index, series, context, positive, rects, off);
  if (v16)
  {
    sub_276257170(context, v16, 0);
  }

  objc_msgSend_drawCGLayer_inContext_rect_(TSCHRenderUtilities, v17, x, y, width, layer, context, height);
}

- (void)enumerateElementsForSeries:(id)series context:(CGContext *)context elementCount:(unint64_t)count groupIndexes:(unint64_t *)indexes elementRects:(CGRect *)rects clipRects:(CGRect *)clipRects forBlock:(id)block
{
  seriesCopy = series;
  blockCopy = block;
  v62 = seriesCopy;
  v21 = objc_msgSend_seriesIndex(seriesCopy, v17, v18, v19, v20);
  v60 = objc_msgSend_model(self, v22, v23, v24, v25);
  v61 = objc_msgSend_barModelCacheForSeries_(v60, v26, v27, v28, v29, v21);
  if (count)
  {
    v30 = count - 1;
    v31 = 32 * count - 16;
    v32 = (&rects->origin.x + v31);
    v33 = (&clipRects->origin.x + v31);
    do
    {
      v34 = objc_autoreleasePoolPush();
      v35 = *(v32 - 2);
      v36 = *(v32 - 1);
      v37 = *v32;
      v38 = v32[1];
      v39 = *(v33 - 2);
      v40 = *(v33 - 1);
      v41 = *v33;
      v42 = v33[1];
      v43 = indexes[v30];
      v70.origin.x = v35;
      v70.origin.y = v36;
      v70.size.width = *v32;
      v70.size.height = v38;
      if (!CGRectIsNull(v70))
      {
        v71.origin.x = v39;
        v71.origin.y = v40;
        v71.size.width = v41;
        v71.size.height = v42;
        if (!CGRectIsNull(v71) && fabs(v38) >= 0.01)
        {
          v46 = fabs(v37);
          if (v46 >= 0.01)
          {
            v47 = objc_msgSend_seriesIndex(v62, v44, v46, 0.01, v45);
            v52 = objc_msgSend_p_strokeForSeriesIndex_withContext_(self, v48, v49, v50, v51, v47, context);
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v53 = sub_27628C4A4(context, &v66);
            objc_msgSend_viewScale(self, v54, v53, v55, v56);
            v57 = *(MEMORY[0x277CBF398] + 16);
            v65[0] = *MEMORY[0x277CBF398];
            v65[1] = v57;
            v64[0] = v65[0];
            v64[1] = v57;
            v63[0] = v66;
            v63[1] = v67;
            v63[2] = v68;
            v63[3] = v69;
            objc_msgSend_renderingElementFrameForBarElementFrame_groupIndex_modelCache_stroke_viewScale_contextInfo_returningFillRect_strokeRect_(self, v58, v35, v36, v37, v43, v61, v52, v63, v65, v64, v38, v59);
            blockCopy[2](blockCopy, v30, v43);
          }
        }
      }

      objc_autoreleasePoolPop(v34);
      --v30;
      v32 -= 4;
      v33 -= 4;
    }

    while (v30 != -1);
  }
}

- (void)renderElementStroke:(id)stroke intoContext:(CGContext *)context usingElementRenderRect:(CGRect)rect inGroupIndex:(unint64_t)index series:(id)series relativelyPositive:(BOOL)positive stackRects:(id)rects forceRoundedCornersOff:(BOOL)self0
{
  positiveCopy = positive;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  strokeCopy = stroke;
  rectsCopy = rects;
  seriesCopy = series;
  CGContextSaveGState(context);
  v23 = objc_msgSend_clippingPathForRect_inGroupIndex_series_withContext_relativelyPositive_stackRects_forceRoundedCornersOff_(self, v22, x, y, width, index, seriesCopy, context, positiveCopy, rectsCopy, off, height);

  if (v23)
  {
    objc_msgSend_renderRoundedCornerElementStrokeIntoContext_stroke_clippingPath_elementRenderRect_(self, v24, x, y, width, context, strokeCopy, v23, height);
  }

  else
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectIsNull(v31))
    {
      CGContextClipToRectSafe();
      objc_msgSend_applyToContext_insideStroke_(strokeCopy, v25, v26, v27, v28, context, 1);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      CGContextStrokeRect(context, v32);
    }
  }

  CGContextRestoreGState(context);
}

- (void)renderRoundedCornerElementStrokeIntoContext:(CGContext *)context stroke:(id)stroke clippingPath:(CGPath *)path elementRenderRect:(CGRect)rect
{
  objc_msgSend_applyToContext_insideStroke_(stroke, a2, rect.origin.x, rect.origin.y, rect.size.width, context, 1, rect.size.height);
  CGContextAddPathSafe();

  CGContextStrokePath(context);
}

- (id)p_strokeForSeriesIndex:(unint64_t)index withContext:(CGContext *)context
{
  v8 = objc_msgSend_model(self, a2, v4, v5, v6);
  v13 = objc_msgSend_barModelCacheForSeries_(v8, v9, v10, v11, v12, index);
  v18 = objc_msgSend_stroke(v13, v14, v15, v16, v17);
  if (TSDCGContextHasBackgroundsSuppressed() && (!v18 || (objc_msgSend_shouldRender(v18, v19, v20, v21, v22) & 1) == 0))
  {
    v23 = MEMORY[0x277D803C0];
    v24 = objc_msgSend_blackColor(MEMORY[0x277D81180], v19, v20, v21, v22);
    v28 = objc_msgSend_strokeWithColor_width_(v23, v25, 1.0, v26, v27, v24);

    v18 = v28;
  }

  return v18;
}

- (CGPath)clippingPathForRect:(CGRect)rect inGroupIndex:(unint64_t)index series:(id)series withContext:(CGContext *)context relativelyPositive:(BOOL)positive stackRects:(id)rects forceRoundedCornersOff:(BOOL)off
{
  positiveCopy = positive;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = objc_msgSend_model(self, a2, rect.origin.x, rect.origin.y, rect.size.width, index, series, context, positive, rects);
  v21 = objc_msgSend_chartInfo(v16, v17, v18, v19, v20);

  if (off || !objc_msgSend_hasRoundedCorners(v21, v22, v23, v24, v25))
  {
    goto LABEL_5;
  }

  v30 = objc_msgSend_chartRep(self, v26, v27, v28, v29);
  if ((objc_msgSend_is2DRepFor3DChartRep(v30, v31, v32, v33, v34) & 1) != 0 || width == 0.0 || fabs(width) < 0.00999999978)
  {

LABEL_5:
    shouldRoundOuterEndOnly_relativelyPositive = 0;
    goto LABEL_6;
  }

  shouldRoundOuterEndOnly_relativelyPositive = 0;
  if (height != 0.0)
  {
    v40 = fabs(height);
    if (v40 >= 0.00999999978)
    {
      v41 = objc_msgSend_intValueForProperty_defaultValue_(v21, v37, v40, v38, v39, 1110, 0) != 0;
      shouldRoundOuterEndOnly_relativelyPositive = objc_msgSend_roundedCornerPathForRect_shouldRoundOuterEndOnly_relativelyPositive_(self, v42, x, y, width, v41, positiveCopy, height);
    }
  }

LABEL_6:

  return shouldRoundOuterEndOnly_relativelyPositive;
}

- (CGPath)roundedCornerPathForRect:(CGRect)rect shouldRoundOuterEndOnly:(BOOL)only relativelyPositive:(BOOL)positive
{
  positiveCopy = positive;
  onlyCopy = only;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = objc_msgSend_model(self, a2, rect.origin.x, rect.origin.y, rect.size.width);
  v17 = objc_msgSend_chartInfo(v12, v13, v14, v15, v16);

  objc_msgSend_floatValueForProperty_defaultValue_(v17, v18, 0.0, v19, v20, 1111);
  v22 = sub_2762A1C64(self->_vertical, onlyCopy, positiveCopy, 1, x, y, width, height, v21);
  v23 = CFAutorelease(v22);

  return v23;
}

- (void)p_drawLabels:(CGContext *)labels visible:(CGRect)visible
{
  v6 = objc_msgSend_chartRep(self, a2, visible.origin.x, visible.origin.y, visible.size.width, visible.size.height);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chart(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_sharedText(TSCHText, v17, v18, v19, v20);
  objc_opt_class();
  v26 = objc_msgSend_layoutItem(self, v22, v23, v24, v25);
  v27 = TSUDynamicCast();

  objc_msgSend_tLayerRectForContext_(self, v28, v29, v30, v31, labels);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = objc_msgSend_model(self, v40, v32, v34, v36);
  LODWORD(v26) = objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v42, v43, v44, v45, v41);

  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  objc_msgSend_viewScale(self, v46, COERCE_DOUBLE(0x2020000000), v47, v48);
  v50 = v49;
  CGContextSaveGState(labels);
  v55 = objc_msgSend_renderSeriesIndexSet(v6, v51, v52, v53, v54);
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = sub_276257C24;
  v88[3] = &unk_27A6B6EE8;
  v56 = v11;
  v89 = v56;
  v57 = v6;
  v90 = v57;
  v58 = v27;
  v91 = v58;
  selfCopy = self;
  v96 = v33;
  v97 = v35;
  v98 = v37;
  v99 = v39;
  v101 = v26;
  v94 = &v102;
  labelsCopy = labels;
  v59 = v21;
  v93 = v59;
  v100 = v50;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v55, v60, v61, v62, v63, 2, v88);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_276257D74;
  v73[3] = &unk_27A6B6F10;
  v64 = v56;
  v74 = v64;
  v65 = v57;
  v75 = v65;
  v66 = v16;
  v76 = v66;
  v67 = v58;
  v77 = v67;
  selfCopy2 = self;
  v82 = v33;
  v83 = v35;
  v84 = v37;
  v85 = v39;
  v87 = v26;
  v80 = &v102;
  labelsCopy2 = labels;
  v68 = v59;
  v79 = v68;
  v86 = v50;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v55, v69, v70, v71, v72, 2, v73);
  if (v26 && *(v103 + 24) == 1)
  {
    CGContextEndTransparencyLayer(labels);
  }

  CGContextRestoreGState(labels);

  _Block_object_dispose(&v102, 8);
}

- (void)p_renderLabelsWithLabelCount:(unint64_t)count transforms:(CGAffineTransform *)transforms clipRects:(CGRect *)rects strings:(id)strings context:(CGContext *)context tLayerRect:(CGRect)rect groupedShadows:(BOOL)shadows groupedTransparencyLayerOpened:(BOOL *)self0 textEngine:(id)self1 paragraphStyle:(id)self2 viewScale:(double)self3
{
  shadowsCopy = shadows;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringsCopy = strings;
  engineCopy = engine;
  styleCopy = style;
  if (opened)
  {
    if (count)
    {
      v28 = 0;
      p_size = &rects->size;
      do
      {
        v30 = *&transforms->c;
        *&v60.a = *&transforms->a;
        *&v60.c = v30;
        *&v60.tx = *&transforms->tx;
        v31 = p_size[-1].width;
        v32 = p_size[-1].height;
        v34 = p_size->width;
        v33 = p_size->height;
        v35 = objc_msgSend_objectAtIndexedSubscript_(stringsCopy, v23, v60.tx, *&v30, v27, v28);
        v61.origin.x = v31;
        v61.origin.y = v32;
        v61.size.width = v34;
        v61.size.height = v33;
        if (!CGRectIsNull(v61))
        {
          transform = v60;
          v62.origin.x = v31;
          v62.origin.y = v32;
          v62.size.width = v34;
          v62.size.height = v33;
          v66 = CGRectApplyAffineTransform(v62, &transform);
          v63.origin.x = x;
          v63.origin.y = y;
          v63.size.width = width;
          v63.size.height = height;
          if (CGRectIntersectsRect(v63, v66))
          {
            if (shadowsCopy)
            {
              if (!*opened)
              {
                v64.origin.x = x;
                v64.origin.y = y;
                v64.size.width = width;
                v64.size.height = height;
                CGContextBeginTransparencyLayerWithRect(context, v64, 0);
                *opened = 1;
              }

              CGContextSaveGState(context);
              transform = v60;
              CGContextConcatCTM(context, &transform);
              objc_msgSend_drawText_paragraphStyle_intoContext_viewScale_(engineCopy, v36, scale, v37, v38, v35, styleCopy, context);
            }

            else
            {
              CGContextSaveGState(context);
              transform = v60;
              CGContextConcatCTM(context, &transform);
              v65.origin.x = v31;
              v65.origin.y = v32;
              v65.size.width = v34;
              v65.size.height = v33;
              CGContextBeginTransparencyLayerWithRect(context, v65, 0);
              objc_msgSend_drawText_paragraphStyle_intoContext_viewScale_(engineCopy, v39, scale, v40, v41, v35, styleCopy, context);
              CGContextEndTransparencyLayer(context);
            }

            CGContextRestoreGState(context);
          }
        }

        ++v28;
        p_size += 2;
        ++transforms;
      }

      while (count != v28);
    }
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v25, v26, v27, "[TSCHChartBarElementsRenderer p_renderLabelsWithLabelCount:transforms:clipRects:strings:context:tLayerRect:groupedShadows:groupedTransparencyLayerOpened:textEngine:paragraphStyle:viewScale:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 663, 0, "invalid NULL value for groupedTransparencyLayerOpened");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }
}

- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v28 = objc_msgSend_chartRep(self, a2, visible.origin.x, visible.origin.y, visible.size.width);
  if (objc_msgSend_renderElements(v28, v10, v11, v12, v13))
  {
    objc_msgSend_p_drawBars_visible_(self, v14, x, y, width, context, height);
  }

  if (objc_msgSend_renderLabels(v28, v14, v15, v16, v17))
  {
    v18 = objc_opt_class();
    objc_msgSend_drawErrorBarsInContext_chartVertical_elementRenderClass_(self, v19, v20, v21, v22, context, self->_vertical, v18);
    objc_msgSend_drawTrendLinesInContext_chartVertical_elementRenderClass_(self, v23, v24, v25, v26, context, self->_vertical, v18);
    objc_msgSend_p_drawLabels_visible_(self, v27, x, y, width, context, height);
  }
}

- (id)allRenderingFills
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = objc_msgSend_seriesList(v8, v9, 0.0, v10, v11, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v46, v50, 16);
  if (v17)
  {
    v22 = v17;
    v23 = *v47;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v12);
        }

        v25 = objc_msgSend_seriesIndex(*(*(&v46 + 1) + 8 * i), v18, v19, v20, v21);
        v30 = objc_msgSend_barModelCacheForSeries_(v8, v26, v27, v28, v29, v25);
        v36 = objc_msgSend_fill(v30, v31, v32, v33, v34);
        if (v36)
        {
          objc_msgSend_addObject_(v3, v35, v37, v38, v39, v36);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v19, v20, v21, &v46, v50, 16);
    }

    while (v22);
  }

  v44 = objc_msgSend_copy(v3, v40, v41, v42, v43);

  return v44;
}

@end
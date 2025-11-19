@interface TSCHChartBarElementsRenderer
- (CGPath)clippingPathForRect:(CGRect)a3 inGroupIndex:(unint64_t)a4 series:(id)a5 withContext:(CGContext *)a6 relativelyPositive:(BOOL)a7 stackRects:(id)a8 forceRoundedCornersOff:(BOOL)a9;
- (CGPath)roundedCornerPathForRect:(CGRect)a3 shouldRoundOuterEndOnly:(BOOL)a4 relativelyPositive:(BOOL)a5;
- (CGRect)barElementFrameForSeries:(id)a3 groupIndex:(unint64_t)a4;
- (CGRect)renderingElementFrameForBarElementFrame:(CGRect)a3 groupIndex:(unint64_t)a4 modelCache:(id)a5 stroke:(id)a6 viewScale:(double)a7 contextInfo:(id *)a8 returningFillRect:(CGRect *)a9 strokeRect:(CGRect *)a10;
- (TSCHChartBarElementsRenderer)initWithChartRep:(id)a3 layoutItem:(id)a4;
- (id)allRenderingFills;
- (id)p_strokeForSeriesIndex:(unint64_t)a3 withContext:(CGContext *)a4;
- (void)enumerateElementsForSeries:(id)a3 context:(CGContext *)a4 elementCount:(unint64_t)a5 groupIndexes:(unint64_t *)a6 elementRects:(CGRect *)a7 clipRects:(CGRect *)a8 forBlock:(id)a9;
- (void)p_drawBars:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_drawLabels:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_drawLayer:(CGLayer *)a3 intoContext:(CGContext *)a4 contextRect:(CGRect)a5 groupIndex:(unint64_t)a6 series:(id)a7 relativelyPositive:(BOOL)a8 stackRects:(id)a9 forceRoundedCornersOff:(BOOL)a10;
- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_renderLabelsWithLabelCount:(unint64_t)a3 transforms:(CGAffineTransform *)a4 clipRects:(CGRect *)a5 strings:(id)a6 context:(CGContext *)a7 tLayerRect:(CGRect)a8 groupedShadows:(BOOL)a9 groupedTransparencyLayerOpened:(BOOL *)a10 textEngine:(id)a11 paragraphStyle:(id)a12 viewScale:(double)a13;
- (void)renderElementStroke:(id)a3 intoContext:(CGContext *)a4 usingElementRenderRect:(CGRect)a5 inGroupIndex:(unint64_t)a6 series:(id)a7 relativelyPositive:(BOOL)a8 stackRects:(id)a9 forceRoundedCornersOff:(BOOL)a10;
- (void)renderRoundedCornerElementStrokeIntoContext:(CGContext *)a3 stroke:(id)a4 clippingPath:(CGPath *)a5 elementRenderRect:(CGRect)a6;
@end

@implementation TSCHChartBarElementsRenderer

- (TSCHChartBarElementsRenderer)initWithChartRep:(id)a3 layoutItem:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = TSCHChartBarElementsRenderer;
  v4 = [(TSCHRenderer *)&v38 initWithChartRep:a3 layoutItem:a4];
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

- (CGRect)barElementFrameForSeries:(id)a3 groupIndex:(unint64_t)a4
{
  v6 = a3;
  v72 = 0;
  objc_opt_class();
  v11 = objc_msgSend_seriesType(v6, v7, v8, v9, v10);
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

  v37 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v18, v19, v20, v21, a4);
  v42 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(v17, v38, v39, v40, v41, v6, v37, self->super._layoutItem, 0, &v72, 0);

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

- (CGRect)renderingElementFrameForBarElementFrame:(CGRect)a3 groupIndex:(unint64_t)a4 modelCache:(id)a5 stroke:(id)a6 viewScale:(double)a7 contextInfo:(id *)a8 returningFillRect:(CGRect *)a9 strokeRect:(CGRect *)a10
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v165 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v19 = a6;
  if (!v17)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v20, v21.width, v22, "[TSCHChartBarElementsRenderer renderingElementFrameForBarElementFrame:groupIndex:modelCache:stroke:viewScale:contextInfo:returningFillRect:strokeRect:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 128, 0, "invalid nil value for '%{public}s'", "modelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = MEMORY[0x277CBF398];
  if (a9)
  {
    v21 = *(MEMORY[0x277CBF398] + 16);
    a9->origin = *MEMORY[0x277CBF398];
    a9->size = v21;
  }

  if (a10)
  {
    v21 = *(v38 + 16);
    a10->origin = *v38;
    a10->size = v21;
  }

  objc_msgSend_barElementsRendererValueRangeForModelCache_groupIndex_(TSCHRenderUtilities, v18, 0.0, v21.width, v22, v17, a4);
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
  v68 = objc_msgSend_series(v17, v67, v59, v61, v63);
  v73 = objc_msgSend_seriesType(v68, v69, v70, v71, v72);
  objc_opt_class();
  v78 = objc_msgSend_elementBuilder(v73, v74, v75, v76, v77);
  v79 = TSUDynamicCast();

  if (!v79)
  {
    v84 = MEMORY[0x277D81150];
    v85 = a9;
    v86 = v73;
    v87 = a10;
    v88 = v19;
    v89 = a8;
    v90 = v68;
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "[TSCHChartBarElementsRenderer renderingElementFrameForBarElementFrame:groupIndex:modelCache:stroke:viewScale:contextInfo:returningFillRect:strokeRect:]");
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v97, v98, v99, v100, v91, v96, 147, 0, "invalid nil value for '%{public}s'", "elementBuilder");

    v68 = v90;
    a8 = v89;
    v19 = v88;
    a10 = v87;
    v73 = v86;
    a9 = v85;
    v79 = 0;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
  }

  objc_msgSend_nudgeBarElementFrame_inPlotAreaFrame_usingBarModelCache_unitSpaceValueBegin_unitSpaceValueEnd_withViewScale_(v79, v80, x, y, width, v17, height, v60, v62, v64, v66, 0, 0, *&a7);
  v109 = v106;
  v110 = v107;
  v111 = v108;
  v113 = v112;
  if (!v19)
  {
    v19 = objc_msgSend_stroke(v17, v105, v106, v107, v108);
  }

  v118 = 0.0;
  if (objc_msgSend_shouldRender(v19, v105, v106, v107, v108))
  {
    objc_msgSend_width(v19, v114, v115, v116, v117);
    v118 = v119 + v119;
  }

  v166.origin.x = v109;
  v166.origin.y = v110;
  v166.size.width = v111;
  v166.size.height = v113;
  if (!CGRectIsNull(v166))
  {
    if (a9)
    {
      vertical = self->_vertical;
      a = a8->var0.a;
      b = a8->var0.b;
      c = a8->var0.c;
      d = a8->var0.d;
      var1 = a8->var1;
      v163 = *&a8->var0.tx;
      v164 = var1;
      v161.a = a;
      v161.b = b;
      v155 = b;
      v157 = c;
      v161.c = c;
      v161.d = d;
      v159 = d;
      v126 = a8->var1;
      *&v161.tx = *&a8->var0.tx;
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

      a9->origin.x = v131;
      a9->origin.y = v132;
      a9->size.width = v133;
      a9->size.height = v134;
    }

    if (a10)
    {
      v143 = *&a8->var0.c;
      *&v161.a = *&a8->var0.a;
      *&v161.c = v143;
      v144 = a8->var1;
      *&v161.tx = *&a8->var0.tx;
      v162 = v144;
      sub_27628C534(&v161, v109, v110, v111, v113, v118);
      a10->origin.x = v145;
      a10->origin.y = v146;
      a10->size.width = v147;
      a10->size.height = v148;
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

- (void)p_drawBars:(CGContext *)a3 visible:(CGRect)a4
{
  v6 = objc_msgSend_chartRep(self, a2, a4.origin.x, a4.origin.y, a4.size.width);
  v11 = objc_msgSend_renderElementsShadowOnly(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_renderElementsWithoutShadows(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_model(self, v17, v18, v19, v20);
  HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
  objc_msgSend_viewScale(self, v23, v24, v25, v26);
  v116 = v27;
  objc_msgSend_tLayerRectForContext_(self, v28, v27, v29, v30, a3);
  v114 = v32;
  v115 = v31;
  v34 = v33;
  rect = v35;
  objc_msgSend_rootedLayoutRect(self->super._layoutItem, v36, v31, v32, v33);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  CGContextSaveGState(a3);
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = sub_276256200;
  v144[3] = &unk_27A6B6E70;
  v145 = v11;
  v144[4] = v38;
  v144[5] = v40;
  v144[6] = v42;
  v144[7] = v44;
  v144[8] = a3;
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
        v92 = sub_27631FD2C(a3, v87, v88, v89, v90);
        objc_msgSend_applyToContext_viewScale_flipped_extraOffset_(v139[5], v93, v116, v78, v80, a3, v92);
        v146.origin.y = v114;
        v146.origin.x = v115;
        v146.size.width = v34;
        v146.size.height = rect;
        CGContextBeginTransparencyLayerWithRect(a3, v146, 0);
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
  v101 = objc_msgSend_stackRectsWithContext_(self, v97, v98, v99, v100, a3);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = sub_27625630C;
  v117[3] = &unk_27A6B6EC0;
  v124 = a3;
  v102 = v21;
  v118 = v102;
  v119 = self;
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
  v134 = a4;
  v105 = v101;
  v121 = v105;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v96, v106, v107, v108, v109, 2, v117);
  if (v91)
  {
    CGContextEndTransparencyLayer(a3);
  }

  CGContextRestoreGState(a3);

  _Block_object_dispose(&v138, 8);
}

- (void)p_drawLayer:(CGLayer *)a3 intoContext:(CGContext *)a4 contextRect:(CGRect)a5 groupIndex:(unint64_t)a6 series:(id)a7 relativelyPositive:(BOOL)a8 stackRects:(id)a9 forceRoundedCornersOff:(BOOL)a10
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = objc_msgSend_clippingPathForRect_inGroupIndex_series_withContext_relativelyPositive_stackRects_forceRoundedCornersOff_(self, a2, a5.origin.x, a5.origin.y, a5.size.width, a6, a7, a4, a8, a9, a10);
  if (v16)
  {
    sub_276257170(a4, v16, 0);
  }

  objc_msgSend_drawCGLayer_inContext_rect_(TSCHRenderUtilities, v17, x, y, width, a3, a4, height);
}

- (void)enumerateElementsForSeries:(id)a3 context:(CGContext *)a4 elementCount:(unint64_t)a5 groupIndexes:(unint64_t *)a6 elementRects:(CGRect *)a7 clipRects:(CGRect *)a8 forBlock:(id)a9
{
  v15 = a3;
  v16 = a9;
  v62 = v15;
  v21 = objc_msgSend_seriesIndex(v15, v17, v18, v19, v20);
  v60 = objc_msgSend_model(self, v22, v23, v24, v25);
  v61 = objc_msgSend_barModelCacheForSeries_(v60, v26, v27, v28, v29, v21);
  if (a5)
  {
    v30 = a5 - 1;
    v31 = 32 * a5 - 16;
    v32 = (&a7->origin.x + v31);
    v33 = (&a8->origin.x + v31);
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
      v43 = a6[v30];
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
            v52 = objc_msgSend_p_strokeForSeriesIndex_withContext_(self, v48, v49, v50, v51, v47, a4);
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v53 = sub_27628C4A4(a4, &v66);
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
            v16[2](v16, v30, v43);
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

- (void)renderElementStroke:(id)a3 intoContext:(CGContext *)a4 usingElementRenderRect:(CGRect)a5 inGroupIndex:(unint64_t)a6 series:(id)a7 relativelyPositive:(BOOL)a8 stackRects:(id)a9 forceRoundedCornersOff:(BOOL)a10
{
  v11 = a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v29 = a3;
  v20 = a9;
  v21 = a7;
  CGContextSaveGState(a4);
  v23 = objc_msgSend_clippingPathForRect_inGroupIndex_series_withContext_relativelyPositive_stackRects_forceRoundedCornersOff_(self, v22, x, y, width, a6, v21, a4, v11, v20, a10, height);

  if (v23)
  {
    objc_msgSend_renderRoundedCornerElementStrokeIntoContext_stroke_clippingPath_elementRenderRect_(self, v24, x, y, width, a4, v29, v23, height);
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
      objc_msgSend_applyToContext_insideStroke_(v29, v25, v26, v27, v28, a4, 1);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      CGContextStrokeRect(a4, v32);
    }
  }

  CGContextRestoreGState(a4);
}

- (void)renderRoundedCornerElementStrokeIntoContext:(CGContext *)a3 stroke:(id)a4 clippingPath:(CGPath *)a5 elementRenderRect:(CGRect)a6
{
  objc_msgSend_applyToContext_insideStroke_(a4, a2, a6.origin.x, a6.origin.y, a6.size.width, a3, 1, a6.size.height);
  CGContextAddPathSafe();

  CGContextStrokePath(a3);
}

- (id)p_strokeForSeriesIndex:(unint64_t)a3 withContext:(CGContext *)a4
{
  v8 = objc_msgSend_model(self, a2, v4, v5, v6);
  v13 = objc_msgSend_barModelCacheForSeries_(v8, v9, v10, v11, v12, a3);
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

- (CGPath)clippingPathForRect:(CGRect)a3 inGroupIndex:(unint64_t)a4 series:(id)a5 withContext:(CGContext *)a6 relativelyPositive:(BOOL)a7 stackRects:(id)a8 forceRoundedCornersOff:(BOOL)a9
{
  v10 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = objc_msgSend_model(self, a2, a3.origin.x, a3.origin.y, a3.size.width, a4, a5, a6, a7, a8);
  v21 = objc_msgSend_chartInfo(v16, v17, v18, v19, v20);

  if (a9 || !objc_msgSend_hasRoundedCorners(v21, v22, v23, v24, v25))
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
      shouldRoundOuterEndOnly_relativelyPositive = objc_msgSend_roundedCornerPathForRect_shouldRoundOuterEndOnly_relativelyPositive_(self, v42, x, y, width, v41, v10, height);
    }
  }

LABEL_6:

  return shouldRoundOuterEndOnly_relativelyPositive;
}

- (CGPath)roundedCornerPathForRect:(CGRect)a3 shouldRoundOuterEndOnly:(BOOL)a4 relativelyPositive:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = objc_msgSend_model(self, a2, a3.origin.x, a3.origin.y, a3.size.width);
  v17 = objc_msgSend_chartInfo(v12, v13, v14, v15, v16);

  objc_msgSend_floatValueForProperty_defaultValue_(v17, v18, 0.0, v19, v20, 1111);
  v22 = sub_2762A1C64(self->_vertical, v6, v5, 1, x, y, width, height, v21);
  v23 = CFAutorelease(v22);

  return v23;
}

- (void)p_drawLabels:(CGContext *)a3 visible:(CGRect)a4
{
  v6 = objc_msgSend_chartRep(self, a2, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chart(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_sharedText(TSCHText, v17, v18, v19, v20);
  objc_opt_class();
  v26 = objc_msgSend_layoutItem(self, v22, v23, v24, v25);
  v27 = TSUDynamicCast();

  objc_msgSend_tLayerRectForContext_(self, v28, v29, v30, v31, a3);
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
  CGContextSaveGState(a3);
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
  v92 = self;
  v96 = v33;
  v97 = v35;
  v98 = v37;
  v99 = v39;
  v101 = v26;
  v94 = &v102;
  v95 = a3;
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
  v78 = self;
  v82 = v33;
  v83 = v35;
  v84 = v37;
  v85 = v39;
  v87 = v26;
  v80 = &v102;
  v81 = a3;
  v68 = v59;
  v79 = v68;
  v86 = v50;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v55, v69, v70, v71, v72, 2, v73);
  if (v26 && *(v103 + 24) == 1)
  {
    CGContextEndTransparencyLayer(a3);
  }

  CGContextRestoreGState(a3);

  _Block_object_dispose(&v102, 8);
}

- (void)p_renderLabelsWithLabelCount:(unint64_t)a3 transforms:(CGAffineTransform *)a4 clipRects:(CGRect *)a5 strings:(id)a6 context:(CGContext *)a7 tLayerRect:(CGRect)a8 groupedShadows:(BOOL)a9 groupedTransparencyLayerOpened:(BOOL *)a10 textEngine:(id)a11 paragraphStyle:(id)a12 viewScale:(double)a13
{
  v57 = a9;
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v21 = a6;
  v22 = a11;
  v24 = a12;
  if (a10)
  {
    if (a3)
    {
      v28 = 0;
      p_size = &a5->size;
      do
      {
        v30 = *&a4->c;
        *&v60.a = *&a4->a;
        *&v60.c = v30;
        *&v60.tx = *&a4->tx;
        v31 = p_size[-1].width;
        v32 = p_size[-1].height;
        v34 = p_size->width;
        v33 = p_size->height;
        v35 = objc_msgSend_objectAtIndexedSubscript_(v21, v23, v60.tx, *&v30, v27, v28);
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
            if (v57)
            {
              if (!*a10)
              {
                v64.origin.x = x;
                v64.origin.y = y;
                v64.size.width = width;
                v64.size.height = height;
                CGContextBeginTransparencyLayerWithRect(a7, v64, 0);
                *a10 = 1;
              }

              CGContextSaveGState(a7);
              transform = v60;
              CGContextConcatCTM(a7, &transform);
              objc_msgSend_drawText_paragraphStyle_intoContext_viewScale_(v22, v36, a13, v37, v38, v35, v24, a7);
            }

            else
            {
              CGContextSaveGState(a7);
              transform = v60;
              CGContextConcatCTM(a7, &transform);
              v65.origin.x = v31;
              v65.origin.y = v32;
              v65.size.width = v34;
              v65.size.height = v33;
              CGContextBeginTransparencyLayerWithRect(a7, v65, 0);
              objc_msgSend_drawText_paragraphStyle_intoContext_viewScale_(v22, v39, a13, v40, v41, v35, v24, a7);
              CGContextEndTransparencyLayer(a7);
            }

            CGContextRestoreGState(a7);
          }
        }

        ++v28;
        p_size += 2;
        ++a4;
      }

      while (a3 != v28);
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

- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v28 = objc_msgSend_chartRep(self, a2, a4.origin.x, a4.origin.y, a4.size.width);
  if (objc_msgSend_renderElements(v28, v10, v11, v12, v13))
  {
    objc_msgSend_p_drawBars_visible_(self, v14, x, y, width, a3, height);
  }

  if (objc_msgSend_renderLabels(v28, v14, v15, v16, v17))
  {
    v18 = objc_opt_class();
    objc_msgSend_drawErrorBarsInContext_chartVertical_elementRenderClass_(self, v19, v20, v21, v22, a3, self->_vertical, v18);
    objc_msgSend_drawTrendLinesInContext_chartVertical_elementRenderClass_(self, v23, v24, v25, v26, a3, self->_vertical, v18);
    objc_msgSend_p_drawLabels_visible_(self, v27, x, y, width, a3, height);
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
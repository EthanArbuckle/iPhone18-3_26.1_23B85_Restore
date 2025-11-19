@interface TSCHChartAbstractLineElementsRenderer
- (CGAffineTransform)p_adjustTransformForAADefeatInContext:(SEL)a3 inTransform:(CGContext *)a4 forSeriesShape:(CGAffineTransform *)a5 inBodyBounds:(CGPath *)a6;
- (id)allRenderingFills;
- (id)p_findChartRootLayoutItem:(id)a3;
- (id)symbolTransformsForRenderingElements;
- (void)p_clipOutSymbolsInContext:(CGContext *)a3 withTransformArray:(CGAffineTransform *)a4 withCount:(unint64_t)a5 forSeries:(id)a6;
- (void)p_finishContextAfterRendering:(CGContext *)a3 modelCache:(id)a4 didEnableTransparencyLayer:(BOOL)a5;
- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_renderLabelsIntoContext:(CGContext *)a3 seriesIndex:(unint64_t)a4 model:(id)a5 modelCache:(id)a6 bodyLayoutItem:(id)a7 groupIndexSet:(id)a8;
- (void)p_renderLabelsWithLabelCount:(unint64_t)a3 transforms:(CGAffineTransform *)a4 clipRects:(CGRect *)a5 strings:(id)a6 context:(CGContext *)a7 tLayerRect:(CGRect)a8 textEngine:(id)a9 paragraphStyle:(id)a10 viewScale:(double)a11;
- (void)p_setupContextForRendering:(CGContext *)a3 layerRect:(CGRect)a4 modelCache:(id)a5 shadow:(id)a6 outDidEnableTransparencyLayer:(BOOL *)a7;
@end

@implementation TSCHChartAbstractLineElementsRenderer

- (void)p_clipOutSymbolsInContext:(CGContext *)a3 withTransformArray:(CGAffineTransform *)a4 withCount:(unint64_t)a5 forSeries:(id)a6
{
  v10 = a6;
  v11 = v10;
  if (a3 && a4 && a5 && v10)
  {
    HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
    v17 = objc_msgSend_model(self, v13, v14, v15, v16);
    v22 = objc_msgSend_seriesIndex(v11, v18, v19, v20, v21);
    v27 = objc_msgSend_lineAreaModelCacheForSeries_(v17, v23, v24, v25, v26, v22);

    v32 = objc_msgSend_symbolType(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_symbolStroke(v27, v33, v34, v35, v36);
    v42 = v37;
    if (HasBackgroundsSuppressed && (!v37 || (objc_msgSend_shouldRender(v37, v38, v39, v40, v41) & 1) == 0))
    {
      v43 = MEMORY[0x277D803C0];
      v44 = objc_msgSend_blackColor(MEMORY[0x277D81180], v38, v39, v40, v41);
      v48 = objc_msgSend_strokeWithColor_width_(v43, v45, 1.0, v46, v47, v44);

      v42 = v48;
    }

    if (v32 > 7 || ((1 << v32) & 0xC1) == 0)
    {
      if (objc_msgSend_shouldRender(v42, v38, v39, v40, v41))
      {
        objc_msgSend_tLayerRectForContext_(self, v49, v50, v51, v52, a3);
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = objc_msgSend_unitSymbolPath(v27, v61, v53, v55, v57);
        BoundingBox = CGPathGetBoundingBox(v62);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
        v67 = 1;
        v68 = a4;
        do
        {
          v69 = *&v68->c;
          *&v134.a = *&v68->a;
          *&v134.c = v69;
          *&v134.tx = *&v68->tx;
          v70 = x;
          *&v69 = y;
          v71 = width;
          v72 = height;
          v147 = CGRectApplyAffineTransform(*(&v69 - 8), &v134);
          v136.origin.x = v54;
          v136.origin.y = v56;
          v136.size.width = v58;
          v136.size.height = v60;
          v73 = CGRectIntersectsRect(v136, v147);
          if (v73)
          {
            break;
          }

          ++v68;
        }

        while (v67++ < a5);
        if (v73)
        {
          v137.origin.x = v54;
          v137.origin.y = v56;
          v137.size.width = v58;
          v137.size.height = v60;
          v138 = CGContextConvertRectToDeviceSpace(a3, v137);
          sub_27628CEB4(v138.origin.x, v138.origin.y, v138.size.width, v138.size.height);
          v77 = fabs(v76);
          if (v76 < 1.0)
          {
            v77 = 1.0;
          }

          v78 = vcvtpd_u64_f64(v77);
          v79 = fabs(v75);
          if (v75 < 1.0)
          {
            v79 = 1.0;
          }

          v80 = vcvtpd_u64_f64(v79);
          v81 = TSUDeviceGrayColorSpace();
          v82 = CGBitmapContextCreate(0, v80, v78, 8uLL, (v80 + 3) & 0xFFFFFFFFFFFFFFFCLL, v81, 0);
          sub_27631FDD8(v82, 0, v83, v84, v85);
          v90 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v86, v87, v88, v89);
          objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v91, *MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), v90, v82, *(MEMORY[0x277CBF390] + 24));

          memset(&v134, 0, sizeof(v134));
          CGContextGetCTM(&v134, a3);
          v133 = v134;
          v139.origin.x = v54;
          v139.origin.y = v56;
          v139.size.width = v58;
          v139.size.height = v60;
          v140 = CGRectApplyAffineTransform(v139, &v133);
          v92 = v140.size.width;
          v93 = v140.size.height;
          v141 = CGContextConvertRectToDeviceSpace(v82, v140);
          v142.origin.x = sub_27628CEB4(v141.origin.x, v141.origin.y, v141.size.width, v141.size.height);
          v143 = CGContextConvertRectToUserSpace(v82, v142);
          v94 = v143.origin.x;
          v95 = v143.origin.y;
          v96 = v143.size.width;
          v97 = v143.size.height;
          transform = v134;
          CGAffineTransformInvert(&v133, &transform);
          v144.origin.x = v94;
          v144.origin.y = v95;
          v144.size.width = v96;
          v144.size.height = v97;
          v145 = CGRectApplyAffineTransform(v144, &v133);
          v98 = v145.origin.x;
          v99 = v145.origin.y;
          v100 = v145.size.width;
          v101 = v145.size.height;
          CGContextScaleCTM(v82, v92 / v58, v93 / v60);
          CGContextTranslateCTM(v82, -v98, -v99);
          v106 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v102, v103, v104, v105);
          do
          {
            v107 = *&a4->c;
            *&v133.a = *&a4->a;
            *&v133.c = v107;
            *&v133.tx = *&a4->tx;
            CGContextSaveGState(v82);
            transform = v133;
            CGContextConcatCTM(v82, &transform);
            objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v108, v109, v110, v111, v106, v82, v62);
            CGContextRestoreGState(v82);
            ++a4;
            --a5;
          }

          while (a5);
          Image = CGBitmapContextCreateImage(v82);
          if (!Image)
          {
            v117 = MEMORY[0x277D81150];
            v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v114, v115, v116, "[TSCHChartAbstractLineElementsRenderer p_clipOutSymbolsInContext:withTransformArray:withCount:forSeries:]");
            v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, v120, v121, v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLineElementsRenderer.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v124, v125, v126, v127, v118, v123, 135, 0, "invalid nil value for '%{public}s'", "image");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129, v130, v131);
          }

          sub_27631FF58(v82, v112, v114, v115, v116);
          CGContextRelease(v82);
          v146.origin.x = v98;
          v146.origin.y = v99;
          v146.size.width = v100;
          v146.size.height = v101;
          CGContextClipToMask(a3, v146, Image);
          CGImageRelease(Image);
        }
      }
    }
  }
}

- (id)p_findChartRootLayoutItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v11 = objc_msgSend_parent(v4, v5, v7, v8, v9);
    if (v11)
    {
      v15 = objc_msgSend_parent(v4, v10, v12, v13, v14);
      v6 = objc_msgSend_p_findChartRootLayoutItem_(self, v16, v17, v18, v19, v15);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CGAffineTransform)p_adjustTransformForAADefeatInContext:(SEL)a3 inTransform:(CGContext *)a4 forSeriesShape:(CGAffineTransform *)a5 inBodyBounds:(CGPath *)a6
{
  if (a4 && a6 && ((v9 = a7.size.height, v10 = a7.size.width, v11 = a7.origin.y, v12 = a7.origin.x, BoundingBox = CGPathGetBoundingBox(a6), v14 = *&a5->c, *&v38.a = *&a5->a, *&v38.c = v14, *&v38.tx = *&a5->tx, v40 = CGRectApplyAffineTransform(BoundingBox, &v38), v41 = CGRectStandardize(v40), v15 = v41.origin.y, v16 = v41.size.width, v17 = v41.size.height, recta = v41.origin.x, v18 = CGRectGetMinX(v41), v42.origin.x = v12, v42.origin.y = v11, v42.size.width = v10, v42.size.height = v9, v19 = CGRectGetMinX(v42), v18 == v19) || vabdd_f64(v18, v19) < 0.4) && ((v43.origin.x = recta, v43.origin.y = v15, v43.size.width = v16, v43.size.height = v17, MaxX = CGRectGetMaxX(v43), v44.origin.x = v12, v44.origin.y = v11, v44.size.width = v10, v44.size.height = v9, v21 = CGRectGetMaxX(v44), MaxX == v21) || vabdd_f64(MaxX, v21) < 0.4))
  {
    sub_27628CB34(a4, v12, v11, v10, v9, 0.0);
    v46 = CGRectStandardize(v45);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    v33 = *(MEMORY[0x277CBF2C0] + 16);
    *&v38.a = *MEMORY[0x277CBF2C0];
    v34 = *&v38.a;
    *&v38.c = v33;
    *&v38.tx = *(MEMORY[0x277CBF2C0] + 32);
    v32 = *&v38.tx;
    MinX = CGRectGetMinX(v46);
    *&t1.a = v34;
    *&t1.c = v33;
    *&t1.tx = v32;
    CGAffineTransformTranslate(&v38, &t1, MinX, 0.0);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v28 = CGRectGetWidth(v47);
    v48.origin.x = recta;
    v48.origin.y = v15;
    v48.size.width = v16;
    v48.size.height = v17;
    v29 = CGRectGetWidth(v48);
    rect_8 = v38;
    CGAffineTransformScale(&t1, &rect_8, v28 / v29, 1.0);
    v38 = t1;
    v49.origin.x = recta;
    v49.origin.y = v15;
    v49.size.width = v16;
    v49.size.height = v17;
    v30 = CGRectGetMinX(v49);
    rect_8 = v38;
    CGAffineTransformTranslate(&t1, &rect_8, -v30, 0.0);
    v38 = t1;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
    v31 = *&a5->c;
    *&t1.a = *&a5->a;
    *&t1.c = v31;
    *&t1.tx = *&a5->tx;
    rect_8 = v38;
    return CGAffineTransformConcat(retstr, &t1, &rect_8);
  }

  else
  {
    v22 = *&a5->c;
    *&retstr->a = *&a5->a;
    *&retstr->c = v22;
    *&retstr->tx = *&a5->tx;
  }

  return self;
}

- (id)symbolTransformsForRenderingElements
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartRep(self, v12, v13, v14, v15);
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (!v18)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v19, v20, v21, "[TSCHChartAbstractLineElementsRenderer symbolTransformsForRenderingElements]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLineElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 197, 0, "invalid nil value for '%{public}s'", "bodyLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v37 = objc_msgSend_renderSeriesIndexSet(v16, v17, v19, v20, v21);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_27625ADEC;
  v49[3] = &unk_27A6B6F60;
  v50 = v11;
  v51 = v16;
  v52 = v18;
  v38 = v6;
  v53 = v38;
  v39 = v18;
  v40 = v16;
  v41 = v11;
  objc_msgSend_enumerateIndexesUsingBlock_(v37, v42, v43, v44, v45, v49);
  v46 = v53;
  v47 = v38;

  return v38;
}

- (void)p_setupContextForRendering:(CGContext *)a3 layerRect:(CGRect)a4 modelCache:(id)a5 shadow:(id)a6 outDidEnableTransparencyLayer:(BOOL *)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v81 = a5;
  v15 = a6;
  v20 = objc_msgSend_chartRep(self, v16, v17, v18, v19);
  CGContextSaveGState(a3);
  objc_msgSend_opacity(v81, v21, v22, v23, v24);
  CGContextSetAlpha(a3, v25);
  v30 = objc_msgSend_renderElementsShadowOnly(v20, v26, v27, v28, v29);
  v36 = objc_msgSend_renderElementsWithoutShadows(v20, v31, v32, v33, v34);
  if (v30)
  {
    objc_msgSend_offset(v15, v35, v37, v38, v39);
    v41 = fabs(v40);
    objc_msgSend_radius(v15, v42, v40, v43, v44);
    v46 = -(v41 + fabs(v45));
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = height;
    v85 = CGRectInset(v84, v46, v46);
    v79 = v85.origin.x;
    v80 = height;
    v78 = v85.size.height;
    v47 = v85.size.width + v85.size.width;
    v85.origin.y = 0.0;
    v85.origin.x = v85.size.width + v85.size.width;
    v48 = CGContextConvertSizeToDeviceSpace(a3, v85.origin);
    v83.width = ceil(v48.width);
    v83.height = ceil(v48.height);
    v49 = CGContextConvertSizeToUserSpace(a3, v83);
    CGContextClipToRectSafe();
    v50 = 0.0;
    CGContextTranslateCTM(a3, -v49.width, v49.height);
  }

  else
  {
    v47 = *MEMORY[0x277CBF3A8];
    v50 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v35, v37, v38, v39, v15, *&v78, *&v79, *&v80) && !(v36 & 1 | ((objc_msgSend_shadowsEnabled(v20, v51, v52, v53, v54) & 1) == 0)))
  {
    objc_msgSend_viewScale(self, v51, v52, v53, v54);
    v57 = v56;
    v61 = sub_27631FD2C(a3, v58, v56, v59, v60);
    objc_msgSend_applyToContext_viewScale_flipped_extraOffset_(v15, v62, v57, v47, v50, a3, v61);
    v55 = 1;
  }

  else
  {
    v55 = 0;
  }

  v63 = objc_msgSend_series(v81, v51, v52, v53, v54);
  v68 = objc_msgSend_seriesType(v63, v64, v65, v66, v67);
  v73 = v55 | objc_msgSend_supportsLineConnectionStyle(v68, v69, v70, v71, v72);

  if (v73 == 1)
  {
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    CGContextBeginTransparencyLayerWithRect(a3, v86, 0);
    if (objc_msgSend_useBlendModeCopyForTransparencyLayer(self, v74, v75, v76, v77))
    {
      CGContextSetBlendMode(a3, kCGBlendModeCopy);
    }
  }

  if (a7)
  {
    *a7 = v73;
  }
}

- (void)p_finishContextAfterRendering:(CGContext *)a3 modelCache:(id)a4 didEnableTransparencyLayer:(BOOL)a5
{
  if (a5)
  {
    CGContextEndTransparencyLayer(a3);
  }

  CGContextRestoreGState(a3);
}

- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  v6 = objc_msgSend_model(self, a2, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v11 = objc_msgSend_chartRep(self, v7, v8, v9, v10);
  HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHChartAbstractLineElementsRenderer p_renderIntoContext:visible:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLineElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 297, 0, "invalid nil value for '%{public}s'", "bodyLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  objc_msgSend_rootedLayoutRect(v14, v13, v15, v16, v17);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = objc_msgSend_p_findChartRootLayoutItem_(self, v41, v33, v35, v37, v14);
  v47 = objc_msgSend_chartAreaLayoutItem(v42, v43, v44, v45, v46);

  v52 = v40;
  v53 = v38;
  v54 = v36;
  v55 = v34;
  if (v47)
  {
    objc_msgSend_rootedDrawingRect(v47, v48, v49, v50, v51);
    v55 = v49;
    v54 = v50;
    v53 = v51;
    v52 = v56;
  }

  objc_msgSend_tLayerRectForContext_(self, v48, v49, v50, v51, a3);
  v153.origin.x = v55;
  v153.origin.y = v54;
  v153.size.width = v53;
  v153.size.height = v52;
  v152 = CGRectIntersection(v151, v153);
  x = v152.origin.x;
  y = v152.origin.y;
  width = v152.size.width;
  height = v152.size.height;
  v61 = objc_opt_class();
  v66 = objc_msgSend_renderSeriesIndexSet(v11, v62, v63, v64, v65);
  v145 = 0;
  v146 = &v145;
  v147 = 0x3032000000;
  v148 = sub_27625B750;
  v149 = sub_27625B760;
  v150 = 0;
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = sub_27625B768;
  v128[3] = &unk_27A6B6F88;
  v67 = v11;
  v129 = v67;
  v68 = v6;
  v130 = v68;
  v134 = v61;
  v144 = HasBackgroundsSuppressed;
  v69 = v14;
  v131 = v69;
  v132 = self;
  v133 = &v145;
  v135 = a3;
  v136 = x;
  v137 = y;
  v138 = width;
  v139 = height;
  v140 = v34;
  v141 = v36;
  v142 = v38;
  v143 = v40;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v66, v70, v71, v72, v73, 2, v128);
  if (objc_msgSend_renderLabels(v67, v74, v75, v76, v77))
  {
    objc_msgSend_drawErrorBarsInContext_chartVertical_elementRenderClass_(self, v78, v79, v80, v81, a3, 1, v61);
    objc_msgSend_drawTrendLinesInContext_chartVertical_elementRenderClass_(self, v82, v83, v84, v85, a3, 1, v61);
  }

  if (objc_msgSend_renderLabels(v67, v78, v79, v80, v81))
  {
    v90 = v146[5];
    if (!v90)
    {
      if (objc_msgSend_renderElements(v67, v86, v87, v88, v89))
      {
        goto LABEL_14;
      }

      v90 = v146[5];
    }

    if (!v90)
    {
      v90 = v66;
    }

    v91 = v90;
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = sub_27625C178;
    v121[3] = &unk_27A6B6FB0;
    v122 = v68;
    v126 = v61;
    v123 = v67;
    v124 = self;
    v127 = a3;
    v125 = v69;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v91, v92, v93, v94, v95, 2, v121);
  }

LABEL_14:
  v96 = v146[5];
  v146[5] = 0;

  objc_msgSend_clearCache(TSCHPointArrayCache, v97, v98, v99, v100);
  if (objc_msgSend_renderLabels(v67, v101, v102, v103, v104))
  {
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = sub_27625C234;
    v112[3] = &unk_27A6B6FD8;
    v113 = v68;
    v114 = self;
    v115 = v67;
    v116 = a3;
    v117 = x;
    v118 = y;
    v119 = width;
    v120 = height;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v66, v105, x, v106, v107, 2, v112);
    objc_msgSend_clearCache(TSCHPointArrayCache, v108, v109, v110, v111);
  }

  _Block_object_dispose(&v145, 8);
}

- (void)p_renderLabelsIntoContext:(CGContext *)a3 seriesIndex:(unint64_t)a4 model:(id)a5 modelCache:(id)a6 bodyLayoutItem:(id)a7 groupIndexSet:(id)a8
{
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v22 = objc_msgSend_seriesAtIndex_(a5, v17, v18, v19, v20, a4);
  if (!v16)
  {
    v26 = objc_msgSend_chartRep(self, v21, v23, v24, v25);
    v16 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(v26, v27, v28, v29, v30, a4);
  }

  if (objc_msgSend_count(v16, v21, v23, v24, v25))
  {
    v74 = objc_msgSend_sharedText(TSCHText, v31, v32, v33, v34);
    objc_msgSend_tLayerRectForContext_(self, v35, v36, v37, v38, a3);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    objc_msgSend_viewScale(self, v47, v39, v41, v43);
    v49 = v48;
    v53 = objc_msgSend_seriesType(v22, v50, v48, v51, v52);
    v58 = objc_msgSend_elementBuilder(v53, v54, v55, v56, v57);

    v78 = 0;
    v79 = 0;
    v76 = v15;
    v77 = 0;
    v63 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v58, v59, v60, v61, v62, v22, v16, v15, &v79, 0, &v78, &v77);
    v64 = v77;
    v65 = v14;
    v67 = v78;
    v66 = v79;
    v75 = v65;
    v72 = objc_msgSend_paragraphStyle(v65, v68, v69, v70, v71);
    objc_msgSend_p_renderLabelsWithLabelCount_transforms_clipRects_strings_context_tLayerRect_textEngine_paragraphStyle_viewScale_(self, v73, v40, v42, v44, v63, v66, v67, v64, a3, v74, v46, v49, v72);

    if (v79)
    {
      free(v79);
    }

    if (v78)
    {
      free(v78);
    }

    v14 = v75;
    v15 = v76;
  }
}

- (void)p_renderLabelsWithLabelCount:(unint64_t)a3 transforms:(CGAffineTransform *)a4 clipRects:(CGRect *)a5 strings:(id)a6 context:(CGContext *)a7 tLayerRect:(CGRect)a8 textEngine:(id)a9 paragraphStyle:(id)a10 viewScale:(double)a11
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v20 = a9;
  v22 = a10;
  if (a3)
  {
    v24 = 0;
    p_size = &a5->size;
    do
    {
      v26 = *&a4->c;
      *&v37.a = *&a4->a;
      *&v37.c = v26;
      *&v37.tx = *&a4->tx;
      v27 = p_size[-1].width;
      v28 = p_size[-1].height;
      v30 = p_size->width;
      v29 = p_size->height;
      v31 = objc_msgSend_objectAtIndexedSubscript_(a6, v21, v37.tx, *&v26, v23, v24);
      v38.origin.x = v27;
      v38.origin.y = v28;
      v38.size.width = v30;
      v38.size.height = v29;
      if (!CGRectIsNull(v38))
      {
        transform = v37;
        v39.origin.x = v27;
        v39.origin.y = v28;
        v39.size.width = v30;
        v39.size.height = v29;
        v42 = CGRectApplyAffineTransform(v39, &transform);
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        if (CGRectIntersectsRect(v40, v42))
        {
          CGContextSaveGState(a7);
          transform = v37;
          CGContextConcatCTM(a7, &transform);
          v41.origin.x = v27;
          v41.origin.y = v28;
          v41.size.width = v30;
          v41.size.height = v29;
          CGContextBeginTransparencyLayerWithRect(a7, v41, 0);
          objc_msgSend_drawText_paragraphStyle_intoContext_viewScale_(v20, v32, a11, v33, v34, v31, v22, a7);
          CGContextEndTransparencyLayer(a7);
          CGContextRestoreGState(a7);
        }
      }

      ++v24;
      p_size += 2;
      ++a4;
    }

    while (a3 != v24);
  }
}

- (id)allRenderingFills
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = objc_msgSend_seriesList(v8, v9, 0.0, v10, v11, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v51, v55, 16);
  if (v17)
  {
    v22 = v17;
    v23 = *v52;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v12);
        }

        v25 = objc_msgSend_seriesIndex(*(*(&v51 + 1) + 8 * i), v18, v19, v20, v21);
        v30 = objc_msgSend_lineAreaModelCacheForSeries_(v8, v26, v27, v28, v29, v25);
        v36 = objc_msgSend_seriesFill(v30, v31, v32, v33, v34);
        if (v36)
        {
          objc_msgSend_addObject_(v3, v35, v37, v38, v39, v36);
        }

        v41 = objc_msgSend_symbolFill(v30, v35, v37, v38, v39);
        if (v41)
        {
          objc_msgSend_addObject_(v3, v40, v42, v43, v44, v41);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v19, v20, v21, &v51, v55, 16);
    }

    while (v22);
  }

  v49 = objc_msgSend_copy(v3, v45, v46, v47, v48);

  return v49;
}

@end
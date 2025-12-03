@interface TSCHPieChartRep
- (TSCHPieChartRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)dragTravelAlongBisectorBetweenStartPoint:(CGPoint)point andEndingPoint:(CGPoint)endingPoint forSeries:(unint64_t)series;
- (double)p_radius;
- (id)pieElementRenderer;
- (void)clearRenderers;
- (void)renderIntoContext:(CGContext *)context visible:(CGRect)visible;
@end

@implementation TSCHPieChartRep

- (TSCHPieChartRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = TSCHPieChartRep;
  return [(TSCHChartRep *)&v5 initWithLayout:layout canvas:canvas];
}

- (id)pieElementRenderer
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_pieElementRenderer)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = objc_msgSend_renderers(self, a2, 0.0, v2, v3, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, v8, v9, &v21, v25, 16);
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&self->_pieElementRenderer, v14);
            goto LABEL_12;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v15, v16, v17, v18, &v21, v25, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  pieElementRenderer = self->_pieElementRenderer;

  return pieElementRenderer;
}

- (void)clearRenderers
{
  pieElementRenderer = self->_pieElementRenderer;
  self->_pieElementRenderer = 0;

  v4.receiver = self;
  v4.super_class = TSCHPieChartRep;
  [(TSCHChartRep *)&v4 clearRenderers];
}

- (double)dragTravelAlongBisectorBetweenStartPoint:(CGPoint)point andEndingPoint:(CGPoint)endingPoint forSeries:(unint64_t)series
{
  y = endingPoint.y;
  x = endingPoint.x;
  v8 = point.y;
  v9 = point.x;
  v12 = objc_msgSend_pieElementRenderer(self, a2, point.x, point.y, endingPoint.x);
  if (v12)
  {
    v16 = objc_msgSend_chartLayout(self, v11, v13, v14, v15);
    v21 = objc_msgSend_model(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_pieSeriesModelCacheForSeries_(v21, v22, v23, v24, v25, series);

    v31 = objc_msgSend_midAngle(v26, v27, v28, v29, v30);
    v35 = v34;
    v36 = x - v9;
    v37 = y - v8;
    v38 = sqrt(v37 * v37 + v36 * v36);
    v39 = 0.0;
    if (v38 != 0.0)
    {
      v39 = acos(-v37 / v38);
    }

    if (v36 < 0.0)
    {
      v39 = -v39;
    }

    v40 = v39 + -1.57079633;
    *&v40 = v40;
    LODWORD(v33) = 1078530011;
    v41 = sub_27628C490(v31, v32, v40, -1.57079673, v33) - v35;
    *&v41 = v41;
    LODWORD(v42) = -1068953637;
    LODWORD(v43) = 1078530011;
    v46 = sub_27628C490(v44, v45, v41, v42, v43);
    v47 = v38 * cos(v46);
  }

  else
  {
    v47 = 0.0;
  }

  return v47;
}

- (double)p_radius
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chart(v6, v7, v8, v9, v10);

  objc_msgSend_maximumExplosion(v11, v12, v13, v14, v15);
  v17 = LODWORD(v16);
  v21 = objc_msgSend_chartLayout(self, v18, v16, v19, v20);
  objc_msgSend_chartBodyFrame(v21, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  LODWORD(v34) = v17;
  objc_msgSend_radiusForFrame_withMaxExplosion_(v11, v35, v27, v29, v31, v33, v34);
  v37 = v36;

  return v37;
}

- (void)renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v78 = *MEMORY[0x277D85DE8];
  v10 = !self->_hasDrawnSinceWedgeKnobTrackerCreated && self->_seriesIndexedPieWedgeDraggingLayers != 0;
  self->_hasDrawnSinceWedgeKnobTrackerCreated = 1;
  CGContextGetCTM(&v76, context);
  v12 = TSUIsTransformAxisAligned();
  if (v12)
  {
    v16 = 0;
    contextCopy2 = context;
  }

  else
  {
    v18 = objc_msgSend_layout(self, v11, v13, v14, v15);
    objc_msgSend_validate(v18, v19, v20, v21, v22);
    v27 = objc_msgSend_geometry(v18, v23, v24, v25, v26);
    objc_msgSend_size(v27, v28, v29, v30, v31);
    v33 = v32;
    v35 = v34;
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    CGContextGetCTM(&v76, context);
    TSURectWithSize();
    TSUTransformedCornersOfRect();
    TSUDistance();
    v37 = ceil(fabs(v36));
    TSUDistance();
    v39 = ceil(fabs(v38));
    v79.width = v37;
    v79.height = v39;
    v40 = CGLayerCreateWithContext(context, v79, 0);
    v16 = v40;
    contextCopy2 = context;
    if (v40)
    {
      Context = CGLayerGetContext(v40);
      contextCopy2 = Context;
      if (Context)
      {
        CGContextSaveGState(Context);
        CGContextScaleCTM(contextCopy2, v37 / v33, v39 / v35);
      }
    }
  }

  v67.receiver = self;
  v67.super_class = TSCHPieChartRep;
  [(TSCHChartRep *)&v67 renderIntoContext:contextCopy2 visible:x, y, width, height];
  if (v16)
  {
    v45 = v12;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    if (contextCopy2)
    {
      CGContextRestoreGState(contextCopy2);
      TSURectWithSize();
      objc_msgSend_drawCGLayer_inContext_rect_(TSCHRenderUtilities, v46, v47, v48, v49, v16, context);
    }

    CGLayerRelease(v16);
  }

  if (v10)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v50 = objc_msgSend_allValues(self->_seriesIndexedPieWedgeDraggingLayers, v42, 0.0, v43, v44);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, v52, v53, v54, &v63, v77, 16);
    if (v55)
    {
      v60 = v55;
      v61 = *v64;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v64 != v61)
          {
            objc_enumerationMutation(v50);
          }

          objc_msgSend_setHidden_(*(*(&v63 + 1) + 8 * i), v56, v57, v58, v59, 0);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v56, v57, v58, v59, &v63, v77, 16);
      }

      while (v60);
    }
  }
}

@end
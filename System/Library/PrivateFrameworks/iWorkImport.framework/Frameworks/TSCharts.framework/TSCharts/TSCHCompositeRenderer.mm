@interface TSCHCompositeRenderer
+ (void)p_delegateSelector:(SEL)selector toRenderer:(id)renderer transparencyLayer:(int)layer inContext:(CGContext *)context;
+ (void)renderTSCHCompositeRendering:(id)rendering intoContext:(CGContext *)context visible:(CGRect)visible;
- (BOOL)needsAnySeparateLayers;
- (TSCHCompositeRenderer)initWithChartRep:(id)rep withSubRenderers:(id)renderers;
- (id)allRenderingFills;
- (id)transparencyLayers;
- (void)drawIntoLayer:(int)layer inContext:(CGContext *)context visible:(CGRect)visible;
- (void)p_delegateSelectorToRenderers:(SEL)renderers transparencyLayer:(int)layer inContext:(CGContext *)context;
@end

@implementation TSCHCompositeRenderer

- (TSCHCompositeRenderer)initWithChartRep:(id)rep withSubRenderers:(id)renderers
{
  repCopy = rep;
  renderersCopy = renderers;
  v12 = renderersCopy;
  if (repCopy)
  {
    if (renderersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHCompositeRenderer initWithChartRep:withSubRenderers:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCompositeRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v61, v62, v63, v54, v59, 56, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v68 = MEMORY[0x277D81150];
  v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHCompositeRenderer initWithChartRep:withSubRenderers:]");
  v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCompositeRenderer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 57, 0, "invalid nil value for '%{public}s'", "subRenderers");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
LABEL_3:
  if (!objc_msgSend_count(v12, v8, v9, v10, v11))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHCompositeRenderer initWithChartRep:withSubRenderers:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCompositeRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 58, 0, "No subrenderers provided");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_opt_class();
  v36 = objc_msgSend_objectAtIndexedSubscript_(v12, v32, v33, v34, v35, 0);
  v37 = TSUDynamicCast();

  v43 = objc_msgSend_layoutItem(v37, v38, v39, v40, v41);
  if (!v43)
  {
    v48 = 0;
LABEL_13:
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v44, v45, v46, "[TSCHCompositeRenderer initWithChartRep:withSubRenderers:]");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCompositeRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 68, 0, "invalid nil value for '%{public}s'", "areaLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
    goto LABEL_14;
  }

  do
  {
    v47 = v43;
    objc_opt_class();
    v48 = TSUDynamicCast();
    v43 = objc_msgSend_parent(v43, v49, v50, v51, v52);
  }

  while (v43 && !v48);
  if (!v48)
  {
    goto LABEL_13;
  }

LABEL_14:
  v106.receiver = self;
  v106.super_class = TSCHCompositeRenderer;
  v99 = [(TSCHRenderer *)&v106 initWithChartRep:repCopy layoutItem:v48];
  if (v99)
  {
    v103 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v98, v100, v101, v102, v12);
    subRenderers = v99->_subRenderers;
    v99->_subRenderers = v103;
  }

  return v99;
}

- (id)transparencyLayers
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5, v6, v7);
  v13 = objc_msgSend_initWithObjectsAndKeys_(v3, v9, v10, v11, v12, v8, &unk_28856C188, 0);

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = self->_subRenderers;
  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, v15, v16, v17, &v80, v85, 16);
  if (v75)
  {
    v74 = *v81;
    do
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v81 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v80 + 1) + 8 * i);
        if (objc_msgSend_isCompositeRenderer(v19, v20, v21, v22, v23))
        {
          v24 = v19;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        if (v25)
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v29 = objc_msgSend_transparencyLayers(v25, v26, 0.0, v27, v28);
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, v31, v32, v33, &v76, v84, 16);
          if (v34)
          {
            v39 = v34;
            v40 = *v77;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v77 != v40)
                {
                  objc_enumerationMutation(v29);
                }

                v42 = *(*(&v76 + 1) + 8 * j);
                v43 = objc_msgSend_null(MEMORY[0x277CBEB68], v35, v36, v37, v38);
                objc_msgSend_setObject_forKey_(v13, v44, v45, v46, v47, v43, v42);
              }

              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v35, v36, v37, v38, &v76, v84, 16);
            }

            while (v39);
          }
        }
      }

      v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, v49, v50, v51, &v80, v85, 16);
    }

    while (v75);
  }

  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  v57 = objc_msgSend_allKeys(v13, v53, v54, v55, v56);
  v62 = objc_msgSend_initWithArray_(v52, v58, v59, v60, v61, v57);

  objc_msgSend_sortUsingSelector_(v62, v63, v64, v65, v66, sel_compare_);
  v71 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v67, v68, v69, v70, v62);

  return v71;
}

- (BOOL)needsAnySeparateLayers
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = self->_subRenderers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, &v26, v30, 16);
  if (v7)
  {
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_isCompositeRenderer(v10, v11, v12, v13, v14, v26))
        {
          v15 = v10;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16 && (objc_msgSend_needsAnySeparateLayers(v16, v17, v18, v19, v20) & 1) != 0)
        {

          LOBYTE(v7) = 1;
          goto LABEL_15;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v21, v22, v23, v24, &v26, v30, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v7;
}

- (void)drawIntoLayer:(int)layer inContext:(CGContext *)context visible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v10 = *&layer;
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_subRenderers;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v32, v36, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v32 + 1) + 8 * v19);
        if (objc_msgSend_isCompositeRenderer(v20, v21, v22, v23, v24, v32))
        {
          v25 = v20;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26)
        {
          objc_msgSend_drawIntoLayer_inContext_visible_(v26, v27, x, y, width, v10, context, height);
        }

        else
        {
          objc_msgSend_renderIntoContext_visible_(v20, v27, x, y, width, context, height);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v28, v29, v30, v31, &v32, v36, 16);
    }

    while (v17);
  }
}

+ (void)p_delegateSelector:(SEL)selector toRenderer:(id)renderer transparencyLayer:(int)layer inContext:(CGContext *)context
{
  v7 = *&layer;
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    v9 = rendererCopy;
    v14 = objc_msgSend_methodForSelector_(v9, v10, v11, v12, v13, selector);
    v14(v9, selector, v7, context);
  }
}

- (void)p_delegateSelectorToRenderers:(SEL)renderers transparencyLayer:(int)layer inContext:(CGContext *)context
{
  v6 = *&layer;
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = self->_subRenderers;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v34, v38, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        if (objc_msgSend_isCompositeRenderer(v17, v18, v19, v20, v21, v34))
        {
          v22 = v17;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (objc_opt_respondsToSelector())
        {
          v24 = v23;
          v29 = objc_msgSend_methodForSelector_(v24, v25, v26, v27, v28, renderers);
          v29(v24, renderers, v6, context);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v30, v31, v32, v33, &v34, v38, 16);
    }

    while (v14);
  }
}

+ (void)renderTSCHCompositeRendering:(id)rendering intoContext:(CGContext *)context visible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  renderingCopy = rendering;
  CGContextSaveGState(context);
  objc_msgSend_tLayerRectForContext_(renderingCopy, v12, v13, v14, v15, context);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = objc_msgSend_needsAnySeparateLayers(renderingCopy, v24, v16, v18, v20);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = objc_msgSend_transparencyLayers(renderingCopy, v26, 0.0, v27, v28);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, v30, v31, v32, &v61, v65, 16);
  if (v33)
  {
    v38 = v33;
    v39 = *v62;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v62 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = objc_msgSend_intValue(*(*(&v61 + 1) + 8 * i), v34, v35, v36, v37);
        if (v25)
        {
          CGContextSaveGState(context);
          objc_msgSend_p_delegateSelector_toRenderer_transparencyLayer_inContext_(self, v43, v44, v45, v46, sel_willBeginTransparencyLayer_inContext_, renderingCopy, v42, context);
          v67.origin.x = v17;
          v67.origin.y = v19;
          v67.size.width = v21;
          v67.size.height = v23;
          CGContextBeginTransparencyLayerWithRect(context, v67, 0);
          objc_msgSend_p_delegateSelector_toRenderer_transparencyLayer_inContext_(self, v47, v48, v49, v50, sel_didBeginTransparencyLayer_inContext_, renderingCopy, v42, context);
          objc_msgSend_drawIntoLayer_inContext_visible_(renderingCopy, v51, x, y, width, v42, context, height);
          objc_msgSend_p_delegateSelector_toRenderer_transparencyLayer_inContext_(self, v52, v53, v54, v55, sel_willEndTransparencyLayer_inContext_, renderingCopy, v42, context);
          CGContextEndTransparencyLayer(context);
          objc_msgSend_p_delegateSelector_toRenderer_transparencyLayer_inContext_(self, v56, v57, v58, v59, sel_didEndTransparencyLayer_inContext_, renderingCopy, v42, context);
          CGContextRestoreGState(context);
        }

        else
        {
          objc_msgSend_drawIntoLayer_inContext_visible_(renderingCopy, v41, x, y, width, v42, context, height);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, v35, v36, v37, &v61, v65, 16);
    }

    while (v38);
  }

  CGContextRestoreGState(context);
}

- (id)allRenderingFills
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_renderers(self, v4, 0.0, v5, v6, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v26, v30, 16);
  if (v12)
  {
    v17 = v12;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = objc_msgSend_allRenderingFills(*(*(&v26 + 1) + 8 * i), v13, v14, v15, v16);
        objc_msgSend_addObjectsFromArray_(v3, v21, v22, v23, v24, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v14, v15, v16, &v26, v30, 16);
    }

    while (v17);
  }

  return v3;
}

@end
@interface TSAPdfHyperlinkController
- (BOOL)ignoreUrl:(id)url;
- (CGRect)canvasRect;
- (TSAPdfHyperlinkController)init;
- (id)p_chopBezierIntoRects:(id)rects;
- (id)p_hyperlinkRegionsForRep:(id)rep;
- (void)addHyperlinkForRect:(CGRect)rect withUrl:(id)url;
- (void)addHyperlinksForRep:(id)rep;
- (void)commitHyperlinksToPDF:(CGContext *)f targetRect:(CGRect)rect;
- (void)p_combineSimilarElements:(id)elements;
- (void)p_commitDestinationToPDF:(id)f cgrect:(CGRect)cgrect context:(CGContext *)context;
@end

@implementation TSAPdfHyperlinkController

- (TSAPdfHyperlinkController)init
{
  v8.receiver = self;
  v8.super_class = TSAPdfHyperlinkController;
  v2 = [(TSAPdfHyperlinkController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mHyperlinks = v2->mHyperlinks;
    v2->mHyperlinks = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDestinations = v2->mDestinations;
    v2->mDestinations = v5;
  }

  return v2;
}

- (BOOL)ignoreUrl:(id)url
{
  v4 = objc_msgSend_absoluteString(url, a2, url, v3);
  v5 = v4 == 0;

  return v5;
}

- (CGRect)canvasRect
{
  v2 = 100.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 100.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)addHyperlinkForRect:(CGRect)rect withUrl:(id)url
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x277D81160];
  urlCopy = url;
  v18 = objc_msgSend_bezierPathWithRect_(v9, v11, v12, v13, x, y, width, height);
  v15 = objc_msgSend_hyperlinkRegionWithURL_bezierPath_(MEMORY[0x277D80298], v14, urlCopy, v18);

  objc_msgSend_addObject_(self->mHyperlinks, v16, v15, v17);
}

- (void)addHyperlinksForRep:(id)rep
{
  v10 = objc_msgSend_p_hyperlinkRegionsForRep_(self, a2, rep, v3);
  if (objc_msgSend_count(v10, v5, v6, v7))
  {
    objc_msgSend_addObjectsFromArray_(self->mHyperlinks, v8, v10, v9);
  }
}

- (void)commitHyperlinksToPDF:(CGContext *)f targetRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v113 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D81160];
  objc_msgSend_canvasRect(self, a2, f, v4);
  v101 = objc_msgSend_bezierPathWithRect_(v9, v10, v11, v12);
  objc_msgSend_canvasRect(self, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  TSUCenterOfRect();
  v21 = v20;
  v23 = v22;
  TSUCenterOfRect();
  memset(&v111, 0, sizeof(v111));
  CGAffineTransformMakeTranslation(&v111, v24, v25);
  v109 = v111;
  CGAffineTransformScale(&v110, &v109, width / v17, -height / v19);
  v111 = v110;
  v109 = v110;
  CGAffineTransformTranslate(&v110, &v109, -v21, -v23);
  v111 = v110;
  v29 = objc_msgSend_count(self->mHyperlinks, v26, v27, v28);
  if (v29)
  {
    v33 = v29;
    v34 = 0;
    v100 = v29;
    do
    {
      v35 = objc_autoreleasePoolPush();
      v38 = objc_msgSend_objectAtIndex_(self->mHyperlinks, v36, v34, v37);
      v44 = objc_msgSend_URL(v38, v39, v40, v41);
      if (v44 && (objc_msgSend_ignoreUrl_(self, v42, v44, v43) & 1) == 0)
      {
        point = v35;
        v48 = objc_msgSend_bezierPath(v38, v45, v46, v47);
        v51 = objc_msgSend_intersectBezierPath_(v48, v49, v101, v50);

        v102 = v51;
        v54 = objc_msgSend_p_chopBezierIntoRects_(self, v52, v51, v53);
        objc_msgSend_p_combineSimilarElements_(self, v55, v54, v56);
        v60 = objc_msgSend_count(v54, v57, v58, v59);
        isDestination = objc_msgSend_isDestination_(self, v61, v44, v62);
        if (v60)
        {
          v66 = isDestination;
          for (i = 0; i != v60; ++i)
          {
            v68 = objc_msgSend_objectAtIndex_(v54, v64, i, v65);
            objc_msgSend_CGRectValue(v68, v69, v70, v71);
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v79 = v78;

            v110 = v111;
            v114.origin.x = v73;
            v114.origin.y = v75;
            v114.size.width = v77;
            v114.size.height = v79;
            v115 = CGRectApplyAffineTransform(v114, &v110);
            if (v66)
            {
              objc_msgSend_p_commitDestinationToPDF_cgrect_context_(self, v80, v44, f, v115.origin.x, v115.origin.y, v115.size.width, v115.size.height);
            }

            else
            {
              objc_msgSend_p_commitUrlToPDF_cgrect_context_(self, v80, v44, f, v115.origin.x, v115.origin.y, v115.size.width, v115.size.height);
            }
          }
        }

        v33 = v100;
        v35 = point;
      }

      objc_autoreleasePoolPop(v35);
      ++v34;
    }

    while (v34 != v33);
  }

  objc_msgSend_removeAllObjects(self->mHyperlinks, v30, v31, v32);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v81 = self->mDestinations;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v105, v112, 16);
  if (v83)
  {
    v87 = v83;
    v88 = *v106;
    do
    {
      for (j = 0; j != v87; ++j)
      {
        if (*v106 != v88)
        {
          objc_enumerationMutation(v81);
        }

        v90 = *(*(&v105 + 1) + 8 * j);
        objc_msgSend_point(v90, v84, v85, v86);
        pointa = vaddq_f64(*&v111.tx, vmlaq_n_f64(vmulq_n_f64(*&v111.c, v91), *&v111.a, v92));
        v96 = objc_msgSend_name(v90, v93, v94, v95);
        CGPDFContextAddDestinationAtPoint(f, v96, pointa);
      }

      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v105, v112, 16);
    }

    while (v87);
  }

  objc_msgSend_removeAllObjects(self->mDestinations, v97, v98, v99);
}

- (id)p_hyperlinkRegionsForRep:(id)rep
{
  v34 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  v7 = objc_msgSend_hyperlinkRegions(repCopy, v4, v5, v6);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v29, v33, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = objc_msgSend_bezierPath(*(*(&v29 + 1) + 8 * i), v10, v11, v12, v26, v27, v28);
        v20 = objc_msgSend_layout(repCopy, v17, v18, v19);
        v24 = v20;
        if (v20)
        {
          objc_msgSend_transformInRoot(v20, v21, v22, v23);
        }

        else
        {
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
        }

        objc_msgSend_transformUsingAffineTransform_(v16, v21, &v26, v23);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v29, v33, 16);
    }

    while (v13);
  }

  return v7;
}

- (id)p_chopBezierIntoRects:(id)rects
{
  rectsCopy = rects;
  if (objc_msgSend_elementCount(rectsCopy, v4, v5, v6))
  {
    objc_msgSend_bounds(rectsCopy, v7, v8, v9);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v23 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v18, (v16 / 5.0), v19);
    v24 = 0.0;
    do
    {
      v25 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v20, v21, v22, v11, v13 + v24, v15, 5.0);
      v28 = objc_msgSend_intersectBezierPath_(rectsCopy, v26, v25, v27);
      if ((objc_msgSend_isEmpty(v28, v29, v30, v31) & 1) == 0)
      {
        v34 = objc_msgSend_arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved_(v28, v32, 1, v33);
        if (objc_msgSend_count(v34, v35, v36, v37))
        {
          v40 = 0;
          v41 = 1;
          do
          {
            v42 = objc_msgSend_objectAtIndex_(v34, v38, v40, v39);
            if ((objc_msgSend_isEmpty(v42, v43, v44, v45) & 1) == 0)
            {
              v49 = MEMORY[0x277CCAE60];
              objc_msgSend_bounds(v42, v46, v47, v48);
              v53 = objc_msgSend_valueWithCGRect_(v49, v50, v51, v52);
              objc_msgSend_addObject_(v23, v54, v53, v55);
            }

            v40 = v41;
          }

          while (objc_msgSend_count(v34, v56, v57, v58) > v41++);
        }
      }

      v24 = v24 + 5.0;
    }

    while (v17 >= v24);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)p_combineSimilarElements:(id)elements
{
  elementsCopy = elements;
  if (elementsCopy)
  {
    if (objc_msgSend_count(elementsCopy, v3, v4, v5))
    {
      v9 = objc_msgSend_count(elementsCopy, v6, v7, v8);
      v12 = v9 - 1;
      if (v9 != 1)
      {
        v45 = 0.000000999999997;
        do
        {
          v13 = objc_msgSend_objectAtIndex_(elementsCopy, v10, v12 - 1, v11, *&v45);
          objc_msgSend_CGRectValue(v13, v14, v15, v16);
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v27 = objc_msgSend_objectAtIndex_(elementsCopy, v25, v12, v26);
          objc_msgSend_CGRectValue(v27, v28, v29, v30);
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          if ((v18 == v32 || vabdd_f64(v18, v32) < fabs(v32 * v45)) && (v22 == v36 || vabdd_f64(v22, v36) < fabs(v36 * v45)))
          {
            v39 = v20 + v24;
            if (v20 + v24 == v34 || (v39 = vabdd_f64(v39, v34), v39 < fabs(v34 * v45)))
            {
              objc_msgSend_removeObjectAtIndex_(elementsCopy, v10, v12, v11, v39);
              v43 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v40, v41, v42, v18, v20, v22, v24 + v38);
              objc_msgSend_replaceObjectAtIndex_withObject_(elementsCopy, v44, v12 - 1, v43);
            }
          }

          --v12;
        }

        while (v12);
      }
    }
  }
}

- (void)p_commitDestinationToPDF:(id)f cgrect:(CGRect)cgrect context:(CGContext *)context
{
  height = cgrect.size.height;
  width = cgrect.size.width;
  y = cgrect.origin.y;
  x = cgrect.origin.x;
  v10 = objc_msgSend_destinationFromUrl_(self, a2, f, context);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPDFContextSetDestinationForRect(context, v10, v12);
}

@end
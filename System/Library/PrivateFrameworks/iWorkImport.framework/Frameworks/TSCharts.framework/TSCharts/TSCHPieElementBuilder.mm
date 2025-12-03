@interface TSCHPieElementBuilder
- (CGPath)newElementPathInBody:(id)body forSeries:(id)series outTransform:(CGAffineTransform *)transform outElementSize:(CGSize *)size outClipRect:(CGRect *)rect outWedgeCenterPoint:(CGPoint *)point outSelectionKnobLocations:(id *)locations withInnerRadius:(id)self0;
- (unint64_t)countOfCalloutLinesForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewClipRects:(CGRect *)rects;
- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0;
- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations withInnerRadius:(id)self0;
- (unint64_t)countOfLabelsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings;
@end

@implementation TSCHPieElementBuilder

- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  v22 = objc_msgSend_model(seriesCopy, v18, v19, v20, v21);
  v27 = objc_msgSend_chartInfo(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_valueForProperty_(v27, v28, v29, v30, v31, 1103);

  v37 = objc_msgSend_countOfElementsInSeries_forGroups_forBodyLayout_outNewElementBounds_outNewClipRects_outNewElementPaths_outSelectionKnobLocations_withInnerRadius_(self, v33, v34, v35, v36, seriesCopy, groupsCopy, layoutCopy, bounds, rects, paths, locations, v32);
  return v37;
}

- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations withInnerRadius:(id)self0
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  radiusCopy = radius;
  if (bounds)
  {
    *bounds = 0;
  }

  if (rects)
  {
    *rects = 0;
  }

  if (paths)
  {
    *paths = 0;
  }

  if (locations)
  {
    *locations = 0;
  }

  if (groupsCopy && (objc_msgSend_containsIndex_(groupsCopy, v19, v21, v22, v23, 0) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!seriesCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHPieElementBuilder countOfElementsInSeries:forGroups:forBodyLayout:outNewElementBounds:outNewClipRects:outNewElementPaths:outSelectionKnobLocations:withInnerRadius:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 78, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    if (layoutCopy)
    {
LABEL_18:
      v32 = 0;
      goto LABEL_31;
    }

LABEL_17:
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHPieElementBuilder countOfElementsInSeries:forGroups:forBodyLayout:outNewElementBounds:outNewClipRects:outNewElementPaths:outSelectionKnobLocations:withInnerRadius:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 79, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
    goto LABEL_18;
  }

  if (!layoutCopy)
  {
    goto LABEL_17;
  }

  v24 = *(MEMORY[0x277CBF2C0] + 16);
  *&v73.a = *MEMORY[0x277CBF2C0];
  *&v73.c = v24;
  *&v73.tx = *(MEMORY[0x277CBF2C0] + 32);
  v25 = *MEMORY[0x277CBF3A8];
  v26 = *(MEMORY[0x277CBF398] + 16);
  v71.origin = *MEMORY[0x277CBF398];
  v71.size = v26;
  v72 = v25;
  v70 = 0;
  v27 = objc_msgSend_newElementPathInBody_forSeries_outTransform_outElementSize_outClipRect_outWedgeCenterPoint_outSelectionKnobLocations_withInnerRadius_(self, v19, v71.origin.x, v26.width, *&v25, layoutCopy, seriesCopy, &v73, &v72, &v71, 0, &v70, radiusCopy);
  v68 = v70;
  if (v27)
  {
    BoundingBox = CGPathGetBoundingBox(v27);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    if (CGRectIsNull(BoundingBox))
    {
      v32 = 0;
    }

    else
    {
      if (bounds)
      {
        v63 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
        *bounds = v63;
        v69 = v73;
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        *v63 = CGRectApplyAffineTransform(v75, &v69);
      }

      if (rects)
      {
        v64 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
        *rects = v64;
        v69 = v73;
        *v64 = CGRectApplyAffineTransform(v71, &v69);
      }

      if (paths)
      {
        Mutable = CGPathCreateMutable();
        CGPathAddPathSafe();
        v66 = malloc_type_calloc(8uLL, 1uLL, 0x6004044C4A2DFuLL);
        *paths = v66;
        *v66 = Mutable;
      }

      if (locations)
      {
        *locations = v68;
      }

      v32 = 1;
    }

    CGPathRelease(v27);
  }

  else
  {
    v32 = 0;
  }

LABEL_31:
  return v32;
}

- (unint64_t)countOfLabelsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings
{
  v119[1] = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (transforms)
  {
    *transforms = 0;
  }

  if (sizes)
  {
    *sizes = 0;
  }

  if (rects)
  {
    *rects = 0;
  }

  v117 = layoutCopy;
  if (strings)
  {
    *strings = 0;
  }

  if (groupsCopy && (objc_msgSend_containsIndex_(groupsCopy, v17, v18, v19, v20, 0) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!seriesCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHPieElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 152, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v36 = v117;
  if (!v117)
  {
    v94 = MEMORY[0x277D81150];
    v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHPieElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v101, v102, v103, v104, v95, v100, 153, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108);
LABEL_21:
    v37 = 0;
    v36 = v117;
    goto LABEL_36;
  }

  v37 = 0;
  if (seriesCopy && transforms | strings)
  {
    v38 = objc_msgSend_model(seriesCopy, v17, v18, v19, v20);
    v43 = objc_msgSend_seriesIndex(seriesCopy, v39, v40, v41, v42);
    v48 = objc_msgSend_pieSeriesModelCacheForSeries_(v38, v44, v45, v46, v47, v43);
    v53 = v48;
    v116 = v48;
    if (v48)
    {
      v115 = objc_msgSend_labelString(v48, v49, v50, v51, v52);
      if (objc_msgSend_shouldRenderLabel(v53, v54, v55, v56, v57))
      {
        v114 = v38;
        v113 = v117;
        v62 = objc_msgSend_wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex(v113, v58, v59, v60, v61);
        v67 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v63, v64, v65, v66, v43);
        v72 = objc_msgSend_objectForKeyedSubscript_(v62, v68, v69, v70, v71, v67);

        objc_msgSend_combinedLabelRectInChartCoordinateSpace(v72, v73, v74, v75, v76);
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v38 = v114;
        objc_msgSend_combinedLabelErasableFrame(v72, v85, v77, v79, v81);
        x = v120.origin.x;
        y = v120.origin.y;
        width = v120.size.width;
        height = v120.size.height;
        if (CGRectIsNull(v120))
        {
          v37 = 0;
        }

        else
        {
          if (transforms)
          {
            v109 = malloc_type_calloc(0x30uLL, 1uLL, 0x1000040EED21634uLL);
            *transforms = v109;
            CGAffineTransformMakeTranslation(&v118, v78, v80);
            v91 = *&v118.a;
            c = v118.c;
            v93 = *&v118.tx;
            *&v109->c = *&v118.c;
            *&v109->tx = v93;
            *&v109->a = v91;
          }

          if (sizes)
          {
            v110 = malloc_type_calloc(0x10uLL, 1uLL, 0x1000040451B5BE8uLL);
            *sizes = v110;
            v110->width = v82;
            v110->height = v84;
          }

          if (rects)
          {
            v111 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
            *rects = v111;
            v111->origin.x = x;
            v111->origin.y = y;
            v111->size.width = width;
            v111->size.height = height;
          }

          if (strings)
          {
            v119[0] = v115;
            *strings = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v90, *&v91, c, *&v93, v119, 1);
          }

          v37 = 1;
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }
  }

LABEL_36:

  return v37;
}

- (unint64_t)countOfCalloutLinesForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewClipRects:(CGRect *)rects
{
  seriesCopy = series;
  groupsCopy = groups;
  layoutCopy = layout;
  if (groupsCopy && (objc_msgSend_containsIndex_(groupsCopy, v11, v13, v14, v15, 0) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!seriesCopy)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHPieElementBuilder countOfCalloutLinesForSeries:forGroups:forBodyLayout:outNewClipRects:]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 221, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    if (layoutCopy)
    {
LABEL_13:
      v55 = 0;
      goto LABEL_20;
    }

LABEL_12:
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHPieElementBuilder countOfCalloutLinesForSeries:forGroups:forBodyLayout:outNewClipRects:]");
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 222, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
    goto LABEL_13;
  }

  if (!layoutCopy)
  {
    goto LABEL_12;
  }

  v16 = objc_msgSend_model(seriesCopy, v11, v13, v14, v15);
  v21 = objc_msgSend_seriesIndex(seriesCopy, v17, v18, v19, v20);
  v26 = objc_msgSend_pieSeriesModelCacheForSeries_(v16, v22, v23, v24, v25, v21);
  v31 = v26;
  if (v26 && objc_msgSend_shouldRenderLabel(v26, v27, v28, v29, v30))
  {
    objc_opt_class();
    v33 = TSUCheckedDynamicCast();
    if (!v33)
    {
      v87 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v34, v35, v36, "[TSCHPieElementBuilder countOfCalloutLinesForSeries:forGroups:forBodyLayout:outNewClipRects:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v43, v44, v45, v46, v37, v42, 237, 0, "invalid nil value for '%{public}s'", "pieBodyLayoutItem");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    }

    objc_msgSend_calloutLineBoundingBoxForSeries_(v33, v32, v34, v35, v36, v21);
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    if (CGRectIsInfinite(v88))
    {
      v55 = 0;
    }

    else
    {
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      v55 = !CGRectIsNull(v89);
    }

    if (rects)
    {
      rects->origin.x = x;
      rects->origin.y = y;
      rects->size.width = width;
      rects->size.height = height;
    }
  }

  else
  {
    v55 = 0;
  }

LABEL_20:
  return v55;
}

- (CGPath)newElementPathInBody:(id)body forSeries:(id)series outTransform:(CGAffineTransform *)transform outElementSize:(CGSize *)size outClipRect:(CGRect *)rect outWedgeCenterPoint:(CGPoint *)point outSelectionKnobLocations:(id *)locations withInnerRadius:(id)self0
{
  bodyCopy = body;
  seriesCopy = series;
  radiusCopy = radius;
  if (size)
  {
    *size = *MEMORY[0x277CBF3A8];
  }

  if (rect)
  {
    v18 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v18;
  }

  if (point)
  {
    *point = *MEMORY[0x277CBF348];
  }

  if (locations)
  {
    *locations = 0;
  }

  objc_opt_class();
  v20 = TSUDynamicCast();
  if (v20)
  {
    v24 = objc_msgSend_seriesIndex(seriesCopy, v19, v21, v22, v23);
    objc_msgSend_transformForRenderingElementForSeries_outElementSize_outClipRect_withInnerRadius_(v20, v25, v26, v27, v28, v24, size, rect, radiusCopy);
    v31 = *&v62;
    v32 = *&v63;
    if (transform)
    {
      v31 = *&v62;
      *&transform->a = v61;
      *&transform->c = v62;
      v32 = *&v63;
      *&transform->tx = v63;
    }

    if (locations)
    {
      v33 = objc_msgSend_seriesIndex(seriesCopy, v29, v32, v31, v30);
      *locations = objc_msgSend_knobsOfElementForSeries_withInnerRadius_(v20, v34, v35, v36, v37, v33, radiusCopy);
    }

    v38 = objc_msgSend_seriesIndex(seriesCopy, v29, v32, v31, v30);
    v43 = objc_msgSend_pathOfElementForSeries_outWedgeCenterPoint_withInnerRadius_(v20, v39, v40, v41, v42, v38, point, radiusCopy);
    v44 = CGPathRetain(v43);
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHPieElementBuilder newElementPathInBody:forSeries:outTransform:outElementSize:outClipRect:outWedgeCenterPoint:outSelectionKnobLocations:withInnerRadius:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 293, 0, "invalid nil value for '%{public}s'", "pieLayoutItem");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    v44 = 0;
  }

  return v44;
}

@end
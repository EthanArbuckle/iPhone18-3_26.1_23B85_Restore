@interface TSCHElementBuilder
+ (CGRect)clipRectForElementsDrawnByRenderState:(id)state;
+ (CGRect)elementsRectForElementsDrawnByRenderState:(id)state;
+ (CGRect)p_chartLayoutSpaceClipRectUnionForElementsDrawnByRenderState:(id)state returningItemCount:(unint64_t *)count;
- (BOOL)hasAxisLineInBody:(id)body forAxis:(id)axis outTransform:(CGAffineTransform *)transform outLine:(id *)line;
- (BOOL)p_testIntersectionOfRect:(CGRect)rect againstSortedRects:(id)rects withInset:(double)inset isVertical:(BOOL)vertical;
- (CGAffineTransform)p_transformForRenderingTrendlineTextNotR2:(SEL)r2 forSeries:(BOOL)series forAreaLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outParagraphStyle:(CGRect *)style outString:(id *)string;
- (CGAffineTransform)transformForRenderingLabelForReferenceLine:(SEL)line ofType:(id)type range:(unint64_t)range inLayoutItem:(_NSRange)item outElementSize:(id)size outClipRect:(CGSize *)rect;
- (CGAffineTransform)transformForRenderingR2TextForSeries:(SEL)series forAreaLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outParagraphStyle:(CGRect *)style outString:(id *)string;
- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size;
- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size offset:(double)offset;
- (CGRect)p_strideTestingRectFromRect:(CGRect)rect withOffset:(double)offset isVertical:(BOOL)vertical;
- (unint64_t)countOfCalloutLinesForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewClipRects:(CGRect *)rects;
- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0;
- (unint64_t)countOfErrorBarsInSeries:(id)series forGroups:(id)groups forAxisID:(id)d forBodyLayout:(id)layout outClipRect:(CGRect *)rect outNewErrorBarDescriptors:(id *)descriptors;
- (unint64_t)countOfGridLinesInBody:(id)body forAxis:(id)axis minor:(BOOL)minor outNewLineDescriptors:(id *)descriptors;
- (unint64_t)countOfLabelsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings;
- (unint64_t)countOfReferenceLineLabelsForAxisID:(id)d model:(id)model forRefLineLabelsLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewParagraphStyles:(id *)styles outNewStrings:(id *)self0 outNewLabelTypes:(unint64_t *)self1 outReferenceLines:(id *)self2 includeOutsideChartBodyBounds:(BOOL)self3 outOutsideChartBodyBounds:(BOOL *)self4;
- (unint64_t)countOfReferenceLinesForAxisID:(id)d model:(id)model forBodyLayout:(id)layout outClipRect:(CGRect *)rect outNewClipRects:(CGRect *)rects outNewLineDescriptors:(id *)descriptors outReferenceLines:(id *)lines includeOutsideChartBodyBounds:(BOOL)self0 outOutsideChartBodyBounds:(BOOL *)self1;
- (unint64_t)countOfSummaryLabelsForGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings;
- (unint64_t)p_countOfReferenceLineLabelsForReferenceLine:(id)line forRefLineLabelsLayout:(id)layout substringRange:(_NSRange *)range outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewParagraphStyles:(id *)styles outNewStrings:(id *)self0 outNewLabelTypes:(unint64_t *)self1 includeOutsideChartBodyBounds:(BOOL)self2 outOutsideChartBodyBounds:(BOOL *)self3;
- (void)p_insertRectValue:(id)value intoArray:(id)array isVertical:(BOOL)vertical showAll:(BOOL)all;
- (void)p_trendlineInfoForSeries:(id)series forBodyLayout:(id)layout outVertical:(BOOL *)vertical outOffsetInBody:(double *)body;
- (void)trendlineElementForSeries:(id)series forBodyLayout:(id)layout outElementBounds:(CGRect *)bounds outElementClipRect:(CGRect *)rect outElementPath:(id *)path;
@end

@implementation TSCHElementBuilder

- (unint64_t)countOfReferenceLinesForAxisID:(id)d model:(id)model forBodyLayout:(id)layout outClipRect:(CGRect *)rect outNewClipRects:(CGRect *)rects outNewLineDescriptors:(id *)descriptors outReferenceLines:(id *)lines includeOutsideChartBodyBounds:(BOOL)self0 outOutsideChartBodyBounds:(BOOL *)self1
{
  v201[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  modelCopy = model;
  layoutCopy = layout;
  v19 = MEMORY[0x277CBF398];
  if (rect)
  {
    v16 = *MEMORY[0x277CBF398];
    v17 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v17;
  }

  if (rects)
  {
    *rects = 0;
  }

  if (descriptors)
  {
    *descriptors = 0;
  }

  if (lines)
  {
    *lines = 0;
  }

  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  __src = 0;
  v193 = 0;
  v194 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  __p = 0;
  size = 0;
  v188 = 0;
  if (lines)
  {
    v173 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, *&v16, v17.width, v18);
  }

  else
  {
    v173 = 0;
  }

  v158 = objc_msgSend_chartInfo(modelCopy, v15, *&v16, v17.width, v18);
  objc_msgSend_rootedLayoutRect(layoutCopy, v24, v25, v26, v27);
  v172 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v155 = objc_msgSend_chartType(v158, v35, v29, v31, v33);
  if (dCopy)
  {
    v201[0] = dCopy;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v37, v38, v39, v201, 1);
  }

  else
  {
    v40 = objc_msgSend_valueAxisIDs(v155, v36, v37, v38, v39);
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = v40;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, v42, v43, v44, &v182, v200, 16);
  rectCopy = rect;
  if (v45)
  {
    v163 = v45;
    v174 = 0;
    v161 = *v183;
    descriptorsCopy = descriptors;
    v170 = v32;
    v171 = v30;
    v169 = v34;
    do
    {
      for (i = 0; i != v163; ++i)
      {
        if (*v183 != v161)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v182 + 1) + 8 * i);
        v164 = objc_msgSend_axisForID_(modelCopy, v46, v47, v48, v49, v50, rectCopy);
        if (objc_msgSend_supportsReferenceLines(v164, v51, v52, v53, v54))
        {
          v59 = objc_msgSend_type(v50, v55, v56, v57, v58);
          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          v63 = objc_msgSend_referenceLines(v164, v60, 0.0, v61, v62);
          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, v65, v66, v67, &v178, v199, 16);
          if (v69)
          {
            v73 = *v179;
            do
            {
              for (j = 0; j != v69; ++j)
              {
                if (*v179 != v73)
                {
                  objc_enumerationMutation(v63);
                }

                v75 = *(*(&v178 + 1) + 8 * j);
                if (objc_msgSend_intValueForProperty_defaultValue_(v75, v68, v70, v71, v72, 1223, 0))
                {
                  v76 = sub_276297280(v75);
                  v77 = (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
                  v78 = v76 < 0.0 && ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
                  if (v76 >= 0.0)
                  {
                    v77 = 0;
                  }

                  v79 = (*&v76 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v77;
                  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
                  {
                    v79 = 1;
                  }

                  v80 = v79 | v78;
                  v70 = 1.0;
                  if (v76 > 1.0)
                  {
                    v80 = 1;
                  }

                  LOBYTE(v197) = v80;
                  if (v80 != 1 || bounds)
                  {
                    v176 = v23;
                    v81 = v22;
                    v82 = v21;
                    v83 = v20;
                    v84 = 0.0;
                    if (v59 == 2)
                    {
                      v85 = v76;
                    }

                    else
                    {
                      v85 = 0.0;
                    }

                    if (v59 != 2)
                    {
                      v84 = v76;
                    }

                    v86 = sub_27634600C(v59 == 2, v84, v85, v30, v32, v34, v172, 0.0);
                    v87 = v32;
                    v88 = v86;
                    v89 = v34;
                    v91 = v90;
                    v92 = 1.0;
                    if (v59 == 2)
                    {
                      v93 = v76;
                    }

                    else
                    {
                      v93 = 1.0;
                    }

                    if (v59 != 2)
                    {
                      v92 = v76;
                    }

                    v95 = sub_27634600C(v59 == 2, v92, v93, v30, v87, v89, v172, 0.0);
                    v98 = v95;
                    v99 = v96;
                    v175 = v83;
                    v100 = v82;
                    v101 = v81;
                    v102 = v176;
                    if (descriptors)
                    {
                      v103 = v193;
                      if (v193 >= v194)
                      {
                        v105 = __src;
                        v106 = v193 - __src;
                        v107 = (v193 - __src) >> 5;
                        v108 = v107 + 1;
                        if ((v107 + 1) >> 59)
                        {
                          sub_276161760();
                        }

                        v109 = v194 - __src;
                        if ((v194 - __src) >> 4 > v108)
                        {
                          v108 = v109 >> 4;
                        }

                        if (v109 >= 0x7FFFFFFFFFFFFFE0)
                        {
                          v108 = 0x7FFFFFFFFFFFFFFLL;
                        }

                        if (v108)
                        {
                          sub_2762828C8(&__src, v108);
                        }

                        v110 = 32 * v107;
                        *v110 = v88;
                        *(v110 + 8) = v91;
                        *(v110 + 16) = v95;
                        *(v110 + 24) = v96;
                        v104 = 32 * v107 + 32;
                        memcpy(0, v105, v106);
                        v111 = __src;
                        __src = 0;
                        v193 = v104;
                        v194 = 0;
                        if (v111)
                        {
                          operator delete(v111);
                        }

                        descriptors = descriptorsCopy;
                      }

                      else
                      {
                        *v193 = v88;
                        v103[1] = v91;
                        v104 = (v103 + 4);
                        v103[2] = v95;
                        v103[3] = v96;
                      }

                      v193 = v104;
                    }

                    v112 = objc_msgSend_objectValueForProperty_(v75, v94, v95, v96, v97, 1225);
                    objc_msgSend_width(v112, v113, v114, v115, v116);
                    v119 = v88 - v118 * 0.5;
                    v120 = v99 - v91;
                    v121 = v91 - v118 * 0.5;
                    v122 = v98 - v88;
                    if (v59 == 2)
                    {
                      v91 = v91 - v118 * 0.5;
                    }

                    else
                    {
                      v88 = v88 - v118 * 0.5;
                    }

                    if (v59 == 2)
                    {
                      v123 = v122;
                    }

                    else
                    {
                      v123 = v118;
                    }

                    v177.origin.x = v88;
                    v177.origin.y = v91;
                    if (v59 == 2)
                    {
                      v124 = v118;
                    }

                    else
                    {
                      v124 = v120;
                    }

                    v177.size.width = v123;
                    v177.size.height = v124;
                    v125 = objc_msgSend_objectValueForProperty_(v75, v117, v118, v121, v119, 1221);
                    v131 = v175;
                    if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v126, v127, v128, v129, v125))
                    {
                      v167 = v101;
                      v168 = v100;
                      y = v177.origin.y;
                      x = v177.origin.x;
                      width = v177.size.width;
                      height = v177.size.height;
                      objc_msgSend_shadowBoundsForRect_(v125, v130, v88, v91, v123, v124);
                      v205.origin.x = v136;
                      v205.origin.y = v137;
                      v205.size.width = v138;
                      v205.size.height = v139;
                      v202.origin.x = x;
                      v202.origin.y = y;
                      v202.size.width = width;
                      v202.size.height = height;
                      v177 = CGRectUnion(v202, v205);
                      v131 = v175;
                      v102 = v176;
                      v101 = v167;
                      v100 = v168;
                    }

                    sub_27627D7DC(&v189, &v177);
                    v203.origin.x = v131;
                    v203.origin.y = v100;
                    v203.size.width = v101;
                    v203.size.height = v102;
                    v204 = CGRectUnion(v203, v177);
                    v20 = v204.origin.x;
                    v21 = v204.origin.y;
                    v22 = v204.size.width;
                    v23 = v204.size.height;
                    sub_276297C38(&__p, &v197);
                    objc_msgSend_addObject_(v173, v140, v141, v142, v143, v75);

                    v32 = v170;
                    v30 = v171;
                    v34 = v169;

                    ++v174;
                  }
                }
              }

              v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v68, v70, v71, v72, &v178, v199, 16);
            }

            while (v69);
          }
        }
      }

      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, v47, v48, v49, &v182, v200, 16);
    }

    while (v163);
  }

  else
  {
    v174 = 0;
  }

  if (!descriptors || __src == v193)
  {
    v149 = 0;
  }

  else
  {
    v148 = malloc_type_calloc(0x20uLL, (v193 - __src) >> 5, 0x1000040E0EAB150uLL);
    v149 = v148;
    v144 = __src;
    if (v193 != __src)
    {
      memmove(v148, __src, v193 - __src);
    }
  }

  if (rects)
  {
    v150 = malloc_type_calloc(0x20uLL, (v190 - v189) >> 5, 0x1000040E0EAB150uLL);
    v151 = v150;
    v144 = v189;
    if (v190 != v189)
    {
      memmove(v150, v189, v190 - v189);
    }
  }

  else
  {
    v151 = 0;
  }

  if (bodyBounds)
  {
    v152 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
    v197 = __p;
    v198 = 0;
    v195 = __p + 8 * (size >> 6);
    v196 = size & 0x3F;
    sub_27629A154(&v197, &v195, v152, &v177);
  }

  else
  {
    v152 = 0;
  }

  if (rectCopy)
  {
    rectCopy->origin.x = v20;
    rectCopy->origin.y = v21;
    rectCopy->size.width = v22;
    rectCopy->size.height = v23;
  }

  if (rects)
  {
    *rects = v151;
  }

  if (descriptors)
  {
    *descriptors = v149;
  }

  if (lines)
  {
    *lines = objc_msgSend_copy(v173, v144, v145, v146, v147);
  }

  if (bodyBounds)
  {
    *bodyBounds = v152;
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (__src)
  {
    v193 = __src;
    operator delete(__src);
  }

  return v174;
}

- (unint64_t)countOfReferenceLineLabelsForAxisID:(id)d model:(id)model forRefLineLabelsLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewParagraphStyles:(id *)styles outNewStrings:(id *)self0 outNewLabelTypes:(unint64_t *)self1 outReferenceLines:(id *)self2 includeOutsideChartBodyBounds:(BOOL)self3 outOutsideChartBodyBounds:(BOOL *)self4
{
  v222[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  modelCopy = model;
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

  if (styles)
  {
    *styles = 0;
  }

  sizesCopy = sizes;
  transformsCopy = transforms;
  rectsCopy = rects;
  if (strings)
  {
    *strings = 0;
  }

  bodyBoundsCopy2 = bodyBounds;
  if (types)
  {
    *types = 0;
  }

  if (lines)
  {
    *lines = 0;
  }

  if (bodyBounds)
  {
    *bodyBounds = 0;
  }

  if (!layoutCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHElementBuilder(TSCHReferenceLines) countOfReferenceLineLabelsForAxisID:model:forRefLineLabelsLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewParagraphStyles:outNewStrings:outNewLabelTypes:outReferenceLines:includeOutsideChartBodyBounds:outOutsideChartBodyBounds:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder_ReferenceLines.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 228, 0, "invalid nil value for '%{public}s'", "refLineLabelsLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    size = 0;
    goto LABEL_26;
  }

  size = 0;
  if (bodyBounds)
  {
    boundsCopy = 0;
  }

  else
  {
    boundsCopy = bounds;
  }

  if (lines | types | rects | transforms | styles | strings && !boundsCopy)
  {
    v218 = 0;
    v217 = 0;
    v219 = 0;
    v215 = 0;
    v214 = 0;
    v216 = 0;
    v212 = 0;
    v211 = 0;
    v213 = 0;
    v209 = 0;
    __src = 0;
    v210 = 0;
    memset(__p, 0, sizeof(__p));
    v188 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20, v21, v22);
    v189 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    if (lines)
    {
      v190 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31, v32);
    }

    else
    {
      v190 = 0;
    }

    v162 = objc_msgSend_chartInfo(modelCopy, v29, v30, v31, v32);
    v163 = objc_msgSend_chartType(v162, v49, v50, v51, v52);
    if (dCopy)
    {
      v222[0] = dCopy;
      v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, v54, v55, v56, v222, 1);
    }

    else
    {
      v57 = objc_msgSend_valueAxisIDs(v163, v53, v54, v55, v56);
    }

    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    v203 = 0u;
    obj = v57;
    v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, v59, v60, v61, &v203, v221, 16);
    if (!v170)
    {

      if (!transforms)
      {
        sizesCopy2 = sizes;
        if (sizes)
        {
          goto LABEL_117;
        }

        if (rects)
        {
          goto LABEL_134;
        }

        goto LABEL_135;
      }

      goto LABEL_114;
    }

    size = 0;
    v169 = *v204;
    if (transforms)
    {
      v66 = &v198;
    }

    else
    {
      v66 = 0;
    }

    v67 = &v197;
    if (!sizes)
    {
      v67 = 0;
    }

    v180 = v67;
    v181 = v66;
    if (rects)
    {
      v68 = &v196;
    }

    else
    {
      v68 = 0;
    }

    v69 = &v193;
    if (!styles)
    {
      v69 = 0;
    }

    v178 = v69;
    v179 = v68;
    if (strings)
    {
      v70 = &v192;
    }

    else
    {
      v70 = 0;
    }

    v71 = &v195;
    if (!types)
    {
      v71 = 0;
    }

    v176 = v71;
    v177 = v70;
    v72 = &v194;
    if (!bodyBounds)
    {
      v72 = 0;
    }

    v175 = v72;
LABEL_50:
    v173 = 0;
    while (1)
    {
      if (*v204 != v169)
      {
        objc_enumerationMutation(obj);
      }

      v73 = *(*(&v203 + 1) + 8 * v173);
      v172 = objc_msgSend_axisForID_(modelCopy, v62, v63, v64, v65, v73);
      if (objc_msgSend_supportsReferenceLines(v172, v74, v75, v76, v77))
      {
        v82 = objc_msgSend_axisID(layoutCopy, v78, v79, v80, v81);
        isEqual = objc_msgSend_isEqual_(v73, v83, v84, v85, v86, v82);

        if (isEqual)
        {
          break;
        }
      }

LABEL_102:

      if (++v173 == v170)
      {
        v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, v63, v64, v65, &v203, v221, 16);
        if (!v170)
        {

          if (!transformsCopy)
          {
            goto LABEL_108;
          }

          v132 = size;
          if (size)
          {
            v136 = malloc_type_calloc(0x30uLL, size, 0x1000040EED21634uLL);
            v137 = 0;
            *transformsCopy = v136;
            v138 = v217;
            v139 = size;
            do
            {
              v140 = &(*transformsCopy)[v137 / 0x30];
              v133 = *&v138[v137];
              v134 = *&v138[v137 + 16];
              v135 = *&v138[v137 + 32];
              v140[1] = v134;
              v140[2] = v135;
              *v140 = v133;
              v137 += 48;
              --v139;
            }

            while (v139);
LABEL_108:
            if (sizesCopy)
            {
              v132 = size;
              sizesCopy2 = sizesCopy;
              if (size)
              {
                v142 = malloc_type_calloc(0x10uLL, size, 0x1000040451B5BE8uLL);
                v143 = 0;
                *sizesCopy = v142;
                v144 = size;
                do
                {
                  v133 = *(v214 + v143 * 16);
                  (*sizesCopy)[v143++] = v133;
                  --v144;
                }

                while (v144);
                goto LABEL_118;
              }

LABEL_117:
              size = 0;
              *sizesCopy2 = 0;
            }

LABEL_118:
            if (rectsCopy)
            {
              v132 = size;
              if (size)
              {
                v145 = malloc_type_calloc(0x20uLL, size, 0x1000040E0EAB150uLL);
                v146 = 0;
                *rectsCopy = v145;
                v147 = v211;
                v148 = size;
                do
                {
                  v149 = &(*rectsCopy)[v146];
                  v133 = *&v147[v146 * 32];
                  v134 = *&v147[v146 * 32 + 16];
                  *v149 = v133;
                  v149[1] = v134;
                  ++v146;
                  --v148;
                }

                while (v148);
                goto LABEL_122;
              }

LABEL_134:
              *rectsCopy = 0;
LABEL_135:
              if (types)
              {
LABEL_136:
                size = 0;
                *types = 0;
              }

              else
              {
                size = 0;
              }
            }

            else
            {
LABEL_122:
              if (strings && size)
              {
                *strings = objc_msgSend_subarrayWithRange_(v188, v132, v133.width, v134.width, v135.width, 0, size);
              }

              if (styles && size)
              {
                v150 = v189;
                *styles = objc_msgSend_subarrayWithRange_(v189, v151, v152, v153, v154, 0, size);
              }

              if (types)
              {
                v132 = size;
                if (!size)
                {
                  goto LABEL_136;
                }

                v155 = malloc_type_calloc(8uLL, size, 0x100004000313F17uLL);
                v156 = 0;
                *types = v155;
                v157 = __src;
                do
                {
                  v155[v156] = v157[v156];
                  ++v156;
                }

                while (size != v156);
              }
            }

            if (lines)
            {
              *lines = objc_msgSend_copy(v190, v132, v133.width, v134.width, v135.width);
            }

            if (bodyBoundsCopy2)
            {
              if (size)
              {
                v158 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
                v159 = 0;
                *bodyBoundsCopy2 = v158;
                v160 = __p[0];
                do
                {
                  v158[v159] = (*&v160[(v159 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v159) & 1;
                  ++v159;
                }

                while (size != v159);
              }

              else
              {
                *bodyBoundsCopy2 = 0;
              }
            }

            if (__p[0])
            {
              operator delete(__p[0]);
            }

            if (__src)
            {
              v209 = __src;
              operator delete(__src);
            }

            if (v211)
            {
              v212 = v211;
              operator delete(v211);
            }

            if (v214)
            {
              v215 = v214;
              operator delete(v214);
            }

            if (v217)
            {
              v218 = v217;
              operator delete(v217);
            }

            goto LABEL_26;
          }

LABEL_114:
          sizesCopy2 = sizesCopy;
          *transformsCopy = 0;
          if (!sizesCopy)
          {
            size = 0;
            goto LABEL_118;
          }

          goto LABEL_117;
        }

        goto LABEL_50;
      }
    }

    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v174 = objc_msgSend_referenceLines(v172, v88, 0.0, v89, v90);
    v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v91, v92, v93, v94, &v199, v220, 16);
    if (!v185)
    {
      goto LABEL_101;
    }

    v183 = *v200;
LABEL_57:
    v187 = 0;
    while (1)
    {
      if (*v200 != v183)
      {
        objc_enumerationMutation(v174);
      }

      v191 = *(*(&v199 + 1) + 8 * v187);
      v197 = 0;
      v198 = 0;
      v195 = 0;
      v196 = 0;
      v194 = 0;
      if (styles)
      {
        v193 = 0;
      }

      if (strings)
      {
        v192 = 0;
      }

      LOBYTE(v161) = bounds;
      v100 = objc_msgSend_countOfReferenceLineLabelsForReferenceLine_forRefLineLabelsLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(self, v95, v96, v97, v98, v191, layoutCopy, v181, v180, v179, v178, v177, v176, v161, v175);
      if (styles)
      {
        v104 = v193;
      }

      else
      {
        v104 = 0;
      }

      if (strings)
      {
        v105 = v192;
        if (v100)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v105 = 0;
        if (v100)
        {
LABEL_71:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          v109 = 0;
          size += v100;
          do
          {
            if (v198)
            {
              sub_276298934(&v217, (v198 + v106));
            }

            if (v197)
            {
              sub_276298A3C(&v214, v197 + v107);
            }

            if (v196)
            {
              sub_27627D7DC(&v211, v196 + v108);
            }

            if (v104)
            {
              v110 = objc_msgSend_objectAtIndexedSubscript_(v104, v99, v101, v102, v103, v109);
              objc_msgSend_addObject_(v189, v111, v112, v113, v114, v110);
            }

            if (v105)
            {
              v115 = objc_msgSend_objectAtIndexedSubscript_(v105, v99, v101, v102, v103, v109);
              objc_msgSend_addObject_(v188, v116, v117, v118, v119, v115);
            }

            if (v195)
            {
              v120 = v209;
              if (v209 >= v210)
              {
                v122 = __src;
                v123 = v209 - __src;
                v124 = (v209 - __src) >> 3;
                v125 = v124 + 1;
                if ((v124 + 1) >> 61)
                {
                  sub_276161760();
                }

                v126 = v210 - __src;
                if ((v210 - __src) >> 2 > v125)
                {
                  v125 = v126 >> 2;
                }

                v127 = v126 >= 0x7FFFFFFFFFFFFFF8;
                v128 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v127)
                {
                  v128 = v125;
                }

                if (v128)
                {
                  sub_2761AAC20(&__src, v128);
                }

                v129 = (8 * v124);
                v130 = &v129[-((v209 - __src) >> 3)];
                *v129 = *(v195 + v109);
                v121 = (v129 + 1);
                memcpy(v130, v122, v123);
                v131 = __src;
                __src = v130;
                v209 = v121;
                v210 = 0;
                if (v131)
                {
                  operator delete(v131);
                }

                bodyBoundsCopy2 = bodyBounds;
              }

              else
              {
                *v209 = *(v195 + v109);
                v121 = v120 + 8;
              }

              v209 = v121;
            }

            if (v194)
            {
              sub_276297C38(__p, (v194 + v109));
            }

            objc_msgSend_addObject_(v190, v99, v101, v102, v103, v191);
            ++v109;
            v108 += 32;
            v107 += 16;
            v106 += 48;
          }

          while (v100 != v109);
        }
      }

      free(v198);
      free(v197);
      free(v196);
      free(v195);

      if (++v187 == v185)
      {
        v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v95, v96, v97, v98, &v199, v220, 16);
        if (!v185)
        {
LABEL_101:

          goto LABEL_102;
        }

        goto LABEL_57;
      }
    }
  }

LABEL_26:

  return size;
}

- (CGAffineTransform)transformForRenderingLabelForReferenceLine:(SEL)line ofType:(id)type range:(unint64_t)range inLayoutItem:(_NSRange)item outElementSize:(id)size outClipRect:(CGSize *)rect
{
  itemCopy = item;
  typeCopy = type;
  sizeCopy = size;
  v18 = MEMORY[0x277CBF3A8];
  if (rect)
  {
    *rect = *MEMORY[0x277CBF3A8];
  }

  v19 = MEMORY[0x277CBF398];
  if (a9)
  {
    v20 = *(MEMORY[0x277CBF398] + 16);
    a9->origin = *MEMORY[0x277CBF398];
    a9->size = v20;
  }

  v21 = MEMORY[0x277CBF2C0];
  v22 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v22;
  *&retstr->tx = *(v21 + 32);
  v41 = *v18;
  v23 = *(v19 + 16);
  v39 = *v19;
  v40 = v23;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v24 = objc_msgSend_p_countOfReferenceLineLabelsForReferenceLine_forRefLineLabelsLayout_substringRange_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(self, v15, v39.x, v23.width, v17, typeCopy, sizeCopy, &itemCopy, &v38, &v37, &v36, 0, 0, &v35, 0, 0);
  v25 = v38;
  if (v24)
  {
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    do
    {
      v30 = *v26++;
      if (v30 == range)
      {
        v31 = v29[1];
        *&retstr->a = *v29;
        *&retstr->c = v31;
        *&retstr->tx = v29[2];
        v41 = *v28;
        v32 = v27[1];
        v39 = *v27;
        v40 = v32;
      }

      v27 += 2;
      ++v28;
      v29 += 3;
      --v24;
    }

    while (v24);
  }

  if (v25)
  {
    free(v25);
    v38 = 0;
  }

  if (v37)
  {
    free(v37);
    v37 = 0;
  }

  if (v36)
  {
    free(v36);
    v36 = 0;
  }

  if (v35)
  {
    free(v35);
  }

  if (rect)
  {
    *rect = v41;
  }

  if (a9)
  {
    v33 = v40;
    a9->origin = v39;
    a9->size = v33;
  }

  return result;
}

- (unint64_t)p_countOfReferenceLineLabelsForReferenceLine:(id)line forRefLineLabelsLayout:(id)layout substringRange:(_NSRange *)range outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewParagraphStyles:(id *)styles outNewStrings:(id *)self0 outNewLabelTypes:(unint64_t *)self1 includeOutsideChartBodyBounds:(BOOL)self2 outOutsideChartBodyBounds:(BOOL *)self3
{
  lineCopy = line;
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

  if (styles)
  {
    *styles = 0;
  }

  if (strings)
  {
    *strings = 0;
  }

  if (types)
  {
    *types = 0;
  }

  if (bodyBounds)
  {
    *bodyBounds = 0;
  }

  v407 = layoutCopy;
  if (!objc_msgSend_intValueForProperty_defaultValue_(lineCopy, v19, v21, v22, v23, 1223, 0))
  {
    goto LABEL_31;
  }

  v28 = objc_msgSend_labelShowing(lineCopy, v24, v25, v26, v27);
  v33 = objc_msgSend_valueLabelShowing(lineCopy, v29, v30, v31, v32);
  if (((v28 | v33) & 1) == 0)
  {
    goto LABEL_31;
  }

  v37 = sub_276297280(lineCopy);
  v38 = (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v39 = v37 < 0.0 && ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v37 >= 0.0)
  {
    v38 = 0;
  }

  v40 = (*&v37 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v38;
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v40 = 1;
  }

  v41 = v40 | v39;
  if (v37 > 1.0)
  {
    v41 = 1;
  }

  v428[0] = v41;
  if (!bounds)
  {
    if (v41)
    {
LABEL_31:
      v42 = 0;
      goto LABEL_32;
    }
  }

  v403 = v33;
  v425 = 0;
  v426 = 0;
  v427 = 0;
  v422 = 0;
  v423 = 0;
  v424 = 0;
  v419 = 0;
  v420 = 0;
  v421 = 0;
  v416 = 0;
  v417 = 0;
  v418 = 0;
  memset(__p, 0, sizeof(__p));
  v405 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, 1.0, v35, v36);
  v406 = objc_msgSend_array(MEMORY[0x277CBEB18], v44, v45, v46, v47);
  v400 = objc_msgSend_model(layoutCopy, v48, v49, v50, v51);
  v404 = objc_msgSend_chartInfo(v400, v52, v53, v54, v55);
  objc_msgSend_rootedLayoutRect(layoutCopy, v56, v57, v58, v59);
  v395 = v60;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = objc_msgSend_axis(lineCopy, v67, v61, v60, v63);
  v399 = v68;
  v398 = objc_msgSend_axisID(v68, v69, v70, v71, v72);
  v396 = objc_msgSend_type(v398, v73, v74, v75, v76);
  if (range)
  {
    length = range->length;
    location = range->location;
  }

  else
  {
    location = 0;
    length = -1;
  }

  range2 = length;
  if (!v403)
  {
    v42 = 0;
    v391 = 0.0;
    if (!v28)
    {
      goto LABEL_75;
    }

    goto LABEL_56;
  }

  v80 = *(MEMORY[0x277CBF398] + 16);
  v413 = *MEMORY[0x277CBF398];
  v414 = v80;
  objc_msgSend_referenceLineAxisValue(lineCopy, v77, *&v413, *&v80, v78);
  v85 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v81, v82, v83, v84);
  v90 = objc_msgSend_formattedStringForAxisValue_(v68, v86, v87, v88, v89, v85);

  v393 = v90;
  if (!v90)
  {
    v95 = MEMORY[0x277D81150];
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, "[TSCHElementBuilder(TSCHReferenceLines) p_countOfReferenceLineLabelsForReferenceLine:forRefLineLabelsLayout:substringRange:outNewTransforms:outNewElementSizes:outNewClipRects:outNewParagraphStyles:outNewStrings:outNewLabelTypes:includeOutsideChartBodyBounds:outOutsideChartBodyBounds:]");
    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder_ReferenceLines.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v102, v103, v104, v105, v96, v101, 512, 0, "Failed to get string for reference line value label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109);
  }

  v110 = objc_msgSend_length(v393, v91, v92, v93, v94);
  v429.location = 0;
  v389 = v110;
  v429.length = v110;
  v431.location = location;
  v431.length = range2;
  v111 = NSIntersectionRange(v429, v431);
  v115 = objc_msgSend_intValueForProperty_defaultValue_(lineCopy, v111.length, v112, v113, v114, 1227, 0);
  v392 = objc_msgSend_paragraphStyleAtIndex_(v404, v116, v117, v118, v119, v115);
  v124 = objc_msgSend_sharedText(TSCHText, v120, v121, v122, v123);
  objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v124, v125, v126, v127, v128, v393, v392, &v413);
  *&v412 = v129;
  *(&v412 + 1) = v130;

  v391 = *(&v412 + 1);
  if (v396 == 2)
  {
    v134 = objc_msgSend_root(v407, v131, *(&v412 + 1), v132, v133);
    v139 = objc_msgSend_chartAreaLayoutItem(v134, v135, v136, v137, v138);
    objc_msgSend_chartBodyLayoutRect(v139, v140, v141, v142, v143);
    v145 = v144;

    if (v145 != v66)
    {
      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v147, v148, v149, "[TSCHElementBuilder(TSCHReferenceLines) p_countOfReferenceLineLabelsForReferenceLine:forRefLineLabelsLayout:substringRange:outNewTransforms:outNewElementSizes:outNewClipRects:outNewParagraphStyles:outNewStrings:outNewLabelTypes:includeOutsideChartBodyBounds:outOutsideChartBodyBounds:]");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder_ReferenceLines.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v157, v158, v159, v160, v151, v156, 523, 0, "label frame must be the same height as chart body frame");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163, v164);
    }

    v165 = sub_27634600C(1, 0.0, v37, v62, v395, v64, v66, 0.0);
    v168 = v392;
    v167 = v393;
    if ((v28 & 1) == 0)
    {
      v166 = v166 + *(&v412 + 1) * -0.5;
    }
  }

  else
  {
    v169 = objc_msgSend_root(v407, v131, *(&v412 + 1), v132, v133);
    v174 = objc_msgSend_chartAreaLayoutItem(v169, v170, v171, v172, v173);
    objc_msgSend_chartBodyLayoutRect(v174, v175, v176, v177, v178);
    v180 = v179;

    if (v180 != v64)
    {
      v185 = MEMORY[0x277D81150];
      v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, v182, v183, v184, "[TSCHElementBuilder(TSCHReferenceLines) p_countOfReferenceLineLabelsForReferenceLine:forRefLineLabelsLayout:substringRange:outNewTransforms:outNewElementSizes:outNewClipRects:outNewParagraphStyles:outNewStrings:outNewLabelTypes:includeOutsideChartBodyBounds:outOutsideChartBodyBounds:]");
      v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder_ReferenceLines.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v185, v192, v193, v194, v195, v186, v191, 530, 0, "label frame must be the same width as chart body frame");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v196, v197, v198, v199);
    }

    v165 = sub_27634600C(0, v37, 1.0, v62, v395, v64, v66, 0.0) + *&v412 * -0.5;
    v166 = v200 - *(&v412 + 1);
    v168 = v392;
    v167 = v393;
  }

  memset(&v411, 0, sizeof(v411));
  CGAffineTransformMakeTranslation(&v411, v165, v166);
  if (v111.location || v389 != v111.length)
  {
    v203 = *(MEMORY[0x277CBF398] + 16);
    v410.origin = *MEMORY[0x277CBF398];
    v410.size = v203;
    v204 = objc_msgSend_sharedText(TSCHText, v201, v410.origin.x, v203.width, v202, v389);
    objc_msgSend_frameForRange_inText_paragraphStyle_outErasableFrame_(v204, v205, v206, v207, v208, v111.location, v111.length, v167, v168, &v410);
    v210 = v209;
    v212 = v211;
    v214 = v213;
    v216 = v215;

    v433.origin.x = v210;
    v433.origin.y = v212;
    v433.size.width = v214;
    v433.size.height = v216;
    if (CGRectIsNull(v433) || CGRectIsNull(v410))
    {
      v217 = *(MEMORY[0x277CBF2C0] + 16);
      *&v411.a = *MEMORY[0x277CBF2C0];
      *&v411.c = v217;
      *&v411.tx = *(MEMORY[0x277CBF2C0] + 32);
      v218 = *(MEMORY[0x277CBF398] + 16);
      v413 = *MEMORY[0x277CBF398];
      v414 = v218;
      v412 = *MEMORY[0x277CBF3A8];
    }

    else
    {
      v408 = v411;
      CGAffineTransformTranslate(&v409, &v408, v210, v212);
      v411 = v409;
      TSUSubtractPoints();
      TSURectWithOriginAndSize();
      *&v413 = v219;
      *(&v413 + 1) = v220;
      *&v414 = v221;
      *(&v414 + 1) = v222;
      *&v412 = v214;
      *(&v412 + 1) = v216;
    }
  }

  sub_276298934(&v425, &v411);
  sub_276298A3C(&v422, &v412);
  sub_27627D7DC(&v419, &v413);
  objc_msgSend_addObject_(v406, v223, v224, v225, v226, v168);
  objc_msgSend_addObject_(v405, v227, v228, v229, v230, v167);
  *&v409.a = 2;
  sub_276299D70(&v416, &v409);
  sub_276297C38(__p, v428);

  v42 = 1;
  if (v28)
  {
LABEL_56:
    v231 = *(MEMORY[0x277CBF398] + 16);
    v413 = *MEMORY[0x277CBF398];
    v414 = v231;
    v394 = objc_msgSend_objectValueForProperty_(lineCopy, v77, *&v413, *&v231, v78, 1219, v389);
    v236 = objc_msgSend_length(v394, v232, v233, v234, v235);
    v430.location = 0;
    v430.length = v236;
    v432.location = location;
    v432.length = range2;
    v237 = NSIntersectionRange(v430, v432);
    v241 = objc_msgSend_intValueForProperty_defaultValue_(lineCopy, v237.length, v238, v239, v240, 1220, 0);
    v390 = v236;
    v402 = objc_msgSend_paragraphStyleAtIndex_(v404, v242, v243, v244, v245, v241);
    v412 = 0uLL;
    v250 = objc_msgSend_sharedText(TSCHText, v246, v247, v248, v249);
    objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v250, v251, v252, v253, v254, v394, v402, &v413);
    *&v412 = v255;
    *(&v412 + 1) = v256;

    if (v396 == 2)
    {
      v261 = objc_msgSend_root(v407, v257, v258, v259, v260);
      v266 = objc_msgSend_chartAreaLayoutItem(v261, v262, v263, v264, v265);
      objc_msgSend_chartBodyLayoutRect(v266, v267, v268, v269, v270);
      v272 = v271;

      if (v272 != v66)
      {
        v277 = MEMORY[0x277D81150];
        v278 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v273, v274, v275, v276, "[TSCHElementBuilder(TSCHReferenceLines) p_countOfReferenceLineLabelsForReferenceLine:forRefLineLabelsLayout:substringRange:outNewTransforms:outNewElementSizes:outNewClipRects:outNewParagraphStyles:outNewStrings:outNewLabelTypes:includeOutsideChartBodyBounds:outOutsideChartBodyBounds:]");
        v283 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v279, v280, v281, v282, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder_ReferenceLines.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v277, v284, v285, v286, v287, v278, v283, 578, 0, "label frame must be the same height as chart body frame");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v288, v289, v290, v291);
      }

      v292 = sub_27634600C(1, 0.0, v37, v62, v395, v64, v66, 0.0);
      v294 = v394;
      if (v403)
      {
        v295 = v293 - *(&v412 + 1);
      }

      else
      {
        v295 = v293 + *(&v412 + 1) * -0.5;
      }
    }

    else
    {
      v296 = objc_msgSend_root(v407, v257, v258, v259, v260);
      v301 = objc_msgSend_chartAreaLayoutItem(v296, v297, v298, v299, v300);
      objc_msgSend_chartBodyLayoutRect(v301, v302, v303, v304, v305);
      v307 = v306;

      if (v307 != v64)
      {
        v312 = MEMORY[0x277D81150];
        v313 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v308, v309, v310, v311, "[TSCHElementBuilder(TSCHReferenceLines) p_countOfReferenceLineLabelsForReferenceLine:forRefLineLabelsLayout:substringRange:outNewTransforms:outNewElementSizes:outNewClipRects:outNewParagraphStyles:outNewStrings:outNewLabelTypes:includeOutsideChartBodyBounds:outOutsideChartBodyBounds:]");
        v318 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v314, v315, v316, v317, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder_ReferenceLines.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v312, v319, v320, v321, v322, v313, v318, 587, 0, "label frame must be the same width as chart body frame");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v323, v324, v325, v326);
      }

      v327 = sub_27634600C(0, v37, 1.0, v62, v395, v64, v66, 0.0);
      v292 = v327 + *&v412 * -0.5;
      v295 = v328 - *(&v412 + 1);
      if (v403)
      {
        v295 = v295 - v391;
      }

      v294 = v394;
    }

    memset(&v411, 0, sizeof(v411));
    CGAffineTransformMakeTranslation(&v411, v292, v295);
    if (v237.location || v390 != v237.length)
    {
      v331 = MEMORY[0x277CBF398];
      v332 = *(MEMORY[0x277CBF398] + 16);
      v410.origin = *MEMORY[0x277CBF398];
      v410.size = v332;
      v333 = objc_msgSend_sharedText(TSCHText, v329, v410.origin.x, v332.width, v330);
      objc_msgSend_frameForRange_inText_paragraphStyle_outErasableFrame_(v333, v334, v335, v336, v337, v237.location, v237.length, v394, v402, &v410);
      v339 = v338;
      v341 = v340;
      v343 = v342;
      v345 = v344;

      v434.origin.x = v339;
      v434.origin.y = v341;
      v434.size.width = v343;
      v434.size.height = v345;
      if (CGRectIsNull(v434) || CGRectIsNull(v410))
      {
        v346 = *(MEMORY[0x277CBF2C0] + 16);
        *&v411.a = *MEMORY[0x277CBF2C0];
        *&v411.c = v346;
        *&v411.tx = *(MEMORY[0x277CBF2C0] + 32);
        v347 = v331[1];
        v413 = *v331;
        v414 = v347;
        v412 = *MEMORY[0x277CBF3A8];
      }

      else
      {
        v408 = v411;
        CGAffineTransformTranslate(&v409, &v408, v339, v341);
        v411 = v409;
        TSUSubtractPoints();
        TSURectWithOriginAndSize();
        *&v413 = v348;
        *(&v413 + 1) = v349;
        *&v414 = v350;
        *(&v414 + 1) = v351;
        *&v412 = v343;
        *(&v412 + 1) = v345;
      }

      v294 = v394;
    }

    sub_276298934(&v425, &v411);
    sub_276298A3C(&v422, &v412);
    sub_27627D7DC(&v419, &v413);
    objc_msgSend_addObject_(v406, v352, v353, v354, v355, v402);
    objc_msgSend_addObject_(v405, v356, v357, v358, v359, v294);
    *&v409.a = 1;
    sub_276299D70(&v416, &v409);
    sub_276297C38(__p, v428);
    ++v42;
  }

LABEL_75:
  if (transforms)
  {
    *transforms = malloc_type_calloc(0x30uLL, v42, 0x1000040EED21634uLL);
    if (v42)
    {
      v360 = 0;
      v361 = v425;
      do
      {
        v362 = &(*transforms)[v360];
        v363 = *&v361[v360 * 48];
        v364 = *&v361[v360 * 48 + 32];
        *&v362->c = *&v361[v360 * 48 + 16];
        *&v362->tx = v364;
        *&v362->a = v363;
        ++v360;
      }

      while (v42 != v360);
    }
  }

  if (!sizes)
  {
    goto LABEL_83;
  }

  *sizes = malloc_type_calloc(0x10uLL, v42, 0x1000040451B5BE8uLL);
  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      (*sizes)[i] = *&v422[i * 16];
    }

LABEL_83:
    if (!rects)
    {
      goto LABEL_87;
    }

    if (v42)
    {
      v366 = malloc_type_calloc(0x20uLL, v42, 0x1000040E0EAB150uLL);
      v367 = 0;
      *rects = v366;
      v368 = v419;
      do
      {
        v369 = &(*rects)[v367];
        v370 = *&v368[v367 * 32 + 16];
        v369->origin = *&v368[v367 * 32];
        v369->size = v370;
        ++v367;
      }

      while (v42 != v367);
LABEL_87:
      v371 = v42 != 0;
      if (strings && v42)
      {
        v372 = v405;
        *strings = objc_msgSend_subarrayWithRange_(v372, v373, v374, v375, v376, 0, v42);
        v371 = 1;
        if (!styles)
        {
          goto LABEL_96;
        }

LABEL_94:
        if (v371)
        {
          v377 = v406;
          *styles = objc_msgSend_subarrayWithRange_(v377, v378, v379, v380, v381, 0, v42);
        }

        goto LABEL_96;
      }

LABEL_93:
      if (!styles)
      {
        goto LABEL_96;
      }

      goto LABEL_94;
    }

LABEL_92:
    v371 = 0;
    *rects = 0;
    goto LABEL_93;
  }

  if (rects)
  {
    goto LABEL_92;
  }

  v371 = 0;
  if (styles)
  {
    goto LABEL_94;
  }

LABEL_96:
  if (types)
  {
    v382 = malloc_type_calloc(8uLL, v42, 0x100004000313F17uLL);
    *types = v382;
    if (v42)
    {
      v383 = v416;
      v384 = v42;
      do
      {
        v385 = *v383++;
        *v382++ = v385;
        --v384;
      }

      while (v384);
    }
  }

  if (bodyBounds)
  {
    v386 = malloc_type_calloc(1uLL, v42, 0x100004077774924uLL);
    *bodyBounds = v386;
    if (v42)
    {
      v387 = __p[0];
      v388 = vmovn_s64(vcgeq_u64(vdupq_n_s64(v42 - 1), xmmword_2764D6710));
      if (v388.i8[0])
      {
        *v386 = *__p[0] & 1;
      }

      if (v388.i8[4])
      {
        v386[1] = (*v387 & 2) != 0;
      }
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v416)
  {
    v417 = v416;
    operator delete(v416);
  }

  if (v419)
  {
    v420 = v419;
    operator delete(v419);
  }

  if (v422)
  {
    v423 = v422;
    operator delete(v422);
  }

  if (v425)
  {
    v426 = v425;
    operator delete(v425);
  }

LABEL_32:

  return v42;
}

- (unint64_t)countOfElementsInSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewElementBounds:(CGRect *)bounds outNewClipRects:(CGRect *)rects outNewElementPaths:(const CGPath *)paths outSelectionKnobLocations:(id *)locations forHighlightPath:(BOOL)self0
{
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

  return 0;
}

- (unint64_t)countOfLabelsForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings
{
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

  if (strings)
  {
    *strings = 0;
  }

  return 0;
}

- (unint64_t)countOfSummaryLabelsForGroups:(id)groups forBodyLayout:(id)layout outNewTransforms:(CGAffineTransform *)transforms outNewElementSizes:(CGSize *)sizes outNewClipRects:(CGRect *)rects outNewStrings:(id *)strings
{
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

  if (strings)
  {
    *strings = 0;
  }

  return 0;
}

- (unint64_t)countOfCalloutLinesForSeries:(id)series forGroups:(id)groups forBodyLayout:(id)layout outNewClipRects:(CGRect *)rects
{
  if (rects)
  {
    v6 = *(MEMORY[0x277CBF398] + 16);
    rects->origin = *MEMORY[0x277CBF398];
    rects->size = v6;
  }

  return 0;
}

- (unint64_t)countOfErrorBarsInSeries:(id)series forGroups:(id)groups forAxisID:(id)d forBodyLayout:(id)layout outClipRect:(CGRect *)rect outNewErrorBarDescriptors:(id *)descriptors
{
  if (rect)
  {
    v8 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v8;
  }

  if (descriptors)
  {
    *descriptors = 0;
  }

  return 0;
}

- (void)p_trendlineInfoForSeries:(id)series forBodyLayout:(id)layout outVertical:(BOOL *)vertical outOffsetInBody:(double *)body
{
  if (vertical)
  {
    *vertical = 1;
  }

  if (body)
  {
    *body = 0.0;
  }
}

- (void)trendlineElementForSeries:(id)series forBodyLayout:(id)layout outElementBounds:(CGRect *)bounds outElementClipRect:(CGRect *)rect outElementPath:(id *)path
{
  seriesCopy = series;
  layoutCopy = layout;
  v18 = layoutCopy;
  if (bounds)
  {
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 16);
    bounds->origin = *MEMORY[0x277CBF398];
    bounds->size = v16;
  }

  if (rect)
  {
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 16);
    rect->origin = *MEMORY[0x277CBF398];
    rect->size = v16;
  }

  if (path)
  {
    *path = 0;
  }

  if (!seriesCopy)
  {
    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, *&v15, v16.width, v17, "[TSCHElementBuilder trendlineElementForSeries:forBodyLayout:outElementBounds:outElementClipRect:outElementPath:]");
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 198, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
    if (v18)
    {
      goto LABEL_35;
    }

LABEL_34:
    v111 = MEMORY[0x277D81150];
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, *&v15, v16.width, v17, "[TSCHElementBuilder trendlineElementForSeries:forBodyLayout:outElementBounds:outElementClipRect:outElementPath:]");
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v118, v119, v120, v121, v112, v117, 199, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
    goto LABEL_35;
  }

  if (!layoutCopy)
  {
    goto LABEL_34;
  }

  v19 = objc_msgSend_trendLineData(seriesCopy, v14, *&v15, v16.width, v17);
  v24 = v19;
  if (v19 && objc_msgSend_showTrendLine(v19, v20, v21, v22, v23))
  {
    v29 = objc_msgSend_objectValueForProperty_(seriesCopy, v25, v26, v27, v28, 1202);
    v34 = v29;
    if (v29 && objc_msgSend_shouldRender(v29, v30, v31, v32, v33))
    {
      v39 = *MEMORY[0x277CBF398];
      v40 = *(MEMORY[0x277CBF398] + 8);
      v41 = *(MEMORY[0x277CBF398] + 16);
      v42 = *(MEMORY[0x277CBF398] + 24);
      v127 = 1;
      v126 = 0;
      objc_msgSend_p_trendlineInfoForSeries_forBodyLayout_outVertical_outOffsetInBody_(self, v35, v36, v37, v38, seriesCopy, v18, &v127, &v126);
      if (rect || bounds || path)
      {
        objc_msgSend_rootedLayoutRect(v18, v43, v44, v45, v46);
        v51 = objc_msgSend_trendLinePathForChartRect_offsetInBody_vertical_(v24, v47, v48, v49, v50, v127);
        v56 = v51;
        if (v51 && (objc_msgSend_isEmpty(v51, v52, v53, v54, v55) & 1) == 0)
        {
          objc_msgSend_bounds(v56, v57, v58, v59, v60);
          v39 = v61;
          v40 = v62;
          v41 = v63;
          v42 = v64;
        }

        if (path)
        {
          v65 = v56;
          *path = v56;
        }
      }

      v128.origin.x = v39;
      v128.origin.y = v40;
      v128.size.width = v41;
      v128.size.height = v42;
      if (!CGRectIsNull(v128))
      {
        if (bounds)
        {
          bounds->origin.x = v39;
          bounds->origin.y = v40;
          bounds->size.width = v41;
          bounds->size.height = v42;
        }

        if (rect)
        {
          v70 = objc_msgSend_objectValueForProperty_(seriesCopy, v66, v67, v68, v69, 1198);
          shouldRender = objc_msgSend_shouldRender(v34, v71, v72, v73, v74);
          v79 = 0.0;
          if (shouldRender)
          {
            objc_msgSend_width(v34, v76, 0.0, v77, v78);
          }

          v80 = -v79;
          v129.origin.x = v39;
          v129.origin.y = v40;
          v129.size.width = v41;
          v129.size.height = v42;
          v130 = CGRectInset(v129, v80, v80);
          x = v130.origin.x;
          y = v130.origin.y;
          width = v130.size.width;
          height = v130.size.height;
          hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v85, v130.origin.x, v130.origin.y, v130.size.width, v70);
          v88 = x;
          v89 = y;
          v90 = width;
          v91 = height;
          if (hasShadow)
          {
            objc_msgSend_shadowBoundsForRect_(v70, v87, x, y, width, height, x, y, width, height);
            v88 = v92;
            v89 = v93;
            v90 = v94;
            v91 = v95;
          }

          v131.origin.x = x;
          v131.origin.y = y;
          v131.size.width = width;
          v131.size.height = height;
          *rect = CGRectUnion(v131, *&v88);
        }
      }
    }
  }

LABEL_35:
}

- (CGAffineTransform)p_transformForRenderingTrendlineTextNotR2:(SEL)r2 forSeries:(BOOL)series forAreaLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outParagraphStyle:(CGRect *)style outString:(id *)string
{
  seriesCopy = series;
  layoutCopy = layout;
  sizeCopy = size;
  v21 = sizeCopy;
  if (layoutCopy)
  {
    if (sizeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHElementBuilder p_transformForRenderingTrendlineTextNotR2:forSeries:forAreaLayout:outElementSize:outClipRect:outParagraphStyle:outString:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 256, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  v51 = MEMORY[0x277D81150];
  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHElementBuilder p_transformForRenderingTrendlineTextNotR2:forSeries:forAreaLayout:outElementSize:outClipRect:outParagraphStyle:outString:]");
  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v59, v60, v61, v52, v57, 257, 0, "invalid nil value for '%{public}s'", "areaLayout");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
LABEL_3:
  v22 = MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v23;
  v24 = *(v22 + 32);
  *&retstr->tx = v24;
  if (rect)
  {
    v24 = *MEMORY[0x277CBF3A8];
    *rect = *MEMORY[0x277CBF3A8];
  }

  if (style)
  {
    v24 = *MEMORY[0x277CBF398];
    v23 = *(MEMORY[0x277CBF398] + 16);
    style->origin = *MEMORY[0x277CBF398];
    style->size = v23;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (string)
  {
    *string = 0;
  }

  if (layoutCopy && v21)
  {
    v25 = objc_msgSend_trendLineData(layoutCopy, v17, *&v24, v23.width, v20);
    v30 = v25;
    if (v25)
    {
      if (seriesCopy)
      {
        if ((objc_msgSend_showEquation(v25, v26, v27, v28, v29) & 1) == 0)
        {
          goto LABEL_50;
        }

        v35 = objc_msgSend_newEquationAttributedString(v30, v31, v32, v33, v34);
        if (!v35)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if ((objc_msgSend_showRSquared(v25, v26, v27, v28, v29) & 1) == 0)
        {
          goto LABEL_50;
        }

        v70 = objc_msgSend_rSquaredText(v30, v66, v67, v68, v69);
        v35 = CFAttributedStringCreate(0, v70, 0);

        if (!v35)
        {
          goto LABEL_50;
        }
      }

      if (CFAttributedStringGetLength(v35))
      {
        cf = v35;
        if (seriesCopy)
        {
          v75 = objc_msgSend_rSquaredText(v30, v71, v72, v73, v74);
          v146 = CFAttributedStringCreate(0, v75, 0);

          v80 = 1205;
        }

        else
        {
          v146 = objc_msgSend_newEquationAttributedString(v30, v71, v72, v73, v74);
          v80 = 1207;
        }

        v148 = v80;
        objc_msgSend_rootedLayoutRect(v21, v76, v77, v78, v79);
        v82 = v81;
        rect = v83;
        v85 = v84;
        v87 = v86;
        v157[0] = 1;
        objc_msgSend_p_trendlineInfoForSeries_forBodyLayout_outVertical_outOffsetInBody_(self, v88, v81, v83, v84, layoutCopy, 0, v157, 0);
        v153 = objc_msgSend_sharedText(TSCHText, v89, v90, v91, v92);
        v97 = objc_msgSend_model(layoutCopy, v93, v94, v95, v96);
        v102 = objc_msgSend_chartInfo(v97, v98, v99, v100, v101);

        v107 = objc_msgSend_intValueForProperty_defaultValue_(layoutCopy, v103, v104, v105, v106, v148, 0);
        v149 = v102;
        v112 = objc_msgSend_paragraphStyleAtIndex_(v102, v108, v109, v110, v111, v107);
        v113 = *(MEMORY[0x277CBF398] + 16);
        v155 = *MEMORY[0x277CBF398];
        v156 = v113;
        objc_msgSend_measureAttributedString_paragraphStyle_styleProvidingSource_outErasableFrame_(v153, v114, v155.x, v113.width, v115, cf, v112, 0, &v155);
        v120 = v117;
        v121 = v118;
        v147 = v112;
        if (v146)
        {
          objc_msgSend_measureAttributedString_paragraphStyle_styleProvidingSource_outErasableFrame_(v153, v116, v117, v118, v119, v146, v112, 0, 0);
          if (v121 >= v122)
          {
            v121 = v122;
          }

          CFRelease(v146);
        }

        if (seriesCopy)
        {
          v123 = 1191;
        }

        else
        {
          v123 = 1196;
        }

        if (seriesCopy)
        {
          v124 = 1192;
        }

        else
        {
          v124 = 1197;
        }

        LODWORD(v117) = -1.0;
        objc_msgSend_floatValueForProperty_defaultValue_(layoutCopy, v116, v117, v118, v119, v123);
        v126 = v125;
        v127 = v125;
        LODWORD(v128) = -1.0;
        objc_msgSend_floatValueForProperty_defaultValue_(layoutCopy, v129, v128, v130, v131, v124);
        if ((*&v127 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v134 = *&v133, v140 = COERCE__INT64(fabs(*&v133)) > 0x7FEFFFFFFFFFFFFFLL, v126 < 0.0) || v140 || *&v133 < 0.0)
        {
          objc_msgSend_seriesIndex(layoutCopy, v132, v133, v134, v135);
          objc_msgSend_chartBodyLayoutRect(v21, v136, v137, v138, v139);
          v158.origin.x = v82;
          v158.origin.y = rect;
          v158.size.width = v85;
          v158.size.height = v87;
          CGRectGetMaxY(v158);
        }

        TSURectWithCenterAndSize();
        CGAffineTransformMakeTranslation(retstr, v141, v142);
        if (rect)
        {
          rect->width = v120;
          rect->height = v121;
        }

        if (a10)
        {
          *a10 = cf;
          if (!style)
          {
LABEL_47:
            if (string)
            {
              v144 = v147;
              *string = v147;
            }

            goto LABEL_50;
          }
        }

        else
        {
          CFRelease(cf);
          if (!style)
          {
            goto LABEL_47;
          }
        }

        v143 = v156;
        style->origin = v155;
        style->size = v143;
        goto LABEL_47;
      }

      CFRelease(v35);
    }

LABEL_50:
  }

  return result;
}

- (CGAffineTransform)transformForRenderingR2TextForSeries:(SEL)series forAreaLayout:(id)layout outElementSize:(id)size outClipRect:(CGSize *)rect outParagraphStyle:(CGRect *)style outString:(id *)string
{
  layoutCopy = layout;
  sizeCopy = size;
  if (a9)
  {
    *a9 = 0;
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    aStr = 0;
    objc_msgSend_p_transformForRenderingTrendlineTextNotR2_forSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(self, v17, 0.0, v19, v20, 0, layoutCopy, sizeCopy, rect, style, string, &aStr);
    String = aStr;
    if (aStr)
    {
      String = CFAttributedStringGetString(aStr);
    }

    *a9 = String;
  }

  else
  {
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    aStr = 0;
    objc_msgSend_p_transformForRenderingTrendlineTextNotR2_forSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(self, v17, 0.0, v19, v20, 0, layoutCopy, sizeCopy, rect, style, string, &aStr);
  }

  if (aStr)
  {
    CFRelease(aStr);
  }

  return result;
}

+ (CGRect)p_chartLayoutSpaceClipRectUnionForElementsDrawnByRenderState:(id)state returningItemCount:(unint64_t *)count
{
  v192 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v184 = 0;
  v185 = &v184;
  v187 = &unk_27657B92B;
  v186 = 0x4010000000;
  v147 = *(MEMORY[0x277CBF398] + 16);
  v148 = *MEMORY[0x277CBF398];
  v188 = *MEMORY[0x277CBF398];
  v189 = v147;
  v180 = 0;
  v181 = &v180;
  v182 = 0x2020000000;
  v183 = 0;
  v141 = stateCopy;
  v140 = objc_msgSend_chartLayout(stateCopy, v6, COERCE_DOUBLE(0x2020000000), v147.width, v7);
  if (!v140)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "+[TSCHElementBuilder p_chartLayoutSpaceClipRectUnionForElementsDrawnByRenderState:returningItemCount:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 442, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v154 = objc_msgSend_model(v140, v8, v9, v10, v11);
  objc_opt_class();
  objc_opt_class();
  v27 = TSUDynamicCast();
  v32 = objc_msgSend_p_layoutTree(v27, v28, v29, v30, v31);
  v139 = TSUDynamicCast();

  v149 = objc_msgSend_chartAreaLayoutItem(v139, v33, v34, v35, v36);
  objc_opt_class();
  v37 = TSUDynamicCast();
  v42 = objc_msgSend_bodyLayoutItem(v37, v38, v39, v40, v41);

  if (v42 && ((objc_msgSend_renderElements(v141, v43, v44, v45, v46) & 1) != 0 || objc_msgSend_renderLabels(v141, v43, v44, v45, v46)))
  {
    v47 = objc_msgSend_renderSeriesIndexSet(v141, v43, v44, v45, v46);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = sub_2763469D0;
    v174[3] = &unk_27A6B9CB8;
    v175 = v154;
    v176 = v141;
    v177 = v42;
    v178 = &v184;
    v179 = &v180;
    objc_msgSend_enumerateIndexesUsingBlock_(v47, v48, v49, v50, v51, v174);
  }

  if (objc_msgSend_renderReferenceLines(v141, v43, v44, v45, v46))
  {
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v56 = objc_msgSend_seriesList(v154, v52, 0.0, v54, v55);
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, v58, v59, v60, &v170, v191, 16);
    if (v62)
    {
      countCopy = count;
      v145 = *v171;
      v142 = v56;
      v143 = v42;
      do
      {
        v66 = 0;
        v146 = v62;
        do
        {
          if (*v171 != v145)
          {
            objc_enumerationMutation(v56);
          }

          v67 = objc_msgSend_seriesType(*(*(&v170 + 1) + 8 * v66), v61, v63, v64, v65);
          v72 = objc_msgSend_elementBuilder(v67, v68, v69, v70, v71);

          v169.origin = v148;
          v169.size = v147;
          v75 = objc_msgSend_model(v42, v73, v147.width, v148.x, v74);
          LOBYTE(v137) = 0;
          v80 = objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v72, v76, v77, v78, v79, 0, v75, v42, &v169, 0, 0, 0, v137, 0);

          if (v80)
          {
            v193 = CGRectUnion(v185[1], v169);
            v185[1] = v193;
          }

          v181[3] += v80;
          objc_opt_class();
          v81 = TSUDynamicCast();
          v86 = objc_msgSend_rightRefLineLabels(v81, v82, v83, v84, v85);
          v91 = objc_msgSend_topRefLineLabels(v81, v87, v88, v89, v90);
          v96 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v92, v93, v94, v95, 2);
          v101 = v96;
          if (v86)
          {
            objc_msgSend_addObject_(v96, v97, v98, v99, v100, v86);
          }

          if (v91)
          {
            objc_msgSend_addObject_(v101, v97, v98, v99, v100, v91);
          }

          v151 = v86;
          v152 = v91;
          v150 = v81;
          v153 = v66;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v102 = v101;
          v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v103, v104, v105, v106, &v165, v190, 16);
          if (v108)
          {
            v111 = *v166;
            do
            {
              for (i = 0; i != v108; ++i)
              {
                if (*v166 != v111)
                {
                  objc_enumerationMutation(v102);
                }

                v113 = *(*(&v165 + 1) + 8 * i);
                v163 = 0;
                v164 = 0;
                LOBYTE(v138) = 0;
                v114 = objc_msgSend_countOfReferenceLineLabelsForAxisID_model_forRefLineLabelsLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v72, v107, 0.0, v109, v110, 0, v154, v113, &v164, 0, &v163, 0, 0, 0, 0, v138, 0);
                v115 = v163;
                if (v163 && v114)
                {
                  v116 = 0;
                  v117 = 0;
                  v118 = v185;
                  v119 = 1;
                  do
                  {
                    v194 = *&v115[v116];
                    v120 = *(v164 + v117);
                    v121 = *(v164 + v117 + 32);
                    *&v162.c = *(v164 + v117 + 16);
                    *&v162.tx = v121;
                    *&v162.a = v120;
                    v197 = CGRectApplyAffineTransform(v194, &v162);
                    v195 = CGRectUnion(v118[1], v197);
                    v118 = v185;
                    v185[1] = v195;
                    v115 = v163;
                    if (!v163)
                    {
                      break;
                    }

                    v117 += 48;
                    v116 += 32;
                  }

                  while (v119++ < v114);
                }

                v181[3] += v114;
                free(v115);
                free(v164);
              }

              v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v107, v123, v109, v110, &v165, v190, 16);
            }

            while (v108);
          }

          v42 = v143;
          count = countCopy;
          v56 = v142;

          v66 = v153 + 1;
        }

        while (v153 + 1 != v146);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v61, v63, v64, v65, &v170, v191, 16);
      }

      while (v62);
    }
  }

  if (v149)
  {
    v124 = objc_msgSend_renderSeriesIndexSet(v141, v52, v53, v54, v55);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_276346E90;
    v155[3] = &unk_27A6B9CE0;
    v156 = v141;
    v157 = v154;
    v158 = v42;
    v160 = &v180;
    v161 = &v184;
    v159 = v149;
    objc_msgSend_enumerateIndexesUsingBlock_(v124, v125, v126, v127, v128, v155);
  }

  if (count)
  {
    *count = v181[3];
  }

  x = v185[1].origin.x;
  y = v185[1].origin.y;
  width = v185[1].size.width;
  height = v185[1].size.height;

  _Block_object_dispose(&v180, 8);
  _Block_object_dispose(&v184, 8);

  v133 = x;
  v134 = y;
  v135 = width;
  v136 = height;
  result.size.height = v136;
  result.size.width = v135;
  result.origin.y = v134;
  result.origin.x = v133;
  return result;
}

+ (CGRect)clipRectForElementsDrawnByRenderState:(id)state
{
  stateCopy = state;
  v10 = objc_msgSend_chartLayout(stateCopy, v5, v6, v7, v8);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCHElementBuilder clipRectForElementsDrawnByRenderState:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 667, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_outerShadowFrame(v10, v9, v11, v12, v13);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v64 = 0;
  objc_msgSend_p_chartLayoutSpaceClipRectUnionForElementsDrawnByRenderState_returningItemCount_(self, v37, v29, v31, v33, stateCopy, &v64);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v65.origin.x = v39;
  v65.origin.y = v41;
  v65.size.width = v43;
  v65.size.height = v45;
  IsNull = CGRectIsNull(v65);
  v48 = v64 != 0;
  if (IsNull && v48)
  {
    v49 = v30;
  }

  else
  {
    v49 = v39;
  }

  if (IsNull && v48)
  {
    v50 = v32;
  }

  else
  {
    v50 = v41;
  }

  if (IsNull && v48)
  {
    v51 = v34;
  }

  else
  {
    v51 = v43;
  }

  if (IsNull && v48)
  {
    objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v10, v47, v49, v50, v51, v36);
  }

  else
  {
    objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v10, v47, v49, v50, v51, v45);
  }

  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;

  v60 = v56;
  v61 = v57;
  v62 = v58;
  v63 = v59;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v60;
  return result;
}

+ (CGRect)elementsRectForElementsDrawnByRenderState:(id)state
{
  stateCopy = state;
  objc_msgSend_p_chartLayoutSpaceClipRectUnionForElementsDrawnByRenderState_returningItemCount_(self, v5, v6, v7, v8, stateCopy, 0);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = objc_msgSend_chartLayout(stateCopy, v17, v9, v11, v13);

  if (!v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "+[TSCHElementBuilder elementsRectForElementsDrawnByRenderState:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilder.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 681, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  objc_msgSend_convertChartLayoutSpaceRectToNaturalSpaceRect_(v18, v19, v10, v12, v14, v16);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = v39;
  v47 = v41;
  v48 = v43;
  v49 = v45;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size offset:(double)offset
{
  v6 = rect.origin.y + (rect.size.height - size.height) * 0.5;
  v7 = rect.origin.x + (rect.size.width - size.width) * 0.5;
  v8 = rect.origin.y + offset;
  v9 = size.height + offset;
  if ((position & 2) != 0)
  {
    v8 = rect.origin.y - v9;
  }

  if ((position & 4) != 0)
  {
    v6 = v8;
  }

  v10 = rect.origin.y + rect.size.height;
  v11 = v10 - v9;
  v12 = v10 + offset;
  if ((position & 2) == 0)
  {
    v12 = v11;
  }

  if ((position & 8) == 0)
  {
    v12 = v6;
  }

  v13 = rect.origin.x + offset;
  v14 = size.width + offset;
  if ((position & 2) != 0)
  {
    v13 = rect.origin.x - v14;
  }

  if ((position & 0x10) == 0)
  {
    v13 = v7;
  }

  v15 = rect.origin.x + rect.size.width;
  v16 = v15 - v14;
  v17 = v15 + offset;
  if ((position & 2) == 0)
  {
    v17 = v16;
  }

  if ((position & 0x20) == 0)
  {
    v17 = v13;
  }

  result.y = v12;
  result.x = v17;
  return result;
}

- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size
{
  objc_msgSend_labelPointForPosition_rect_stringSize_offset_(self, a2, rect.origin.x, rect.origin.y, rect.size.width, *&position, rect.size.height, size.width, size.height, 2.0);
  result.y = v6;
  result.x = v5;
  return result;
}

- (unint64_t)countOfGridLinesInBody:(id)body forAxis:(id)axis minor:(BOOL)minor outNewLineDescriptors:(id *)descriptors
{
  minorCopy = minor;
  v193 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  axisCopy = axis;
  v15 = axisCopy;
  v16 = 0;
  if (!bodyCopy || !axisCopy)
  {
    goto LABEL_68;
  }

  if (minorCopy)
  {
    if (objc_msgSend_intValueForProperty_defaultValue_(axisCopy, v11, v12, v13, v14, 1057, 0))
    {
      objc_msgSend_objectValueForProperty_(v15, v17, v18, v19, v20, 1041);
      goto LABEL_8;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_68;
  }

  if (!objc_msgSend_intValueForProperty_defaultValue_(axisCopy, v11, v12, v13, v14, 1054, 0))
  {
    goto LABEL_11;
  }

  objc_msgSend_objectValueForProperty_(v15, v21, v22, v23, v24, 1038);
  v25 = LABEL_8:;
  shouldRender = objc_msgSend_shouldRender(v25, v26, v27, v28, v29);

  if (!shouldRender)
  {
    goto LABEL_11;
  }

  if (!minorCopy)
  {
    descriptorsCopy = descriptors;
    v45 = objc_msgSend_majorGridLocations(v15, v31, v32, v33, v34);
    v40 = objc_msgSend_mutableCopy(v45, v46, v47, v48, v49);

    v54 = objc_msgSend_model(v15, v50, v51, v52, v53);
    v59 = objc_msgSend_chartInfo(v54, v55, v56, v57, v58);
    v64 = objc_msgSend_intValueForProperty_defaultValue_(v59, v60, v61, v62, v63, 1112, 0);

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v68 = objc_msgSend_model(v15, v65, 0.0, v66, v67);
    v73 = objc_msgSend_axisList(v68, v69, v70, v71, v72);

    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, v75, v76, v77, &v188, v192, 16);
    if (v78)
    {
      v83 = v78;
      v179 = bodyCopy;
      v185 = 0;
      v84 = *v189;
      v186 = v64 != 0;
      v183 = v64 != 0;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v189 != v84)
          {
            objc_enumerationMutation(v73);
          }

          v86 = *(*(&v188 + 1) + 8 * i);
          objc_msgSend_interceptForAxis_(v15, v79, v80, v81, v82, v86);
          v88 = v87;
          objc_msgSend_min(v15, v89, v87, v90, v91);
          if (v88 > v80)
          {
            objc_msgSend_max(v15, v79, v80, v81, v82);
            if (v88 < v80)
            {
              v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v79, v88, v81, v82);
              if ((objc_msgSend_containsObject_(v40, v93, v94, v95, v96, v92) & 1) == 0)
              {
                objc_msgSend_addObject_(v40, v97, v98, v99, v100, v92);
                v185 = 1;
              }
            }
          }

          if (!v64 && objc_msgSend_intValueForProperty_defaultValue_(v86, v79, v80, v81, v82, 1049, 0))
          {
            v101 = v40;
            v102 = objc_msgSend_axisID(v86, v79, v80, v81, v82);
            v107 = objc_msgSend_ordinal(v102, v103, v104, v105, v106);

            if (v107)
            {
              v108 = objc_msgSend_axisID(v86, v79, v80, v81, v82);
              v113 = objc_msgSend_ordinal(v108, v109, v110, v111, v112) == 1;

              v186 |= v113;
            }

            else
            {
              v183 = 1;
            }

            v40 = v101;
          }
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v79, v80, v81, v82, &v188, v192, 16);
      }

      while (v83);

      if (v185)
      {
        objc_msgSend_sortUsingSelector_(v40, v41, v42, v43, v44, sel_compare_);
      }

      bodyCopy = v179;
      v114 = v186;
      if (!v183)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if (!v64)
      {
LABEL_41:
        descriptors = descriptorsCopy;
        goto LABEL_42;
      }

      v114 = 1;
    }

    if (objc_msgSend_count(v40, v41, v42, v43, v44))
    {
      objc_msgSend_removeObjectAtIndex_(v40, v41, v42, v43, v44, 0);
    }

LABEL_38:
    if ((v114 & 1) != 0 && objc_msgSend_count(v40, v41, v42, v43, v44))
    {
      objc_msgSend_removeLastObject(v40, v41, v42, v43, v44);
    }

    goto LABEL_41;
  }

  v35 = objc_msgSend_minorGridLocations(v15, v31, v32, v33, v34);
  v40 = objc_msgSend_mutableCopy(v35, v36, v37, v38, v39);

LABEL_42:
  if (objc_msgSend_count(v40, v41, v42, v43, v44))
  {
    objc_msgSend_rootedLayoutRect(bodyCopy, v115, v116, v117, v118);
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v128 = objc_msgSend_axisID(v15, v127, v119, v121, v123);
    v133 = objc_msgSend_type(v128, v129, v130, v131, v132);
    v16 = objc_msgSend_count(v40, v134, v135, v136, v137);
    if (descriptors)
    {
      v180 = bodyCopy;
      descriptorsCopy2 = descriptors;
      objc_msgSend_min(v15, v138, v139, v140, v141);
      v187 = v142;
      objc_msgSend_max(v15, v143, v142, v144, v145);
      v147 = v146;
      v184 = malloc_type_calloc(v16, 0x20uLL, 0x1000040E0EAB150uLL);
      if (v16)
      {
        v151 = 0;
        v152 = v187;
        v154 = v187 != v147 || v16 == 1;
        v155 = (v184 + 16);
        do
        {
          v156 = v40;
          v157 = objc_msgSend_objectAtIndexedSubscript_(v40, v148, v152, v149, v150, v151);
          objc_msgSend_doubleValue(v157, v158, v159, v160, v161);
          if ((*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            objc_msgSend_unitSpaceValueForDataSpaceValue_(v15, v162, v163, v164, v165);
            if ((*&v166 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v187 == v147)
              {
                v167 = 0.0;
              }

              else
              {
                v167 = v166;
              }

              if (!v154)
              {
                v167 = v151 / (v16 - 1);
              }

              v194.origin.x = v120;
              v194.origin.y = v122;
              v194.size.width = v124;
              v194.size.height = v126;
              MinX = CGRectGetMinX(v194);
              v169 = v120;
              v170 = v122;
              v171 = v124;
              v172 = v126;
              if (v133 == 2)
              {
                MinY = CGRectGetMinY(*&v169);
                v195.origin.x = v120;
                v195.origin.y = v122;
                v195.size.width = v124;
                v195.size.height = v126;
                v174 = MinY + CGRectGetHeight(v195);
                v196.origin.x = v120;
                v196.origin.y = v122;
                v196.size.width = v124;
                v196.size.height = v126;
                v175 = v174 - v167 * CGRectGetHeight(v196);
                v197.origin.x = v120;
                v197.origin.y = v122;
                v197.size.width = v124;
                v197.size.height = v126;
                v176 = MinX + CGRectGetWidth(v197);
                v177 = v175;
              }

              else
              {
                MinX = MinX + v167 * CGRectGetWidth(*&v169);
                v198.origin.x = v120;
                v198.origin.y = v122;
                v198.size.width = v124;
                v198.size.height = v126;
                v175 = CGRectGetMinY(v198);
                v199.origin.x = v120;
                v199.origin.y = v122;
                v199.size.width = v124;
                v199.size.height = v126;
                v177 = v175 + CGRectGetHeight(v199);
                v176 = MinX;
              }

              *(v155 - 2) = MinX;
              *(v155 - 1) = v175;
              *v155 = v176;
              v155[1] = v177;
            }
          }

          ++v151;
          v155 += 4;
          v40 = v156;
        }

        while (v16 != v151);
      }

      *descriptorsCopy2 = v184;
      bodyCopy = v180;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_68:
  return v16;
}

- (BOOL)hasAxisLineInBody:(id)body forAxis:(id)axis outTransform:(CGAffineTransform *)transform outLine:(id *)line
{
  v92 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  axisCopy = axis;
  v15 = axisCopy;
  v16 = 0;
  if (bodyCopy && axisCopy)
  {
    v17 = objc_msgSend_model(axisCopy, v11, v12, v13, v14);
    v22 = objc_msgSend_chartInfo(v17, v18, v19, v20, v21);
    v27 = objc_msgSend_intValueForProperty_defaultValue_(v22, v23, v24, v25, v26, 1112, 0);

    if (v27 || objc_msgSend_intValueForProperty_defaultValue_(v15, v28, v29, v30, v31, 1049, 0))
    {
      v32 = objc_msgSend_model(v15, v28, v29, v30, v31);
      v37 = objc_msgSend_chartInfo(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_objectValueForProperty_(v37, v38, v39, v40, v41, 1080);

      if (!objc_msgSend_shouldRender(v42, v43, v44, v45, v46))
      {
        v16 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v51 = objc_msgSend_axisID(v15, v47, v48, v49, v50);
      v56 = objc_msgSend_type(v51, v52, v53, v54, v55);
      v61 = objc_msgSend_ordinal(v51, v57, v58, v59, v60);
      if (v56 != 1 || v61)
      {
        if (v56 == 1 && v61 == 1)
        {
          v66 = 2;
        }

        else if (v56 != 2 || v61)
        {
          v16 = 0;
          if (v56 != 2 || v61 != 1)
          {
            goto LABEL_32;
          }

          v66 = 3;
        }

        else
        {
          v66 = 1;
        }
      }

      else
      {
        v66 = 4;
      }

      v16 = 1;
      if (!transform || !line)
      {
LABEL_32:

        goto LABEL_33;
      }

      objc_msgSend_rootedLayoutRect(bodyCopy, v62, v63, v64, v65);
      v70 = v67;
      v72 = v71;
      v73 = v68;
      v74 = v69;
      v75 = *(MEMORY[0x277CBF2C0] + 16);
      *&v86.a = *MEMORY[0x277CBF2C0];
      *&v86.c = v75;
      *&v86.tx = *(MEMORY[0x277CBF2C0] + 32);
      v76 = v72;
      if (v66 > 2)
      {
        if (v66 != 3)
        {
          MinX = CGRectGetMinX(*&v67);
          v99.origin.x = v70;
          v99.origin.y = v72;
          v99.size.width = v73;
          v99.size.height = v74;
          MaxY = CGRectGetMaxY(v99);
          v100.origin.x = v70;
          v100.origin.y = v72;
          v100.size.width = v73;
          v100.size.height = v74;
          Width = CGRectGetWidth(v100);
          CGAffineTransformMakeTranslation(&v87, MinX, MaxY);
          sub_27628CF0C(&v87, 1, &v86);
          Height = 0.0;
          goto LABEL_31;
        }

        MinX = CGRectGetMaxX(*&v67);
        v95.origin.x = v70;
        v95.origin.y = v72;
        v95.size.width = v73;
        v95.size.height = v74;
        MaxY = CGRectGetMinY(v95);
        v96.origin.x = v70;
        v96.origin.y = v72;
        v96.size.width = v73;
        v96.size.height = v74;
        Height = CGRectGetHeight(v96);
        CGAffineTransformMakeRotation(&v87, 1.57079633);
        Width = 0.0;
        CGAffineTransformMakeTranslation(&v88, 0.0, 0.0);
        v79 = -1.0;
      }

      else
      {
        if (v66 != 1)
        {
          MinX = CGRectGetMinX(*&v67);
          v97.origin.x = v70;
          v97.origin.y = v72;
          v97.size.width = v73;
          v97.size.height = v74;
          MaxY = CGRectGetMinY(v97);
          v98.origin.x = v70;
          v98.origin.y = v72;
          v98.size.width = v73;
          v98.size.height = v74;
          Width = CGRectGetWidth(v98);
          CGAffineTransformMakeScale(&v87, 1.0, -1.0);
          Height = 0.0;
          CGAffineTransformMakeTranslation(&v88, 0.0, 0.0);
          CGAffineTransformMakeTranslation(&v89, MinX, MaxY);
          v80 = 3;
          goto LABEL_29;
        }

        MinX = CGRectGetMinX(*&v67);
        v93.origin.x = v70;
        v93.origin.y = v72;
        v93.size.width = v73;
        v93.size.height = v74;
        MaxY = CGRectGetMinY(v93);
        v94.origin.x = v70;
        v94.origin.y = v72;
        v94.size.width = v73;
        v94.size.height = v74;
        Height = CGRectGetHeight(v94);
        CGAffineTransformMakeRotation(&v87, 1.57079633);
        Width = 0.0;
        CGAffineTransformMakeTranslation(&v88, 0.0, 0.0);
        v79 = 1.0;
      }

      CGAffineTransformMakeScale(&v89, v79, -1.0);
      CGAffineTransformMakeTranslation(&v90, 0.0, Height);
      CGAffineTransformMakeTranslation(&v91, MinX, MaxY);
      v80 = 5;
LABEL_29:
      sub_27628CF0C(&v87, v80, &v86);
LABEL_31:
      v85 = v86;
      CGAffineTransformInvert(&v87, &v85);
      line->var0 = vaddq_f64(*&v87.tx, vmlaq_n_f64(vmulq_n_f64(*&v87.c, MaxY), *&v87.a, MinX));
      v85 = v86;
      CGAffineTransformInvert(&v87, &v85);
      line->var1 = vaddq_f64(*&v87.tx, vmlaq_n_f64(vmulq_n_f64(*&v87.c, Height + MaxY), *&v87.a, Width + MinX));
      v81 = *&v86.c;
      *&transform->a = *&v86.a;
      *&transform->c = v81;
      *&transform->tx = *&v86.tx;
      v16 = 1;
      goto LABEL_32;
    }

    v16 = 0;
  }

LABEL_34:

  return v16;
}

- (CGRect)p_strideTestingRectFromRect:(CGRect)rect withOffset:(double)offset isVertical:(BOOL)vertical
{
  if (vertical)
  {
    CGRectGetMidX(rect);
  }

  else
  {
    CGRectGetMidY(rect);
  }

  TSURectWithCenterAndSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)p_testIntersectionOfRect:(CGRect)rect againstSortedRects:(id)rects withInset:(double)inset isVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v49 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  dx = inset;
  v51 = CGRectInset(v50, inset, inset);
  v13 = v51.origin.x;
  v14 = v51.origin.y;
  v15 = v51.size.width;
  v16 = v51.size.height;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = objc_msgSend_reverseObjectEnumerator(rectsCopy, v17, 0.0, v51.origin.y, v51.size.width);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, &v44, v48, 16);
  if (v23)
  {
    v28 = v23;
    v29 = *v45;
LABEL_3:
    v30 = 0;
    while (1)
    {
      if (*v45 != v29)
      {
        objc_enumerationMutation(v18);
      }

      objc_msgSend_CGRectValue(*(*(&v44 + 1) + 8 * v30), v24, v25, v26, v27, *&MaxX);
      v53 = CGRectInset(v52, dx, dx);
      v31 = v53.origin.x;
      v32 = v53.origin.y;
      v33 = v53.size.width;
      v34 = v53.size.height;
      v35 = v13;
      v36 = v14;
      v37 = v15;
      v38 = v16;
      if (verticalCopy)
      {
        MaxX = CGRectGetMaxX(*&v35);
        v54.origin.x = v31;
        v54.origin.y = v32;
        v54.size.width = v33;
        v54.size.height = v34;
        MinX = CGRectGetMinX(v54);
      }

      else
      {
        MaxX = CGRectGetMaxY(*&v35);
        v55.origin.x = v31;
        v55.origin.y = v32;
        v55.size.width = v33;
        v55.size.height = v34;
        MinX = CGRectGetMinY(v55);
      }

      if (MaxX < MinX)
      {
        break;
      }

      v56.origin.x = v13;
      v56.origin.y = v14;
      v56.size.width = v15;
      v56.size.height = v16;
      v57.origin.x = v31;
      v57.origin.y = v32;
      v57.size.width = v33;
      v57.size.height = v34;
      if (CGRectIntersectsRect(v56, v57))
      {
        v40 = 0;
        goto LABEL_16;
      }

      if (v28 == ++v30)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, v25, v26, v27, &v44, v48, 16);
        v40 = 1;
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  v40 = 1;
LABEL_16:

  return v40;
}

- (void)p_insertRectValue:(id)value intoArray:(id)array isVertical:(BOOL)vertical showAll:(BOOL)all
{
  valueCopy = value;
  arrayCopy = array;
  v15 = objc_msgSend_count(arrayCopy, v11, v12, v13, v14);
  v20 = v15;
  if (!all && v15)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_276348208;
    v32[3] = &unk_27A6B9D00;
    verticalCopy = vertical;
    v21 = MEMORY[0x277C98B30](v32);
    v26 = objc_msgSend_lastObject(arrayCopy, v22, v23, v24, v25);
    v27 = (v21)[2](v21, valueCopy, v26);

    if (v27 != 1)
    {
      v20 = objc_msgSend_indexOfObject_inSortedRange_options_usingComparator_(arrayCopy, v28, v29, v30, v31, valueCopy, 0, v20, 1024, v21);
    }
  }

  objc_msgSend_insertObject_atIndex_(arrayCopy, v16, v17, v18, v19, valueCopy, v20);
}

@end
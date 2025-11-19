@interface TSWPDropCapAdornment
+ (CGRect)boundsOfMinimumCircleEnclosingPath:(id)a3;
+ (unint64_t)convertPointsToConvexHull:(CGPoint *)a3 count:(unint64_t)a4;
- (BOOL)characterFillShouldFillTextContainer;
- (BOOL)p_calculateMetrics;
- (CGPoint)glyphOffset;
- (CGPoint)glyphOriginIncludingOutdent;
- (CGPoint)origin;
- (CGPoint)originIncludingOutdent;
- (CGRect)bounds;
- (CGRect)characterFillRect;
- (CGRect)dropCapFrame;
- (CGRect)erasableBounds;
- (CGRect)glyphBounds;
- (CGRect)insetTextFrame;
- (CGRect)outermostPathRawBounds;
- (CGRect)p_imageBoundsIncludingShadow:(BOOL)a3;
- (CGRect)rectAllocatedForUnderline;
- (CGRect)textFrame;
- (CGRect)trailingCaretBounds;
- (CGSize)size;
- (NSString)debugDescription;
- (TSDFill)characterFill;
- (TSWPDropCapAdornment)initWithDropCapStyle:(id)a3 characterStyle:(id)a4 paragraphStyle:(id)a5 text:(id)a6 rightToLeft:(BOOL)a7 vertical:(BOOL)a8 fontHeightInfo:(TSWPFontHeightInfo *)a9 lineSpacingMode:(int)a10 lineSpacingAmount:(double)a11;
- (TSWPFontHeightInfo)heightInfo;
- (TSWPFontHeightInfo)unscaledFontHeightInfo;
- (double)baselineShift;
- (double)dynamicPadding;
- (double)outdentInPoints;
- (double)scaledFontSize;
- (double)widthForCharacterAtIndex:(unint64_t)a3;
- (id)p_createWrapSegments;
- (id)p_paddedPathForExteriorWrap;
- (id)p_pathForExteriorWrap;
- (id)p_styleArrayWithFontSize:(double)a3;
- (id)paddedPathForExteriorWrap;
- (id)splitLine:(CGRect)a3 skipHint:(double *)a4;
- (void)drawAdornment:(id)a3 inContext:(CGContext *)a4 viewScale:(double)a5 flipShadows:(BOOL)a6 blackAndWhite:(BOOL)a7;
- (void)offsetBy:(CGSize)a3;
- (void)setHeightInfo:(TSWPFontHeightInfo *)a3;
- (void)setOrigin:(CGPoint)a3;
- (void)setUnscaledFontHeightInfo:(TSWPFontHeightInfo *)a3;
@end

@implementation TSWPDropCapAdornment

+ (unint64_t)convertPointsToConvexHull:(CGPoint *)a3 count:(unint64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  x = a3->x;
  y = a3->y;
  v8 = a4 - 1;
  if (a4 != 1)
  {
    v9 = a3 + 1;
    do
    {
      v10 = v9->y;
      if (v10 >= y)
      {
        if (v10 != y)
        {
          goto LABEL_9;
        }

        v11 = v9->x;
        if (v9->x >= x)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = v9->x;
      }

      y = v9->y;
      x = v11;
LABEL_9:
      ++v9;
      --v8;
    }

    while (v8);
  }

  v12 = malloc_type_calloc(a4, 0x20uLL, 0x1000040E0EAB150uLL);
  v13 = 0;
  v14 = v12 + 3;
  do
  {
    v15 = a3[v13];
    *(v14 - 3) = v15;
    v16 = 0;
    v17 = v15.x == x && v15.y == y;
    v18 = 0;
    if (!v17)
    {
      TSUSubtractPoints();
      TSUAngleFromDelta();
      v16 = v19;
      TSUDistance();
    }

    *(v14 - 1) = v16;
    *v14 = v18;
    ++v13;
    v14 += 4;
  }

  while (a4 != v13);
  qsort(v12, a4, 0x20uLL, sub_276D98DF8);
  v20 = 0;
  v21 = 0;
  do
  {
    v22 = *&v12[4 * v20];
    if (v21)
    {
      v23 = &a3[v21 - 1];
      do
      {
        v24 = v23->y;
        v25 = v23->x == v22.x && v24 == v22.y;
        if (!v25 && (v21 == 1 || (v24 - v23[-1].y) * (v22.x - v23->x) - (v23->x - v23[-1].x) * (v22.y - v24) < 0.0))
        {
          break;
        }

        --v23;
        --v21;
      }

      while (v21);
    }

    a3[v21++] = v22;
    ++v20;
  }

  while (v20 != a4);
  free(v12);
  return v21;
}

+ (CGRect)boundsOfMinimumCircleEnclosingPath:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v11 = 0.0;
  if ((objc_msgSend_isEmpty(v4, v7, v8) & 1) == 0)
  {
    v12 = objc_msgSend_bezierPathByFlatteningPath(v4, v9, v10);
    v15 = objc_msgSend_elementCount(v12, v13, v14);
    v16 = malloc_type_calloc(v15, 0x10uLL, 0x1000040451B5BE8uLL);
    v17 = v12;
    if ((objc_msgSend_isFlat(v17, v18, v19) & 1) == 0)
    {
      sub_276F4F324();
    }

    v87 = a1;
    if (objc_msgSend_elementCount(v17, v20, v21) < 1)
    {
      v24 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = objc_msgSend_elementAtIndex_associatedPoints_(v17, v22, v23, v88);
        if (v25 >= 2)
        {
          if (v25 != 3)
          {
            v28 = MEMORY[0x277D81150];
            v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "NSUInteger ExtractPointsFromFlattenedPath(TSUBezierPath *__strong, CGPoint *)");
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment+Geometry.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 143, 0, "Unexpected path element in flattened path");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
          }
        }

        else
        {
          *&v16[2 * v24++] = v88[0];
        }

        ++v23;
      }

      while (objc_msgSend_elementCount(v17, v26, v27) > v23);
    }

    v36 = objc_msgSend_convertPointsToConvexHull_count_(v87, v35, v16, v24);
    v11 = 0.0;
    if (v36)
    {
      v37 = v36;
      v38 = v36 - 1;
      if (v36 == 1)
      {
        v5 = *v16;
        v6 = v16[1];
        goto LABEL_42;
      }

      v39 = malloc_type_calloc(v36, 0x40uLL, 0x1020040FBAF4977uLL);
      v40 = v39;
      v41 = 0;
      v42 = v39 + 7;
      v43 = v16;
      do
      {
        v44 = *v43;
        v43 += 2;
        *(v42 - 7) = v44;
        if (v38 == v41)
        {
          v45 = 0;
        }

        else
        {
          v45 = v41 + 1;
        }

        *(v42 - 1) = &v39[8 * ((v37 + v41 - 1) % v37)];
        *v42 = &v39[8 * v45];
        v42 += 8;
        ++v41;
      }

      while (v37 != v41);
      v46 = (v39 + 4);
      do
      {
        v47 = *(v46 + 2);
        v48 = *(v46 + 3);
        v49 = *(v46 - 4);
        v50 = *(v46 - 3);
        *(v46 - 2) = sub_276D9927C(*v47, v47[1], v49, v50, *v48, v48[1]);
        *(v46 - 1) = v51;
        *v46 = v52;
        *(v46 + 1) = sub_276D9932C(*v47, v47[1], v49, v50, *v48, v48[1], v53, v54);
        v46 += 64;
        --v37;
      }

      while (v37);
      v55 = v40;
      while (1)
      {
        v56 = *(v55 + 7);
        v57 = v55;
        if (v56 != v55)
        {
          break;
        }

LABEL_37:
        if (v57[5] <= 1.57079633)
        {
          v5 = v57[2];
          v6 = v57[3];
          v11 = v57[4];
          free(v40);
          goto LABEL_42;
        }

        v67 = *(v57 + 6);
        v66 = *(v57 + 7);
        if (v55 == v57)
        {
          v55 = *(v57 + 7);
        }

        *(v67 + 56) = v66;
        *(v66 + 48) = v67;
        v68 = *(v67 + 48);
        v69 = *v67;
        v70 = *(v67 + 8);
        *(v67 + 16) = sub_276D9927C(*v68, v68[1], *v67, v70, *v66, *(v66 + 8));
        *(v67 + 24) = v71;
        *(v67 + 32) = v72;
        *(v67 + 40) = sub_276D9932C(*v68, v68[1], v69, v70, *v66, *(v66 + 8), v73, v74);
        v75 = *(v66 + 48);
        v76 = *(v66 + 56);
        v77 = *v66;
        v78 = *(v66 + 8);
        *(v66 + 16) = sub_276D9927C(*v75, v75[1], *v66, v78, *v76, v76[1]);
        *(v66 + 24) = v79;
        *(v66 + 32) = v80;
        *(v66 + 40) = sub_276D9932C(*v75, v75[1], v77, v78, *v76, v76[1], v81, v82);
      }

      v58 = v55;
      while (1)
      {
        v59 = *(v56 + 32);
        v60 = v58[4];
        if (v59 != v60 && vabdd_f64(v59, v60) >= fabs(v60 * 0.000000999999997))
        {
          break;
        }

        v61 = *(v56 + 40);
        v62 = v58[5];
        if (v61 != v62)
        {
          v63 = fabs(v62 * 0.000000999999997);
          v64 = vabdd_f64(v61, v62);
          v65 = v61 < v62 || v64 < v63;
LABEL_33:
          v57 = v56;
          if (!v65)
          {
            goto LABEL_36;
          }
        }

        v57 = v58;
LABEL_36:
        v56 = *(v56 + 56);
        v58 = v57;
        if (v56 == v55)
        {
          goto LABEL_37;
        }
      }

      v65 = v59 < v60;
      goto LABEL_33;
    }

LABEL_42:
    free(v16);
  }

  v83 = v5 - v11;
  v84 = v6 - v11;
  v85 = v11 + v11;
  v86 = v11 + v11;
  result.size.height = v86;
  result.size.width = v85;
  result.origin.y = v84;
  result.origin.x = v83;
  return result;
}

- (TSWPDropCapAdornment)initWithDropCapStyle:(id)a3 characterStyle:(id)a4 paragraphStyle:(id)a5 text:(id)a6 rightToLeft:(BOOL)a7 vertical:(BOOL)a8 fontHeightInfo:(TSWPFontHeightInfo *)a9 lineSpacingMode:(int)a10 lineSpacingAmount:(double)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v37.receiver = self;
  v37.super_class = TSWPDropCapAdornment;
  v22 = [(TSWPDropCapAdornment *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_dropCapStyle, a3);
    objc_storeStrong(&v23->_characterStyle, a4);
    objc_storeStrong(&v23->_paragraphStyle, a5);
    v26 = objc_msgSend_dropCap(v18, v24, v25);
    dropCap = v23->_dropCap;
    v23->_dropCap = v26;

    objc_storeStrong(&v23->_text, a6);
    v23->_isRightToLeft = a7;
    v28 = *&a9->ascent;
    *&v23->_unscaledFontHeightInfo.spaceBefore = *&a9->spaceBefore;
    *&v23->_unscaledFontHeightInfo.ascent = v28;
    v29 = *&a9->descent;
    v30 = *&a9->leadingBelow;
    v31 = *&a9->underlinePosition;
    *&v23->_unscaledFontHeightInfo.verticalHeight = *&a9->verticalHeight;
    *&v23->_unscaledFontHeightInfo.underlinePosition = v31;
    *&v23->_unscaledFontHeightInfo.descent = v29;
    *&v23->_unscaledFontHeightInfo.leadingBelow = v30;
    v23->_lineSpacingMode = a10;
    v23->_lineSpacingAmount = a11;
    v23->_isVertical = a8;
    v32 = *(MEMORY[0x277CBF398] + 16);
    v23->_rectAllocatedForUnderline.origin = *MEMORY[0x277CBF398];
    v23->_rectAllocatedForUnderline.size = v32;
    if ((objc_msgSend_p_calculateMetrics(v23, v33, v34) & 1) == 0)
    {

      v23 = 0;
    }
  }

  return v23;
}

- (void)setOrigin:(CGPoint)a3
{
  if (self->_origin.x != a3.x || self->_origin.y != a3.y)
  {
    self->_origin = a3;
    v6 = objc_msgSend_dropCap(self, a2, v3);
    v9 = objc_msgSend_wrapType(v6, v7, v8);

    if (v9 != 2)
    {
      v12 = objc_msgSend_p_pathForExteriorWrap(self, v10, v11);
      objc_msgSend_setPathForExteriorWrap_(self, v13, v12);

      v17 = objc_msgSend_p_createWrapSegments(self, v14, v15);
      objc_msgSend_setWrapSegments_(self, v16, v17);
    }
  }
}

- (void)offsetBy:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_origin(self, a2, v3);
  v10 = width + v9;
  v12 = height + v11;

  objc_msgSend_setOrigin_(self, v7, v8, v10, v12);
}

- (CGRect)bounds
{
  objc_msgSend_origin(self, a2, v2);
  objc_msgSend_size(self, v4, v5);

  TSURectWithOriginAndSize();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)outermostPathRawBounds
{
  v44 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v8 = objc_msgSend_dropCap(self, a2, v2);
  v11 = objc_msgSend_shapeEnabled(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_shapePath(self, v12, v13);
    if ((objc_msgSend_isEmpty(v14, v15, v16) & 1) == 0)
    {
      objc_msgSend_bounds(v14, v17, v18);
      x = v19;
      y = v20;
      width = v21;
      height = v22;
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = objc_msgSend_glyphPaths(self, v12, v13, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v23, &v39, v43, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v40;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v14);
          }

          v30 = *(*(&v39 + 1) + 8 * i);
          if ((objc_msgSend_isEmpty(v30, v25, v26) & 1) == 0)
          {
            objc_msgSend_bounds(v30, v25, v26);
            v48.origin.x = v31;
            v48.origin.y = v32;
            v48.size.width = v33;
            v48.size.height = v34;
            v45.origin.x = x;
            v45.origin.y = y;
            v45.size.width = width;
            v45.size.height = height;
            v46 = CGRectUnion(v45, v48);
            x = v46.origin.x;
            y = v46.origin.y;
            width = v46.size.width;
            height = v46.size.height;
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v25, &v39, v43, 16);
      }

      while (v27);
    }
  }

  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)erasableBounds
{
  MEMORY[0x2821F9670](self, sel_p_imageBoundsIncludingShadow_, 1);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)glyphBounds
{
  MEMORY[0x2821F9670](self, sel_p_imageBoundsIncludingShadow_, 0);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)p_imageBoundsIncludingShadow:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_p_styleArray(self, a2, a3);
  v8 = objc_msgSend_dropCap(self, v6, v7);
  v11 = objc_msgSend_shapeEnabled(v8, v9, v10);

  objc_opt_class();
  if (v11)
  {
    v12 = 258;
  }

  else
  {
    v12 = 50;
  }

  v13 = TSWPResolvePropertyForStyles(v5, v12);
  v14 = TSUDynamicCast();

  v17 = 0.0;
  if (v14 && (objc_msgSend_isNullStroke(v14, v15, v16) & 1) == 0)
  {
    objc_msgSend_renderedWidth(v14, v18, v19);
    v17 = v20 * 0.5 + 0.0;
  }

  objc_msgSend_outermostPathRawBounds(self, v21, v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  objc_msgSend_rectAllocatedForUnderline(self, v31, v32);
  v87.origin.x = v33;
  v87.origin.y = v34;
  v87.size.width = v35;
  v87.size.height = v36;
  v76.origin.x = v24;
  v76.origin.y = v26;
  v76.size.width = v28;
  v76.size.height = v30;
  v77 = CGRectUnion(v76, v87);
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  objc_msgSend_origin(self, v41, v42);
  v44 = v43;
  objc_msgSend_origin(self, v45, v46);
  CGAffineTransformMakeTranslation(&v75, v44, v47);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  v79 = CGRectApplyAffineTransform(v78, &v75);
  v80 = CGRectInset(v79, -v17, -v17);
  v50 = v80.origin.x;
  v51 = v80.origin.y;
  v52 = v80.size.width;
  v53 = v80.size.height;
  if (v3)
  {
    objc_opt_class();
    v54 = TSWPResolvePropertyForStyles(v5, 40);
    v55 = TSUDynamicCast();

    if (v55 && objc_msgSend_isEnabled(v55, v56, v57))
    {
      objc_msgSend_shadowBoundsForRect_(v55, v56, v57, v50, v51, v52, v53);
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v53 = v61;
    }

    objc_msgSend_bounds(self, v56, v57);
    v88.origin.x = v62;
    v88.origin.y = v63;
    v88.size.width = v64;
    v88.size.height = v65;
    v81.origin.x = v50;
    v81.origin.y = v51;
    v81.size.width = v52;
    v81.size.height = v53;
    v82 = CGRectUnion(v81, v88);
    v50 = v82.origin.x;
    v51 = v82.origin.y;
    v52 = v82.size.width;
    v53 = v82.size.height;
  }

  objc_msgSend_outdentInPoints(self, v48, v49);
  CGAffineTransformMakeTranslation(&v75, -v66, 0.0);
  v83.origin.x = v50;
  v83.origin.y = v51;
  v83.size.width = v52;
  v83.size.height = v53;
  v84 = CGRectApplyAffineTransform(v83, &v75);
  v85 = CGRectInset(v84, -1.0, -1.0);
  v67 = v85.origin.x;
  v68 = v85.origin.y;
  v69 = v85.size.width;
  v70 = v85.size.height;

  v71 = v67;
  v72 = v68;
  v73 = v69;
  v74 = v70;
  result.size.height = v74;
  result.size.width = v73;
  result.origin.y = v72;
  result.origin.x = v71;
  return result;
}

- (double)dynamicPadding
{
  v6 = 0.0;
  if ((objc_msgSend_isVertical(self, a2, v2) & 1) == 0)
  {
    objc_msgSend_unscaledFontHeightInfo(self, v4, v5);
    v6 = v9;
  }

  objc_msgSend_unscaledFontHeightInfo(self, v4, v5);
  return v6 + v8;
}

- (double)outdentInPoints
{
  v4 = objc_msgSend_dropCap(self, a2, v2);
  objc_msgSend_outdent(v4, v5, v6);
  v8 = v7;

  v9 = fmax(v8, 0.0);
  objc_msgSend_size(self, v10, v11);
  v13 = v12;
  objc_msgSend_dynamicPadding(self, v14, v15);
  v17 = v13 + v16;
  isRightToLeft = objc_msgSend_isRightToLeft(self, v18, v19);
  result = -(v9 * v17);
  if (!isRightToLeft)
  {
    return v9 * v17;
  }

  return result;
}

- (double)scaledFontSize
{
  objc_msgSend_unscaledFontSize(self, a2, v2);
  v5 = v4;
  objc_msgSend_fontScaleFactor(self, v6, v7);
  return v5 * v8;
}

- (TSDFill)characterFill
{
  objc_opt_class();
  v5 = objc_msgSend_p_styleArray(self, v3, v4);
  v6 = TSWPResolvePropertyForStyles(v5, 48);
  v7 = TSUDynamicCast();

  return v7;
}

- (BOOL)characterFillShouldFillTextContainer
{
  objc_opt_class();
  v5 = objc_msgSend_p_styleArray(self, v3, v4);
  v6 = TSWPResolvePropertyForStyles(v5, 49);
  v7 = TSUDynamicCast();

  LOBYTE(v5) = objc_msgSend_BOOLValue(v7, v8, v9);
  return v5;
}

- (double)baselineShift
{
  v3 = objc_msgSend_p_styleArray(self, a2, v2);
  objc_opt_class();
  v4 = TSWPResolvePropertyForStyles(v3, 34);
  v5 = TSUDynamicCast();

  if (v5)
  {
    objc_msgSend_tsu_CGFloatValue(v5, v6, v7);
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)widthForCharacterAtIndex:(unint64_t)a3
{
  v5 = objc_msgSend_characterMetrics(self, a2, a3);
  v8 = objc_msgSend_count(v5, v6, v7);
  v11 = objc_msgSend_text(self, v9, v10);
  v14 = objc_msgSend_length(v11, v12, v13);

  if (v8 != v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPDropCapAdornment widthForCharacterAtIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 731, 0, "expected equality between %{public}s and %{public}s", "self.characterMetrics.count", "self.text.length");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_text(self, v15, v16);
  v27 = objc_msgSend_length(v24, v25, v26);

  if (v27 > 1)
  {
    v35 = objc_msgSend_characterMetrics(self, v28, v29);
    v37 = objc_msgSend_metricsForCharIndex_(v35, v36, a3);

    v42 = 0.0;
    if (objc_msgSend_hasLeadingOffset(v37, v38, v39))
    {
      objc_msgSend_leadingOffset(v37, v40, v41);
      v44 = v43;
      v47 = objc_msgSend_characterMetrics(self, v45, v46);
      v49 = objc_msgSend_metricsForCharIndex_(v47, v48, a3);

      v52 = objc_msgSend_characterMetrics(self, v50, v51);
      if (objc_msgSend_count(v52, v53, v54) <= a3)
      {
        v63 = v49;
LABEL_14:

        v49 = v63;
      }

      else
      {
        v57 = a3;
        while (1)
        {
          hasTrailingOffset = objc_msgSend_hasTrailingOffset(v49, v55, v56);

          if (hasTrailingOffset)
          {
            break;
          }

          ++v57;
          v61 = objc_msgSend_characterMetrics(self, v59, v60);
          v63 = objc_msgSend_metricsForCharIndex_(v61, v62, v57);

          v52 = objc_msgSend_characterMetrics(self, v64, v65);
          v49 = v63;
          if (v57 >= objc_msgSend_count(v52, v66, v67))
          {
            goto LABEL_14;
          }
        }
      }

      if (objc_msgSend_hasTrailingOffset(v49, v59, v60))
      {
        objc_msgSend_trailingOffset(v49, v68, v69);
        v42 = vabdd_f64(v70, v44);
      }

      else
      {
        v71 = MEMORY[0x277D81150];
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "[TSWPDropCapAdornment widthForCharacterAtIndex:]");
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v75, v72, v74, 757, 0, "Unexpectedly cannot find trailing offset for char index %lu while laying out drop cap.", a3);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77);
        v42 = 0.0;
      }
    }

    return v42;
  }

  else
  {
    objc_msgSend_dropCapFrame(self, v28, v29);

    return CGRectGetWidth(*&v30);
  }
}

- (id)splitLine:(CGRect)a3 skipHint:(double *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_opt_new();
  objc_msgSend_origin(self, v11, v12);
  objc_msgSend_size(self, v13, v14);
  TSURectWithOriginAndSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v133.origin.x = x;
  v133.origin.y = y;
  v131.size.width = width;
  v131.size.height = height;
  v133.size.width = width;
  v23 = v16;
  v133.size.height = height;
  v24 = 1.0;
  v25 = CGRectGetMinY(v133) + 1.0;
  v134.origin.x = v23;
  v134.origin.y = v18;
  v134.size.width = v20;
  v134.size.height = v22;
  v26 = v25 - CGRectGetMinY(v134);
  objc_msgSend_singleLineHeight(self, v27, v28);
  v30 = fmax(v26 / v29, 0.0);
  v33 = objc_msgSend_dropCap(self, v31, v32);
  v36 = objc_msgSend_numberOfRaisedLines(v33, v34, v35);

  if (v36 > v30)
  {
    goto LABEL_27;
  }

  v39 = x;
  v127 = v22;
  v128 = v20;
  v130 = v23;
  v40 = objc_msgSend_pathForExteriorWrap(self, v37, v38);
  v129 = v18;
  if (objc_msgSend_isEmpty(v40, v41, v42))
  {
    v46 = *MEMORY[0x277CBF398];
    v45 = *(MEMORY[0x277CBF398] + 8);
    v47 = *(MEMORY[0x277CBF398] + 16);
    v48 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    objc_msgSend_bounds(v40, v43, v44);
    v46 = v49;
    v45 = v50;
    v47 = v51;
    v48 = v52;
  }

  v135.origin.x = v39;
  v131.origin.x = v39;
  v131.origin.y = y;
  v135.origin.y = y;
  v135.size = v131.size;
  v53 = v46;
  v54 = v45;
  v55 = v47;
  v56 = v48;
  v136 = CGRectIntersection(v135, *(&v45 - 1));
  v57 = v136.origin.x;
  v58 = v136.origin.y;
  v59 = v136.size.width;
  v60 = v136.size.height;
  v63 = objc_msgSend_dropCap(self, v61, v62);
  if (objc_msgSend_numberOfLines(v63, v64, v65) <= v30)
  {
    v137.origin.x = v57;
    v137.origin.y = v58;
    v137.size.width = v59;
    v137.size.height = v60;
    v70 = CGRectGetHeight(v137);

    v69 = v131.origin.x;
    v68 = v131.origin.y;
    if (v70 <= 1.0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v69 = v131.origin.x;
    v68 = v131.origin.y;
  }

  v71 = objc_msgSend_dropCap(self, v66, v67);
  v74 = objc_msgSend_wrapType(v71, v72, v73);

  if (v74 >= 2)
  {
    if (v74 != 2)
    {
LABEL_17:

      goto LABEL_28;
    }

LABEL_16:
    objc_msgSend_addRect_(v10, v66, v67, v69, v68, *&v131.size);
    goto LABEL_17;
  }

  v138.origin.x = v46;
  v138.origin.y = v54;
  v138.size.width = v47;
  v138.size.height = v48;
  MinY = CGRectGetMinY(v138);
  v139.origin.x = v69;
  v139.origin.y = v68;
  v139.size = v131.size;
  v24 = 1.0;
  v18 = v129;
  v23 = v130;
  if (MinY <= CGRectGetMaxY(v139))
  {
    v78 = objc_msgSend_wrapSegments(self, v76, v77);

    if (!v78)
    {
      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSWPDropCapAdornment splitLine:skipHint:]");
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 808, 0, "invalid nil value for '%{public}s'", "self.wrapSegments");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
    }

    v88 = objc_msgSend_wrapSegments(self, v79, v80);
    objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(TSWPTextWrapper, v89, v10, v88, 1, a4, v69, v68, *&v131.size);

    if (objc_msgSend_count(v10, v90, v91))
    {
      if (objc_msgSend_isRightToLeft(self, v92, v93))
      {
        objc_msgSend_rectAtIndex_(v10, v94, 0);
      }

      else
      {
        v102 = objc_msgSend_count(v10, v94, v95) - 1;
        objc_msgSend_rectAtIndex_(v10, v103, v102);
      }

      v104 = v98;
      v105 = v99;
      v106 = v100;
      v107 = v101;
      if (objc_msgSend_count(v10, v96, v97) >= 2)
      {
        objc_msgSend_makeEmpty(v10, v108, v109);
        objc_msgSend_addRect_(v10, v110, v111, v104, v105, v106, v107);
      }

      isRightToLeft = objc_msgSend_isRightToLeft(self, v108, v109);
      v113 = v104;
      v114 = v105;
      v115 = v106;
      v116 = v107;
      if (isRightToLeft)
      {
        MinX = CGRectGetMinX(*&v113);
        v69 = v131.origin.x;
        v68 = v131.origin.y;
        MaxX = CGRectGetMinX(v131);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v113);
        v69 = v131.origin.x;
        v68 = v131.origin.y;
        MaxX = CGRectGetMaxX(v131);
      }

      v24 = 1.0;
      v23 = v130;
      if (MinX == MaxX || vabdd_f64(MinX, MaxX) < fabs(MaxX * 0.000000999999997))
      {
        goto LABEL_17;
      }
    }
  }

  y = v68;
  x = v69;
  v22 = v127;
  v20 = v128;
LABEL_27:
  v140.origin.y = v18;
  v140.origin.x = v23;
  v140.size.width = v20;
  v140.size.height = v22;
  v119 = CGRectGetMinY(v140);
  objc_msgSend_singleLineHeight(self, v120, v121);
  v123 = v119 + v122 * (v30 + 1);
  v141.origin.x = x;
  v141.origin.y = y;
  v141.size.width = v131.size.width;
  v141.size.height = v131.size.height;
  *a4 = fmax(v123 - CGRectGetMinY(v141), v24);
  objc_msgSend_makeEmpty(v10, v124, v125);
LABEL_28:

  return v10;
}

- (CGRect)trailingCaretBounds
{
  objc_msgSend_singleLineHeight(self, a2, v2);
  v5 = v4;
  v8 = objc_msgSend_dropCap(self, v6, v7);
  v11 = v5 * objc_msgSend_numberOfRaisedLines(v8, v9, v10);

  v12 = 0.0;
  v13 = 0.0;
  v14 = v11;
  v15 = v5;
  result.size.height = v15;
  result.size.width = v13;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (CGPoint)originIncludingOutdent
{
  objc_msgSend_origin(self, a2, v2);
  v5 = v4;
  objc_msgSend_outdentInPoints(self, v6, v7);
  v9 = v5 - v8;
  objc_msgSend_origin(self, v10, v11);
  v13 = v9;
  result.y = v12;
  result.x = v13;
  return result;
}

- (CGPoint)glyphOriginIncludingOutdent
{
  objc_msgSend_originIncludingOutdent(self, a2, v2);
  objc_msgSend_glyphOffset(self, v4, v5);

  TSUAddPoints();
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)drawAdornment:(id)a3 inContext:(CGContext *)a4 viewScale:(double)a5 flipShadows:(BOOL)a6 blackAndWhite:(BOOL)a7
{
  v8 = a6;
  v157 = *MEMORY[0x277D85DE8];
  v12 = a3;
  CGContextSaveGState(a4);
  v146 = v12;
  v147 = self;
  v148 = a4;
  if (v12 != self)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPDropCapAdornment drawAdornment:inContext:viewScale:flipShadows:blackAndWhite:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 881, 0, "Expect to be rendering self, not some other adornment.");

    a4 = v148;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_msgSend_originIncludingOutdent(self, v13, v14);
  CGContextTranslateCTM(a4, v22, v23);
  v149 = objc_msgSend_p_styleArray(self, v24, v25);
  if (a7)
  {
    objc_msgSend_blackColor(MEMORY[0x277D801F8], v26, v27);
  }

  else
  {
    objc_msgSend_characterFill(self, v26, v27);
  }
  v150 = ;
  v30 = objc_msgSend_dropCap(self, v28, v29);
  v33 = objc_msgSend_shapeEnabled(v30, v31, v32);

  if (v33)
  {
    objc_opt_class();
    v34 = TSWPResolvePropertyForStyles(v149, 257);
    v35 = TSUDynamicCast();

    if (v35)
    {
      v38 = objc_msgSend_shapePath(self, v36, v37);
      v39 = v38;
      v42 = objc_msgSend_CGPath(v39, v40, v41);
      objc_msgSend_paintPath_inContext_(v35, v43, v42, a4);
    }
  }

  CGContextSaveGState(a4);
  objc_opt_class();
  v44 = TSWPResolvePropertyForStyles(v149, 40);
  v45 = TSUDynamicCast();

  if (v45)
  {
    objc_msgSend_applyToContext_viewScale_flipped_(v45, v46, a4, v8, a5);
    CGContextBeginTransparencyLayer(a4, 0);
  }

  v145 = v45;
  objc_msgSend_glyphOffset(self, v46, v47);
  v49 = v48;
  objc_msgSend_glyphOffset(self, v50, v51);
  CGContextTranslateCTM(a4, v49, v52);
  v55 = objc_msgSend_glyphAuthorColors(self, v53, v54);
  v58 = objc_msgSend_objectEnumerator(v55, v56, v57);

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v61 = objc_msgSend_glyphPaths(self, v59, v60);
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v152, v156, 16);
  if (v63)
  {
    v64 = v63;
    v65 = *v153;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v153 != v65)
        {
          objc_enumerationMutation(v61);
        }

        v67 = *(*(&v152 + 1) + 8 * i);
        objc_opt_class();
        v70 = objc_msgSend_nextObject(v58, v68, v69);
        v71 = TSUDynamicCast();

        if (v71)
        {
          v74 = objc_alloc(MEMORY[0x277D801F8]);
          v76 = objc_msgSend_initWithColor_(v74, v75, v71);
          v77 = v67;
          v80 = objc_msgSend_CGPath(v77, v78, v79);
          objc_msgSend_paintPath_inContext_(v76, v81, v80, a4);
        }

        else
        {
          if (v150)
          {
            objc_msgSend_characterFillRect(v147, v72, v73);
            if (CGRectIsEmpty(v158))
            {
              objc_msgSend_glyphBounds(v147, v82, v83);
            }

            else
            {
              objc_msgSend_characterFillRect(v147, v82, v83);
              v91 = v90;
              v93 = v92;
              v95 = v94;
              v97 = v96;
              objc_msgSend_glyphBounds(v147, v98, v99);
              v162.origin.x = v100;
              v162.origin.y = v101;
              v162.size.width = v102;
              v162.size.height = v103;
              v159.origin.x = v91;
              v159.origin.y = v93;
              v159.size.width = v95;
              v159.size.height = v97;
              *&v86 = CGRectUnion(v159, v162);
            }

            v104 = v86;
            v105 = v87;
            v106 = v88;
            v107 = v89;
            objc_msgSend_glyphOriginIncludingOutdent(v147, v84, v85);
            CGAffineTransformMakeTranslation(&transform, -v108, -v109);
            v160.origin.x = v104;
            v160.origin.y = v105;
            v160.size.width = v106;
            v160.size.height = v107;
            v161 = CGRectApplyAffineTransform(v160, &transform);
            x = v161.origin.x;
            y = v161.origin.y;
            width = v161.size.width;
            height = v161.size.height;
            v114 = v67;
            v117 = objc_msgSend_CGPath(v114, v115, v116);
            objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(v150, v118, v117, a4, 0, x, y, width, height);
          }

          objc_opt_class();
          v119 = TSWPResolvePropertyForStyles(v149, 50);
          v76 = TSUDynamicCast();

          if (v76)
          {
            v120 = v67;
            v123 = objc_msgSend_CGPath(v120, v121, v122);
            a4 = v148;
            objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v76, v124, v123, 0, v148);
          }

          else
          {
            a4 = v148;
          }
        }
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v125, &v152, v156, 16);
    }

    while (v64);
  }

  if (v145)
  {
    CGContextEndTransparencyLayer(a4);
  }

  CGContextRestoreGState(a4);
  v128 = objc_msgSend_dropCap(v147, v126, v127);
  v131 = objc_msgSend_shapeEnabled(v128, v129, v130);

  if (v131)
  {
    objc_opt_class();
    v132 = TSWPResolvePropertyForStyles(v149, 258);
    v133 = TSUDynamicCast();

    if (v133)
    {
      CGContextSaveGState(a4);
      CGContextGetCTM(&transform, a4);
      if (TSUIsTransformAxisAligned())
      {
        CGAffineTransformMakeRotation(&transform, 0.000001);
        CGContextConcatCTM(a4, &transform);
      }

      v136 = objc_msgSend_shapePath(v147, v134, v135);
      v137 = v136;
      v140 = objc_msgSend_CGPath(v137, v138, v139);
      objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v133, v141, v140, 0, a4);

      CGContextRestoreGState(a4);
    }
  }

  v142 = TSDCGContextGetPdfTagger();
  v143 = TSUProtocolCast();

  if (v143 && TSDCGContextIsPDFContext())
  {
    objc_msgSend_handleDropCapAdornment_(v143, v144, v147, &unk_28866BEF0);
  }

  CGContextRestoreGState(a4);
}

- (BOOL)p_calculateMetrics
{
  v3 = self;
  v671 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dropCap(self, a2, v2);
  v609 = objc_msgSend_shapeEnabled(v4, v5, v6);

  v9 = objc_msgSend_dropCap(v3, v7, v8);
  objc_msgSend_cornerRadius(v9, v10, v11);
  v13 = v12;

  v16 = objc_msgSend_dropCap(v3, v14, v15);
  objc_msgSend_characterScale(v16, v17, v18);
  v20 = v19;

  v23 = objc_msgSend_dropCap(v3, v21, v22);
  v602 = objc_msgSend_wrapType(v23, v24, v25);

  v608 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%C", 8203);
  objc_msgSend_unscaledFontHeightInfo(v3, v27, v28);
  LODWORD(v23) = objc_msgSend_lineSpacingMode(v3, v29, v30);
  objc_msgSend_lineSpacingAmount(v3, v31, v32);
  v34 = sub_276D35C8C(&v647, v23, v33);
  objc_msgSend_setSingleLineHeight_(v3, v35, v36, v34);
  v632 = 0u;
  v633 = 0u;
  v630 = 0u;
  v631 = 0u;
  v628 = 0u;
  v629 = 0u;
  objc_msgSend_unscaledFontHeightInfo(v3, v37, v38);
  v41 = objc_msgSend_dropCap(v3, v39, v40);
  v44 = objc_msgSend_numberOfLines(v41, v42, v43);
  objc_msgSend_singleLineHeight(v3, v45, v46);
  v48 = v47;
  isVertical = objc_msgSend_isVertical(v3, v49, v50);
  v52 = -(0.0 + 0.0);
  if (!isVertical)
  {
    v52 = -0.0;
  }

  v53 = v52 + v44 * v48;

  if (objc_msgSend_isVertical(v3, v54, v55))
  {
    v58 = v53 * 0.5;
  }

  else
  {
    v59 = objc_msgSend_dropCap(v3, v56, v57);
    v62 = (objc_msgSend_numberOfLines(v59, v60, v61) - 1);
    objc_msgSend_singleLineHeight(v3, v63, v64);
    v58 = *(&v630 + 1) + *&v629 + v62 * v65;
  }

  *(&v628 + 1) = v58;
  if (objc_msgSend_isVertical(v3, v56, v57))
  {
    *&v630 = *(&v628 + 1);
    *&v629 = *(&v628 + 1);
  }

  v649 = v630;
  v650 = v631;
  v651 = v632;
  v652 = v633;
  v647 = v628;
  v648 = v629;
  objc_msgSend_setHeightInfo_(v3, v66, &v647);
  v610 = objc_msgSend_p_styleArrayWithFontSize_(v3, v67, v68, v53);
  v69 = sub_276D38B74(v610, 0x64uLL);
  if (objc_msgSend_isVertical(v3, v70, v71))
  {
    v72 = sub_276D35910(v69);
  }

  else
  {
    v73 = CFRetain(v69);
    v72 = CFAutorelease(v73);
  }

  v74 = v72;
  v75 = sub_276D35B50(v72);
  objc_msgSend_setFontPostScriptName_(v3, v76, v75);

  objc_msgSend_setUnscaledFontSize_(v3, v77, v78, v53);
  v626 = 0u;
  v627 = 0u;
  v624 = 0u;
  v625 = 0u;
  v622 = 0u;
  v623 = 0u;
  sub_276D38FF4(v74, v79, v80, &v622);
  CFRelease(v69);
  v661 = *MEMORY[0x277D740A8];
  v662 = v74;
  v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v81, &v662, &v661, 1);
  v85 = objc_msgSend_text(v3, v83, v84);
  v88 = objc_msgSend_string(v85, v86, v87);
  v91 = objc_msgSend_mutableCopy(v88, v89, v90);

  v93 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v92, @"%C", 8203);
  if (objc_msgSend_length(v91, v94, v95))
  {
    v97 = 0;
    v98 = 1;
    do
    {
      v99 = objc_msgSend_characterAtIndex_(v91, v96, v97);
      if (v99 == 65532 || (v98 & 1) != 0 && IsWhitespaceCharacter(v99, v100))
      {
        objc_msgSend_replaceCharactersInRange_withString_(v91, v100, v97, 1, v93);
      }

      else
      {
        v98 = 0;
      }

      ++v97;
    }

    while (v97 < objc_msgSend_length(v91, v100, v101));
  }

  objc_msgSend_setCoreTextString_(v3, v102, v91);
  v105 = objc_msgSend_coreTextString(v3, v103, v104);
  v108 = objc_msgSend_length(v105, v106, v107);
  v111 = objc_msgSend_text(v3, v109, v110);
  v114 = objc_msgSend_length(v111, v112, v113);

  if (v108 != v114)
  {
    v116 = MEMORY[0x277D81150];
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "[TSWPDropCapAdornment p_calculateMetrics]");
    v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v120, v117, v119, 1070, 0, "expected equality between %{public}s and %{public}s", "self.coreTextString.length", "self.text.length");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122);
  }

  font = v74;
  v123 = objc_alloc(MEMORY[0x277CCAB48]);
  v126 = objc_msgSend_coreTextString(v3, v124, v125);
  v607 = v82;
  v128 = objc_msgSend_initWithString_attributes_(v123, v127, v126, v82);

  if (objc_msgSend_isVertical(v3, v129, v130))
  {
    sub_276D3A17C(v128, 0);
  }

  v133 = objc_msgSend_text(v3, v131, v132);
  v136 = objc_msgSend_length(v133, v134, v135);

  v139 = objc_msgSend_text(v3, v137, v138);
  v141 = objc_msgSend_charIndexMappedToStorage_(v139, v140, 0);

  v144 = objc_msgSend_text(v3, v142, v143);
  stringRange = v136;
  v146 = objc_msgSend_charIndexMappedToStorage_(v144, v145, v136);

  v149 = 0;
  *&v660[7] = 256;
  *v660 = 0x100000000000000;
  v659 = 0;
  v658 = 0;
  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v652 = 0u;
  v653 = 0u;
  v650 = 0u;
  v651 = 0u;
  v648 = 0u;
  v649 = 0u;
  v647 = 0u;
  v616 = v146;
  v618 = v3;
  if (v141 < v146)
  {
    v150 = 0;
    v614 = *MEMORY[0x277CC49C0];
    while (1)
    {
      v151 = objc_msgSend_text(v3, v147, v148);
      v153 = objc_msgSend_charIndexMappedFromStorage_(v151, v152, v141);

      v156 = objc_msgSend_text(v3, v154, v155);
      objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(v156, v157, v153, &v659, &v647, 0);

      v158 = *(&v654 + 1);
      v159 = v655;
      v162 = objc_msgSend_showsMarkup(v159, v160, v161);
      v165 = v159;
      if ((v162 & 1) == 0)
      {
        if (objc_msgSend_showsMarkup(v158, v163, v164))
        {
          v165 = v158;
        }

        else
        {
          v165 = 0;
        }
      }

      v166 = v165;
      v149 = objc_msgSend_textMarkupColor(v166, v167, v168);

      v171 = objc_msgSend_text(v618, v169, v170);
      v172 = sub_276D37528(v141, v171);

      v175 = objc_msgSend_text(v618, v173, v174);
      v177 = objc_msgSend_charIndexMappedFromStorage_(v175, v176, v172);

      if (v149)
      {
        if (v153 <= v177)
        {
          v180 = v177;
        }

        else
        {
          v180 = v153;
        }

        if (v153 >= v177)
        {
          v181 = v177;
        }

        else
        {
          v181 = v153;
        }

        v182 = v180 - v181;
        v645 = v614;
        v646 = objc_msgSend_CGColor(v149, v178, v179);
        v184 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v183, &v646, &v645, 1);
        objc_msgSend_addAttributes_range_(v128, v185, v184, v181, v182);

        objc_msgSend_removeAttribute_range_(v128, v186, @"TSWPCharacterFillAttribute", v181, v182);
        objc_msgSend_removeAttribute_range_(v128, v187, @"TSWPCharacterStrokeAttribute", v181, v182);
      }

      if (v141 >= v172)
      {
        break;
      }

      v141 = v172;
      v150 = v149;
      v3 = v618;
      if (v172 >= v616)
      {
        goto LABEL_41;
      }
    }

    v188 = MEMORY[0x277D81150];
    v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, "[TSWPDropCapAdornment p_calculateMetrics]");
    v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v188, v192, v189, v191, 1109, 0, "bad charIndex: %lu >= %lu", v141, v172);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v193, v194);
    v3 = v618;
  }

LABEL_41:
  v615 = v149;
  v195 = objc_msgSend_styleArray(v3, v147, v148);
  v196 = TSWPResolvePropertyForStyles(v195, 36);

  if (v196)
  {
    objc_msgSend_floatValue(v196, v197, v198);
    if (v201 != 0.0)
    {
      objc_msgSend_floatValue(v196, v199, v200);
      v203 = v202;
      objc_msgSend_unscaledFontSize(v3, v204, v205);
      v207 = *MEMORY[0x277CC49E0];
      v210 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v208, v209, v206 * v203);
      v213 = objc_msgSend_length(v128, v211, v212);
      objc_msgSend_addAttribute_value_range_(v128, v214, v207, v210, 0, v213);

      v215 = *MEMORY[0x277CC49F0];
      v218 = objc_msgSend_length(v128, v216, v217);
      objc_msgSend_addAttribute_value_range_(v128, v219, v215, &unk_288627638, 0, v218);
    }
  }

  v613 = v196;
  cf = CTTypesetterCreateWithAttributedString(v128);
  v672.location = 0;
  v672.length = stringRange;
  Line = CTTypesetterCreateLine(cf, v672);
  v221 = CTLineGetGlyphRuns(Line);
  if (!objc_msgSend_count(v221, v222, v223))
  {
    goto LABEL_53;
  }

  v226 = 0;
  while (1)
  {
    v227 = objc_msgSend_objectAtIndex_(v221, v224, v226);
    v230 = CTRunGetStringRange(v227);
    length = v230.length;
    if (v230.length)
    {
      location = v230.location;
      v232 = v230.length;
      while (1)
      {
        v233 = objc_msgSend_string(v128, length, v229);
        v235 = objc_msgSend_characterAtIndex_(v233, v234, location);

        if (v235 != 8203)
        {
          break;
        }

        ++location;
        if (!--v232)
        {
          goto LABEL_52;
        }
      }

      if (v227)
      {
        break;
      }
    }

LABEL_52:
    if (++v226 >= objc_msgSend_count(v221, length, v229))
    {
      goto LABEL_53;
    }
  }

  Attributes = CTRunGetAttributes(v227);
  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4AC8]);
  if (!objc_msgSend_isVertical(v618, v479, v480) || Value && CFBooleanGetValue(Value))
  {
LABEL_53:
    v599 = v20;
    objc_msgSend_unscaledFontHeightInfo(v618, v224, v225);
    objc_msgSend_unscaledFontHeightInfo(v618, v236, v237);
    objc_msgSend_unscaledFontHeightInfo(v618, v238, v239);
    v242 = objc_msgSend_isVertical(v618, v240, v241);
    v243 = *(&v628 + 1);
    v248 = 1.0;
    if ((objc_msgSend_isVertical(v618, v244, v245) & 1) == 0)
    {
      v249 = v58 - (v621 + v620 - v619);
      if (v242)
      {
        v249 = v243;
      }

      v248 = v249 / *(&v623 + 1);
      if (v249 / *(&v623 + 1) <= 0.0)
      {
        v250 = MEMORY[0x277D81150];
        v251 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, "[TSWPDropCapAdornment p_calculateMetrics]");
        v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v252, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v250, v254, v251, v253, 1173, 0, "bad text scale: %g", *&v248);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v255, v256);
      }
    }

    v257 = fabs(v248);
    isRightToLeft = objc_msgSend_isRightToLeft(v618, v246, v247);
    v261 = objc_msgSend_isVertical(v618, v259, v260);
    v262 = CTLineGetStringRange(Line);
    v263 = [TSWPDropCapCharacterMetrics alloc];
    isVertical_baseline = objc_msgSend_initWithCharacterCount_isRightToLeft_isVertical_baseline_(v263, v264, v262.location + v262.length, isRightToLeft, v261, v58);
    *&block.a = MEMORY[0x277D85DD0];
    *&block.b = 3221225472;
    *&block.c = sub_276EE989C;
    *&block.d = &unk_27A6F6440;
    v266 = isVertical_baseline;
    *&block.tx = v266;
    CTLineEnumerateCaretOffsets(Line, &block);
    CGAffineTransformMakeScale(&v667, v257, v257);
    objc_msgSend_applyTransform_(v266, v267, &v667);

    objc_msgSend_setCharacterMetrics_(v618, v268, v266);
    v271 = objc_msgSend_array(MEMORY[0x277CBEB18], v269, v270);
    v274 = objc_msgSend_isVertical(v618, v272, v273);
    v603 = v257;
    v275 = sub_276EE8338(Line, v274, v271, v257);
    v280 = objc_msgSend_count(v275, v276, v277);
    v281 = v280 != 0;
    v617 = v275;
    if (v280)
    {
      v282 = objc_msgSend_count(v271, v278, v279);
      if (v282 != objc_msgSend_count(v275, v283, v284))
      {
        v286 = MEMORY[0x277D81150];
        v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v285, "[TSWPDropCapAdornment p_calculateMetrics]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v288, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
        v290 = v289 = v271;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v286, v291, v287, v290, 1182, 0, "Path/color count mismatch");

        v271 = v289;
        v275 = v617;

        v281 = v280 != 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v292, v293);
      }
    }

    if (sub_276EE87BC(v275))
    {
      v294 = *MEMORY[0x277CBF3A0];
      v295 = *(MEMORY[0x277CBF3A0] + 8);
      v297 = *(MEMORY[0x277CBF3A0] + 16);
      v296 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      v294 = sub_276EE88D4(v275);
      v295 = v298;
      v297 = v299;
      v296 = v300;
    }

    CFRelease(cf);
    GlyphCount = CTLineGetGlyphCount(Line);
    CFRelease(Line);
    if (v280)
    {
      if (objc_msgSend_isVertical(v618, v302, v303))
      {
        v306 = objc_msgSend_string(v128, v304, v305);
        v308 = objc_msgSend_containsString_(v306, v307, v608);

        GlyphCount -= v308;
        v53 = v58 + v58;
        v309 = GlyphCount;
        if (v609)
        {
          v309 = 1.0;
        }

        Width = v53 * v309;
        sub_276EE8A20(v609, 0.0, -v58, v53 * v309, v58 + v58, v58);
        objc_msgSend_setDropCapFrame_(v618, v311, v312);
      }

      else
      {
        sub_276EE8A20(v609, v294, v295, v297, v296, v58);
        objc_msgSend_setDropCapFrame_(v618, v315, v316);
        objc_msgSend_dropCapFrame(v618, v317, v318);
        Width = CGRectGetWidth(v673);
      }

      objc_msgSend_setSize_(v618, v313, v314, Width, v53);
      objc_opt_class();
      v319 = TSWPResolvePropertyForStyles(v610, 258);
      v320 = TSUDynamicCast();

      objc_msgSend_dropCapFrame(v618, v321, v322);
      v324 = v323;
      v326 = v325;
      v328 = v327;
      v330 = v329;
      v331 = v320;
      v334 = v331;
      v335 = 0.0;
      if (v609)
      {
        if (v331 && (objc_msgSend_isNullStroke(v331, v332, v333) & 1) == 0)
        {
          objc_msgSend_actualWidth(v334, v336, v337);
          v335 = v338 * 0.5;
        }

        v674.origin.x = v324;
        v674.origin.y = v326;
        v674.size.width = v328;
        v674.size.height = v330;
        v339 = v13 * CGRectGetHeight(v674) * 0.5;
        if (v339 != 0.0)
        {
          v335 = fmax(v335, v339 * 0.292893219 + v335 * 0.707106781);
        }
      }

      v601 = v13;
      v675.origin.x = v324;
      v675.origin.y = v326;
      v675.size.width = v328;
      v675.size.height = v330;
      v340 = fmin(CGRectGetWidth(v675) * 0.5 + -1.0, v335);
      v676.origin.x = v324;
      v676.origin.y = v326;
      v676.size.width = v328;
      v676.size.height = v330;
      v341 = fmin(v340, fmin(CGRectGetHeight(v676) * 0.5 + -1.0, v335));
      v677.origin.x = v324;
      v677.origin.y = v326;
      v677.size.width = v328;
      v677.size.height = v330;
      v678 = CGRectInset(v677, v341, v341);
      x = v678.origin.x;
      y = v678.origin.y;
      v344 = v678.size.width;
      height = v678.size.height;

      objc_msgSend_setTextFrame_(v618, v346, v347, x, y, v344, height);
      v598 = v281;
      cfa = v334;
      objc_msgSend_textFrame(v618, v348, v349);
      if (v609)
      {
        v356 = (1.0 - v599) * CGRectGetWidth(*&v352) * 0.5;
        objc_msgSend_textFrame(v618, v357, v358);
        v359 = (1.0 - v599) * CGRectGetHeight(v679) * 0.5;
        objc_msgSend_textFrame(v618, v360, v361);
        *&v352 = CGRectInset(v680, v356, v359);
      }

      objc_msgSend_setInsetTextFrame_(v618, v350, v351, v352, v353, v354, v355);
      objc_opt_class();
      v364 = objc_msgSend_styleArray(v618, v362, v363);
      v365 = TSWPResolvePropertyForStyles(v364, 23);
      v366 = TSUDynamicCast();
      v369 = objc_msgSend_integerValue(v366, v367, v368);

      stringRangea = v271;
      if (v369)
      {
        objc_msgSend_size(v618, v370, v371);
        v373 = v372;
        v375 = v374;
        objc_msgSend_insetTextFrame(v618, v376, v377);
        v379 = v378;
        v381 = v380;
        v383 = v382;
        v385 = v384;
        v388 = objc_msgSend_characterMetrics(v618, v386, v387);
        objc_msgSend_isVertical(v388, v389, v390);
        v391 = v617;
        sub_276EE8B20(v617, v373, v375, v379, v381, v383, v385);
        v393 = v392;

        objc_msgSend_unscaledFontSize(v618, v394, v395);
        v396 = v603;
        v398 = font;
        CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v393 * (v603 * v397), 0, 0);
        v670 = 0u;
        v669 = 0u;
        v668 = 0u;
        memset(&v667, 0, sizeof(v667));
        sub_276D38FF4(CopyWithAttributes, v400, v401, &v667);
        CFRelease(CopyWithAttributes);
        v402 = v618[9];
        block = v667;
        v664 = v668;
        v665 = v669;
        v666 = v670;
        v405 = sub_276D395EC(&block.a, v369, v402, 7u, 2, 0.0);
        v407 = v405 + v406 * 0.5;
        v408 = v407 + v406 * 2.0;
        if (v369 == 2)
        {
          v409 = v408;
        }

        else
        {
          v409 = v407;
        }

        objc_msgSend_insetTextFrame(v618, v403, v404);
        objc_msgSend_setInsetTextFrame_(v618, v410, v411);
        objc_msgSend_insetTextFrame(v618, v412, v413);
        v415 = v414;
        objc_msgSend_insetTextFrame(v618, v416, v417);
        MaxY = CGRectGetMaxY(v681);
        objc_msgSend_insetTextFrame(v618, v419, v420);
        v600 = v409;
        objc_msgSend_setRectAllocatedForUnderline_(v618, v421, v422, v415, MaxY);
      }

      else
      {
        v600 = 0.0;
        v398 = font;
        v391 = v617;
        v396 = v603;
      }

      objc_msgSend_size(v618, v370, v371);
      v424 = v423;
      v426 = v425;
      objc_msgSend_insetTextFrame(v618, v427, v428);
      v430 = v429;
      v432 = v431;
      v434 = v433;
      v436 = v435;
      v439 = objc_msgSend_characterMetrics(v618, v437, v438);
      if (GlyphCount > 1)
      {
        v440 = v609;
      }

      else
      {
        v440 = 0;
      }

      v441 = v391;
      v442 = v439;
      v445 = objc_msgSend_array(MEMORY[0x277CBEA60], v443, v444);
      v448 = 1.0;
      if (sub_276EE87BC(v441))
      {
        v449 = v602;
        v450 = v601;
      }

      else
      {
        objc_msgSend_isVertical(v442, v446, v447);
        sub_276EE8B20(v441, v424, v426, v430, v432, v434, v436);
        v448 = v451;
        v452 = objc_alloc(MEMORY[0x277CBEB18]);
        v454 = objc_msgSend_initWithArray_copyItems_(v452, v453, v441, 1);

        memset(&v644, 0, sizeof(v644));
        CGAffineTransformMakeScale(&v644, v448, v448);
        v642 = 0u;
        v643 = 0u;
        v640 = 0u;
        v641 = 0u;
        v455 = v454;
        v457 = objc_msgSend_countByEnumeratingWithState_objects_count_(v455, v456, &v640, &v667, 16);
        if (v457)
        {
          v459 = v457;
          v460 = *v641;
          do
          {
            for (i = 0; i != v459; ++i)
            {
              if (*v641 != v460)
              {
                objc_enumerationMutation(v455);
              }

              v462 = *(*(&v640 + 1) + 8 * i);
              block = v644;
              objc_msgSend_transformUsingAffineTransform_(v462, v458, &block);
            }

            v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v455, v458, &v640, &v667, 16);
          }

          while (v459);
        }

        block = v644;
        objc_msgSend_applyTransform_(v442, v463, &block);
        v464 = *(MEMORY[0x277CBF2C0] + 16);
        *&v639.a = *MEMORY[0x277CBF2C0];
        *&v639.c = v464;
        *&v639.tx = *(MEMORY[0x277CBF2C0] + 32);
        if ((v440 | objc_msgSend_isVertical(v442, v465, v466) ^ 1))
        {
          v682.origin.x = sub_276EE88D4(v455);
          v597 = v448;
          v469 = v436;
          v470 = v434;
          v471 = v682.origin.x;
          v472 = v682.origin.y;
          v473 = v682.size.width;
          v474 = v682.size.height;
          CGRectGetMidX(v682);
          v683.origin.x = v471;
          v683.origin.y = v472;
          v683.size.width = v473;
          v450 = v601;
          v683.size.height = v474;
          v396 = v603;
          CGRectGetMidY(v683);
          v684.origin.x = v430;
          v684.origin.y = v432;
          v684.size.width = v470;
          v684.size.height = v469;
          CGRectGetMidX(v684);
          v685.origin.x = v430;
          v685.origin.y = v432;
          v685.size.width = v470;
          v685.size.height = v469;
          v448 = v597;
          CGRectGetMidY(v685);
          TSUSubtractPoints();
          CGAffineTransformMakeTranslation(&v639, v475, v476);
          v449 = v602;
        }

        else
        {
          objc_msgSend_baseline(v442, v467, v468);
          v482 = (1.0 - v448) * v481;
          objc_msgSend_baseline(v442, v483, v484);
          CGAffineTransformMakeTranslation(&v639, v482, v482 + v485 * v448);
          v449 = v602;
          v450 = v601;
        }

        v637 = 0u;
        v638 = 0u;
        v635 = 0u;
        v636 = 0u;
        v445 = v455;
        v487 = objc_msgSend_countByEnumeratingWithState_objects_count_(v445, v486, &v635, &block, 16);
        if (v487)
        {
          v489 = v487;
          v490 = *v636;
          do
          {
            for (j = 0; j != v489; ++j)
            {
              if (*v636 != v490)
              {
                objc_enumerationMutation(v445);
              }

              v492 = *(*(&v635 + 1) + 8 * j);
              v634 = v639;
              objc_msgSend_transformUsingAffineTransform_(v492, v488, &v634);
            }

            v489 = objc_msgSend_countByEnumeratingWithState_objects_count_(v445, v488, &v635, &block, 16);
          }

          while (v489);
        }

        v634 = v639;
        objc_msgSend_applyTransform_(v442, v493, &v634);

        v398 = font;
      }

      objc_msgSend_setGlyphPaths_(v618, v494, v445);
      objc_msgSend_setGlyphAuthorColors_(v618, v495, stringRangea);
      objc_msgSend_setFontScaleFactor_(v618, v496, v497, v396 * v448);
      objc_msgSend_scaledFontSize(v618, v498, v499);
      v501 = CTFontCreateCopyWithAttributes(v398, v500, 0, 0);
      v670 = 0u;
      v669 = 0u;
      v668 = 0u;
      memset(&v667, 0, sizeof(v667));
      sub_276D38FF4(v501, v502, v503, &v667);
      if (v501)
      {
        CFRelease(v501);
      }

      v667.b = *(&v628 + 1);
      v281 = v598;
      if (objc_msgSend_isVertical(v618, v504, v505))
      {
        v507 = *(&v630 + 1);
      }

      else
      {
        c = v667.c;
        if (v667.c >= v667.b)
        {
          c = v667.b;
        }

        v667.c = c;
        v507 = 0.0;
      }

      v667.ty = v507;
      block = v667;
      v664 = v668;
      v665 = v669;
      v666 = v670;
      objc_msgSend_setHeightInfo_(v618, v506, &block);
      if (v369)
      {
        objc_msgSend_heightInfo(v618, v509, v510);
        sub_276D395EC(&block.a, v369, v618[9], 7u, 2, 0.0);
        v514 = v513 + v513 * 2.0;
        if (v369 != 2)
        {
          v514 = v513;
        }

        objc_msgSend_setUnderlineOffsetFromBaseline_(v618, v511, v512, v600 - v514 + v513 * 0.5);
        v515 = MEMORY[0x277D81160];
        objc_msgSend_insetTextFrame(v618, v516, v517);
        v519 = v518;
        objc_msgSend_insetTextFrame(v618, v520, v521);
        v522 = CGRectGetMaxY(v686);
        objc_msgSend_insetTextFrame(v618, v523, v524);
        v527 = objc_msgSend_bezierPathWithRect_(v515, v525, v526, v519, v522);
        objc_msgSend_setUnderlineWrapPath_(v618, v528, v527);
      }

      if (v609)
      {
        v529 = objc_msgSend_glyphPaths(v618, v509, v510);
        objc_msgSend_insetTextFrame(v618, v530, v531);
        if (v450 == 0.0)
        {
          v536 = *MEMORY[0x277CBF348];
          v537 = *(MEMORY[0x277CBF348] + 8);
        }

        else
        {
          v534 = sub_276EE8E9C(v529);
          objc_msgSend_boundsOfMinimumCircleEnclosingPath_(TSWPDropCapAdornment, v535, v534);

          TSUCenterOfRect();
          v450 = v601;
          TSUCenterOfRect();
          TSUSubtractPoints();
          TSUMultiplyPointScalar();
        }

        objc_msgSend_setGlyphOffset_(v618, v532, v533, v536, v537);

        objc_msgSend_dropCapFrame(v618, v540, v541);
        v548 = v547;
        v549 = v544;
        v550 = v545;
        v551 = v546;
        if (v450 == 1.0 || (v552 = fabs(v450 * 0.000000999999997), vabdd_f64(1.0, v450) < v552))
        {
          v553 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], v542, v543, v548, v544, v545, v546);
        }

        else if (v450 == 0.0 || vabdd_f64(0.0, v450) < v552)
        {
          v553 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v542, v543, v548, v544, v545, v546);
        }

        else
        {
          v593 = v548;
          v594 = CGRectGetWidth(*(&v544 - 1));
          v553 = objc_msgSend_bezierPathWithContinuousCornerRoundedRect_cornerRadius_(MEMORY[0x277D81160], v595, v596, v548, v549, v550, v551, v450 * v594 * 0.5);
        }

        v555 = v553;
        objc_msgSend_setShapePath_(v618, v554, v553);
      }

      else
      {
        objc_msgSend_setGlyphOffset_(v618, v509, v510, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      }

      v556 = objc_msgSend_dropCap(v618, v538, v539);
      v559 = objc_msgSend_wrapType(v556, v557, v558);

      if (v559 != 2)
      {
        v562 = objc_msgSend_p_pathForExteriorWrap(v618, v560, v561);
        objc_msgSend_setPathForExteriorWrap_(v618, v563, v562);
      }

      objc_msgSend_dynamicPadding(v618, v560, v561);
      v565 = v564;
      v568 = objc_msgSend_dropCap(v618, v566, v567);
      objc_msgSend_padding(v568, v569, v570);
      objc_msgSend_setWrapPadding_(v618, v572, v573, fmax(v565 + v571, 0.0));

      objc_msgSend_dropCapFrame(v618, v574, v575);
      v576 = CGRectGetWidth(v687);
      objc_msgSend_wrapPadding(v618, v577, v578);
      objc_msgSend_setAdvance_(v618, v580, v581, v576 + v579);
      if (v449 != 2)
      {
        v584 = objc_msgSend_p_createWrapSegments(v618, v582, v583);
        objc_msgSend_setWrapSegments_(v618, v585, v584);
      }

      v586 = objc_msgSend_characterMetrics(v618, v582, v583);
      objc_msgSend_dropCapFrame(v618, v587, v588);
      v589 = CGRectGetWidth(v688);
      objc_msgSend_adjustMetricsForWidth_(v586, v590, v591, v589);

      v271 = stringRangea;
    }
  }

  else
  {
    v618[9] = 0;
    v281 = objc_msgSend_p_calculateMetrics(v618, v224, v225);
    CFRelease(cf);
    CFRelease(Line);
  }

  return v281;
}

- (id)p_pathForExteriorWrap
{
  v68[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dropCap(self, a2, v2);
  v7 = objc_msgSend_wrapType(v4, v5, v6);

  if (v7 == 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPDropCapAdornment p_pathForExteriorWrap]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1327, 0, "Should not ask for exterior wrap path when wrap type is none");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_dropCap(self, v8, v9);
  v20 = objc_msgSend_wrapType(v17, v18, v19);

  if (v20 == 1)
  {
    v23 = objc_msgSend_dropCap(self, v21, v22);
    v26 = objc_msgSend_shapeEnabled(v23, v24, v25);

    if (v26)
    {
      v29 = objc_msgSend_shapePath(self, v27, v28);
      v32 = objc_msgSend_copy(v29, v30, v31);
    }

    else
    {
      v48 = objc_msgSend_glyphPaths(self, v27, v28);
      v32 = sub_276EE8E9C(v48);

      v51 = objc_msgSend_underlineWrapPath(self, v49, v50);

      if (v51)
      {
        v68[0] = v32;
        v52 = objc_msgSend_underlineWrapPath(self, v33, v34);
        v68[1] = v52;
        v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, v68, 2);
        v55 = sub_276EE8E9C(v54);

        v32 = v55;
      }
    }
  }

  else
  {
    objc_msgSend_size(self, v21, v22);
    TSURectWithSize();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = MEMORY[0x277D81160];
    objc_msgSend_dropCapFrame(self, v44, v45);
    v72.origin.x = v36;
    v72.origin.y = v38;
    v72.size.width = v40;
    v72.size.height = v42;
    v71 = CGRectUnion(v70, v72);
    v32 = objc_msgSend_bezierPathWithRect_(v43, v46, v47, v71.origin.x, v71.origin.y, v71.size.width, v71.size.height);
  }

  objc_msgSend_origin(self, v33, v34);
  v57 = v56;
  objc_msgSend_outdentInPoints(self, v58, v59);
  v61 = v57 - v60;
  objc_msgSend_origin(self, v62, v63);
  CGAffineTransformMakeTranslation(&v67, v61, v64);
  objc_msgSend_transformUsingAffineTransform_(v32, v65, &v67);

  return v32;
}

- (id)p_paddedPathForExteriorWrap
{
  v4 = objc_msgSend_pathForExteriorWrap(self, a2, v2);
  objc_msgSend_wrapPadding(self, v5, v6);
  if (v9 == 0.0)
  {
    v11 = v4;
  }

  else
  {
    objc_msgSend_wrapPadding(self, v7, v8);
    v11 = objc_msgSend_bezierPathByOffsettingPath_joinStyle_(v4, v10, 0);
  }

  v12 = v11;

  return v12;
}

- (id)p_createWrapSegments
{
  v4 = objc_msgSend_dropCap(self, a2, v2);
  v7 = objc_msgSend_wrapType(v4, v5, v6);

  if (v7 == 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPDropCapAdornment p_createWrapSegments]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapAdornment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1363, 0, "Should not generate wrap segments if wrap type is none");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_p_paddedPathForExteriorWrap(self, v8, v9);
  v18 = objc_alloc(MEMORY[0x277D803F0]);
  v20 = objc_msgSend_initWithPath_(v18, v19, v17);

  return v20;
}

- (id)p_styleArrayWithFontSize:(double)a3
{
  v5 = objc_opt_new();
  v8 = objc_msgSend_dropCapStyle(self, v6, v7);

  if (v8)
  {
    v11 = [TSWPCharacterStyle alloc];
    v14 = objc_msgSend_dropCapStyle(self, v12, v13);
    v17 = objc_msgSend_context(v14, v15, v16);
    v19 = objc_msgSend_initWithContext_(v11, v18, v17);

    *&v20 = a3;
    objc_msgSend_setFloatValue_forProperty_(v19, v21, 17, v20);
    objc_msgSend_addObject_(v5, v22, v19);

    v25 = objc_msgSend_dropCapStyle(self, v23, v24);
    objc_msgSend_addObject_(v5, v26, v25);
  }

  v27 = objc_msgSend_characterStyle(self, v9, v10);

  if (v27)
  {
    v30 = objc_msgSend_characterStyle(self, v28, v29);
    objc_msgSend_addObject_(v5, v31, v30);
  }

  v32 = objc_msgSend_paragraphStyle(self, v28, v29);

  if (v32)
  {
    v35 = objc_msgSend_paragraphStyle(self, v33, v34);
    objc_msgSend_addObject_(v5, v36, v35);
  }

  return v5;
}

- (id)paddedPathForExteriorWrap
{
  v4 = objc_msgSend_dropCap(self, a2, v2);
  v7 = objc_msgSend_wrapType(v4, v5, v6);

  if (v7 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_p_paddedPathForExteriorWrap(self, v8, v9);
  }

  return v10;
}

- (NSString)debugDescription
{
  v41 = MEMORY[0x277CCACA8];
  v40 = objc_opt_class();
  v39 = objc_msgSend_dropCap(self, v3, v4);
  v43 = objc_msgSend_text(self, v5, v6);
  v42 = objc_msgSend_dropCapStyle(self, v7, v8);
  objc_msgSend_bounds(self, v9, v10);
  v37 = NSStringFromCGRect(v45);
  v13 = objc_msgSend_characterStyle(self, v11, v12);
  v38 = objc_msgSend_paragraphStyle(self, v14, v15);
  objc_msgSend_dropCapFrame(self, v16, v17);
  v18 = NSStringFromCGRect(v46);
  objc_msgSend_textFrame(self, v19, v20);
  v21 = NSStringFromCGRect(v47);
  objc_msgSend_insetTextFrame(self, v22, v23);
  v24 = NSStringFromCGRect(v48);
  v27 = objc_msgSend_glyphPaths(self, v25, v26);
  v30 = objc_msgSend_glyphAuthorColors(self, v28, v29);
  v33 = objc_msgSend_shapePath(self, v31, v32);
  v35 = objc_msgSend_stringWithFormat_(v41, v34, @"(%@*)%p dropCap:%p\ntext:%@\ndropCapStyle:%p\nbounds:%@\ncharacterStyle:%p\nparagraphStyle:%p\ndropCapFrame:%@\ntextFrame:%@\ninsetTextFrame:%@\nglyphPaths:%p\nauthorColors:%p\nshapePath:%p\n", v40, self, v39, v43, v42, v37, v13, v38, v18, v21, v24, v27, v30, v33);

  return v35;
}

- (TSWPFontHeightInfo)heightInfo
{
  v3 = *&self[4].spaceAfter;
  *&retstr->descent = *&self[4].leadingAbove;
  *&retstr->leadingBelow = v3;
  v4 = *&self[4].underlineThickness;
  *&retstr->verticalHeight = *&self[4].xHeight;
  *&retstr->underlinePosition = v4;
  v5 = *&self[4].capHeight;
  *&retstr->spaceBefore = *&self[4].attachmentHeight;
  *&retstr->ascent = v5;
  return self;
}

- (void)setHeightInfo:(TSWPFontHeightInfo *)a3
{
  v3 = *&a3->ascent;
  *&self->_heightInfo.spaceBefore = *&a3->spaceBefore;
  *&self->_heightInfo.ascent = v3;
  v4 = *&a3->descent;
  v5 = *&a3->leadingBelow;
  v6 = *&a3->underlinePosition;
  *&self->_heightInfo.verticalHeight = *&a3->verticalHeight;
  *&self->_heightInfo.underlinePosition = v6;
  *&self->_heightInfo.descent = v4;
  *&self->_heightInfo.leadingBelow = v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)rectAllocatedForUnderline
{
  x = self->_rectAllocatedForUnderline.origin.x;
  y = self->_rectAllocatedForUnderline.origin.y;
  width = self->_rectAllocatedForUnderline.size.width;
  height = self->_rectAllocatedForUnderline.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)characterFillRect
{
  x = self->_characterFillRect.origin.x;
  y = self->_characterFillRect.origin.y;
  width = self->_characterFillRect.size.width;
  height = self->_characterFillRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSWPFontHeightInfo)unscaledFontHeightInfo
{
  v3 = *&self[5].spaceAfter;
  *&retstr->descent = *&self[5].leadingAbove;
  *&retstr->leadingBelow = v3;
  v4 = *&self[5].underlineThickness;
  *&retstr->verticalHeight = *&self[5].xHeight;
  *&retstr->underlinePosition = v4;
  v5 = *&self[5].capHeight;
  *&retstr->spaceBefore = *&self[5].attachmentHeight;
  *&retstr->ascent = v5;
  return self;
}

- (void)setUnscaledFontHeightInfo:(TSWPFontHeightInfo *)a3
{
  v3 = *&a3->ascent;
  *&self->_unscaledFontHeightInfo.spaceBefore = *&a3->spaceBefore;
  *&self->_unscaledFontHeightInfo.ascent = v3;
  v4 = *&a3->descent;
  v5 = *&a3->leadingBelow;
  v6 = *&a3->underlinePosition;
  *&self->_unscaledFontHeightInfo.verticalHeight = *&a3->verticalHeight;
  *&self->_unscaledFontHeightInfo.underlinePosition = v6;
  *&self->_unscaledFontHeightInfo.descent = v4;
  *&self->_unscaledFontHeightInfo.leadingBelow = v5;
}

- (CGRect)dropCapFrame
{
  x = self->_dropCapFrame.origin.x;
  y = self->_dropCapFrame.origin.y;
  width = self->_dropCapFrame.size.width;
  height = self->_dropCapFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textFrame
{
  x = self->_textFrame.origin.x;
  y = self->_textFrame.origin.y;
  width = self->_textFrame.size.width;
  height = self->_textFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)insetTextFrame
{
  x = self->_insetTextFrame.origin.x;
  y = self->_insetTextFrame.origin.y;
  width = self->_insetTextFrame.size.width;
  height = self->_insetTextFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)glyphOffset
{
  x = self->_glyphOffset.x;
  y = self->_glyphOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
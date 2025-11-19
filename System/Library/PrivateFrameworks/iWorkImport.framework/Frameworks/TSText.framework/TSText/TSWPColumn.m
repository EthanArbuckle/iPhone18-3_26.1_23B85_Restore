@interface TSWPColumn
+ ($10B7A9D486B2AF6DC4FEF2BBDFC96885)pencilAnnotationLineMetricsAtCharIndex:(SEL)a3 withColumns:(unint64_t)a4;
+ (BOOL)partitionedAttachmentStartsAtCharIndex:(unint64_t)a3 withColumns:(id)a4;
+ (CGPoint)connectionLinePointForChangeRange:(_NSRange)a3 withColumns:(id)a4 layoutTarget:(id)a5;
+ (CGPoint)p_pinPoint:(CGPoint)a3 toRect:(CGRect)a4;
+ (CGPoint)pinPoint:(CGPoint)a3 toBottomOfLineFragmentInColumns:(id)a4;
+ (CGPoint)pinToNaturalBounds:(CGPoint)a3 andLastLineFragment:(BOOL)a4 inLayoutTarget:(id)a5;
+ (CGRect)boundsRectForSelection:(id)a3 columnArray:(id)a4;
+ (CGRect)boundsRectForSelection:(id)a3 columnArray:(id)a4 includeRuby:(BOOL)a5 includePaginatedAttachments:(BOOL)a6;
+ (CGRect)caretRectForSelection:(id)a3 withColumns:(id)a4;
+ (CGRect)columnRectForRange:(_NSRange)a3 withColumns:(id)a4;
+ (CGRect)frameBoundsOfColumns:(id)a3;
+ (CGRect)labelRectForCharIndex:(unint64_t)a3 withColumns:(id)a4;
+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4;
+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4 useParagraphModeRects:(BOOL)a5;
+ (CGRect)searchPositionCaretRectForInsertionPoint:(id)a3 withColumns:(id)a4;
+ (CGRect)untransformedCaretRectForInsertionPoint:(id)a3 withColumns:(id)a4;
+ (CGSize)layoutSizeForParagraphEnumerator:(const TSWPParagraphEnumerator *)a3 inColumns:(id)a4 lineCount:(unint64_t *)a5 nextLineOffset:(double *)a6;
+ (_NSRange)charRangeForPencilAnnotationStartPoint:(CGPoint)a3 toEndPoint:(CGPoint)a4 inLayoutTarget:(id)a5 onSingleLineFragment:(BOOL)a6;
+ (_NSRange)rangeOfColumns:(id)a3;
+ (id)closestColumnInColumnsArray:(id)a3 forPoint:(CGPoint)a4 ignoreEmptyColumns:(BOOL)a5 ignoreDrawableOnlyColumns:(BOOL)a6;
+ (id)columnForCharIndex:(unint64_t)a3 allowEndOfColumn:(BOOL)a4 withColumns:(id)a5;
+ (id)contentRectsToAvoidPencilAnnotationOverlapWithColumns:(id)a3;
+ (id)footnoteMarkAttachmentInColumnArray:(id)a3 atPoint:(CGPoint)a4;
+ (id)footnoteReferenceAttachmentInColumnArray:(id)a3 atPoint:(CGPoint)a4;
+ (id)pathForHighlightWithRange:(_NSRange)a3 columnArray:(id)a4 pathStyle:(unint64_t)a5;
+ (id)pathForHighlightWithSelection:(id)a3 columnArray:(id)a4 pathStyle:(unint64_t)a5;
+ (id)pencilAnnotationRectsForSelection:(id)a3 withColumns:(id)a4 outRanges:(id *)a5;
+ (id)selectionRectsforColumns:(id)a3 forSelection:(id)a4;
+ (id)smartFieldWithAttributeKind:(unint64_t)a3 inColumnArray:(id)a4 atPoint:(CGPoint)a5;
+ (unint64_t)charIndexForPoint:(CGPoint)a3 inColumnsArray:(id)a4 hitTestMode:(int)a5 isAtEndOfLine:(BOOL *)a6 leadingEdge:(BOOL *)a7;
+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 inLayoutTarget:(id)a4;
+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 isTail:(BOOL)a4 selectionType:(int64_t)a5 inLayoutTarget:(id)a6;
+ (unint64_t)charIndexFromPoint:(CGPoint)a3 hitTestMode:(int)a4 isAtEndOfLine:(BOOL *)a5 leadingEdge:(BOOL *)a6 inLayoutTarget:(id)a7;
+ (void)enumerateColumns:(id)a3 withBlock:(id)a4;
- ($10B7A9D486B2AF6DC4FEF2BBDFC96885)lineMetricsAtCharIndex:(SEL)a3 allowEndOfLine:(unint64_t)a4;
- (BOOL)hasPartitionedAttachmentContinuationAt:(int)a3;
- (BOOL)isLastLineFragmentPartitioned;
- (BOOL)lastLineIsEmptyAndHasListLabel;
- (BOOL)onlyHasAnchoredDrawable;
- (BOOL)onlyHasPartitionedAttachments;
- (BOOL)p_isFirstPartitionForCharIndex:(unint64_t)a3;
- (BOOL)requiresGlyphVectorsForHeightMeasurement;
- (CGAffineTransform)transformFromWP;
- (CGRect)boundsIncludingDropCapRectsForSelectionType:(int64_t)a3;
- (CGRect)boundsOfLineFragmentAtIndex:(unint64_t)a3;
- (CGRect)caretRectForSelection:(id)a3;
- (CGRect)changeBarRectForLineFragment:(const void *)a3 layoutTarget:(id)a4;
- (CGRect)columnRectForRange:(_NSRange)a3;
- (CGRect)erasableBounds:(unint64_t)a3;
- (CGRect)erasableRectForSelectionRange:(_NSRange)a3;
- (CGRect)firstRectForSelection:(id)a3 includeSpaceAfter:(BOOL)a4 includeSpaceBefore:(BOOL)a5 includeLeading:(BOOL)a6;
- (CGRect)frameBounds;
- (CGRect)glyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)a3 glyphRange:(_NSRange)a4;
- (CGRect)p_untransformedCaretRectForSelection:(id)a3;
- (CGRect)rawGlyphRectOfRange:(_NSRange)a3;
- (CGRect)typographicBounds;
- (CGRect)wpBounds;
- (CGSize)maxSize;
- (TSWPColumn)initWithStorage:(id)a3 frameBounds:(CGRect)a4;
- (TSWPFontHeightInfo)fontHeightInfoAtCharIndex:(SEL)a3;
- (TSWPStyleProvider)styleProvider;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (_NSRange)rangeOfLineFragmentAtIndex:(unint64_t)a3;
- (_TSWPCharIndexAndPosition)calcAttachmentPositionForDrawable:(SEL)a3 atPoint:(id)a4 inTextLayoutTarget:(CGPoint)a5 startOfBoundsInfluencingWrap:(id)a6 wrapOutset:(CGPoint)a7 wrapMargin:(CGSize)a8 makeInline:(double)a9;
- (_TSWPCharIndexAndPosition)p_calcAnchoredPosition:(SEL)a3 forCharIndex:(_TSWPCharIndexAndPosition *)a4 inClosestLineFragment:(unint64_t)a5 atPoint:(const void *)a6 inTextLayoutTarget:(CGPoint)a7 startOfBoundsInfluencingWrap:(id)a8 wrapOutset:(CGPoint)a9 wrapMargin:(CGSize)a10 placeholderField:(double)a11;
- (_TSWPCharIndexAndPosition)p_calcInlinePosition:(SEL)a3 forCharIndex:(_TSWPCharIndexAndPosition *)a4;
- (_TSWPCharIndexAndPosition)p_calcPartitionablePosition:(SEL)a3 forCharIndex:(_TSWPCharIndexAndPosition *)a4 inClosestLineFragment:(unint64_t)a5 startOfBoundsInfluencingWrap:(const void *)a6;
- (const)nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)a3 xPos:(double)a4;
- (const)pColumnEndingPartitionedLineFragmentInSelectionRange:(_NSRange)a3;
- (double)horizontalOffsetForCharIndex:(unint64_t)a3 lineFragmentIndex:(unint64_t)a4 bumpPastHyphen:(BOOL)a5 allowPastLineBounds:(BOOL)a6;
- (double)minimumHeightForLayoutOnPage;
- (double)textBlockBottom;
- (double)textHeight;
- (id).cxx_construct;
- (id)drawableIntersectionRectsForSelection:(id)a3 inTarget:(id)a4;
- (id)initForTestingWithStorage:(id)a3 frameBounds:(CGRect)a4;
- (id)layoutsForInlineDrawables:(id)a3;
- (id)lineSelectionsForSelection:(id)a3;
- (id)pMutableRectsForSelectionRanges:(id)a3 selectionType:(int64_t)a4 includeSpaceAfter:(BOOL)a5 includeSpaceBefore:(BOOL)a6 includeLeading:(BOOL)a7 forParagraphMode:(BOOL)a8 includeRuby:(BOOL)a9 includePaginatedAttachments:(BOOL)a10 outranges:(id *)a11;
- (id)pTransformReturnRects:(id)a3;
- (id)p_glyphRectsForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (id)partitionedLayoutForInfo:(id)a3;
- (id)partitionedLayoutOfLineFragmentAtIndex:(unint64_t)a3;
- (id)rectsForSelection:(id)a3 ranges:(id *)a4;
- (id)rectsForSelection:(id)a3 ranges:(id *)a4 includePaginatedAttachments:(BOOL)a5;
- (id)rectsForSelectionRange:(_NSRange)a3 selectionType:(int64_t)a4 forParagraphMode:(BOOL)a5 includeRuby:(BOOL)a6 includePaginatedAttachments:(BOOL)a7;
- (id)rectsForSelectionRanges:(id)a3 selectionType:(int64_t)a4;
- (id)rectsForSelectionRanges:(id)a3 selectionType:(int64_t)a4 forParagraphMode:(BOOL)a5 includeRuby:(BOOL)a6 includePaginatedAttachments:(BOOL)a7;
- (id)singleLinePartitionedInfoAtStart:(BOOL)a3;
- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4;
- (id)textAdornmentOfLineFragmentAtIndex:(unint64_t)a3;
- (unint64_t)charIndexForSelectionFromPoint:(CGPoint)a3 isTail:(BOOL)a4;
- (unint64_t)charIndexFromPoint:(CGPoint)a3 hitTestMode:(int)a4 isAtEndOfLine:(BOOL *)a5 outFragment:(const TSWPLineFragment *)a6 leadingEdge:(BOOL *)a7;
- (unint64_t)charIndexFromWPPoint:(CGPoint)a3 hitTestMode:(int)a4 outFragment:(const TSWPLineFragment *)a5 leadingEdge:(BOOL *)a6;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)a3;
- (unint64_t)lineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4;
- (unint64_t)pRemapCharIndex:(unint64_t)a3 outIsAfterBreak:(BOOL *)a4 outWithTextSource:(id *)a5;
- (unint64_t)p_charIndexWithTextClosestToWPPoint:(CGPoint)a3 pastCenterGoesToNextChar:(BOOL)a4 outFragment:(const TSWPLineFragment *)a5 leadingEdge:(BOOL *)a6;
- (unsigned)fontTraitsForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (unsigned)hyphenCharOfLineFragmentAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)enumerateParagraphAdornmentsUsingBlock:(id)a3;
- (void)incrementRanges:(int64_t)a3 startingAt:(unint64_t)a4;
- (void)makeEmpty:(unint64_t)a3 anchoredRange:(_NSRange)a4 layoutResultFlags:(unint64_t)a5;
- (void)offsetLineFragmentsBy:(CGSize)a3;
- (void)pInfoForCharIndex:(unint64_t)a3 isAtStart:(BOOL *)a4 isAtEnd:(BOOL *)a5;
- (void)renderWithRenderer:(id)a3 currentSelection:(id)a4 limitSelection:(id)a5 listRange:(_NSRange)a6 rubyGlyphRange:(_NSRange)a7 isCanvasInteractive:(BOOL)a8 isInDrawingMode:(BOOL)a9 suppressedMisspellingRange:(_NSRange)a10 blackAndWhite:(BOOL)a11 dictationInterpretations:(id)a12 autocorrections:(id)a13 markedRange:(_NSRange)a14 markedText:(id)a15 renderMode:(unint64_t)a16 pageCount:(unint64_t)a17 suppressInvisibles:(BOOL)a18 currentCanvasSelection:(id)a19;
- (void)setAnchoredRange:(_NSRange)a3;
- (void)setLineFragmentArray:(const void *)a3;
- (void)setRange:(_NSRange)a3;
- (void)setTransformFromWP:(CGAffineTransform *)a3;
- (void)trimToCharIndex:(unint64_t)a3 inTarget:(id)a4 removeFootnoteReferenceCount:(unint64_t)a5 removeAutoNumberFootnoteCount:(unint64_t)a6;
@end

@implementation TSWPColumn

- (BOOL)lastLineIsEmptyAndHasListLabel
{
  ptr = self->_lineFragmentArray.__ptr_;
  if (ptr)
  {
    ptr = sub_276D6F7D8(ptr);
    if (ptr)
    {
      LOBYTE(ptr) = (*(sub_276D6F7E8(self->_lineFragmentArray.__ptr_, ptr - 1) + 24) & 0x2004800) == 33570816;
    }
  }

  return ptr;
}

+ (id)contentRectsToAvoidPencilAnnotationOverlapWithColumns:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(v3, v5, v6))
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = v3;
    v9 = v3;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v42, v46, 16);
    if (v13)
    {
      v14 = *v43;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          v17 = objc_msgSend_range(v16, v11, v12);
          v19 = v18;
          v21 = objc_msgSend_storage(v16, v18, v20);
          LODWORD(v17) = &v19[v17] > objc_msgSend_length(v21, v22, v23);

          if (v17)
          {
            v32 = MEMORY[0x277D81150];
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "+[TSWPColumn contentRectsToAvoidPencilAnnotationOverlapWithColumns:]");
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 125, 0, "stale column range beyond end of storage");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
            goto LABEL_12;
          }

          v26 = objc_msgSend_range(v16, v24, v25);
          objc_msgSend_columnRectForRange_(v16, v27, v26, v27);
          v30 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v28, v29);
          objc_msgSend_addObject_(v4, v31, v30);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v42, v46, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v3 = v41;
  }

  v39 = objc_msgSend_copy(v4, v7, v8);

  return v39;
}

+ (id)pencilAnnotationRectsForSelection:(id)a3 withColumns:(id)a4 outRanges:(id *)a5
{
  v132 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v7 = a4;
  v91 = a5;
  if (a5)
  {
    v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v98 = 0;
  }

  v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_firstObject(v7, v8, v9);
  v13 = objc_msgSend_storage(v10, v11, v12);

  v96 = v13;
  isAllWhitespaceInSelection = objc_msgSend_isAllWhitespaceInSelection_(v13, v14, v95);
  v17 = objc_msgSend_dropCapCharIndexesInSelection_(v13, v16, v95);
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 0;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = sub_276D50BFC;
  v126[3] = &unk_27A6F37F0;
  v126[5] = &v127;
  v90 = v17;
  v126[4] = v17;
  objc_msgSend_enumerateRanges_(v95, v18, v126);
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v7;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v122, v131, 16);
  if (v20)
  {
    v94 = *v123;
    while (2)
    {
      v93 = v20;
      for (i = 0; i != v93; ++i)
      {
        if (*v123 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v122 + 1) + 8 * i);
        v25 = objc_msgSend_range(v24, v21, v22);
        if (&v28[v25] > objc_msgSend_length(v96, v28, v26))
        {
          v72 = MEMORY[0x277D81150];
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "+[TSWPColumn pencilAnnotationRectsForSelection:withColumns:outRanges:]");
          v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v76, v73, v75, 154, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78);
          goto LABEL_26;
        }

        v121 = 0;
        v29 = objc_msgSend_rectsForSelection_ranges_includePaginatedAttachments_(v24, v27, v95, &v121, 1);
        v30 = v121;
        v33 = objc_msgSend_count(v30, v31, v32);
        if (v33 != objc_msgSend_count(v29, v34, v35))
        {
          TSUSetCrashReporterInfo();
          v84 = MEMORY[0x277D81150];
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "+[TSWPColumn pencilAnnotationRectsForSelection:withColumns:outRanges:]", "+[TSWPColumn pencilAnnotationRectsForSelection:withColumns:outRanges:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm", 160);
          v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v89, v86, v88, 160, 1, "Expected equal count");

          TSUCrashBreakpoint();
          abort();
        }

        v39 = objc_msgSend_count(v29, v36, v37);
        if (v39)
        {
          for (j = 0; j != v39; ++j)
          {
            v41 = objc_msgSend_objectAtIndexedSubscript_(v29, v38, j);
            objc_msgSend_CGRectValue(v41, v42, v43);
            v45 = v44;
            y = v46;
            v49 = v48;
            height = v50;

            v53 = objc_msgSend_objectAtIndexedSubscript_(v30, v52, j);
            v56 = objc_msgSend_rangeValue(v53, v54, v55);
            v58 = v57;

            if ((isAllWhitespaceInSelection & 1) != 0 || (objc_msgSend_isAllWhitespaceInRange_(v96, v38, v56, v58) & 1) == 0)
            {
              v120 = 0;
              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              if (v24)
              {
                objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v24, v38, v56, 0);
                if (*(&v103 + 1) != 0.0 && *(&v104 + 1) != 0.0 && (v128[3] & 1) == 0)
                {
                  objc_msgSend_transformToWP(v24, v38, v59, *(&v104 + 1));
                  v60 = *(&v103 + 1);
                  v61 = *(&v104 + 1);
                  v134.origin.x = v45;
                  v134.origin.y = y;
                  v134.size.width = v49;
                  v134.size.height = height;
                  v135 = CGRectApplyAffineTransform(v134, &v99);
                  x = v135.origin.x;
                  width = v135.size.width;
                  v64 = *&v102;
                  objc_msgSend_transformFromWP(v24, v65, v66);
                  v136.size.height = v60 + v61;
                  v136.origin.y = v64 - v60;
                  v136.origin.x = x;
                  v136.size.width = width;
                  v137 = CGRectApplyAffineTransform(v136, &v99);
                  v45 = v137.origin.x;
                  y = v137.origin.y;
                  v49 = v137.size.width;
                  height = v137.size.height;
                }
              }

              v67 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v38, v59, v45, y, v49, height);
              objc_msgSend_addObject_(v97, v68, v67);

              v70 = objc_msgSend_objectAtIndexedSubscript_(v30, v69, j);
              objc_msgSend_addObject_(v98, v71, v70);
            }
          }
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v122, v131, 16);
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  if (v91)
  {
    v81 = v98;
    *v91 = v98;
  }

  v82 = objc_msgSend_copy(v97, v79, v80);
  _Block_object_dispose(&v127, 8);

  return v82;
}

+ ($10B7A9D486B2AF6DC4FEF2BBDFC96885)pencilAnnotationLineMetricsAtCharIndex:(SEL)a3 withColumns:(unint64_t)a4
{
  v7 = objc_msgSend_columnForCharIndex_allowEndOfColumn_withColumns_(TSWPColumn, a3, a4, 0, a5);
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  *&retstr->var1 = 0u;
  *&retstr->var2.attachmentHeight = 0u;
  *&retstr->var2.capHeight = 0u;
  *&retstr->var2.leadingAbove = 0u;
  *&retstr->var2.spaceAfter = 0u;
  *&retstr->var2.xHeight = 0u;
  *&retstr->var2.underlineThickness = 0u;
  retstr->var4.origin = 0u;
  retstr->var4.size = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var6.attachmentHeight = 0u;
  *&retstr->var6.capHeight = 0u;
  *&retstr->var6.leadingAbove = 0u;
  *&retstr->var6.spaceAfter = 0u;
  *&retstr->var6.xHeight = 0u;
  *&retstr->var6.underlineThickness = 0u;
  *&retstr->var7.b = 0u;
  *&retstr->var7.d = 0u;
  retstr->var7.ty = 0.0;
  v10 = v7;
  if (v7)
  {
    objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v7, v8, a4, 0);
  }

  return result;
}

+ (CGRect)frameBoundsOfColumns:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v44, 16);
  if (v12)
  {
    v13 = *v41;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = objc_msgSend_range(v15, v10, v11, v40);
        v18 = v17;
        v20 = objc_msgSend_storage(v15, v17, v19);
        LODWORD(v16) = &v18[v16] > objc_msgSend_length(v20, v21, v22);

        if (v16)
        {
          v29 = MEMORY[0x277D81150];
          v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "+[TSWPColumn frameBoundsOfColumns:]");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 295, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
          goto LABEL_11;
        }

        objc_msgSend_frameBounds(v15, v23, v24);
        v49.origin.x = v25;
        v49.origin.y = v26;
        v49.size.width = v27;
        v49.size.height = v28;
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        v47 = CGRectUnion(v46, v49);
        x = v47.origin.x;
        y = v47.origin.y;
        width = v47.size.width;
        height = v47.size.height;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v40, v44, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v36 = x;
  v37 = y;
  v38 = width;
  v39 = height;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

+ (CGRect)untransformedCaretRectForInsertionPoint:(id)a3 withColumns:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v6;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v44, v48, 16);
  if (v13)
  {
    v14 = 0;
    v15 = *v45;
    while (2)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v44 + 1) + 8 * v16);

        v20 = objc_msgSend_range(v14, v18, v19, v44);
        v22 = v21;
        v24 = objc_msgSend_storage(v14, v21, v23);
        LODWORD(v20) = &v22[v20] > objc_msgSend_length(v24, v25, v26);

        if (v20)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "+[TSWPColumn untransformedCaretRectForInsertionPoint:withColumns:]");
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 311, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
          goto LABEL_14;
        }

        objc_msgSend_p_untransformedCaretRectForSelection_(v14, v27, v5);
        v7 = v30;
        v8 = v31;
        v9 = v29;
        v10 = v32;
        if (v32 > 0.0)
        {
          v9 = fmax(v29, 1.0);
          goto LABEL_14;
        }

        ++v16;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v28, &v44, v48, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v10;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

+ (CGRect)searchPositionCaretRectForInsertionPoint:(id)a3 withColumns:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_untransformedCaretRectForInsertionPoint_withColumns_(a1, v8, v6, v7);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  if (!CGRectIsNull(v65) && objc_msgSend_count(v7, v13, v14))
  {
    if (objc_msgSend_caretLFAffinity(v6, v15, v16) == 1)
    {
      v19 = 1;
    }

    else
    {
      v20 = objc_msgSend_end(v6, v17, v18);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v7, v21, 0);
      v25 = objc_msgSend_storage(v22, v23, v24);
      v19 = v20 == objc_msgSend_length(v25, v26, v27);
    }

    v28 = objc_msgSend_start(v6, v17, v18);
    v32 = objc_msgSend_columnForCharIndex_allowEndOfColumn_withColumns_(TSWPColumn, v29, v28, v19, v7);
    if (v32)
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(&v46, 0, sizeof(v46));
      v33 = objc_msgSend_start(v6, v30, v31);
      objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v32, v34, v33, v19);
      v66.origin = 0u;
      v66.size = 0u;
      if (!CGRectIsNull(v66))
      {
        a = v46.a;
        b = v46.b;
        c = v46.c;
        d = v46.d;
        objc_msgSend_transformToWP(v32, v35, v36);
        v67.origin.x = a;
        v67.origin.y = b;
        v67.size.width = c;
        v67.size.height = d;
        v68 = CGRectApplyAffineTransform(v67, &v45);
        y = v68.origin.y;
      }

      objc_msgSend_transformFromWP(v32, v35, v36);
    }

    else
    {
      memset(&v46, 0, sizeof(v46));
    }

    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v70 = CGRectApplyAffineTransform(v69, &v46);
    x = v70.origin.x;
    y = v70.origin.y;
    width = v70.size.width;
    height = v70.size.height;
  }

  v41 = x;
  v42 = y;
  v43 = width;
  v44 = height;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

+ (CGRect)caretRectForSelection:(id)a3 withColumns:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if ((objc_msgSend_isInsertionPoint(v5, v11, v12) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSWPColumn caretRectForSelection:withColumns:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 348, 0, "Non-insertion point");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if (objc_msgSend_isInsertionPoint(v5, v13, v14))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v6;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v40, 16);
    if (v25)
    {
      v26 = *v37;
      do
      {
        v27 = 0;
        do
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v22);
          }

          objc_msgSend_caretRectForSelection_(*(*(&v36 + 1) + 8 * v27), v24, v5, v36);
          v45.origin.x = v28;
          v45.origin.y = v29;
          v45.size.width = v30;
          v45.size.height = v31;
          v42.origin.x = x;
          v42.origin.y = y;
          v42.size.width = width;
          v42.size.height = height;
          v43 = CGRectUnion(v42, v45);
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;
          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v36, v40, 16);
      }

      while (v25);
    }
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

+ (CGRect)boundsRectForSelection:(id)a3 columnArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_isInsertionPoint(v6, v12, v13))
  {
    objc_msgSend_caretRectForSelection_withColumns_(a1, v14, v6, v7);
LABEL_5:
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    goto LABEL_6;
  }

  if (objc_msgSend_isValid(v6, v14, v15))
  {
    objc_msgSend_boundsRectForSelection_columnArray_includeRuby_includePaginatedAttachments_(a1, v20, v6, v7, 0, 0);
    goto LABEL_5;
  }

LABEL_6:

  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4
{
  MEMORY[0x2821F9670](a1, sel_rectForSelection_withColumns_useParagraphModeRects_, a3);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4 useParagraphModeRects:(BOOL)a5
{
  v146 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v137 = 0;
  v138 = &v137;
  v139 = 0x5012000000;
  v140 = sub_276D51E4C;
  v141 = nullsub_2;
  v142 = &unk_276FDE562;
  v8 = *(MEMORY[0x277CBF398] + 16);
  v143 = *MEMORY[0x277CBF398];
  v144 = v8;
  if (!objc_msgSend_isValid(v6, v9, v10))
  {
    goto LABEL_42;
  }

  v13 = objc_msgSend_firstObject(v7, v11, v12);
  v124 = v7;
  v14 = v13 == 0;

  if (v14)
  {
    goto LABEL_41;
  }

  v17 = objc_msgSend_firstObject(v124, v15, v16);
  v126 = objc_msgSend_storage(v17, v18, v19);

  if (!v126)
  {
    goto LABEL_40;
  }

  v22 = objc_msgSend_insertionCharIndex(v6, v20, v21);
  if (v22 > objc_msgSend_length(v126, v23, v24))
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSWPColumn rectForSelection:withColumns:useParagraphModeRects:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 381, 0, "selection is past the end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  if (objc_msgSend_isInsertionPoint(v6, v25, v26, v124) && (v36 = objc_msgSend_insertionCharIndex(v6, v34, v35), v36 <= objc_msgSend_length(v126, v37, v38)))
  {
    v42 = v124;
    Range = objc_msgSend_firstRange(v6, v39, v40);
    v92 = objc_msgSend_wordAtCharIndex_includePreviousWord_(v126, v89, Range, 1);
    if (v92 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = 0;
      goto LABEL_10;
    }

    v93 = v90;
    v94 = objc_msgSend_firstRange(v6, v90, v91);
    v97 = objc_msgSend_isAtEndOfLine(v6, v95, v96);
    v101 = objc_msgSend_columnForCharIndex_allowEndOfColumn_withColumns_(TSWPColumn, v98, v94, v97, v124);
    if (v101 && (v102 = objc_msgSend_firstRange(v6, v99, v100), v105 = objc_msgSend_isAtEndOfLine(v6, v103, v104), v107 = objc_msgSend_lineIndexForCharIndex_eol_(v101, v106, v102, v105), v107 == objc_msgSend_lineIndexForCharIndex_eol_(v101, v108, v92, 0)) && (v111 = objc_msgSend_isAtEndOfLine(v6, v109, v110), v107 == objc_msgSend_lineIndexForCharIndex_eol_(v101, v112, &v93[v92], v111)))
    {
      v114 = objc_msgSend_copyWithNewRange_(v6, v113, v92, v93);

      v41 = 1;
      v6 = v114;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = v124;
LABEL_10:
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v43 = v42;
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v133, v145, 16);
  if (!v47)
  {
    goto LABEL_39;
  }

  v48 = *v134;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v134 != v48)
      {
        objc_enumerationMutation(v43);
      }

      v50 = *(*(&v133 + 1) + 8 * i);
      v51 = objc_msgSend_range(v50, v45, v46);
      v53 = v52;
      v55 = objc_msgSend_storage(v50, v52, v54);
      LODWORD(v51) = &v53[v51] > objc_msgSend_length(v55, v56, v57);

      if (v51)
      {
        v81 = MEMORY[0x277D81150];
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "+[TSWPColumn rectForSelection:withColumns:useParagraphModeRects:]");
        v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 403, 0, "stale column range beyond end of storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
        goto LABEL_39;
      }

      if (objc_msgSend_isInsertionPoint(v6, v58, v59))
      {
        objc_msgSend_caretRectForSelection_(v50, v60, v6);
        v62 = v138;
        v138[6] = v63;
        v62[7] = v64;
        v62[8] = v65;
        v62[9] = v66;
        if (objc_msgSend_textIsVertical(v50, v67, v68))
        {
          if (*(v138 + 8) > 0.0)
          {
            v115 = 9;
LABEL_38:
            *&v138[v115] = fmax(*&v138[v115], 1.0);
            goto LABEL_39;
          }
        }

        else if (*(v138 + 9) > 0.0)
        {
          v115 = 8;
          goto LABEL_38;
        }
      }

      else
      {
        v69 = objc_msgSend_range(v50, v60, v61);
        v71 = v70;
        v73 = objc_msgSend_lineCount(v50, v70, v72);
        if (v73 && (*(objc_msgSend_lineFragmentAtIndex_(v50, v74, v73 - 1) + 24) & 0x101) == 1)
        {
          ++v71;
        }

        v76 = objc_msgSend_ranges(v6, v74, v75);
        v78 = objc_msgSend_rangesIntersecting_(v76, v77, v69, v71);

        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = sub_276D51E5C;
        v127[3] = &unk_27A6F3F70;
        v127[4] = v50;
        v128 = v6;
        v79 = v126;
        v131 = a5;
        v132 = v41;
        v129 = v79;
        v130 = &v137;
        objc_msgSend_enumerateRanges_(v78, v80, v127);
      }
    }

    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v133, v145, 16);
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_39:

LABEL_40:
LABEL_41:
  v7 = v124;
LABEL_42:
  v116 = *(v138 + 6);
  v117 = *(v138 + 7);
  v118 = *(v138 + 8);
  v119 = *(v138 + 9);
  _Block_object_dispose(&v137, 8);

  v120 = v116;
  v121 = v117;
  v122 = v118;
  v123 = v119;
  result.size.height = v123;
  result.size.width = v122;
  result.origin.y = v121;
  result.origin.x = v120;
  return result;
}

- (CGRect)boundsIncludingDropCapRectsForSelectionType:(int64_t)a3
{
  v45 = *MEMORY[0x277D85DE8];
  objc_msgSend_frameBounds(self, a2, a3);
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v15 = objc_msgSend_storage(self, v13, v14);
  v18 = objc_msgSend_range(self, v16, v17);
  v20 = objc_msgSend_dropCapCharIndexesInRange_(v15, v19, v18, v19);

  v23 = objc_msgSend_rangeArray(TSWPMutableRangeArray, v21, v22);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_276D52354;
  v43[3] = &unk_27A6F3ED0;
  v43[4] = self;
  v43[5] = v23;
  objc_msgSend_enumerateIndexesUsingBlock_(v20, v24, v43);
  if (objc_msgSend_rangeCount(v23, v25, v26))
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = objc_msgSend_rectsForSelectionRanges_selectionType_(self, v27, v23, a3, 0);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v39, v44, 16);
    if (v32)
    {
      v33 = *v40;
      do
      {
        v34 = 0;
        do
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend_CGRectValue(*(*(&v39 + 1) + 8 * v34), v30, v31);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v47 = CGRectUnion(v46, v49);
          x = v47.origin.x;
          y = v47.origin.y;
          width = v47.size.width;
          height = v47.size.height;
          ++v34;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v39, v44, 16);
      }

      while (v32);
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

+ (id)selectionRectsforColumns:(id)a3 forSelection:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v61 = a4;
  v5 = objc_opt_new();
  v8 = objc_msgSend_type(v61, v6, v7);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v57;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v66, v71, 16);
  if (v10)
  {
    v60 = *v67;
    while (2)
    {
      v59 = v10;
      for (i = 0; i != v59; ++i)
      {
        if (*v67 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v66 + 1) + 8 * i);
        v15 = objc_msgSend_range(v14, v11, v12);
        v17 = v16;
        v19 = objc_msgSend_storage(v14, v16, v18);
        v22 = &v17[v15] > objc_msgSend_length(v19, v20, v21);

        if (v22)
        {
          v49 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "+[TSWPColumn selectionRectsforColumns:forSelection:]");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 627, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
          goto LABEL_20;
        }

        objc_msgSend_boundsIncludingDropCapRectsForSelectionType_(v14, v23, v8);
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v34 = objc_msgSend_ranges(v61, v32, v33);
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v36 = objc_msgSend_rectsForSelectionRanges_selectionType_(v14, v35, v34, v8);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v62, v70, 16);
        if (v40)
        {
          v41 = *v63;
          do
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v63 != v41)
              {
                objc_enumerationMutation(v36);
              }

              objc_msgSend_CGRectValue(*(*(&v62 + 1) + 8 * j), v38, v39);
              v76.origin.x = v25;
              v76.origin.y = v27;
              v76.size.width = v29;
              v76.size.height = v31;
              v75 = CGRectIntersection(v74, v76);
              x = v75.origin.x;
              y = v75.origin.y;
              width = v75.size.width;
              height = v75.size.height;
              if (!CGRectIsNull(v75))
              {
                v47 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v38, v39, x, y, width, height);
                objc_msgSend_addObject_(v5, v48, v47);
              }
            }

            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v62, v70, 16);
          }

          while (v40);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v66, v71, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v5;
}

+ (CGPoint)connectionLinePointForChangeRange:(_NSRange)a3 withColumns:(id)a4 layoutTarget:(id)a5
{
  v6 = a5;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSWPColumn connectionLinePointForChangeRange:withColumns:layoutTarget:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 694, 0, "invalid nil value for '%{public}s'", "layoutTarget");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = *MEMORY[0x277D814D0];
  v15 = *(MEMORY[0x277D814D0] + 8);

  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

+ (id)closestColumnInColumnsArray:(id)a3 forPoint:(CGPoint)a4 ignoreEmptyColumns:(BOOL)a5 ignoreDrawableOnlyColumns:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = a3;
  v11 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v50, v54, 16);
  if (v14)
  {
    v15 = *v51;
    v16 = INFINITY;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v50 + 1) + 8 * i);
        v19 = objc_msgSend_range(v18, v12, v13);
        v21 = v20;
        v23 = objc_msgSend_storage(v18, v20, v22);
        LODWORD(v19) = &v21[v19] > objc_msgSend_length(v23, v24, v25);

        if (v19)
        {
          v40 = MEMORY[0x277D81150];
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "+[TSWPColumn closestColumnInColumnsArray:forPoint:ignoreEmptyColumns:ignoreDrawableOnlyColumns:]");
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 744, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
          goto LABEL_20;
        }

        objc_msgSend_frameBounds(v18, v26, v27);
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        if ((!v7 || objc_msgSend_lineCount(v18, v12, v13)) && (!v6 || objc_msgSend_lineCount(v18, v12, v13) != 1 || (*(objc_msgSend_lineFragmentAtIndex_(v18, v36, 0) + 24) & 0x40) == 0))
        {
          v58.origin.x = v29;
          v58.origin.y = v31;
          v58.size.width = v33;
          v58.size.height = v35;
          v57.x = x;
          v57.y = y;
          if (CGRectContainsPoint(v58, v57))
          {
            v47 = v18;

            v11 = v47;
            goto LABEL_20;
          }

          TSUClampPointInRect();
          TSUDistanceSquared();
          if (v37 < v16)
          {
            v38 = v37;
            v39 = v18;

            v11 = v39;
            v16 = v38;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v50, v54, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v11;
}

+ (_NSRange)charRangeForPencilAnnotationStartPoint:(CGPoint)a3 toEndPoint:(CGPoint)a4 inLayoutTarget:(id)a5 onSingleLineFragment:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10 = objc_msgSend_columns(a5, a2, a5);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v13 = objc_msgSend_firstObject(v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_transformToWP(v13, v14, v15);
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  v17 = v35;
  v18 = v36;
  v19 = v37;
  TSUMixPoints();
  v21 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(a1, v20, v10, 1, 0);
  v34 = 0;
  v24 = objc_msgSend_p_charIndexWithTextClosestToWPPoint_pastCenterGoesToNextChar_outFragment_leadingEdge_(v21, v22, 1, &v34, 0, *&v19 + v7 * *&v18 + *&v17 * v8, *(&v19 + 1) + v7 * *(&v18 + 1) + *(&v17 + 1) * v8);
  v25 = *&v19 + y * *&v18 + *&v17 * x;
  if (v6 && v21 && v34)
  {
    Char_outFragment_leadingEdge = sub_276D6A99C(v34, 1, 0, 0, 1, v25);
  }

  else
  {
    Char_outFragment_leadingEdge = objc_msgSend_p_charIndexWithTextClosestToWPPoint_pastCenterGoesToNextChar_outFragment_leadingEdge_(v21, v23, 1, 0, 0, v25, *(&v19 + 1) + y * *(&v18 + 1) + *(&v17 + 1) * x);
  }

  if (v24 <= Char_outFragment_leadingEdge)
  {
    v27 = Char_outFragment_leadingEdge;
  }

  else
  {
    v27 = v24;
  }

  if (v24 >= Char_outFragment_leadingEdge)
  {
    v28 = Char_outFragment_leadingEdge;
  }

  else
  {
    v28 = v24;
  }

  v29 = v27 - v28;

  v30 = v28;
  v31 = v29;
  result.length = v31;
  result.location = v30;
  return result;
}

+ (unint64_t)charIndexForPoint:(CGPoint)a3 inColumnsArray:(id)a4 hitTestMode:(int)a5 isAtEndOfLine:(BOOL *)a6 leadingEdge:(BOOL *)a7
{
  v9 = *&a5;
  y = a3.y;
  x = a3.x;
  v12 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(a1, a2, a4, (a5 >> 5) & 1, 1);
  v15 = v12;
  if ((v9 & 3) == 1 && (objc_msgSend_frameBounds(v12, v13, v14), v18.x = x, v18.y = y, !CGRectContainsPoint(v19, v18)))
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_(v15, v13, v9, a6, a7, x, y);
  }

  return v16;
}

+ (CGPoint)p_pinPoint:(CGPoint)a3 toRect:(CGRect)a4
{
  TSUClampPointInRect();
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)pinToNaturalBounds:(CGPoint)a3 andLastLineFragment:(BOOL)a4 inLayoutTarget:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v87 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v12 = objc_msgSend_geometry(v9, v10, v11);
  objc_msgSend_size(v12, v13, v14);
  TSURectWithSize();
  objc_msgSend_p_pinPoint_toRect_(a1, v15, v16, x, y, v17, v18, v19, v20);
  v77 = v22;
  v78 = v21;

  v25.f64[0] = v78;
  v25.f64[1] = v77;
  v76 = v25;
  if (v5)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = objc_msgSend_columns(v9, v23, v24);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v82, v86, 16);
    if (v30)
    {
      v31 = *v83;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v83 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v82 + 1) + 8 * i);
          v34 = objc_msgSend_range(v33, v28, v29);
          v36 = v35;
          v38 = objc_msgSend_storage(v33, v35, v37);
          LODWORD(v34) = &v36[v34] > objc_msgSend_length(v38, v39, v40);

          if (v34)
          {
            v43 = MEMORY[0x277D81150];
            v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSWPColumn pinToNaturalBounds:andLastLineFragment:inLayoutTarget:]");
            v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 824, 0, "stale column range beyond end of storage");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
            goto LABEL_22;
          }

          objc_msgSend_frameBounds(v33, v41, v42);
          v89.y = v77;
          v89.x = v78;
          if (CGRectContainsPoint(v90, v89))
          {
            v50 = objc_msgSend_lineCount(v33, v28, v29);
            if (v50)
            {
              objc_msgSend_boundsOfLineFragmentAtIndex_(v33, v51, v50 - 1);
              v55 = v54;
              v57 = v56;
              v59 = v58;
              v61 = v60;
              if (v33)
              {
                objc_msgSend_transformToWP(v33, v52, v53);
                v62 = v79.f64[1];
                v63 = v80.f64[1];
                v64 = v80.f64[0];
                v65 = v81.f64[1];
                v74 = v81.f64[0];
                v75 = v79.f64[0];
              }

              else
              {
                v65 = 0.0;
                v63 = 0.0;
                v62 = 0.0;
                v74 = 0.0;
                v75 = 0.0;
                v64 = 0.0;
              }

              v91.origin.x = v55;
              v91.origin.y = v57;
              v91.size.width = v59;
              v91.size.height = v61;
              MaxY = CGRectGetMaxY(v91);
              if (v65 + v77 * v63 + v62 * v78 > MaxY)
              {
                if (v33)
                {
                  objc_msgSend_transformFromWP(v33, v66, v67);
                  v68 = v79;
                  v69 = v80;
                  v70 = v81;
                }

                else
                {
                  v70 = 0uLL;
                  v68 = 0uLL;
                  v69 = 0uLL;
                }

                v76 = vaddq_f64(v70, vmlaq_n_f64(vmulq_n_f64(v69, MaxY), v68, v74 + v77 * v64 + v75 * v78));
              }
            }

            goto LABEL_22;
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v82, v86, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v72 = v76.f64[1];
  v71 = v76.f64[0];
  result.y = v72;
  result.x = v71;
  return result;
}

+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 inLayoutTarget:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_msgSend_pinToNaturalBounds_andLastLineFragment_inLayoutTarget_(a1, v8, 1, v7, x, y);
  v10 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_inLayoutTarget_(a1, v9, 4, 0, 0, v7);

  return v10;
}

+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 isTail:(BOOL)a4 selectionType:(int64_t)a5 inLayoutTarget:(id)a6
{
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v11 = a6;
  objc_msgSend_pinToNaturalBounds_andLastLineFragment_inLayoutTarget_(a1, v12, 1, v11, x, y);
  v14 = v13;
  v16 = v15;
  v19 = objc_msgSend_columns(v11, v17, v18);
  v21 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(TSWPColumn, v20, v19, 0, 1, v14, v16);

  if (v21)
  {
    isTail = objc_msgSend_charIndexForSelectionFromPoint_isTail_(v21, v22, v7, x, y);
    CharacterIndex = isTail;
    if (a5 != 7 && v7 && isTail != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = objc_msgSend_storage(v11, v24, v25);
      CharacterIndex = objc_msgSend_nextCharacterIndex_(v27, v28, CharacterIndex);
    }
  }

  else
  {
    CharacterIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return CharacterIndex;
}

+ (unint64_t)charIndexFromPoint:(CGPoint)a3 hitTestMode:(int)a4 isAtEndOfLine:(BOOL *)a5 leadingEdge:(BOOL *)a6 inLayoutTarget:(id)a7
{
  v9 = *&a4;
  y = a3.y;
  x = a3.x;
  v12 = a7;
  v15 = v12;
  if ((v9 & 3) != 1 && (objc_msgSend_layoutIsValid(v12, v13, v14) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSWPColumn charIndexFromPoint:hitTestMode:isAtEndOfLine:leadingEdge:inLayoutTarget:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 884, 0, "Should not call when layout has not been validated");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (objc_msgSend_layoutIsValid(v15, v13, v14))
  {
    v25 = objc_msgSend_columns(v15, v23, v24);
    v28 = objc_msgSend_count(v25, v26, v27);
    if ((v9 & 3) == 1 || v28 || (objc_msgSend_geometry(v15, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_frame(v31, v32, v33), v41.x = x, v41.y = y, v34 = CGRectContainsPoint(v42, v41), v31, !v34))
    {
      v39 = objc_msgSend_charIndexForPoint_inColumnsArray_hitTestMode_isAtEndOfLine_leadingEdge_(TSWPColumn, v29, v25, v9, a5, a6, x, y);
    }

    else
    {
      v36 = objc_msgSend_storage(v15, v29, v35);
      v39 = objc_msgSend_length(v36, v37, v38);

      if (a5)
      {
        *a5 = 0;
      }

      if (a6)
      {
        *a6 = 1;
      }
    }
  }

  else
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v39;
}

+ (id)smartFieldWithAttributeKind:(unint64_t)a3 inColumnArray:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(TSWPColumn, a2, a4, 0, 1);
  v11 = v8;
  if (v8 && (objc_msgSend_frameBounds(v8, v9, v10), v18.x = x, v18.y = y, CGRectContainsPoint(v19, v18)) && (v14 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_(v11, v12, 9, 0, 0, x, y), v14 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v15 = objc_msgSend_smartFieldAtCharIndex_attributeKind_(v11, v13, v14, a3);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)footnoteMarkAttachmentInColumnArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(TSWPColumn, a2, a3, 0, 1);
  v9 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  v10 = objc_msgSend_storage(v6, v7, v8);
  if (objc_msgSend_wpKind(v10, v11, v12) == 2)
  {
    objc_msgSend_frameBounds(v9, v13, v14);
    v24.x = x;
    v24.y = y;
    v15 = CGRectContainsPoint(v25, v24);

    if (!v15 || (v19 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_(v9, v16, 9, 0, 0, x, y), v19 == 0x7FFFFFFFFFFFFFFFLL))
    {
LABEL_5:
      v20 = 0;
      goto LABEL_8;
    }

    v10 = objc_msgSend_storage(v9, v17, v18);
    v20 = objc_msgSend_footnoteMarkAtCharIndex_(v10, v22, v19);
  }

  else
  {
    v20 = 0;
  }

LABEL_8:

  return v20;
}

+ (id)footnoteReferenceAttachmentInColumnArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(TSWPColumn, a2, a3, 0, 1);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_storage(v6, v7, v8);
    if (objc_msgSend_wpKind(v10, v11, v12))
    {
      v15 = 0;
LABEL_4:

      goto LABEL_8;
    }

    objc_msgSend_frameBounds(v9, v13, v14);
    v24.x = x;
    v24.y = y;
    v16 = CGRectContainsPoint(v25, v24);

    if (v16)
    {
      v20 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_(v9, v17, 9, 0, 0, x, y);
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = objc_msgSend_storage(v9, v18, v19);
        v15 = objc_msgSend_footnoteReferenceAtCharIndex_(v10, v22, v20);
        goto LABEL_4;
      }
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

+ (id)pathForHighlightWithRange:(_NSRange)a3 columnArray:(id)a4 pathStyle:(unint64_t)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v9 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v7, v8, v6);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v6;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v55, v60, 16);
  if (v11)
  {
    v50 = *v56;
    while (2)
    {
      v49 = v11;
      for (i = 0; i != v49; ++i)
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        v16 = objc_msgSend_range(v15, v12, v13);
        v18 = v17;
        v20 = objc_msgSend_storage(v15, v17, v19);
        LODWORD(v18) = &v18[v16] > objc_msgSend_length(v20, v21, v22);

        if (v18)
        {
          v39 = MEMORY[0x277D81150];
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "+[TSWPColumn pathForHighlightWithRange:columnArray:pathStyle:]");
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 1036, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
          goto LABEL_21;
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v24 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(v15, v23, a3.location, a3.length, 8, 0, a5 == 1, 0);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v51, v59, 16);
        if (v28)
        {
          v29 = *v52;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v52 != v29)
              {
                objc_enumerationMutation(v24);
              }

              v31 = *(*(&v51 + 1) + 8 * j);
              objc_msgSend_CGRectValue(v31, v26, v27);
              if (a5 == 2)
              {
                objc_msgSend_CGRectValue(v31, v32, v33);
                v64 = CGRectInset(v63, -3.0, -3.0);
                v36 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v34, v35, v64.origin.x, v64.origin.y, v64.size.width, v64.size.height, 3.0);
                v38 = objc_msgSend_uniteWithBezierPath_(v9, v37, v36);

                v9 = v38;
              }

              else
              {
                objc_msgSend_appendBezierPathWithRect_(v9, v32, v33);
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v51, v59, 16);
          }

          while (v28);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v55, v60, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v9;
}

+ (id)pathForHighlightWithSelection:(id)a3 columnArray:(id)a4 pathStyle:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_276D53E34;
  v25 = sub_276D53E44;
  v26 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v10, v11);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276D53E4C;
  v16[3] = &unk_27A6F3F98;
  v19 = a1;
  v12 = v9;
  v20 = a5;
  v17 = v12;
  v18 = &v21;
  objc_msgSend_enumerateRanges_(v8, v13, v16);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

+ (CGRect)boundsRectForSelection:(id)a3 columnArray:(id)a4 includeRuby:(BOOL)a5 includePaginatedAttachments:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = &v29;
  v29 = 0;
  v30 = &v29;
  v31 = 0x5012000000;
  v32 = sub_276D51E4C;
  v33 = nullsub_2;
  v34 = &unk_276FDE562;
  v13 = *(MEMORY[0x277CBF398] + 16);
  v35 = *MEMORY[0x277CBF398];
  v36 = v13;
  if (v9)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276D5408C;
    v23[3] = &unk_27A6F3FC0;
    v24 = v10;
    v27 = a5;
    v28 = a6;
    v25 = v9;
    v26 = &v29;
    objc_msgSend_enumerateRanges_(v25, v14, v23);

    v12 = v30;
  }

  v15 = v12[6];
  v16 = v12[7];
  v17 = v12[8];
  v18 = v12[9];
  _Block_object_dispose(&v29, 8);

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (id)columnForCharIndex:(unint64_t)a3 allowEndOfColumn:(BOOL)a4 withColumns:(id)a5
{
  v5 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v50 = objc_msgSend_firstObject(v7, v8, v9, v7);
  v52 = objc_msgSend_storage(v50, v10, v11);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v53, v57, 16);
  if (v15)
  {
    v16 = v5;
    v17 = *v54;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        v20 = objc_msgSend_storage(v19, v13, v14);
        v21 = v52 == v20;

        if (!v21)
        {
          v24 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSWPColumn columnForCharIndex:allowEndOfColumn:withColumns:]");
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1097, 0, "unexpected column storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        }

        v31 = objc_msgSend_range(v19, v22, v23);
        v33 = v32;
        v35 = objc_msgSend_storage(v19, v32, v34);
        LODWORD(v31) = &v33[v31] > objc_msgSend_length(v35, v36, v37);

        if (v31)
        {
          v42 = MEMORY[0x277D81150];
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "+[TSWPColumn columnForCharIndex:allowEndOfColumn:withColumns:]");
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 1099, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
          goto LABEL_14;
        }

        v40 = objc_msgSend_range(v19, v38, v39);
        if (&v13[v16 + v40] > a3)
        {
          v41 = v19;
          goto LABEL_16;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v53, v57, 16);
      v41 = 0;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_14:
    v41 = 0;
  }

LABEL_16:

  return v41;
}

+ (_NSRange)rangeOfColumns:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81490];
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  if (objc_msgSend_count(v3, v7, v8))
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v9, 0);
    v5 = objc_msgSend_range(v11, v12, v13);
    v6 = v14;
  }

  if (objc_msgSend_count(v3, v9, v10) >= 2)
  {
    v17 = objc_msgSend_count(v3, v15, v16);
    v19 = objc_msgSend_objectAtIndexedSubscript_(v3, v18, v17 - 1);
    v22 = objc_msgSend_range(v19, v20, v21);
    if (v5 <= v22 + v23)
    {
      v24 = v22 + v23;
    }

    else
    {
      v24 = v5;
    }

    if (v5 >= v22 + v23)
    {
      v5 = v22 + v23;
    }

    v6 = v24 - v5;
  }

  v25 = objc_msgSend_firstObject(v3, v15, v16);
  v28 = objc_msgSend_storage(v25, v26, v27);
  v31 = objc_msgSend_length(v28, v29, v30);
  v32 = v6 + v5;

  if (v6 + v5 > v31)
  {
    v5 = *v4;
  }

  if (v32 > v31)
  {
    v6 = v4[1];
  }

  v33 = v5;
  v34 = v6;
  result.length = v34;
  result.location = v33;
  return result;
}

+ (CGSize)layoutSizeForParagraphEnumerator:(const TSWPParagraphEnumerator *)a3 inColumns:(id)a4 lineCount:(unint64_t *)a5 nextLineOffset:(double *)a6
{
  v74 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v68 = a5;
  *a5 = 0;
  v66 = a6;
  *a6 = 0.0;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = *MEMORY[0x277D814C8];
  v13 = *(MEMORY[0x277D814C8] + 8);
  v15 = TSWPParagraphEnumerator::paragraphTextRange(a3, v14);
  v17 = v16;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v9;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v69, v73, 16);
  if (v21)
  {
    v67 = *v70;
    v22 = v15 + v17;
    v23 = MEMORY[0x277D81490];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v69 + 1) + 8 * i);
        v26 = objc_msgSend_range(v25, v19, v20);
        v28 = v27;
        v30 = objc_msgSend_storage(v25, v27, v29);
        LODWORD(v26) = &v28[v26] > objc_msgSend_length(v30, v31, v32);

        if (v26)
        {
          v56 = MEMORY[0x277D81150];
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSWPColumn layoutSizeForParagraphEnumerator:inColumns:lineCount:nextLineOffset:]");
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 1141, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
          goto LABEL_49;
        }

        v35 = objc_msgSend_range(v25, v33, v34);
        if (v35 <= v15 && &v19[v35] >= v22)
        {
          v37 = objc_msgSend_lineFragmentArray(v25, v19, v20);
          v38 = sub_276D6F7D8(*v37);
          if (v38)
          {
            for (j = 0; v38 != j; ++j)
            {
              v40 = sub_276D6F7E8(*v37, j);
              v41 = v40;
              v42 = *(v40 + 24);
              if (v42 < 0)
              {
                v43 = v23;
              }

              else
              {
                v43 = v40;
              }

              v46 = v43;
              v45 = *v43;
              v44 = v46[1];
              if (v15 <= v45 && v22 >= v45 + v44 && (v44 || v45 == v15))
              {
                if ((v42 & 0x5000000) != 0)
                {
                  goto LABEL_47;
                }

                ++*v68;
                v49 = *(v40 + 40);
                if (v12 == *MEMORY[0x277D814C8] && v13 == *(MEMORY[0x277D814C8] + 8))
                {
                  v12 = v49 + 0.0;
                  v13 = *(v40 + 48) + *(v40 + 104);
                }

                v51 = *(v40 + 24) < 0 ? v23 : v40;
                if (*v51 + v51[1] == v22)
                {
                  v52 = *(v40 + 56);
                  v53 = (j + 1);
                  if (j + 1 >= v38)
                  {
                    objc_msgSend_nextLinePosition(v25, v53, v20);
                  }

                  else
                  {
                    v54 = sub_276D6F7E8(*v37, v53);
                    if (*(v54 + 27))
                    {
LABEL_47:
                      *v68 = 0;
                      v10 = *MEMORY[0x277CBF3A8];
                      v11 = *(MEMORY[0x277CBF3A8] + 8);
                      goto LABEL_49;
                    }

                    v55 = *(v54 + 48);
                  }

                  v10 = v52 + v49 - v12;
                  v11 = *(v41 + 32) + *(v41 + 136) - v13;
                  *v66 = v55 - v13;
                }
              }
            }
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v69, v73, 16);
    }

    while (v21);
  }

LABEL_49:

  v63 = v10;
  v64 = v11;
  result.height = v64;
  result.width = v63;
  return result;
}

- (TSWPColumn)initWithStorage:(id)a3 frameBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v16.receiver = self;
  v16.super_class = TSWPColumn;
  v11 = [(TSWPColumn *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_storage, a3);
    v12->_frameBounds.origin.x = x;
    v12->_frameBounds.origin.y = y;
    v12->_frameBounds.size.width = width;
    v12->_frameBounds.size.height = height;
    v13 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v12->_transform.a = v13;
    *&v12->_transform.c = v13;
    v14 = MEMORY[0x277D81490];
    *&v12->_transform.tx = v13;
    v12->_anchoredAttachmentRange = *v14;
    v12->_scaleTextPercent = 100;
    v12->_nextLinePosition = NAN;
    operator new();
  }

  return 0;
}

- (id)initForTestingWithStorage:(id)a3 frameBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v11 = objc_msgSend_initWithStorage_frameBounds_(self, v10, v9, x, y, width, height);
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  v15[0] = *MEMORY[0x277CBF2C0];
  v15[1] = v12;
  v15[2] = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_setTransformFromWP_(v11, v13, v15);

  return v11;
}

- (void)dealloc
{
  cntrl = self->_lineFragmentArray.__cntrl_;
  self->_lineFragmentArray.__ptr_ = 0;
  self->_lineFragmentArray.__cntrl_ = 0;
  if (cntrl)
  {
    sub_276D5EEA0(cntrl);
  }

  v4.receiver = self;
  v4.super_class = TSWPColumn;
  [(TSWPColumn *)&v4 dealloc];
}

- (TSWPStyleProvider)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend_styleProviderForStorage_(TSWPStorageStyleProvider, v4, self->_storage);
  }

  return WeakRetained;
}

- (_NSRange)range
{
  started = objc_msgSend_startCharIndex(self, a2, v2);
  v7 = objc_msgSend_characterCount(self, v5, v6);
  v8 = started;
  result.length = v7;
  result.location = v8;
  return result;
}

- (void)setRange:(_NSRange)a3
{
  length = a3.length;
  objc_msgSend_setStartCharIndex_(self, a2, a3.location);

  objc_msgSend_setCharacterCount_(self, v5, length);
}

- (_NSRange)anchoredRange
{
  length = self->_anchoredAttachmentRange.length;
  location = self->_anchoredAttachmentRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setAnchoredRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPColumn setAnchoredRange:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1274, 0, "Illegal anchored range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  self->_anchoredAttachmentRange.location = location;
  self->_anchoredAttachmentRange.length = length;
}

- (void)incrementRanges:(int64_t)a3 startingAt:(unint64_t)a4
{
  v5 = a3;
  v7 = objc_msgSend_storage(self, a2, a3);
  v10 = objc_msgSend_changeCount(v7, v8, v9);

  if (objc_msgSend_storageChangeCount(self, v11, v12) != v10)
  {
    v15 = objc_msgSend_anchoredRange(self, v13, v14);
    v17 = v16;
    if (-objc_msgSend_startCharIndex(self, v16, v18) > v5)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPColumn incrementRanges:startingAt:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1283, 0, "Bad delta");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    if (-v15 > v5)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPColumn incrementRanges:startingAt:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 1284, 0, "Bad delta");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }

    started = objc_msgSend_startCharIndex(self, v19, v20);
    if (-started > v5)
    {
      v5 = -started;
    }

    if (objc_msgSend_startCharIndex(self, v36, v37) >= a4)
    {
      v39 = objc_msgSend_startCharIndex(self, v13, v38);
      objc_msgSend_setStartCharIndex_(self, v40, v39 + v5);
      WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(self, v41, v42);
      objc_msgSend_setNextWidowPullsDownFromCharIndex_(self, v44, WidowPullsDownFromCharIndex + v5);
    }

    if (v15 >= a4)
    {
      objc_msgSend_setAnchoredRange_(self, v13, v5 + v15, v17);
    }

    ptr = self->_lineFragmentArray.__ptr_;
    if (ptr)
    {
      sub_276D6FAB4(ptr, v5, a4);
    }
  }

  objc_msgSend_setStorageChangeCount_(self, v13, v10);
}

- (CGSize)maxSize
{
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transformFromWP
{
  result = &self->_transform;
  v4 = *&result->c;
  *&retstr->a = *&result->a;
  *&retstr->c = v4;
  *&retstr->tx = *&result->tx;
  return result;
}

- (void)trimToCharIndex:(unint64_t)a3 inTarget:(id)a4 removeFootnoteReferenceCount:(unint64_t)a5 removeAutoNumberFootnoteCount:(unint64_t)a6
{
  v40 = a4;
  if (objc_msgSend_nextWidowPullsDownFromCharIndex(self, v8, v9) < a3 && *MEMORY[0x277D81408] != -1)
  {
    sub_276F4F1A8();
  }

  v13 = objc_msgSend_range(self, v10, v11);
  v14 = &v12[v13];
  if ((a3 < v13 || v14 < a3) && *MEMORY[0x277D81408] != -1)
  {
    sub_276F4F1BC();
  }

  if (!v40)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPColumn trimToCharIndex:inTarget:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1327, 0, "invalid nil value for '%{public}s'", "target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if (a3 >= v13 && v14 > a3)
  {
    self->_characterCount = a3 - v13;
    v22 = sub_276D6F7D8(self->_lineFragmentArray.__ptr_);
    if (v22)
    {
      v23 = sub_276D6FBAC(self->_lineFragmentArray.__ptr_, a3);
      if (v22 > v23)
      {
        v24 = v22;
        do
        {
          v25 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, --v24);
          if (*(v25 + 24))
          {
            v26 = sub_276D6493C(v25);
            objc_msgSend_removeFromParent(v26, v27, v28);
          }
        }

        while (v24 > v23);
        if (v22 > v23)
        {
          sub_276D6F994(self->_lineFragmentArray.__ptr_, v23, v22 - v23);
        }
      }

      v29 = sub_276D6F80C(self->_lineFragmentArray.__ptr_);
      if (v29)
      {
        v32 = 0.0;
        if (*(v29 + 512) == 1)
        {
          v32 = *(v29 + 160);
        }

        objc_msgSend_setContentBlockBottom_(self, v30, v31, *(v29 + 32) + *(v29 + 136) + v32);
      }

      else
      {
        objc_msgSend_setContentBlockBottom_(self, v30, v31, 0.0);
      }

      if ((self->_layoutResultFlags & 0x400) == 0)
      {
        objc_msgSend_clearAdornments(self, v12, v33);
        v35 = objc_msgSend_columnMetricsForCharIndex_outRange_(v40, v34, a3, 0);
        sub_276D7FC90(self, v35, 0, v40);

        v37 = objc_msgSend_columnMetricsForCharIndex_outRange_(v40, v36, a3, 0);
        sub_276D81034(self, v37, 0, v40);

        v39 = objc_msgSend_columnMetricsForCharIndex_outRange_(v40, v38, a3, 0);
        sub_276D812E0(self, v39, 0, v40);
      }
    }
  }

  objc_msgSend_setNextWidowPullsDownFromCharIndex_(self, v12, a3);
}

- (double)minimumHeightForLayoutOnPage
{
  if (objc_msgSend_lineCount(self, a2, v2))
  {
    v6 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, 0);
    MinY = CGRectGetMinY(*(v6 + 40));
    objc_msgSend_logicalBoundsTop(self, v8, v9);
    v11 = v10;
    result = 0.0;
    if (MinY > v11)
    {
      return result;
    }

    v13 = 0.0;
    if (*(v6 + 512) == 1)
    {
      v13 = *(v6 + 160);
    }

    contentBottom = *(v6 + 32) + *(v6 + 136) + v13;
  }

  else
  {
    contentBottom = self->_contentBottom;
  }

  objc_msgSend_logicalBoundsTop(self, v4, v5);
  return contentBottom - v15;
}

- (CGRect)erasableBounds:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  v42.origin.x = sub_276D6FA34(self->_lineFragmentArray.__ptr_, a3).n64_f64[0];
  v42.origin.y = v8;
  v42.size.width = v9;
  v42.size.height = v10;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v37 = CGRectUnion(v36, v42);
  v13 = v37.origin.x;
  v14 = v37.origin.y;
  v15 = v37.size.width;
  v16 = v37.size.height;
  paragraphAdornments = self->_paragraphAdornments;
  if (paragraphAdornments && objc_msgSend_count(paragraphAdornments, v11, v12))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = self->_paragraphAdornments;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v30, v34, 16);
    if (v22)
    {
      v23 = *v31;
      do
      {
        v24 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v18);
          }

          objc_msgSend_erasableBounds(*(*(&v30 + 1) + 8 * v24), v20, v21);
          v43.origin.x = v25;
          v43.origin.y = v26;
          v43.size.width = v27;
          v43.size.height = v28;
          v38.origin.x = v13;
          v38.origin.y = v14;
          v38.size.width = v15;
          v38.size.height = v16;
          v39 = CGRectUnion(v38, v43);
          v13 = v39.origin.x;
          v14 = v39.origin.y;
          v15 = v39.size.width;
          v16 = v39.size.height;
          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v30, v34, 16);
      }

      while (v22);
    }
  }

  objc_msgSend_transformFromWP(self, v11, v12);
  v40.origin.x = v13;
  v40.origin.y = v14;
  v40.size.width = v15;
  v40.size.height = v16;
  return CGRectApplyAffineTransform(v40, &v29);
}

- (double)textBlockBottom
{
  objc_msgSend_logicalBoundsTop(self, a2, v2);
  v5 = v4;
  v6 = sub_276D6F80C(self->_lineFragmentArray.__ptr_);
  if (!v6)
  {
    return v5;
  }

  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];

  return CGRectGetMaxY(*&v7);
}

- (double)textHeight
{
  objc_msgSend_textBlockBottom(self, a2, v2);
  v5 = v4;
  objc_msgSend_logicalBoundsTop(self, v6, v7);
  return v5 - v8;
}

- (BOOL)requiresGlyphVectorsForHeightMeasurement
{
  v3 = objc_msgSend_lineFragmentArray(self, a2, v2);
  v4 = sub_276D6F7D8(*v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_276D6F7E8(*v3, 0);
    if (sub_276D69338(v6))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v7 = 1;
      do
      {
        v8 = v7;
        if (v5 == v7)
        {
          break;
        }

        v9 = sub_276D6F7E8(*v3, v7);
        v10 = sub_276D69338(v9);
        v7 = v8 + 1;
      }

      while (!v10);
      LOBYTE(v4) = v8 < v5;
    }
  }

  return v4;
}

- (CGRect)changeBarRectForLineFragment:(const void *)a3 layoutTarget:(id)a4
{
  v6 = a4;
  v8 = objc_msgSend_columnMetricsForCharIndex_outRange_(v6, v7, *a3, 0);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_adjustedInsetsForTarget_(v8, v9, v6);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *(MEMORY[0x277D81428] + 8);
    v15 = *(MEMORY[0x277D81428] + 24);
  }

  objc_msgSend_wpBounds(self, v9, v10);
  v17 = v16;
  v19 = v18;
  v20 = *(a3 + 6);
  v21 = *(a3 + 17);
  v22 = *(a3 + 20);
  v23 = *(a3 + 4);
  v26 = objc_msgSend_storage(self, v24, v25);
  v31 = v22 + v21 + v23 - v20;
  if (objc_msgSend_wpKind(v26, v27, v28))
  {
    v32 = objc_msgSend_storage(self, v29, v30);
    v35 = objc_msgSend_wpKind(v32, v33, v34);

    v36 = *(a3 + 3);
    if (v35 == 2)
    {
      v37 = 12.0;
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((v36 & 0x1000) != 0)
      {
        v39 = v15;
      }

      else
      {
        v39 = v13;
      }

      v37 = fmin(v39 / 12.0, 1.0) * 12.0;
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {

    v37 = 12.0;
    if ((*(a3 + 25) & 0x10) != 0)
    {
LABEL_14:
      v46.origin.x = v17;
      v46.origin.y = v20;
      v46.size.width = v19;
      v46.size.height = v31;
      v38 = v37 + CGRectGetMaxX(v46);
      goto LABEL_15;
    }
  }

  v38 = v17 - v37;
LABEL_15:
  v47.origin.x = v17;
  v47.origin.y = v20;
  v47.size.width = v19;
  v47.size.height = v31;
  MinY = CGRectGetMinY(v47);
  v48.origin.x = v17;
  v48.origin.y = v20;
  v48.size.width = v19;
  v48.size.height = v31;
  v41 = CGRectGetMaxY(v48) - MinY;

  v42 = 2.0;
  v43 = v38;
  v44 = MinY;
  v45 = v41;
  result.size.height = v45;
  result.size.width = v42;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)frameBounds
{
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  objc_msgSend_transformFromWP(self, a2, v2);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

+ (CGPoint)pinPoint:(CGPoint)a3 toBottomOfLineFragmentInColumns:(id)a4
{
  x = a3.x;
  y = a3.y;
  v66 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v4 = a4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v61, v65, 16);
  v9.f64[0] = x;
  v9.f64[1] = y;
  v55 = v9;
  if (v8)
  {
    v10 = *v62;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        v13 = objc_msgSend_range(v12, v6, v7);
        v15 = v14;
        v17 = objc_msgSend_storage(v12, v14, v16);
        LODWORD(v13) = &v15[v13] > objc_msgSend_length(v17, v18, v19);

        if (v13)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSWPColumn pinPoint:toBottomOfLineFragmentInColumns:]");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1493, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
          goto LABEL_21;
        }

        objc_msgSend_frameBounds(v12, v20, v21);
        v68.x = x;
        v68.y = y;
        if (CGRectContainsPoint(v69, v68))
        {
          v29 = objc_msgSend_lineCount(v12, v6, v7);
          if (v29)
          {
            objc_msgSend_boundsOfLineFragmentAtIndex_(v12, v30, v29 - 1);
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;
            if (v12)
            {
              objc_msgSend_transformToWP(v12, v31, v32);
              v41 = v58.f64[1];
              v42 = v59.f64[1];
              v43 = v59.f64[0];
              v44 = v60.f64[1];
              v53 = v60.f64[0];
              v54 = v58.f64[0];
            }

            else
            {
              v44 = 0.0;
              v42 = 0.0;
              v41 = 0.0;
              v53 = 0.0;
              v54 = 0.0;
              v43 = 0.0;
            }

            v70.origin.x = v34;
            v70.origin.y = v36;
            v70.size.width = v38;
            v70.size.height = v40;
            MaxY = CGRectGetMaxY(v70);
            if (v44 + y * v42 + v41 * x > MaxY)
            {
              if (v12)
              {
                objc_msgSend_transformFromWP(v12, v45, v46);
                v47 = v58;
                v48 = v59;
                v49 = v60;
              }

              else
              {
                v49 = 0uLL;
                v47 = 0uLL;
                v48 = 0uLL;
              }

              v55 = vaddq_f64(v49, vmlaq_n_f64(vmulq_n_f64(v48, MaxY), v47, v53 + y * v43 + v54 * x));
            }
          }

          goto LABEL_21;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v61, v65, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v51 = v55.f64[1];
  v50 = v55.f64[0];
  result.y = v51;
  result.x = v50;
  return result;
}

- (void)setLineFragmentArray:(const void *)a3
{
  v4 = *a3;
  v3 = *(a3 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_lineFragmentArray.__cntrl_;
  self->_lineFragmentArray.__ptr_ = v4;
  self->_lineFragmentArray.__cntrl_ = v3;
  if (cntrl)
  {
    sub_276D5EEA0(cntrl);
  }
}

- (void)offsetLineFragmentsBy:(CGSize)a3
{
  if (a3.width != 0.0 || a3.height != 0.0)
  {
    v5 = *&a3.height;
    sub_276D6FB14(self->_lineFragmentArray.__ptr_, a2, v3, a3.width, a3.height);
    *&self->_contentBottom = vaddq_f64(vdupq_lane_s64(v5, 0), *&self->_contentBottom);
  }
}

- (void)makeEmpty:(unint64_t)a3 anchoredRange:(_NSRange)a4 layoutResultFlags:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  objc_msgSend_setStartCharIndex_(self, a2, a3);
  objc_msgSend_setCharacterCount_(self, v10, 0);
  objc_msgSend_setAnchoredRange_(self, v11, location, length);
  self->_contentBottom = 0.0;
  self->_erasableContentBottom = 0.0;
  self->_layoutResultFlags = a5;
  objc_msgSend_setNextWidowPullsDownFromCharIndex_(self, v12, a3);
  sub_276D6FA30(self->_lineFragmentArray.__ptr_);

  objc_msgSend_clearAdornments(self, v13, v14);
}

- (CGRect)boundsOfLineFragmentAtIndex:(unint64_t)a3
{
  v4 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a3);
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[7];
  v8 = v4[8];
  objc_msgSend_transformFromWP(self, v9, v10);
  v12.origin.x = v5;
  v12.origin.y = v6;
  v12.size.width = v7;
  v12.size.height = v8;
  return CGRectApplyAffineTransform(v12, &v11);
}

- (id)partitionedLayoutOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a3);

  return sub_276D6493C(v3);
}

- (id)textAdornmentOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a3);

  return sub_276D64990(v3);
}

- (CGRect)rawGlyphRectOfRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  v10 = objc_msgSend_lineIndexForCharIndex_eol_(self, a2, a3.location, 0);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = objc_msgSend_lineFragmentAtIndex_(self, v11, v10);
    v13 = v12;
    if (*(v12 + 24) < 0)
    {
      v14 = MEMORY[0x277D81490];
    }

    else
    {
      v14 = v12;
    }

    v24.location = location;
    v24.length = length;
    v15 = NSIntersectionRange(v24, *v14);
    if (location == v15.location && length == v15.length)
    {
      v6 = sub_276D67A88(v13, location, length, self);
      v7 = v17;
      v8 = v18;
      v9 = v19;
    }
  }

  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (TSWPFontHeightInfo)fontHeightInfoAtCharIndex:(SEL)a3
{
  *retstr = *byte_276F98C20;
  result = objc_msgSend_lineIndexForCharIndex_eol_(self, a3, a4, 0);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = objc_msgSend_lineFragmentAtIndex_(self, v8, result);

    sub_276D68B68(v9, a4, self, retstr);
  }

  return result;
}

- (_NSRange)rangeOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a3);
  if (*(v3 + 24) < 0)
  {
    v4 = MEMORY[0x277D81490];
  }

  else
  {
    v4 = v3;
  }

  v5 = *v4;
  v6 = v4[1];
  result.length = v6;
  result.location = v5;
  return result;
}

- (unsigned)hyphenCharOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (!sub_276D69A60(v3))
  {
    return 0;
  }

  return sub_276D6C5D0(v4);
}

- ($10B7A9D486B2AF6DC4FEF2BBDFC96885)lineMetricsAtCharIndex:(SEL)a3 allowEndOfLine:(unint64_t)a4
{
  v5 = a5;
  v67 = *MEMORY[0x277D85DE8];
  memcpy(retstr, &unk_276FA8A20, sizeof($10B7A9D486B2AF6DC4FEF2BBDFC96885));
  result = objc_msgSend_lineIndexForCharIndex_eol_(self, v9, a4, v5);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = objc_msgSend_lineFragmentAtIndex_(self, v11, result);
    v14 = v12;
    v65 = 0;
    v15 = *(MEMORY[0x277CBF398] + 16);
    retstr->var0.origin = *MEMORY[0x277CBF398];
    retstr->var0.size = v15;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    if (*(v12 + 24) < 0)
    {
      v16 = MEMORY[0x277D81490];
    }

    else
    {
      v16 = v12;
    }

    v17 = objc_msgSend_rectsForSelectionRange_selectionType_forParagraphMode_includeRuby_includePaginatedAttachments_(self, v13, *v16, v16[1], 8, 0, 0, 0);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v61, v66, 16);
    if (v21)
    {
      v22 = *v62;
      x = retstr->var0.origin.x;
      y = retstr->var0.origin.y;
      width = retstr->var0.size.width;
      height = retstr->var0.size.height;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v17);
          }

          objc_msgSend_CGRectValue(*(*(&v61 + 1) + 8 * i), v19, v20);
          v70.origin.x = v28;
          v70.origin.y = v29;
          v70.size.width = v30;
          v70.size.height = v31;
          v68.origin.x = x;
          v68.origin.y = y;
          v68.size.width = width;
          v68.size.height = height;
          v69 = CGRectUnion(v68, v70);
          x = v69.origin.x;
          y = v69.origin.y;
          width = v69.size.width;
          height = v69.size.height;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v61, v66, 16);
      }

      while (v21);
      retstr->var0.origin.x = x;
      retstr->var0.origin.y = y;
      retstr->var0.size.width = width;
      retstr->var0.size.height = height;
    }

    retstr->var1 = *(v14 + 32);
    *&retstr->var2.descent = *(v14 + 136);
    *&retstr->var2.leadingBelow = *(v14 + 152);
    *&retstr->var2.verticalHeight = *(v14 + 168);
    *&retstr->var2.underlinePosition = *(v14 + 184);
    *&retstr->var2.spaceBefore = *(v14 + 104);
    *&retstr->var2.ascent = *(v14 + 120);
    if (sub_276D648AC(v14))
    {
      v32 = sub_276D69F48(v14, a4, &v65);
      retstr->var3 = CTFontGetXHeight(v32);
    }

    retstr->var4.origin.x = sub_276D69474(v14);
    retstr->var4.origin.y = v33;
    retstr->var4.size.width = v34;
    retstr->var4.size.height = v35;
    v36 = sub_276D6492C(v14);
    v39 = v36;
    if (v36)
    {
      v40 = objc_msgSend_labelType(v36, v37, v38);
      if ((v40 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v41 = sub_276D69638(v14);
        retstr->var5 = v42;
        v45 = objc_msgSend_labelFont(v39, v43, v44, v41);
        if (v45)
        {
          sub_276D38FF4(v45, v37, v38, &v55);
          v46 = v58;
          *&retstr->var6.descent = v57;
          *&retstr->var6.leadingBelow = v46;
          v47 = v60;
          *&retstr->var6.verticalHeight = v59;
          v48 = v56;
          *&retstr->var6.spaceBefore = v55;
          *&retstr->var6.ascent = v48;
          *&retstr->var6.underlinePosition = v47;
        }
      }

      else if (v40 == 1)
      {
        v49 = *(v14 + 32);
        v50 = sub_276D6492C(v14);
        objc_msgSend_baselineOffset(v50, v51, v52);
        retstr->var5 = v49 + v53;
      }
    }

    objc_msgSend_transformToWP(self, v37, v38);
    v54 = v56;
    *&retstr->var7.a = v55;
    *&retstr->var7.c = v54;
    *&retstr->var7.tx = v57;
  }

  return result;
}

- (double)horizontalOffsetForCharIndex:(unint64_t)a3 lineFragmentIndex:(unint64_t)a4 bumpPastHyphen:(BOOL)a5 allowPastLineBounds:(BOOL)a6
{
  v7 = a5;
  v9 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a4);

  return sub_276D664E4(v9, a3, v7, a6, 0);
}

- (const)nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)a3 xPos:(double)a4
{
  v5 = a3;
  v25 = *(sub_276D6F7E8(self->_lineFragmentArray.__ptr_, a3) + 40);
  MinY = CGRectGetMinY(v25);
  do
  {
    v10 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    v26 = *(sub_276D6F7E8(self->_lineFragmentArray.__ptr_, v10 - 1) + 40);
  }

  while (CGRectGetMinY(v26) >= MinY);
  v11 = objc_msgSend_lineCount(self, v7, v8);
  if (v10 < v11)
  {
    v13 = v11;
    v14 = INFINITY;
    v15 = v10;
    do
    {
      v16 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, v15);
      v17 = v16[5];
      v18 = v16[6];
      v19 = v16[7];
      v20 = v16[8];
      v27.origin.x = v17;
      v27.origin.y = v18;
      v27.size.width = v19;
      v27.size.height = v20;
      if (MinY != CGRectGetMinY(v27))
      {
        break;
      }

      v28.origin.x = v17;
      v28.origin.y = v18;
      v28.size.width = v19;
      v28.size.height = v20;
      v21 = vabdd_f64(a4, CGRectGetMinX(v28));
      v29.origin.x = v17;
      v29.origin.y = v18;
      v29.size.width = v19;
      v29.size.height = v20;
      v22 = vabdd_f64(a4, CGRectGetMaxX(v29));
      if (v22 >= v21)
      {
        v22 = v21;
      }

      if (v22 < v14)
      {
        v14 = v22;
        v10 = v15;
      }

      ++v15;
    }

    while (v15 < v13);
  }

  return objc_msgSend_lineFragmentAtIndex_(self, v12, v10);
}

- (void)pInfoForCharIndex:(unint64_t)a3 isAtStart:(BOOL *)a4 isAtEnd:(BOOL *)a5
{
  v9 = objc_msgSend_length(self->_storage, a2, a3);
  if (objc_msgSend_hasTrackedChanges(self->_storage, v10, v11))
  {
    storage = self->_storage;
    if (storage)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(storage, v12, v9, 0);
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
    }

    v15 = [TSWPFilteredStorage alloc];
    v16 = self->_storage;
    v18 = TSWPParagraphEnumerator::paragraphTextRange(&v32, v17);
    v20 = objc_msgSend_initWithStorage_subRange_(v15, v19, v16, v18, v19);
    v9 = objc_msgSend_charIndexRemappedFromStorage_(v20, v21, v9);
    v23 = self->_storage;
    if (v23)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v23, v22, 0, 0);
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    v24 = [TSWPFilteredStorage alloc];
    v25 = self->_storage;
    v27 = TSWPParagraphEnumerator::paragraphTextRange(&v31, v26);
    v29 = objc_msgSend_initWithStorage_subRange_(v24, v28, v25, v27, v28);
    v14 = objc_msgSend_charIndexRemappedFromStorage_(v29, v30, 0);

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v31);
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v32);
  }

  else
  {
    v14 = 0;
  }

  *a4 = v14 == a3;
  *a5 = v9 == a3;
}

- (unint64_t)pRemapCharIndex:(unint64_t)a3 outIsAfterBreak:(BOOL *)a4 outWithTextSource:(id *)a5
{
  v9 = self->_storage;
  if (objc_msgSend_hasTrackedChanges(self->_storage, v10, v11))
  {
    storage = self->_storage;
    if (storage)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(storage, v12, a3, 0);
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    location = TSWPParagraphEnumerator::paragraphTextRange(&v34, v12);
    length = v15;
    if (!TSWPParagraphEnumerator::isFirstParagraph(&v34))
    {
      TSWPParagraphEnumerator::operator--(&v34, v17);
      v36.location = TSWPParagraphEnumerator::paragraphTextRange(&v34, v18);
      v36.length = v19;
      v35.location = location;
      v35.length = length;
      v20 = NSUnionRange(v35, v36);
      location = v20.location;
      length = v20.length;
    }

    v21 = [TSWPFilteredStorage alloc];
    v23 = objc_msgSend_initWithStorage_subRange_(v21, v22, self->_storage, location, length);

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v34);
    v9 = v23;
  }

  v24 = objc_msgSend_charIndexMappedFromStorage_(v9, v12, a3, *&v34.var0, *&v34.var2, *&v34.var4, *&v34.var6, v34.var7.length);
  v26 = a3;
  if (v24)
  {
    v26 = TSWPPreviousCharIndexFromTextSource(a3, v9);
  }

  if (a4)
  {
    if (v26 == a3)
    {
      v27 = 0;
    }

    else
    {
      v28 = objc_msgSend_characterAtIndex_(self->_storage, v25, v26);
      v29 = v28;
      v30 = IsParagraphBreakingCharacter(v28);
      if (v29 == 8232)
      {
        v27 = 1;
      }

      else
      {
        v27 = v30;
      }
    }

    *a4 = v27;
  }

  if (a5)
  {
    v31 = v9;
    *a5 = v9;
  }

  v32 = objc_msgSend_charIndexRemappedFromStorage_(v9, v25, a3);

  return v32;
}

- (unint64_t)lineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4
{
  v45 = a4;
  v55 = 0;
  v54 = 0;
  v4 = objc_msgSend_pRemapCharIndex_outIsAfterBreak_outWithTextSource_(self, a2, a3, &v55, &v54);
  v5 = v54;
  v52 = v4;
  if (objc_msgSend_charIndexMappedFromStorage_(v5, v6, v4))
  {
    v51 = TSWPPreviousCharIndexFromTextSource(v4, self->_storage);
  }

  else
  {
    v51 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v53 = 0;
  objc_msgSend_pInfoForCharIndex_isAtStart_isAtEnd_(self, v7, v4, &v53, &v53 + 1);
  if ((v53 & 0x100) != 0)
  {
    isPartitioned = 0;
  }

  else
  {
    v10 = objc_msgSend_attachmentAtCharIndex_(self->_storage, v8, v4);
    isPartitioned = objc_msgSend_isPartitioned(v10, v11, v12);
  }

  v13 = objc_msgSend_lineFragmentArray(self, v8, v9);
  v14 = sub_276D6F7D8(*v13);
  if (v14)
  {
    v15 = 0;
    v48 = v13;
    v49 = v5;
    v47 = v14;
    while (1)
    {
      v16 = sub_276D6F7E8(*v13, v15);
      v18 = v16;
      v19 = MEMORY[0x277D81490];
      if (*(v16 + 24) >= 0)
      {
        v19 = v16;
      }

      v20 = *v19;
      v21 = v19[1];
      v22 = objc_msgSend_charRangeRemappedFromStorage_(v5, v17, *v19, v21);
      v23 = *(v18 + 24);
      v25 = objc_msgSend_charIndexRemappedFromStorage_(v5, v24, v20);
      v27 = (v23 >> 9) & 1;
      if (v25 == v52)
      {
        v28 = isPartitioned;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28 & v27;
      if ((v28 & v27) != 1 || v51 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = 0;
      }

      else
      {
        v31 = objc_msgSend_attachmentAtCharIndex_(self->_storage, v26, v51);
        v34 = objc_msgSend_isPartitioned(v31, v32, v33);
      }

      v35 = v52 < v20 || v52 - v20 >= v21;
      v36 = v28 ^ 1 | v27;
      if (v35)
      {
        v36 = 0;
      }

      v37 = HIBYTE(v53);
      if (v52 == v22)
      {
        v38 = HIBYTE(v53);
      }

      else
      {
        v38 = 0;
      }

      v39 = v20 + v21;
      v40 = v29 ^ 1;
      if (!v52)
      {
        v40 = 1;
      }

      v41 = (v28 & (v55 ^ 1)) == 1 && v52 == v39;
      v42 = v41 ? v40 : 0;
      v43 = v55 | v34;
      if (v52 == v39)
      {
        if ((v45 & (v43 | v29 ^ 1) & 1) != 0 || HIBYTE(v53))
        {
          if ((v23 & 0x100000100) != 0)
          {
            v37 = 0;
          }

          else
          {
            v37 = v55 ^ 1;
          }
        }
      }

      else
      {
        v37 = 0;
      }

      if ((v29 & v43 | v36 | v42 | v38))
      {
        break;
      }

      v5 = v49;
      if (v37)
      {
        goto LABEL_47;
      }

      ++v15;
      v13 = v48;
      if (v47 == v15)
      {
        goto LABEL_46;
      }
    }

    v5 = v49;
  }

  else
  {
LABEL_46:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_47:

  return v15;
}

- (CGRect)p_untransformedCaretRectForSelection:(id)a3
{
  v6 = a3;
  v154 = v6;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPColumn p_untransformedCaretRectForSelection:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1883, 0, "invalid nil value for '%{public}s'", "selection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if ((objc_msgSend_isInsertionPoint(v6, v4, v5) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPColumn p_untransformedCaretRectForSelection:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 1884, 0, "Caret rect for ranged selection is not meaningful");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = *MEMORY[0x277CBF398];
  v24 = *(MEMORY[0x277CBF398] + 8);
  v25 = *(MEMORY[0x277CBF398] + 16);
  v26 = *(MEMORY[0x277CBF398] + 24);
  Range = objc_msgSend_firstRange(v6, v14, v15);
  v30 = objc_msgSend_caretLFAffinity(v6, v28, v29);
  v33 = objc_msgSend_range(self, v31, v32);
  v35 = v34;
  v38 = objc_msgSend_range(self->_storage, v34, v36);
  if (Range <= &v37[v38])
  {
    v170[0] = 0;
    v169 = 0;
    v46 = objc_msgSend_pRemapCharIndex_outIsAfterBreak_outWithTextSource_(self, v37, Range, v170, &v169);
    v153 = v169;
    if (v46 == &v35[v33])
    {
      v48 = 1;
    }

    else
    {
      v48 = v30;
    }

    if (v46 == Range)
    {
      v49 = v30;
    }

    else
    {
      v49 = v48;
    }

    v168 = 0;
    objc_msgSend_pInfoForCharIndex_isAtStart_isAtEnd_(self, v47, v46, &v168, &v168 + 1);
    storage = self->_storage;
    v54 = objc_msgSend_styleProvider(self, v51, v52);
    if (storage)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(storage, v53, v46, v54);
    }

    else
    {
      memset(&v167, 0, sizeof(v167));
    }

    if ((v168 & 0x100) != 0)
    {
      isPartitioned = 0;
    }

    else
    {
      v57 = objc_msgSend_attachmentAtCharIndex_(self->_storage, v55, v46);
      isPartitioned = objc_msgSend_isPartitioned(v57, v58, v59);
    }

    v60 = (v49 == 1) | isPartitioned;
    if (v46 < v33 || &v46[-v33] >= v35 || v46 <= v33 && (v168 & 1) == 0 && ((v60 ^ 1) & 1) == 0 && (v170[0] & 1) == 0)
    {
      if (v46 != &v35[v33])
      {
        goto LABEL_100;
      }

      v61 = v170[0] ? isPartitioned : (v49 == 1) | isPartitioned;
      if ((v61 & 1) == 0 && HIBYTE(v168) != 1)
      {
        goto LABEL_100;
      }
    }

    v62 = objc_msgSend_lineIndexForCharIndex_eol_(self, v55, Range, (v49 == 1) | isPartitioned & 1u);
    if (v62 >= objc_msgSend_lineCount(self, v63, v64))
    {
      goto LABEL_100;
    }

    v67 = objc_msgSend_lineFragmentAtIndex_(self, v65, v62);
    if (!v67)
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSWPColumn p_untransformedCaretRectForSelection:]");
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 1925, 0, "invalid nil value for '%{public}s'", "lineFragment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
    }

    if (!sub_276D648AC(v67))
    {
      TSURectWithOriginAndSize();
      v23 = v82;
      v24 = v83;
      v25 = v84;
      v26 = v85;
      v86 = *(v67 + 24);
      if (v86 < 0)
      {
        v87 = MEMORY[0x277D81490];
      }

      else
      {
        v87 = v67;
      }

      v88 = *(v87 + 8);
      if (v88)
      {
        if (v86 < 0)
        {
          v89 = MEMORY[0x277D81490];
        }

        else
        {
          v89 = v67;
        }

        v23 = v82 + &v46[-*v89] / v88;
      }

      goto LABEL_100;
    }

    v166 = 0;
    v75 = v170[0] ^ 1;
    if (v46 <= v38)
    {
      v75 = 0;
    }

    FontForStyle = sub_276D69F48(v67, &v46[-v75], &v166);
    v78 = objc_msgSend_characterStyleAtCharIndex_left_effectiveRange_(self->_storage, v77, v46, (v170[0] & 1) == 0, 0);
    v81 = TSWPParagraphEnumerator::paragraphStyle(&v167, 0);
    if (FontForStyle)
    {
      cf = 0;
    }

    else
    {
      FontForStyle = TSWPFastCreateFontForStyle(v78, v81, self->_scaleTextPercent);
      cf = FontForStyle;
      if (!FontForStyle)
      {
LABEL_99:

LABEL_100:
        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v167);

        goto LABEL_101;
      }
    }

    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v150 = v81;
    v151 = v78;
    sub_276D38FF4(FontForStyle, v79, v80, &v160);
    v90 = TSWPResolvePropertyForStyles(v78, v81, 34);
    v93 = v90;
    if (v90)
    {
      objc_msgSend_doubleValue(v90, v91, v92);
      v95 = v94;
    }

    else
    {
      v95 = 0.0;
    }

    v96 = objc_msgSend_insertionCharIndex(v154, v91, v92);
    v98 = objc_msgSend_charIndexRemappedFromStorage_(v153, v97, v96);
    IsLeadingEdge = objc_msgSend_caretIsLeadingEdge(v154, v99, v100);
    v104 = objc_msgSend_insertionCharIndex(v154, v102, v103);
    v108 = objc_msgSend_lineIndexForCharIndex_eol_(self, v105, v104, v60 & 1);
    if (v108 == v62 || v108 >= objc_msgSend_lineCount(self, v106, v107))
    {
      v109 = 0;
      if (IsLeadingEdge)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v109 = *(objc_msgSend_lineFragmentAtIndex_(self, v106, v108) + 28) & 1;
      if (IsLeadingEdge)
      {
        goto LABEL_60;
      }
    }

    v110 = objc_msgSend_isAtEndOfLine(v154, v106, v107);
    if (v98 >= v46)
    {
      v111 = 1;
    }

    else
    {
      v111 = v110;
    }

    if ((v111 & 1) == 0)
    {
      if (!((v46 == *v67) | v109 & 1))
      {
        IsLeadingEdge = 0;
        goto LABEL_64;
      }

LABEL_63:
      IsLeadingEdge = 1;
      v98 = v46;
LABEL_64:
      v112 = MEMORY[0x277D81490];
      if (*(v67 + 24) < 0)
      {
        v113 = MEMORY[0x277D81490];
      }

      else
      {
        v113 = v67;
      }

      v116 = v113;
      v115 = *v113;
      v114 = v116[1];
      v117 = &v98[-v115] < v114 && v98 >= v115;
      if (v117 || v98 == (v115 + v114))
      {
        isVisual = objc_msgSend_isVisual(v154, v106, v107);
        sub_276D6A1CC(v67, v98, IsLeadingEdge, isVisual, 0);
        v23 = v126;
        v127 = *(v67 + 32);
        v158 = 0.0;
        v159 = 0.0;
        v156 = 0.0;
        v157 = 0.0;
        v155 = 0.0;
        v130 = v127 - v95;
        if (sub_276D6B974(v67, v46, &v159, &v158, &v157, &v156, &v155))
        {
          v131 = floor(v130 + v158 * 0.5 - v159);
          v25 = v157 + v156 + v155;
          v23 = v23 - v25;
          v132 = 0.0;
        }

        else
        {
          if (objc_msgSend_textIsVertical(self, v128, v129) && !v166)
          {
            *&v162 = (*&v161 + *&v162) * 0.5;
            *&v161 = v162;
          }

          v131 = floor(v130 - *&v161 - *(&v162 + 1));
          v132 = ceil(v130 + *&v162) - v131;
          v25 = 0.0;
        }

        v133 = *(v67 + 48);
        v134 = *(v67 + 64);
        v135 = *(v67 + 24);
        if (v135)
        {
          v26 = *(v67 + 64);
        }

        else
        {
          v26 = v132;
        }

        if (v135)
        {
          v24 = *(v67 + 48);
        }

        else
        {
          v24 = v131;
        }

        if ((v135 & 0x100000000) != 0)
        {
          if (objc_msgSend_isVisual(v154, v128, v129))
          {
            v138 = objc_msgSend_leadingCharIndex(v154, v136, v137);
          }

          else
          {
            v138 = objc_msgSend_start(v154, v136, v137);
          }

          if (*(v67 + 24) < 0)
          {
            v139 = v112;
          }

          else
          {
            v139 = v67;
          }

          if (v138 >= *v139 + v139[1])
          {
            v140 = sub_276D64990(v67);
            objc_msgSend_trailingCaretBounds(v140, v141, v142);
            v144 = v143;
            v26 = v145;

            v24 = v133 + v144;
          }

          else
          {
            v26 = v134;
            v24 = v133;
          }
        }
      }

      else
      {
        v118 = MEMORY[0x277D81150];
        v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[TSWPColumn p_untransformedCaretRectForSelection:]");
        v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v122, v119, v121, 1974, 0, "invalid charIndex for line fragment");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v81 = v150;
      v78 = v151;
      goto LABEL_99;
    }

LABEL_60:
    if (!v109)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v39 = MEMORY[0x277D81150];
  v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSWPColumn p_untransformedCaretRectForSelection:]");
  v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 1893, 0, "invalid selection");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
LABEL_101:

  v146 = v23;
  v147 = v24;
  v148 = v25;
  v149 = v26;
  result.size.height = v149;
  result.size.width = v148;
  result.origin.y = v147;
  result.origin.x = v146;
  return result;
}

- (CGRect)caretRectForSelection:(id)a3
{
  objc_msgSend_p_untransformedCaretRectForSelection_(self, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_transformFromWP(self, v12, v13);
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  return CGRectApplyAffineTransform(v15, &v14);
}

- (CGRect)glyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  v28 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  objc_msgSend_p_glyphRectsForRange_includingLabel_(self, a2, a3.location, a3.length, a4);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v8 = v24 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v12)
  {
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_CGRectValue(*(*(&v23 + 1) + 8 * v14), v10, v11, v23);
        v32.origin.x = v15;
        v32.origin.y = v16;
        v32.size.width = v17;
        v32.size.height = v18;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v30 = CGRectUnion(v29, v32);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v23, v27, 16);
    }

    while (v12);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)p_glyphRectsForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  v128 = a4;
  v148[2] = *MEMORY[0x277D85DE8];
  v127 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3.location);
  objc_msgSend_range(self, v5, v6);
  v7 = TSUIntersectionRangeWithEdge();
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v10 = *ptr;
    v129 = *(ptr + 1);
    if (*ptr != v129)
    {
      v126 = v7 + v8;
      while (1)
      {
        v134.origin.x = *MEMORY[0x277CBF398];
        v134.origin.y = *(MEMORY[0x277CBF398] + 8);
        v134.size.width = *(MEMORY[0x277CBF398] + 16);
        v134.size.height = *(MEMORY[0x277CBF398] + 24);
        v11 = *v10;
        if (*(*v10 + 24) < 0)
        {
          v11 = MEMORY[0x277D81490];
        }

        v13 = *v11;
        v12 = v11[1];
        v14 = TSUIntersectionRangeWithEdge();
        range1 = length;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL && (v12 || v13 != v126))
        {
          goto LABEL_64;
        }

        v17 = &length[v14];
        if (&length[v14] >= a3.location + a3.length)
        {
          v17 = a3.location + a3.length;
        }

        v132 = v17;
        if (v14 < v17)
        {
          break;
        }

LABEL_51:
        v84 = *v10;
        if ((*(*v10 + 25) & 0x10) != 0)
        {
          sub_276D69B10(v84);
        }

        else
        {
          sub_276D69ADC(v84);
        }

        if (v128)
        {
          v85 = sub_276D6492C(*v10);
          if (v85)
          {
            v86 = TSUIntersectionRangeWithEdge() == 0x7FFFFFFFFFFFFFFFLL;

            if (!v86)
            {
              v87 = sub_276D69474(*v10);
              v89 = v88;
              v91 = v90;
              v93 = v92;
              v94 = sub_276D6492C(*v10);
              v99 = objc_msgSend_textLine(v94, v95, v96);
              if (v99)
              {
                v100 = sub_276D67A10();
                ImageBounds = CTLineGetImageBounds(v99, v100);
                x = ImageBounds.origin.x;
                y = ImageBounds.origin.y;
                width = ImageBounds.size.width;
                height = ImageBounds.size.height;
                v105 = sub_276D69638(*v10);
                v107 = v106;
                if (objc_msgSend_isLabelTateChuYoko(v94, v108, v109))
                {
                  CGAffineTransformMakeRotation(&v137, 1.57079633);
                  v164.origin.x = x;
                  v164.origin.y = y;
                  v164.size.width = width;
                  v164.size.height = height;
                  v165 = CGRectApplyAffineTransform(v164, &v137);
                  x = v165.origin.x;
                  y = v165.origin.y;
                  width = v165.size.width;
                  height = v165.size.height;
                }

                v166.origin.x = v105 + x;
                v166.origin.y = v107 - y - height;
                v166.size.width = width;
                v166.size.height = height;
                v167 = CGRectIntegral(v166);
                v87 = v167.origin.x;
                v89 = v167.origin.y;
                v91 = v167.size.width;
                v93 = v167.size.height;
              }

              v110 = objc_msgSend_shadow(v94, v97, v98);
              if (objc_msgSend_isEnabled(v110, v111, v112))
              {
                objc_msgSend_shadowBoundsForRect_(v110, v113, v114, v87, v89, v91, v93);
                v87 = v115;
                v89 = v116;
                v91 = v117;
                v93 = v118;
              }

              v171.origin.x = v87;
              v171.origin.y = v89;
              v171.size.width = v91;
              v171.size.height = v93;
              v134 = CGRectUnion(v134, v171);
            }
          }
        }

LABEL_64:
        if (!CGRectIsNull(v134))
        {
          objc_msgSend_transformFromWP(self, v119, v120);
          v168 = CGRectApplyAffineTransform(v134, &v137);
          v123 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v121, v122, v168.origin.x, v168.origin.y, v168.size.width, v168.size.height);
          objc_msgSend_addObject_(v127, v124, v123);
        }

        v10 += 2;
        if (v10 == v129)
        {
          goto LABEL_67;
        }
      }

      v130 = v14;
      v18 = v14;
      while (1)
      {
        v147 = 0x101000000;
        v148[0] = 0;
        *(v148 + 7) = 0;
        v146 = 0;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v141 = 0u;
        v139 = 0u;
        v140 = 0u;
        v138 = 0u;
        memset(&v137, 0, sizeof(v137));
        objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(self->_storage, length, v18, &v147, &v137, &v136);
        v150.location = v130;
        v150.length = range1;
        v151 = NSIntersectionRange(v150, v136);
        v19 = NSIntersectionRange(v151, a3);
        length = v19.length;
        if (v19.length)
        {
          break;
        }

LABEL_47:
        if (v18 + 1 > v136.length + v136.location)
        {
          ++v18;
        }

        else
        {
          v18 = v136.length + v136.location;
        }

        if (v18 >= v132)
        {
          goto LABEL_51;
        }
      }

      v20 = sub_276D68AA0(*v10, v19.location, v19.length, self);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v152.origin.x = sub_276D6906C(*v10, v19.location, v19.length);
      v27 = v152.origin.x;
      v28 = v152.origin.y;
      v29 = v152.size.width;
      v30 = v152.size.height;
      if (!CGRectIsEmpty(v152))
      {
        v153.origin.x = v20;
        v153.origin.y = v22;
        v153.size.width = v24;
        v153.size.height = v26;
        v169.origin.x = v27;
        v169.origin.y = v28;
        v169.size.width = v29;
        v169.size.height = v30;
        v154 = CGRectUnion(v153, v169);
        v20 = v154.origin.x;
        v22 = v154.origin.y;
        v24 = v154.size.width;
        v26 = v154.size.height;
      }

      v155.origin.x = v20;
      v155.origin.y = v22;
      v155.size.width = v24;
      v155.size.height = v26;
      if (!CGRectIsEmpty(v155))
      {
        v156.origin.x = v20;
        v156.origin.y = v22;
        v156.size.width = v24;
        v156.size.height = v26;
        v157 = CGRectIntegral(v156);
        v20 = v157.origin.x;
        v22 = v157.origin.y;
        v24 = v157.size.width;
        v26 = v157.size.height;
        MaxX = CGRectGetMaxX(v157);
        if (MaxX == rint(CGRectGetMaxX(self->_frameBounds)) + -1.0)
        {
          v24 = v24 + 1.0;
        }
      }

      v33 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(self->_storage, v31, 23, v19.location, 0);
      v36 = v33;
      if (!v33 || !objc_msgSend_unsignedIntValue(v33, v34, v35))
      {
        v38 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(self->_storage, v34, 27, v19.location, 0);

        v36 = v38;
      }

      if (objc_msgSend_unsignedIntValue(v36, v34, v37))
      {
        sub_276D65948(*v10, v19.location, v19.length, 1, 1, 0, 0, 0, __p);
        sub_276D398C4(__p);
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v158.origin.x = v20;
        v158.origin.y = v22;
        v158.size.width = v24;
        v158.size.height = v26;
        v170.origin.x = v41;
        v170.origin.y = v43;
        v170.size.width = v45;
        v170.size.height = v47;
        v159 = CGRectUnion(v158, v170);
        v20 = v159.origin.x;
        v22 = v159.origin.y;
        v24 = v159.size.width;
        v26 = v159.size.height;
      }

      if (v19.length == 1)
      {
        v48 = objc_msgSend_attachmentAtCharIndex_(self->_storage, v39, v19.location);
        objc_opt_class();
        objc_opt_class();
        v49 = TSUDynamicCast();
        v52 = objc_msgSend_drawable(v49, v50, v51);
        v53 = TSUDynamicCast();

        if (v53 && objc_msgSend_isInlineWithText(v53, v54, v55))
        {
          v58 = objc_msgSend_shadow(v53, v56, v57);
          v61 = v58;
          if (v58 && objc_msgSend_isEnabled(v58, v59, v60))
          {
            objc_msgSend_shadowBoundsForRect_(v61, v62, v63, v20, v22, v24, v26);
            v20 = v64;
            v22 = v65;
            v24 = v66;
            v26 = v67;
          }

          goto LABEL_45;
        }
      }

      v68 = *(*v10 + 24);
      if ((v68 & 0x20) != 0)
      {
        v69 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(self->_storage, v39, 40, v19.location, 0);
        v72 = v69;
        if (v69 && objc_msgSend_isEnabled(v69, v70, v71))
        {
          objc_msgSend_shadowBoundsForRect_(v72, v73, v74, v20, v22, v24, v26);
          v20 = v75;
          v22 = v76;
          v24 = v77;
          v26 = v78;
        }

        v68 = *(*v10 + 24);
      }

      if ((v68 & 0x20000000) == 0)
      {
        goto LABEL_46;
      }

      v79 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(self->_storage, v39, 50, v19.location, 0);
      v48 = v79;
      if (v79)
      {
        objc_msgSend_renderedWidth(v79, v80, v81);
        v83 = v82 * -0.5;
        v160.origin.x = v20;
        v160.origin.y = v22;
        v160.size.width = v24;
        v160.size.height = v26;
        v161 = CGRectInset(v160, v83, v83);
        v20 = v161.origin.x;
        v22 = v161.origin.y;
        v24 = v161.size.width;
        v26 = v161.size.height;
      }

LABEL_45:

LABEL_46:
      v162.origin.x = v20;
      v162.origin.y = v22;
      v162.size.width = v24;
      v162.size.height = v26;
      v134 = CGRectUnion(v162, v134);

      goto LABEL_47;
    }
  }

LABEL_67:

  return v127;
}

- (unsigned)fontTraitsForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  v49 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276D5896C;
  aBlock[3] = &unk_27A6F3FE8;
  aBlock[4] = &v61;
  v5 = _Block_copy(aBlock);
  objc_msgSend_range(self, v6, v7);
  v8 = TSUIntersectionRangeWithEdge();
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v11 = *ptr;
    v50 = *(ptr + 1);
    if (*ptr != v50)
    {
      v48 = v8 + v9;
      do
      {
        v12 = *v11;
        if (*(*v11 + 24) < 0)
        {
          v12 = MEMORY[0x277D81490];
        }

        v14 = *v12;
        v13 = v12[1];
        if (TSUIntersectionRangeWithEdge() != 0x7FFFFFFFFFFFFFFFLL || (!v13 ? (v15 = v14 == v48) : (v15 = 0), v15))
        {
          if (sub_276D648AC(*v11))
          {
            v16 = sub_276D648D0(*v11, 0);
            v17 = sub_276DD1F38(v16);
            if (v17)
            {
              v18 = CTLineGetGlyphRuns(v17);
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v19 = v18;
              v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v56, v66, 16);
              if (v21)
              {
                v22 = *v57;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v57 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v56 + 1) + 8 * i);
                    StringRange = CTRunGetStringRange(v24);
                    v26 = sub_276D644CC(*v11);
                    v28 = objc_msgSend_charRangeMappedToStorage_(v26, v27, StringRange.location, StringRange.length);
                    v30 = v29;

                    v68.location = v28;
                    v68.length = v30;
                    length = NSIntersectionRange(v68, a3).length;
                    if (length)
                    {
                      v5[2](v5, v24);
                    }
                  }

                  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, length, &v56, v66, 16);
                }

                while (v21);
              }
            }
          }

          v32 = *v11;
          if ((*(*v11 + 25) & 0x10) != 0)
          {
            sub_276D69B10(v32);
          }

          else
          {
            sub_276D69ADC(v32);
          }

          if (v49)
          {
            v33 = sub_276D6492C(*v11);
            if (v33)
            {
              v34 = TSUIntersectionRangeWithEdge() == 0x7FFFFFFFFFFFFFFFLL;

              if (!v34)
              {
                v35 = sub_276D6492C(*v11);
                v38 = objc_msgSend_textLine(v35, v36, v37);

                if (v38)
                {
                  v39 = CTLineGetGlyphRuns(v38);
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v40 = v39;
                  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v52, v65, 16);
                  if (v42)
                  {
                    v43 = *v53;
                    do
                    {
                      for (j = 0; j != v42; ++j)
                      {
                        if (*v53 != v43)
                        {
                          objc_enumerationMutation(v40);
                        }

                        v5[2](v5, *(*(&v52 + 1) + 8 * j));
                      }

                      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v45, &v52, v65, 16);
                    }

                    while (v42);
                  }
                }
              }
            }
          }
        }

        v11 += 2;
      }

      while (v11 != v50);
    }
  }

  v46 = *(v62 + 6);

  _Block_object_dispose(&v61, 8);
  return v46;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)a3 glyphRange:(_NSRange)a4
{
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  ptr = self->_lineFragmentArray.__ptr_;
  v11 = *ptr;
  v12 = *(ptr + 1);
  if (v11 != v12)
  {
    while (1)
    {
      v13 = (*(*v11 + 24) < 0 ? MEMORY[0x277D81490] : *v11);
      v16 = v13;
      v14 = *v13;
      v15 = v16[1];
      v18 = a3 >= v14;
      v17 = a3 - v14;
      v18 = !v18 || v17 >= v15;
      if (!v18)
      {
        break;
      }

      v11 += 2;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    v43.origin.x = sub_276D68E18(*v11, a3, a4.location, a4.length);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    if (!CGRectIsNull(v43))
    {
      objc_msgSend_transformFromWP(self, v20, v21);
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v45 = CGRectApplyAffineTransform(v44, &v42);
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
    }
  }

LABEL_14:
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  if (!CGRectIsEmpty(v46))
  {
    v23 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(self->_storage, v22, 40, a3, 0);
    if (objc_msgSend_isEnabled(v23, v24, v25))
    {
      objc_msgSend_shadowBoundsForRect_(v23, v26, v27, x, y, width, height);
      x = v28;
      y = v29;
      width = v30;
      height = v31;
    }

    v32 = objc_msgSend_valueForProperty_atCharIndex_effectiveRange_(self->_storage, v26, 50, a3, 0);
    v35 = v32;
    if (v32)
    {
      objc_msgSend_renderedWidth(v32, v33, v34);
      v37 = v36 * -0.5;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v48 = CGRectInset(v47, v37, v37);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
    }
  }

  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)a3
{
  ptr = self->_lineFragmentArray.__ptr_;
  v5 = *ptr;
  v4 = *(ptr + 1);
  if (v5 != v4)
  {
    while (1)
    {
      v7 = (*(*v5 + 24) < 0 ? MEMORY[0x277D81490] : *v5);
      v10 = v7;
      v8 = *v7;
      v9 = v10[1];
      v12 = a3 >= v8;
      v11 = a3 - v8;
      v12 = !v12 || v11 >= v9;
      if (!v12)
      {
        break;
      }

      v5 += 2;
      if (v5 == v4)
      {
        return 0;
      }
    }

    v14 = *sub_276D648E8(*v5);
    v15 = *(sub_276D648E8(*v5) + 8);
    while (v14 != v15)
    {
      if (*(v14 + 24) == a3)
      {
        v16 = sub_276DD1F38(v14);

        return CTLineGetGlyphCount(v16);
      }

      v14 += 104;
    }
  }

  return 0;
}

+ (CGRect)columnRectForRange:(_NSRange)a3 withColumns:(id)a4
{
  length = a3.length;
  location = a3.location;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v6;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v44, v48, 16);
  if (v15)
  {
    v16 = *v45;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = objc_msgSend_range(v18, v13, v14, v44);
        v21 = v20;
        v23 = objc_msgSend_storage(v18, v20, v22);
        LODWORD(v19) = &v21[v19] > objc_msgSend_length(v23, v24, v25);

        if (v19)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "+[TSWPColumn columnRectForRange:withColumns:]");
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 2312, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
          goto LABEL_13;
        }

        v50.location = objc_msgSend_range(v18, v26, v27);
        v51.location = location;
        v51.length = length;
        v28 = NSIntersectionRange(v50, v51);
        v13 = v28.length;
        if (v28.length)
        {
          objc_msgSend_columnRectForRange_(v18, v28.length, v28.location, v28.length);
          v55.origin.x = v29;
          v55.origin.y = v30;
          v55.size.width = v31;
          v55.size.height = v32;
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          v53 = CGRectUnion(v52, v55);
          x = v53.origin.x;
          y = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v44, v48, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

+ (CGRect)labelRectForCharIndex:(unint64_t)a3 withColumns:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = a4;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = v5;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v81, v85, 16);
  if (v14)
  {
    v15 = *v82;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v82 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v81 + 1) + 8 * i);
        v18 = objc_msgSend_range(v17, v12, v13);
        v20 = v19;
        v22 = objc_msgSend_storage(v17, v19, v21);
        LODWORD(v18) = &v20[v18] > objc_msgSend_length(v22, v23, v24);

        if (v18)
        {
          v30 = MEMORY[0x277D81150];
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSWPColumn labelRectForCharIndex:withColumns:]");
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 2330, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
          goto LABEL_30;
        }

        v27 = objc_msgSend_range(v17, v25, v26);
        v28 = a3 - v27 < v12 && a3 >= v27;
        if (a3 == v27 || v28)
        {
          v37 = objc_msgSend_lineIndexForCharIndex_eol_(v17, v12, a3, 0);
          if (v37 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v39 = objc_msgSend_lineFragmentAtIndex_(v17, v38, v37);
            if (v39)
            {
              if (*(v39 + 24) < 0)
              {
                v41 = MEMORY[0x277D81490];
              }

              else
              {
                v41 = v39;
              }

              if (*v41 == a3)
              {
                v80 = 0;
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                if (v17)
                {
                  objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v17, v40, a3, 0);
                  v42 = *(&v69 + 1);
                  v43 = *&v69;
                  v44 = *(&v70 + 1);
                  v45 = *&v70;
                  objc_msgSend_transformFromWP(v17, v46, v47);
                }

                else
                {
                  v44 = 0.0;
                  v45 = 0.0;
                  v42 = 0.0;
                  v43 = 0.0;
                  memset(&v59, 0, sizeof(v59));
                }

                v87.origin.x = v43;
                v87.origin.y = v42;
                v87.size.width = v45;
                v87.size.height = v44;
                v88 = CGRectApplyAffineTransform(v87, &v59);
                x = v88.origin.x;
                y = v88.origin.y;
                width = v88.size.width;
                height = v88.size.height;
              }
            }

            else
            {
              v48 = MEMORY[0x277D81150];
              v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "+[TSWPColumn labelRectForCharIndex:withColumns:]");
              v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 2338, 0, "invalid nil value for '%{public}s'", "lf");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
            }
          }

          goto LABEL_30;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v81, v85, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  v55 = x;
  v56 = y;
  v57 = width;
  v58 = height;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (CGRect)columnRectForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v32.location = objc_msgSend_range(self, a2, a3.location);
  v32.length = v10;
  v30.location = location;
  v30.length = length;
  v11 = NSIntersectionRange(v30, v32).length;
  if (v11)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v14 = *ptr;
    v15 = *(ptr + 1);
    if (*ptr != v15)
    {
      v16 = MEMORY[0x277D81490];
      do
      {
        v17 = *v14;
        if (((*v14)[1].length & 0x8000000000000000) != 0)
        {
          v17 = v16;
        }

        v31.location = location;
        v31.length = length;
        v18 = NSIntersectionRange(v31, *v17);
        v11 = v18.length;
        if (v18.length)
        {
          sub_276D65948(*v14, v18.location, v18.length, 1, 1, 0, 0, 0, &__p);
          sub_276D398C4(&__p);
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          if (*&__p.a)
          {
            __p.b = __p.a;
            operator delete(*&__p.a);
          }

          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v37.origin.x = v20;
          v37.origin.y = v22;
          v37.size.width = v24;
          v37.size.height = v26;
          v34 = CGRectUnion(v33, v37);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
        }

        v14 += 2;
      }

      while (v14 != v15);
    }
  }

  v27 = self->_frameBounds.origin.x;
  v28 = self->_frameBounds.size.width;
  objc_msgSend_transformFromWP(self, v11, v12);
  v35.origin.x = v27;
  v35.origin.y = y;
  v35.size.width = v28;
  v35.size.height = height;
  return CGRectApplyAffineTransform(v35, &__p);
}

- (CGRect)typographicBounds
{
  v5 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  ptr = self->_lineFragmentArray.__ptr_;
  v9 = *ptr;
  v10 = *(ptr + 1);
  while (v9 != v10)
  {
    x = sub_276D69A6C(*v9);
    y = v12;
    width = v14;
    height = v16;
    v18 = sub_276D6492C(*v9);

    if (v18)
    {
      v29.origin.x = sub_276D69474(*v9);
      v29.origin.y = v19;
      v29.size.width = v20;
      v29.size.height = v21;
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v24 = CGRectUnion(v23, v29);
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
    }

    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v30.origin.x = v5;
    v30.origin.y = v4;
    v30.size.width = v7;
    v30.size.height = v6;
    v26 = CGRectUnion(v25, v30);
    v5 = v26.origin.x;
    v4 = v26.origin.y;
    v7 = v26.size.width;
    v6 = v26.size.height;
    v9 += 2;
  }

  objc_msgSend_transformFromWP(self, a2, v2);
  v27.origin.x = v5;
  v27.origin.y = v4;
  v27.size.width = v7;
  v27.size.height = v6;
  return CGRectApplyAffineTransform(v27, &v22);
}

- (id)lineSelectionsForSelection:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, 1);
  v9 = objc_msgSend_range(self, v7, v8);
  v11 = v10;
  v37.location = objc_msgSend_DEPRECATED_range(v4, v10, v12);
  v38.location = v9;
  v38.length = v11;
  v13 = NSIntersectionRange(v37, v38);
  if (v13.length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v15 = *ptr;
    v16 = *(ptr + 1);
    if (*ptr != v16)
    {
      v17 = v13.length + v13.location - 1;
      while (1)
      {
        v18 = *v15;
        if (((*v15)[3] & 0x8000000000000000) != 0)
        {
          v18 = MEMORY[0x277D81490];
        }

        v20 = *v18;
        v19 = v18[1];
        v22 = v13.location >= *v18;
        v21 = v13.location - *v18;
        v22 = !v22 || v21 >= v19;
        if (v22)
        {
          if (v17 >= v20 && v17 - v20 < v19)
          {
            v33 = [TSWPSelection alloc];
            v41.location = v20;
            v41.length = v19;
            v34 = NSIntersectionRange(v13, v41);
            v29 = objc_msgSend_initWithRange_(v33, v34.length, v34.location, v34.length);

            objc_msgSend_addObject_(v6, v35, v29);
            goto LABEL_27;
          }

          v39.location = v20;
          v39.length = v19;
          if (NSIntersectionRange(v13, v39).length)
          {
            v24 = [TSWPSelection alloc];
            v29 = objc_msgSend_initWithRange_(v24, v25, v20, v19);

            objc_msgSend_addObject_(v6, v26, v29);
          }

          else
          {
            v29 = v4;
          }
        }

        else
        {
          v27 = [TSWPSelection alloc];
          v40.location = v20;
          v40.length = v19;
          v28 = NSIntersectionRange(v13, v40);
          v29 = objc_msgSend_initWithRange_(v27, v28.length, v28.location, v28.length);

          objc_msgSend_addObject_(v6, v30, v29);
          if (v17 >= v20 && v17 - v20 < v19)
          {
            goto LABEL_27;
          }
        }

        v15 += 2;
        v4 = v29;
        if (v15 == v16)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v29 = v4;
LABEL_27:

  return v6;
}

+ (BOOL)partitionedAttachmentStartsAtCharIndex:(unint64_t)a3 withColumns:(id)a4
{
  v4 = a3;
  v5 = objc_msgSend_columnForCharIndex_allowEndOfColumn_withColumns_(TSWPColumn, a2, a3, 1, a4);
  LOBYTE(v4) = objc_msgSend_p_isFirstPartitionForCharIndex_(v5, v6, v4);

  return v4;
}

- (BOOL)p_isFirstPartitionForCharIndex:(unint64_t)a3
{
  ptr = self->_lineFragmentArray.__ptr_;
  v4 = *ptr;
  v5 = *(ptr + 1);
  if (v4 == v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 24);
    if ((v7 & 0x200) != 0)
    {
      if (v7 < 0)
      {
        v6 = MEMORY[0x277D81490];
      }

      v10 = v6;
      v8 = *v6;
      v9 = v10[1];
      v11 = a3 - v8 < v9 && a3 >= v8;
      v12 = v8 + v9;
      if (v11 || v12 == a3)
      {
        break;
      }
    }

    v4 += 16;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return 1;
}

- (CGRect)firstRectForSelection:(id)a3 includeSpaceAfter:(BOOL)a4 includeSpaceBefore:(BOOL)a5 includeLeading:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = *MEMORY[0x277CBF398];
  v12 = *(MEMORY[0x277CBF398] + 8);
  v13 = *(MEMORY[0x277CBF398] + 16);
  v14 = *(MEMORY[0x277CBF398] + 24);
  v17 = objc_msgSend_DEPRECATED_range(v10, v15, v16);
  v19 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, v18, v17, v18);
  v22 = objc_msgSend_type(v10, v20, v21);
  v42 = 0;
  v24 = objc_msgSend_pMutableRectsForSelectionRanges_selectionType_includeSpaceAfter_includeSpaceBefore_includeLeading_forParagraphMode_includeRuby_includePaginatedAttachments_outranges_(self, v23, v19, v22, v8, v7, v6, 0, v42, 0);
  v26 = objc_msgSend_pTransformReturnRects_(self, v25, v24);

  if (objc_msgSend_count(v26, v27, v28))
  {
    v31 = objc_msgSend_firstObject(v26, v29, v30);
    objc_msgSend_CGRectValue(v31, v32, v33);
    v11 = v34;
    v12 = v35;
    v13 = v36;
    v14 = v37;
  }

  v38 = v11;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (const)pColumnEndingPartitionedLineFragmentInSelectionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result = objc_msgSend_lineCount(self, a2, a3.location);
  if (result)
  {
    result = objc_msgSend_lineFragmentAtIndex_(self, v7, result - 1);
    if ((*(result + 3) & 0x101) == 1)
    {
      if (*result - location >= length || *result < location)
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)pMutableRectsForSelectionRanges:(id)a3 selectionType:(int64_t)a4 includeSpaceAfter:(BOOL)a5 includeSpaceBefore:(BOOL)a6 includeLeading:(BOOL)a7 forParagraphMode:(BOOL)a8 includeRuby:(BOOL)a9 includePaginatedAttachments:(BOOL)a10 outranges:(id *)a11
{
  v214 = a8;
  v221 = a7;
  v212 = a5;
  v219 = a3;
  v14 = objc_msgSend_superRange(v219, v12, v13);
  v16 = v15;
  v18 = objc_msgSend_length(self->_storage, v15, v17);
  v224 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v19, 1);
  range = v16;
  v22 = v14 + v16;
  if (v14 + v16 > v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPColumn pMutableRectsForSelectionRanges:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:outranges:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    v245.location = v14;
    v245.length = v16;
    v27 = NSStringFromRange(v245);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v26, 2490, 0, "Illegal selection %{public}@ range past end of storage %lu", v27, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  v31 = objc_msgSend_range(self, v20, v21);
  if (&v32[v31] > v18)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSWPColumn pMutableRectsForSelectionRanges:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:outranges:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    v40 = objc_msgSend_wpKind(self->_storage, v38, v39);
    v43 = objc_msgSend_storageChangeCount(self, v41, v42);
    v246.location = objc_msgSend_range(self, v44, v45);
    v46 = NSStringFromRange(v246);
    v49 = objc_msgSend_changeCount(self->_storage, v47, v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v50, v35, v37, 2491, 0, "Stale column (kind: %lu changeCount: %lu); range %{public}@ extends past end of storage %lu (changeCount: %lu)", v40, v43, v46, v18, v49);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
  }

  if (v22 > v18 || (v53 = objc_msgSend_range(self, v32, v33), v18 < &v32[v53]))
  {
    v225 = objc_msgSend_array(MEMORY[0x277CBEB18], v32, v33);
    goto LABEL_8;
  }

  v225 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v32, 1);
  v57 = objc_msgSend_range(self, v55, v56);
  v59 = v58;
  v60 = a11;
  v247.length = range;
  v61 = v57;
  v247.location = v14;
  v248.location = v61;
  v248.length = v59;
  v62 = NSIntersectionRange(v247, v248);
  v63 = a10;
  if (objc_msgSend_intersectsRange_(v219, v62.length, v61, v59))
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v67 = *ptr;
    v216 = *(ptr + 1);
    if (*ptr != v216)
    {
      v68 = 0;
      rangea = 0;
      v208 = v62.length + v62.location - 1;
      v215 = -1.0;
      v69 = 0x277CCA000uLL;
      v213 = 0.0;
      v209 = 0.0;
      v217 = self;
      while (1)
      {
        v70 = *(*v67 + 24);
        v71 = MEMORY[0x277D81490];
        if (v70 >= 0)
        {
          v71 = *v67;
        }

        v74 = v71;
        v72 = *v71;
        v73 = v74[1];
        if ((v70 & 1) != 0 && !v63)
        {
          goto LABEL_81;
        }

        v218.location = v72;
        v218.length = v73;
        if (*(*v67 + 32) != v215)
        {
          v68 = objc_msgSend_count(v225, length, v65);
          MaxY = CGRectGetMaxY(*(*v67 + 40));
          v215 = *(*v67 + 32);
          v209 = *(*v67 + 136);
          v76 = MaxY - (v215 + v209);
          if (*(*v67 + 152) < v76)
          {
            v76 = *(*v67 + 152);
          }

          v213 = fmax(v76, 0.0);
        }

        v77 = NSIntersectionRange(v62, v218);
        length = v77.length;
        if (v77.length)
        {
          break;
        }

LABEL_80:
        ++rangea;
LABEL_81:
        v67 += 2;
        if (v67 == v216)
        {
          goto LABEL_82;
        }
      }

      if (v214)
      {
        v78 = objc_msgSend_valueWithCGRect_(*(v69 + 3680), v77.length, v65, *(*v67 + 40), *(*v67 + 48), *(*v67 + 56), *(*v67 + 64));
        objc_msgSend_addObject_(v225, v79, v78);

        if (!v224)
        {
          goto LABEL_75;
        }

        v80 = *v67;
        if (*(*v67 + 24) < 0)
        {
          v80 = MEMORY[0x277D81490];
        }

        v81 = objc_msgSend_valueWithRange_(*(v69 + 3680), length, *v80, v80[1]);
        objc_msgSend_addObject_(v224, v82, v81);
LABEL_74:

LABEL_75:
        if (v208 >= v218.location && v208 - v218.location < v218.length)
        {
LABEL_82:
          if (v213 > 0.0 && v212)
          {
            v187 = v215 + v209 + v213;
            while (v68 < objc_msgSend_count(v225, length, v65))
            {
              v189 = objc_msgSend_objectAtIndexedSubscript_(v225, v188, v68);
              objc_msgSend_CGRectValue(v189, v190, v191);
              v193 = v192;
              v195 = v194;
              v197 = v196;
              v199 = v198;

              v262.origin.x = v193;
              v262.origin.y = v195;
              v262.size.width = v197;
              v262.size.height = v199;
              v200 = CGRectGetMaxY(v262);
              if (v187 == v200 || vabdd_f64(v187, v200) < 0.00999999978)
              {
                v201 = objc_msgSend_valueWithCGRect_(*(v69 + 3680), length, v65, v193, v195, v197, v199 - v213);
                objc_msgSend_setObject_atIndexedSubscript_(v225, v202, v201, v68);
              }

              ++v68;
            }
          }

          goto LABEL_90;
        }

        goto LABEL_80;
      }

      if (v224)
      {
        v207 = objc_msgSend_array(MEMORY[0x277CBEB18], v77.length, v65);
      }

      else
      {
        v207 = 0;
      }

      v235 = 0;
      v236 = &v235;
      v237 = 0x4812000000;
      v238 = sub_276D5A898;
      v239 = sub_276D5A8BC;
      v240 = &unk_276FDE562;
      v242 = 0;
      v243 = 0;
      v241 = 0;
      v83 = objc_msgSend_range(self, length, v65);
      v85 = v84;
      v226[0] = MEMORY[0x277D85DD0];
      v226[1] = 3221225472;
      v226[2] = sub_276D5A8D4;
      v226[3] = &unk_27A6F4010;
      v229 = v77;
      v230 = v67;
      v231 = v212;
      v232 = a6;
      v233 = a9;
      v234 = v63;
      v86 = v207;
      v227 = v86;
      v228 = &v235;
      objc_msgSend_enumerateRangesInRange_usingBlock_(v219, v87, v83, v85, v226);
      v220 = v86;
      v205 = objc_msgSend_count(v225, v88, v89);
      v69 = 0x277CCA000uLL;
      if (v224)
      {
        v93 = v236[6];
        v92 = v236[7];
        if (objc_msgSend_count(v220, v90, v91) != (v92 - v93) >> 5)
        {
          v94 = MEMORY[0x277D81150];
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TSWPColumn pMutableRectsForSelectionRanges:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:outranges:]");
          v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          v99 = v236[6];
          v98 = v236[7];
          v102 = objc_msgSend_count(v220, v100, v101);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v103, v95, v97, 2556, 0, "Mismatch between rect & range count: %lu vs. %lu", (v98 - v99) >> 5, v102);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105);
        }
      }

      v206 = v68;
      v107 = v236[6];
      v106 = v236[7];
      if (v107 == v106)
      {
LABEL_65:
        if (a4 == 2)
        {
          v60 = a11;
          self = v217;
          v68 = v206;
          v81 = v220;
          v161 = sub_276D69474(*v67);
          v163 = v162;
          v165 = v164;
          v167 = v166;
        }

        else
        {
          v161 = *MEMORY[0x277CBF398];
          v163 = *(MEMORY[0x277CBF398] + 8);
          v165 = *(MEMORY[0x277CBF398] + 16);
          v167 = *(MEMORY[0x277CBF398] + 24);
          v60 = a11;
          self = v217;
          v68 = v206;
          v81 = v220;
        }

        v259.origin.x = v161;
        v259.origin.y = v163;
        v259.size.width = v165;
        v259.size.height = v167;
        if (!CGRectIsEmpty(v259) && v205 < objc_msgSend_count(v225, v168, v169))
        {
          v171 = objc_msgSend_objectAtIndexedSubscript_(v225, v170, v205);
          objc_msgSend_CGRectValue(v171, v172, v173);
          v175 = v174;
          v177 = v176;
          v179 = v178;
          v181 = v180;

          v260.origin.x = v175;
          v260.origin.y = v177;
          v260.size.width = v179;
          v260.size.height = v181;
          v263.origin.x = v161;
          v263.origin.y = v163;
          v263.size.width = v165;
          v263.size.height = v167;
          v261 = CGRectUnion(v260, v263);
          v184 = objc_msgSend_valueWithCGRect_(*(v69 + 3680), v182, v183, v261.origin.x, v177, v261.size.width, v181);
          objc_msgSend_setObject_atIndexedSubscript_(v225, v185, v184, v205);
        }

        _Block_object_dispose(&v235, 8);
        if (v241)
        {
          v242 = v241;
          operator delete(v241);
        }

        v63 = a10;
        goto LABEL_74;
      }

      v108 = 0;
      v109 = 0;
      while (1)
      {
        x = v107->origin.x;
        y = v107->origin.y;
        width = v107->size.width;
        height = v107->size.height;
        if (v221)
        {
          v114 = *(*v67 + 32);
          v115 = *(*v67 + 136);
          v116 = *(*v67 + 152);
          v117 = CGRectGetMaxY(*v107);
          if (v117 < v114 + v115 + v116)
          {
            v117 = v114 + v115 + v116;
          }

          height = v117 - y;
        }

        if (!rangea || v108 || !objc_msgSend_count(v225, v90, v91))
        {
          goto LABEL_51;
        }

        v118 = sub_276D6F7E8(v217->_lineFragmentArray.__ptr_, rangea - 1);
        objc_opt_class();
        v119 = sub_276D64990(v118);
        v120 = TSUDynamicCast();
        if (!v120)
        {
          break;
        }

        objc_opt_class();
        v121 = sub_276D64990(*v67);
        v122 = TSUDynamicCast();

        if (v122)
        {
          goto LABEL_50;
        }

        v123 = *(v118 + 24);
        v124 = MEMORY[0x277D81490];
        if (v123 >= 0)
        {
          v124 = v118;
        }

        v125 = v124[1];
        if (!v125)
        {
          v132 = MEMORY[0x277D81150];
          v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TSWPColumn pMutableRectsForSelectionRanges:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:outranges:]");
          v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v132, v136, v133, v135, 2573, 0, "Empty drop cap range??");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138);
          goto LABEL_50;
        }

        if (((v123 >> 12) & 1 ^ ((*(*v67 + 25) & 0x10) >> 4)))
        {
          goto LABEL_50;
        }

        v139 = objc_msgSend_containsRange_(v219, v90, v125 + *v124 - 1, **v67 + 1);
        v69 = 0x277CCA000;
        if (!v139)
        {
          goto LABEL_51;
        }

        v140 = objc_msgSend_lastObject(v225, v90, v91);
        objc_msgSend_CGRectValue(v140, v141, v142);
        rect = v143;
        v145 = v144;
        v147 = v146;
        v149 = v148;

        if ((*(v118 + 25) & 0x10) != 0)
        {
          v254.origin.x = x;
          v254.origin.y = y;
          v254.size.width = width;
          v254.size.height = height;
          MaxX = CGRectGetMaxX(v254);
          v255.origin.x = v145;
          v255.origin.y = v147;
          v255.size.width = v149;
          v255.size.height = rect;
          if (MaxX >= CGRectGetMinX(v255))
          {
            goto LABEL_51;
          }

          v256.origin.x = x;
          v256.origin.y = y;
          v256.size.width = width;
          v256.size.height = height;
          MinX = CGRectGetMinX(v256);
          v257.origin.x = v145;
          v257.origin.y = v147;
          v257.size.width = v149;
          v257.size.height = rect;
          v157 = CGRectGetMinX(v257);
          v258.origin.x = x;
          v258.origin.y = y;
          v258.size.width = width;
          v258.size.height = height;
          v158 = v157 - CGRectGetMinX(v258);
          objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v159, v160, MinX, y, v158, height);
        }

        else
        {
          v249.origin.x = v145;
          v249.origin.y = v147;
          v249.size.width = v149;
          v249.size.height = rect;
          v150 = CGRectGetMaxX(v249);
          v250.origin.x = x;
          v250.origin.y = y;
          v250.size.width = width;
          v250.size.height = height;
          if (v150 >= CGRectGetMinX(v250))
          {
            goto LABEL_51;
          }

          v251.origin.x = v145;
          v251.origin.y = v147;
          v251.size.width = v149;
          v251.size.height = rect;
          v151 = CGRectGetMaxX(v251);
          v252.origin.x = x;
          v252.origin.y = y;
          v252.size.width = width;
          v252.size.height = height;
          v152 = CGRectGetMaxX(v252);
          v253.origin.x = v145;
          v253.origin.y = v147;
          v253.size.width = v149;
          v253.size.height = rect;
          v153 = v152 - CGRectGetMaxX(v253);
          objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v154, v155, v151, y, v153, height);
        }

        v126 = LABEL_52:;
        objc_msgSend_addObject_(v225, v127, v126);

        if (v224)
        {
          v129 = v236[6];
          v128 = v236[7];
          if (objc_msgSend_count(v220, v90, v91) == (v128 - v129) >> 5)
          {
            v130 = objc_msgSend_objectAtIndexedSubscript_(v220, v90, v109);
            objc_msgSend_addObject_(v224, v131, v130);
            ++v109;
          }
        }

        ++v107;
        --v108;
        if (v107 == v106)
        {
          goto LABEL_65;
        }
      }

LABEL_50:
      v69 = 0x277CCA000uLL;
LABEL_51:
      objc_msgSend_valueWithCGRect_(*(v69 + 3680), v90, v91, x, y, width, height);
      goto LABEL_52;
    }
  }

LABEL_90:
  if (v60)
  {
    *v60 = v224;
  }

LABEL_8:

  return v225;
}

- (id)pTransformReturnRects:(id)a3
{
  v4 = a3;
  if (objc_msgSend_textIsVertical(self, v5, v6))
  {
    v10 = objc_msgSend_count(v4, v7, v8);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = objc_msgSend_objectAtIndexedSubscript_(v4, v9, i);
        objc_msgSend_CGRectValue(v12, v13, v14);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        objc_msgSend_transformFromWP(self, v23, v24);
        v32.origin.x = v16;
        v32.origin.y = v18;
        v32.size.width = v20;
        v32.size.height = v22;
        v33 = CGRectApplyAffineTransform(v32, &v30);
        v27 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v25, v26, v33.origin.x, v33.origin.y, v33.size.width, v33.size.height);
        objc_msgSend_setObject_atIndexedSubscript_(v4, v28, v27, i);
      }
    }
  }

  return v4;
}

- (id)rectsForSelectionRanges:(id)a3 selectionType:(int64_t)a4
{
  v9 = 0;
  v5 = objc_msgSend_pMutableRectsForSelectionRanges_selectionType_includeSpaceAfter_includeSpaceBefore_includeLeading_forParagraphMode_includeRuby_includePaginatedAttachments_outranges_(self, a2, a3, a4, 1, 1, 0, 0, v9, 0);
  v7 = objc_msgSend_pTransformReturnRects_(self, v6, v5);

  return v7;
}

- (id)rectsForSelectionRange:(_NSRange)a3 selectionType:(int64_t)a4 forParagraphMode:(BOOL)a5 includeRuby:(BOOL)a6 includePaginatedAttachments:(BOOL)a7
{
  v9 = a5;
  v12 = objc_msgSend_rangeArrayWithRange_(TSWPRangeArray, a2, a3.location, a3.length);
  HIBYTE(v18) = a7;
  LOBYTE(v18) = a6;
  v14 = objc_msgSend_pMutableRectsForSelectionRanges_selectionType_includeSpaceAfter_includeSpaceBefore_includeLeading_forParagraphMode_includeRuby_includePaginatedAttachments_outranges_(self, v13, v12, a4, 1, 1, 0, v9, v18, 0);
  v16 = objc_msgSend_pTransformReturnRects_(self, v15, v14);

  return v16;
}

- (id)rectsForSelectionRanges:(id)a3 selectionType:(int64_t)a4 forParagraphMode:(BOOL)a5 includeRuby:(BOOL)a6 includePaginatedAttachments:(BOOL)a7
{
  v12 = a3;
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276D5AD28;
  v19[3] = &unk_27A6F4038;
  v19[4] = v15;
  v19[5] = self;
  v19[6] = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  objc_msgSend_enumerateRanges_(v12, v16, v19);
  v17 = v15;

  return v15;
}

- (id)rectsForSelection:(id)a3 ranges:(id *)a4
{
  v4 = objc_msgSend_rectsForSelection_ranges_includePaginatedAttachments_(self, a2, a3, a4, 0);

  return v4;
}

- (id)rectsForSelection:(id)a3 ranges:(id *)a4 includePaginatedAttachments:(BOOL)a5
{
  v8 = a3;
  v11 = objc_msgSend_ranges(v8, v9, v10);
  v14 = objc_msgSend_type(v8, v12, v13);
  HIBYTE(v20) = a5;
  LOBYTE(v20) = 0;
  v16 = objc_msgSend_pMutableRectsForSelectionRanges_selectionType_includeSpaceAfter_includeSpaceBefore_includeLeading_forParagraphMode_includeRuby_includePaginatedAttachments_outranges_(self, v15, v11, v14, 1, 1, 0, 0, v20, a4);
  v18 = objc_msgSend_pTransformReturnRects_(self, v17, v16);

  return v18;
}

- (CGRect)erasableRectForSelectionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v21.location = objc_msgSend_range(self, a2, a3.location);
  v21.length = v10;
  v20.location = location;
  v20.length = length;
  v13 = NSIntersectionRange(v20, v21);
  v11 = v13.length;
  if (v13.length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v15 = *ptr;
    v16 = *(ptr + 1);
    if (*ptr != v16)
    {
      v17 = MEMORY[0x277D81490];
      do
      {
        v18 = *v15;
        if (((*v15)[1].length & 0x8000000000000000) != 0)
        {
          v18 = v17;
        }

        v11 = NSIntersectionRange(v13, *v18).length;
        if (v11)
        {
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v22 = CGRectUnion(*&(*v15)[4].length, v25);
          x = v22.origin.x;
          y = v22.origin.y;
          width = v22.size.width;
          height = v22.size.height;
        }

        v15 += 2;
      }

      while (v15 != v16);
    }
  }

  objc_msgSend_transformFromWP(self, v11, v12);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  return CGRectApplyAffineTransform(v23, &v19);
}

- (id)drawableIntersectionRectsForSelection:(id)a3 inTarget:(id)a4
{
  v6 = a3;
  v128 = a4;
  v9 = objc_msgSend_ranges(v6, v7, v8);
  v12 = objc_msgSend_type(v6, v10, v11);
  v14 = objc_msgSend_pMutableRectsForSelectionRanges_selectionType_includeSpaceAfter_includeSpaceBefore_includeLeading_forParagraphMode_includeRuby_includePaginatedAttachments_outranges_(self, v13, v9, v12, 1, 1, 0, 0, 0, 0);
  v15 = v6;

  v20 = objc_msgSend_count(v14, v16, v17);
  if (v20)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(v14, v18, v21);
      objc_msgSend_CGRectValue(v23, v24, v25);
      rect = v26;
      x = v27;
      width = v29;
      height = v31;

      v35 = v15;
      if (v21 || (v35 = v15, objc_msgSend_start(v15, v33, v34) < self->_startCharIndex))
      {
        v138.origin.x = x;
        v138.origin.y = rect;
        v138.size.width = width;
        v138.size.height = height;
        MinX = CGRectGetMinX(v138);
        v39 = MinX - CGRectGetMinX(self->_frameBounds);
        x = x - v39;
        width = width + v39;
      }

      v40 = v21 + 1;
      if (v21 + 1 < v20)
      {
        while (1)
        {
          v41 = objc_msgSend_objectAtIndexedSubscript_(v14, v36, v21 + 1);
          objc_msgSend_CGRectValue(v41, v42, v43);
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;

          v139.origin.x = v45;
          v139.origin.y = v47;
          v139.size.width = v49;
          v139.size.height = v51;
          MinY = CGRectGetMinY(v139);
          v140.origin.x = x;
          v140.origin.y = rect;
          v140.size.width = width;
          v140.size.height = height;
          if (MinY != CGRectGetMinY(v140))
          {
            break;
          }

          v141.origin.x = x;
          v141.origin.y = rect;
          v141.size.width = width;
          v141.size.height = height;
          v149.origin.x = v45;
          v149.origin.y = v47;
          v149.size.width = v49;
          v149.size.height = v51;
          v142 = CGRectUnion(v141, v149);
          rect = v142.origin.y;
          x = v142.origin.x;
          width = v142.size.width;
          height = v142.size.height;
          objc_msgSend_removeObjectAtIndex_(v14, v53, v21 + 1);
          if (v40 >= --v20)
          {
            v20 = v22;
            break;
          }
        }
      }

      if (v21 != v20 - 1 || (v54 = v35, startCharIndex = self->_startCharIndex, characterCount = self->_characterCount, characterCount + startCharIndex <= objc_msgSend_end(v54, v36, v37)))
      {
        MaxX = CGRectGetMaxX(self->_frameBounds);
        v143.origin.x = x;
        v143.origin.y = rect;
        v143.size.width = width;
        v143.size.height = height;
        width = width + MaxX - CGRectGetMaxX(v143);
      }

      *v136 = x;
      *&v136[1] = rect;
      *&v136[2] = width;
      *&v136[3] = height;
      v59 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v57, v136, "{CGRect={CGPoint=dd}{CGSize=dd}}");
      objc_msgSend_setObject_atIndexedSubscript_(v14, v60, v59, v21);

      ++v22;
      ++v21;
    }

    while (v40 < v20);
  }

  if (objc_msgSend_count(v14, v18, v19) >= 2)
  {
    v63 = objc_msgSend_firstObject(v14, v61, v62);
    objc_msgSend_CGRectValue(v63, v64, v65);
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;

    v76 = objc_msgSend_lastObject(v14, v74, v75);
    objc_msgSend_CGRectValue(v76, v77, v78);
    recta = v79;
    v126 = v81;
    v127 = v80;
    v125 = v82;

    v124 = CGRectGetMinX(self->_frameBounds);
    v144.origin.x = v67;
    v144.origin.y = v69;
    v144.size.width = v71;
    v144.size.height = v73;
    MaxY = CGRectGetMaxY(v144);
    v84 = CGRectGetWidth(self->_frameBounds);
    v145.origin.x = recta;
    v145.size.width = v126;
    v145.origin.y = v127;
    v145.size.height = v125;
    v85 = CGRectGetMinY(v145);
    v146.origin.x = v67;
    v146.origin.y = v69;
    v146.size.width = v71;
    v146.size.height = v73;
    v86 = CGRectGetMaxY(v146);
    objc_msgSend_removeAllObjects(v14, v87, v88);
    *v135 = v67;
    *&v135[1] = v69;
    *&v135[2] = v71;
    *&v135[3] = v73;
    v90 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v89, v135, "{CGRect={CGPoint=dd}{CGSize=dd}}");
    objc_msgSend_addObject_(v14, v91, v90);

    *v134 = v124;
    *&v134[1] = MaxY;
    *&v134[2] = v84;
    *&v134[3] = v85 - v86;
    v93 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v92, v134, "{CGRect={CGPoint=dd}{CGSize=dd}}");
    objc_msgSend_addObject_(v14, v94, v93);

    *v133 = recta;
    *&v133[1] = v127;
    *&v133[2] = v126;
    *&v133[3] = v125;
    v96 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v95, v133, "{CGRect={CGPoint=dd}{CGSize=dd}}");
    objc_msgSend_addObject_(v14, v97, v96);
  }

  v99 = objc_msgSend_count(v14, v61, v62);
  if (v99)
  {
    for (i = 0; i != v99; ++i)
    {
      v101 = objc_msgSend_objectAtIndexedSubscript_(v14, v98, i);
      objc_msgSend_CGRectValue(v101, v102, v103);
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;

      objc_msgSend_transformFromWP(self, v112, v113);
      v147.origin.x = v105;
      v147.origin.y = v107;
      v147.size.width = v109;
      v147.size.height = v111;
      v148 = CGRectApplyAffineTransform(v147, &v132);
      objc_msgSend_rectInRoot_(v128, v114, v115, v148.origin.x, v148.origin.y, v148.size.width, v148.size.height);
      v131[0] = v116;
      v131[1] = v117;
      v131[2] = v118;
      v131[3] = v119;
      v121 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v120, v131, "{CGRect={CGPoint=dd}{CGSize=dd}}");
      objc_msgSend_setObject_atIndexedSubscript_(v14, v122, v121, i);
    }
  }

  return v14;
}

- (unint64_t)charIndexFromPoint:(CGPoint)a3 hitTestMode:(int)a4 isAtEndOfLine:(BOOL *)a5 outFragment:(const TSWPLineFragment *)a6 leadingEdge:(BOOL *)a7
{
  v10 = *&a4;
  y = a3.y;
  x = a3.x;
  v47 = 1;
  objc_msgSend_transformToWP(self, a2, *&a4);
  v13 = vaddq_f64(v46[2], vmlaq_n_f64(vmulq_n_f64(v46[1], y), v46[0], x));
  v46[0].f64[0] = 0.0;
  if (a5)
  {
    *a5 = 0;
  }

  v16 = objc_msgSend_charIndexFromWPPoint_hitTestMode_outFragment_leadingEdge_(self, v12, v10, v46, &v47, *&v13);
  if (*&v46[0].f64[0] && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(*&v46[0].f64[0] + 24) < 0)
    {
      v17 = MEMORY[0x277D81490];
    }

    else
    {
      v17 = v46[0].f64[0];
    }

    v19 = **&v17;
    v18 = *(*&v17 + 8);
    v20 = v16;
    if (!v47)
    {
      v21 = sub_276D644CC(*&v46[0].f64[0]);
      v20 = sub_276D37528(v16, v21);
    }

    if (v18 && v20 == v19 + v18)
    {
      v22 = objc_msgSend_length(self->_storage, v14, v15);
      if (v20 <= v22)
      {
        v32 = v20 - 1;
        v33 = objc_msgSend_characterAtIndex_(self->_storage, v23, v20 - 1);
        v34 = v33;
        v35 = IsParagraphBreakingCharacter(v33);
        if (v34 == 8232)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        if ((v10 & 4) != 0 || !v36)
        {
          if (a5)
          {
            *a5 = 1;
          }
        }

        else
        {
          v47 = 1;
          v16 = v32;
        }
      }

      else
      {
        v24 = v22;
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSWPColumn charIndexFromPoint:hitTestMode:isAtEndOfLine:outFragment:leadingEdge:]");
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 2854, 0, "Bad charIndex %lu <= %lu", v20, v24);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (a6)
    {
      *a6 = *&v46[0].f64[0];
    }
  }

  if (a7)
  {
    *a7 = v47;
    return v16;
  }

  if (!v47 && v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*&v46[0].f64[0])
    {
      v37 = sub_276D69BB0(*&v46[0].f64[0], v16);
      v38 = *&v46[0].f64[0];
      if ((v10 & 4) == 0)
      {
        v39 = (*(*&v46[0].f64[0] + 25) & 0x10) != 0 ? sub_276D69B10(*&v46[0].f64[0]) : sub_276D69ADC(*&v46[0].f64[0]);
        v41 = v39;
        v38 = *&v46[0].f64[0];
        if (v16 == v41 && (v37 != 1) == (*(*&v46[0].f64[0] + 25) & 0x10) >> 4)
        {
          v42 = 0;
LABEL_39:

          return v16;
        }
      }

      v40 = sub_276D644CC(v38);
    }

    else
    {
      v40 = self->_storage;
    }

    v42 = v40;
    if (v40)
    {
      v16 = sub_276D37528(v16, v40);
    }

    goto LABEL_39;
  }

  return v16;
}

- (unint64_t)charIndexForSelectionFromPoint:(CGPoint)a3 isTail:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  objc_msgSend_transformToWP(self, a2, a4);
  v79 = vaddq_f64(*&v80.var4, vmlaq_n_f64(vmulq_n_f64(*&v80.var2, y), *&v80.var0, x));
  if (v79.f64[1] < CGRectGetMinY(self->_frameBounds))
  {
    if (v4)
    {
      if (objc_msgSend_startCharIndex(self, v6, v7))
      {
        v10 = objc_msgSend_storage(self, v8, v9);
        started = objc_msgSend_startCharIndex(self, v11, v12);
        if (v10)
        {
          objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v10, v14, started, 0);
        }

        else
        {
          memset(&v80, 0, sizeof(v80));
        }

        location = TSWPParagraphEnumerator::paragraphTextRange(&v80, v62);
        length = v64;
        if (!TSWPParagraphEnumerator::isFirstParagraph(&v80))
        {
          TSWPParagraphEnumerator::operator--(&v80, v66);
          v82.location = TSWPParagraphEnumerator::paragraphTextRange(&v80, v67);
          v82.length = v68;
          v81.location = location;
          v81.length = length;
          v69 = NSUnionRange(v81, v82);
          location = v69.location;
          length = v69.length;
        }

        v70 = [TSWPFilteredStorage alloc];
        v72 = objc_msgSend_initWithStorage_subRange_(v70, v71, self->_storage, location, length);
        v75 = objc_msgSend_startCharIndex(self, v73, v74);
        startCharIndex = TSWPPreviousCharIndexFromTextSource(v75, v72);

        TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v80);
        return startCharIndex;
      }
    }

    else
    {
      startCharIndex = self->_startCharIndex;
      if (startCharIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        return startCharIndex;
      }

      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPColumn charIndexForSelectionFromPoint:isTail:]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 2910, 0, "column has unexpected start");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  ptr = self->_lineFragmentArray.__ptr_;
  v16 = *ptr;
  if (*ptr == *(ptr + 1))
  {
    v44 = self->_startCharIndex;
    characterCount = self->_characterCount;
    return characterCount + v44;
  }

  v17 = MEMORY[0x277D81490];
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v19 = *v16;
    v20 = *(*v16 + 40);
    v21 = *(*v16 + 48);
    v22 = *(*v16 + 56);
    v23 = *(*v16 + 64);
    v83.origin.x = v20;
    v83.origin.y = v21;
    v83.size.width = v22;
    v83.size.height = v23;
    if (v79.f64[1] < CGRectGetMinY(v83))
    {
      goto LABEL_64;
    }

    if (*(v19 + 28))
    {
      TSUDistanceToRect();
      v24 = v25;
      v18 = sub_276D6A6EC(v19, 0xFFFFFFFFLL, 0, v79.f64[0]);
      if (v24 == 0.0)
      {
        goto LABEL_64;
      }

      if (*(v19 + 28))
      {
        v16 += 2;
        if (v16 == *(self->_lineFragmentArray.__ptr_ + 1))
        {
          goto LABEL_64;
        }

        v19 = *v16;
        v20 = *(*v16 + 40);
        v21 = *(*v16 + 48);
        v22 = *(*v16 + 56);
        v23 = *(*v16 + 64);
      }
    }

    else
    {
      v24 = INFINITY;
    }

    v26 = v16 + 2;
    v27 = -16;
    do
    {
      v28 = v27;
      if (v26 == *(self->_lineFragmentArray.__ptr_ + 1))
      {
        break;
      }

      v29 = *v26;
      v26 += 2;
      MinY = CGRectGetMinY(*(v29 + 40));
      v84.origin.x = v20;
      v84.origin.y = v21;
      v84.size.width = v22;
      v84.size.height = v23;
      v31 = CGRectGetMinY(v84);
      v27 = v28 - 16;
    }

    while (MinY == v31);
    v85.origin.x = v20;
    v85.origin.y = v21;
    v85.size.width = v22;
    v85.size.height = v23;
    if (v79.f64[1] <= CGRectGetMaxY(v85))
    {
      break;
    }

    if (*(v19 + 24) < 0)
    {
      v33 = v17;
    }

    else
    {
      v33 = v19;
    }

    v34 = *v33 + v33[1];
    if (v18 <= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v18;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v34;
    }

    else
    {
      v18 = v35;
    }

    if (v4)
    {
      v18 = objc_msgSend_previousCharacterIndex_(self->_storage, v32, v18);
    }

    v16 += 2;
    if (v16 == *(self->_lineFragmentArray.__ptr_ + 1))
    {
      goto LABEL_64;
    }
  }

  v46 = -v28;
  v47 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v19 = *v16;
    if ((*(*v16 + 24) & 0x40) == 0 && (*(*v16 + 24) & 0x201) != 1)
    {
      break;
    }

    v56 = v47;
LABEL_56:
    v16 += 2;
    v47 = v56;
    v46 -= 16;
    if (!v46)
    {
      goto LABEL_63;
    }
  }

  v49 = *(v19 + 56);
  v48 = *(v19 + 64);
  v51 = *(v19 + 40);
  v50 = *(v19 + 48);
  isWritingDirectionRightToLeftForParagraphAtCharIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtCharIndex_(self->_storage, v32, *v19);
  TSUDistanceToRect();
  v54 = v53;
  v55 = sub_276D6A6EC(v19, (isWritingDirectionRightToLeftForParagraphAtCharIndex ^ v4 ^ 1u), 0, v79.f64[0]);
  v56 = v55;
  if (v54 != 0.0)
  {
    v57 = v54 < v24;
    if (v54 >= v24)
    {
      v58 = v47;
    }

    else
    {
      v24 = v54;
      v58 = v55;
    }

    if (!v57 || !v4)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v56 = v58;
    }

    else
    {
      v86.origin.x = v51;
      v86.origin.y = v50;
      v86.size.width = v49;
      v86.size.height = v48;
      v60 = v79.f64[0] <= CGRectGetMaxX(v86);
      if (isWritingDirectionRightToLeftForParagraphAtCharIndex != v60)
      {
        if (*(v19 + 24) < 0)
        {
          v61 = v17;
        }

        else
        {
          v61 = v19;
        }

        v56 = objc_msgSend_previousCharacterIndex_(self->_storage, v32, *v61);
      }

      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = v54;
    }

    goto LABEL_56;
  }

  v18 = v55;
LABEL_63:
  startCharIndex = v18;
  v18 = v47;
  if (startCharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_64:
    startCharIndex = v18;
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = *v19;
      characterCount = *(v19 + 8);
      return characterCount + v44;
    }
  }

  return startCharIndex;
}

- (unint64_t)charIndexFromWPPoint:(CGPoint)a3 hitTestMode:(int)a4 outFragment:(const TSWPLineFragment *)a5 leadingEdge:(BOOL *)a6
{
  v8 = a4;
  y = a3.y;
  x = a3.x;
  if ((a4 & 0x10) != 0)
  {
    v16 = (a4 & 8) == 0;

    return objc_msgSend_p_charIndexWithTextClosestToWPPoint_pastCenterGoesToNextChar_outFragment_leadingEdge_(self, a2, v16);
  }

  else
  {
    v12 = a4 & 3;
    if (a3.y >= CGRectGetMinY(self->_frameBounds))
    {
      ptr = self->_lineFragmentArray.__ptr_;
      v19 = *ptr;
      if (*ptr != *(ptr + 1))
      {
        v20 = v19 - 2;
        while (1)
        {
          v15 = *v19;
          if ((objc_msgSend_p_pencilAnnotationsShouldSkipLineFragment_(self, v13, *v19) & 1) == 0)
          {
            v21 = *(v15 + 40);
            v22 = *(v15 + 48);
            v23 = *(v15 + 56);
            v24 = *(v15 + 64);
            v54.origin.x = v21;
            v54.origin.y = v22;
            v54.size.width = v23;
            v54.size.height = v24;
            MinY = CGRectGetMinY(v54);
            v26 = MinY;
            if (v12 == 1 && y < MinY)
            {
              goto LABEL_24;
            }

            v55.origin.x = v21;
            v55.origin.y = v22;
            v55.size.width = v23;
            v55.size.height = v24;
            if (y <= CGRectGetMaxY(v55))
            {
              v30 = *(self->_lineFragmentArray.__ptr_ + 1);
              v49 = a6;
              startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
              if (*(v15 + 28))
              {
                if (v19 != v30)
                {
                  v41 = 0;
                  v42 = 0;
                  v43 = INFINITY;
                  while (1)
                  {
                    v31 = v19[v41];
                    v44 = v31[5];
                    v45 = v31[6];
                    v46 = v31[7];
                    v47 = v31[8];
                    v59.origin.x = v44;
                    v59.origin.y = v45;
                    v59.size.width = v46;
                    v59.size.height = v47;
                    if (y <= CGRectGetMinY(v59))
                    {
                      break;
                    }

                    if (!(v41 * 8))
                    {
                      if ((*(*v19 + 25) & 0x10) != 0)
                      {
                        v61.origin.x = v44;
                        v61.origin.y = v45;
                        v61.size.width = v46;
                        v61.size.height = v47;
                        if (x > CGRectGetMaxX(v61))
                        {
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        v60.origin.x = v44;
                        v60.origin.y = v45;
                        v60.size.width = v46;
                        v60.size.height = v47;
                        if (x < CGRectGetMinX(v60))
                        {
                          goto LABEL_68;
                        }
                      }
                    }

                    v62.origin.x = v44;
                    v62.origin.y = v45;
                    v62.size.width = v46;
                    v62.size.height = v47;
                    v53.x = x;
                    v53.y = y;
                    if (CGRectContainsPoint(v62, v53))
                    {
                      v50 = 1;
                      v38 = sub_276D6A99C(v31, ((v8 & 8) == 0), 1, &v50, 1, x);
                      if (v49)
                      {
                        *v49 = v50;
                      }

                      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v15 = v31;
                        goto LABEL_73;
                      }
                    }

                    if (v41 * 8)
                    {
                      TSUDistanceToRect();
                      if (v48 < v43)
                      {
                        v42 = v31;
                        v43 = v48;
                      }
                    }

                    v41 += 2;
                    v31 = v42;
                    if (&v19[v41] == *(self->_lineFragmentArray.__ptr_ + 1))
                    {
                      goto LABEL_68;
                    }
                  }

                  if (v41 * 8)
                  {
                    v31 = v42;
                    if (!v42)
                    {
                      v31 = *v19;
                    }
                  }

LABEL_68:
                  startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
                  a6 = v49;
                  if (v12 != 1 && v31)
                  {
                    startCharIndex = sub_276D6A99C(v31, ((v8 & 8) == 0), 0, v49, 1, x);
                    v15 = v31;
                  }
                }
              }

              else if (v19 != v30)
              {
                v31 = 0;
                v32 = INFINITY;
                while (1)
                {
                  v33 = *v19;
                  v34 = *(*v19 + 40);
                  v35 = *(*v19 + 48);
                  v36 = *(*v19 + 56);
                  v37 = *(*v19 + 64);
                  v57.origin.x = v34;
                  v57.origin.y = v35;
                  v57.size.width = v36;
                  v57.size.height = v37;
                  v52.x = x;
                  v52.y = y;
                  if (CGRectContainsPoint(v57, v52))
                  {
                    v38 = sub_276D6A99C(v33, ((v8 & 8) == 0), 1, a6, 1, x);
                    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      break;
                    }
                  }

                  TSUDistanceToRect();
                  v40 = v39;
                  if (v39 < v32)
                  {
                    v31 = v33;
                  }

                  v58.origin.x = v34;
                  v58.origin.y = v35;
                  v58.size.width = v36;
                  v58.size.height = v37;
                  if (y > CGRectGetMinY(v58))
                  {
                    if (v40 < v32)
                    {
                      v32 = v40;
                    }

                    v19 += 2;
                    if (v19 != *(self->_lineFragmentArray.__ptr_ + 1))
                    {
                      continue;
                    }
                  }

                  goto LABEL_68;
                }

                v15 = v33;
LABEL_73:
                startCharIndex = v38;
                a6 = v49;
              }

              goto LABEL_25;
            }

            if (v19 != *self->_lineFragmentArray.__ptr_ && y < v26)
            {
              v15 = *v20;
              v56.origin.x = v21;
              v56.origin.y = v22;
              v56.size.width = v23;
              v56.size.height = v24;
              if (x > CGRectGetMaxX(v56))
              {
                startCharIndex = sub_276D6A99C(v15, ((v8 & 8) == 0), v12 == 1, a6, 1, x);
                goto LABEL_25;
              }
            }
          }

          v19 += 2;
          v20 += 2;
          if (v19 == *(self->_lineFragmentArray.__ptr_ + 1))
          {
            goto LABEL_24;
          }
        }
      }
    }

    else if (v12 != 1)
    {
      startCharIndex = self->_startCharIndex;
      if (sub_276D6F7D8(self->_lineFragmentArray.__ptr_))
      {
        v15 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, 0);
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_25;
    }

    v15 = 0;
LABEL_24:
    startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
    if (a5)
    {
      *a5 = v15;
    }

    if (v12 != 1 && startCharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      p_startCharIndex = &self->_startCharIndex;
      p_characterCount = &self->_characterCount;
      if (v15)
      {
        p_characterCount = (v15 + 8);
        p_startCharIndex = v15;
      }

      startCharIndex = *p_characterCount + *p_startCharIndex;
      if (a6)
      {
        *a6 = 1;
      }
    }

    return startCharIndex;
  }
}

- (unint64_t)p_charIndexWithTextClosestToWPPoint:(CGPoint)a3 pastCenterGoesToNextChar:(BOOL)a4 outFragment:(const TSWPLineFragment *)a5 leadingEdge:(BOOL *)a6
{
  ptr = self->_lineFragmentArray.__ptr_;
  v7 = *ptr;
  v8 = *(ptr + 1);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (*ptr == v8)
  {
    v16 = 0;
    if (!a5)
    {
      return v9;
    }

    goto LABEL_22;
  }

  v10 = a4;
  y = a3.y;
  x = a3.x;
  v28 = a5;
  v14 = 0;
  v15 = INFINITY;
  do
  {
    v16 = *v7;
    if ((objc_msgSend_p_pencilAnnotationsShouldSkipLineFragment_(self, a2, *v7, v28) & 1) == 0)
    {
      v17 = MEMORY[0x277D81490];
      if (*(v16 + 24) >= 0)
      {
        v17 = v16;
      }

      v19 = *v17;
      v18 = v17[1];
      v20 = objc_msgSend_dropCapCharIndexesInRange_(self->_storage, a2, *v17, v18);
      if (objc_msgSend_intersectsIndexesInRange_(v20, v21, v19, v18))
      {
        v22 = *(v16 + 48);
        v23 = *(v16 + 64);
      }

      else
      {
        v24 = *(v16 + 32);
        v22 = v24 - *(v16 + 120);
        v23 = *(v16 + 136) + v24 - v22;
      }

      v31.origin.x = *(v16 + 40);
      v31.origin.y = v22;
      v31.size.width = *(v16 + 56);
      v31.size.height = v23;
      v30.x = x;
      v30.y = y;
      if (CGRectContainsPoint(v31, v30))
      {
        v25 = sub_276D6A99C(v16, v10, 1, a6, 1, x);
        if (v25 != 0x7FFFFFFFFFFFFFFFLL)
        {

          v9 = v25;
          goto LABEL_21;
        }
      }

      TSUDistanceToRect();
      if (v26 < v15)
      {
        v15 = v26;
        v14 = v16;
      }
    }

    v7 += 2;
  }

  while (v7 != v8);
  if (v14)
  {
    v9 = sub_276D6A99C(v14, v10, 0, a6, 1, x);
    v16 = v14;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_21:
  a5 = v28;
  if (v28)
  {
LABEL_22:
    *a5 = v16;
  }

  return v9;
}

- (_TSWPCharIndexAndPosition)calcAttachmentPositionForDrawable:(SEL)a3 atPoint:(id)a4 inTextLayoutTarget:(CGPoint)a5 startOfBoundsInfluencingWrap:(id)a6 wrapOutset:(CGPoint)a7 wrapMargin:(CGSize)a8 makeInline:(double)a9
{
  height = a8.height;
  width = a8.width;
  y = a7.y;
  x = a7.x;
  v17 = a5.y;
  v18 = a5.x;
  v21 = a4;
  v64 = a6;
  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  retstr->var0 = 0x7FFFFFFFFFFFFFFFLL;
  v72[0] = 0;
  v71 = 0;
  v23 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_outFragment_leadingEdge_(self, v22, 0, v72, &v71, 0, x, y);
  v26 = objc_msgSend_storage(self, v24, v25);
  v28 = objc_msgSend_placeholderSmartFieldsIntersectingRange_(v26, v27, v23, 1);
  v31 = objc_msgSend_firstObject(v28, v29, v30);

  if (!v31)
  {
    goto LABEL_29;
  }

  v35 = objc_msgSend_range(v31, v32, v33);
  if (v35 == v23 || !v71)
  {
    goto LABEL_29;
  }

  v36 = v34;
  v38 = objc_msgSend_lineIndexForCharIndex_eol_(self, v34, v35, 0);
  if (v38 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  v40 = objc_msgSend_lineFragmentAtIndex_(self, v37, v38);
  v39 = v40;
  if (v40)
  {
    v41 = *(v40 + 24);
    if (!v36 || (v41 < 0 ? (v42 = MEMORY[0x277D81490]) : (v42 = v40), *v42 > v35))
    {
      v43 = (v41 < 0 ? MEMORY[0x277D81490] : v40);
      if (v35 < *v43)
      {
        if (!v38)
        {
LABEL_5:
          v39 = 0;
          goto LABEL_18;
        }

        v39 = objc_msgSend_lineFragmentAtIndex_(self, v37, v38 - 1);
      }
    }
  }

LABEL_18:
  v44 = &v36[v35];
  v46 = objc_msgSend_lineIndexForCharIndex_eol_(self, v37, v44, 0);
  if (v46 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = 0;
    if (v39)
    {
      goto LABEL_20;
    }

LABEL_23:
    v49 = INFINITY;
    if (v47)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v47 = objc_msgSend_lineFragmentAtIndex_(self, v45, v46);
  if (!v39)
  {
    goto LABEL_23;
  }

LABEL_20:
  TSUDistanceToRect();
  v49 = v48;
  if (v47)
  {
LABEL_21:
    TSUDistanceToRect();
    goto LABEL_25;
  }

LABEL_24:
  v50 = INFINITY;
LABEL_25:
  if (v49 <= v50)
  {
    v71 = v39;
    v23 = v35;
  }

  else if (fabs(v50) != INFINITY)
  {
    v71 = v47;
    v23 = v44;
  }

LABEL_29:
  if (v23 != 0x7FFFFFFFFFFFFFFFLL && v71)
  {
    if (a10 || (v51 = objc_opt_class(), (objc_msgSend_canPartitionInline(v51, v52, v53) & 1) != 0))
    {
      v55 = objc_opt_class();
      if (objc_msgSend_canPartitionInline(v55, v56, v57))
      {
        v59 = *&retstr->var2;
        v65 = *&retstr->var0;
        v66 = v59;
        var4 = retstr->var4;
        objc_msgSend_p_calcPartitionablePosition_forCharIndex_inClosestLineFragment_startOfBoundsInfluencingWrap_(self, v58, &v65, v23, v71, x, y);
      }

      else
      {
        v60 = *&retstr->var2;
        v65 = *&retstr->var0;
        v66 = v60;
        var4 = retstr->var4;
        objc_msgSend_p_calcInlinePosition_forCharIndex_(self, v58, &v65, v23);
      }
    }

    else
    {
      v61 = *&retstr->var2;
      v65 = *&retstr->var0;
      v66 = v61;
      var4 = retstr->var4;
      objc_msgSend_p_calcAnchoredPosition_forCharIndex_inClosestLineFragment_atPoint_inTextLayoutTarget_startOfBoundsInfluencingWrap_wrapOutset_wrapMargin_placeholderField_(self, v54, &v65, v23, v71, v64, v31, v18, v17, x, y, width, height, a9);
    }

    v62 = v69;
    *&retstr->var0 = v68;
    *&retstr->var2 = v62;
    retstr->var4 = v70;
  }

  return result;
}

- (_TSWPCharIndexAndPosition)p_calcAnchoredPosition:(SEL)a3 forCharIndex:(_TSWPCharIndexAndPosition *)a4 inClosestLineFragment:(unint64_t)a5 atPoint:(const void *)a6 inTextLayoutTarget:(CGPoint)a7 startOfBoundsInfluencingWrap:(id)a8 wrapOutset:(CGPoint)a9 wrapMargin:(CGSize)a10 placeholderField:(double)a11
{
  height = a10.height;
  width = a10.width;
  y = a9.y;
  x = a9.x;
  v18 = a7.y;
  v19 = a7.x;
  v201 = a8;
  v25 = a12;
  v26 = *&a4->var2;
  *&retstr->var0 = *&a4->var0;
  *&retstr->var2 = v26;
  retstr->var4 = a4->var4;
  v202 = v25;
  v29 = objc_msgSend_range(v25, v27, v28);
  range1 = v30;
  v31 = v29;
  objc_msgSend_transformToWP(self, v30, v32);
  v35 = 0.0;
  if (*(a6 + 512) == 1)
  {
    v35 = *(a6 + 20);
  }

  if (__p.ty + y * __p.d + __p.b * x >= *(a6 + 4) + *(a6 + 17) + v35)
  {
    goto LABEL_17;
  }

  v36 = objc_msgSend_lineFragmentArray(self, length, v34);
  v37 = sub_276D6F7D8(*v36);
  if (!v37)
  {
    goto LABEL_17;
  }

  v38 = 0;
  while (sub_276D6F7E8(*v36, v38) != a6)
  {
    if (v37 == ++v38)
    {
      goto LABEL_17;
    }
  }

  if (v38)
  {
    v39 = v38 - 1;
    v40 = MEMORY[0x277D81490];
    while (1)
    {
      v41 = sub_276D6F7E8(*v36, v39);
      MinY = CGRectGetMinY(*(v41 + 40));
      if (MinY < CGRectGetMinY(*(a6 + 40)))
      {
        v43 = *(v41 + 24) < 0 ? v40 : v41;
        v206.location = v31;
        v206.length = range1;
        length = NSIntersectionRange(v206, *v43).length;
        if (!length)
        {
          break;
        }
      }

      if (--v39 == -1)
      {
        goto LABEL_17;
      }
    }

    if (*(v41 + 24) < 0)
    {
      v187 = v40;
    }

    else
    {
      v187 = v41;
    }

    a5 = *v187 + v187[1];
  }

  else
  {
LABEL_17:
    v41 = a6;
  }

  v46 = objc_msgSend_anchoredRange(self, length, v34);
  if (*v41 >= v46)
  {
    v54 = v41;
  }

  else
  {
    v47 = retstr;
    v48 = objc_msgSend_lineFragmentArray(self, v44, v45);
    v49 = a5;
    v50 = sub_276D6F7D8(*v48);
    if (v50)
    {
      v197 = self;
      v51 = 0;
      v52 = MEMORY[0x277D81490];
      while (1)
      {
        v53 = sub_276D6F7E8(*v48, v51);
        v54 = v53;
        if (*v53 >= v46)
        {
          v55 = (v53[3] < 0 ? v52 : v53);
          v207.location = v31;
          v207.length = range1;
          v44 = NSIntersectionRange(v207, *v55).length;
          if (!v44)
          {
            break;
          }
        }

        if (v50 == ++v51)
        {
          v54 = v41;
          self = v197;
          goto LABEL_30;
        }
      }

      if (v54[3] < 0)
      {
        v56 = v52;
      }

      else
      {
        v56 = v54;
      }

      a5 = *v56 + v56[1];
      self = v197;
    }

    else
    {
      v54 = v41;
LABEL_30:
      a5 = v49;
    }

    retstr = v47;
  }

  v57 = v54[3];
  if ((v57 & 1) == 0)
  {
LABEL_57:
    if (!v202 || a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v57 < 0)
      {
        v74 = MEMORY[0x277D81490];
      }

      else
      {
        v74 = v54;
      }

      a5 = *v74 + v74[1];
    }

    retstr->var0 = a5;
    v75 = sub_276D644CC(v54);
    v77 = objc_msgSend_charIndexRemappedFromStorage_(v75, v76, *v54);
    var0 = retstr->var0;
    if (var0 < objc_msgSend_length(self->_storage, v79, v80))
    {
      v82 = objc_msgSend_charIndexMappedFromStorage_(v75, v81, var0);
      v84 = objc_msgSend_characterAtIndex_(v75, v83, v82);
      if (var0 > v77)
      {
        v86 = v84;
        while ((IsWhitespaceCharacter(v86, v85) & 1) == 0)
        {
          v87 = TSWPPreviousCharIndexFromTextSource(var0, v75);
          v89 = objc_msgSend_charIndexMappedFromStorage_(v75, v88, v87);
          v86 = objc_msgSend_characterAtIndex_(v75, v90, v89);
          v92 = IsWhitespaceCharacter(v86, v91);
          if (var0 == v87)
          {
            v93 = 1;
          }

          else
          {
            v93 = v92;
          }

          if (v93 == 1)
          {
            retstr->var0 = var0;
            if (var0 == v87)
            {
              v200 = MEMORY[0x277D81150];
              v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSWPColumn p_calcAnchoredPosition:forCharIndex:inClosestLineFragment:atPoint:inTextLayoutTarget:startOfBoundsInfluencingWrap:wrapOutset:wrapMargin:placeholderField:]");
              v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v200, v184, v181, v183, 3470, 0, "Failed to find previous character");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v185, v186);
            }

            goto LABEL_75;
          }

          var0 = v87;
          if (v87 <= v77)
          {
            goto LABEL_74;
          }
        }
      }

      v87 = var0;
LABEL_74:
      retstr->var0 = v87;
      var0 = v87;
    }

LABEL_75:
    if (var0 <= v77)
    {
      v94 = var0;
LABEL_83:
      retstr->var0 = v94;
      var0 = v94;
    }

    else
    {
      while (1)
      {
        v94 = TSWPPreviousCharIndexFromTextSource(var0, v75);
        v96 = objc_msgSend_charIndexMappedFromStorage_(v75, v95, v94);
        v98 = objc_msgSend_characterAtIndex_(v75, v97, v96);
        v100 = IsWhitespaceCharacter(v98, v99);
        v102 = var0 == v94 ? 0 : v100;
        if ((v102 & 1) == 0)
        {
          break;
        }

        var0 = v94;
        if (v94 <= v77)
        {
          goto LABEL_83;
        }
      }

      retstr->var0 = var0;
      if (var0 == v94)
      {
        v163 = MEMORY[0x277D81150];
        v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSWPColumn p_calcAnchoredPosition:forCharIndex:inClosestLineFragment:atPoint:inTextLayoutTarget:startOfBoundsInfluencingWrap:wrapOutset:wrapMargin:placeholderField:]");
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v163, v167, v164, v166, 3481, 0, "Failed to find previous character");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v168, v169);
      }
    }

    sub_276D65948(v54, var0, 0, 0, 1, 0, 0, 0, &__p);
    sub_276D398C4(&__p);
    v106 = v105;
    if (*&__p.a)
    {
      __p.b = __p.a;
      operator delete(*&__p.a);
    }

    v193 = v106;
    v195 = width;
    v107 = v19;
    v198 = height;
    v192 = a11;
    objc_msgSend_transformToWP(self, v103, v104);
    a = __p.a;
    b = __p.b;
    c = __p.c;
    d = __p.d;
    tx = __p.tx;
    ty = __p.ty;
    IsVertical = objc_msgSend_textIsVertical(self, v114, v115);
    v117 = ty + v18 * d + b * v107;
    v118 = tx + v18 * c + a * v107;
    if (IsVertical)
    {
      v119 = v195;
    }

    else
    {
      v119 = v198;
    }

    retstr->var2 = v118;
    retstr->var4 = v117 - (v193 + v119);
    v120 = sub_276D6494C(v54) + retstr->var4;
    retstr->var4 = v120;
    if (v119 + v120 < 0.0)
    {
      objc_opt_class();
      v121 = TSUDynamicCast();
      v124 = v121;
      if (v121)
      {
        objc_msgSend_frame(v121, v122, v123);
        v126 = v125;
        v128 = v127;
        v130 = v129;
        v132 = v131;
        objc_msgSend_transform(v124, v133, v134);
        CGAffineTransformInvert(&__p, &v204);
        v210.origin.x = v126;
        v210.origin.y = v128;
        v210.size.width = v130;
        v210.size.height = v132;
        v211 = CGRectApplyAffineTransform(v210, &__p);
        v135 = v211.origin.x;
        v136 = v211.origin.y;
        v137 = v211.size.width;
        v138 = v211.size.height;
        objc_msgSend_transformToWP(self, v139, v140);
        v212.origin.x = v135;
        v212.origin.y = v136;
        v212.size.width = v137;
        v212.size.height = v138;
        v213 = CGRectApplyAffineTransform(v212, &__p);
        retstr->var3 = 1;
        v199 = CGRectGetMinY(v213);
        objc_msgSend_transformFromWP(self, v141, v142);
        v144 = __p.a;
        v143 = __p.b;
        v145 = __p.c;
        v146 = __p.d;
        v147 = __p.tx;
        v148 = __p.ty;
        objc_msgSend_transform(v124, v149, v150);
        v189 = __p.c;
        v190 = __p.a;
        v194 = __p.d;
        v196 = __p.b;
        v188 = __p.tx;
        v191 = __p.ty;
        v153 = objc_msgSend_textIsVertical(self, v151, v152);
        v156 = v117 + v199 - (v119 - v192);
        v157 = v148 + v156 * v146 + v143 * 0.0;
        v158 = v147 + v156 * v145 + v144 * 0.0;
        if (v153)
        {
          v159 = objc_msgSend_parent(v124, v154, v155);
          objc_msgSend_frame(v159, v160, v161);
          retstr->var4 = v162 - (v188 + v157 * v189 + v190 * v158);
        }

        else
        {
          retstr->var4 = v191 + v157 * v194 + v196 * v158;
        }
      }
    }

    goto LABEL_98;
  }

  v58 = objc_msgSend_lineFragmentArray(self, v44, v45);
  v59 = self;
  v60 = sub_276D6FBE4(*v58, v54);
  v62 = v60;
  if (v60)
  {
    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_98;
    }

    v63 = v60 - 1;
    v64 = MEMORY[0x277D81490];
    while (1)
    {
      v65 = sub_276D6F7E8(*v58, v63);
      v54 = v65;
      v66 = *(v65 + 24);
      if ((v66 & 1) == 0)
      {
        v67 = (v66 < 0 ? v64 : v65);
        v208.location = v31;
        v208.length = range1;
        if (!NSIntersectionRange(v208, *v67).length)
        {
          break;
        }
      }

      if (--v63 == -1)
      {
        goto LABEL_46;
      }
    }

LABEL_54:
    v73 = MEMORY[0x277D81490];
    v57 = v54[3];
    if (v57 >= 0)
    {
      v73 = v54;
    }

    a5 = *v73 + v73[1];
    self = v59;
    goto LABEL_57;
  }

LABEL_46:
  v68 = v62 + 1;
  v69 = MEMORY[0x277D81490];
  while (v68 < sub_276D6F7D8(*v58))
  {
    v70 = sub_276D6F7E8(*v58, v68);
    v54 = v70;
    v71 = *(v70 + 24);
    if ((v71 & 1) == 0)
    {
      v72 = (v71 < 0 ? v69 : v70);
      v209.location = v31;
      v209.length = range1;
      if (!NSIntersectionRange(v209, *v72).length)
      {
        goto LABEL_54;
      }
    }

    ++v68;
  }

LABEL_98:
  if (v202)
  {
    v170 = retstr->var0;
    if (retstr->var0 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v171 = v170 > v31;
      v172 = v170 - v31;
      if (v171 && v172 < range1)
      {
        v173 = MEMORY[0x277D81150];
        v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSWPColumn p_calcAnchoredPosition:forCharIndex:inClosestLineFragment:atPoint:inTextLayoutTarget:startOfBoundsInfluencingWrap:wrapOutset:wrapMargin:placeholderField:]");
        v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v173, v177, v174, v176, 3529, 0, "Miscalculated new anchored position within a placeholder field");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179);
      }
    }
  }

  return result;
}

- (_TSWPCharIndexAndPosition)p_calcPartitionablePosition:(SEL)a3 forCharIndex:(_TSWPCharIndexAndPosition *)a4 inClosestLineFragment:(unint64_t)a5 startOfBoundsInfluencingWrap:(const void *)a6
{
  y = a7.y;
  v12 = *&a4->var2;
  *&retstr->var0 = *&a4->var0;
  *&retstr->var2 = v12;
  retstr->var4 = a4->var4;
  v13 = objc_msgSend_lineCount(self, a3, a4);
  result = objc_msgSend_lineFragmentAtIndex_(self, v14, v13 - 1);
  v18 = 0.0;
  if (*(a6 + 512) == 1)
  {
    v18 = *(a6 + 20);
  }

  if (result != a6)
  {
    goto LABEL_4;
  }

  v19 = *(a6 + 4) + *(a6 + 17) + v18;
  v20 = *(a6 + 3);
  if (v20 < 0)
  {
    v21 = MEMORY[0x277D81490];
  }

  else
  {
    v21 = a6;
  }

  v24 = v21;
  v23 = *v21;
  v22 = v24[1];
  if ((v20 & 0x800) == 0)
  {
    if (v23 + v22 == a5 && y >= v19)
    {
      goto LABEL_5;
    }

LABEL_4:
    a5 = *a6;
    goto LABEL_5;
  }

  if (v22 + v23 - 1 != a5 || y < v19)
  {
    goto LABEL_4;
  }

  v27 = objc_msgSend_storage(self, v16, v17, v19);
  v29 = objc_msgSend_characterAtIndex_(v27, v28, a5);

  if ((v29 & 0xFFFE) != 4)
  {
    ++a5;
  }

LABEL_5:
  retstr->var0 = a5;
  retstr->var2 = 0.0;
  retstr->var4 = 0.0;
  return result;
}

- (_TSWPCharIndexAndPosition)p_calcInlinePosition:(SEL)a3 forCharIndex:(_TSWPCharIndexAndPosition *)a4
{
  v5 = *&a4->var2;
  *&retstr->var0 = *&a4->var0;
  *&retstr->var2 = v5;
  retstr->var0 = a5;
  retstr->var2 = 0.0;
  retstr->var4 = 0.0;
  return self;
}

- (void)renderWithRenderer:(id)a3 currentSelection:(id)a4 limitSelection:(id)a5 listRange:(_NSRange)a6 rubyGlyphRange:(_NSRange)a7 isCanvasInteractive:(BOOL)a8 isInDrawingMode:(BOOL)a9 suppressedMisspellingRange:(_NSRange)a10 blackAndWhite:(BOOL)a11 dictationInterpretations:(id)a12 autocorrections:(id)a13 markedRange:(_NSRange)a14 markedText:(id)a15 renderMode:(unint64_t)a16 pageCount:(unint64_t)a17 suppressInvisibles:(BOOL)a18 currentCanvasSelection:(id)a19
{
  v155 = a3;
  v159 = a4;
  v162 = a5;
  v158 = a12;
  v157 = a13;
  v156 = a15;
  v154 = a19;
  objc_msgSend_context(v155, v22, v23);
  v24 = TSDCGContextGetPdfTagger();
  v25 = TSUProtocolCast();

  objc_msgSend_beginTextColumn_limitSelection_(v25, v26, self, v162, &unk_28866BEF0);
  v204 = 0;
  v203 = 0u;
  memset(v202, 0, sizeof(v202));
  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v193 = self->_storage;
  v194 = self;
  objc_msgSend_wpBounds(v194, v27, v28);
  *&v195 = v29;
  *(&v195 + 1) = v30;
  *&v196 = v31;
  *(&v196 + 1) = v32;
  *&v198 = v194->_scaleTextPercent;
  objc_storeStrong(&v197, a4);
  objc_storeStrong(&v197 + 1, a5);
  *&v202[0].length = a6;
  *&v202[1].length = a7;
  BYTE12(v199) = 0;
  v35 = objc_msgSend_clearColor(MEMORY[0x277D81180], v33, v34);
  v161 = v194;
  v38 = objc_msgSend_CGColor(v35, v36, v37);
  *(&v198 + 1) = CGColorRetain(v38);

  *(&v200 + 1) = a10.location;
  *&v201 = a10.length;
  BYTE9(v199) = a11;
  objc_storeStrong(&v201 + 1, a12);
  objc_storeStrong(v202, a13);
  v202[3] = a14;
  objc_storeStrong(&v203, a15);
  v202[2].length = a17;
  objc_msgSend_parentInfo(self->_storage, v39, v40);
  v42 = v41 = v194;
  if (objc_opt_respondsToSelector())
  {
    v45 = objc_msgSend_parentInfo(self->_storage, v43, v44);
    BYTE14(v199) = objc_msgSend_shouldHideEmptyBullets(v45, v46, v47);
  }

  else
  {
    BYTE14(v199) = 0;
  }

  BYTE10(v199) = a8;
  BYTE11(v199) = a9;
  HIBYTE(v199) = objc_msgSend_wpKind(self->_storage, v48, v49) == 5;
  objc_storeStrong(&v204, a19);
  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  cf = 0u;
  memset(v188, 0, sizeof(v188));
  if (!v162 && (a7.location != *MEMORY[0x277D81490] || a7.length != *(MEMORY[0x277D81490] + 8)))
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSWPColumn renderWithRenderer:currentSelection:limitSelection:listRange:rubyGlyphRange:isCanvasInteractive:isInDrawingMode:suppressedMisspellingRange:blackAndWhite:dictationInterpretations:autocorrections:markedRange:markedText:renderMode:pageCount:suppressInvisibles:currentCanvasSelection:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 3659, 0, "ruby glyph range is meaningless without limitSelection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
  }

  objc_msgSend_willRenderFragmentsWithDrawingState_(v155, v50, &v193);
  objc_msgSend_getClipBoundingBox(v155, v58, v59);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  objc_msgSend_erasableBounds_(v41, v68, 0);
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  objc_msgSend_transformToWP(v41, v77, v78);
  v205.origin.x = v70;
  v205.origin.y = v72;
  v205.size.width = v74;
  v205.size.height = v76;
  v209 = CGRectApplyAffineTransform(v205, &v187);
  v206.origin.x = v61;
  v206.origin.y = v63;
  v206.size.width = v65;
  v206.size.height = v67;
  v207 = CGRectIntersection(v206, v209);
  x = v207.origin.x;
  y = v207.origin.y;
  width = v207.size.width;
  height = v207.size.height;
  if (BYTE14(v199) == 1 && objc_msgSend_isInsertionPoint(v159, v79, v80))
  {
    v85 = objc_msgSend_start(v159, v79, v80);
  }

  else
  {
    v85 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((a16 & 2) != 0)
  {
    objc_msgSend_drawAdornmentRects_forColumn_foreground_drawingState_(v155, v79, v161->_paragraphAdornments, v161, 0, &v193);
    v86 = (a16 & 4) != 0 ? 4097 : 1;
    *&v200 = 0;
    ptr = v161->_lineFragmentArray.__ptr_;
    v88 = *ptr;
    v89 = ptr[1];
    if (*ptr != v89)
    {
      v90 = 0;
      v91 = v86 & 0xFFFFFFFFFFFFDFFFLL | (((a16 >> 3) & 1) << 13);
      v92 = MEMORY[0x277D81490];
      do
      {
        v80 = *v88;
        v93 = *(*v88 + 24);
        if (v93 < 0)
        {
          v94 = v92;
        }

        else
        {
          v94 = *v88;
        }

        v95 = *v94;
        if (a6.location > v95 || (v93 < 0 ? (v96 = v92) : (v96 = *v88), a6.location + a6.length < *(v96 + 8) + v95))
        {
          objc_msgSend_drawFragment_updateRect_drawingState_runState_lineDrawFlags_(v155, v79, v80, &v193, v188, v91, x, y, width, height);
          v90 = v200;
        }

        *&v200 = ++v90;
        v88 += 2;
      }

      while (v88 != v89);
    }
  }

  if (a16)
  {
    v97 = objc_msgSend_rangeCount(v158, v79, v80);
    v100 = objc_msgSend_rangeCount(v157, v98, v99);
    v102 = 4098;
    if ((a16 & 4) == 0)
    {
      v102 = 2;
    }

    v103 = v102 & 0xFFFFFFFFFFFFDFFFLL | (((a16 >> 3) & 1) << 13);
    v104 = v103 | 0x200;
    if (!v97)
    {
      v104 = v103;
    }

    if (v100)
    {
      v104 |= 0x800uLL;
    }

    if (v156)
    {
      v105 = v104 | 0x400;
    }

    else
    {
      v105 = v104;
    }

    BYTE8(v203) = 0;
    *&v200 = 0;
    v106 = v161->_lineFragmentArray.__ptr_;
    v107 = *v106;
    v108 = v106[1];
    if (*v106 != v108)
    {
      v109 = MEMORY[0x277D81490];
      while (1)
      {
        v110 = *v107;
        if (*(*v107 + 24) < 0)
        {
          v111 = v109;
        }

        else
        {
          v111 = *v107;
        }

        v113 = v111;
        v112 = *v111;
        v114 = v112 + v113[1];
        if (a6.location <= v112 && a6.location + a6.length >= v114)
        {
          goto LABEL_51;
        }

        v105 = v105 & 0xFFFFFFFFFFFFFEFFLL | ((v112 == v85) << 8);
        if (!*(&v197 + 1))
        {
          goto LABEL_50;
        }

        if (objc_msgSend_intersectsRange_(*(&v197 + 1), v101, v112))
        {
          break;
        }

LABEL_51:
        *&v200 = v200 + 1;
        v107 += 2;
        if (v107 == v108)
        {
          goto LABEL_52;
        }
      }

      v110 = *v107;
LABEL_50:
      objc_msgSend_drawFragment_updateRect_drawingState_runState_lineDrawFlags_(v155, v101, v110, &v193, v188, v105, x, y, width, height);
      goto LABEL_51;
    }

LABEL_52:
    v208.origin.x = x;
    v208.origin.y = y;
    v208.size.width = width;
    v208.size.height = height;
    if (!CGRectIsNull(v208))
    {
      v118 = *(MEMORY[0x277CBF3A0] + 16);
      *&v187.a = *MEMORY[0x277CBF3A0];
      *&v187.c = v118;
      if (BYTE8(v203) == 1 && objc_msgSend_shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect_(v155, v116, 0, &v193, v105, &v187, x, y, width, height))
      {
        v120 = objc_msgSend_context(v155, v116, v119);
        CGContextSaveGState(v120);
        objc_msgSend_context(v155, v121, v122);
        CGContextClipToRectSafe();
        v123 = 1;
      }

      else
      {
        v123 = 0;
      }

      objc_msgSend_drawCharacterFillAdornmentRects_forColumn_excludeRange_drawingState_(v155, v116, v161->_paragraphAdornments, v161, a6.location, a6.length, &v193);
      objc_msgSend_drawCharacterStrokeAdornmentRects_forColumn_excludeRange_drawingState_(v155, v124, v161->_paragraphAdornments, v161, a6.location, a6.length, &v193);
      if (v123)
      {
        v125 = objc_msgSend_context(v155, v116, v117);
        CGContextRestoreGState(v125);
      }
    }

    *&v200 = 0;
    v126 = v161->_lineFragmentArray.__ptr_;
    v127 = *v126;
    v128 = v126[1];
    if (*v126 != v128)
    {
      v129 = MEMORY[0x277D81490];
      while (1)
      {
        v117 = *v127;
        if (*(*v127 + 24) < 0)
        {
          v130 = v129;
        }

        else
        {
          v130 = *v127;
        }

        v132 = v130;
        v131 = *v130;
        v133 = v131 + v132[1];
        if (a6.location <= v131 && a6.location + a6.length >= v133)
        {
          goto LABEL_72;
        }

        v105 = v105 & 0xFFFFFFFFFFFFFEFFLL | ((v131 == v85) << 8);
        if (!*(&v197 + 1))
        {
          goto LABEL_71;
        }

        if (objc_msgSend_intersectsRange_(*(&v197 + 1), v116, v131))
        {
          break;
        }

LABEL_72:
        *&v200 = v200 + 1;
        v127 += 2;
        if (v127 == v128)
        {
          goto LABEL_73;
        }
      }

      v117 = *v127;
LABEL_71:
      objc_msgSend_drawAdornmentsForFragment_updateRect_drawingState_runState_lineDrawFlags_(v155, v116, v117, &v193, v188, v105, x, y, width, height);
      goto LABEL_72;
    }

LABEL_73:
    if (BYTE12(v199))
    {
      v135 = objc_msgSend_context(v155, v116, v117);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3321888768;
      aBlock[2] = sub_276D5DFD4;
      aBlock[3] = &unk_2885FE5C8;
      aBlock[4] = v161;
      v167 = v135;
      v168 = v193;
      v169 = v194;
      v170 = v195;
      v171 = v196;
      v172 = v197;
      v136 = *(&v197 + 1);
      v174 = v198;
      v175 = v199;
      v176 = v200;
      v173 = v136;
      v177 = v201;
      v178 = *(&v201 + 1);
      v137 = v202[0].location;
      v180 = *&v202[0].length;
      v181 = *&v202[1].length;
      v182 = *&v202[2].length;
      v179 = v137;
      length = v202[3].length;
      v184 = v203;
      v185 = BYTE8(v203);
      v186 = v204;
      v166 = v155;
      v138 = _Block_copy(aBlock);
      v141 = objc_msgSend_storage(v161, v139, v140);
      v144 = objc_msgSend_range(v161, v142, v143);
      v164[0] = MEMORY[0x277D85DD0];
      v164[1] = 3221225472;
      v164[2] = sub_276D5E384;
      v164[3] = &unk_27A6F4060;
      v164[4] = v161;
      v164[5] = v138;
      objc_msgSend_enumerateBookmarksInRange_usingBlock_(v141, v145, v144, v145, v164);

      v148 = objc_msgSend_storage(v161, v146, v147);
      v151 = objc_msgSend_range(v161, v149, v150);
      v163[0] = MEMORY[0x277D85DD0];
      v163[1] = 3221225472;
      v163[2] = sub_276D5E438;
      v163[3] = &unk_27A6F3B10;
      v163[4] = v138;
      objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v148, v152, 6, v151, v152, v163);
    }

    objc_msgSend_drawAdornmentRects_forColumn_foreground_drawingState_(v155, v116, v161->_paragraphAdornments, v161, 1, &v193);
  }

  objc_msgSend_didRenderFragments(v155, v79, v80);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*(&cf + 1))
  {
    CGColorRelease(*(&cf + 1));
  }

  if (*(&v191 + 1))
  {
    CGColorRelease(*(&v191 + 1));
  }

  if (*(&v198 + 1))
  {
    CGColorRelease(*(&v198 + 1));
  }

  objc_msgSend_endTextColumn_(v25, v153, v161);
}

- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4
{
  v6 = objc_msgSend_storage(self, a2, a3);
  v8 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(v6, v7, a3, a4, 0);

  return v8;
}

- (id)partitionedLayoutForInfo:(id)a3
{
  v4 = a3;
  ptr = self->_lineFragmentArray.__ptr_;
  v6 = *ptr;
  v7 = *(ptr + 1);
  while (v6 != v7)
  {
    v8 = sub_276D6493C(*v6);
    v11 = objc_msgSend_info(v8, v9, v10);

    if (v11 == v4)
    {
      goto LABEL_6;
    }

    v6 += 2;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)singleLinePartitionedInfoAtStart:(BOOL)a3
{
  if (objc_msgSend_lineCount(self, a2, a3) == 1 && (v6 = objc_msgSend_lineFragmentAtIndex_(self, v5, 0), v7 = *(v6 + 24), (v7 & 1) != 0))
  {
    if ((v7 & 0x200) == 0 && a3 || (v8 = 0, (v7 & 0x100) == 0) && !a3)
    {
      v10 = sub_276D6493C(v6);
      v8 = objc_msgSend_info(v10, v11, v12);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)onlyHasAnchoredDrawable
{
  if (objc_msgSend_lineCount(self, a2, v2) == 1)
  {
    return (*(objc_msgSend_lineFragmentAtIndex_(self, v4, 0) + 24) >> 6) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)onlyHasPartitionedAttachments
{
  v5 = objc_msgSend_lineCount(self, a2, v2);
  v6 = 0;
  if (v5)
  {
    v7 = 0;
    do
    {
      v6 += *(objc_msgSend_lineFragmentAtIndex_(self, v4, v7++) + 24) & 1;
    }

    while (v5 != v7);
  }

  return v5 && v6 == v5;
}

- (BOOL)isLastLineFragmentPartitioned
{
  v4 = objc_msgSend_lineCount(self, a2, v2);
  if (v4)
  {
    LOBYTE(v4) = *(objc_msgSend_lineFragmentAtIndex_(self, v5, v4 - 1) + 24) & 1;
  }

  return v4;
}

- (BOOL)hasPartitionedAttachmentContinuationAt:(int)a3
{
  v5 = objc_msgSend_lineCount(self, a2, *&a3);
  if (v5)
  {
    if (a3)
    {
      v7 = objc_msgSend_lineFragmentAtIndex_(self, v6, v5 - 1);
    }

    else
    {
      v7 = objc_msgSend_lineFragmentAtIndex_(self, v6, 0);
    }

    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = 256;
      if (!a3)
      {
        v9 = 512;
      }

      LOBYTE(v5) = (v8 & v9) == 0;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)layoutsForInlineDrawables:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = sub_276D6F7D8(self->_lineFragmentArray.__ptr_);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = sub_276D6F7E8(self->_lineFragmentArray.__ptr_, i);
      v11 = sub_276D649A0(v10, v4);
      objc_msgSend_unionSet_(v5, v12, v11);
    }
  }

  v13 = objc_msgSend_copy(v5, v6, v7);

  return v13;
}

- (void)enumerateParagraphAdornmentsUsingBlock:(id)a3
{
  v4 = a3;
  paragraphAdornments = self->_paragraphAdornments;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276D5E9E0;
  v8[3] = &unk_27A6F4088;
  v9 = v4;
  v6 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(paragraphAdornments, v7, v8);
}

+ (void)enumerateColumns:(id)a3 withBlock:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v31, v35, 16);
  if (v11)
  {
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = objc_msgSend_range(v14, v9, v10);
        v17 = v16;
        v19 = objc_msgSend_storage(v14, v16, v18);
        LODWORD(v15) = &v17[v15] > objc_msgSend_length(v19, v20, v21);

        if (v15)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSWPColumn enumerateColumns:withBlock:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPColumn.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 3991, 0, "stale column range beyond end of storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
          goto LABEL_12;
        }

        v30 = 0;
        v6[2](v6, v14, &v30);
        if (v30)
        {
          goto LABEL_12;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v31, v35, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (CGRect)wpBounds
{
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTransformFromWP:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (id).cxx_construct
{
  *(self + 25) = 0;
  *(self + 26) = 0;
  return self;
}

@end
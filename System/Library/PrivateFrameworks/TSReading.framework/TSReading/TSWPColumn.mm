@interface TSWPColumn
+ (CGColor)computeSingleColorWithColumns:(id)columns;
+ (CGRect)boundsRectForSelection:(id)selection columnArray:(id)array includeRuby:(BOOL)ruby;
+ (CGRect)caretRectForInsertionPoint:(id)point withColumns:(id)columns;
+ (CGRect)rectForSelection:(id)selection withColumns:(id)columns;
+ (CGRect)rectForSelection:(id)selection withColumns:(id)columns useParagraphModeRects:(BOOL)rects;
+ (id)closestColumnInColumnsArray:(id)array forPoint:(CGPoint)point ignoreEmptyColumns:(BOOL)columns ignoreDrawableOnlyColumns:(BOOL)onlyColumns;
+ (id)columnForCharIndex:(unint64_t)index eol:(BOOL)eol withColumns:(id)columns;
+ (id)footnoteMarkAttachmentInColumnArray:(id)array atPoint:(CGPoint)point;
+ (id)footnoteReferenceAttachmentInColumnArray:(id)array atPoint:(CGPoint)point;
+ (id)pathForHighlightWithRange:(_NSRange)range columnArray:(id)array pathStyle:(int)style;
+ (id)smartFieldWithAttributeKind:(unsigned int)kind inColumnArray:(id)array atPoint:(CGPoint)point;
+ (unint64_t)charIndexForPoint:(CGPoint)point inColumnsArray:(id)array allowPastBreak:(BOOL)break allowNotFound:(BOOL)found pastCenterGoesToNextChar:(BOOL)char isAtEndOfLine:(BOOL *)line leadingEdge:(BOOL *)edge;
+ (unint64_t)charIndexForTopicDragAtPoint:(CGPoint)point inColumnsArray:(id)array;
- ($6D73A9620177E745173F4CF14EEA41ED)lineMetricsAtCharIndex:(SEL)index allowEndOfLine:(unint64_t)line;
- ($8502DCEA08BBBE1AB2005217B3838BBD)heightInfoOfLineFragmentAtIndex:(SEL)index;
- (BOOL)onlyHasAnchoredDrawable;
- (BOOL)requiresGlyphVectorsForHeightMeasurement;
- (CGAffineTransform)transformFromWP;
- (CGAffineTransform)transformToWP;
- (CGRect)boundsOfLineFragmentAtIndex:(unint64_t)index;
- (CGRect)caretRectForSelection:(id)selection;
- (CGRect)columnRectForRange:(_NSRange)range;
- (CGRect)erasableBounds:(unsigned int)bounds;
- (CGRect)erasableRectForSelectionRange:(_NSRange)range;
- (CGRect)firstRectForSelection:(id)selection includeSpaceAfter:(BOOL)after includeSpaceBefore:(BOOL)before includeLeading:(BOOL)leading;
- (CGRect)frameBounds;
- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range;
- (CGRect)labelBoundsOfLineFragmentAtIndex:(unint64_t)index;
- (CGRect)typographicBounds;
- (CGRect)typographicBoundsForCell;
- (CGRect)typographicBoundsOfLineFragmentAtIndex:(unint64_t)index;
- (CGRect)wpBounds;
- (CGSize)maxSize;
- (TSWPColumn)initWithStorage:(id)storage frameBounds:(CGRect)bounds;
- (TSWPStyleProvider)styleProvider;
- (_NSRange)anchoredRange;
- (_NSRange)lineFragmentRangeForLogicalLineIndex:(unint64_t)index;
- (_NSRange)range;
- (_NSRange)rangeOfLineFragmentAtIndex:(unint64_t)index;
- (_TSWPCharIndexAndPosition)calcAttachmentPositionForDrawable:(SEL)drawable atPoint:(id)point inTextLayoutTarget:(CGPoint)target tlBoundsInfluencingWrap:(id)wrap wrapOutset:(CGPoint)outset wrapMargin:(CGSize)margin makeInline:(double)inline;
- (const)lineFragmentClosestToPoint:(CGPoint)point knobTag:(unint64_t)tag;
- (const)lineFragmentForCharIndex:(unint64_t)index knobTag:(unint64_t)tag selectionType:(int)type;
- (const)pColumnEndingPartitionedLineFragmentInSelectionRange:(_NSRange)range;
- (double)baselineOfLineFragmentAtCharIndex:(unint64_t)index;
- (double)horizontalOffsetForCharIndex:(unint64_t)index lineFragmentIndex:(unint64_t)fragmentIndex bumpPastHyphen:(BOOL)hyphen allowPastLineBounds:(BOOL)bounds;
- (double)minimumHeightForLayoutOnPage;
- (double)textBottom;
- (double)textHeight;
- (double)topOfLineAtCharIndex:(unint64_t)index;
- (double)trimToCharIndex:(unint64_t)index inTarget:(id)target;
- (id).cxx_construct;
- (id)drawableIntersectionRectsForSelection:(id)selection inTarget:(id)target;
- (id)lineSelectionsForSelection:(id)selection;
- (id)pMutableRectsForSelectionRange:(_NSRange)range selectionType:(int)type includeSpaceAfter:(BOOL)after includeSpaceBefore:(BOOL)before includeLeading:(BOOL)leading forParagraphMode:(BOOL)mode includeRuby:(BOOL)ruby inranges:(id)self0 outranges:(id *)self1;
- (id)partitionedLayoutForInfo:(id)info;
- (id)rectsForSelection:(id)selection;
- (id)rectsForSelection:(id)selection ranges:(id *)ranges;
- (id)rectsForSelectionRange:(_NSRange)range selectionType:(int)type forParagraphMode:(BOOL)mode includeRuby:(BOOL)ruby;
- (id)rectsForSelectionRanges:(id)ranges selectionType:(int)type;
- (id)singleLinePartitionedInfoAtStart:(BOOL)start;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind;
- (unint64_t)charIndexForSelectionFromPoint:(CGPoint)point isTail:(BOOL)tail;
- (unint64_t)charIndexFromPoint:(CGPoint)point allowPastBreak:(BOOL)break pastCenterGoesToNextChar:(BOOL)char allowNotFound:(BOOL)found isAtEndOfLine:(BOOL *)line outFragment:(const TSWPLineFragment *)fragment leadingEdge:(BOOL *)edge;
- (unint64_t)charIndexFromWPPoint:(CGPoint)point pastCenterGoesToNextChar:(BOOL)char allowNotFound:(BOOL)found outFragment:(const TSWPLineFragment *)fragment leadingEdge:(BOOL *)edge;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index;
- (unint64_t)lineIndexForCharIndex:(unint64_t)index eol:(BOOL)eol;
- (unint64_t)truncatedCharIndexForLineFragmentAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)incrementRanges:(int64_t)ranges;
- (void)makeEmpty:(unint64_t)empty layoutResultFlags:(int)flags;
- (void)normalizeLineFragmentOrigins:(CGPoint)origins;
- (void)offsetLineFragmentsByPoint:(CGPoint)point;
- (void)renderWithRenderer:(id)renderer currentSelection:(id)selection limitSelection:(id)limitSelection listRange:(_NSRange)range rubyGlyphRange:(_NSRange)glyphRange isCanvasInteractive:(BOOL)interactive spellChecker:(id)checker suppressedMisspellingRange:(_NSRange)self0 blackAndWhite:(BOOL)self1 dictationInterpretations:(const void *)self2 autocorrections:(const void *)self3 markedRange:(_NSRange)self4 markedText:(id)self5 renderMode:(int)self6 pageCount:(unint64_t)self7 suppressInvisibles:(BOOL)self8 currentCanvasSelection:(id)self9;
- (void)renderWithRenderer:(id)renderer pageCount:(unint64_t)count;
- (void)setAnchoredRange:(_NSRange)range;
- (void)setLineFragmentArray:(const void *)array;
- (void)setRange:(_NSRange)range;
- (void)setStorage:(id)storage range:(_NSRange)range;
- (void)setTransformFromWP:(CGAffineTransform *)p;
- (void)trimFromCharIndex:(unint64_t)index inTarget:(id)target layoutChore:(void *)chore;
@end

@implementation TSWPColumn

+ (CGRect)caretRectForInsertionPoint:(id)point withColumns:(id)columns
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBF398];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [columns countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(columns);
        }

        [*(*(&v24 + 1) + 8 * i) caretRectForSelection:point];
        v7 = v16;
        v8 = v17;
        v9 = v15;
        v10 = v18;
        if (v18 > 0.0)
        {
          v9 = fmax(v15, 1.0);
          goto LABEL_11;
        }
      }

      v12 = [columns countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v30.origin.x = v7;
  v30.origin.y = v8;
  v30.size.width = v9;
  v30.size.height = v10;
  if (!CGRectEqualToRect(v30, *v6))
  {
    v19 = +[TSWPColumn columnForCharIndex:eol:withColumns:](TSWPColumn, "columnForCharIndex:eol:withColumns:", [point start], 1, columns);
    if (v19)
    {
      [v19 lineMetricsAtCharIndex:objc_msgSend(point allowEndOfLine:{"start", 0), 1}];
      v8 = 0.0;
    }
  }

  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)rectForSelection:(id)selection withColumns:(id)columns
{
  [self rectForSelection:selection withColumns:columns useParagraphModeRects:1];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)rectForSelection:(id)selection withColumns:(id)columns useParagraphModeRects:(BOOL)rects
{
  rectsCopy = rects;
  selectionCopy = selection;
  v75 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if ([selection isValid])
  {
    v63 = [objc_msgSend(columns "firstObject")];
    if (v63)
    {
      if ([selectionCopy isInsertionPoint])
      {
        v61 = 1;
        v11 = [v63 wordAtCharIndex:objc_msgSend(selectionCopy includePreviousWord:{"range"), 1}];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_10:
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v18 = [columns countByEnumeratingWithState:&v69 objects:v74 count:16];
          if (!v18)
          {
            goto LABEL_49;
          }

          v19 = v18;
          v20 = *v70;
          while (1)
          {
            v21 = 0;
            v62 = v19;
            do
            {
              if (*v70 != v20)
              {
                objc_enumerationMutation(columns);
              }

              v22 = *(*(&v69 + 1) + 8 * v21);
              range = [v22 range];
              v25 = v24;
              [v22 frameBounds];
              v27 = v26;
              v29 = v28;
              if (![selectionCopy isInsertionPoint])
              {
                v76.location = [selectionCopy range];
                v77.location = range;
                v77.length = v25;
                v34 = NSIntersectionRange(v76, v77);
                if (!v34.length)
                {
                  goto LABEL_40;
                }

                v35 = v20;
                columnsCopy = columns;
                v37 = [v22 rectsForSelection:selectionCopy];
                v38 = [v63 selectedParagraphBreakCount:{v34.location, v34.length}];
                if ([v63 emptyParagraphCount:{v34.location, v34.length}])
                {
                  v39 = -1;
                }

                else
                {
                  v39 = 0;
                }

                [v63 paragraphIndexRangeForCharRange:{v34.location, v34.length}];
                if (rectsCopy && (v41 = v40, [selectionCopy type] != 3))
                {
                  v42 = 0;
                  if ([selectionCopy type] != 5 && v41 >= 2)
                  {
                    if (!(v38 + v39))
                    {
                      goto LABEL_24;
                    }

                    v42 = v38 + v39 != 1 || [v37 count] > 2;
                  }
                }

                else
                {
LABEL_24:
                  v42 = 0;
                }

                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v43 = [v37 countByEnumeratingWithState:&v65 objects:v73 count:16];
                if (v43)
                {
                  v44 = v43;
                  v45 = *v66;
                  v46 = v61 & v42;
                  columns = columnsCopy;
                  v20 = v35;
                  v19 = v62;
                  do
                  {
                    for (i = 0; i != v44; ++i)
                    {
                      if (*v66 != v45)
                      {
                        objc_enumerationMutation(v37);
                      }

                      [*(*(&v65 + 1) + 8 * i) CGRectValue];
                      v51 = v50;
                      v53 = v52;
                      if (v46)
                      {
                        v54 = v27;
                      }

                      else
                      {
                        v54 = v48;
                      }

                      if (v46)
                      {
                        v55 = v29;
                      }

                      else
                      {
                        v55 = v49;
                      }

                      v78.origin.x = x;
                      v78.origin.y = y;
                      v78.size.width = width;
                      v78.size.height = height;
                      v79 = CGRectUnion(v78, *(&v51 - 1));
                      x = v79.origin.x;
                      y = v79.origin.y;
                      width = v79.size.width;
                      height = v79.size.height;
                    }

                    v44 = [v37 countByEnumeratingWithState:&v65 objects:v73 count:16];
                  }

                  while (v44);
                }

                else
                {
                  columns = columnsCopy;
                  v20 = v35;
                  v19 = v62;
                }

                goto LABEL_40;
              }

              [v22 caretRectForSelection:selectionCopy];
              x = v31;
              y = v32;
              width = v30;
              height = v33;
              if (v33 > 0.0)
              {
                width = fmax(v30, 1.0);
                goto LABEL_49;
              }

LABEL_40:
              ++v21;
            }

            while (v21 != v19);
            v56 = [columns countByEnumeratingWithState:&v69 objects:v74 count:16];
            v19 = v56;
            if (!v56)
            {
              goto LABEL_49;
            }
          }
        }

        v13 = v11;
        v14 = v12;
        v15 = +[TSWPColumn columnForCharIndex:eol:withColumns:](TSWPColumn, "columnForCharIndex:eol:withColumns:", [selectionCopy range], objc_msgSend(selectionCopy, "isAtEndOfLine"), columns);
        if (v15)
        {
          v16 = v15;
          v17 = [v15 lineIndexForCharIndex:objc_msgSend(selectionCopy eol:{"range"), objc_msgSend(selectionCopy, "isAtEndOfLine")}];
          if (v17 == [v16 lineIndexForCharIndex:v13 eol:0] && v17 == objc_msgSend(v16, "lineIndexForCharIndex:eol:", v13 + v14, objc_msgSend(selectionCopy, "isAtEndOfLine")))
          {
            selectionCopy = [selectionCopy copyWithNewRange:{v13, v14}];
            v61 = 0;
            goto LABEL_10;
          }
        }
      }

      v61 = 1;
      goto LABEL_10;
    }
  }

LABEL_49:
  v57 = x;
  v58 = y;
  v59 = width;
  v60 = height;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

+ (id)closestColumnInColumnsArray:(id)array forPoint:(CGPoint)point ignoreEmptyColumns:(BOOL)columns ignoreDrawableOnlyColumns:(BOOL)onlyColumns
{
  onlyColumnsCopy = onlyColumns;
  columnsCopy = columns;
  y = point.y;
  x = point.x;
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [array countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v31;
  v15 = INFINITY;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(array);
      }

      v17 = *(*(&v30 + 1) + 8 * i);
      [v17 frameBounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      if ((!columnsCopy || [v17 countLines]) && (!onlyColumnsCopy || objc_msgSend(v17, "countLines") != 1 || (*(objc_msgSend(v17, "lineFragmentAtIndex:", 0) + 24) & 0x40) == 0))
      {
        v37.origin.x = v19;
        v37.origin.y = v21;
        v37.size.width = v23;
        v37.size.height = v25;
        v36.x = x;
        v36.y = y;
        if (CGRectContainsPoint(v37, v36))
        {
          return v17;
        }

        v26 = TSDClampPointInRect();
        v28 = TSDDistanceSquared(x, y, v26, v27);
        if (v28 < v15)
        {
          v13 = v17;
          v15 = v28;
        }
      }
    }

    v12 = [array countByEnumeratingWithState:&v30 objects:v34 count:16];
    v17 = v13;
  }

  while (v12);
  return v17;
}

+ (unint64_t)charIndexForPoint:(CGPoint)point inColumnsArray:(id)array allowPastBreak:(BOOL)break allowNotFound:(BOOL)found pastCenterGoesToNextChar:(BOOL)char isAtEndOfLine:(BOOL *)line leadingEdge:(BOOL *)edge
{
  charCopy = char;
  foundCopy = found;
  breakCopy = break;
  y = point.y;
  x = point.x;
  v16 = [self closestColumnInColumnsArray:array forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  v17 = v16;
  if (foundCopy)
  {
    [v16 frameBounds];
    v20.x = x;
    v20.y = y;
    if (!CGRectContainsPoint(v21, v20))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return [v17 charIndexFromPoint:breakCopy allowPastBreak:charCopy pastCenterGoesToNextChar:foundCopy allowNotFound:line isAtEndOfLine:edge leadingEdge:{x, y}];
}

+ (unint64_t)charIndexForTopicDragAtPoint:(CGPoint)point inColumnsArray:(id)array
{
  y = point.y;
  x = point.x;
  v58 = *MEMORY[0x277D85DE8];
  v7 = [self closestColumnInColumnsArray:array forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  v9 = [v7 charIndexFromPoint:0 allowPastBreak:1 pastCenterGoesToNextChar:0 allowNotFound:0 isAtEndOfLine:0 outFragment:0 leadingEdge:{x, y}];
  storage = [v8 storage];
  if (storage)
  {
    [storage paragraphEnumeratorAtCharIndex:v9 styleProvider:0];
  }

  else
  {
    memset(&v56, 0, sizeof(v56));
  }

  v11 = TSWPParagraphEnumerator::paragraphTextRange(&v56);
  v13 = v12;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = [array countByEnumeratingWithState:&v52 objects:v57 count:16];
  v49 = y;
  v51 = v8;
  v48 = v13;
  if (v14)
  {
    v15 = *v53;
    v16 = v11 + v13;
    v50 = 0.0;
    v17 = 1;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(array);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        range = [v21 range];
        if (range + v23 > v11)
        {
          if ([v21 range] >= v16)
          {
            goto LABEL_35;
          }

          [v21 frameBounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v32 = [v21 lineFragmentForCharIndex:v11 knobTag:11 selectionType:0];
          v33 = [v21 lineFragmentForCharIndex:v16 knobTag:10 selectionType:0];
          v34 = v33;
          if (v21 == v51)
          {
            if (v32)
            {
              MinY = CGRectGetMinY(*(v32 + 48));
              if (v34)
              {
                v25 = v34[6];
                v27 = v34[7];
                v29 = v34[8];
                v31 = v34[9];
              }

              v42 = *(v32 + 112);
              v59.origin.x = v25;
              v59.origin.y = v27;
              v59.size.width = v29;
              v59.size.height = v31;
              v49 = v49 - (MinY + v42);
              Height = CGRectGetMaxY(v59) - (MinY + v42);
            }

            else if (v33)
            {
              MaxY = CGRectGetMaxY(*(v33 + 48));
              v61.origin.x = v25;
              v61.origin.y = v27;
              v61.size.width = v29;
              v61.size.height = v31;
              Height = MaxY - CGRectGetMinY(v61);
            }

            else
            {
              v63.origin.x = v25;
              v63.origin.y = v27;
              v63.size.width = v29;
              v63.size.height = v31;
              Height = CGRectGetHeight(v63);
            }

            v17 = 0;
            v18 = v18 + Height;
          }

          else if (v17)
          {
            v35 = v25;
            v36 = v27;
            v37 = v29;
            v38 = v31;
            if (v32)
            {
              v39 = CGRectGetMaxY(*&v35);
              v40 = v39 - CGRectGetMinY(*(v32 + 48));
            }

            else
            {
              v40 = CGRectGetHeight(*&v35);
            }

            v19 = v19 + v40;
            v17 = 1;
          }

          else
          {
            if (v33)
            {
              v44 = CGRectGetMaxY(*(v33 + 48));
              v60.origin.x = v25;
              v60.origin.y = v27;
              v60.size.width = v29;
              v60.size.height = v31;
              v17 = 0;
              v45 = v44 - CGRectGetMinY(v60);
            }

            else
            {
              v62.origin.x = v25;
              v62.origin.y = v27;
              v62.size.width = v29;
              v62.size.height = v31;
              v45 = CGRectGetHeight(v62);
              v17 = 0;
            }

            v50 = v50 + v45;
          }
        }
      }

      v14 = [array countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v14);
  }

  else
  {
    v50 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
  }

LABEL_35:
  if (v49 + v19 > (v50 + v18 + v19) * 0.5)
  {
    if (v11 + v48)
    {
      v11 = v11 + v48 - (v11 + v48 != [objc_msgSend(v51 storage]);
    }

    else
    {
      v11 = 0;
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v56);
  return v11;
}

+ (id)smartFieldWithAttributeKind:(unsigned int)kind inColumnArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = *&kind;
  v8 = [TSWPColumn closestColumnInColumnsArray:array forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v8 frameBounds];
  v13.x = x;
  v13.y = y;
  if (!CGRectContainsPoint(v14, v13))
  {
    return 0;
  }

  v10 = [v9 charIndexFromPoint:0 allowPastBreak:0 pastCenterGoesToNextChar:1 allowNotFound:0 isAtEndOfLine:0 leadingEdge:{x, y}];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [v9 smartFieldAtCharIndex:v10 attributeKind:v7];
}

+ (id)footnoteMarkAttachmentInColumnArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [TSWPColumn closestColumnInColumnsArray:array forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if ([objc_msgSend(v6 "storage")] != 2)
  {
    return 0;
  }

  [v7 frameBounds];
  v13.x = x;
  v13.y = y;
  if (!CGRectContainsPoint(v14, v13))
  {
    return 0;
  }

  v8 = [v7 charIndexFromPoint:0 allowPastBreak:0 pastCenterGoesToNextChar:1 allowNotFound:0 isAtEndOfLine:0 leadingEdge:{x, y}];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = v8;
  storage = [v7 storage];

  return [storage footnoteMarkAtCharIndex:v10];
}

+ (id)footnoteReferenceAttachmentInColumnArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [TSWPColumn closestColumnInColumnsArray:array forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if ([objc_msgSend(v6 "storage")])
  {
    return 0;
  }

  [v7 frameBounds];
  v13.x = x;
  v13.y = y;
  if (!CGRectContainsPoint(v14, v13))
  {
    return 0;
  }

  v8 = [v7 charIndexFromPoint:0 allowPastBreak:0 pastCenterGoesToNextChar:1 allowNotFound:0 isAtEndOfLine:0 leadingEdge:{x, y}];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = v8;
  storage = [v7 storage];

  return [storage footnoteReferenceAtCharIndex:v10];
}

+ (id)pathForHighlightWithRange:(_NSRange)range columnArray:(id)array pathStyle:(int)style
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = +[TSDBezierPath bezierPath];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = array;
  v8 = [array countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v20 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = [v11 rectsForSelectionRange:range.location selectionType:range.length forParagraphMode:0 includeRuby:{0, style == 1}];
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v22 + 1) + 8 * j);
              [v17 CGRectValue];
              if (style == 2)
              {
                [v17 CGRectValue];
                v34 = CGRectInset(v33, -3.0, -3.0);
                [v7 appendBezierPath:{+[TSDBezierPath bezierPathWithRoundedRect:cornerRadius:](TSDBezierPath, "bezierPathWithRoundedRect:cornerRadius:", v34.origin.x, v34.origin.y, v34.size.width, v34.size.height, 3.0)}];
              }

              else
              {
                [v7 appendBezierPathWithRect:?];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v14);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (CGRect)boundsRectForSelection:(id)selection columnArray:(id)array includeRuby:(BOOL)ruby
{
  v42 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if (selection)
  {
    rubyCopy = ruby;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = [array countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        v15 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(array);
          }

          v16 = *(*(&v36 + 1) + 8 * v15);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          range = [selection range];
          v19 = [v16 rectsForSelectionRange:range selectionType:v18 forParagraphMode:objc_msgSend(selection includeRuby:{"type"), 0, rubyCopy}];
          v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v33;
            do
            {
              v23 = 0;
              do
              {
                if (*v33 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [*(*(&v32 + 1) + 8 * v23) CGRectValue];
                v46.origin.x = v24;
                v46.origin.y = v25;
                v46.size.width = v26;
                v46.size.height = v27;
                v43.origin.x = x;
                v43.origin.y = y;
                v43.size.width = width;
                v43.size.height = height;
                v44 = CGRectUnion(v43, v46);
                x = v44.origin.x;
                y = v44.origin.y;
                width = v44.size.width;
                height = v44.size.height;
                ++v23;
              }

              while (v21 != v23);
              v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v21);
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [array countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

+ (id)columnForCharIndex:(unint64_t)index eol:(BOOL)eol withColumns:(id)columns
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(columns "firstObject")];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = columns;
  v8 = [columns countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v22;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v22 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v21 + 1) + 8 * v12);
    if (v7 != [v13 storage])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPColumn columnForCharIndex:eol:withColumns:]"];
      [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 462, @"unexpected column storage"}];
    }

    range = [v13 range];
    if (range + v17 > index && eol)
    {
      return v13;
    }

    if (range + v17 > index)
    {
      v10 = v13;
    }

    if (v9 == ++v12)
    {
      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v13 = v10;
      if (v9)
      {
        goto LABEL_3;
      }

      return v13;
    }
  }
}

- (TSWPColumn)initWithStorage:(id)storage frameBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = TSWPColumn;
  v9 = [(TSWPColumn *)&v13 init];
  if (v9)
  {
    v9->_storage = storage;
    v9->_frameBounds.origin.x = x;
    v9->_frameBounds.origin.y = y;
    v9->_frameBounds.size.width = width;
    v9->_frameBounds.size.height = height;
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9->_transform.a = *MEMORY[0x277CBF2C0];
    *&v9->_transform.c = v11;
    *&v9->_transform.tx = *(v10 + 32);
    v9->_startAnchoredCharIndex = 0x7FFFFFFFFFFFFFFFLL;
    v9->_scaleTextPercent = 100;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  self->_styleProvider = 0;

  cntrl = self->_lineFragmentArray.__cntrl_;
  self->_lineFragmentArray.__ptr_ = 0;
  self->_lineFragmentArray.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }

  paragraphAdornments = self->_paragraphAdornments;
  if (paragraphAdornments)
  {
    v6 = self->_paragraphAdornments;
    std::vector<TSWPAdornmentRect>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x26D6A9A30](paragraphAdornments, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = TSWPColumn;
  [(TSWPColumn *)&v5 dealloc];
}

- (TSWPStyleProvider)styleProvider
{
  if (self->_styleProvider)
  {
    return self->_styleProvider;
  }

  else
  {
    return [TSWPStorageStyleProvider styleProviderForStorage:self->_storage];
  }
}

- (_NSRange)range
{
  characterCount = self->_characterCount;
  startCharIndex = self->_startCharIndex;
  result.length = characterCount;
  result.location = startCharIndex;
  return result;
}

- (void)setRange:(_NSRange)range
{
  length = range.length;
  [(TSWPColumn *)self setStartCharIndex:range.location];

  [(TSWPColumn *)self setCharacterCount:length];
}

- (_NSRange)anchoredRange
{
  anchoredCharCount = self->_anchoredCharCount;
  startAnchoredCharIndex = self->_startAnchoredCharIndex;
  result.length = anchoredCharCount;
  result.location = startAnchoredCharIndex;
  return result;
}

- (void)setAnchoredRange:(_NSRange)range
{
  length = range.length;
  [(TSWPColumn *)self setStartAnchoredCharIndex:range.location];

  [(TSWPColumn *)self setAnchoredCharCount:length];
}

- (void)incrementRanges:(int64_t)ranges
{
  if (-self->_startCharIndex > ranges)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn incrementRanges:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 561, @"Bad delta"}];
  }

  startAnchoredCharIndex = self->_startAnchoredCharIndex;
  if (-startAnchoredCharIndex > ranges)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn incrementRanges:]"];
    [currentHandler2 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 562, @"Bad delta"}];
    startAnchoredCharIndex = self->_startAnchoredCharIndex;
  }

  startCharIndex = self->_startCharIndex;
  if (-startCharIndex > ranges)
  {
    rangesCopy = -startCharIndex;
  }

  else
  {
    rangesCopy = ranges;
  }

  self->_startCharIndex = rangesCopy + startCharIndex;
  self->_startAnchoredCharIndex = startAnchoredCharIndex + rangesCopy;
  ptr = self->_lineFragmentArray.__ptr_;

  TSWPLineFragmentArray::incrementStartCharIndexes(ptr, rangesCopy);
}

- (void)setStorage:(id)storage range:(_NSRange)range
{
  length = range.length;
  v7 = range.location - self->_startCharIndex;

  storageCopy = storage;
  self->_storage = storageCopy;
  TSWPLineFragmentArray::setStorage(self->_lineFragmentArray.__ptr_, storageCopy, v7);
  characterCount = self->_characterCount;
  self->_startCharIndex += v7;
  self->_startAnchoredCharIndex += v7;
  if (characterCount != length)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn setStorage:range:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"];

    [currentHandler handleFailureInFunction:v11 file:v12 lineNumber:588 description:@"Shouldn't be changing character count here"];
  }
}

- (CGSize)maxSize
{
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)trimToCharIndex:(unint64_t)index inTarget:(id)target
{
  if (self->_nextWidowPullsDownFromCharIndex < index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn trimToCharIndex:inTarget:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 611, @"Bad charIndex"}];
  }

  range = [(TSWPColumn *)self range];
  v11 = range + v10;
  if (index < range || v11 < index)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn trimToCharIndex:inTarget:]"];
    [currentHandler2 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 616, @"Bad charIndex"}];
    if (target)
    {
      goto LABEL_6;
    }

LABEL_19:
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn trimToCharIndex:inTarget:]"];
    [currentHandler3 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 618, @"invalid nil value for '%s'", "target"}];
    goto LABEL_6;
  }

  if (!target)
  {
    goto LABEL_19;
  }

LABEL_6:
  v12 = 0.0;
  if (index >= range && v11 > index)
  {
    self->_characterCount = index - range;
    v13 = TSWPLineFragmentArray::count(self->_lineFragmentArray.__ptr_);
    if (v13)
    {
      v14 = v13;
      LineIndexForCharIndex = TSWPLineFragmentArray::findLineIndexForCharIndex(self->_lineFragmentArray.__ptr_, index);
      v16 = 0.0;
      v17 = v14 > LineIndexForCharIndex;
      v18 = v14 - LineIndexForCharIndex;
      if (v17)
      {
        v19 = LineIndexForCharIndex;
        if (LineIndexForCharIndex)
        {
          v20 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, LineIndexForCharIndex);
          v21 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, v19 - 1);
          MinY = CGRectGetMinY(*(v20 + 48));
          v12 = MinY - CGRectGetMaxY(*(v21 + 48)) + *(v20 + 112);
        }

        v29.location = v19;
        v29.length = v18;
        TSWPLineFragmentArray::removeObjectsInRange(self->_lineFragmentArray.__ptr_, v29);
      }

      Object = TSWPLineFragmentArray::lastObject(self->_lineFragmentArray.__ptr_);
      if (Object)
      {
        v16 = Object[4] + Object[5] + Object[17];
      }

      [(TSWPColumn *)self setContentBottom:v16];
      [(TSWPColumn *)self clearAdornments];
      TSWPLayoutChore::addParagraphAdornmentsToColumn(self, [target columnMetricsForCharIndex:index outRange:0], 0);
      TSWPLayoutChore::addChangeBarAdornmentsToColumn(self, [target columnMetricsForCharIndex:index outRange:0]);
    }
  }

  self->_nextWidowPullsDownFromCharIndex = index;
  return v12;
}

- (void)trimFromCharIndex:(unint64_t)index inTarget:(id)target layoutChore:(void *)chore
{
  if (self->_nextWidowPullsDownFromCharIndex < index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn trimFromCharIndex:inTarget:layoutChore:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 658, @"Bad charIndex"}];
  }

  range = [(TSWPColumn *)self range];
  v13 = range + v12;
  if (range > index || v13 < index)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn trimFromCharIndex:inTarget:layoutChore:]"];
    [currentHandler2 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 661, @"Bad charIndex"}];
    if (target)
    {
      goto LABEL_6;
    }

LABEL_13:
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn trimFromCharIndex:inTarget:layoutChore:]"];
    [currentHandler3 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 663, @"invalid nil value for '%s'", "target"}];
    goto LABEL_6;
  }

  if (!target)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (range < index && v13 >= index)
  {
    p_lineFragmentArray = &self->_lineFragmentArray;
    if (TSWPLineFragmentArray::count(self->_lineFragmentArray.__ptr_))
    {
      LineIndexForCharIndex = TSWPLineFragmentArray::findLineIndexForCharIndex(p_lineFragmentArray->__ptr_, index);
      if (LineIndexForCharIndex)
      {
        v16.length = LineIndexForCharIndex;
        if (LineIndexForCharIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_startCharIndex = index;
          self->_characterCount = v13 - index;
          v16.location = 0;
          TSWPLineFragmentArray::removeObjectsInRange(self->_lineFragmentArray.__ptr_, v16);
          Object = TSWPLineFragmentArray::firstObject(self->_lineFragmentArray.__ptr_);
          v22 = MEMORY[0x277CBF348];
          if (Object)
          {
            v23 = Object;
            [(TSWPColumn *)self frameBounds];
            MinY = CGRectGetMinY(v32);
            v25 = MinY - CGRectGetMinY(*(v23 + 48));
            v26 = 0.0;
          }

          else
          {
            v26 = *MEMORY[0x277CBF348];
            v25 = *(MEMORY[0x277CBF348] + 8);
          }

          v31.x = v26;
          v31.y = v25;
          TSWPLineFragmentArray::offsetLineFragmentsBy(p_lineFragmentArray->__ptr_, v31);
          if (v26 != *v22 || v25 != v22[1])
          {
            TSWPLayoutChore::pPostProcessAttachments(chore, &self->_lineFragmentArray);
          }

          v27 = TSWPLineFragmentArray::lastObject(p_lineFragmentArray->__ptr_);
          if (v27)
          {
            v28 = v27[4] + v27[5] + v27[17];
          }

          else
          {
            v28 = 0.0;
          }

          [(TSWPColumn *)self setContentBottom:v28];
          [(TSWPColumn *)self clearAdornments];
          TSWPLayoutChore::addParagraphAdornmentsToColumn(self, [target columnMetricsForCharIndex:index outRange:0], 0);
          v29 = [target columnMetricsForCharIndex:index outRange:0];

          TSWPLayoutChore::addChangeBarAdornmentsToColumn(self, v29);
        }
      }
    }
  }
}

- (double)minimumHeightForLayoutOnPage
{
  if ([(TSWPColumn *)self countLines])
  {
    v3 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, 0);
    MinY = CGRectGetMinY(*(v3 + 48));
    [(TSWPColumn *)self logicalBoundsTop];
    v6 = v5;
    result = 0.0;
    if (MinY > v6)
    {
      return result;
    }

    contentBottom = *(v3 + 32) + *(v3 + 40) + *(v3 + 136);
  }

  else
  {
    contentBottom = self->_contentBottom;
  }

  [(TSWPColumn *)self logicalBoundsTop];
  return contentBottom - v9;
}

- (CGRect)erasableBounds:(unsigned int)bounds
{
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  v16.origin.x = TSWPLineFragmentArray::erasableBounds(self->_lineFragmentArray.__ptr_, bounds, self);
  v16.origin.y = v8;
  v16.size.width = v9;
  v16.size.height = v10;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v14 = CGRectUnion(v13, v16);
  v11 = *&self->_transform.c;
  *&v12.a = *&self->_transform.a;
  *&v12.c = v11;
  *&v12.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(v14, &v12);
}

- (double)textBottom
{
  [(TSWPColumn *)self logicalBoundsTop];
  v4 = v3;
  Object = TSWPLineFragmentArray::lastObject(self->_lineFragmentArray.__ptr_);
  if (!Object)
  {
    return v4;
  }

  v6 = Object[6];
  v7 = Object[7];
  v8 = Object[8];
  v9 = Object[9];

  return CGRectGetMaxY(*&v6);
}

- (double)textHeight
{
  [(TSWPColumn *)self textBottom];
  v4 = v3;
  [(TSWPColumn *)self logicalBoundsTop];
  return v4 - v5;
}

- (BOOL)requiresGlyphVectorsForHeightMeasurement
{
  lineFragmentArray = [(TSWPColumn *)self lineFragmentArray];
  v3 = TSWPLineFragmentArray::count(*lineFragmentArray);
  if (v3)
  {
    v4 = v3;
    v5 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, 0);
    if (TSWPLineFragment::requiresGlyphVectorsForHeightMeasurement(v5))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v6 = 1;
      do
      {
        v7 = v6;
        if (v4 == v6)
        {
          break;
        }

        v8 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, v6);
        v9 = TSWPLineFragment::requiresGlyphVectorsForHeightMeasurement(v8);
        v6 = v7 + 1;
      }

      while (!v9);
      LOBYTE(v3) = v7 < v4;
    }
  }

  return v3;
}

- (CGRect)frameBounds
{
  frameBounds = self->_frameBounds;
  v2 = *&self->_transform.c;
  *&v3.a = *&self->_transform.a;
  *&v3.c = v2;
  *&v3.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(frameBounds, &v3);
}

- (CGAffineTransform)transformToWP
{
  v3 = *&self->_transform.c;
  *&v5.a = *&self->_transform.a;
  *&v5.c = v3;
  *&v5.tx = *&self->_transform.tx;
  return CGAffineTransformInvert(retstr, &v5);
}

- (_NSRange)lineFragmentRangeForLogicalLineIndex:(unint64_t)index
{
  v3 = TSWPLineFragmentArray::lineFragmentRangeForLogicalLineIndex(self->_lineFragmentArray.__ptr_, index);
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)setLineFragmentArray:(const void *)array
{
  v4 = *array;
  v3 = *(array + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_lineFragmentArray.__cntrl_;
  self->_lineFragmentArray.__ptr_ = v4;
  self->_lineFragmentArray.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (void)normalizeLineFragmentOrigins:(CGPoint)origins
{
  y = origins.y;
  x = origins.x;
  [(TSWPColumn *)self frameBounds];
  v7 = v6 - x;
  v9 = v8 - y;

  [(TSWPColumn *)self offsetLineFragmentsByPoint:v7, v9];
}

- (void)offsetLineFragmentsByPoint:(CGPoint)point
{
  if (point.x != 0.0 || point.y != 0.0)
  {
    v4 = *&point.y;
    TSWPLineFragmentArray::offsetLineFragmentsBy(self->_lineFragmentArray.__ptr_, point);
    *&self->_contentBottom = vaddq_f64(vdupq_lane_s64(v4, 0), *&self->_contentBottom);
  }
}

- (void)makeEmpty:(unint64_t)empty layoutResultFlags:(int)flags
{
  self->_startCharIndex = empty;
  self->_characterCount = 0;
  self->_startAnchoredCharIndex = empty;
  self->_anchoredCharCount = 0;
  self->_contentBottom = 0.0;
  self->_erasableContentBottom = 0.0;
  self->_layoutResultFlags = flags;
  self->_nextWidowPullsDownFromCharIndex = empty;
  TSWPLineFragmentArray::removeAllObjects(self->_lineFragmentArray.__ptr_);

  [(TSWPColumn *)self clearAdornments];
}

- (CGRect)boundsOfLineFragmentAtIndex:(unint64_t)index
{
  v3 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, index);
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)typographicBoundsOfLineFragmentAtIndex:(unint64_t)index
{
  v4 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, index);
  x = TSWPLineFragment::textRect(v4, 0);
  y = v6;
  width = v8;
  height = v10;
  if (*(v4 + 176))
  {
    TSWPLineFragment::labelRect(v4);
    v21.origin.x = v12;
    v21.origin.y = v13;
    v21.size.width = v14;
    v21.size.height = v15;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectUnion(v17, v21);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  [(TSWPColumn *)self transformFromWP];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  return CGRectApplyAffineTransform(v19, &v16);
}

- (CGRect)labelBoundsOfLineFragmentAtIndex:(unint64_t)index
{
  v3 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, index);

  TSWPLineFragment::labelRect(v3);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (_NSRange)rangeOfLineFragmentAtIndex:(unint64_t)index
{
  v3 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, index);
  v4 = v3[1];
  v5 = *v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (unint64_t)truncatedCharIndexForLineFragmentAtIndex:(unint64_t)index
{
  v3 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, index);

  return TSWPLineFragment::truncatedCharIndex(v3);
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)heightInfoOfLineFragmentAtIndex:(SEL)index
{
  result = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, a4);
  v6 = *&result[2].var0;
  *&retstr->var0 = *&result[1].var6;
  *&retstr->var2 = v6;
  v7 = *&result[2].var4;
  *&retstr->var4 = *&result[2].var2;
  *&retstr->var6 = v7;
  return result;
}

- (double)baselineOfLineFragmentAtCharIndex:(unint64_t)index
{
  ptr = self->_lineFragmentArray.__ptr_;
  v4 = *ptr;
  v5 = *(ptr + 1);
  result = 0.0;
  while (v4 != v5)
  {
    v7 = **v4;
    v9 = index >= v7;
    v8 = index - v7;
    v9 = !v9 || v8 >= (*v4)[1];
    if (!v9)
    {
      return *(*v4 + 4) + *(*v4 + 5);
    }

    v4 += 2;
  }

  return result;
}

- ($6D73A9620177E745173F4CF14EEA41ED)lineMetricsAtCharIndex:(SEL)index allowEndOfLine:(unint64_t)line
{
  v31 = *MEMORY[0x277D85DE8];
  *retstr = *TSWPEmptyLineMetrics;
  result = [(TSWPColumn *)self lineIndexForCharIndex:line eol:a5];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(TSWPColumn *)self lineFragmentAtIndex:result];
    v29 = 0;
    v10 = *(MEMORY[0x277CBF398] + 16);
    retstr->var0.origin = *MEMORY[0x277CBF398];
    retstr->var0.size = v10;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [(TSWPColumn *)self rectsForSelectionRange:*v9 selectionType:*(v9 + 1) forParagraphMode:0 includeRuby:0, 0, 0];
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      x = retstr->var0.origin.x;
      y = retstr->var0.origin.y;
      width = retstr->var0.size.width;
      height = retstr->var0.size.height;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v25 + 1) + 8 * i) CGRectValue];
          v34.origin.x = v20;
          v34.origin.y = v21;
          v34.size.width = v22;
          v34.size.height = v23;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v34);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
      retstr->var0.origin.x = x;
      retstr->var0.origin.y = y;
      retstr->var0.size.width = width;
      retstr->var0.size.height = height;
    }

    retstr->var1 = *(v9 + 4) + *(v9 + 5);
    *&retstr->var2 = *(v9 + 8);
    v24 = TSWPLineFragment::fontAtCharIndex(v9, line, &v29);
    retstr->var4 = CTFontGetXHeight(v24);
  }

  return result;
}

- (double)horizontalOffsetForCharIndex:(unint64_t)index lineFragmentIndex:(unint64_t)fragmentIndex bumpPastHyphen:(BOOL)hyphen allowPastLineBounds:(BOOL)bounds
{
  v9 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, fragmentIndex);

  return TSWPLineFragment::wpOffsetForCharIndex(v9, index, hyphen, bounds, 0);
}

- (const)lineFragmentClosestToPoint:(CGPoint)point knobTag:(unint64_t)tag
{
  y = point.y;
  x = point.x;
  if (self)
  {
    [(TSWPColumn *)self transformToWP];
    v8 = v22;
    v9 = v23;
    v10 = v24;
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
  }

  lineFragmentArray = [(TSWPColumn *)self lineFragmentArray];
  v12 = TSWPLineFragmentArray::count(*lineFragmentArray);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  v15 = 0;
  v16 = v10 + y * v9 + v8 * x;
  v17 = INFINITY;
  do
  {
    v18 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, v15);
    TSDPositionOfKnobOnRectangle(tag, v18[6], v18[7], v18[8], v18[9]);
    v20 = vabdd_f64(v16, v19);
    if (v20 < v17)
    {
      v14 = v18;
      v17 = v20;
    }

    ++v15;
  }

  while (v13 != v15);
  return v14;
}

- (const)lineFragmentForCharIndex:(unint64_t)index knobTag:(unint64_t)tag selectionType:(int)type
{
  v7 = [(TSWPStorage *)self->_storage selectionRangeMaxForCharIndex:?];
  v8 = v7;
  v9 = 0;
  if (index && v7 == index)
  {
    v9 = IsParagraphBreakingCharacter([(TSWPStorage *)self->_storage characterAtIndex:index - 1]);
  }

  lineFragmentArray = [(TSWPColumn *)self lineFragmentArray];
  v11 = TSWPLineFragmentArray::count(*lineFragmentArray);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  for (i = 0; ; ++i)
  {
    v14 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, i);
    v15 = *(v14 + 24);
    if ((v15 & 0x40) == 0)
    {
      v16 = v14;
      v18 = *v14;
      v17 = *(v14 + 8);
      v19 = index - *v14 < v17 && index >= *v14;
      v20 = index == v18 && v8 == index;
      if (!v20 && !v19)
      {
        v23 = 0;
      }

      else
      {
        v22 = (v15 >> 9) & 1;
        if (index != v18)
        {
          v22 = 1;
        }

        if (tag != 11)
        {
          v22 = 1;
        }

        v23 = (v15 & 1) != 0 ? v22 : 1;
      }

      if (type == 7)
      {
        v24 = (tag == 11) ^ ((*(v14 + 24) & 0x1000u) >> 12);
        v18 = TSWPLineFragment::leftMostCharIndex(v14);
        v25 = TSWPLineFragment::rightMostCharIndex(v16);
      }

      else
      {
        v25 = v17 + v18;
        v24 = tag == 11;
      }

      LOBYTE(v26) = 0;
      v27 = v25 == index ? v24 : 1;
      v28 = v27 ^ 1;
      v29 = (v25 != index) | (v8 != index || (v24 & 1) == 0) | v9 & 1 ? v28 : v12 == 1;
      if (v24 && v18 == index)
      {
        v26 = (*(v16 + 25) >> 1) & 1;
      }

      if ((v23 | v29) & 1) != 0 || (v26)
      {
        break;
      }
    }

    if (!--v12)
    {
      return 0;
    }
  }

  return v16;
}

- (unint64_t)lineIndexForCharIndex:(unint64_t)index eol:(BOOL)eol
{
  eolCopy = eol;
  v7 = [(TSWPStorage *)self->_storage selectionRangeMaxForCharIndex:?];
  if (index)
  {
    v8 = [(TSWPStorage *)self->_storage characterAtIndex:index - 1];
    v9 = v8;
    v10 = IsParagraphBreakingCharacter(v8);
    if (v9 == 8232)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v7 == index)
  {
    v12 = 0;
  }

  else
  {
    v12 = [-[TSWPStorage attachmentAtCharIndex:](self->_storage attachmentAtCharIndex:{index), "isPartitioned"}];
  }

  lineFragmentArray = [(TSWPColumn *)self lineFragmentArray];
  v14 = TSWPLineFragmentArray::count(*lineFragmentArray);
  if (!v14)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v14;
  v16 = 0;
  while (1)
  {
    v17 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, v16);
    v18 = *(v17 + 8);
    v19 = index == *v17 && v7 == index;
    v20 = index - *v17 < v18 && index >= *v17;
    v21 = !(v12 & (index == *v17));
    v22 = v18 + *v17;
    v23 = v22 == index && !(v12 & (index == *v17) & ((*(v17 + 24) & 0x200u) >> 9));
    v24 = v22;
    if (v11 | v21)
    {
      v25 = v11 & v12 & (index == *v17) & ((*(v17 + 24) & 0x200u) >> 9);
    }

    else
    {
      v25 = 0;
    }

    if (v11 | v21)
    {
      v23 = 0;
    }

    if (v24 == index && (eolCopy && v25 & 1 | ((v12 & (index == *v17) & ((*(v17 + 24) & 0x200u) >> 9)) == 0) || v7 == index))
    {
      v26 = (*(v17 + 24) & 0x100) != 0 ? 0 : v11 ^ 1;
    }

    else
    {
      v26 = 0;
    }

    if (((v20 & (v21 | ((*(v17 + 24) & 0x200u) >> 9)) | v19 | v23 | v25) & 1) != 0 || v26)
    {
      break;
    }

    if (v15 == ++v16)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v16;
}

- (CGRect)caretRectForSelection:(id)selection
{
  if (!selection)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn caretRectForSelection:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 1129, @"invalid nil value for '%s'", "selection"}];
  }

  if (([selection isInsertionPoint] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn caretRectForSelection:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 1130, @"Caret rect for ranged selection is not meaningful"}];
  }

  v9 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
  v11 = *(MEMORY[0x277CBF398] + 16);
  v12 = *(MEMORY[0x277CBF398] + 24);
  range = [selection range];
  selectionCopy = selection;
  caretAffinity = [selection caretAffinity];
  startCharIndex = self->_startCharIndex;
  characterCount = self->_characterCount;
  v17 = [(TSWPStorage *)self->_storage selectionRangeForCharIndex:range];
  v19 = v17 + v18;
  if (range < v17 || range > v19)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn caretRectForSelection:]"];
    [currentHandler3 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 1139, @"invalid selection"}];
  }

  v23 = 0;
  if (range > v17 && range <= v19)
  {
    v24 = [(TSWPStorage *)self->_storage characterAtIndex:range - 1];
    v25 = v24;
    v26 = IsParagraphBreakingCharacter(v24);
    if (v25 == 8232)
    {
      v23 = 1;
    }

    else
    {
      v23 = v26;
    }
  }

  if (range == v19)
  {
    v27 = 0;
  }

  else
  {
    v27 = [-[TSWPStorage attachmentAtCharIndex:](self->_storage attachmentAtCharIndex:{range), "isPartitioned"}];
  }

  if (range >= startCharIndex && range - startCharIndex < characterCount && (range <= startCharIndex ? (v28 = range == v17) : (v28 = 1), !v28 ? (v29 = 0) : (v29 = 1), v29 & 1 | (((caretAffinity == 1) | v27 & 1) == 0) | v23 & 1) || (!v23 ? (v30 = (caretAffinity == 1) | v27) : (v30 = v27), range == characterCount + startCharIndex && v30 & 1 | (range == v19)))
  {
    v31 = [(TSWPColumn *)self lineIndexForCharIndex:range eol:(caretAffinity == 1) | (v27 & 1)];
    if (v31 < [(TSWPColumn *)self countLines])
    {
      v32 = [(TSWPColumn *)self lineFragmentAtIndex:v31];
      if (!v32)
      {
        [objc_msgSend(MEMORY[0x277D6C290] "currentHandler")];
      }

      v50 = 0;
      v33 = TSWPLineFragment::fontAtCharIndex(v32, range - ((range > v17) & (v23 ^ 1u)), &v50);
      v34 = [(TSWPStorage *)self->_storage characterStyleAtCharIndex:range left:v23 ^ 1u effectiveRange:0];
      v35 = [(TSWPStyleProvider *)[(TSWPColumn *)self styleProvider] paragraphStyleAtParIndex:[(TSWPStorage *)self->_storage paragraphIndexAtCharIndex:range] effectiveRange:0];
      if (v33)
      {
        FontForStyle = 0;
      }

      else
      {
        FontForStyle = TSWPFastCreateFontForStyle(v34, v35, self->_scaleTextPercent);
        v33 = FontForStyle;
        if (!FontForStyle)
        {
          goto LABEL_50;
        }
      }

      v49 = 0u;
      memset(&v48, 0, sizeof(v48));
      TSWPFontHeightInfoForFont(v33, &v48);
      v37 = TSWPResolvePropertyForStyles(v34, v35, 33, 0);
      if (v37)
      {
        [v37 doubleValue];
        v39 = v38;
      }

      else
      {
        v39 = 0.0;
      }

      TSWPLineFragment::wpOffsetForInsertionPoint(v32, [selectionCopy insertionChar], objc_msgSend(selectionCopy, "leadingEdge"), objc_msgSend(selectionCopy, "isVisual"), 0);
      v9 = v40;
      v41 = *(v32 + 4) + *(v32 + 5) - v39;
      v46 = 0.0;
      v47 = 0.0;
      v44 = 0.0;
      v45 = 0.0;
      v43 = 0.0;
      if (TSWPLineFragment::isInsideTateChuYokoLineAtCharIndex(v32, range, &v47, &v46, &v45, &v44, &v43))
      {
        v10 = floor(v41 + v46 * 0.5 - v47);
        v11 = v45 + v44 + v43;
        v9 = v9 - v11;
        v12 = 0.0;
        if (!FontForStyle)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if ([(TSWPColumn *)self textIsVertical]&& !v50)
      {
        v48.c = (v48.c + v48.d) * 0.5;
        v48.d = v48.c;
      }

      v10 = floor(v41 - v48.c - v48.tx);
      v12 = ceil(v41 + v48.d) - v10;
      v11 = 0.0;
      if (FontForStyle)
      {
LABEL_49:
        CFRelease(FontForStyle);
      }
    }
  }

LABEL_50:
  [(TSWPColumn *)self transformFromWP];
  v51.origin.x = v9;
  v51.origin.y = v10;
  v51.size.width = v11;
  v51.size.height = v12;
  return CGRectApplyAffineTransform(v51, &v48);
}

- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label
{
  length = range.length;
  location = range.location;
  v89[2] = *MEMORY[0x277D85DE8];
  *range2_8 = *MEMORY[0x277CBF398];
  *&range2_8[8] = *(MEMORY[0x277CBF398] + 8);
  *&range2_8[16] = *(MEMORY[0x277CBF398] + 16);
  *&range2_8[24] = *(MEMORY[0x277CBF398] + 24);
  [(TSWPColumn *)self range];
  range2 = location;
  v7 = length;
  v8 = TSUIntersectionRangeWithEdge();
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v11 = *ptr;
    v81 = *(ptr + 1);
    if (*ptr != v81)
    {
      v78 = v8 + v9;
      v79 = location + length;
      do
      {
        v82 = v11;
        v12 = *v11;
        v13 = **v11;
        v14 = (*v11)[1];
        v15 = TSUIntersectionRangeWithEdge();
        v17 = v15;
        v18 = v16;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL || (!v14 ? (v19 = v13 == v78) : (v19 = 0), v19))
        {
          if (v15 + v16 >= v79)
          {
            v20 = v79;
          }

          else
          {
            v20 = v15 + v16;
          }

          if (v15 < v20)
          {
            v21 = v15;
            do
            {
              v88 = 0x1000000;
              v89[0] = 0;
              *(v89 + 7) = 0;
              [(TSWPStorage *)self->_storage attributesAtCharIndex:v21 attributesOfInterest:&v88 attributesTable:&v87 effectiveRange:&v86];
              v90.location = v17;
              v90.length = v18;
              v91 = NSIntersectionRange(v90, v86);
              v92.location = range2;
              v92.length = v7;
              v22 = NSIntersectionRange(v91, v92);
              if (v22.length)
              {
                v23 = TSWPLineFragment::glyphRectForLineRange(v12, v22, self, 1);
                v25 = v24;
                v27 = v26;
                v29 = v28;
                TSWPLineFragment::emphasisMarkRectForLineRange(v12, v22);
                x = v93.origin.x;
                y = v93.origin.y;
                width = v93.size.width;
                height = v93.size.height;
                if (!CGRectIsEmpty(v93))
                {
                  v94.origin.x = v23;
                  v94.origin.y = v25;
                  v94.size.width = v27;
                  v94.size.height = v29;
                  v106.origin.x = x;
                  v106.origin.y = y;
                  v106.size.width = width;
                  v106.size.height = height;
                  v95 = CGRectUnion(v94, v106);
                  v23 = v95.origin.x;
                  v25 = v95.origin.y;
                  v27 = v95.size.width;
                  v29 = v95.size.height;
                }

                v96.origin.x = v23;
                v96.origin.y = v25;
                v96.size.width = v27;
                v96.size.height = v29;
                if (!CGRectIsEmpty(v96))
                {
                  v97.origin.x = v23;
                  v97.origin.y = v25;
                  v97.size.width = v27;
                  v97.size.height = v29;
                  v98 = CGRectIntegral(v97);
                  v23 = v98.origin.x;
                  v25 = v98.origin.y;
                  v34 = v98.size.width;
                  v29 = v98.size.height;
                  MaxX = CGRectGetMaxX(v98);
                  if (MaxX == rint(CGRectGetMaxX(self->_frameBounds)) + -1.0)
                  {
                    v27 = v34 + 1.0;
                  }

                  else
                  {
                    v27 = v34;
                  }
                }

                v36 = [(TSWPStorage *)self->_storage valueForProperty:22 atCharIndex:v22.location effectiveRange:0];
                v37 = v36;
                if (!v36 || ![v36 unsignedIntValue])
                {
                  v37 = [(TSWPStorage *)self->_storage valueForProperty:26 atCharIndex:v22.location effectiveRange:0];
                }

                if ([v37 unsignedIntValue])
                {
                  TSWPLineFragment::rectsForLineRange(v12, v22, 0, 1, 1, 0, __p);
                  TSWPUnionRects(__p);
                  v39 = v38;
                  v41 = v40;
                  v43 = v42;
                  v45 = v44;
                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }

                  v99.origin.x = v23;
                  v99.origin.y = v25;
                  v99.size.width = v27;
                  v99.size.height = v29;
                  v107.origin.x = v39;
                  v107.origin.y = v41;
                  v107.size.width = v43;
                  v107.size.height = v45;
                  v100 = CGRectUnion(v99, v107);
                  v23 = v100.origin.x;
                  v25 = v100.origin.y;
                  v27 = v100.size.width;
                  v29 = v100.size.height;
                }

                if ((*(v12 + 24) & 0x20) != 0)
                {
                  v46 = [(TSWPStorage *)self->_storage valueForProperty:40 atCharIndex:v22.location effectiveRange:0];
                  v47 = v46;
                  if (v46)
                  {
                    if ([v46 isEnabled])
                    {
                      [v47 shadowBoundsForRect:{v23, v25, v27, v29}];
                      v23 = v48;
                      v25 = v49;
                      v27 = v50;
                      v29 = v51;
                    }
                  }
                }

                v101.origin.x = v23;
                v101.origin.y = v25;
                v101.size.width = v27;
                v101.size.height = v29;
                *range2_8 = CGRectUnion(v101, *range2_8);
              }

              if (v21 + 1 > v86.length + v86.location)
              {
                ++v21;
              }

              else
              {
                v21 = v86.length + v86.location;
              }
            }

            while (v21 < v20);
          }

          if ((*(v12 + 25) & 0x10) != 0)
          {
            TSWPLineFragment::rightMostCharIndex(v12);
          }

          else
          {
            TSWPLineFragment::leftMostCharIndex(v12);
          }

          v52 = v82;
          if (!label || !*(v12 + 22))
          {
            goto LABEL_50;
          }

          if (TSUIntersectionRangeWithEdge() != 0x7FFFFFFFFFFFFFFFLL)
          {
            TSWPLineFragment::labelRect(v12);
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v61 = v60;
            v62 = *(v12 + 22);
            v63 = *(v62 + 16);
            if (v63)
            {
              FakeContext = TSWPLineFragment::GetFakeContext(v53);
              ImageBounds = CTLineGetImageBounds(v63, FakeContext);
              v65 = ImageBounds.origin.y;
              v66 = ImageBounds.size.width;
              v67 = ImageBounds.size.height;
              v108.origin.x = TSWPLineFragment::labelTextPosition(v12) + ImageBounds.origin.x;
              v108.origin.y = v68 - v65 - v67;
              v103.origin.x = v55;
              v103.origin.y = v57;
              v103.size.width = v59;
              v103.size.height = v61;
              v108.size.width = v66;
              v108.size.height = v67;
              v104 = CGRectUnion(v103, v108);
              v55 = v104.origin.x;
              v57 = v104.origin.y;
              v59 = v104.size.width;
              v61 = v104.size.height;
            }

            v69 = *(v62 + 32);
            if ([v69 isEnabled])
            {
              [v69 shadowBoundsForRect:{v55, v57, v59, v61}];
              v55 = v70;
              v57 = v71;
              v59 = v72;
              v61 = v73;
            }

            v109.origin.x = v55;
            v109.origin.y = v57;
            v109.size.width = v59;
            v109.size.height = v61;
            *range2_8 = CGRectUnion(*range2_8, v109);
          }
        }

        v52 = v82;
LABEL_50:
        v11 = v52 + 2;
      }

      while (v11 != v81);
    }

    if (!CGRectIsNull(*range2_8))
    {
      if (self)
      {
        [(TSWPColumn *)self transformFromWP];
      }

      else
      {
        memset(&v87, 0, sizeof(v87));
      }

      *range2_8 = CGRectApplyAffineTransform(*range2_8, &v87);
    }
  }

  v74 = *range2_8;
  v75 = *&range2_8[8];
  v76 = *&range2_8[16];
  v77 = *&range2_8[24];
  result.size.height = v77;
  result.size.width = v76;
  result.origin.y = v75;
  result.origin.x = v74;
  return result;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  ptr = self->_lineFragmentArray.__ptr_;
  v9 = *ptr;
  v10 = *(ptr + 1);
  while (v9 != v10)
  {
    v11 = **v9;
    v13 = index >= v11;
    v12 = index - v11;
    v13 = !v13 || v12 >= *(*v9 + 1);
    if (!v13)
    {
      v4 = TSWPLineFragment::glyphRectForRubyField(*v9, index, range);
      break;
    }

    v9 += 2;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index
{
  ptr = self->_lineFragmentArray.__ptr_;
  v4 = *ptr;
  v5 = *(ptr + 1);
  while (v4 != v5)
  {
    v6 = *v4;
    v7 = **v4;
    v9 = index >= v7;
    v8 = index - v7;
    v9 = !v9 || v8 >= (*v4)[1];
    if (!v9)
    {
      for (i = v6[28]; i != v6[29]; i += 48)
      {
        if (*(i + 24) == index)
        {
          return CTLineGetGlyphCount(*i);
        }
      }

      return 0;
    }

    v4 += 2;
  }

  return 0;
}

- (CGRect)columnRectForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v30 = *&self->_startCharIndex;
  v28.location = location;
  v28.length = length;
  if (NSIntersectionRange(v28, v30).length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v11 = *ptr;
    v12 = *(ptr + 1);
    while (v11 != v12)
    {
      v13 = *v11;
      v29.location = location;
      v29.length = length;
      v14 = NSIntersectionRange(v29, **v11);
      if (v14.length)
      {
        TSWPLineFragment::rectsForLineRange(v13, v14, 0, 1, 1, 0, __p);
        TSWPUnionRects(__p);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v34.origin.x = v16;
        v34.origin.y = v18;
        v34.size.width = v20;
        v34.size.height = v22;
        v32 = CGRectUnion(v31, v34);
        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;
      }

      v11 += 2;
    }
  }

  v23 = self->_frameBounds.origin.x;
  v24 = self->_frameBounds.size.width;
  v25 = y;
  v26 = height;
  result.size.height = v26;
  result.size.width = v24;
  result.origin.y = v25;
  result.origin.x = v23;
  return result;
}

- (double)topOfLineAtCharIndex:(unint64_t)index
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  range = [(TSWPColumn *)self range];
  if (index < range || index - range >= v10)
  {
    if (range + v10 == index)
    {
      Object = TSWPLineFragmentArray::lastObject(self->_lineFragmentArray.__ptr_);
      if (Object)
      {
        v24.location = index;
        v24.length = 0;
        TSWPLineFragment::rectsForLineRange(Object, v24, 0, 1, 1, 0, __p);
        TSWPUnionRects(__p);
        v5 = v16;
        v6 = v17;
        v7 = v18;
        v8 = v19;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn topOfLineAtCharIndex:]"];
        [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 1448, @"should have a line fragment, even in an empty column"}];
      }
    }
  }

  else
  {
    [(TSWPColumn *)self columnRectForRange:index, 1];
    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
  }

  v25.origin.x = v5;
  v25.origin.y = v6;
  v25.size.width = v7;
  v25.size.height = v8;
  return CGRectGetMinY(v25);
}

- (CGRect)typographicBounds
{
  v4 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  ptr = self->_lineFragmentArray.__ptr_;
  v8 = *ptr;
  v9 = *(ptr + 1);
  if (*ptr == v9)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = *v8;
    x = TSWPLineFragment::textRect(*v8, 0);
    y = v12;
    width = v14;
    height = v16;
    if (*(v10 + 22))
    {
      TSWPLineFragment::labelRect(v10);
      v29.origin.x = v18;
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
    v30.origin.x = v4;
    v30.origin.y = v3;
    v30.size.width = v6;
    v30.size.height = v5;
    v26 = CGRectUnion(v25, v30);
    v4 = v26.origin.x;
    v3 = v26.origin.y;
    v6 = v26.size.width;
    v5 = v26.size.height;
    v8 += 2;
  }

  while (v8 != v9);
  if (self)
  {
LABEL_6:
    [(TSWPColumn *)self transformFromWP];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  v27.origin.x = v4;
  v27.origin.y = v3;
  v27.size.width = v6;
  v27.size.height = v5;
  return CGRectApplyAffineTransform(v27, &v22);
}

- (CGRect)typographicBoundsForCell
{
  v4 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  ptr = self->_lineFragmentArray.__ptr_;
  v8 = *ptr;
  v9 = *(ptr + 1);
  if (*ptr == v9)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = *v8;
    x = TSWPLineFragment::textRect(*v8, 0);
    y = v12;
    width = v14;
    height = v16;
    if (*(v10 + 22))
    {
      TSWPLineFragment::labelRect(v10);
      v29.origin.x = v18;
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
    v30.origin.x = v4;
    v30.origin.y = v3;
    v30.size.width = v6;
    v30.size.height = v5;
    v26 = CGRectUnion(v25, v30);
    v4 = v26.origin.x;
    v3 = v26.origin.y;
    v6 = v26.size.width;
    v5 = v26.size.height;
    v8 += 2;
  }

  while (v8 != v9);
  if (self)
  {
LABEL_6:
    [(TSWPColumn *)self transformFromWP];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
  }

  v27.origin.x = v4;
  v27.origin.y = v3;
  v27.size.width = v6;
  v27.size.height = v5;
  return CGRectApplyAffineTransform(v27, &v22);
}

- (id)lineSelectionsForSelection:(id)selection
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  startCharIndex = self->_startCharIndex;
  characterCount = self->_characterCount;
  v27.location = [selection range];
  v28.location = startCharIndex;
  v28.length = characterCount;
  v8 = NSIntersectionRange(v27, v28);
  if (v8.length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v10 = *ptr;
    v11 = *(ptr + 1);
    if (*ptr != v11)
    {
      v12 = v8.length + v8.location - 1;
      while (1)
      {
        while (1)
        {
          location = (*v10)->location;
          length = (*v10)->length;
          if (v8.location < location || v8.location - location >= length)
          {
            break;
          }

          v18 = [TSWPSelection alloc];
          v29.location = location;
          v29.length = length;
          v19 = NSIntersectionRange(v8, v29);
          v20 = [(TSWPSelection *)v18 initWithRange:v19.location, v19.length];
          [v5 addObject:v20];

          v21 = v12 - location < length && v12 >= location;
          v10 += 2;
          if (v21 || v10 == v11)
          {
            return v5;
          }
        }

        if (v12 >= location && v12 - location < length)
        {
          break;
        }

        if (NSIntersectionRange(v8, **v10).length)
        {
          v17 = [[TSWPSelection alloc] initWithRange:location, length];
          [v5 addObject:v17];
        }

        v10 += 2;
        if (v10 == v11)
        {
          return v5;
        }
      }

      v23 = [TSWPSelection alloc];
      v30.location = location;
      v30.length = length;
      v24 = NSIntersectionRange(v8, v30);
      v25 = [(TSWPSelection *)v23 initWithRange:v24.location, v24.length];
      [v5 addObject:v25];
    }
  }

  return v5;
}

- (CGRect)firstRectForSelection:(id)selection includeSpaceAfter:(BOOL)after includeSpaceBefore:(BOOL)before includeLeading:(BOOL)leading
{
  leadingCopy = leading;
  beforeCopy = before;
  afterCopy = after;
  v11 = *MEMORY[0x277CBF398];
  v12 = *(MEMORY[0x277CBF398] + 8);
  v13 = *(MEMORY[0x277CBF398] + 16);
  v14 = *(MEMORY[0x277CBF398] + 24);
  range = [selection range];
  LOWORD(v26) = 0;
  v17 = -[TSWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:", range, v16, [selection type], afterCopy, beforeCopy, leadingCopy, v26, 0, 0);
  if ([v17 count])
  {
    [objc_msgSend(v17 "firstObject")];
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v14 = v21;
  }

  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)rectsForSelection:(id)selection
{
  if (([selection isValid] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn rectsForSelection:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 1565, @"invalid text selection"}];
  }

  range = [selection range];
  v9 = v8;
  type = [selection type];

  return [(TSWPColumn *)self rectsForSelectionRange:range selectionType:v9, type];
}

- (const)pColumnEndingPartitionedLineFragmentInSelectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  result = [(TSWPColumn *)self countLines];
  if (result)
  {
    result = [(TSWPColumn *)self lineFragmentAtIndex:result - 1];
    if ((*(result + 6) & 0x101) == 1)
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

- (id)pMutableRectsForSelectionRange:(_NSRange)range selectionType:(int)type includeSpaceAfter:(BOOL)after includeSpaceBefore:(BOOL)before includeLeading:(BOOL)leading forParagraphMode:(BOOL)mode includeRuby:(BOOL)ruby inranges:(id)self0 outranges:(id *)self1
{
  beforeCopy = before;
  afterCopy = after;
  range1 = range.length;
  location = range.location;
  v123 = *MEMORY[0x277D85DE8];
  v12 = 0x277CBE000uLL;
  v107 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if (outranges)
  {
    v106 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    *outranges = v106;
  }

  else
  {
    v106 = 0;
  }

  modeCopy3 = mode;
  v124.location = location;
  v124.length = range1;
  v15 = NSIntersectionRange(v124, *&self->_startCharIndex);
  if (v15.length)
  {
    obj = inranges;
    if (inranges)
    {
      typeCopy = type;
      if (type == 7)
      {
        typeCopy = 0;
      }

      type = typeCopy;
    }

    else
    {
      obj = [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", location, range1)}];
    }

    ptr = self->_lineFragmentArray.__ptr_;
    v18 = *ptr;
    v101 = *(ptr + 1);
    if (*ptr != v101)
    {
      v99 = 0;
      v108 = range1 + location - 1;
      if (v106)
      {
        v19 = &v117;
      }

      else
      {
        v19 = 0;
      }

      selfCopy = self;
      v98 = v15.length + v15.location - 1;
      v20 = -1.0;
      v100 = 0.0;
      do
      {
        while (1)
        {
          v21 = *v18;
          v104 = **v18;
          v102 = v18;
          v103 = (*v18)[1];
          if (*(*v18 + 4) + *(*v18 + 5) != v20)
          {
            v99 = [v107 count];
            MaxY = CGRectGetMaxY(*(v21 + 6));
            v20 = *(v21 + 4) + *(v21 + 5);
            v23 = MaxY - (v20 + *(v21 + 17));
            if (*(v21 + 19) < v23)
            {
              v23 = *(v21 + 19);
            }

            v100 = fmax(v23, 0.0);
          }

          v125.length = v103;
          v125.location = v104;
          v24 = NSIntersectionRange(v15, v125);
          if (v24.length)
          {
            break;
          }

          v18 = v102 + 2;
          if (v102 + 2 == v101)
          {
            goto LABEL_77;
          }
        }

        if (modeCopy3)
        {
          [v107 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", *(v21 + 6), *(v21 + 7), *(v21 + 8), *(v21 + 9))}];
          if (v106)
          {
            [v106 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", *v21, v21[1])}];
          }
        }

        else
        {
          array = [*(v12 + 2840) array];
          memset(&__p, 0, 24);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v26 = [obj countByEnumeratingWithState:&v118 objects:v122 count:16];
          if (v26)
          {
            v27 = *v119;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v119 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v118 + 1) + 8 * i);
                v117 = 0;
                v126.location = [v29 rangeValue];
                v126.length = v30;
                v31 = NSIntersectionRange(v24, v126);
                v32.length = v31.length;
                if (v31.length)
                {
                  if (type != 7 || (location >= v31.location ? (v33 = location - v31.location >= v31.length) : (v33 = 1), v33 && (v108 >= v31.location ? (v34 = v108 - v31.location >= v31.length) : (v34 = 1), v34)))
                  {
                    v32.location = v31.location;
                    TSWPLineFragment::rectsForLineRange(v21, v32, v19, afterCopy, beforeCopy, ruby, v116);
                  }

                  else
                  {
                    v32.location = v31.location;
                    TSWPLineFragment::rectsForVisualRange(v21, v32, location, v108, afterCopy, beforeCopy, ruby, v116, v19);
                  }

                  v114 = v116[1];
                  v35 = v116[0];
                  [array addObjectsFromArray:v117];
                  std::vector<CGRect>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CGRect*>,std::__wrap_iter<CGRect*>>(&__p, *&__p.b, v35, v114, (v114 - v35) >> 5);
                  if (v35)
                  {
                    operator delete(v35);
                  }
                }
              }

              v26 = [obj countByEnumeratingWithState:&v118 objects:v122 count:16];
            }

            while (v26);
          }

          v36 = [v107 count];
          if (v106)
          {
            a = __p.a;
            b = __p.b;
            if ([array count] != (*&b - *&a) >> 5)
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:]"];
              v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"];
              [currentHandler handleFailureInFunction:v40 file:v41 lineNumber:1689 description:{@"Mismatch between rect & range count: %lu vs. %lu", v36, (*&__p.b - *&__p.a) >> 5}];
            }
          }

          v42 = __p.a;
          v43 = __p.b;
          if (*&__p.a != *&__p.b)
          {
            v44 = 0;
            do
            {
              v45 = **&v42;
              v46 = *(*&v42 + 8);
              v48 = *(*&v42 + 16);
              v47 = *(*&v42 + 24);
              if (leading)
              {
                v49 = *(v21 + 4);
                v50 = *(v21 + 5);
                v51 = *(v21 + 17);
                v52 = *(v21 + 19);
                v53 = **&v42;
                v54 = *(*&v42 + 8);
                v55 = *(*&v42 + 16);
                v56 = CGRectGetMaxY(*(&v47 - 3));
                if (v56 < v49 + v50 + v51 + v52)
                {
                  v56 = v49 + v50 + v51 + v52;
                }

                v47 = v56 - v46;
              }

              [v107 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v45, v46, v48, v47)}];
              if (v106)
              {
                v58 = __p.a;
                v57 = __p.b;
                if ([array count] == (*&v57 - *&v58) >> 5)
                {
                  [v106 addObject:{objc_msgSend(array, "objectAtIndexedSubscript:", v44++)}];
                }
              }

              *&v42 += 32;
            }

            while (*&v42 != *&v43);
          }

          if (type == 2)
          {
            TSWPLineFragment::labelRect(v21);
            self = selfCopy;
            modeCopy3 = mode;
            v12 = 0x277CBE000;
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;
          }

          else
          {
            v60 = *MEMORY[0x277CBF398];
            v62 = *(MEMORY[0x277CBF398] + 8);
            v64 = *(MEMORY[0x277CBF398] + 16);
            v66 = *(MEMORY[0x277CBF398] + 24);
            self = selfCopy;
            modeCopy3 = mode;
            v12 = 0x277CBE000;
          }

          v127.origin.x = v60;
          v127.origin.y = v62;
          v127.size.width = v64;
          v127.size.height = v66;
          if (!CGRectIsEmpty(v127) && v36 < [v107 count])
          {
            [objc_msgSend(v107 objectAtIndexedSubscript:{v36), "CGRectValue"}];
            y = v128.origin.y;
            height = v128.size.height;
            v132.origin.x = v60;
            v132.origin.y = v62;
            v132.size.width = v64;
            v132.size.height = v66;
            v129 = CGRectUnion(v128, v132);
            [v107 setObject:objc_msgSend(MEMORY[0x277CCAE60] atIndexedSubscript:{"valueWithCGRect:", v129.origin.x, y, v129.size.width, height), v36}];
          }

          if (*&__p.a)
          {
            __p.b = __p.a;
            operator delete(*&__p.a);
          }
        }

        v69 = v98 - v104 < v103 && v98 >= v104;
        v18 = v102 + 2;
      }

      while (!v69 && v18 != v101);
LABEL_77:
      v14 = v100;
      if (v100 > 0.0 && afterCopy)
      {
        v71 = [v107 count];
        for (j = v99; j < v71; j = v73 + 1)
        {
          v73 = j;
          [objc_msgSend(v107 "objectAtIndexedSubscript:"CGRectValue"")];
          [v107 setObject:objc_msgSend(MEMORY[0x277CCAE60] atIndexedSubscript:{"valueWithCGRect:"), v73}];
          v71 = [v107 count];
        }
      }
    }
  }

  v74 = [(TSWPColumn *)self pColumnEndingPartitionedLineFragmentInSelectionRange:location, range1, v14];
  v75 = v74;
  if (v74)
  {
    v76 = *(v74 + 7);
    v77 = *(v74 + 9);
    if (modeCopy3)
    {
      v78 = *(v74 + 6);
      v79 = *(v74 + 8);
    }

    else
    {
      v80 = *(v74 + 14);
      v81 = *(v74 + 17) + *(v74 + 16) + v80 + *(v74 + 18);
      if (afterCopy)
      {
        v81 = *(v74 + 9);
      }

      v82 = v76 + v80;
      v83 = v81 - v80;
      if (beforeCopy)
      {
        v77 = v81;
      }

      else
      {
        v76 = v82;
        v77 = v83;
      }

      v84 = *v74;
      v78 = TSWPLineFragment::wpOffsetForCharIndex(v74, *v74, 1, 1, 0);
      v79 = TSWPLineFragment::wpOffsetForCharIndex(v75, v84 + 1, 1, 1, 0) - v78;
    }

    [v107 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v78, v76, v79, v77)}];
    if (v106)
    {
      [v106 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", *v75, *(v75 + 1))}];
    }
  }

  if ([(TSWPColumn *)self textIsVertical])
  {
    v85 = [v107 count];
    if (v85)
    {
      for (k = 0; k != v85; ++k)
      {
        [objc_msgSend(v107 objectAtIndexedSubscript:{k), "CGRectValue"}];
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;
        if (self)
        {
          [(TSWPColumn *)self transformFromWP];
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        v130.origin.x = v88;
        v130.origin.y = v90;
        v130.size.width = v92;
        v130.size.height = v94;
        v131 = CGRectApplyAffineTransform(v130, &__p);
        [v107 setObject:objc_msgSend(MEMORY[0x277CCAE60] atIndexedSubscript:{"valueWithCGRect:", v131.origin.x, v131.origin.y, v131.size.width, v131.size.height), k}];
      }
    }
  }

  return v107;
}

- (id)rectsForSelectionRanges:(id)ranges selectionType:(int)type
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D6C268];
  v7 = *MEMORY[0x277D6C268];
  v8 = *(MEMORY[0x277D6C268] + 8);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [ranges countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(ranges);
        }

        v14 = *v6;
        v13 = v6[1];
        location = [*(*(&v23 + 1) + 8 * v12) rangeValue];
        v17.location = location;
        v17.length = length;
        if (v7 != v14 || v8 != v13)
        {
          v29.location = v7;
          v29.length = v8;
          v19 = NSUnionRange(v29, v17);
          length = v19.length;
          location = v19.location;
        }

        v7 = location;
        v8 = length;
        ++v12;
      }

      while (v10 != v12);
      v10 = [ranges countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  LOWORD(v21) = 0;
  return [(TSWPColumn *)self pMutableRectsForSelectionRange:v7 selectionType:v8 includeSpaceAfter:type includeSpaceBefore:1 includeLeading:1 forParagraphMode:0 includeRuby:v21 inranges:ranges outranges:0];
}

- (id)rectsForSelectionRange:(_NSRange)range selectionType:(int)type forParagraphMode:(BOOL)mode includeRuby:(BOOL)ruby
{
  BYTE1(v7) = ruby;
  LOBYTE(v7) = mode;
  return [(TSWPColumn *)self pMutableRectsForSelectionRange:range.location selectionType:range.length includeSpaceAfter:*&type includeSpaceBefore:1 includeLeading:1 forParagraphMode:0 includeRuby:v7 inranges:0 outranges:0];
}

- (id)rectsForSelection:(id)selection ranges:(id *)ranges
{
  range = [selection range];
  LOWORD(v10) = 0;
  return -[TSWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:", range, v8, [selection type], 1, 1, 0, v10, 0, ranges);
}

- (CGRect)erasableRectForSelectionRange:(_NSRange)range
{
  v18.length = range.length;
  location = range.location;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v19 = *&self->_startCharIndex;
  v18.location = location;
  v9 = NSIntersectionRange(v18, v19);
  if (v9.length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v11 = *ptr;
    v12 = *(ptr + 1);
    if (*ptr != v12)
    {
      do
      {
        v13 = *v11;
        if (NSIntersectionRange(v9, **v11).length)
        {
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = width;
          v22.size.height = height;
          v20 = CGRectUnion(*&v13[5].location, v22);
          x = v20.origin.x;
          y = v20.origin.y;
          width = v20.size.width;
          height = v20.size.height;
        }

        v11 += 2;
      }

      while (v11 != v12);
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)drawableIntersectionRectsForSelection:(id)selection inTarget:(id)target
{
  range = [selection range];
  LOWORD(v51) = 0;
  v9 = -[TSWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:inranges:outranges:", range, v8, [selection type], 1, 1, 0, v51, 0, 0);
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 1;
    do
    {
      [objc_msgSend(v9 objectAtIndexedSubscript:{v12), "CGRectValue"}];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if (v12 || [selection start] < self->_startCharIndex)
      {
        v60.origin.x = v15;
        v60.origin.y = v17;
        v60.size.width = v19;
        v60.size.height = v21;
        MinX = CGRectGetMinX(v60);
        v23 = MinX - CGRectGetMinX(self->_frameBounds);
        v15 = v15 - v23;
        v19 = v19 + v23;
      }

      v24 = v12 + 1;
      if (v12 + 1 < v11)
      {
        while (1)
        {
          [objc_msgSend(v9 objectAtIndexedSubscript:{v12 + 1), "CGRectValue"}];
          x = v61.origin.x;
          v26 = v21;
          y = v61.origin.y;
          width = v61.size.width;
          height = v61.size.height;
          rect = CGRectGetMinY(v61);
          v62.origin.x = v15;
          v62.origin.y = v17;
          v62.size.width = v19;
          v62.size.height = v26;
          if (rect != CGRectGetMinY(v62))
          {
            break;
          }

          v63.origin.x = v15;
          v63.origin.y = v17;
          v63.size.width = v19;
          v63.size.height = v26;
          v71.origin.x = x;
          v71.origin.y = y;
          v71.size.width = width;
          v71.size.height = height;
          v64 = CGRectUnion(v63, v71);
          v15 = v64.origin.x;
          v17 = v64.origin.y;
          v19 = v64.size.width;
          v21 = v64.size.height;
          [v9 removeObjectAtIndex:v12 + 1];
          if (v24 >= --v11)
          {
            v11 = v13;
            goto LABEL_11;
          }
        }

        v21 = v26;
      }

LABEL_11:
      if (v12 != v11 - 1 || (v30 = self->_characterCount + self->_startCharIndex, v30 <= [selection end]))
      {
        MaxX = CGRectGetMaxX(self->_frameBounds);
        v65.origin.x = v15;
        v65.origin.y = v17;
        v65.size.width = v19;
        v65.size.height = v21;
        v19 = v19 + MaxX - CGRectGetMaxX(v65);
      }

      [target rectInRoot:{v15, v17, v19, v21}];
      [v9 setObject:objc_msgSend(MEMORY[0x277CCAE60] atIndexedSubscript:{"valueWithCGRect:"), v12}];
      ++v13;
      ++v12;
    }

    while (v24 < v11);
  }

  if ([v9 count] > 1)
  {
    [objc_msgSend(v9 "firstObject")];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [objc_msgSend(v9 "lastObject")];
    v54 = v41;
    v55 = v40;
    v53 = v42;
    recta = v43;
    [target rectInRoot:{self->_frameBounds.origin.x, self->_frameBounds.origin.y, self->_frameBounds.size.width, self->_frameBounds.size.height}];
    v44 = v66.origin.x;
    v45 = v66.origin.y;
    v46 = v66.size.width;
    v47 = v66.size.height;
    v57 = CGRectGetMinX(v66);
    v67.origin.x = v33;
    v67.origin.y = v35;
    v67.size.width = v37;
    v67.size.height = v39;
    MaxY = CGRectGetMaxY(v67);
    v68.origin.x = v44;
    v68.origin.y = v45;
    v68.size.width = v46;
    v68.size.height = v47;
    v52 = CGRectGetWidth(v68);
    v69.origin.x = v55;
    v69.origin.y = v54;
    v69.size.width = v53;
    v69.size.height = recta;
    MinY = CGRectGetMinY(v69);
    v70.origin.x = v33;
    v70.origin.y = v35;
    v70.size.width = v37;
    v70.size.height = v39;
    v49 = MinY - CGRectGetMaxY(v70);
    [v9 removeAllObjects];
    [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v33, v35, v37, v39)}];
    [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v57, MaxY, v52, v49)}];
    [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGRect:", v55, v54, v53, recta)}];
  }

  return v9;
}

- (unint64_t)charIndexFromPoint:(CGPoint)point allowPastBreak:(BOOL)break pastCenterGoesToNextChar:(BOOL)char allowNotFound:(BOOL)found isAtEndOfLine:(BOOL *)line outFragment:(const TSWPLineFragment *)fragment leadingEdge:(BOOL *)edge
{
  foundCopy = found;
  charCopy = char;
  v40 = 1;
  if (self)
  {
    y = point.y;
    x = point.x;
    [(TSWPColumn *)self transformToWP];
    point.y = y;
    point.x = x;
    v17 = *v37;
    v16 = v38;
    v18 = v39;
  }

  else
  {
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
  }

  v19 = vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v16, point.y), v17, point.x));
  v37[0] = 0;
  if (line)
  {
    *line = 0;
  }

  v20 = [(TSWPColumn *)self charIndexFromWPPoint:charCopy pastCenterGoesToNextChar:foundCopy allowNotFound:v37 outFragment:&v40 leadingEdge:*&v19];
  v21 = v20;
  if (v37[0] && v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = *(v37[0] + 1);
    if (v22)
    {
      v23 = v20 + !v40;
      if (v23 == v22 + *v37[0])
      {
        v24 = v23 - 1;
        v25 = [(TSWPStorage *)self->_storage characterAtIndex:v23 - 1];
        v26 = v25;
        v27 = IsParagraphBreakingCharacter(v25);
        if (v26 == 8232)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        if (v28 != 1 || break)
        {
          if (line)
          {
            *line = 1;
          }
        }

        else
        {
          v40 = 1;
          v21 = v24;
        }
      }
    }

    if (fragment)
    {
      *fragment = v37[0];
    }
  }

  if (edge)
  {
    *edge = v40;
    return v21;
  }

  if (!v40 && v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v37[0])
    {
      p_storage = &self->_storage;
      goto LABEL_34;
    }

    v30 = TSWPLineFragment::writingDirectionForCharIndex(v37[0], v21);
    v31 = v37[0];
    if (break || ((*(v37[0] + 25) & 0x10) != 0 ? (v32 = TSWPLineFragment::rightMostCharIndex(v37[0])) : (v32 = TSWPLineFragment::leftMostCharIndex(v37[0])), (v34 = v32, v31 = v37[0], v21 != v34) || (v30 != 1) != (*(v37[0] + 25) & 0x10) >> 4))
    {
      p_storage = (v31 + 184);
LABEL_34:
      if (*p_storage)
      {
        return TSWPNextCharFromTextSource(v21, *p_storage);
      }
    }
  }

  return v21;
}

- (unint64_t)charIndexForSelectionFromPoint:(CGPoint)point isTail:(BOOL)tail
{
  tailCopy = tail;
  if (self)
  {
    y = point.y;
    x = point.x;
    [(TSWPColumn *)self transformToWP];
    point.y = y;
    point.x = x;
    v7 = v54;
    v6 = v55;
    v8 = v56;
  }

  else
  {
    v8 = 0uLL;
    v7 = 0uLL;
    v6 = 0uLL;
  }

  v53 = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v6, point.y), v7, point.x));
  if (v53.f64[1] < CGRectGetMinY(self->_frameBounds))
  {
    result = self->_startCharIndex;
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn charIndexForSelectionFromPoint:isTail:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 2023, @"column has unexpected start"}];
    goto LABEL_51;
  }

  ptr = self->_lineFragmentArray.__ptr_;
  v14 = *ptr;
  v13 = *(ptr + 1);
  if (*ptr == v13)
  {
LABEL_51:
    p_startCharIndex = &self->_startCharIndex;
    p_characterCount = &self->_characterCount;
    return *p_characterCount + *p_startCharIndex;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    p_startCharIndex = *v14;
    v18 = *(*v14 + 48);
    v17 = *(*v14 + 56);
    v20 = *(*v14 + 64);
    v19 = *(*v14 + 72);
    if ((*(*v14 + 27) & 2) != 0)
    {
      v21 = [(TSWPStorage *)self->_storage isWritingDirectionRightToLeftForParagraphAtCharIndex:*p_startCharIndex]^ tailCopy;
      TSDDistanceToRect(v53.f64[0], v53.f64[1], v18, v17, v20, v19);
      v23 = v22;
      v15 = TSWPLineFragment::charIndexForWPOffsetWithDirection(p_startCharIndex, v21 ^ 1u, 0, v53.f64[0]);
      if (v23 == 0.0)
      {
        goto LABEL_48;
      }

      v24 = v14[2];
      v14 += 2;
      p_startCharIndex = v24;
      v18 = *(v24 + 6);
      v17 = *(v24 + 7);
      v20 = *(v24 + 8);
      v19 = *(v24 + 9);
    }

    v25 = v14 + 2;
    v26 = -16;
    do
    {
      v27 = v26;
      if (v25 == v13)
      {
        break;
      }

      v28 = *v25;
      v25 += 2;
      MinY = CGRectGetMinY(*(v28 + 48));
      v57.origin.x = v18;
      v57.origin.y = v17;
      v57.size.width = v20;
      v57.size.height = v19;
      v30 = CGRectGetMinY(v57);
      v26 = v27 - 16;
    }

    while (MinY == v30);
    v58.origin.x = v18;
    v58.origin.y = v17;
    v58.size.width = v20;
    v58.size.height = v19;
    if (v53.f64[1] < CGRectGetMinY(v58))
    {
LABEL_48:
      result = v15;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      if (p_startCharIndex)
      {
        p_characterCount = p_startCharIndex + 1;
        return *p_characterCount + *p_startCharIndex;
      }

      goto LABEL_51;
    }

    v59.origin.x = v18;
    v59.origin.y = v17;
    v59.size.width = v20;
    v59.size.height = v19;
    if (v53.f64[1] <= CGRectGetMaxY(v59))
    {
      break;
    }

    v31 = p_startCharIndex[1];
    v32 = v31 + *p_startCharIndex;
    if (v15 <= v32)
    {
      v33 = v31 + *p_startCharIndex;
    }

    else
    {
      v33 = v15;
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v32;
    }

    else
    {
      v15 = v33;
    }

    if (tailCopy)
    {
      v15 = [(TSWPStorage *)self->_storage previousCharacterIndex:v15];
    }

    v14 += 2;
    if (v14 == v13)
    {
      goto LABEL_48;
    }
  }

  v34 = -v27;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = INFINITY;
  while (1)
  {
    p_startCharIndex = *v14;
    if ((*(*v14 + 24) & 0x40) == 0 && (*(*v14 + 24) & 0x201) != 1)
    {
      break;
    }

    v45 = v35;
LABEL_44:
    v14 += 2;
    v35 = v45;
    v34 -= 16;
    if (!v34)
    {
      goto LABEL_47;
    }
  }

  v38 = *(p_startCharIndex + 8);
  v37 = *(p_startCharIndex + 9);
  v40 = *(p_startCharIndex + 6);
  v39 = *(p_startCharIndex + 7);
  v41 = [(TSWPStorage *)self->_storage isWritingDirectionRightToLeftForParagraphAtCharIndex:*p_startCharIndex];
  TSDDistanceToRect(v53.f64[0], v53.f64[1], v40, v39, v38, v37);
  v43 = v42;
  v44 = TSWPLineFragment::charIndexForWPOffsetWithDirection(p_startCharIndex, v41 ^ tailCopy ^ 1u, 0, v53.f64[0]);
  v45 = v44;
  if (v43 != 0.0)
  {
    v46 = v43 < v36;
    if (v43 >= v36)
    {
      v47 = v35;
    }

    else
    {
      v36 = v43;
      v47 = v44;
    }

    if (!v46 || !tailCopy)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v45 = v47;
    }

    else
    {
      v60.origin.x = v40;
      v60.origin.y = v39;
      v60.size.width = v38;
      v60.size.height = v37;
      v49 = v53.f64[0] <= CGRectGetMaxX(v60);
      if (v41 != v49)
      {
        v45 = [(TSWPStorage *)self->_storage previousCharacterIndex:*p_startCharIndex];
      }

      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v36 = v43;
    }

    goto LABEL_44;
  }

  v15 = v44;
LABEL_47:
  result = v15;
  v15 = v35;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  return result;
}

- (unint64_t)charIndexFromWPPoint:(CGPoint)point pastCenterGoesToNextChar:(BOOL)char allowNotFound:(BOOL)found outFragment:(const TSWPLineFragment *)fragment leadingEdge:(BOOL *)edge
{
  foundCopy = found;
  charCopy = char;
  y = point.y;
  x = point.x;
  if (point.y < CGRectGetMinY(self->_frameBounds))
  {
    if (foundCopy)
    {
      v13 = 0;
      startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_26;
    }

    startCharIndex = self->_startCharIndex;
    if (TSWPLineFragmentArray::count(self->_lineFragmentArray.__ptr_))
    {
      v13 = TSWPLineFragmentArray::objectAtIndex(self->_lineFragmentArray.__ptr_, 0);
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  ptr = self->_lineFragmentArray.__ptr_;
  v17 = *ptr;
  v16 = *(ptr + 1);
  startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (*ptr == v16)
  {
LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  fragmentCopy = fragment;
  edgeCopy = edge;
  v18 = 0;
  v19 = (v17 - 2);
  while (1)
  {
    v13 = *v17;
    if ((*(*v17 + 6) & 0x40) != 0 || (*(*v17 + 6) & 0x201) == 1)
    {
      goto LABEL_20;
    }

    v21 = *(v13 + 48);
    v20 = *(v13 + 56);
    v22 = *(v13 + 64);
    v23 = *(v13 + 72);
    v39.origin.x = v21;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v23;
    MinY = CGRectGetMinY(v39);
    v25 = y >= MinY || !foundCopy;
    if (v25 != 1)
    {
LABEL_21:
      startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }

    v26 = MinY;
    if ((*(v13 + 27) & 2) != 0)
    {
      v40.origin.x = v21;
      v40.origin.y = v20;
      v40.size.width = v22;
      v40.size.height = v23;
      if (y <= CGRectGetMaxY(v40))
      {
        v35 = TSWPLineFragment::charIndexForWPOffset(v13, x, charCopy, 1, edgeCopy, 1);
        if (v35 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_45;
        }

        goto LABEL_20;
      }
    }

    v41.origin.x = v21;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v23;
    if (y <= CGRectGetMaxY(v41))
    {
      break;
    }

    if (v18)
    {
      if (y < v26)
      {
        v13 = *v19;
        v42.origin.x = v21;
        v42.origin.y = v20;
        v42.size.width = v22;
        v42.size.height = v23;
        if (x > CGRectGetMaxX(v42))
        {
          v35 = TSWPLineFragment::charIndexForWPOffset(v13, x, charCopy, foundCopy, edgeCopy, 1);
LABEL_45:
          startCharIndex = v35;
LABEL_22:
          fragment = fragmentCopy;
          goto LABEL_26;
        }
      }
    }

LABEL_20:
    v17 += 2;
    v18 -= 16;
    v19 += 2;
    if (v17 == v16)
    {
      goto LABEL_21;
    }
  }

  startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (v17 == v16)
  {
    goto LABEL_22;
  }

  v30 = 0;
  v31 = INFINITY;
  fragment = fragmentCopy;
  do
  {
    v32 = *v17;
    if (*(*v17 + 7) != v20)
    {
      break;
    }

    v33 = TSWPLineFragment::charIndexForWPOffset(*v17, x, charCopy, 1, edgeCopy, 1);
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      startCharIndex = v33;
      goto LABEL_26;
    }

    TSDDistanceToRect(x, y, v32[6], v32[7], v32[8], v32[9]);
    if (v34 < v31)
    {
      v30 = v32;
      v31 = v34;
    }

    v17 += 2;
  }

  while (v17 != v16);
  startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (!foundCopy && v30)
  {
    startCharIndex = TSWPLineFragment::charIndexForWPOffset(v30, x, charCopy, 0, edgeCopy, 1);
    v13 = v30;
  }

LABEL_26:
  if (fragment)
  {
    *fragment = v13;
  }

  if (!foundCopy && startCharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    p_characterCount = (v13 + 8);
    p_startCharIndex = &self->_startCharIndex;
    if (v13)
    {
      p_startCharIndex = v13;
    }

    else
    {
      p_characterCount = &self->_characterCount;
    }

    return *p_characterCount + *p_startCharIndex;
  }

  return startCharIndex;
}

- (_TSWPCharIndexAndPosition)calcAttachmentPositionForDrawable:(SEL)drawable atPoint:(id)point inTextLayoutTarget:(CGPoint)target tlBoundsInfluencingWrap:(id)wrap wrapOutset:(CGPoint)outset wrapMargin:(CGSize)margin makeInline:(double)inline
{
  height = margin.height;
  y = outset.y;
  v14 = target.y;
  x = target.x;
  retstr->var0 = 0x7FFFFFFFFFFFFFFFLL;
  *&retstr->var1 = 0;
  retstr->var2 = NAN;
  *&retstr->var3 = 0;
  retstr->var4 = NAN;
  v54 = 0;
  v53 = 0;
  result = [(TSWPColumn *)self charIndexFromPoint:0 allowPastBreak:1 pastCenterGoesToNextChar:0 allowNotFound:&v54 isAtEndOfLine:&v53 outFragment:0 leadingEdge:outset.x, outset.y];
  if (result != 0x7FFFFFFFFFFFFFFFLL && v53)
  {
    v19 = result;
    if (a10 || ([objc_opt_class() canPartition] & 1) != 0)
    {
      result = [objc_opt_class() canPartition];
      if (result)
      {
        v20 = v53;
        v21 = [(TSWPColumn *)self lineFragmentAtIndex:[(TSWPColumn *)self countLines]- 1];
        v56.origin.x = *(v53 + 6);
        v56.origin.y = *(v53 + 7);
        v56.size.width = *(v53 + 8);
        v56.size.height = *(v53 + 9);
        MaxY = CGRectGetMaxY(v56);
        if (v20 == v21)
        {
          v23 = *v53;
          v30 = *(v53 + 1);
          if ((*(v53 + 25) & 8) != 0)
          {
            if (v19 == (v23 + v30 - 1) && y >= MaxY)
            {
              result = [(TSWPStorage *)[(TSWPColumn *)self storage] characterAtIndex:v19];
              if ((result & 0xFFFE) != 4)
              {
                v19 = (v19 + 1);
              }

              goto LABEL_9;
            }
          }

          else if (v19 == (v30 + v23) && y >= MaxY)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v23 = *v53;
        }

        v19 = v23;
      }

LABEL_9:
      retstr->var0 = v19;
      retstr->var2 = 0.0;
      v24 = 0.0;
LABEL_10:
      retstr->var4 = v24;
      return result;
    }

    v57.origin.x = *(v53 + 6);
    v57.origin.y = *(v53 + 7);
    v57.size.width = *(v53 + 8);
    v57.size.height = *(v53 + 9);
    if (y < CGRectGetMaxY(v57))
    {
      lineFragmentArray = [(TSWPColumn *)self lineFragmentArray];
      v26 = TSWPLineFragmentArray::count(*lineFragmentArray);
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        while (1)
        {
          v29 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, v28);
          if (v29 == v53)
          {
            break;
          }

          if (v27 == ++v28)
          {
            goto LABEL_33;
          }
        }

        v32 = v28 - 1;
        while (v32 != -1)
        {
          v33 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray, v32);
          MinY = CGRectGetMinY(*(v33 + 48));
          v58.origin.x = *(v53 + 6);
          v58.origin.y = *(v53 + 7);
          v58.size.width = *(v53 + 8);
          v58.size.height = *(v53 + 9);
          --v32;
          if (MinY < CGRectGetMinY(v58))
          {
            v53 = v33;
            break;
          }
        }
      }
    }

LABEL_33:
    anchoredRange = [(TSWPColumn *)self anchoredRange];
    if (*v53 < anchoredRange)
    {
      v36 = anchoredRange;
      lineFragmentArray2 = [(TSWPColumn *)self lineFragmentArray];
      v38 = TSWPLineFragmentArray::count(*lineFragmentArray2);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        while (1)
        {
          v41 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray2, v40);
          if (*v41 >= v36)
          {
            break;
          }

          if (v39 == ++v40)
          {
            goto LABEL_40;
          }
        }

        v53 = v41;
      }
    }

LABEL_40:
    if ((*(v53 + 6) & 0x301) == 0x101)
    {
      lineFragmentArray3 = [(TSWPColumn *)self lineFragmentArray];
      LineIndexForCharIndex = TSWPLineFragmentArray::findLineIndexForCharIndex(*lineFragmentArray3, *v53);
      if (LineIndexForCharIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = LineIndexForCharIndex + 1;
        if (LineIndexForCharIndex + 1 < TSWPLineFragmentArray::count(*lineFragmentArray3))
        {
          v53 = TSWPLineFragmentArray::objectAtIndex(*lineFragmentArray3, v44);
        }
      }
    }

    v45 = *v53;
    storage = [(TSWPColumn *)self storage];
    v47 = v53;
    v48 = *(v53 + 1) + *v53;
    if (v45 < v48)
    {
      while (1)
      {
        objc_opt_class();
        [(TSWPStorage *)storage attachmentAtCharIndex:v45];
        if (![TSUDynamicCast() isAnchored])
        {
          break;
        }

        if (v48 == ++v45)
        {
          v45 = v48;
          break;
        }
      }

      v47 = v53;
    }

    retstr->var0 = v45;
    v55.location = v45;
    v55.length = 0;
    TSWPLineFragment::rectsForLineRange(v47, v55, 0, 0, 1, 0, __p);
    TSWPUnionRects(__p);
    v50 = v49;
    result = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    retstr->var2 = x;
    v51 = v14 - (height + v50) + *(v53 + 52);
    retstr->var4 = v51;
    if (height + v51 < 0.0)
    {
      objc_opt_class();
      result = TSUDynamicCast();
      if (result)
      {
        retstr->var3 = 1;
        [(_TSWPCharIndexAndPosition *)result frame];
        v24 = v14 + CGRectGetMinY(v59) - (height - inline);
        goto LABEL_10;
      }
    }
  }

  return result;
}

- (void)renderWithRenderer:(id)renderer pageCount:(unint64_t)count
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LOBYTE(v7) = 0;
  LODWORD(v6) = 3;
  LOBYTE(v5) = 0;
  LOBYTE(v4) = 0;
  [(TSWPColumn *)self renderWithRenderer:renderer currentSelection:0 limitSelection:0 listRange:*MEMORY[0x277D6C268] rubyGlyphRange:*(MEMORY[0x277D6C268] + 8) isCanvasInteractive:v4 spellChecker:0 suppressedMisspellingRange:*MEMORY[0x277D6C268] blackAndWhite:*(MEMORY[0x277D6C268] + 8) dictationInterpretations:v5 autocorrections:&v8 markedRange:&v8 markedText:*MEMORY[0x277D6C268] renderMode:*(MEMORY[0x277D6C268] + 8) pageCount:0 suppressInvisibles:v6 currentCanvasSelection:count, v7, 0];
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

- (void)renderWithRenderer:(id)renderer currentSelection:(id)selection limitSelection:(id)limitSelection listRange:(_NSRange)range rubyGlyphRange:(_NSRange)glyphRange isCanvasInteractive:(BOOL)interactive spellChecker:(id)checker suppressedMisspellingRange:(_NSRange)self0 blackAndWhite:(BOOL)self1 dictationInterpretations:(const void *)self2 autocorrections:(const void *)self3 markedRange:(_NSRange)self4 markedText:(id)self5 renderMode:(int)self6 pageCount:(unint64_t)self7 suppressInvisibles:(BOOL)self8 currentCanvasSelection:(id)self9
{
  length = range.length;
  location = range.location;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  bzero(v76, 0xF8uLL);
  v76[0] = self->_storage;
  v76[1] = self;
  [(TSWPColumn *)self wpBounds];
  v25 = 0;
  v76[2] = v26;
  v76[3] = v27;
  v76[4] = v28;
  v76[5] = v29;
  scaleTextPercent = self->_scaleTextPercent;
  v76[6] = selection;
  limitSelectionCopy = limitSelection;
  v78 = scaleTextPercent;
  v91 = location;
  v92 = length;
  glyphRangeCopy = glyphRange;
  if (interactive && !invisibles)
  {
    v25 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  v82 = v25;
  v79 = CGColorRetain([+[TSWPUserDefaults invisiblesColor](TSWPUserDefaults "invisiblesColor")]);
  misspellingRangeCopy = misspellingRange;
  whiteCopy = white;
  interpretationsCopy = interpretations;
  autocorrectionsCopy = autocorrections;
  markedRangeCopy = markedRange;
  textCopy = text;
  countCopy = count;
  [(TSWPStorage *)self->_storage parentInfo];
  if (objc_opt_respondsToSelector())
  {
    shouldHideEmptyBullets = [(TSDContainerInfo *)[(TSWPStorage *)self->_storage parentInfo] shouldHideEmptyBullets];
  }

  else
  {
    shouldHideEmptyBullets = 0;
  }

  v83 = shouldHideEmptyBullets;
  interactiveCopy = interactive;
  v32 = ([renderer preventClipToColumn] & 1) != 0 || -[TSWPStorage wpKind](self->_storage, "wpKind") == 5;
  v84 = v32;
  canvasSelectionCopy = canvasSelection;
  bzero(v72, 0x98uLL);
  if (!limitSelection && (glyphRange.location != *MEMORY[0x277D6C268] || glyphRange.length != *(MEMORY[0x277D6C268] + 8)))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPColumn renderWithRenderer:currentSelection:limitSelection:listRange:rubyGlyphRange:isCanvasInteractive:spellChecker:suppressedMisspellingRange:blackAndWhite:dictationInterpretations:autocorrections:markedRange:markedText:renderMode:pageCount:suppressInvisibles:currentCanvasSelection:]"];
    [currentHandler handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPColumn.mm"), 2549, @"ruby glyph range is meaningless without limitSelection"}];
  }

  [renderer willRenderFragmentsWithDrawingState:v76];
  [renderer getClipBoundingBox];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(TSWPColumn *)self erasableBounds:0];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  [(TSWPColumn *)self transformToWP];
  v98.origin.x = v44;
  v98.origin.y = v46;
  v98.size.width = v48;
  v98.size.height = v50;
  v101 = CGRectApplyAffineTransform(v98, &v71);
  v99.origin.x = v36;
  v99.origin.y = v38;
  v99.size.width = v40;
  v99.size.height = v42;
  v100 = CGRectIntersection(v99, v101);
  x = v100.origin.x;
  y = v100.origin.y;
  width = v100.size.width;
  height = v100.size.height;
  textCopy2 = text;
  if (v83 == 1 && [selection isInsertionPoint])
  {
    start = [selection start];
    v56 = length;
  }

  else
  {
    v56 = length;
    start = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((mode & 2) != 0)
  {
    [renderer drawAdornmentRects:self->_paragraphAdornments forColumn:self foreground:0];
    ptr = self->_lineFragmentArray.__ptr_;
    v58 = *ptr;
    v59 = *(ptr + 1);
    if (*ptr != v59)
    {
      do
      {
        v60 = **v58;
        if (location > v60 || location + v56 < (*v58)[1] + v60)
        {
          [renderer drawFragment:x updateRect:y drawingState:width runState:height lineDrawFlags:textCopy2];
        }

        v58 += 2;
      }

      while (v58 != v59);
    }
  }

  if (mode)
  {
    v61 = self->_lineFragmentArray.__ptr_;
    v62 = *v61;
    v63 = *(v61 + 1);
    if (*v61 != v63)
    {
      if ((mode & 4) != 0)
      {
        v64 = 65538;
      }

      else
      {
        v64 = 2;
      }

      if (checker)
      {
        v65 = v64 | 0x18;
      }

      else
      {
        v65 = v64;
      }

      if (*(interpretations + 1) != *interpretations)
      {
        v65 |= 0x200u;
      }

      if (*(autocorrections + 1) != *autocorrections)
      {
        v65 |= 0x800u;
      }

      if (textCopy2)
      {
        LODWORD(v66) = v65 | 0x400;
      }

      else
      {
        LODWORD(v66) = v65;
      }

      do
      {
        v67 = *v62;
        v68 = **v62;
        if (location > v68 || location + v56 < (*v62)[1] + v68)
        {
          v66 = v66 & 0xFFFFFEFF | ((v68 == start) << 8);
          if (!limitSelectionCopy || [limitSelectionCopy intersectsRange:?])
          {
            [renderer drawFragment:v67 updateRect:v76 drawingState:v72 runState:v66 lineDrawFlags:{x, y, width, height, textCopy2}];
          }
        }

        v62 += 2;
      }

      while (v62 != v63);
    }

    [renderer drawAdornmentRects:self->_paragraphAdornments forColumn:self foreground:{1, textCopy2}];
  }

  [renderer didRenderFragments];
  if (cf)
  {
    CFRelease(cf);
  }

  if (color)
  {
    CGColorRelease(color);
  }

  if (v75)
  {
    CGColorRelease(v75);
  }

  if (v79)
  {
    CGColorRelease(v79);
  }

  if (*(&v86 + 1))
  {
    *&v87 = *(&v86 + 1);
    operator delete(*(&v86 + 1));
  }

  if (v85)
  {
    *(&v85 + 1) = v85;
    operator delete(v85);
  }
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind
{
  v4 = *&kind;
  storage = [(TSWPColumn *)self storage];

  return [(TSWPStorage *)storage smartFieldAtCharIndex:index attributeKind:v4 effectiveRange:0];
}

- (id)partitionedLayoutForInfo:(id)info
{
  ptr = self->_lineFragmentArray.__ptr_;
  v4 = *ptr;
  v5 = *(ptr + 1);
  if (*ptr == v5)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(*v4 + 432);
    if ([v7 info] == info)
    {
      break;
    }

    v4 += 16;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return v7;
}

- (id)singleLinePartitionedInfoAtStart:(BOOL)start
{
  if ([(TSWPColumn *)self countLines]!= 1)
  {
    return 0;
  }

  v5 = [(TSWPColumn *)self lineFragmentAtIndex:0];
  v6 = v5[6];
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (((v6 & 0x200) != 0 || !start) && ((v6 & 0x100) != 0 || start))
  {
    return 0;
  }

  v8 = *(v5 + 54);

  return [v8 info];
}

- (BOOL)onlyHasAnchoredDrawable
{
  if ([(TSWPColumn *)self countLines]== 1)
  {
    return (*([(TSWPColumn *)self lineFragmentAtIndex:0]+ 24) >> 6) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (CGColor)computeSingleColorWithColumns:(id)columns
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = 0;
  v4 = [columns countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    LOBYTE(v6) = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(columns);
        }

        lineFragmentArray = [*(*(&v17 + 1) + 8 * i) lineFragmentArray];
        v10 = *lineFragmentArray;
        v9 = *(lineFragmentArray + 8);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          v11 = TSWPLineFragmentArray::count(v10);
          if (v11)
          {
            v12 = 0;
            v13 = v3;
            while (1)
            {
              v14 = TSWPLineFragmentArray::objectAtIndex(v10, v12);
              if ((*(v14 + 27) & 8) == 0)
              {
                break;
              }

              v3 = TSWPLineFragment::singleColor(v14);
              if (!v6 || v3 == 0)
              {
                break;
              }

              if (v13)
              {
                v6 = CGColorEqualToColor(v13, v3);
                if (!v6)
                {
                  v3 = v13;
                }
              }

              else
              {
                LOBYTE(v6) = 1;
              }

              ++v12;
              v13 = v3;
              if (v11 == v12)
              {
                goto LABEL_21;
              }
            }

            v3 = 0;
            LOBYTE(v6) = 0;
          }
        }

LABEL_21:
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }
      }

      v4 = [columns countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v3;
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

- (CGAffineTransform)transformFromWP
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setTransformFromWP:(CGAffineTransform *)p
{
  v3 = *&p->a;
  v4 = *&p->tx;
  *&self->_transform.c = *&p->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

@end
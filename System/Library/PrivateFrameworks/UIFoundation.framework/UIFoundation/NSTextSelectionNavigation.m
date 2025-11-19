@interface NSTextSelectionNavigation
+ (id)_substringRangeForEnumerationType:(unint64_t)a3 location:(id)a4 dataSource:(id)a5 string:(id *)a6 enclosingRange:(id *)a7;
+ (void)_setupCharacterSets;
+ (void)initialize;
- (BOOL)_location:(id)a3 withAffinity:(int64_t)a4 isAtBoundaryOfDestination:(int64_t)a5 onSide:(int64_t)a6;
- (NSArray)textSelectionsInteractingAtPoint:(CGPoint)point inContainerAtLocation:(id)containerLocation anchors:(NSArray *)anchors modifiers:(NSTextSelectionNavigationModifier)modifiers selecting:(BOOL)selecting bounds:(CGRect)bounds;
- (NSTextSelection)destinationSelectionForTextSelection:(NSTextSelection *)textSelection direction:(NSTextSelectionNavigationDirection)direction destination:(NSTextSelectionNavigationDestination)destination extending:(BOOL)extending confined:(BOOL)confined;
- (NSTextSelection)textSelectionForSelectionGranularity:(NSTextSelectionGranularity)selectionGranularity enclosingTextSelection:(NSTextSelection *)textSelection;
- (NSTextSelectionNavigation)initWithDataSource:(id)dataSource;
- (double)_anchorPositionOffsetForLocation:(id)a3 textSelection:(id)a4 affinity:(int64_t)a5;
- (double)_caretOffsetForTextLocation:(id)a3 affinity:(int64_t)a4;
- (id)_adjustLocationForNearestCaretPosition:(id)a3 direction:(int64_t)a4;
- (id)_copyRangeForTextLineFragmentAtLocation:(id)a3 affinity:(int64_t)a4 copyEnclosingRange:(id *)a5;
- (id)_findAnchorInfoForTextSelection:(id)a3 anchorPositionOffset:(double *)a4 anchorLocation:(id *)a5;
- (id)_lineFragmentInfoForLocation:(id)a3 affinity:(int64_t)a4;
- (id)_lineFragmentInfoForPoint:(CGPoint)a3 inContainerAtLocation:(id)a4 bounds:(CGRect)a5 layoutOrientation:(int64_t)a6 beforeLineFragment:(BOOL *)a7 afterLineFragment:(BOOL *)a8 lineFragmentRange:(id *)a9;
- (id)_lineFragmentInfoForRange:(id)a3;
- (id)_logicalDestinationLocationForTextSelection:(id)a3 originLocation:(id)a4 direction:(int64_t)a5 destination:(int64_t)a6 extending:(BOOL)a7 confined:(BOOL)a8 affinity:(int64_t *)a9;
- (id)_mergeVisuallyContiguousRanges:(id)a3 withRanges:(id)a4;
- (id)_rangeOfCombinedLineFragmentsInRanges:(id)a3;
- (id)_rangesForSelectionStartingOffset:(double)a3 inLineFragmentInfo:(id)a4 endingOffset:(double)a5 inLineFragmentInfo:(id)a6 contiguous:(BOOL)a7;
- (id)_visualDestinationLocationForTextSelection:(id)a3 originLocation:(id *)a4 direction:(int64_t)a5 destination:(int64_t)a6 extending:(BOOL)a7 confined:(BOOL)a8 affinity:(int64_t *)a9 crossedLine:(BOOL *)a10;
- (id)deletionRangesForTextSelection:(id)a3 direction:(int64_t)a4 destination:(int64_t)a5 allowsDecomposition:(BOOL)a6 confined:(BOOL)a7;
- (id)resolvedInsertionLocationForTextSelection:(NSTextSelection *)textSelection writingDirection:(NSTextSelectionNavigationWritingDirection)writingDirection;
- (id)textSelectionForSelectionGranularity:(int64_t)a3 enclosingPoint:(CGPoint)a4 inContainerAtLocation:(id)a5 bounds:(CGRect)a6;
- (int64_t)_horizontalDirectionForDirection:(int64_t)a3 location:(id)a4;
- (int64_t)_logicalDirectionForDirection:(int64_t)a3 textSelection:(id)a4;
- (unsigned)_bidiLevelAtLocation:(id)a3 affinity:(int64_t)a4;
- (void)dealloc;
- (void)flushLayoutCache;
@end

@implementation NSTextSelectionNavigation

+ (void)initialize
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];

  [v2 registerDefaults:&unk_1F01CC1F8];
}

- (void)flushLayoutCache
{
  v2 = 0;
  lineFragmentInfoCache = self->_lineFragmentInfoCache;
  do
  {
    v4 = lineFragmentInfoCache[v2];
    if (!v4)
    {
      break;
    }

    ++v2;
  }

  while (v2 != 8);
  *(lineFragmentInfoCache + 2) = 0u;
  *(lineFragmentInfoCache + 3) = 0u;
  *lineFragmentInfoCache = 0u;
  *(lineFragmentInfoCache + 1) = 0u;
}

- (void)dealloc
{
  [(NSTextSelectionNavigation *)self setTextSelectionDataSource:0];
  [(NSTextSelectionNavigation *)self flushLayoutCache];
  v3.receiver = self;
  v3.super_class = NSTextSelectionNavigation;
  [(NSTextSelectionNavigation *)&v3 dealloc];
}

+ (id)_substringRangeForEnumerationType:(unint64_t)a3 location:(id)a4 dataSource:(id)a5 string:(id *)a6 enclosingRange:(id *)a7
{
  v11 = 1024;
  if (!a6)
  {
    v11 = 1536;
  }

  v12 = v11 | a3 & 0xFFFFFFFFFFFFFEFFLL;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__NSTextSelectionNavigation__substringRangeForEnumerationType_location_dataSource_string_enclosingRange___block_invoke;
  v23[3] = &unk_1E7265C80;
  v23[4] = a4;
  v23[5] = &v36;
  v23[6] = &v30;
  v23[7] = &v24;
  v23[8] = &v42;
  [a5 enumerateSubstringsFromLocation:a4 options:v12 usingBlock:v23];
  if (!v25[5])
  {
    v13 = v37[5];
    if (v13)
    {
      if (![a4 isEqual:{objc_msgSend(v13, "location")}])
      {
        goto LABEL_13;
      }

      if (!v31[5])
      {
        goto LABEL_11;
      }

      v14 = [v37[5] location];
      if (![v14 isEqual:{objc_msgSend(v31[5], "location")}])
      {
        goto LABEL_13;
      }

      v15 = v31[5];
      if (!v15)
      {
LABEL_11:
        v15 = v37[5];
      }
    }

    else
    {
      v15 = [a5 documentRange];
    }

    v16 = [v15 endLocation];
    v25[5] = v16;
  }

LABEL_13:
  v17 = v25[5];
  if (v17)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __105__NSTextSelectionNavigation__substringRangeForEnumerationType_location_dataSource_string_enclosingRange___block_invoke_2;
    v22[3] = &unk_1E7265CA8;
    v22[4] = a4;
    v22[5] = &v36;
    v22[6] = &v30;
    v22[7] = &v42;
    [a5 enumerateSubstringsFromLocation:v17 options:v12 | 0x100 usingBlock:v22];
  }

  v18 = v43[5];
  if (a6)
  {
    *a6 = v18;
  }

  else
  {
  }

  v19 = v31[5];
  if (a7)
  {
    *a7 = v19;
  }

  else
  {
  }

  v20 = v37[5];
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  return v20;
}

id __105__NSTextSelectionNavigation__substringRangeForEnumerationType_location_dataSource_string_enclosingRange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  if ([a3 containsLocation:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 40) = a3;
    v10 = a4;
LABEL_3:
    *(*(*(a1 + 48) + 8) + 40) = v10;
    goto LABEL_7;
  }

  if ([*(a1 + 32) compare:{objc_msgSend(a3, "location")}] == -1)
  {
    *(*(*(a1 + 56) + 8) + 40) = [a3 location];
    if ([a4 containsLocation:*(a1 + 32)])
    {
      v10 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [a4 location], objc_msgSend(a3, "location"));
      goto LABEL_3;
    }
  }

LABEL_7:
  result = a2;
  *(*(*(a1 + 64) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

id __105__NSTextSelectionNavigation__substringRangeForEnumerationType_location_dataSource_string_enclosingRange___block_invoke_2(void *a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  if ([a3 containsLocation:a1[4]])
  {

    *(*(a1[5] + 8) + 40) = a3;
LABEL_3:
    *(*(a1[6] + 8) + 40) = a4;
    goto LABEL_8;
  }

  if (![a4 containsLocation:a1[4]])
  {
    goto LABEL_8;
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    goto LABEL_3;
  }

  if ([objc_msgSend(a3 "endLocation")] != 1)
  {
    v10 = *(*(a1[6] + 8) + 40);
    *(*(a1[6] + 8) + 40) = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [a3 endLocation], objc_msgSend(v10, "endLocation"));
  }

LABEL_8:

  result = a2;
  *(*(a1[7] + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (double)_caretOffsetForTextLocation:(id)a3 affinity:(int64_t)a4
{
  v5 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForLocation:a3 affinity:a4];
  if (!v5)
  {
    return -1.0;
  }

  [v5 offsetForLocation:a3];
  return result;
}

+ (void)_setupCharacterSets
{
  if (_setupCharacterSets_onceToken != -1)
  {
    +[NSTextSelectionNavigation _setupCharacterSets];
  }
}

void __48__NSTextSelectionNavigation__setupCharacterSets__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AB08] "alphanumericCharacterSet")];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "symbolCharacterSet")}];
  __NSNonSkippableSet = [v0 copy];
  [v0 invert];
  __NSSkippableSet = [v0 copy];
}

- (int64_t)_horizontalDirectionForDirection:(int64_t)a3 location:(id)a4
{
  if (self->_supportsLayoutOrientation)
  {
    v5 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
    v6 = a3 - 2;
    if (a3 >= 2 && v5 == 1)
    {
      if (v6 > 3)
      {
        return 5;
      }

      else
      {
        return qword_18E8562F0[v6];
      }
    }
  }

  return a3;
}

- (int64_t)_logicalDirectionForDirection:(int64_t)a3 textSelection:(id)a4
{
  v4 = a3;
  if (a3 >= 2)
  {
    v7 = -[NSTextSelectionNavigation _horizontalDirectionForDirection:location:](self, "_horizontalDirectionForDirection:location:", a3, [objc_msgSend(objc_msgSend(a4 "textRanges")]);
    v8 = v7;
    if (v7 > 3)
    {
      return v7 == 4;
    }

    else
    {
      v9 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
      if (v9 == NSWritingDirectionNatural)
      {
        v9 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
      }

      return (v8 != 2) ^ (v9 == NSWritingDirectionRightToLeft);
    }
  }

  return v4;
}

- (id)_copyRangeForTextLineFragmentAtLocation:(id)a3 affinity:(int64_t)a4 copyEnclosingRange:(id *)a5
{
  v9 = [a3 isEqual:{objc_msgSend(objc_msgSend(-[NSTextSelectionNavigation textSelectionDataSource](self, "textSelectionDataSource"), "documentRange"), "endLocation")}];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v10 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__NSTextSelectionNavigation__copyRangeForTextLineFragmentAtLocation_affinity_copyEnclosingRange___block_invoke;
  v20[3] = &unk_1E7265CD0;
  v20[4] = a3;
  v20[5] = &v27;
  v20[7] = a4;
  v20[8] = a5;
  v20[6] = &v21;
  [v10 enumerateSubstringsFromLocation:a3 options:512 usingBlock:v20];
  v11 = v28[5];
  if (!v11 || [a3 compare:{objc_msgSend(v11, "location")}] == -1)
  {
    v12 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
    v13 = v28[5];
    v14 = a3;
    if (v13)
    {
      v14 = [v13 location];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__NSTextSelectionNavigation__copyRangeForTextLineFragmentAtLocation_affinity_copyEnclosingRange___block_invoke_2;
    v18[3] = &unk_1E7265CF8;
    v19 = v9;
    v18[4] = a3;
    v18[5] = &v27;
    v18[6] = &v21;
    v18[7] = a5;
    [v12 enumerateSubstringsFromLocation:v14 options:768 usingBlock:v18];
  }

  v15 = v28;
  v16 = v28[5];
  if (!v16 && v9)
  {
    v16 = [[NSTextRange alloc] initWithLocation:a3];
    v15 = v28;
    v28[5] = v16;
  }

  if (a5)
  {
    *a5 = v22[5];
    v16 = v15[5];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v16;
}

uint64_t __97__NSTextSelectionNavigation__copyRangeForTextLineFragmentAtLocation_affinity_copyEnclosingRange___block_invoke(void *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  if (a1[7] == 1 || (result = [objc_msgSend(a3 "location")], (result & 1) == 0))
  {
    result = a3;
    *(*(a1[5] + 8) + 40) = result;
    if (a1[8])
    {
      result = a4;
      *(*(a1[6] + 8) + 40) = result;
    }
  }

  *a5 = 1;
  return result;
}

id __97__NSTextSelectionNavigation__copyRangeForTextLineFragmentAtLocation_affinity_copyEnclosingRange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  if (*(a1 + 64) != 1 || (!*(*(*(a1 + 48) + 8) + 40) || (result = [objc_msgSend(a3 "endLocation")], result)) && (result = objc_msgSend(*(a1 + 32), "isEqual:", objc_msgSend(a3, "endLocation")), result))
  {
    result = a3;
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(a1 + 56))
    {

      result = a4;
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  *a5 = 1;
  return result;
}

- (id)_lineFragmentInfoForRange:(id)a3
{
  v5 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
  if (([v5 containsRange:a3] & 1) == 0 && (!objc_msgSend(a3, "isEmpty") || !objc_msgSend(objc_msgSend(v5, "endLocation"), "isEqual:", objc_msgSend(a3, "location"))))
  {
    return 0;
  }

  v6 = 0;
  lineFragmentInfoCache = self->_lineFragmentInfoCache;
  do
  {
    v8 = &self->super.isa + v6;
    v9 = v8[2];
    if (!v9)
    {
      v11 = v6;
      goto LABEL_16;
    }

    if ([-[objc_class textRange](v9 "textRange")])
    {
      v10 = v8[2];
    }

    else
    {
      v10 = 0;
    }

    v11 = v6 + 1;
    if (v10)
    {
      break;
    }
  }

  while (v6++ < 7);
  if (v10)
  {
    return v10;
  }

LABEL_16:
  v10 = [[__NSTextSelectionLineFragmentInfo alloc] initWithTextSelectionNavigation:self range:a3];
  if (v11 >= 8)
  {
    v13 = self->_lineFragmentInfoCache[0];
    v14 = *&self->_lineFragmentInfoCache[1];
    v15 = *&self->_lineFragmentInfoCache[3];
    v16 = *&self->_lineFragmentInfoCache[5];
    self->_lineFragmentInfoCache[6] = self->_lineFragmentInfoCache[7];
    *&self->_lineFragmentInfoCache[2] = v15;
    *&self->_lineFragmentInfoCache[4] = v16;
    *lineFragmentInfoCache = v14;
    v11 = 7;
  }

  lineFragmentInfoCache[v11] = v10;
  return v10;
}

- (id)_lineFragmentInfoForPoint:(CGPoint)a3 inContainerAtLocation:(id)a4 bounds:(CGRect)a5 layoutOrientation:(int64_t)a6 beforeLineFragment:(BOOL *)a7 afterLineFragment:(BOOL *)a8 lineFragmentRange:(id *)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = a3.y;
  v19 = a3.x;
  v21 = [(NSTextSelectionNavigation *)self textSelectionDataSourcePrivate];
  v22 = [(NSTextSelectionDataSourcePrivate *)v21 documentRange];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3052000000;
  v49 = __Block_byref_object_copy__1;
  v50 = __Block_byref_object_dispose__1;
  v51 = 0;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  if (!NSIsEmptyRect(v52))
  {
    if (a6 && self->_rotatesCoordinateSystemForLayoutOrientation)
    {
      v26 = v19 >= x + width;
      if (v19 >= x)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = v18 >= y + height;
      if (v18 >= y)
      {
LABEL_10:
        if (v26)
        {
          v25 = 0;
          v26 = 1;
          goto LABEL_22;
        }

        goto LABEL_2;
      }
    }

    v28 = [v22 location];
    if (self->_supportsContainer)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x3052000000;
      v43 = __Block_byref_object_copy__1;
      v44 = __Block_byref_object_dispose__1;
      v45 = 0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke;
      v39[3] = &unk_1E7265D20;
      v39[4] = &v40;
      [(NSTextSelectionDataSourcePrivate *)v21 enumerateContainerBoundariesFromLocation:a4 reverse:1 usingBlock:v39];
      v29 = v41[5];
      if (v29 && ([v29 isEqual:v28] & 1) == 0)
      {
        v28 = v41[5];
      }

      _Block_object_dispose(&v40, 8);
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke_2;
    v38[3] = &unk_1E7265D48;
    v38[4] = &v46;
    [(NSTextSelectionDataSourcePrivate *)v21 enumerateSubstringsFromLocation:v28 options:512 usingBlock:v38];
    v25 = 1;
    goto LABEL_22;
  }

LABEL_2:
  v23 = [(NSTextSelectionDataSourcePrivate *)v21 lineFragmentRangeForPoint:a4 inContainerAtLocation:v19, v18];
  v47[5] = v23;
  if (v23)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_12;
    }

    v24 = [(NSTextSelectionDataSourcePrivate *)v21 placementOfPoint:a4 inContainerAtLocation:v19, v18]& 6;
    if (v24 == 2)
    {
      v26 = 0;
      v25 = 1;
      goto LABEL_13;
    }

    if (v24 == 4)
    {
      v25 = 0;
      v26 = 1;
    }

    else
    {
LABEL_12:
      v26 = 0;
      v25 = 0;
    }

LABEL_13:
    v27 = -[NSTextSelectionNavigation _copyRangeForTextLineFragmentAtLocation:affinity:](self, "_copyRangeForTextLineFragmentAtLocation:affinity:", [v47[5] location], 1);
    v47[5] = v27;
    goto LABEL_22;
  }

  v26 = 0;
  v25 = 0;
LABEL_22:
  if (!v47[5])
  {
    v30 = [v22 endLocation];
    if (self->_supportsContainer)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x3052000000;
      v43 = __Block_byref_object_copy__1;
      v44 = __Block_byref_object_dispose__1;
      v45 = 0;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke_3;
      v37[3] = &unk_1E7265D20;
      v37[4] = &v40;
      [(NSTextSelectionDataSourcePrivate *)v21 enumerateContainerBoundariesFromLocation:a4 reverse:0 usingBlock:v37];
      v31 = v41[5];
      if (v31 && ([v31 isEqual:v30] & 1) == 0)
      {
        v30 = v41[5];
      }

      _Block_object_dispose(&v40, 8);
    }

    v32 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke_4;
    v36[3] = &unk_1E7265D70;
    v36[4] = v30;
    v36[5] = &v46;
    [v32 enumerateSubstringsFromLocation:v30 options:768 usingBlock:v36];
    v26 = 1;
  }

  if (a7)
  {
    *a7 = v25;
  }

  if (a8)
  {
    *a8 = v26;
  }

  if (v47[5])
  {
    v33 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForRange:?];
  }

  else
  {
    v33 = 0;
  }

  v34 = v47[5];
  if (a9)
  {
    *a9 = v34;
  }

  else
  {
  }

  _Block_object_dispose(&v46, 8);
  return v33;
}

uint64_t __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *a3 = 1;
  return result;
}

id __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

uint64_t __157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke_3(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *a3 = 1;
  return result;
}

NSTextRange *__157__NSTextSelectionNavigation__lineFragmentInfoForPoint_inContainerAtLocation_bounds_layoutOrientation_beforeLineFragment_afterLineFragment_lineFragmentRange___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  if (a4 && [objc_msgSend(a4 "endLocation")] && objc_msgSend(objc_msgSend(a3, "endLocation"), "compare:", objc_msgSend(a4, "endLocation")) == -1)
  {
    result = -[NSTextRange initWithLocation:]([NSTextRange alloc], "initWithLocation:", [a4 endLocation]);
  }

  else
  {
    result = a3;
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)_lineFragmentInfoForLocation:(id)a3 affinity:(int64_t)a4
{
  v6 = [(NSTextSelectionNavigation *)self _copyRangeForTextLineFragmentAtLocation:a3 affinity:a4];
  v7 = v6;
  if (v6 && (-[NSTextRange containsLocation:](v6, "containsLocation:", a3) || ([a3 isEqual:{-[NSTextRange endLocation](v7, "endLocation")}] & 1) != 0 || !objc_msgSend(a3, "isEqual:", objc_msgSend(objc_msgSend(-[NSTextSelectionNavigation textSelectionDataSource](self, "textSelectionDataSource"), "documentRange"), "endLocation")) || (v7, (v7 = -[NSTextRange initWithLocation:]([NSTextRange alloc], "initWithLocation:", a3)) != 0)))
  {
    v8 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForRange:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_adjustLocationForNearestCaretPosition:(id)a3 direction:(int64_t)a4
{
  v7 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
  v8 = a3;
  if (([objc_msgSend(v7 "location")] & 1) == 0 && (objc_msgSend(objc_msgSend(v7, "endLocation"), "isEqual:", a3) & 1) == 0)
  {
    v20 = 0;
    v9 = [(NSTextSelectionNavigation *)self _copyRangeForTextLineFragmentAtLocation:a3 affinity:1 copyEnclosingRange:&v20];
    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = [(NSTextSelectionNavigation *)self _horizontalDirectionForDirection:a4 location:a3];
    if (v20 && ([v9 containsLocation:a3] & 1) == 0 && (objc_msgSend(objc_msgSend(v9, "endLocation"), "isEqual:", a3) & 1) == 0 && objc_msgSend(v20, "containsLocation:", a3) && (v10 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {

      v14 = [v20 endLocation];
LABEL_28:
      v8 = v14;
      goto LABEL_29;
    }

    if ([objc_msgSend(v9 "location")])
    {
      goto LABEL_29;
    }

    v11 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForRange:v9];
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = v11;
    v13 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
    if (v10 > 3)
    {
      if (v10 != 5)
      {
        if (v10 != 4)
        {
          goto LABEL_24;
        }

LABEL_18:
        if (v13 == 1)
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }

        goto LABEL_24;
      }
    }

    else if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    if (v13 == 1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

LABEL_24:
    v19 = 1;
    v15 = [v12 caretPositionClosestToLocation:a3 visualDirection:v10 matchLocation:&v19];
    if (v15)
    {
      v16 = v15;

      v17 = 16;
      if (v19)
      {
        v17 = 8;
      }

      v14 = *(v16 + v17);
      goto LABEL_28;
    }

LABEL_29:
  }

  return v8;
}

- (BOOL)_location:(id)a3 withAffinity:(int64_t)a4 isAtBoundaryOfDestination:(int64_t)a5 onSide:(int64_t)a6
{
  if (a6 >= 2)
  {
    [NSTextSelectionNavigation _location:withAffinity:isAtBoundaryOfDestination:onSide:];
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v8 = 4;
      goto LABEL_13;
    }

    if (a5 == 4)
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_10:
    v8 = 2;
    goto LABEL_13;
  }

  if (a5 == 1)
  {
    v8 = 3;
    goto LABEL_13;
  }

  if (a5 != 2)
  {
    goto LABEL_10;
  }

  if ((a6 == 1) != a4)
  {
    return 0;
  }

  v8 = 0;
LABEL_13:
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v9 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
  v10 = 512;
  if (!a6)
  {
    v10 = 768;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__NSTextSelectionNavigation__location_withAffinity_isAtBoundaryOfDestination_onSide___block_invoke;
  v15[3] = &unk_1E7265D48;
  v15[4] = &v16;
  [v9 enumerateSubstringsFromLocation:a3 options:v8 | v10 usingBlock:v15];
  v11 = v17[5];
  if (v11)
  {
    if (a6 == 1)
    {
      v12 = [v11 location];
    }

    else
    {
      v12 = [v11 endLocation];
    }

    v13 = [v12 isEqual:a3];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v13;
}

id __85__NSTextSelectionNavigation__location_withAffinity_isAtBoundaryOfDestination_onSide___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)_logicalDestinationLocationForTextSelection:(id)a3 originLocation:(id)a4 direction:(int64_t)a5 destination:(int64_t)a6 extending:(BOOL)a7 confined:(BOOL)a8 affinity:(int64_t *)a9
{
  v9 = a8;
  v10 = a7;
  v15 = [(NSTextSelectionNavigation *)self _logicalDirectionForDirection:a5 textSelection:a3];
  v16 = [a3 textRanges];
  v17 = [objc_msgSend(v16 "firstObject")];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3052000000;
  v52 = __Block_byref_object_copy__1;
  v53 = __Block_byref_object_dispose__1;
  v54 = 0;
  if ((a6 - 5) <= 1)
  {
    if (a6 == 5 && self->_supportsContainer)
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3052000000;
      v46 = __Block_byref_object_copy__1;
      v47 = __Block_byref_object_dispose__1;
      v48 = 0;
      v18 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __138__NSTextSelectionNavigation__logicalDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity___block_invoke;
      v42[3] = &unk_1E7265D20;
      v42[4] = &v43;
      [v18 enumerateContainerBoundariesFromLocation:a4 reverse:v15 == 1 usingBlock:v42];
      a4 = v44[5];
      _Block_object_dispose(&v43, 8);
    }

    else
    {
      v21 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
      if (v15)
      {
        v22 = [v21 location];
      }

      else
      {
        v22 = [v21 endLocation];
      }

      a4 = v22;
    }

    goto LABEL_47;
  }

  v19 = v17;
  if (!v9 || (!v17 ? (v20 = [a3 affinity] == 0) : (v20 = objc_msgSend(a3, "affinity")), (v23 = -[NSTextSelectionNavigation _location:withAffinity:isAtBoundaryOfDestination:onSide:](self, "_location:withAffinity:isAtBoundaryOfDestination:onSide:", a4, v20, a6, v15), a4) ? (v24 = v23) : (v24 = 0), !v24))
  {
    if (a6 < 1)
    {
      if ((v19 | v10))
      {
        v26 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
        if (v15 == 1)
        {
          v27 = 773;
        }

        else
        {
          v27 = 517;
        }

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __138__NSTextSelectionNavigation__logicalDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity___block_invoke_3;
        v38[3] = &unk_1E7265D48;
        v38[4] = &v49;
        [v26 enumerateSubstringsFromLocation:a4 options:v27 usingBlock:v38];
      }

      else
      {
        if (v15 == 1)
        {
          v28 = [v16 firstObject];
        }

        else
        {
          v28 = [v16 lastObject];
        }

        v50[5] = v28;
        v31 = v28;
      }
    }

    else
    {
      if (((v19 | v10) & 1) == 0)
      {
        if (v15 == 1)
        {
          v25 = [objc_msgSend(v16 "firstObject")];
        }

        else
        {
          v25 = [objc_msgSend(v16 "lastObject")];
        }

        a4 = v25;
      }

      v29 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
      if (a6 > 4)
      {
        v30 = 2;
      }

      else
      {
        v30 = qword_18E856310[a6 - 1];
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __138__NSTextSelectionNavigation__logicalDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity___block_invoke_2;
      v39[3] = &unk_1E7265D98;
      v40 = a6 == 1;
      v41 = v15 == 1;
      v39[4] = a4;
      v39[5] = &v49;
      v39[6] = a6;
      [v29 enumerateSubstringsFromLocation:a4 options:((v15 == 1) << 8) | ((a6 != 1) << 9) | v30 usingBlock:v39];
    }

    v32 = v50[5];
    if (v32)
    {
      if (!v9)
      {
LABEL_42:
        v33 = v50[5];
        if (v15 == 1)
        {
          v34 = [v33 location];
        }

        else
        {
          v34 = [v33 endLocation];
        }

        a4 = v34;
        if (a6 == 2)
        {
          *a9 = v15 == 1;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v32 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
      v50[5] = v32;
      if (!v9)
      {
        goto LABEL_42;
      }
    }

    if (([v32 containsLocation:a4] & 1) == 0 && !objc_msgSend(objc_msgSend(v50[5], "endLocation"), "isEqual:", a4))
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

LABEL_47:
  v35 = a4;

  v36 = a4;
  _Block_object_dispose(&v49, 8);
  return v36;
}

id __138__NSTextSelectionNavigation__logicalDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a3 = 1;
  return result;
}

id __138__NSTextSelectionNavigation__logicalDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 56) != 1 || (v10 = [a2 length], +[NSTextSelectionNavigation _setupCharacterSets](NSTextSelectionNavigation, "_setupCharacterSets"), result = objc_msgSend(a2, "rangeOfCharacterFromSet:options:range:", __NSSkippableSet, 8, 0, v10), v12 != v10))
  {
    if ((*(a1 + 57) & 1) != 0 || !a4 || *(a1 + 48) != 2 || (result = [*(a1 + 32) compare:{objc_msgSend(a3, "endLocation")}], result == -1))
    {
      result = a3;
      *(*(*(a1 + 40) + 8) + 40) = result;
      *a5 = 1;
    }
  }

  return result;
}

id __138__NSTextSelectionNavigation__logicalDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)_visualDestinationLocationForTextSelection:(id)a3 originLocation:(id *)a4 direction:(int64_t)a5 destination:(int64_t)a6 extending:(BOOL)a7 confined:(BOOL)a8 affinity:(int64_t *)a9 crossedLine:(BOOL *)a10
{
  v92 = a8;
  v10 = a7;
  v108[1] = *MEMORY[0x1E69E9840];
  v16 = *a4;
  v17 = [a3 textRanges];
  v18 = [(NSTextSelectionNavigation *)self _horizontalDirectionForDirection:a5 location:v16];
  v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v20 = [objc_msgSend(v17 "firstObject")];
  if (a6)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18 < 2;
  }

  v22 = v21;
  if (v19 == 2 || (v22 & 1) == 0)
  {
    v90 = v19 != 2;
    [a3 anchorPositionOffset];
    if ((a6 | 2) == 2)
    {
      v24 = v23;
      v91 = v10;
      v25 = v20 | v10;
      if (a6)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = v16;
      if ((v26 & 1) == 0)
      {
        v27 = v16;
        if (v19 != 2)
        {
          v28 = (v18 == 4 ? [objc_msgSend(v17 "firstObject")] : objc_msgSend(objc_msgSend(v17, "lastObject"), "endLocation"));
          v27 = v28;
          if ([v28 isEqual:v16])
          {
            v27 = v16;
          }
        }
      }

      v29 = [objc_msgSend(v17 "firstObject")] ? *a9 : 1;
      v94 = [(NSTextSelectionNavigation *)self _copyRangeForTextLineFragmentAtLocation:v27 affinity:v29];
      if (v94)
      {
        v88 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
        v86 = a4;
        v30 = ([objc_msgSend(v17 "firstObject")] & 1) != 0 || *a9 != 1 || objc_msgSend(objc_msgSend(objc_msgSend(v17, "firstObject"), "location"), "compare:", objc_msgSend(v94, "location")) != -1;
        v87 = v30;
        if (a6 || v19 == 2)
        {
          goto LABEL_86;
        }

        v32 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
        v89 = v32;
        if (v18 == 4)
        {
          v36 = [objc_msgSend(v32 "location")];
          v34 = v89;
          if (v36)
          {
            goto LABEL_37;
          }

          v35 = [v89 location];
        }

        else
        {
          v33 = [objc_msgSend(v32 "endLocation")];
          v34 = v89;
          if (v33)
          {
            goto LABEL_37;
          }

          v35 = [v89 endLocation];
        }

        v31 = v35;
        v34 = v89;
        if (v35)
        {
LABEL_162:

          return v31;
        }

LABEL_37:
        v102 = 0;
        v103 = &v102;
        v104 = 0x3052000000;
        v105 = __Block_byref_object_copy__1;
        v106 = __Block_byref_object_dispose__1;
        v107 = 0;
        if (![v16 isEqual:{objc_msgSend(v34, "endLocation")}])
        {
          goto LABEL_41;
        }

        v37 = [v16 isEqual:{objc_msgSend(v94, "endLocation")}] ^ 1;
        if (v18 != 4)
        {
          LOBYTE(v37) = 0;
        }

        if ((v37 & 1) == 0)
        {
LABEL_41:
          v38 = v18 == 4 || v91;
          if (v38)
          {
            if (v18 == 4)
            {
              v39 = [v94 location];
              v40 = 0;
              v41 = &v98;
              v98 = 0;
              v99 = &v98;
              v100 = 0x2020000000;
              v42 = v91;
              goto LABEL_47;
            }

LABEL_51:
            v39 = [v94 endLocation];
            v98 = 0;
            v99 = &v98;
            v100 = 0x2020000000;
            v101 = 0;
            v42 = v91;
            if ((v38 & 1) != 0 || ![objc_msgSend(v17 "firstObject")] || (objc_msgSend(v94, "isEmpty") & 1) != 0 || !objc_msgSend(v27, "isEqual:", objc_msgSend(v94, "endLocation")) || *a9)
            {
              goto LABEL_56;
            }

            v40 = 1;
            v41 = v99;
LABEL_47:
            *(v41 + 24) = v40;
LABEL_56:
            v43 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v97[2] = __149__NSTextSelectionNavigation__visualDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity_crossedLine___block_invoke;
            v97[3] = &unk_1E7265DC0;
            if (v18 == 4)
            {
              v44 = 768;
            }

            else
            {
              v44 = 512;
            }

            v97[4] = v27;
            v97[5] = v39;
            v97[6] = &v98;
            v97[7] = &v102;
            [v43 enumerateSubstringsFromLocation:v39 options:v44 usingBlock:v97];
            _Block_object_dispose(&v98, 8);
            v45 = v103[5];
            if (v45)
            {
LABEL_60:
              if (v24 <= 0.0)
              {
                v46 = [a3 affinity];
                if (v42)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = v46;
                }

                [(NSTextSelectionNavigation *)self _anchorPositionOffsetForLocation:v16 textSelection:a3 affinity:v47];
                v24 = v48;
                v45 = v103[5];
              }

              v49 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForRange:v45];
              v50 = [v49 caretPositionClosestToOffset:v24];
              if (v50 || (v54 = [v49 numberOfCaretPositions], v54 >= 1) && (v50 = objc_msgSend(v49, "caretPositionAtIndex:", v54 - 1)) != 0)
              {
                v31 = *(v50 + 8);
                if (v42)
                {
                  v51 = [objc_msgSend(v17 "firstObject")];
                  v52 = v18 != 4;
                  if ((v51 & 1) == 0)
                  {
                    goto LABEL_81;
                  }
                }

                else
                {
                  if ([v103[5] isEmpty])
                  {
                    v53 = 0;
                  }

                  else
                  {
                    v53 = [objc_msgSend(objc_msgSend(v49 "textRange")];
                  }

                  v52 = v53 ^ 1;
                }

                *a9 = v52;
              }

              else
              {
                v31 = 0;
              }

LABEL_81:

LABEL_82:
              if (a10 && v31)
              {
                *a10 = 1;
                _Block_object_dispose(&v102, 8);
                goto LABEL_162;
              }

              _Block_object_dispose(&v102, 8);
              if (v31)
              {
                goto LABEL_162;
              }

LABEL_86:
              if ([v94 isEmpty])
              {
                goto LABEL_161;
              }

              if (![(NSTextSelectionNavigation *)self allowsNonContiguousRanges])
              {
                goto LABEL_161;
              }

              v55 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForRange:v94];
              v56 = v55;
              if (!v55 || ([v55 isMonotonicDirection] & 1) != 0)
              {
                goto LABEL_161;
              }

              if (a6)
              {
                v57 = 1;
              }

              else
              {
                v57 = v90;
              }

              if (v57)
              {
                if ((a6 | 2) != 2)
                {
                  v64 = v88 != (v18 != 2) && v87;
                  v31 = [(NSTextSelectionNavigation *)self _logicalDestinationLocationForTextSelection:a3 originLocation:*v86 direction:v64 destination:a6 extending:v91 confined:v92 affinity:a9];
                  if (!v31 || ![v94 containsLocation:v31])
                  {
                    goto LABEL_162;
                  }

                  if (a6 == 2)
                  {
                    if (v18 == 3)
                    {
                      v65 = 0;
                    }

                    else
                    {
                      v65 = [v56 numberOfCaretPositions] - 1;
                    }

                    v83 = [v56 caretPositionAtIndex:v65];
                    if (v83)
                    {
                      v31 = *(v83 + 8);
                      if (![v31 compare:{objc_msgSend(v94, "endLocation")}])
                      {
                        *a9 = 0;
                      }

                      goto LABEL_162;
                    }

                    goto LABEL_161;
                  }

LABEL_98:
                  v58 = [v56 caretIndexForEdgeLocationInTextRanges:v17 leftEdge:(v88 == 0) ^ (*a9 != 0)];
                  if (v58 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v84 = 0;
                    if (!a6)
                    {
LABEL_150:
                      if (v18 == 3)
                      {
                        v80 = v58 - 1;
                      }

                      else
                      {
                        v80 = v58 + 1;
                      }

                      if ((v80 & 0x8000000000000000) == 0 && v80 < [v56 numberOfCaretPositions])
                      {
                        v81 = [v56 caretPositionAtIndex:v80];
                        if (v81)
                        {
                          v31 = *(v81 + 8);
LABEL_157:
                          if (v31)
                          {
                            *v86 = v84;
                            if ([objc_msgSend(v17 "firstObject")])
                            {
                              *a9 = (v18 == 3) ^ (v88 == 0);
                            }

                            goto LABEL_162;
                          }
                        }
                      }

                      goto LABEL_160;
                    }
                  }

                  else
                  {
                    v63 = [v56 caretPositionAtIndex:v58];
                    if (v63)
                    {
                      v84 = *(v63 + 8);
                    }

                    else
                    {
                      v84 = 0;
                    }

                    if (!a6)
                    {
                      goto LABEL_150;
                    }

                    if (v58 < 0)
                    {
LABEL_160:

                      goto LABEL_161;
                    }
                  }

                  v93 = v18 == 3;
                  v66 = -1;
                  if (v18 != 3)
                  {
                    v66 = 1;
                  }

                  v85 = v66;
                  v67 = a6 - 1;
                  while (v58 < [v56 numberOfCaretPositions])
                  {
                    v68 = [v56 caretPositionAtIndex:v58];
                    v31 = v68;
                    if (v68)
                    {
                      v102 = 0;
                      v103 = &v102;
                      v104 = 0x3052000000;
                      v105 = __Block_byref_object_copy__1;
                      v106 = __Block_byref_object_dispose__1;
                      v107 = 0;
                      v69 = *(v68 + 25);
                      v70 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
                      if (v67 > 3)
                      {
                        v71 = 2;
                      }

                      else
                      {
                        v71 = qword_18E856310[v67];
                      }

                      v72 = v31[1];
                      v96[0] = MEMORY[0x1E69E9820];
                      v96[1] = 3221225472;
                      v96[2] = __149__NSTextSelectionNavigation__visualDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity_crossedLine___block_invoke_2;
                      v96[3] = &unk_1E7265DE8;
                      v96[4] = &v102;
                      v96[5] = a6;
                      [v70 enumerateSubstringsFromLocation:v72 options:v71 | ((v69 != v93) << 8) usingBlock:v96];
                      if (v69 == v93)
                      {
                        v73 = 768;
                      }

                      else
                      {
                        v73 = 512;
                      }

                      v74 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
                      v75 = v103[5];
                      if (v69 == v93)
                      {
                        v76 = [v75 endLocation];
                      }

                      else
                      {
                        v76 = [v75 location];
                      }

                      if (v67 > 3)
                      {
                        v77 = 2;
                      }

                      else
                      {
                        v77 = qword_18E856310[v67];
                      }

                      v95[0] = MEMORY[0x1E69E9820];
                      v95[1] = 3221225472;
                      v95[2] = __149__NSTextSelectionNavigation__visualDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity_crossedLine___block_invoke_3;
                      v95[3] = &unk_1E7265D48;
                      v95[4] = &v102;
                      [v74 enumerateSubstringsFromLocation:v76 options:v77 | v73 usingBlock:v95];
                      v108[0] = v103[5];
                      v78 = [v56 caretIndexForEdgeLocationInTextRanges:objc_msgSend(MEMORY[0x1E695DEC8] leftEdge:{"arrayWithObjects:count:", v108, 1), v18 == 3}];
                      if (v58 == v78)
                      {
                        v31 = 0;
                        v58 += v85;
                      }

                      else
                      {
                        v79 = [v56 caretPositionAtIndex:v78];
                        if (v79)
                        {
                          v31 = *(v79 + 8);
                        }

                        else
                        {
                          v31 = 0;
                        }
                      }

                      _Block_object_dispose(&v102, 8);
                    }

                    if (v31 || v58 < 0)
                    {
                      goto LABEL_157;
                    }
                  }

                  goto LABEL_160;
                }

                if (!a6)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (([objc_msgSend(v17 "firstObject")] | v91))
                {
                  goto LABEL_98;
                }

                if (!v87)
                {
                  v59 = [objc_msgSend(v17 "firstObject")];
                  v60 = [(NSTextSelectionNavigation *)self _copyRangeForTextLineFragmentAtLocation:v59 affinity:1];
                  if (v60)
                  {
                    v61 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
                    if (v61 == NSWritingDirectionNatural)
                    {
                      v61 = [NSParagraphStyle defaultWritingDirectionForLanguage:0];
                    }

                    if ((v18 == 3) != (v61 != NSWritingDirectionLeftToRight))
                    {
                      v56 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForRange:v60];
                    }
                  }
                }

                v62 = [v56 caretPositionAtIndex:{objc_msgSend(v56, "caretIndexForEdgeLocationInTextRanges:leftEdge:", v17, v18 == 3)}];
                if (v62)
                {
                  v31 = *(v62 + 8);
                  goto LABEL_162;
                }
              }

LABEL_161:
              v31 = 0;
              goto LABEL_162;
            }

LABEL_70:
            if (v18 == 4)
            {
              _Block_object_dispose(&v102, 8);
              goto LABEL_86;
            }

            v31 = [v89 endLocation];
            goto LABEL_82;
          }

          if (![v27 isEqual:{objc_msgSend(v94, "location")}] || v25 && *a9)
          {
            goto LABEL_51;
          }
        }

        v45 = v94;
        v103[5] = v45;
        v42 = v91;
        if (v45)
        {
          goto LABEL_60;
        }

        goto LABEL_70;
      }
    }
  }

  v31 = 0;
  return v31;
}

id __149__NSTextSelectionNavigation__visualDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity_crossedLine___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  result = [a4 containsLocation:*(a1 + 32)];
  if (!result || *(*(*(a1 + 48) + 8) + 24) == 1 && (result = [*(a1 + 40) isEqual:{objc_msgSend(a4, "location")}], result))
  {
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
    *a5 = 1;
  }

  return result;
}

id __149__NSTextSelectionNavigation__visualDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity_crossedLine___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 40) == 1)
  {
    +[NSTextSelectionNavigation _setupCharacterSets];
    [a2 rangeOfCharacterFromSet:__NSSkippableSet options:8];
    if (v9)
    {
      a3 = 0;
    }
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

uint64_t __149__NSTextSelectionNavigation__visualDestinationLocationForTextSelection_originLocation_direction_destination_extending_confined_affinity_crossedLine___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 isEqualToTextRange:*(*(*(a1 + 32) + 8) + 40)];
  if ((result & 1) == 0)
  {
    result = [a3 containsRange:*(*(*(a1 + 32) + 8) + 40)];
    if (result)
    {

      result = a3;
      *(*(*(a1 + 32) + 8) + 40) = result;
    }
  }

  *a5 = 1;
  return result;
}

- (id)_rangeOfCombinedLineFragmentsInRanges:(id)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v5 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
  v6 = [objc_msgSend(a3 "firstObject")];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__NSTextSelectionNavigation__rangeOfCombinedLineFragmentsInRanges___block_invoke;
  v21[3] = &unk_1E7265D48;
  v21[4] = &v22;
  [v5 enumerateSubstringsFromLocation:v6 options:0 usingBlock:v21];
  if (([objc_msgSend(a3 "firstObject")] & 1) == 0 && objc_msgSend(objc_msgSend(v23[5], "endLocation"), "compare:", objc_msgSend(objc_msgSend(a3, "lastObject"), "endLocation")) == -1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = 0;
    v7 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
    v8 = [objc_msgSend(a3 "lastObject")];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__NSTextSelectionNavigation__rangeOfCombinedLineFragmentsInRanges___block_invoke_2;
    v14[3] = &unk_1E7265D48;
    v14[4] = &v15;
    [v7 enumerateSubstringsFromLocation:v8 options:256 usingBlock:v14];
    if (v16[5])
    {

      v9 = [NSTextRange alloc];
      v10 = [v23[5] location];
      v11 = [(NSTextRange *)v9 initWithLocation:v10 endLocation:v16[5]];
      v23[5] = v11;
    }

    _Block_object_dispose(&v15, 8);
  }

  v12 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v12;
}

id __67__NSTextSelectionNavigation__rangeOfCombinedLineFragmentsInRanges___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

id __67__NSTextSelectionNavigation__rangeOfCombinedLineFragmentsInRanges___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 endLocation];
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

- (id)_rangesForSelectionStartingOffset:(double)a3 inLineFragmentInfo:(id)a4 endingOffset:(double)a5 inLineFragmentInfo:(id)a6 contiguous:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v10 = a4;
  v50[1] = *MEMORY[0x1E69E9840];
  if (a4 == a6)
  {
    v14 = 0;
  }

  else
  {
    v13 = [objc_msgSend(objc_msgSend(a4 "textRange")];
    if (v13 == 1)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 == 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v8;
    }

    if (v13 == 1)
    {
      v16 = a3;
    }

    else
    {
      v16 = a5;
    }

    if (v13 == 1)
    {
      v10 = v8;
      a3 = a5;
    }

    v8 = v15;
    a5 = v16;
  }

  v17 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
  if (!v7)
  {
    if (![objc_msgSend(objc_msgSend(v10 "textRange")])
    {
      v31 = [MEMORY[0x1E695DF70] array];
      if (a3 >= a5)
      {
        v32 = a5;
      }

      else
      {
        v32 = a3;
      }

      if (a3 >= a5)
      {
        a5 = a3;
      }

      v33 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
      v34 = [objc_msgSend(v10 "textRange")];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __125__NSTextSelectionNavigation__rangesForSelectionStartingOffset_inLineFragmentInfo_endingOffset_inLineFragmentInfo_contiguous___block_invoke;
      v46[3] = &unk_1E7265E10;
      *&v46[7] = v32;
      *&v46[8] = a5;
      v46[4] = self;
      v46[5] = v31;
      v46[6] = v8;
      [v33 enumerateSubstringsFromLocation:v34 options:0 usingBlock:v46];
      return v31;
    }

    v47 = [v10 textRange];
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  }

  v18 = [v17 baseWritingDirectionAtLocation:{objc_msgSend(objc_msgSend(v10, "textRange"), "location")}];
  v19 = [(NSTextSelectionNavigation *)self _isVisuallyContiguousNavigation];
  if (v14)
  {
    if (v19)
    {
      if (v18 == 1)
      {
        v20 = -1.79769313e308;
      }

      else
      {
        v20 = a3;
      }

      if (v18 == 1)
      {
        v21 = a3;
      }

      else
      {
        v21 = 1.79769313e308;
      }

      v22 = [v10 rangesBetweenStartingOffset:0 endOffset:v20 logicallyContinuous:v21];
      v23 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
      if (v23 == 1)
      {
        v24 = a5;
      }

      else
      {
        v24 = -1.79769313e308;
      }

      if (v23 == 1)
      {
        v25 = 1.79769313e308;
      }

      else
      {
        v25 = a5;
      }

      v26 = [v8 rangesBetweenStartingOffset:0 endOffset:v24 logicallyContinuous:v25];
      v27 = [objc_msgSend(v10 "textRange")];
      v28 = [objc_msgSend(v8 "textRange")];
      if ([v27 compare:v28] == -1)
      {
        v29 = [[NSTextRange alloc] initWithLocation:v27 endLocation:v28];
        v50[0] = v29;
        v22 = +[NSTextRange combineTextRanges:withTextRanges:usingOperator:](NSTextRange, "combineTextRanges:withTextRanges:usingOperator:", v22, [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1], 7);
      }

      return [NSTextRange combineTextRanges:v22 withTextRanges:v26 usingOperator:7];
    }

    v39 = [v10 caretPositionClosestToOffset:a3];
    v40 = [v8 caretPositionClosestToOffset:a5];
    if (v39)
    {
      v41 = *(v39 + 8);
      if (!v40)
      {
        v43 = 0;
        v31 = 0;
        if (!v41)
        {
          return v31;
        }

        goto LABEL_73;
      }

      v42 = *(v40 + 8);
      if (!v41 && v42)
      {
        v41 = *(v40 + 8);
        goto LABEL_68;
      }

      if (v41)
      {
        if (!v42)
        {
          v43 = 0;
LABEL_73:
          v45 = [[NSTextRange alloc] initWithLocation:v41 endLocation:v43];
          v49 = v45;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];

          return v31;
        }

LABEL_68:
        v44 = [v41 compare:v42];
        if (v44 == 1)
        {
          v43 = v41;
        }

        else
        {
          v43 = v42;
        }

        if (v44 == 1)
        {
          v41 = v42;
        }

        goto LABEL_73;
      }
    }

    else if (v40)
    {
      v42 = *(v40 + 8);
      v41 = v42;
      if (v42)
      {
        goto LABEL_68;
      }
    }

    return 0;
  }

  if (a5 >= a3)
  {
    v35 = a5;
  }

  else
  {
    v35 = a3;
  }

  if (a5 >= a3)
  {
    v36 = a3;
  }

  else
  {
    v36 = a5;
  }

  if (v18 == 1)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  if (v18 == 1)
  {
    v35 = v36;
  }

  return [v10 rangesBetweenStartingOffset:!v19 endOffset:v37 logicallyContinuous:v35];
}

uint64_t __125__NSTextSelectionNavigation__rangesForSelectionStartingOffset_inLineFragmentInfo_endingOffset_inLineFragmentInfo_contiguous___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = [*(a1 + 32) _lineFragmentInfoForRange:?];
  if (v8)
  {
    v9 = [v8 rangesBetweenStartingOffset:0 endOffset:*(a1 + 56) logicallyContinuous:*(a1 + 64)];
    if (v9)
    {
      [*(a1 + 40) addObject:v9];
    }
  }

  result = [objc_msgSend(a3 "location")];
  if (result != -1)
  {
    *a5 = 1;
  }

  return result;
}

- (double)_anchorPositionOffsetForLocation:(id)a3 textSelection:(id)a4 affinity:(int64_t)a5
{
  v8 = [a4 textRanges];
  v9 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForLocation:a3 affinity:a5];
  if (([objc_msgSend(v8 "firstObject")] & 1) == 0 && objc_msgSend(objc_msgSend(v9, "textRange"), "isEqual:", a3) && objc_msgSend(objc_msgSend(objc_msgSend(v8, "lastObject"), "endLocation"), "isEqual:", a3))
  {
    v9 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForLocation:a3 affinity:0];
  }

  v10 = 0.0;
  if (v9)
  {
    v11 = [v9 caretPositionAtIndex:{objc_msgSend(v9, "caretIndexForPrimaryLocation:", a3)}];
    if (v11)
    {
      return *v11;
    }
  }

  return v10;
}

- (id)_findAnchorInfoForTextSelection:(id)a3 anchorPositionOffset:(double *)a4 anchorLocation:(id *)a5
{
  if (a4)
  {
    v9 = *a4;
  }

  else
  {
    [a3 anchorPositionOffset];
    v9 = v10;
  }

  v11 = [a3 selectionAnchorLocation];
  v12 = v11;
  if (!v11)
  {
    v12 = [objc_msgSend(objc_msgSend(a3 "textRanges")];
  }

  v13 = -[NSTextSelectionNavigation _lineFragmentInfoForLocation:affinity:](self, "_lineFragmentInfoForLocation:affinity:", v12, [a3 affinity]);
  v14 = v13;
  if (v11 || !v13)
  {
    goto LABEL_16;
  }

  if (v9 != 0.0)
  {
    v17 = [v13 caretPositionClosestToOffset:v9];
    if (!v17)
    {
      goto LABEL_21;
    }

    v11 = *(v17 + 8);
LABEL_16:
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = [v13 caretIndexForPrimaryLocation:{objc_msgSend(objc_msgSend(objc_msgSend(a3, "textRanges"), "firstObject"), "location")}];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL && (v16 = [v14 caretPositionAtIndex:v15]) != 0 || (v16 = objc_msgSend(v14, "caretPositionClosestToOffset:", v9)) != 0)
  {
    v11 = *(v16 + 8);
    v9 = *v16;
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_17:
    *a4 = v9;
    goto LABEL_18;
  }

LABEL_21:
  v11 = 0;
  if (a4)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a5)
  {
    *a5 = v11;
  }

  return v14;
}

- (unsigned)_bidiLevelAtLocation:(id)a3 affinity:(int64_t)a4
{
  v5 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForLocation:a3 affinity:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 caretIndexForPrimaryLocation:a3];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [v6 caretPositionAtIndex:v7];
  if (v8)
  {
    LOBYTE(v8) = *(v8 + 25);
  }

  return v8;
}

- (id)_mergeVisuallyContiguousRanges:(id)a3 withRanges:(id)a4
{
  v5 = a3;
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  v8 = [a4 count];
  if (!v7 || !v8)
  {
    if (!v7)
    {
      return a4;
    }

    return v5;
  }

  v9 = [objc_msgSend(objc_msgSend(v5 "lastObject")];
  v10 = v5;
  v11 = a4;
  if (v9 != 1 || (v12 = [objc_msgSend(objc_msgSend(a4 "lastObject")], v10 = a4, v11 = v5, v12 != 1))
  {
    v14 = [objc_msgSend(v10 "firstObject")];
    v15 = [objc_msgSend(v11 "lastObject")];
    v16 = [v14 compare:v15];
    if (v16 == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    if (v16 != 1)
    {
      v14 = v15;
    }

    v18 = [-[NSTextSelectionNavigation _lineFragmentInfoForLocation:affinity:](self _lineFragmentInfoForLocation:v17 affinity:{1), "textRange"}];
    v19 = [-[NSTextSelectionNavigation _lineFragmentInfoForLocation:affinity:](self _lineFragmentInfoForLocation:v14 affinity:{0), "textRange"}];
    if ([objc_msgSend(v18 "endLocation")] == -1)
    {
      v20 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [v18 endLocation], objc_msgSend(v19, "location"));
      v21[0] = v20;
      v5 = +[NSTextRange combineTextRanges:withTextRanges:usingOperator:](NSTextRange, "combineTextRanges:withTextRanges:usingOperator:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1], v5, 7);
    }

    if (a4)
    {
      return [NSTextRange combineTextRanges:v5 withTextRanges:a4 usingOperator:7];
    }

    return v5;
  }

  return [NSTextRange combineTextRanges:v5 withTextRanges:a4 usingOperator:3];
}

- (NSTextSelectionNavigation)initWithDataSource:(id)dataSource
{
  v7.receiver = self;
  v7.super_class = NSTextSelectionNavigation;
  v4 = [(NSTextSelectionNavigation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(NSTextSelectionNavigation *)v4 setTextSelectionDataSource:dataSource];
    v5->_supportsContainer = objc_opt_respondsToSelector() & 1;
    v5->_supportsLayoutOrientation = objc_opt_respondsToSelector() & 1;
    v5->_allowsNonContiguousRanges = 1;
    if (visualBidiSelectionEnabled_once != -1)
    {
      [NSTextSelectionNavigation initWithDataSource:];
    }

    v5->_prefersVisuallyContiguousNavigation = visualBidiSelectionEnabled_result;
  }

  return v5;
}

- (NSTextSelection)destinationSelectionForTextSelection:(NSTextSelection *)textSelection direction:(NSTextSelectionNavigationDirection)direction destination:(NSTextSelectionNavigationDestination)destination extending:(BOOL)extending confined:(BOOL)confined
{
  v7 = confined;
  v8 = extending;
  v11 = textSelection;
  v66[1] = *MEMORY[0x1E69E9840];
  v13 = [(NSTextSelection *)textSelection textRanges];
  v65 = 0;
  v14 = [(NSTextSelection *)v11 affinity];
  v64 = v14;
  v63 = 0;
  context = objc_autoreleasePoolPush();
  if ([-[NSArray firstObject](v13 "firstObject")])
  {
    v15 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
    v16 = -[NSTextSelectionNavigation _logicalDirectionForDirection:textSelection:](self, "_logicalDirectionForDirection:textSelection:", direction, v11) ? [v15 location] : objc_msgSend(v15, "endLocation");
    if ([objc_msgSend(-[NSArray firstObject](v13 "firstObject")])
    {
      goto LABEL_61;
    }
  }

  v17 = (v8 && v14 ? [-[NSArray lastObject](v13 "lastObject")] : objc_msgSend(-[NSArray firstObject](v13, "firstObject"), "location"));
  v65 = v17;
  v18 = [(NSTextSelectionNavigation *)self _visualDestinationLocationForTextSelection:v11 originLocation:&v65 direction:direction destination:destination extending:v8 confined:v7 affinity:&v64 crossedLine:&v63];
  v19 = v18;
  if (!v18)
  {
    v19 = [(NSTextSelectionNavigation *)self _logicalDestinationLocationForTextSelection:v11 originLocation:v65 direction:direction destination:destination extending:v8 confined:v7 affinity:&v64];
    if (!v19)
    {
      goto LABEL_61;
    }
  }

  v20 = v65;
  v21 = [v65 compare:v19];
  v50 = [(NSTextSelectionNavigation *)self _adjustLocationForNearestCaretPosition:v19 direction:direction];
  if (!v8)
  {
    v23 = 0;
    goto LABEL_54;
  }

  if (!v21)
  {
    goto LABEL_61;
  }

  v22 = [(NSTextSelection *)v11 textRanges];
  v23 = v22;
  if (v21 == 1)
  {
    v19 = v65;
    v20 = v50;
  }

  if (v18)
  {
    v24 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForLocation:v20 affinity:1];
    v25 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForLocation:v19 affinity:1];
    v26 = 0;
    if (v24)
    {
      v27 = v25;
      if (v25)
      {
        [v24 offsetForLocation:v20];
        v29 = v28;
        [v27 offsetForLocation:v19];
        v31 = 0.0;
        if (v29 >= 0.0)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0.0;
        }

        if (v30 >= 0.0)
        {
          v31 = v30;
        }

        v33 = [(NSTextSelectionNavigation *)self _rangesForSelectionStartingOffset:v24 inLineFragmentInfo:v27 endingOffset:1 inLineFragmentInfo:v32 contiguous:v31];
        if ([(NSTextSelectionNavigation *)self _isVisuallyContiguousNavigation])
        {
          v34 = [(NSTextSelectionNavigation *)self _mergeVisuallyContiguousRanges:v33 withRanges:v23];
        }

        else
        {
          v34 = [NSTextRange combineTextRanges:v33 withTextRanges:v23 usingOperator:3];
        }

        v23 = v34;
        v26 = 0;
      }
    }

    if (!v23)
    {
      goto LABEL_54;
    }

LABEL_53:
    v45 = [NSTextSelection alloc];
    v23 = [(NSTextSelection *)v45 initWithRanges:v23 affinity:v64 granularity:[(NSTextSelection *)v11 granularity]];

    goto LABEL_54;
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3052000000;
  v60 = __Block_byref_object_copy__1;
  v61 = __Block_byref_object_dispose__1;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v50 compare:{objc_msgSend(-[NSArray firstObject](v22, "firstObject"), "location")}] == -1)
  {
    v37 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", v50, [-[NSTextSelection firstObject](v23 "firstObject")]);
    v58[5] = v37;
    v54[3] = 0;
    v64 = 0;
  }

  else if ([objc_msgSend(-[NSTextSelection lastObject](v23 "lastObject")] == -1)
  {
    v35 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [-[NSTextSelection lastObject](v23 "lastObject")], v50);
    v58[5] = v35;
    v36 = [(NSTextSelection *)v23 count];
    v54[3] = v36 - 1;
    v64 = 1;
  }

  if (v58[5])
  {
    v38 = [(NSTextSelection *)v23 mutableCopy];
    [(NSTextSelection *)v38 replaceObjectAtIndex:v54[3] withObject:v58[5]];

    v26 = v38;
  }

  else
  {
    v39 = [v65 compare:{objc_msgSend(-[NSTextSelection firstObject](v23, "firstObject"), "location")}];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __107__NSTextSelectionNavigation_destinationSelectionForTextSelection_direction_destination_extending_confined___block_invoke;
    v51[3] = &unk_1E7265E38;
    v52 = v39 != 0;
    v40 = 1;
    if (!v39)
    {
      v40 = -1;
    }

    v51[4] = v50;
    v51[5] = &v57;
    v51[6] = &v53;
    v51[7] = v40;
    [(NSTextSelection *)v23 enumerateObjectsWithOptions:2 * (v39 != 0) usingBlock:v51, COERCE_DOUBLE(3221225472)];
    if (v58[5])
    {
      v41 = v54[3];
      if (v39)
      {
        v42 = 0;
      }

      else
      {
        v43 = [(NSTextSelection *)v23 count];
        v42 = v41 + 1;
        v41 = v43 + ~v54[3];
      }

      if (v41)
      {
        v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v38 = v44;
        if (v39)
        {
          [(NSTextSelection *)v44 replaceObjectsInRange:0 withObjectsFromArray:0 range:v23, v42, v41];
        }

        [(NSTextSelection *)v38 addObject:v58[5]];
        if (!v39)
        {
          [(NSTextSelection *)v38 replaceObjectsInRange:[(NSTextSelection *)v38 count] withObjectsFromArray:0 range:v23, v42, v41];
        }

        v26 = v38;
      }

      else
      {
        v66[0] = v58[5];
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
        v26 = 0;
      }
    }

    else
    {
      v38 = 0;
      v26 = 0;
      v64 = 1;
    }
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  v23 = v38;
  if (v38)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (!v23 && v50)
  {
    v46 = [NSTextSelection alloc];
    v23 = [(NSTextSelection *)v46 initWithLocation:v50 affinity:v64];
  }

  if (v23)
  {
    [(NSTextSelection *)v11 anchorPositionOffset];
    if (v8)
    {
      if (destination == NSTextSelectionNavigationDestinationCharacter)
      {
        goto LABEL_70;
      }
    }

    else if (destination)
    {
      goto LABEL_64;
    }

    if (v63)
    {
LABEL_70:
      [(NSTextSelection *)v23 setAnchorPositionOffset:?];
      objc_autoreleasePoolPop(context);
      return v23;
    }

LABEL_64:
    v47 = [(NSTextSelection *)v23 affinity];
    if ([-[NSArray firstObject](-[NSTextSelection textRanges](v23 "textRanges")])
    {
      if ([objc_msgSend(-[NSArray firstObject](-[NSTextSelection textRanges](v23 "textRanges")])
      {
        v47 = 1;
      }

      else if ([objc_msgSend(-[NSArray lastObject](-[NSTextSelection textRanges](v23 "textRanges")])
      {
        v47 = 0;
      }
    }

    [(NSTextSelectionNavigation *)self _anchorPositionOffsetForLocation:v50 textSelection:v23 affinity:v47];
    goto LABEL_70;
  }

LABEL_61:
  objc_autoreleasePoolPop(context);
  return v11;
}

uint64_t __107__NSTextSelectionNavigation_destinationSelectionForTextSelection_direction_destination_extending_confined___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v9 = [a2 location];
  }

  else
  {
    v9 = [a2 endLocation];
  }

  result = [v8 compare:v9];
  if (result == *(a1 + 56))
  {
    v11 = *(a1 + 64);
    v12 = [NSTextRange alloc];
    if (v11 == 1)
    {
      v13 = [a2 location];
      v14 = *(a1 + 32);
      v15 = v12;
    }

    else
    {
      v16 = *(a1 + 32);
      v14 = [a2 endLocation];
      v15 = v12;
      v13 = v16;
    }

    result = [(NSTextRange *)v15 initWithLocation:v13 endLocation:v14];
    *(*(*(a1 + 40) + 8) + 40) = result;
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)textSelectionForSelectionGranularity:(int64_t)a3 enclosingPoint:(CGPoint)a4 inContainerAtLocation:(id)a5 bounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4.y;
  v12 = a4.x;
  if (self->_supportsLayoutOrientation)
  {
    v15 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
  }

  else
  {
    v15 = 0;
  }

  v25 = 0;
  v16 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForPoint:a5 inContainerAtLocation:v15 bounds:&v25 + 1 layoutOrientation:&v25 beforeLineFragment:0 afterLineFragment:v12 lineFragmentRange:v11, x, y, width, height];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if (HIBYTE(v25) == 1)
  {
    v18 = [v16 logicalFirstCaret];
LABEL_10:
    v20 = *v18;
    goto LABEL_14;
  }

  if (v25 == 1)
  {
    v18 = [v16 logicalLastCaret];
    goto LABEL_10;
  }

  if (v15 != 0 && self->_rotatesCoordinateSystemForLayoutOrientation)
  {
    v20 = v11;
  }

  else
  {
    v20 = v12;
  }

LABEL_14:
  v21 = [v17 textRangeOfCharacterAtOffset:0 fractionOfDistanceThroughGlyph:v20];
  if (v21)
  {
    v22 = [[NSTextSelection alloc] initWithRange:v21 affinity:0 granularity:0];
    v23 = [(NSTextSelectionNavigation *)self textSelectionForSelectionGranularity:a3 enclosingTextSelection:v22];

    v19 = v23;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (NSArray)textSelectionsInteractingAtPoint:(CGPoint)point inContainerAtLocation:(id)containerLocation anchors:(NSArray *)anchors modifiers:(NSTextSelectionNavigationModifier)modifiers selecting:(BOOL)selecting bounds:(CGRect)bounds
{
  v9 = modifiers;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = point.y;
  v17 = point.x;
  v86[1] = *MEMORY[0x1E69E9840];
  if (self->_supportsLayoutOrientation)
  {
    v19 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
  }

  else
  {
    v19 = 0;
  }

  rotatesCoordinateSystemForLayoutOrientation = self->_rotatesCoordinateSystemForLayoutOrientation;
  v82 = 0;
  if (v19 != 0 && rotatesCoordinateSystemForLayoutOrientation)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  v81 = 0;
  v22 = [(NSTextSelectionNavigation *)self _lineFragmentInfoForPoint:containerLocation inContainerAtLocation:v17 bounds:v16 layoutOrientation:x beforeLineFragment:y afterLineFragment:width lineFragmentRange:height];
  v80 = 0;
  if ([(NSArray *)anchors count]<= 1)
  {
    self->_multipleSelectionAnchor = 0;
  }

  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke;
  v75[3] = &unk_1E7265E60;
  v75[4] = &v76;
  [(NSArray *)anchors enumerateObjectsUsingBlock:v75];
  if ((v77[3] & 1) == 0)
  {
    self->_multipleSelectionAnchor = 0;
  }

  if (!v22)
  {
    v24 = 0;
    goto LABEL_63;
  }

  if (HIBYTE(v82) == 1)
  {
    v23 = [v22 logicalFirstCaret];
  }

  else if (v82 == 1)
  {
    v23 = [v22 logicalLastCaret];
  }

  else
  {
    v23 = [v22 caretPositionClosestToOffset:v21];
  }

  v25 = v23;
  v26 = v22;
  if (v25)
  {
    if (self->_multipleSelectionAnchor)
    {
      v27 = [(NSArray *)anchors firstObject];
    }

    else
    {
      v27 = [(NSArray *)anchors lastObject];
    }

    v28 = v27;
    [v27 anchorPositionOffset];
    v74 = v29;
    if (v28)
    {
      v30 = [(NSTextSelectionNavigation *)self _findAnchorInfoForTextSelection:v28 anchorPositionOffset:&v74 anchorLocation:&v80];
    }

    else
    {
      v30 = 0;
    }

    v31 = *v25;
    v32 = v30;
    if ((v9 & 3) == 0 || !v30 || ![v28 granularity] && ((v33 = objc_msgSend(objc_msgSend(v22, "textRange"), "isEqualToTextRange:", objc_msgSend(v30, "textRange")), v74 == v31) ? (v34 = v33) : (v34 = 0), v34 == 1))
    {
      if ([v81 isEmpty])
      {
        v35 = 1;
      }

      else
      {
        v35 = [objc_msgSend(v81 "endLocation")] ^ 1;
      }

      v39 = [[NSTextSelection alloc] initWithLocation:*(v25 + 8) affinity:v35];
      v40 = v39;
      if ((v9 & 2) != 0)
      {
        v41 = v21;
      }

      else
      {
        v41 = v31;
      }

      [(NSTextSelection *)v39 setAnchorPositionOffset:v41];
      [(NSTextSelection *)v40 setSecondarySelectionLocation:*(v25 + 16)];
      [(NSTextSelection *)v40 setLogical:0];
      if (v9 & 4) != 0 && (v77[3])
      {
        v69 = 0;
        v70 = &v69;
        v71 = 0x3010000000;
        v72 = "";
        v73 = xmmword_18E856180;
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        LOBYTE(v63) = 0;
        multipleSelectionAnchor = self->_multipleSelectionAnchor;
        v43 = multipleSelectionAnchor == 0;
        v44 = multipleSelectionAnchor != 0;
        v45 = v43;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_2;
        v67[3] = &unk_1E7265E88;
        v67[7] = &v60;
        v67[8] = v25;
        v68 = v45;
        v67[5] = anchors;
        v67[6] = &v69;
        v67[4] = self;
        [(NSArray *)anchors enumerateObjectsWithOptions:2 * v44 usingBlock:v67];
        v46 = [MEMORY[0x1E695DF70] array];
        [v46 addObject:v40];
        [v46 replaceObjectsInRange:*(v61 + 24) ^ 1 withObjectsFromArray:0 range:{anchors, v70[4], v70[5]}];
        v24 = v46;
        _Block_object_dispose(&v60, 8);
        _Block_object_dispose(&v69, 8);
        goto LABEL_61;
      }

      v86[0] = v40;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
      goto LABEL_53;
    }

    if ((v9 & 6) != 0)
    {
      v36 = [(NSTextSelectionNavigation *)self _rangesForSelectionStartingOffset:v30 inLineFragmentInfo:v22 endingOffset:0 inLineFragmentInfo:v74 contiguous:v21];
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_5;
      v57[3] = &unk_1E7265F00;
      v58 = (v9 & 2) == 0;
      v57[4] = v37;
      v57[5] = 0;
      *&v57[6] = v74;
      [v36 enumerateObjectsUsingBlock:v57];
      if ((v9 & 2) != 0)
      {
        v40 = [[NSTextSelection alloc] initWithRanges:v37 affinity:1 granularity:0];
        [(NSTextSelection *)v40 setAnchorPositionOffset:v74];
        [(NSTextSelection *)v40 setLogical:0];
        v83 = v40;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];

        goto LABEL_61;
      }

      v24 = v37;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      LOBYTE(v72) = 0;
      if (!v80)
      {
        v80 = [objc_msgSend(objc_msgSend(v28 "textRanges")];
      }

      v38 = [-[NSArray firstObject](v24 "firstObject")];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_6;
      v56[3] = &unk_1E7265EB0;
      v56[4] = v80;
      v56[5] = &v69;
      [v38 enumerateObjectsUsingBlock:v56];
      if ((v70[3] & 1) == 0)
      {
        self->_multipleSelectionAnchor = 1;
      }

      _Block_object_dispose(&v69, 8);
    }

    else
    {
      v24 = [(NSTextSelectionNavigation *)self _rangesForSelectionStartingOffset:v30 inLineFragmentInfo:v22 endingOffset:1 inLineFragmentInfo:v74 contiguous:v31];
      if (v24)
      {
        v48 = (!v80 || [v80 compare:*(v25 + 8)] != 1) && !objc_msgSend(objc_msgSend(v81, "endLocation"), "isEqual:", *(v25 + 8));
        if ([v28 granularity] && (objc_msgSend(objc_msgSend(objc_msgSend(v28, "textRanges"), "firstObject"), "isEmpty") & 1) == 0)
        {
          v69 = 0;
          v70 = &v69;
          v71 = 0x3052000000;
          v72 = __Block_byref_object_copy__1;
          *&v73 = __Block_byref_object_dispose__1;
          *(&v73 + 1) = 0;
          v51 = [v28 textRanges];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_3;
          v66[3] = &unk_1E7265EB0;
          v66[4] = v80;
          v66[5] = &v69;
          [v51 enumerateObjectsUsingBlock:v66];
          if (v70[5])
          {
            if ([-[NSArray firstObject](v24 "firstObject")])
            {
              v85 = v70[5];
              v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
            }

            else
            {
              v60 = 0;
              v61 = &v60;
              v62 = 0x3052000000;
              v63 = __Block_byref_object_copy__1;
              v64 = __Block_byref_object_dispose__1;
              v65 = 0;
              v59[0] = MEMORY[0x1E69E9820];
              v59[1] = 3221225472;
              v59[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_4;
              v59[3] = &unk_1E7265ED8;
              v59[5] = &v69;
              v59[6] = &v60;
              v59[4] = v24;
              [(NSArray *)v24 enumerateObjectsUsingBlock:v59];
              v52 = v61[5];
              if (v52)
              {
                v24 = v52;
              }

              _Block_object_dispose(&v60, 8);
            }
          }

          _Block_object_dispose(&v69, 8);
        }

        v40 = -[NSTextSelection initWithRanges:affinity:granularity:]([NSTextSelection alloc], "initWithRanges:affinity:granularity:", v24, v48, [v28 granularity]);
        if ([(NSTextSelection *)v40 granularity])
        {
          v53 = -[NSTextSelectionNavigation textSelectionForSelectionGranularity:enclosingTextSelection:](self, "textSelectionForSelectionGranularity:enclosingTextSelection:", [v28 granularity], v40);

          v40 = v53;
        }

        [(NSTextSelection *)v40 setAnchorPositionOffset:v74];
        [(NSTextSelection *)v40 setLogical:0];
        v84 = v40;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
LABEL_53:
        v24 = v47;
LABEL_61:

        goto LABEL_62;
      }
    }

    v40 = 0;
    goto LABEL_61;
  }

  v24 = 0;
LABEL_62:

LABEL_63:
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_7;
  v54[3] = &unk_1E7265F28;
  v55 = selecting;
  v54[4] = v80;
  [(NSArray *)v24 enumerateObjectsUsingBlock:v54];
  if (!selecting)
  {
    self->_multipleSelectionAnchor = 0;
  }

  if (v24)
  {
    v49 = v24;
  }

  else
  {
    v49 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v76, 8);
  return v49;
}

uint64_t __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isTransient];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) _rangeOfCombinedLineFragmentsInRanges:{objc_msgSend(a2, "textRanges")}];
  result = [*(*(a1 + 64) + 8) compare:{objc_msgSend(v7, "location")}];
  v9 = result;
  if (*(a1 + 72) == 1)
  {
    if (result == 1)
    {
      result = [*(*(a1 + 64) + 8) compare:{objc_msgSend(v7, "endLocation")}];
      if (result != -1)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (a3 || result != -1)
    {
LABEL_12:
      v11 = *(*(a1 + 48) + 8);
      *(v11 + 32) = 0;
      *(v11 + 40) = a3;
      goto LABEL_14;
    }

    *(*(*(a1 + 48) + 8) + 32) = xmmword_18E856290;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(a1 + 32) + 80) = 1;
  }

  else
  {
    result = [*(*(a1 + 64) + 8) compare:{objc_msgSend(v7, "endLocation")}];
    if (result == -1)
    {
      return result;
    }

    result = [*(a1 + 40) count];
    if (result - 1 != a3 || v9 == -1)
    {
      result = [*(a1 + 40) count];
      v12 = *(*(a1 + 48) + 8);
      *(v12 + 32) = a3;
      *(v12 + 40) = result - a3;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v10 = *(*(a1 + 48) + 8);
      *(v10 + 32) = a3;
      *(v10 + 40) = 1;
      *(*(a1 + 32) + 80) = 0;
    }
  }

LABEL_14:
  *a4 = 1;
  return result;
}

id __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsLocation:*(a1 + 32)];
  if (result)
  {
    result = a2;
    *(*(*(a1 + 40) + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

uint64_t __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "location")] & 1) != 0 || (result = objc_msgSend(objc_msgSend(a2, "location"), "isEqual:", objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "endLocation")), result))
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) mutableCopy];
    result = [*(*(*(a1 + 48) + 8) + 40) replaceObjectAtIndex:a3 withObject:{objc_msgSend(a2, "textRangeByFormingUnionWithTextRange:", *(*(*(a1 + 40) + 8) + 40))}];
    *a4 = 1;
  }

  return result;
}

void __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_5(uint64_t a1, void *a2)
{
  if (*(a1 + 56) == 1)
  {
    v8 = [[NSTextSelection alloc] initWithRanges:*(a1 + 32) affinity:1 granularity:0];
    [*(a1 + 40) setAnchorPositionOffset:*(a1 + 48)];
    [*(a1 + 40) setLogical:0];
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    v4 = [a2 firstObject];
    v5 = [*(a1 + 32) count];
    if (v5)
    {
      v6 = v5;
      if ([v4 isEmpty])
      {
        return;
      }

      if (v6 == 1 && [objc_msgSend(*(a1 + 32) "firstObject")])
      {
        [*(a1 + 32) removeObjectAtIndex:0];
      }
    }

    v7 = *(a1 + 32);

    [v7 addObjectsFromArray:a2];
  }
}

uint64_t __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsLocation:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __119__NSTextSelectionNavigation_textSelectionsInteractingAtPoint_inContainerAtLocation_anchors_modifiers_selecting_bounds___block_invoke_7(uint64_t a1, void *a2)
{
  [a2 setTransient:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [a2 setSelectionAnchorLocation:v4];
}

- (NSTextSelection)textSelectionForSelectionGranularity:(NSTextSelectionGranularity)selectionGranularity enclosingTextSelection:(NSTextSelection *)textSelection
{
  v7 = [(NSArray *)[(NSTextSelection *)textSelection textRanges] lastObject];
  v8 = [-[NSArray firstObject](-[NSTextSelection textRanges](textSelection "textRanges")];
  v9 = [v7 endLocation];
  v10 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
  if (!v10)
  {
    return textSelection;
  }

  v11 = v10;
  if (([v8 isEqual:v9] & 1) == 0 && (objc_msgSend(v11, "containsLocation:", v9) & 1) == 0)
  {
    v12 = [-[NSTextSelectionNavigation textSelectionDataSource](self "textSelectionDataSource")];
    if (v12)
    {
      v11 = [v11 textRangeByFormingUnionWithTextRange:v12];
      if (!v11)
      {
        return textSelection;
      }
    }
  }

  v13 = [[NSTextSelection alloc] initWithRange:v11 affinity:1 granularity:selectionGranularity];

  return v13;
}

- (id)resolvedInsertionLocationForTextSelection:(NSTextSelection *)textSelection writingDirection:(NSTextSelectionNavigationWritingDirection)writingDirection
{
  if (![-[NSArray firstObject](-[NSTextSelection textRanges](textSelection "textRanges")])
  {
    return 0;
  }

  if ((-[NSTextSelectionNavigation _bidiLevelAtLocation:affinity:](self, "_bidiLevelAtLocation:affinity:", [-[NSArray firstObject](-[NSTextSelection textRanges](textSelection "textRanges")], -[NSTextSelection affinity](textSelection, "affinity")) & 1) == writingDirection)
  {
    v7 = [(NSArray *)[(NSTextSelection *)textSelection textRanges] firstObject];

    return [v7 location];
  }

  else
  {

    return [(NSTextSelection *)textSelection secondarySelectionLocation];
  }
}

- (id)deletionRangesForTextSelection:(id)a3 direction:(int64_t)a4 destination:(int64_t)a5 allowsDecomposition:(BOOL)a6 confined:(BOOL)a7
{
  v7 = a7;
  v28[1] = *MEMORY[0x1E69E9840];
  v13 = [a3 textRanges];
  if (-[NSArray count](v13, "count") == 1 && [-[NSArray firstObject](v13 "firstObject")])
  {
    if (a5)
    {
      v13 = [[(NSTextSelectionNavigation *)self destinationSelectionForTextSelection:a3 direction:a4 destination:a5 extending:1 confined:v7] textRanges];
    }

    else
    {
      v14 = [(NSTextSelectionNavigation *)self _logicalDirectionForDirection:a4 textSelection:a3];
      v15 = [-[NSArray firstObject](v13 "firstObject")];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3052000000;
      v25 = __Block_byref_object_copy__1;
      v26 = __Block_byref_object_dispose__1;
      v27 = 0;
      v16 = [(NSTextSelectionNavigation *)self textSelectionDataSource];
      v17 = 2;
      if (v14 == 1)
      {
        v17 = 262;
      }

      v18 = 512;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __111__NSTextSelectionNavigation_deletionRangesForTextSelection_direction_destination_allowsDecomposition_confined___block_invoke;
      v21[3] = &unk_1E7265F50;
      if (v14 == 1 && a6)
      {
        v18 = 0;
      }

      v21[5] = &v22;
      v21[6] = v18;
      v21[4] = self;
      [v16 enumerateSubstringsFromLocation:v15 options:v18 | v17 usingBlock:v21];
      v19 = v23[5];
      if (v19)
      {
        v28[0] = v23[5];
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
        v19 = v23[5];
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  return [(NSTextSelectionNavigation *)self _rangesWithDirectionalFormatAdjustmentsForRanges:v13];
}

uint64_t __111__NSTextSelectionNavigation_deletionRangesForTextSelection_direction_destination_allowsDecomposition_confined___block_invoke(uint64_t result, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v7 = result;
  if (!*(result + 48))
  {
    result = [a2 length];
    if (result >= 1)
    {
      v9 = result;
      if (result >= 3 && ([a2 characterAtIndex:result - 1] & 0xFC00) == 0xDC00)
      {
        if (([a2 characterAtIndex:v9 - 2] & 0xFC00) == 0xD800)
        {
          v10 = -2;
        }

        else
        {
          v10 = -1;
        }
      }

      else
      {
        v10 = -1;
      }

      result = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", [objc_msgSend(*(v7 + 32) "textSelectionDataSource")], objc_msgSend(*(*(*(v7 + 40) + 8) + 40), "endLocation"));
      *(*(*(v7 + 40) + 8) + 40) = result;
    }
  }

  if (!*(*(*(v7 + 40) + 8) + 40))
  {
    result = a3;
    *(*(*(v7 + 40) + 8) + 40) = result;
  }

  *a5 = 1;
  return result;
}

@end
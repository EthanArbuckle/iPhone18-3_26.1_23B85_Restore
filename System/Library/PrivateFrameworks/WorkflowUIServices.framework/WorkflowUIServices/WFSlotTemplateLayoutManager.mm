@interface WFSlotTemplateLayoutManager
- (BOOL)layoutManager:(id)manager shouldBreakLineByWordBeforeCharacterAtIndex:(unint64_t)index;
- (BOOL)layoutManager:(id)manager shouldSetLineFragmentRect:(CGRect *)rect lineFragmentUsedRect:(CGRect *)usedRect baselineOffset:(double *)offset inTextContainer:(id)container forGlyphRange:(_NSRange)range;
- (BOOL)shouldDrawTextAttachment:(id)attachment atCharacterIndex:(unint64_t)index;
- (CGRect)layoutManager:(id)manager boundingBoxForControlGlyphAtIndex:(unint64_t)index forTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)characterIndex;
- (UIEdgeInsets)slotBackgroundInsetsAtCharIndex:(unint64_t)index;
- (WFSlotTemplateLayoutManager)initWithUseCase:(unint64_t)case;
- (double)preferredHeightForDrawingTextAttachment:(id)attachment atCharacterIndex:(unint64_t)index withProposedHeight:(double)height;
- (int64_t)layoutManager:(id)manager shouldUseAction:(int64_t)action forControlCharacterAtIndex:(unint64_t)index;
- (unint64_t)numberOfLaidLines;
- (void)drawBackgroundForGlyphRange:(_NSRange)range atPoint:(CGPoint)point;
- (void)drawGradientInEnclosingRect:(id)rect enclosingRect:(CGRect *)enclosingRect lineFragmentPadding:(double)padding runsOffLeft:(BOOL)left runsOffRight:(BOOL)right;
- (void)enumerateEnclosingRectsForGlyphRange:(_NSRange)range insetForBackground:(BOOL)background standaloneTextAttachment:(BOOL)attachment usingBlock:(id)block;
- (void)enumerateEnclosingRectsForSlot:(id)slot includeInsideSpacing:(BOOL)spacing insetForBackground:(BOOL)background usingBlock:(id)block;
- (void)getCalculatedLineHeight:(double *)height originalFontLineHeight:(double *)lineHeight;
@end

@implementation WFSlotTemplateLayoutManager

- (CGRect)layoutManager:(id)manager boundingBoxForControlGlyphAtIndex:(unint64_t)index forTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)characterIndex
{
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  y = fragment.origin.y;
  v13 = fragment.origin.x;
  v15 = [(WFSlotTemplateLayoutManager *)self textStorage:manager];
  v16 = [v15 slotSpacingOpportunityAtCharacterIndex:characterIndex];

  if (v16 == 2)
  {
    if (x != 0.0)
    {
      v32.origin.x = v13;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      if (CGRectGetMaxX(v32) - x >= 15.0)
      {
        [(WFSlotTemplateLayoutManager *)self useCase];
        v20 = xmmword_1C841E380;
        v19 = 0uLL;
        goto LABEL_12;
      }
    }

    goto LABEL_7;
  }

  if (v16 != 1)
  {
LABEL_7:
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 16);
    goto LABEL_12;
  }

  textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
  v18 = [textStorage slotAtCharacterIndex:characterIndex effectiveRange:0 effectiveContentRange:0];

  if ([v18 standaloneTextAttachment])
  {
    v30 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 16);
  }

  else
  {
    useCase = [(WFSlotTemplateLayoutManager *)self useCase];
    v22 = 8.0;
    if (!useCase)
    {
      v22 = 6.5;
    }

    __asm { FMOV            V1.2D, #5.0 }

    *&_Q1 = v22;
    v30 = 0u;
    v31 = _Q1;
  }

  v19 = v30;
  v20 = v31;
LABEL_12:
  v28 = *(&v19 + 1);
  v29 = *(&v20 + 1);
  result.size.width = *&v20;
  result.origin.x = *&v19;
  result.size.height = v29;
  result.origin.y = v28;
  return result;
}

- (int64_t)layoutManager:(id)manager shouldUseAction:(int64_t)action forControlCharacterAtIndex:(unint64_t)index
{
  textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
  v8 = [textStorage slotSpacingOpportunityAtCharacterIndex:index];

  if (v8)
  {
    return 2;
  }

  else
  {
    return action;
  }
}

- (BOOL)layoutManager:(id)manager shouldSetLineFragmentRect:(CGRect *)rect lineFragmentUsedRect:(CGRect *)usedRect baselineOffset:(double *)offset inTextContainer:(id)container forGlyphRange:(_NSRange)range
{
  v19 = 0.0;
  v20 = 0.0;
  [(WFSlotTemplateLayoutManager *)self getCalculatedLineHeight:&v19 originalFontLineHeight:&v20, usedRect, offset, container];
  height = rect->size.height;
  v13 = v19;
  if (height < v19)
  {
    height = v19;
  }

  rect->size.height = height;
  usedRect->size.height = height;
  v14 = (v13 - v20) * -0.5;
  textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
  font = [textStorage font];
  [font descender];
  *offset = v13 + v17 + v14;

  return 1;
}

- (BOOL)layoutManager:(id)manager shouldBreakLineByWordBeforeCharacterAtIndex:(unint64_t)index
{
  v10 = xmmword_1C841E450;
  textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
  v6 = [textStorage slotAtCharacterIndex:index effectiveRange:0 effectiveContentRange:&v10];

  if (v6)
  {
    if (index < v10 || index - v10 >= *(&v10 + 1))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [v6 prefersNoWrapping] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (void)getCalculatedLineHeight:(double *)height originalFontLineHeight:(double *)lineHeight
{
  textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
  font = [textStorage font];

  textStorage2 = [(WFSlotTemplateLayoutManager *)self textStorage];
  paragraphStyle = [textStorage2 paragraphStyle];

  [font lineHeight];
  v11 = v10;
  *lineHeight = v10;
  [paragraphStyle lineHeightMultiple];
  if (v12 > 0.0)
  {
    [paragraphStyle lineHeightMultiple];
    v11 = v11 * v13;
  }

  [paragraphStyle maximumLineHeight];
  if (v14 > 0.0)
  {
    [paragraphStyle maximumLineHeight];
    if (v15 < v11)
    {
      v11 = v15;
    }
  }

  [paragraphStyle minimumLineHeight];
  if (v16 < v11)
  {
    v16 = v11;
  }

  *height = v16;
}

- (double)preferredHeightForDrawingTextAttachment:(id)attachment atCharacterIndex:(unint64_t)index withProposedHeight:(double)height
{
  v6 = [(WFSlotTemplateLayoutManager *)self useCase:attachment];
  result = height + -5.0;
  if (v6 != 1)
  {
    return height;
  }

  return result;
}

- (BOOL)shouldDrawTextAttachment:(id)attachment atCharacterIndex:(unint64_t)index
{
  if ([(WFSlotTemplateLayoutManager *)self isLayoutManagerForTextView])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
    v8 = [textStorage attribute:@"WFSlot" atIndex:index effectiveRange:0];

    textStorage2 = [(WFSlotTemplateLayoutManager *)self textStorage];
    typingSlots = [textStorage2 typingSlots];
    v6 = [typingSlots containsObject:v8] ^ 1;
  }

  return v6;
}

- (void)drawGradientInEnclosingRect:(id)rect enclosingRect:(CGRect *)enclosingRect lineFragmentPadding:(double)padding runsOffLeft:(BOOL)left runsOffRight:(BOOL)right
{
  rightCopy = right;
  leftCopy = left;
  v33 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E695DEC8];
  rectCopy = rect;
  v13 = [rectCopy colorWithAlphaComponent:0.0];
  cGColor = [v13 CGColor];
  cGColor2 = [rectCopy CGColor];

  v16 = [v11 arrayWithObjects:{cGColor, cGColor2, 0, 0, 0x3FF0000000000000}];
  v17 = CGGradientCreateWithColors(0, v16, locations);
  v18 = [MEMORY[0x1E69E09C0] currentContextWithScale:0.0];
  cGContext = [v18 CGContext];

  if (leftCopy)
  {
    CGContextSaveGState(cGContext);
    v20 = CGRectGetMinX(*enclosingRect) - padding;
    MinY = CGRectGetMinY(*enclosingRect);
    Height = CGRectGetHeight(*enclosingRect);
    v38.origin.x = v20;
    v38.origin.y = MinY;
    v38.size.width = padding;
    v38.size.height = Height;
    CGContextClipToRect(cGContext, v38);
    v39.origin.x = v20;
    v39.origin.y = MinY;
    v39.size.width = padding;
    v39.size.height = Height;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v20;
    v40.origin.y = MinY;
    v40.size.width = padding;
    v40.size.height = Height;
    MidY = CGRectGetMidY(v40);
    v41.origin.x = v20;
    v41.origin.y = MinY;
    v41.size.width = padding;
    v41.size.height = Height;
    MaxX = CGRectGetMaxX(v41);
    v42.origin.x = v20;
    v42.origin.y = MinY;
    v42.size.width = padding;
    v42.size.height = Height;
    v36.y = CGRectGetMidY(v42);
    v34.x = MinX;
    v34.y = MidY;
    v36.x = MaxX;
    CGContextDrawLinearGradient(cGContext, v17, v34, v36, 0);
    CGContextRestoreGState(cGContext);
  }

  if (rightCopy)
  {
    CGContextSaveGState(cGContext);
    v26 = CGRectGetMaxX(*enclosingRect);
    v27 = CGRectGetMinY(*enclosingRect);
    v28 = CGRectGetHeight(*enclosingRect);
    v43.origin.x = v26;
    v43.origin.y = v27;
    v43.size.width = padding;
    v43.size.height = v28;
    CGContextClipToRect(cGContext, v43);
    v44.origin.x = v26;
    v44.origin.y = v27;
    v44.size.width = padding;
    v44.size.height = v28;
    v29 = CGRectGetMinX(v44);
    v45.origin.x = v26;
    v45.origin.y = v27;
    v45.size.width = padding;
    v45.size.height = v28;
    v30 = CGRectGetMidY(v45);
    v46.origin.x = v26;
    v46.origin.y = v27;
    v46.size.width = padding;
    v46.size.height = v28;
    v31 = CGRectGetMaxX(v46);
    v47.origin.x = v26;
    v47.origin.y = v27;
    v47.size.width = padding;
    v47.size.height = v28;
    v35.y = CGRectGetMidY(v47);
    v35.x = v31;
    v37.x = v29;
    v37.y = v30;
    CGContextDrawLinearGradient(cGContext, v17, v35, v37, 0);
    CGContextRestoreGState(cGContext);
  }
}

- (void)drawBackgroundForGlyphRange:(_NSRange)range atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  length = range.length;
  location = range.location;
  if ([(WFSlotTemplateLayoutManager *)self isLayoutManagerForTextView])
  {
    v14.receiver = self;
    v14.super_class = WFSlotTemplateLayoutManager;
    [(WFSlotTemplateLayoutManager *)&v14 drawBackgroundForGlyphRange:location atPoint:length, x, y];
  }

  else
  {
    v9 = [(WFSlotTemplateLayoutManager *)self characterRangeForGlyphRange:location actualGlyphRange:length, 0];
    v11 = v10;
    textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke;
    v13[3] = &unk_1E8308230;
    v13[4] = self;
    [textStorage enumerateAttribute:@"WFSlot" inRange:v9 options:v11 usingBlock:{0, v13}];
  }
}

void __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7 && ([v7 standaloneTextAttachment] & 1) == 0)
  {
    v9 = [*(a1 + 32) textStorage];
    v10 = [v9 attribute:*MEMORY[0x1E69DB600] atIndex:a3 effectiveRange:0];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] clearColor];
    }

    v13 = v12;

    [v13 set];
    v14 = [*(a1 + 32) glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
    v16 = v15;
    v17 = [*(a1 + 32) textContainerForGlyphAtIndex:v14 effectiveRange:0];
    v18 = objc_opt_new();
    v19 = *(a1 + 32);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke_2;
    v28[3] = &unk_1E83081E0;
    v20 = v18;
    v29 = v20;
    [v19 enumerateInsetEnclosingRectsForGlyphRange:v14 usingBlock:{v16, v28}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke_3;
    v24[3] = &unk_1E8308208;
    v24[4] = *(a1 + 32);
    v25 = v20;
    v26 = v17;
    v27 = v13;
    v21 = v13;
    v22 = v17;
    v23 = v20;
    [v23 enumerateObjectsUsingBlock:v24];
  }
}

void __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696B098] wf_valueWithCGRect:?];
  [v1 addObject:v2];
}

void __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 wf_CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) extendSlotBackgroundOffEdges];
  v14 = v13;
  if (!a3 || (v13 & 1) == 0)
  {
    v17 = WFShouldReverseLayoutDirection();
    v16 = v17 ^ 1;
    if (v17)
    {
      v15 = 10;
    }

    else
    {
      v15 = 5;
    }

    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_9:
    if ([*(a1 + 40) count] - 1 != a3)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v15 = 0;
  v16 = 1;
  v17 = 1;
  if (v13)
  {
    goto LABEL_9;
  }

LABEL_10:
  v18 = WFShouldReverseLayoutDirection();
  if (v18)
  {
    v16 = v16;
  }

  else
  {
    v16 = 0;
  }

  if (v18)
  {
    v17 = 0;
  }

  else
  {
    v17 = v17;
  }

  if (v18)
  {
    v15 |= 5uLL;
  }

  else
  {
    v15 |= 0xAuLL;
  }

LABEL_19:
  [*(a1 + 48) lineFragmentPadding];
  v20 = v19;
  if (a3)
  {
    v21 = -v19;
    if (v17)
    {
      v22 = -v20;
    }

    else
    {
      v22 = 0.0;
    }

    if (!v16)
    {
      v21 = 0.0;
    }

    v6 = v22 + v6;
    v8 = v8 + 0.0;
    v25 = v6;
    v26 = v8;
    v10 = v10 - (v22 + v21);
    v27 = v10;
    v28 = v12;
  }

  if ([*(a1 + 32) useCase])
  {
    v23 = 12.0;
  }

  else
  {
    v23 = 8.60000038;
  }

  v24 = [MEMORY[0x1E69DC728] wf_bezierPathWithRoundedRect:v15 byRoundingCorners:v6 cornerRadii:{v8, v10, v12, v23, v23}];
  [v24 fill];
  if (!a3)
  {
    [*(a1 + 32) drawGradientInEnclosingRect:*(a1 + 56) enclosingRect:&v25 lineFragmentPadding:v17 runsOffLeft:v16 runsOffRight:v20];
  }
}

- (UIEdgeInsets)slotBackgroundInsetsAtCharIndex:(unint64_t)index
{
  v3 = 2.5;
  v4 = 0.0;
  v5 = 2.5;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)enumerateEnclosingRectsForGlyphRange:(_NSRange)range insetForBackground:(BOOL)background standaloneTextAttachment:(BOOL)attachment usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __123__WFSlotTemplateLayoutManager_enumerateEnclosingRectsForGlyphRange_insetForBackground_standaloneTextAttachment_usingBlock___block_invoke;
  v12[3] = &unk_1E83081B0;
  v14 = location;
  v15 = length;
  backgroundCopy = background;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [(WFSlotTemplateLayoutManager *)self enumerateLineFragmentsForGlyphRange:location usingBlock:length, v12];
}

void __123__WFSlotTemplateLayoutManager_enumerateEnclosingRectsForGlyphRange_insetForBackground_standaloneTextAttachment_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = a2;
  v35.location = a3;
  v35.length = a4;
  v18 = NSIntersectionRange(*(a1 + 48), v35);
  v19 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __123__WFSlotTemplateLayoutManager_enumerateEnclosingRectsForGlyphRange_insetForBackground_standaloneTextAttachment_usingBlock___block_invoke_2;
  v21[3] = &unk_1E8308188;
  v34 = *(a1 + 64);
  v25 = *(a1 + 48);
  v26 = a3;
  v27 = a4;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v22 = v17;
  v23 = v19;
  v32 = v18;
  v24 = *(a1 + 40);
  v33 = a5;
  v20 = v17;
  [v19 enumerateEnclosingRectsForGlyphRange:v18.location withinSelectedGlyphRange:v18.length inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v20, v21}];
}

uint64_t __123__WFSlotTemplateLayoutManager_enumerateEnclosingRectsForGlyphRange_insetForBackground_standaloneTextAttachment_usingBlock___block_invoke_2(uint64_t result, CGFloat a2, CGFloat a3, double a4, CGFloat a5)
{
  if (a4 != 0.0)
  {
    v6 = a4;
    v9 = result;
    if (*(result + 144) == 1 && *(result + 64) + *(result + 56) > *(result + 80) + *(result + 72))
    {
      if (WFShouldReverseLayoutDirection())
      {
        v23.origin.x = a2;
        v23.origin.y = a3;
        v23.size.width = v6;
        v23.size.height = a5;
        MaxX = CGRectGetMaxX(v23);
        MinX = CGRectGetMinX(*(v9 + 88));
        [*(v9 + 32) lineFragmentPadding];
        a2 = MinX + v12;
        v6 = MaxX - a2;
      }

      else
      {
        v13 = CGRectGetMaxX(*(v9 + 88)) - a2;
        [*(v9 + 32) lineFragmentPadding];
        v6 = v13 - v14;
      }
    }

    if (*(v9 + 144) == 1)
    {
      result = [*(v9 + 40) slotBackgroundInsetsAtCharIndex:{objc_msgSend(*(v9 + 40), "characterRangeForGlyphRange:actualGlyphRange:", *(v9 + 120), *(v9 + 128), 0)}];
      v15 = v20.n128_f64[0];
      v17 = a2 + v16;
      a3 = a3 + v18;
      v20.n128_f64[0] = v6 - (v16 + v19);
      a5 = a5 - (v18 + v15);
    }

    else
    {
      [*(v9 + 32) lineFragmentPadding];
      v17 = a2 - v21;
      result = [*(v9 + 32) lineFragmentPadding];
      v20.n128_f64[0] = v6 + v22 * 2.0;
    }

    if (v20.n128_f64[0] != 0.0)
    {
      return (*(*(v9 + 48) + 16))(v17, a3, v20, a5);
    }
  }

  return result;
}

- (void)enumerateEnclosingRectsForSlot:(id)slot includeInsideSpacing:(BOOL)spacing insetForBackground:(BOOL)background usingBlock:(id)block
{
  backgroundCopy = background;
  spacingCopy = spacing;
  blockCopy = block;
  slotCopy = slot;
  textStorage = [(WFSlotTemplateLayoutManager *)self textStorage];
  v12 = [textStorage characterRangeForSlot:slotCopy includingInsideSpacingOpportunities:spacingCopy];
  v14 = v13;

  v15 = [(WFSlotTemplateLayoutManager *)self glyphRangeForCharacterRange:v12 actualCharacterRange:v14, 0];
  v17 = v16;
  standaloneTextAttachment = [slotCopy standaloneTextAttachment];

  [(WFSlotTemplateLayoutManager *)self enumerateEnclosingRectsForGlyphRange:v15 insetForBackground:v17 standaloneTextAttachment:backgroundCopy usingBlock:standaloneTextAttachment, blockCopy];
}

- (unint64_t)numberOfLaidLines
{
  numberOfGlyphs = [(WFSlotTemplateLayoutManager *)self numberOfGlyphs];
  v4 = 0;
  do
  {
    v5 = v4;
    if (!numberOfGlyphs)
    {
      break;
    }

    [WFSlotTemplateLayoutManager lineFragmentRectForGlyphAtIndex:"lineFragmentRectForGlyphAtIndex:effectiveRange:" effectiveRange:?];
    IsEmpty = CGRectIsEmpty(v8);
    v4 = v5 + 1;
  }

  while (!IsEmpty);
  return v5;
}

- (WFSlotTemplateLayoutManager)initWithUseCase:(unint64_t)case
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateLayoutManager;
  v4 = [(WFSlotTemplateLayoutManager *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_useCase = case;
    [(WFSlotTemplateLayoutManager *)v4 setDelegate:v4];
    [(WFSlotTemplateLayoutManager *)v5 setShowsControlCharacters:0];
    [(WFSlotTemplateLayoutManager *)v5 setShowsInvisibleCharacters:0];
    v6 = v5;
  }

  return v5;
}

@end
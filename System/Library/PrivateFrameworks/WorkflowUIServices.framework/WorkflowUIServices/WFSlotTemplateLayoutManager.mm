@interface WFSlotTemplateLayoutManager
- (BOOL)layoutManager:(id)a3 shouldBreakLineByWordBeforeCharacterAtIndex:(unint64_t)a4;
- (BOOL)layoutManager:(id)a3 shouldSetLineFragmentRect:(CGRect *)a4 lineFragmentUsedRect:(CGRect *)a5 baselineOffset:(double *)a6 inTextContainer:(id)a7 forGlyphRange:(_NSRange)a8;
- (BOOL)shouldDrawTextAttachment:(id)a3 atCharacterIndex:(unint64_t)a4;
- (CGRect)layoutManager:(id)a3 boundingBoxForControlGlyphAtIndex:(unint64_t)a4 forTextContainer:(id)a5 proposedLineFragment:(CGRect)a6 glyphPosition:(CGPoint)a7 characterIndex:(unint64_t)a8;
- (UIEdgeInsets)slotBackgroundInsetsAtCharIndex:(unint64_t)a3;
- (WFSlotTemplateLayoutManager)initWithUseCase:(unint64_t)a3;
- (double)preferredHeightForDrawingTextAttachment:(id)a3 atCharacterIndex:(unint64_t)a4 withProposedHeight:(double)a5;
- (int64_t)layoutManager:(id)a3 shouldUseAction:(int64_t)a4 forControlCharacterAtIndex:(unint64_t)a5;
- (unint64_t)numberOfLaidLines;
- (void)drawBackgroundForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)drawGradientInEnclosingRect:(id)a3 enclosingRect:(CGRect *)a4 lineFragmentPadding:(double)a5 runsOffLeft:(BOOL)a6 runsOffRight:(BOOL)a7;
- (void)enumerateEnclosingRectsForGlyphRange:(_NSRange)a3 insetForBackground:(BOOL)a4 standaloneTextAttachment:(BOOL)a5 usingBlock:(id)a6;
- (void)enumerateEnclosingRectsForSlot:(id)a3 includeInsideSpacing:(BOOL)a4 insetForBackground:(BOOL)a5 usingBlock:(id)a6;
- (void)getCalculatedLineHeight:(double *)a3 originalFontLineHeight:(double *)a4;
@end

@implementation WFSlotTemplateLayoutManager

- (CGRect)layoutManager:(id)a3 boundingBoxForControlGlyphAtIndex:(unint64_t)a4 forTextContainer:(id)a5 proposedLineFragment:(CGRect)a6 glyphPosition:(CGPoint)a7 characterIndex:(unint64_t)a8
{
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  v13 = a6.origin.x;
  v15 = [(WFSlotTemplateLayoutManager *)self textStorage:a3];
  v16 = [v15 slotSpacingOpportunityAtCharacterIndex:a8];

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

  v17 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v18 = [v17 slotAtCharacterIndex:a8 effectiveRange:0 effectiveContentRange:0];

  if ([v18 standaloneTextAttachment])
  {
    v30 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 16);
  }

  else
  {
    v21 = [(WFSlotTemplateLayoutManager *)self useCase];
    v22 = 8.0;
    if (!v21)
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

- (int64_t)layoutManager:(id)a3 shouldUseAction:(int64_t)a4 forControlCharacterAtIndex:(unint64_t)a5
{
  v7 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v8 = [v7 slotSpacingOpportunityAtCharacterIndex:a5];

  if (v8)
  {
    return 2;
  }

  else
  {
    return a4;
  }
}

- (BOOL)layoutManager:(id)a3 shouldSetLineFragmentRect:(CGRect *)a4 lineFragmentUsedRect:(CGRect *)a5 baselineOffset:(double *)a6 inTextContainer:(id)a7 forGlyphRange:(_NSRange)a8
{
  v19 = 0.0;
  v20 = 0.0;
  [(WFSlotTemplateLayoutManager *)self getCalculatedLineHeight:&v19 originalFontLineHeight:&v20, a5, a6, a7];
  height = a4->size.height;
  v13 = v19;
  if (height < v19)
  {
    height = v19;
  }

  a4->size.height = height;
  a5->size.height = height;
  v14 = (v13 - v20) * -0.5;
  v15 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v16 = [v15 font];
  [v16 descender];
  *a6 = v13 + v17 + v14;

  return 1;
}

- (BOOL)layoutManager:(id)a3 shouldBreakLineByWordBeforeCharacterAtIndex:(unint64_t)a4
{
  v10 = xmmword_1C841E450;
  v5 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v6 = [v5 slotAtCharacterIndex:a4 effectiveRange:0 effectiveContentRange:&v10];

  if (v6)
  {
    if (a4 < v10 || a4 - v10 >= *(&v10 + 1))
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

- (void)getCalculatedLineHeight:(double *)a3 originalFontLineHeight:(double *)a4
{
  v7 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v17 = [v7 font];

  v8 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v9 = [v8 paragraphStyle];

  [v17 lineHeight];
  v11 = v10;
  *a4 = v10;
  [v9 lineHeightMultiple];
  if (v12 > 0.0)
  {
    [v9 lineHeightMultiple];
    v11 = v11 * v13;
  }

  [v9 maximumLineHeight];
  if (v14 > 0.0)
  {
    [v9 maximumLineHeight];
    if (v15 < v11)
    {
      v11 = v15;
    }
  }

  [v9 minimumLineHeight];
  if (v16 < v11)
  {
    v16 = v11;
  }

  *a3 = v16;
}

- (double)preferredHeightForDrawingTextAttachment:(id)a3 atCharacterIndex:(unint64_t)a4 withProposedHeight:(double)a5
{
  v6 = [(WFSlotTemplateLayoutManager *)self useCase:a3];
  result = a5 + -5.0;
  if (v6 != 1)
  {
    return a5;
  }

  return result;
}

- (BOOL)shouldDrawTextAttachment:(id)a3 atCharacterIndex:(unint64_t)a4
{
  if ([(WFSlotTemplateLayoutManager *)self isLayoutManagerForTextView])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [(WFSlotTemplateLayoutManager *)self textStorage];
    v8 = [v7 attribute:@"WFSlot" atIndex:a4 effectiveRange:0];

    v9 = [(WFSlotTemplateLayoutManager *)self textStorage];
    v10 = [v9 typingSlots];
    v6 = [v10 containsObject:v8] ^ 1;
  }

  return v6;
}

- (void)drawGradientInEnclosingRect:(id)a3 enclosingRect:(CGRect *)a4 lineFragmentPadding:(double)a5 runsOffLeft:(BOOL)a6 runsOffRight:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E695DEC8];
  v12 = a3;
  v13 = [v12 colorWithAlphaComponent:0.0];
  v14 = [v13 CGColor];
  v15 = [v12 CGColor];

  v16 = [v11 arrayWithObjects:{v14, v15, 0, 0, 0x3FF0000000000000}];
  v17 = CGGradientCreateWithColors(0, v16, locations);
  v18 = [MEMORY[0x1E69E09C0] currentContextWithScale:0.0];
  v19 = [v18 CGContext];

  if (v8)
  {
    CGContextSaveGState(v19);
    v20 = CGRectGetMinX(*a4) - a5;
    MinY = CGRectGetMinY(*a4);
    Height = CGRectGetHeight(*a4);
    v38.origin.x = v20;
    v38.origin.y = MinY;
    v38.size.width = a5;
    v38.size.height = Height;
    CGContextClipToRect(v19, v38);
    v39.origin.x = v20;
    v39.origin.y = MinY;
    v39.size.width = a5;
    v39.size.height = Height;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v20;
    v40.origin.y = MinY;
    v40.size.width = a5;
    v40.size.height = Height;
    MidY = CGRectGetMidY(v40);
    v41.origin.x = v20;
    v41.origin.y = MinY;
    v41.size.width = a5;
    v41.size.height = Height;
    MaxX = CGRectGetMaxX(v41);
    v42.origin.x = v20;
    v42.origin.y = MinY;
    v42.size.width = a5;
    v42.size.height = Height;
    v36.y = CGRectGetMidY(v42);
    v34.x = MinX;
    v34.y = MidY;
    v36.x = MaxX;
    CGContextDrawLinearGradient(v19, v17, v34, v36, 0);
    CGContextRestoreGState(v19);
  }

  if (v7)
  {
    CGContextSaveGState(v19);
    v26 = CGRectGetMaxX(*a4);
    v27 = CGRectGetMinY(*a4);
    v28 = CGRectGetHeight(*a4);
    v43.origin.x = v26;
    v43.origin.y = v27;
    v43.size.width = a5;
    v43.size.height = v28;
    CGContextClipToRect(v19, v43);
    v44.origin.x = v26;
    v44.origin.y = v27;
    v44.size.width = a5;
    v44.size.height = v28;
    v29 = CGRectGetMinX(v44);
    v45.origin.x = v26;
    v45.origin.y = v27;
    v45.size.width = a5;
    v45.size.height = v28;
    v30 = CGRectGetMidY(v45);
    v46.origin.x = v26;
    v46.origin.y = v27;
    v46.size.width = a5;
    v46.size.height = v28;
    v31 = CGRectGetMaxX(v46);
    v47.origin.x = v26;
    v47.origin.y = v27;
    v47.size.width = a5;
    v47.size.height = v28;
    v35.y = CGRectGetMidY(v47);
    v35.x = v31;
    v37.x = v29;
    v37.y = v30;
    CGContextDrawLinearGradient(v19, v17, v35, v37, 0);
    CGContextRestoreGState(v19);
  }
}

- (void)drawBackgroundForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  length = a3.length;
  location = a3.location;
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
    v12 = [(WFSlotTemplateLayoutManager *)self textStorage];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__WFSlotTemplateLayoutManager_drawBackgroundForGlyphRange_atPoint___block_invoke;
    v13[3] = &unk_1E8308230;
    v13[4] = self;
    [v12 enumerateAttribute:@"WFSlot" inRange:v9 options:v11 usingBlock:{0, v13}];
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

- (UIEdgeInsets)slotBackgroundInsetsAtCharIndex:(unint64_t)a3
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

- (void)enumerateEnclosingRectsForGlyphRange:(_NSRange)a3 insetForBackground:(BOOL)a4 standaloneTextAttachment:(BOOL)a5 usingBlock:(id)a6
{
  length = a3.length;
  location = a3.location;
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __123__WFSlotTemplateLayoutManager_enumerateEnclosingRectsForGlyphRange_insetForBackground_standaloneTextAttachment_usingBlock___block_invoke;
  v12[3] = &unk_1E83081B0;
  v14 = location;
  v15 = length;
  v16 = a4;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
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

- (void)enumerateEnclosingRectsForSlot:(id)a3 includeInsideSpacing:(BOOL)a4 insetForBackground:(BOOL)a5 usingBlock:(id)a6
{
  v6 = a5;
  v7 = a4;
  v19 = a6;
  v10 = a3;
  v11 = [(WFSlotTemplateLayoutManager *)self textStorage];
  v12 = [v11 characterRangeForSlot:v10 includingInsideSpacingOpportunities:v7];
  v14 = v13;

  v15 = [(WFSlotTemplateLayoutManager *)self glyphRangeForCharacterRange:v12 actualCharacterRange:v14, 0];
  v17 = v16;
  v18 = [v10 standaloneTextAttachment];

  [(WFSlotTemplateLayoutManager *)self enumerateEnclosingRectsForGlyphRange:v15 insetForBackground:v17 standaloneTextAttachment:v6 usingBlock:v18, v19];
}

- (unint64_t)numberOfLaidLines
{
  v3 = [(WFSlotTemplateLayoutManager *)self numberOfGlyphs];
  v4 = 0;
  do
  {
    v5 = v4;
    if (!v3)
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

- (WFSlotTemplateLayoutManager)initWithUseCase:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFSlotTemplateLayoutManager;
  v4 = [(WFSlotTemplateLayoutManager *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_useCase = a3;
    [(WFSlotTemplateLayoutManager *)v4 setDelegate:v4];
    [(WFSlotTemplateLayoutManager *)v5 setShowsControlCharacters:0];
    [(WFSlotTemplateLayoutManager *)v5 setShowsInvisibleCharacters:0];
    v6 = v5;
  }

  return v5;
}

@end
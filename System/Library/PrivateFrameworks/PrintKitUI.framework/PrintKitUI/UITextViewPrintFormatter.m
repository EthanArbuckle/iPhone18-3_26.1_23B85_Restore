@interface UITextViewPrintFormatter
- (CGRect)rectForPageAtIndex:(int64_t)a3;
- (NSArray)pageData;
- (double)adjustedPageBottom:(double)a3;
- (id)attributedText;
- (id)color;
- (id)font;
- (id)text;
- (int64_t)_recalcPageCount;
- (int64_t)textAlignment;
- (void)drawInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)setAttributedText:(id)a3;
- (void)setColor:(id)a3;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation UITextViewPrintFormatter

- (double)adjustedPageBottom:(double)a3
{
  v4 = [(UIViewPrintFormatter *)self view];
  v5 = [v4 textContainer];

  v6 = [v5 textLayoutManager];
  [v5 textContainerOrigin];
  v8 = v7;
  v9 = a3 - v7;
  v10 = [v6 textLayoutFragmentForPosition:{0.0, a3 - v7}];
  v11 = v10;
  if (v10)
  {
    [v10 layoutFragmentFrame];
    if (v12 + v13 > v9)
    {
      v14 = v12;
      v15 = [v11 textLineFragmentForVerticalOffset:1 requiresExactMatch:v9 - v12];
      v16 = v15;
      if (v15)
      {
        [v15 typographicBounds];
        a3 = v8 + v14 + v17;
      }
    }
  }

  return a3;
}

- (NSArray)pageData
{
  if (![(UITextViewPrintFormatter *)self initializedUsedRects]&& ![(UITextViewPrintFormatter *)self calculatingUsedRects])
  {
    [(UITextViewPrintFormatter *)self setCalculatingUsedRects:1];
    v3 = [(UIViewPrintFormatter *)self view];
    v4 = [v3 textContainer];

    v5 = [v4 textLayoutManager];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 layoutManager];
    }

    v7 = [v4 textView];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v4 && v5 | v6 && v7)
    {
      [(UIPrintFormatter *)self _pageContentRect:1];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      y = v15;
      [(UIPrintFormatter *)self _pageContentRect:0];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v75.size.height = v23;
      v71.origin.x = v10;
      v71.origin.y = v12;
      v71.size.width = v14;
      v71.size.height = y;
      v75.origin.x = v18;
      v75.origin.y = v20;
      v75.size.width = v22;
      rect2.origin.y = v75.size.height;
      v72 = CGRectIntersection(v71, v75);
      width = v72.size.width;
      v25 = [v4 widthTracksTextView];
      v26 = [v4 heightTracksTextView];
      [v4 setTextView:0];
      [v4 setWidthTracksTextView:0];
      [v4 setHeightTracksTextView:0];
      [v4 size];
      v51 = v28;
      v52 = v27;
      [v4 setSize:{width, 3.40282347e38}];
      if (v5)
      {
        v53 = v22;
        v54 = v20;
        v55 = v18;
        v48 = v26;
        v49 = v25;
        v50 = v6;
        v29 = [v5 textContentManager];
        v30 = [v29 documentRange];

        v47 = v30;
        [v5 ensureLayoutForRange:v30];
        [v5 usageBoundsForTextContainer];
        rect2.origin.x = v31;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = 0.0;
        v39 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          [(UITextViewPrintFormatter *)self adjustedPageBottom:v38 + y];
          v41 = v40 - v38;
          v73.origin.x = 0.0;
          v73.origin.y = v38;
          v73.size.width = v14;
          v73.size.height = v41;
          v76.origin.x = rect2.origin.x;
          v76.origin.y = v33;
          v76.size.width = v35;
          v76.size.height = v37;
          if (!CGRectIntersectsRect(v73, v76))
          {
            break;
          }

          *v69 = v10;
          *&v69[1] = v12;
          *&v69[2] = v14;
          *&v69[3] = v41;
          *&v69[4] = v38;
          v42 = [MEMORY[0x277CCAE60] valueWithBytes:v69 objCType:"{?={CGRect={CGPoint=dd}{CGSize=dd}}d}"];
          [v8 addObject:v42];

          v74.origin.x = 0.0;
          v74.origin.y = v38;
          v74.size.width = v14;
          v74.size.height = v41;
          y = rect2.origin.y;
          v38 = v38 + CGRectGetHeight(v74);
          v14 = v53;
          v12 = v54;
          v10 = v55;
          --v39;
        }

        while (v39);
        v6 = v50;
        v26 = v48;
        v25 = v49;
        v43 = v47;
      }

      else
      {
        *&rect2.size.width = MEMORY[0x277D85DD0];
        *&rect2.size.height = 3221225472;
        v57 = __36__UITextViewPrintFormatter_pageData__block_invoke;
        v58 = &unk_279A9C9B8;
        v59 = v4;
        v61 = v10;
        v62 = v12;
        v63 = v14;
        v64 = y;
        v60 = v8;
        v65 = v18;
        v66 = v20;
        v67 = v22;
        v68 = rect2.origin.y;
        [v6 coordinateAccess:&rect2.size];

        v43 = v59;
      }

      objc_storeStrong(&self->_pageData, v8);
      [v4 setSize:{v52, v51}];
      [v4 setWidthTracksTextView:v25];
      [v4 setHeightTracksTextView:v26];
      [v4 setTextView:v7];
    }

    else
    {
      pageData = self->_pageData;
      self->_pageData = 0;
    }

    [(UITextViewPrintFormatter *)self setInitializedUsedRects:1];
    [(UITextViewPrintFormatter *)self setCalculatingUsedRects:0];
  }

  v45 = self->_pageData;

  return v45;
}

void __36__UITextViewPrintFormatter_pageData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 allowsNonContiguousLayout])
  {
    [v3 ensureLayoutForTextContainer:*(a1 + 32)];
  }

  v26 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = [v3 glyphRangeForBoundingRect:*(a1 + 32) inTextContainer:{0.0, 0.0, v4, v5}];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
  {
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = v6 + v7;
      if ((v6 + v7) <= 1)
      {
        v11 = 1;
      }

      [v3 lineFragmentUsedRectForGlyphAtIndex:v11 - 1 effectiveRange:{0, *&v9}];
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = 0.0;
      v28.origin.y = v10;
      v28.size.width = v4;
      v28.size.height = v5;
      if (MaxY > CGRectGetMaxY(v28))
      {
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v17 = CGRectGetMaxY(v29);
        v30.origin.x = 0.0;
        v30.origin.y = v10;
        v30.size.width = v4;
        v30.size.height = v5;
        v18 = CGRectGetMaxY(v30) - v17;
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v19 = v5 - (v18 + CGRectGetHeight(v31));
        if (v19 > 0.00000011920929)
        {
          v5 = v19;
        }
      }

      *&rect.origin.y = v26;
      rect.size.height = v4;
      v24 = v5;
      v25 = v22;
      v20 = *(a1 + 40);
      v21 = [MEMORY[0x277CCAE60] valueWithBytes:&rect.origin.y objCType:"{?={CGRect={CGPoint=dd}{CGSize=dd}}d}"];
      [v20 addObject:v21];

      v26 = *(a1 + 80);
      v32.origin.x = 0.0;
      v32.origin.y = v10;
      v32.size.width = v4;
      v32.size.height = v5;
      v10 = v22 + CGRectGetHeight(v32);
      v4 = *(a1 + 96);
      v5 = *(a1 + 104);
      v6 = [v3 glyphRangeForBoundingRect:*(a1 + 32) inTextContainer:{0.0, v10, v4, v5}];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v9 = v10;
    }

    while (v7);
  }
}

- (int64_t)_recalcPageCount
{
  [(UITextViewPrintFormatter *)self setInitializedUsedRects:0];
  v3 = [(UITextViewPrintFormatter *)self pageData];
  v4 = [v3 count];

  return v4;
}

- (CGRect)rectForPageAtIndex:(int64_t)a3
{
  [(UIPrintFormatter *)self _recalcIfNecessary];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v5 = [(UITextViewPrintFormatter *)self pageData];
  v6 = [v5 objectAtIndex:{a3 - -[UIPrintFormatter startPage](self, "startPage")}];
  [v6 getValue:&v11];

  v8 = *(&v11 + 1);
  v7 = *&v11;
  v10 = *(&v12 + 1);
  v9 = *&v12;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)drawInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v53 = *MEMORY[0x277CBF3A0];
  v54 = v10;
  v55 = 0.0;
  v11 = [(UITextViewPrintFormatter *)self pageData];
  v12 = [v11 objectAtIndex:{a4 - -[UIPrintFormatter startPage](self, "startPage")}];
  [v12 getValue:&v53];

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  CGContextClipToRect(CurrentContext, v56);
  CGContextTranslateCTM(CurrentContext, x, y);
  v14 = v55;
  CGContextTranslateCTM(CurrentContext, 0.0, -v55);
  v15 = [(UIViewPrintFormatter *)self view];
  v16 = [v15 textContainer];

  v17 = [v16 textLayoutManager];
  v18 = 0;
  if (!v17)
  {
    v18 = [v16 layoutManager];
  }

  v19 = [v16 textView];
  v20 = v19;
  if (v16 && v17 | v18 && v19)
  {
    v21 = [v16 widthTracksTextView];
    v22 = [v16 heightTracksTextView];
    [v16 setTextView:0];
    [v16 setWidthTracksTextView:0];
    [v16 setHeightTracksTextView:0];
    [v16 size];
    v24 = v23;
    v26 = v25;
    [v16 setSize:{width, 3.40282347e38}];
    if (v17)
    {
      v52 = v54;
      v27 = *&v53 - *&v53;
      v28 = *(&v53 + 1) + v55 - *(&v53 + 1);
      v29 = [v17 textContentManager];
      v30 = [v29 documentRange];

      [v17 ensureLayoutForRange:v30];
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v51 = 0;
      v31 = [v17 textLayoutFragmentForPosition:{v27, v28}];
      v48[0] = 0;
      v48[1] = v48;
      v48[2] = 0x2020000000;
      v49 = 0;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __54__UITextViewPrintFormatter_drawInRect_forPageAtIndex___block_invoke;
      v40[3] = &unk_279A9CA08;
      v32 = v31;
      v41 = v32;
      v42 = v48;
      v44 = v27;
      v45 = v28;
      v46 = v52;
      v47 = CurrentContext;
      v43 = v50;
      v33 = [v17 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v40];

      _Block_object_dispose(v48, 8);
      _Block_object_dispose(v50, 8);

      v22 = v22;
      v21 = v21;
    }

    else if (v18)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __54__UITextViewPrintFormatter_drawInRect_forPageAtIndex___block_invoke_3;
      v34[3] = &unk_279A9CA30;
      v35 = v16;
      v36 = 0;
      v37 = v14;
      v38 = width;
      v39 = height;
      [v18 coordinateAccess:v34];
    }

    [v16 setSize:{v24, v26}];
    [v16 setWidthTracksTextView:v21];
    [v16 setHeightTracksTextView:v22];
    [v16 setTextView:v20];
  }

  CGContextRestoreGState(CurrentContext);
}

BOOL __54__UITextViewPrintFormatter_drawInRect_forPageAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v3 layoutFragmentFrame];
    [v4 layoutFragmentFrame];
    v6 = v5;
    v8 = v7;
    v9 = [v4 textLineFragments];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__UITextViewPrintFormatter_drawInRect_forPageAtIndex___block_invoke_2;
    v12[3] = &unk_279A9C9E0;
    v12[5] = v6;
    v12[6] = v8;
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
    v15 = *(a1 + 88);
    v12[4] = *(a1 + 48);
    [v9 enumerateObjectsUsingBlock:v12];
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);

  return (v10 & 1) == 0;
}

void __54__UITextViewPrintFormatter_drawInRect_forPageAtIndex___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  [v16 typographicBounds];
  v7 = v6;
  v9 = v8;
  v11 = *(a1 + 40) + v10;
  v13 = v12 + *(a1 + 48);
  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v6;
  v20.size.height = v8;
  if (CGRectIntersectsRect(*(a1 + 56), v20))
  {
    v18.origin.x = v11;
    v18.origin.y = v13;
    v18.size.width = v7;
    v18.size.height = v9;
    MaxY = CGRectGetMaxY(v18);
    if (MaxY <= CGRectGetMaxY(*(a1 + 56)))
    {
      [v16 drawAtPoint:*(a1 + 88) inContext:{v11, v13}];
    }
  }

  else
  {
    v19.origin.x = v11;
    v19.origin.y = v13;
    v19.size.width = v7;
    v19.size.height = v9;
    MinY = CGRectGetMinY(v19);
    if (MinY > CGRectGetMaxY(*(a1 + 56)))
    {
      *a4 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

void __54__UITextViewPrintFormatter_drawInRect_forPageAtIndex___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 allowsNonContiguousLayout])
  {
    [v9 ensureLayoutForTextContainer:*(a1 + 32)];
  }

  v3 = [v9 glyphRangeForBoundingRect:*(a1 + 32) inTextContainer:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    [v9 drawBackgroundForGlyphRange:v3 atPoint:{v4, *MEMORY[0x277CBF348], v8}];
    [v9 drawGlyphsForGlyphRange:v5 atPoint:{v6, v7, v8}];
  }
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(UITextViewPrintFormatter *)self _textView];
  [v5 setText:v4];

  [(UIPrintFormatter *)self _setNeedsRecalc];
}

- (id)text
{
  v2 = [(UITextViewPrintFormatter *)self _textView];
  v3 = [v2 text];

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(UITextViewPrintFormatter *)self _textView];
  [v5 setAttributedText:v4];

  [(UIPrintFormatter *)self _setNeedsRecalc];
}

- (id)attributedText
{
  v2 = [(UITextViewPrintFormatter *)self _textView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(UITextViewPrintFormatter *)self _textView];
  [v5 setFont:v4];

  [(UIPrintFormatter *)self _setNeedsRecalc];
}

- (id)font
{
  v2 = [(UITextViewPrintFormatter *)self _textView];
  v3 = [v2 font];

  return v3;
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v5 = [(UITextViewPrintFormatter *)self _textView];
  [v5 setTextColor:v4];
}

- (id)color
{
  v2 = [(UITextViewPrintFormatter *)self _textView];
  v3 = [v2 textColor];

  return v3;
}

- (void)setTextAlignment:(int64_t)a3
{
  v5 = [(UITextViewPrintFormatter *)self _textView];
  [v5 setTextAlignment:a3];

  [(UIPrintFormatter *)self _setNeedsRecalc];
}

- (int64_t)textAlignment
{
  v2 = [(UITextViewPrintFormatter *)self _textView];
  v3 = [v2 textAlignment];

  return v3;
}

@end
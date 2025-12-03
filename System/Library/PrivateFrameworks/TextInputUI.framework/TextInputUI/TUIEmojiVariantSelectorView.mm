@interface TUIEmojiVariantSelectorView
+ (id)emojiTextAttributes;
- (BOOL)_highlightCellAtLocation:(CGPoint)location;
- (CGRect)originRect;
- (CGSize)_emojiCellSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TUIEmojiVariantSelectorView)initWithFrame:(CGRect)frame emojiToken:(id)token originRect:(CGRect)rect;
- (TUIEmojiVariantSelectorViewDelegate)delegate;
- (id)_backgroundBezierPathForContainerRect:(CGRect)rect originRect:(CGRect)originRect;
- (id)_variantCellAtLocation:(CGPoint)location;
- (unint64_t)_numberOfVariants;
- (void)_unhighlightAllViews;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TUIEmojiVariantSelectorView

- (CGRect)originRect
{
  x = self->_originRect.origin.x;
  y = self->_originRect.origin.y;
  width = self->_originRect.size.width;
  height = self->_originRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TUIEmojiVariantSelectorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  [(TUIEmojiVariantSelectorView *)self _unhighlightAllViews];
  v8.receiver = self;
  v8.super_class = TUIEmojiVariantSelectorView;
  [(TUIEmojiVariantSelectorView *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  eventCopy = event;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [endedCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(endedCopy);
      }

      [*(*(&v19 + 1) + 8 * i) locationInView:self];
      v13 = [(TUIEmojiVariantSelectorView *)self _variantCellAtLocation:?];
      v14 = v13;
      if (v13)
      {
        emojiToken = [v13 emojiToken];
        selectedVariant = self->_selectedVariant;
        self->_selectedVariant = emojiToken;

        delegate = [(TUIEmojiVariantSelectorView *)self delegate];
        [delegate variantSelectorValueChanged:self];

        v10 = 1;
      }
    }

    v9 = [endedCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  if ((v10 & 1) == 0)
  {
LABEL_11:
    v18.receiver = self;
    v18.super_class = TUIEmojiVariantSelectorView;
    [(TUIEmojiVariantSelectorView *)&v18 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [movedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v15;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(movedCopy);
      }

      if (v10)
      {
        v10 = 1;
      }

      else
      {
        [*(*(&v14 + 1) + 8 * i) locationInView:self];
        v10 = [(TUIEmojiVariantSelectorView *)self _highlightCellAtLocation:?];
      }
    }

    v9 = [movedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v9);
  if (!v10)
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = TUIEmojiVariantSelectorView;
    [(TUIEmojiVariantSelectorView *)&v13 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [beganCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v15;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(beganCopy);
      }

      if (v10)
      {
        v10 = 1;
      }

      else
      {
        [*(*(&v14 + 1) + 8 * i) locationInView:self];
        v10 = [(TUIEmojiVariantSelectorView *)self _highlightCellAtLocation:?];
      }
    }

    v9 = [beganCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v9);
  if (!v10)
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = TUIEmojiVariantSelectorView;
    [(TUIEmojiVariantSelectorView *)&v13 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (BOOL)_highlightCellAtLocation:(CGPoint)location
{
  v4 = [(TUIEmojiVariantSelectorView *)self _variantCellAtLocation:location.x, location.y];
  if (v4)
  {
    [(TUIEmojiVariantSelectorView *)self _unhighlightAllViews];
    [v4 setHighlighted:1];
  }

  return v4 != 0;
}

- (id)_variantCellAtLocation:(CGPoint)location
{
  x = location.x;
  v18 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_variantCellContainerView frame:location.x];
  UIRectGetCenter();
  v6 = v5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_arrangedVariantCells;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 frame];
        v20.x = x;
        v20.y = v6;
        if (CGRectContainsPoint(v21, v20))
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_unhighlightAllViews
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_arrangedVariantCells;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setHighlighted:{0, v7}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)layoutSubviews
{
  v103 = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = TUIEmojiVariantSelectorView;
  [(TUIEmojiVariantSelectorView *)&v101 layoutSubviews];
  [(TUIEmojiVariantSelectorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9 - (CGRectGetHeight(self->_originRect) + 8.0);
  [(TUIEmojiVariantSelectorView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  borderView = [(TUIEmojiVariantSelectorView *)self borderView];
  [borderView setFrame:{v12, v14, v16, v18}];

  [(TUIEmojiVariantSelectorView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  backdropView = [(TUIEmojiVariantSelectorView *)self backdropView];
  [backdropView setFrame:{v21, v23, v25, v27}];

  variantCellContainerView = [(TUIEmojiVariantSelectorView *)self variantCellContainerView];
  [variantCellContainerView setFrame:{v4, v6, v8, v10}];

  deepShadowView = [(TUIEmojiVariantSelectorView *)self deepShadowView];
  [deepShadowView setFrame:{v4, v6, v8, v10}];

  v85 = v6;
  v86 = v4;
  v104.origin.x = v4;
  v104.origin.y = v6;
  v87 = v8;
  v104.size.width = v8;
  v104.size.height = v10;
  v31 = CGPathCreateWithRect(v104, 0);
  deepShadowView2 = [(TUIEmojiVariantSelectorView *)self deepShadowView];
  layer = [deepShadowView2 layer];
  [layer setShadowPath:v31];

  if (v31)
  {
    CGPathRelease(v31);
  }

  superview = [(TUIEmojiVariantSelectorView *)self superview];
  [(TUIEmojiVariantSelectorView *)self convertRect:superview fromView:self->_originRect.origin.x, self->_originRect.origin.y, self->_originRect.size.width, self->_originRect.size.height];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  width = self->_originRect.size.width;
  height = self->_originRect.size.height;
  keyShadowView = [(TUIEmojiVariantSelectorView *)self keyShadowView];
  [keyShadowView setFrame:{v36, v38, v40, v42}];

  v105.origin.x = 0.0;
  v105.origin.y = 0.0;
  v105.size.width = width;
  v105.size.height = height;
  v46 = CGPathCreateWithRoundedRect(v105, 6.0, 6.0, 0);
  keyShadowView2 = [(TUIEmojiVariantSelectorView *)self keyShadowView];
  layer2 = [keyShadowView2 layer];
  [layer2 setShadowPath:v46];

  if (v46)
  {
    CGPathRelease(v46);
  }

  v49 = [(TUIEmojiVariantSelectorView *)self _backgroundBezierPathForContainerRect:v86 originRect:v85, v87, v10, v36, v38, v40, v42];
  borderView2 = [(TUIEmojiVariantSelectorView *)self borderView];
  [borderView2 setPath:v49];

  backgroundMaskView = [(TUIEmojiVariantSelectorView *)self backgroundMaskView];
  [backgroundMaskView setPath:v49];

  effectiveUserInterfaceLayoutDirection = [(TUIEmojiVariantSelectorView *)self effectiveUserInterfaceLayoutDirection];
  [(TUIEmojiVariantSelectorView *)self _emojiCellSize];
  v54 = v53;
  v94 = 0;
  v95 = &v94;
  v96 = 0x4010000000;
  v97 = &unk_1900D41E9;
  __asm { FMOV            V0.2D, #6.0 }

  v98 = _Q0;
  v99 = v54;
  v100 = v60;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    variantCellContainerView2 = [(TUIEmojiVariantSelectorView *)self variantCellContainerView];
    [variantCellContainerView2 frame];
    v95[1].origin.x = v62 - (v54 + 6.0);
  }

  UIRectCenteredYInRect();
  p_x = &v95->origin.x;
  v95[1].origin.x = v64;
  p_x[5] = v65;
  p_x[6] = v66;
  p_x[7] = v67;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__TUIEmojiVariantSelectorView_layoutSubviews__block_invoke;
  aBlock[3] = &unk_1E72D7FB0;
  aBlock[4] = &v94;
  v93 = effectiveUserInterfaceLayoutDirection == 1;
  v68 = _Block_copy(aBlock);
  firstObject = [(NSArray *)self->_arrangedVariantCells firstObject];
  v68[2](v68, firstObject);
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    [firstObject frame];
    v71 = v70 + -11.0;
    v72 = v95;
  }

  else
  {
    v72 = v95;
    v71 = v95[1].origin.x + 4.0;
  }

  [(UIView *)self->_separatorView setFrame:v71, 0.0, 1.0, v72[1].size.height + -6.0];
  [(UIView *)self->_separatorView frame];
  UIRectCenteredYInRect();
  [(UIView *)self->_separatorView setFrame:?];
  [(UIView *)self->_separatorView frame];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v77 = v73 - (CGRectGetWidth(v95[1]) + 10.0);
    v78 = v95;
  }

  else
  {
    v79 = CGRectGetWidth(*&v73);
    v78 = v95;
    v77 = v95[1].origin.x + v79 + 6.0 + 8.0;
  }

  v78[1].origin.x = v77;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v80 = [(NSArray *)self->_arrangedVariantCells subarrayWithRange:1, [(NSArray *)self->_arrangedVariantCells count]- 1];
  v81 = [v80 countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v89;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v89 != v83)
        {
          objc_enumerationMutation(v80);
        }

        v68[2](v68, *(*(&v88 + 1) + 8 * i));
      }

      v82 = [v80 countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v82);
  }

  _Block_object_dispose(&v94, 8);
}

double __45__TUIEmojiVariantSelectorView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  [a2 setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
  v3 = *(a1 + 40);
  v4 = CGRectGetWidth(*(*(*(a1 + 32) + 8) + 32)) + 6.0;
  v5 = *(*(a1 + 32) + 8);
  if (v3)
  {
    v4 = -v4;
  }

  result = *(v5 + 32) + v4;
  *(v5 + 32) = result;
  return result;
}

- (id)_backgroundBezierPathForContainerRect:(CGRect)rect originRect:(CGRect)originRect
{
  height = originRect.size.height;
  width = rect.size.width;
  v48 = originRect.size.width;
  y = originRect.origin.y;
  x = originRect.origin.x;
  v5 = rect.size.height;
  v6 = rect.size.width;
  v7 = rect.origin.y;
  v8 = rect.origin.x;
  v41 = *&TUIEmojiVariantSelectorBubbleRadius;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__TUIEmojiVariantSelectorView__backgroundBezierPathForContainerRect_originRect___block_invoke;
  aBlock[3] = &unk_1E72D7F88;
  v10 = bezierPath;
  v51 = v10;
  v11 = _Block_copy(aBlock);
  v52.origin.x = v8;
  v52.origin.y = v7;
  v52.size.width = v6;
  v52.size.height = v5;
  MaxY = CGRectGetMaxY(v52);
  v13 = x;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = v48;
  v53.size.height = height;
  v14 = MaxY - CGRectGetMinY(v53);
  v15 = y + v14;
  v54.size.height = height - v14;
  v40 = height - v14;
  v54.origin.x = x;
  v54.origin.y = v15;
  v54.size.width = v48;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = v8;
  v42 = v7;
  v55.origin.y = v7;
  v55.size.width = width;
  v55.size.height = v5;
  v17 = vabdd_f64(MinX, CGRectGetMinX(v55));
  if (v17 >= *&TUIEmojiVariantSelectorBubbleRadius + *&TUIEmojiVariantSelectorBubbleRadius)
  {
    v18 = v41;
  }

  else
  {
    v18 = v17 * 0.5;
  }

  v43 = v18;
  v56.origin.x = x;
  v56.origin.y = v15;
  v56.size.width = v48;
  v56.size.height = v40;
  MaxX = CGRectGetMaxX(v56);
  v57.origin.x = v8;
  v57.origin.y = v7;
  v57.size.width = width;
  v57.size.height = v5;
  v19 = vabdd_f64(MaxX, CGRectGetMaxX(v57));
  if (v19 >= *&TUIEmojiVariantSelectorBubbleRadius + *&TUIEmojiVariantSelectorBubbleRadius)
  {
    v20 = v41;
  }

  else
  {
    v20 = v19 * 0.5;
  }

  v46 = v20;
  v58.origin.x = x;
  v58.origin.y = v15;
  v58.size.width = v48;
  v58.size.height = v40;
  v21 = CGRectGetMinX(v58);
  v59.origin.x = x;
  v59.origin.y = v15;
  v59.size.width = v48;
  v59.size.height = v40;
  v22 = CGRectGetMaxY(v59);
  [v10 moveToPoint:{v21 + 6.0, v22}];
  [v10 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v21 clockwise:{v22, 6.0, 6.0}];
  v60.origin.x = v13;
  v60.origin.y = v15;
  v60.size.width = v48;
  v60.size.height = v40;
  v23 = CGRectGetMinX(v60);
  v61.origin.x = v13;
  v61.origin.y = v15;
  v61.size.width = v48;
  v61.size.height = v40;
  MinY = CGRectGetMinY(v61);
  v25 = v41;
  v11[2](v11, 2, 1, v23, MinY, 0.0, v41, v43, v41);
  v62.origin.x = v8;
  v62.origin.y = v42;
  v62.size.width = width;
  v62.size.height = v5;
  v26 = CGRectGetMinX(v62);
  v63.origin.x = v8;
  v63.origin.y = v42;
  v63.size.width = width;
  v63.size.height = v5;
  v27 = CGRectGetMaxY(v63);
  v11[2](v11, 4, 0, v26, v27, v43, 0.0, v43, v41);
  v64.origin.x = v8;
  v64.origin.y = v42;
  v64.size.width = width;
  v64.size.height = v5;
  v28 = CGRectGetMinX(v64);
  v65.origin.x = v8;
  v65.origin.y = v42;
  v65.size.width = width;
  v65.size.height = v5;
  v29 = CGRectGetMinY(v65);
  v11[2](v11, 1, 0, v28, v29, 0.0, v25, v25, v25);
  v66.origin.x = v8;
  v66.origin.y = v42;
  v66.size.width = width;
  v66.size.height = v5;
  v30 = CGRectGetMaxX(v66);
  v67.origin.x = v8;
  v67.origin.y = v42;
  v67.size.width = width;
  v67.size.height = v5;
  v31 = CGRectGetMinY(v67);
  v11[2](v11, 2, 0, v30, v31, -v25, 0.0, v25, v25);
  v68.origin.x = v8;
  v68.origin.y = v42;
  v68.size.width = width;
  v68.size.height = v5;
  v32 = CGRectGetMaxX(v68);
  v69.origin.x = v8;
  v69.origin.y = v42;
  v69.size.width = width;
  v69.size.height = v5;
  v33 = CGRectGetMaxY(v69);
  v11[2](v11, 8, 0, v32, v33, 0.0, -v25, v46, v25);
  v70.origin.x = v13;
  v70.origin.y = v15;
  v70.size.width = v48;
  v70.size.height = v40;
  v34 = CGRectGetMaxX(v70);
  v71.origin.x = v13;
  v71.origin.y = v15;
  v71.size.width = v48;
  v71.size.height = v40;
  v35 = CGRectGetMinY(v71);
  v11[2](v11, 1, 1, v34, v35, v46, 0.0, v46, v41);
  v72.origin.x = v13;
  v72.origin.y = v15;
  v72.size.width = v48;
  v72.size.height = v40;
  v36 = CGRectGetMaxX(v72);
  v73.origin.x = v13;
  v73.origin.y = v15;
  v73.size.width = v48;
  v73.size.height = v40;
  v37 = CGRectGetMaxY(v73);
  v11[2](v11, 8, 0, v36, v37, 0.0, -6.0, 6.0, 6.0);
  [v10 closePath];
  v38 = v10;

  return v10;
}

uint64_t __80__TUIEmojiVariantSelectorView__backgroundBezierPathForContainerRect_originRect___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  [*(a1 + 32) addLineToPoint:{a4 + a6, a5 + a7}];
  v16 = *(a1 + 32);

  return [v16 _addRoundedCornerWithTrueCorner:a2 radius:a3 corner:a4 clockwise:{a5, a8, a9}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(TUIEmojiVariantSelectorView *)self _emojiCellSize:fits.width];
  v5 = v4;
  v7 = (v6 + 6.0) * [(TUIEmojiVariantSelectorView *)self _numberOfVariants]+ 15.0 + 6.0;
  v8 = v5 + 6.0 + 6.0 + CGRectGetHeight(self->_originRect) + 8.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (unint64_t)_numberOfVariants
{
  skinToneVariants = [(EMFEmojiToken *)self->_baseEmojiToken skinToneVariants];
  v3 = [skinToneVariants count];

  return v3;
}

- (CGSize)_emojiCellSize
{
  emojiTextAttributes = [objc_opt_class() emojiTextAttributes];
  [@"🆒" sizeWithAttributes:emojiTextAttributes];
  v4 = v3;
  v6 = v5;

  v7 = v4 + 3.0;
  v8 = v6 + 3.0 + 3.0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (TUIEmojiVariantSelectorView)initWithFrame:(CGRect)frame emojiToken:(id)token originRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  v101 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v99.receiver = self;
  v99.super_class = TUIEmojiVariantSelectorView;
  v16 = [(TUIEmojiVariantSelectorView *)&v99 initWithFrame:v13, v12, v11, v10];
  v17 = v16;
  if (v16)
  {
    v16->_originRect.origin.x = x;
    v16->_originRect.origin.y = y;
    v16->_originRect.size.width = width;
    v16->_originRect.size.height = height;
    objc_storeStrong(&v16->_baseEmojiToken, token);
    v18 = objc_alloc(MEMORY[0x1E69DD250]);
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [v18 initWithFrame:{*MEMORY[0x1E695F058], v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setDeepShadowView:v23];

    deepShadowView = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    layer = [deepShadowView layer];
    LODWORD(v26) = 1045220557;
    [layer setShadowOpacity:v26];

    deepShadowView2 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    layer2 = [deepShadowView2 layer];
    [layer2 setShadowRadius:7.0];

    deepShadowView3 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    layer3 = [deepShadowView3 layer];
    [layer3 setShadowOffset:{0.0, 6.0}];

    deepShadowView4 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    layer4 = [deepShadowView4 layer];
    [layer4 setMasksToBounds:0];

    deepShadowView5 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    [deepShadowView5 setUserInteractionEnabled:0];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    deepShadowView6 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    layer5 = [deepShadowView6 layer];
    [layer5 setShadowColor:cGColor];

    deepShadowView7 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:deepShadowView7];

    v39 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setKeyShadowView:v39];

    keyShadowView = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    layer6 = [keyShadowView layer];
    LODWORD(v42) = 1050253722;
    [layer6 setShadowOpacity:v42];

    keyShadowView2 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    layer7 = [keyShadowView2 layer];
    [layer7 setShadowRadius:0.0];

    keyShadowView3 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    layer8 = [keyShadowView3 layer];
    [layer8 setShadowOffset:{0.0, 1.0}];

    keyShadowView4 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    layer9 = [keyShadowView4 layer];
    [layer9 setMasksToBounds:0];

    keyShadowView5 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    [keyShadowView5 setUserInteractionEnabled:0];

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    cGColor2 = [blackColor2 CGColor];
    keyShadowView6 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    layer10 = [keyShadowView6 layer];
    [layer10 setShadowColor:cGColor2];

    keyShadowView7 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:keyShadowView7];

    v55 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setBackdropView:v55];

    v56 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_11021];
    backdropView = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [backdropView setBackgroundColor:v56];

    backdropView2 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    layer11 = [backdropView2 layer];
    [layer11 setMasksToBounds:1];

    backdropView3 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [backdropView3 setUserInteractionEnabled:0];

    backdropView4 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:backdropView4];

    v62 = [[TUIDrawingView alloc] initWithFrame:v19, v20, v21, v22];
    [(TUIEmojiVariantSelectorView *)v17 setBackgroundMaskView:v62];

    backgroundMaskView = [(TUIEmojiVariantSelectorView *)v17 backgroundMaskView];
    backdropView5 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [backdropView5 setMaskView:backgroundMaskView];

    v65 = [[TUIDrawingView alloc] initWithFrame:v19, v20, v21, v22];
    [(TUIEmojiVariantSelectorView *)v17 setBorderView:v65];

    borderView = [(TUIEmojiVariantSelectorView *)v17 borderView];
    [borderView setUserInteractionEnabled:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    cGColor3 = [clearColor CGColor];
    borderView2 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    shapeLayer = [borderView2 shapeLayer];
    [shapeLayer setFillColor:cGColor3];

    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    cGColor4 = [systemFillColor CGColor];
    borderView3 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    shapeLayer2 = [borderView3 shapeLayer];
    [shapeLayer2 setStrokeColor:cGColor4];

    borderView4 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    shapeLayer3 = [borderView4 shapeLayer];
    [shapeLayer3 setLineWidth:1.0];

    borderView5 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:borderView5];

    v78 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    variantCellContainerView = v17->_variantCellContainerView;
    v17->_variantCellContainerView = v78;

    [(TUIEmojiVariantSelectorView *)v17 addSubview:v17->_variantCellContainerView];
    v80 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setSeparatorView:v80];

    v81 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_6_11023];
    separatorView = [(TUIEmojiVariantSelectorView *)v17 separatorView];
    [separatorView setBackgroundColor:v81];

    variantCellContainerView = [(TUIEmojiVariantSelectorView *)v17 variantCellContainerView];
    separatorView2 = [(TUIEmojiVariantSelectorView *)v17 separatorView];
    [variantCellContainerView addSubview:separatorView2];

    array = [MEMORY[0x1E695DF70] array];
    skinToneVariants = [tokenCopy skinToneVariants];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v87 = [skinToneVariants countByEnumeratingWithState:&v95 objects:v100 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v96;
      do
      {
        for (i = 0; i != v88; ++i)
        {
          if (*v96 != v89)
          {
            objc_enumerationMutation(skinToneVariants);
          }

          v91 = [[TUIEmojiVariantCell alloc] initWithFrame:*(*(&v95 + 1) + 8 * i) token:v19, v20, v21, v22];
          [(TUIEmojiVariantCell *)v91 setVariantSelectorView:v17];
          variantCellContainerView2 = [(TUIEmojiVariantSelectorView *)v17 variantCellContainerView];
          [variantCellContainerView2 addSubview:v91];

          [(NSArray *)array addObject:v91];
        }

        v88 = [skinToneVariants countByEnumeratingWithState:&v95 objects:v100 count:16];
      }

      while (v88);
    }

    arrangedVariantCells = v17->_arrangedVariantCells;
    v17->_arrangedVariantCells = array;
  }

  return v17;
}

id __67__TUIEmojiVariantSelectorView_initWithFrame_emojiToken_originRect___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
  }

  else
  {
    UIKeyboardGetLightCandidateSeparatorColor();
  }
  v2 = ;

  return v2;
}

id __67__TUIEmojiVariantSelectorView_initWithFrame_emojiToken_originRect___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.42 green:0.42 blue:0.42 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

+ (id)emojiTextAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:32.0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end
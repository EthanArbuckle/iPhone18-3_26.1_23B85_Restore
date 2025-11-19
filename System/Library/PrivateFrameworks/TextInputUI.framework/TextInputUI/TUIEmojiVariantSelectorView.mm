@interface TUIEmojiVariantSelectorView
+ (id)emojiTextAttributes;
- (BOOL)_highlightCellAtLocation:(CGPoint)a3;
- (CGRect)originRect;
- (CGSize)_emojiCellSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TUIEmojiVariantSelectorView)initWithFrame:(CGRect)a3 emojiToken:(id)a4 originRect:(CGRect)a5;
- (TUIEmojiVariantSelectorViewDelegate)delegate;
- (id)_backgroundBezierPathForContainerRect:(CGRect)a3 originRect:(CGRect)a4;
- (id)_variantCellAtLocation:(CGPoint)a3;
- (unint64_t)_numberOfVariants;
- (void)_unhighlightAllViews;
- (void)layoutSubviews;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TUIEmojiVariantSelectorView *)self _unhighlightAllViews];
  v8.receiver = self;
  v8.super_class = TUIEmojiVariantSelectorView;
  [(TUIEmojiVariantSelectorView *)&v8 touchesCancelled:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v6);
      }

      [*(*(&v19 + 1) + 8 * i) locationInView:self];
      v13 = [(TUIEmojiVariantSelectorView *)self _variantCellAtLocation:?];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 emojiToken];
        selectedVariant = self->_selectedVariant;
        self->_selectedVariant = v15;

        v17 = [(TUIEmojiVariantSelectorView *)self delegate];
        [v17 variantSelectorValueChanged:self];

        v10 = 1;
      }
    }

    v9 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  if ((v10 & 1) == 0)
  {
LABEL_11:
    v18.receiver = self;
    v18.super_class = TUIEmojiVariantSelectorView;
    [(TUIEmojiVariantSelectorView *)&v18 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v6);
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

    v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v9);
  if (!v10)
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = TUIEmojiVariantSelectorView;
    [(TUIEmojiVariantSelectorView *)&v13 touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v6);
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

    v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v9);
  if (!v10)
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = TUIEmojiVariantSelectorView;
    [(TUIEmojiVariantSelectorView *)&v13 touchesBegan:v6 withEvent:v7];
  }
}

- (BOOL)_highlightCellAtLocation:(CGPoint)a3
{
  v4 = [(TUIEmojiVariantSelectorView *)self _variantCellAtLocation:a3.x, a3.y];
  if (v4)
  {
    [(TUIEmojiVariantSelectorView *)self _unhighlightAllViews];
    [v4 setHighlighted:1];
  }

  return v4 != 0;
}

- (id)_variantCellAtLocation:(CGPoint)a3
{
  x = a3.x;
  v18 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_variantCellContainerView frame:a3.x];
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
  v19 = [(TUIEmojiVariantSelectorView *)self borderView];
  [v19 setFrame:{v12, v14, v16, v18}];

  [(TUIEmojiVariantSelectorView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(TUIEmojiVariantSelectorView *)self backdropView];
  [v28 setFrame:{v21, v23, v25, v27}];

  v29 = [(TUIEmojiVariantSelectorView *)self variantCellContainerView];
  [v29 setFrame:{v4, v6, v8, v10}];

  v30 = [(TUIEmojiVariantSelectorView *)self deepShadowView];
  [v30 setFrame:{v4, v6, v8, v10}];

  v85 = v6;
  v86 = v4;
  v104.origin.x = v4;
  v104.origin.y = v6;
  v87 = v8;
  v104.size.width = v8;
  v104.size.height = v10;
  v31 = CGPathCreateWithRect(v104, 0);
  v32 = [(TUIEmojiVariantSelectorView *)self deepShadowView];
  v33 = [v32 layer];
  [v33 setShadowPath:v31];

  if (v31)
  {
    CGPathRelease(v31);
  }

  v34 = [(TUIEmojiVariantSelectorView *)self superview];
  [(TUIEmojiVariantSelectorView *)self convertRect:v34 fromView:self->_originRect.origin.x, self->_originRect.origin.y, self->_originRect.size.width, self->_originRect.size.height];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  width = self->_originRect.size.width;
  height = self->_originRect.size.height;
  v45 = [(TUIEmojiVariantSelectorView *)self keyShadowView];
  [v45 setFrame:{v36, v38, v40, v42}];

  v105.origin.x = 0.0;
  v105.origin.y = 0.0;
  v105.size.width = width;
  v105.size.height = height;
  v46 = CGPathCreateWithRoundedRect(v105, 6.0, 6.0, 0);
  v47 = [(TUIEmojiVariantSelectorView *)self keyShadowView];
  v48 = [v47 layer];
  [v48 setShadowPath:v46];

  if (v46)
  {
    CGPathRelease(v46);
  }

  v49 = [(TUIEmojiVariantSelectorView *)self _backgroundBezierPathForContainerRect:v86 originRect:v85, v87, v10, v36, v38, v40, v42];
  v50 = [(TUIEmojiVariantSelectorView *)self borderView];
  [v50 setPath:v49];

  v51 = [(TUIEmojiVariantSelectorView *)self backgroundMaskView];
  [v51 setPath:v49];

  v52 = [(TUIEmojiVariantSelectorView *)self effectiveUserInterfaceLayoutDirection];
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
  if (v52 == 1)
  {
    v61 = [(TUIEmojiVariantSelectorView *)self variantCellContainerView];
    [v61 frame];
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
  v93 = v52 == 1;
  v68 = _Block_copy(aBlock);
  v69 = [(NSArray *)self->_arrangedVariantCells firstObject];
  v68[2](v68, v69);
  if (v52 == 1)
  {
    [v69 frame];
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
  if (v52 == 1)
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

- (id)_backgroundBezierPathForContainerRect:(CGRect)a3 originRect:(CGRect)a4
{
  height = a4.size.height;
  width = a3.size.width;
  v48 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v5 = a3.size.height;
  v6 = a3.size.width;
  v7 = a3.origin.y;
  v8 = a3.origin.x;
  v41 = *&TUIEmojiVariantSelectorBubbleRadius;
  v9 = [MEMORY[0x1E69DC728] bezierPath];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__TUIEmojiVariantSelectorView__backgroundBezierPathForContainerRect_originRect___block_invoke;
  aBlock[3] = &unk_1E72D7F88;
  v10 = v9;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(TUIEmojiVariantSelectorView *)self _emojiCellSize:a3.width];
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
  v2 = [(EMFEmojiToken *)self->_baseEmojiToken skinToneVariants];
  v3 = [v2 count];

  return v3;
}

- (CGSize)_emojiCellSize
{
  v2 = [objc_opt_class() emojiTextAttributes];
  [@"🆒" sizeWithAttributes:v2];
  v4 = v3;
  v6 = v5;

  v7 = v4 + 3.0;
  v8 = v6 + 3.0 + 3.0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (TUIEmojiVariantSelectorView)initWithFrame:(CGRect)a3 emojiToken:(id)a4 originRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v101 = *MEMORY[0x1E69E9840];
  v15 = a4;
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
    objc_storeStrong(&v16->_baseEmojiToken, a4);
    v18 = objc_alloc(MEMORY[0x1E69DD250]);
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [v18 initWithFrame:{*MEMORY[0x1E695F058], v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setDeepShadowView:v23];

    v24 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    v25 = [v24 layer];
    LODWORD(v26) = 1045220557;
    [v25 setShadowOpacity:v26];

    v27 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    v28 = [v27 layer];
    [v28 setShadowRadius:7.0];

    v29 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    v30 = [v29 layer];
    [v30 setShadowOffset:{0.0, 6.0}];

    v31 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    v32 = [v31 layer];
    [v32 setMasksToBounds:0];

    v33 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    [v33 setUserInteractionEnabled:0];

    v34 = [MEMORY[0x1E69DC888] blackColor];
    v35 = [v34 CGColor];
    v36 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    v37 = [v36 layer];
    [v37 setShadowColor:v35];

    v38 = [(TUIEmojiVariantSelectorView *)v17 deepShadowView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:v38];

    v39 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setKeyShadowView:v39];

    v40 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    v41 = [v40 layer];
    LODWORD(v42) = 1050253722;
    [v41 setShadowOpacity:v42];

    v43 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    v44 = [v43 layer];
    [v44 setShadowRadius:0.0];

    v45 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    v46 = [v45 layer];
    [v46 setShadowOffset:{0.0, 1.0}];

    v47 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    v48 = [v47 layer];
    [v48 setMasksToBounds:0];

    v49 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    [v49 setUserInteractionEnabled:0];

    v50 = [MEMORY[0x1E69DC888] blackColor];
    v51 = [v50 CGColor];
    v52 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    v53 = [v52 layer];
    [v53 setShadowColor:v51];

    v54 = [(TUIEmojiVariantSelectorView *)v17 keyShadowView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:v54];

    v55 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setBackdropView:v55];

    v56 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_11021];
    v57 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [v57 setBackgroundColor:v56];

    v58 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    v59 = [v58 layer];
    [v59 setMasksToBounds:1];

    v60 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [v60 setUserInteractionEnabled:0];

    v61 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:v61];

    v62 = [[TUIDrawingView alloc] initWithFrame:v19, v20, v21, v22];
    [(TUIEmojiVariantSelectorView *)v17 setBackgroundMaskView:v62];

    v63 = [(TUIEmojiVariantSelectorView *)v17 backgroundMaskView];
    v64 = [(TUIEmojiVariantSelectorView *)v17 backdropView];
    [v64 setMaskView:v63];

    v65 = [[TUIDrawingView alloc] initWithFrame:v19, v20, v21, v22];
    [(TUIEmojiVariantSelectorView *)v17 setBorderView:v65];

    v66 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    [v66 setUserInteractionEnabled:0];

    v67 = [MEMORY[0x1E69DC888] clearColor];
    v68 = [v67 CGColor];
    v69 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    v70 = [v69 shapeLayer];
    [v70 setFillColor:v68];

    v71 = [MEMORY[0x1E69DC888] systemFillColor];
    v72 = [v71 CGColor];
    v73 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    v74 = [v73 shapeLayer];
    [v74 setStrokeColor:v72];

    v75 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    v76 = [v75 shapeLayer];
    [v76 setLineWidth:1.0];

    v77 = [(TUIEmojiVariantSelectorView *)v17 borderView];
    [(TUIEmojiVariantSelectorView *)v17 addSubview:v77];

    v78 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    variantCellContainerView = v17->_variantCellContainerView;
    v17->_variantCellContainerView = v78;

    [(TUIEmojiVariantSelectorView *)v17 addSubview:v17->_variantCellContainerView];
    v80 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v19, v20, v21, v22}];
    [(TUIEmojiVariantSelectorView *)v17 setSeparatorView:v80];

    v81 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_6_11023];
    v82 = [(TUIEmojiVariantSelectorView *)v17 separatorView];
    [v82 setBackgroundColor:v81];

    v83 = [(TUIEmojiVariantSelectorView *)v17 variantCellContainerView];
    v84 = [(TUIEmojiVariantSelectorView *)v17 separatorView];
    [v83 addSubview:v84];

    v85 = [MEMORY[0x1E695DF70] array];
    v86 = [v15 skinToneVariants];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v87 = [v86 countByEnumeratingWithState:&v95 objects:v100 count:16];
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
            objc_enumerationMutation(v86);
          }

          v91 = [[TUIEmojiVariantCell alloc] initWithFrame:*(*(&v95 + 1) + 8 * i) token:v19, v20, v21, v22];
          [(TUIEmojiVariantCell *)v91 setVariantSelectorView:v17];
          v92 = [(TUIEmojiVariantSelectorView *)v17 variantCellContainerView];
          [v92 addSubview:v91];

          [(NSArray *)v85 addObject:v91];
        }

        v88 = [v86 countByEnumeratingWithState:&v95 objects:v100 count:16];
      }

      while (v88);
    }

    arrangedVariantCells = v17->_arrangedVariantCells;
    v17->_arrangedVariantCells = v85;
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
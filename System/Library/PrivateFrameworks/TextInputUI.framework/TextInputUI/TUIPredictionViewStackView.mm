@interface TUIPredictionViewStackView
- (TUIPredictionViewStackView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentMargin;
- (id)allVisibleCells;
- (id)arrangedSubviews;
- (id)subStackViews;
- (id)visibleCells;
- (int64_t)_layoutTypeForSubview:(id)subview;
- (void)addArrangedSubview:(id)subview beforeLastSubview:(BOOL)lastSubview;
- (void)layoutSubviews;
@end

@implementation TUIPredictionViewStackView

- (id)allVisibleCells
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  arrangedSubviews = [(TUIPredictionViewStackView *)self arrangedSubviews];
  v5 = [arrangedSubviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          allVisibleCells = [v9 allVisibleCells];
          [array addObjectsFromArray:allVisibleCells];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [arrangedSubviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)arrangedSubviews
{
  contentView = [(TUIPredictionViewStackView *)self contentView];
  subviews = [contentView subviews];

  return subviews;
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x1E69E9840];
  [(TUIPredictionViewStackView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TUIPredictionViewStackView *)self contentMargin];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  contentView = [(TUIPredictionViewStackView *)self contentView];
  [contentView setFrame:{v12, v14, v16, v18}];

  contentView2 = [(TUIPredictionViewStackView *)self contentView];
  [contentView2 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  arrangedSubviews = [(TUIPredictionViewStackView *)self arrangedSubviews];
  v30 = [arrangedSubviews countByEnumeratingWithState:&v47 objects:v51 count:16];
  v31 = 0.0;
  v32 = v26;
  v33 = 0.0;
  if (v30)
  {
    v34 = v30;
    v35 = 0;
    v36 = *v48;
    v32 = v26;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v38 = *(*(&v47 + 1) + 8 * i);
        v39 = [(TUIPredictionViewStackView *)self _layoutTypeForSubview:v38];
        if (v39 == 1)
        {
          [v38 intrinsicContentSize];
          v32 = v32 - v40;
        }

        else if (!v39)
        {
          ++v35;
        }
      }

      v34 = [arrangedSubviews countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v34);
    v33 = v35;
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  if ([(TUIPredictionViewStackView *)self cellsHaveBackgroundColor])
  {
    v31 = 16.0;
  }

  arrangedSubviews2 = [(TUIPredictionViewStackView *)self arrangedSubviews];
  v42 = round(v32 - ([arrangedSubviews2 count] - 1) * v31) / v33;

  arrangedSubviews3 = [(TUIPredictionViewStackView *)self arrangedSubviews];
  layoutDirection = [(TUIPredictionViewStackView *)self layoutDirection];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __44__TUIPredictionViewStackView_layoutSubviews__block_invoke;
  v45[3] = &unk_1E72D7E40;
  v45[4] = self;
  v45[5] = v46;
  *&v45[6] = v42;
  v45[7] = v22;
  v45[8] = v24;
  *&v45[9] = v26;
  v45[10] = v28;
  *&v45[11] = v31;
  [arrangedSubviews3 enumerateObjectsWithOptions:2 * (layoutDirection == 1) usingBlock:v45];

  _Block_object_dispose(v46, 8);
}

void __44__TUIPredictionViewStackView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v11 setPredictionPosition:a3];
  }

  v5 = [*(a1 + 32) _layoutTypeForSubview:v11];
  if (v5 == 1)
  {
    [v11 intrinsicContentSize];
    v6 = v9;
    v10 = v8;
    if (v9 == *MEMORY[0x1E69DE788])
    {
      v6 = *(a1 + 48);
    }

    v7 = v11;
    if (v8 != *MEMORY[0x1E69DE788])
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 48);
    v7 = v11;
  }

  v10 = *(a1 + 80);
LABEL_10:
  [v7 setFrame:{*(*(*(a1 + 40) + 8) + 24), 0.0, v6, v10}];
LABEL_11:
  [v11 frame];
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetWidth(v13) + *(a1 + 88) + *(*(*(a1 + 40) + 8) + 24);
}

- (UIEdgeInsets)contentMargin
{
  top = self->_contentMargin.top;
  left = self->_contentMargin.left;
  bottom = self->_contentMargin.bottom;
  right = self->_contentMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)visibleCells
{
  arrangedSubviews = [(TUIPredictionViewStackView *)self arrangedSubviews];
  v4 = [arrangedSubviews indexesOfObjectsPassingTest:&__block_literal_global_9491];

  arrangedSubviews2 = [(TUIPredictionViewStackView *)self arrangedSubviews];
  v6 = [arrangedSubviews2 objectsAtIndexes:v4];

  return v6;
}

uint64_t __42__TUIPredictionViewStackView_visibleCells__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)subStackViews
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrangedSubviews = [(TUIPredictionViewStackView *)self arrangedSubviews];
  v5 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)addArrangedSubview:(id)subview beforeLastSubview:(BOOL)lastSubview
{
  lastSubviewCopy = lastSubview;
  subviewCopy = subview;
  contentView = [(TUIPredictionViewStackView *)self contentView];
  subviews = [contentView subviews];
  v8 = [subviews count];

  contentView2 = [(TUIPredictionViewStackView *)self contentView];
  contentView3 = contentView2;
  if (lastSubviewCopy && v8)
  {
    subviews2 = [contentView2 subviews];
    v12 = [subviews2 containsObject:subviewCopy];

    if (v12)
    {
      goto LABEL_7;
    }

    contentView3 = [(TUIPredictionViewStackView *)self contentView];
    [contentView3 insertSubview:subviewCopy atIndex:v8 - 1];
  }

  else
  {
    [contentView2 addSubview:subviewCopy];
  }

LABEL_7:
  [(TUIPredictionViewStackView *)self setNeedsLayout];
}

- (int64_t)_layoutTypeForSubview:(id)subview
{
  subviewCopy = subview;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layoutType = [subviewCopy layoutType];
  }

  else
  {
    layoutType = 0;
  }

  return layoutType;
}

- (TUIPredictionViewStackView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = TUIPredictionViewStackView;
  v3 = [(TUIPredictionViewStackView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TUIPredictionViewStackContentView alloc];
    v5 = [(TUIPredictionViewStackContentView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(TUIPredictionViewStackView *)v3 setContentView:v5];

    contentView = [(TUIPredictionViewStackView *)v3 contentView];
    [(TUIPredictionViewStackView *)v3 addSubview:contentView];
  }

  return v3;
}

@end
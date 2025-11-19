@interface TUISystemInputAssistantPageView
- (CGSize)_contentSize;
- (TUISystemInputAssistantPageView)initWithFrame:(CGRect)a3;
- (TUISystemInputAssistantPageViewDelegate)pageViewDelegate;
- (id)_createExpandButtonIfNecessary;
- (id)imageSymbolConfigurationForAssistantItem;
- (unint64_t)_expandChevronImageStyleForRenderConfig:(id)a3;
- (void)_checkOldBounds:(CGRect)a3 forContentOffsetChangeWithNewBounds:(CGRect)a4;
- (void)_setRenderConfig:(id)a3;
- (void)_updateExpandButtonChevronImage;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidesExpandButton:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setPrimaryView:(id)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setSecondaryView:(id)a3;
- (void)setSecondaryViewVisible:(BOOL)a3 force:(BOOL)a4 withAnimationType:(unint64_t)a5 completion:(id)a6;
- (void)updateScrollEnabled;
@end

@implementation TUISystemInputAssistantPageView

- (void)_updateExpandButtonChevronImage
{
  if (self->_expandButton)
  {
    if ([(TUISystemInputAssistantPageView *)self _expandButtonVisible])
    {
      currentChevronStyle = self->_currentChevronStyle;
      v4 = [(TUISystemInputAssistantPageView *)self _inheritedRenderConfig];
      v5 = [(TUISystemInputAssistantPageView *)self _expandChevronImageStyleForRenderConfig:v4];

      if (currentChevronStyle != v5)
      {
        v6 = [(TUISystemInputAssistantPageView *)self _inheritedRenderConfig];
        self->_currentChevronStyle = [(TUISystemInputAssistantPageView *)self _expandChevronImageStyleForRenderConfig:v6];

        if (self->_currentChevronStyle == 1)
        {
          [MEMORY[0x1E69DC888] colorWithRed:0.31372549 green:0.333333333 blue:0.360784314 alpha:1.0];
        }

        else
        {
          [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
        }
        v17 = ;
        if (self->_currentChevronStyle == 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        v8 = MEMORY[0x1E69DCAB8];
        v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v7];
        v10 = [v8 systemImageNamed:@"chevron.left" compatibleWithTraitCollection:v9];
        v11 = [(TUISystemInputAssistantPageView *)self imageSymbolConfigurationForAssistantItem];
        v12 = [v10 imageWithConfiguration:v11];

        v13 = [(TUIPredictionCellButton *)self->_expandButton cellView];
        [v13 setImage:v12];

        v14 = [(TUIPredictionCellButton *)self->_expandButton cellView];
        v15 = [(TUISystemInputAssistantPageView *)self _inheritedRenderConfig];
        [v14 setRenderConfig:v15];

        v16 = [(TUIPredictionCellButton *)self->_expandButton cellView];
        [v16 setImageTintColor:v17];
      }
    }
  }
}

- (void)updateScrollEnabled
{
  v5 = [(TUISystemInputAssistantPageView *)self scrollEnabled];
  if (v5)
  {
    v2 = [(TUISystemInputAssistantPageView *)self primaryView];
    if ([v2 isHidden])
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v3 = [(TUISystemInputAssistantPageView *)self scrollView];
      [v3 contentOffset];
      if (v13 <= 0.0)
      {
        v7 = !self->_hidesExpandButton;
        v6 = 1;
      }

      else
      {
        v6 = 1;
        v7 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [(TUISystemInputAssistantPageView *)self scrollView];
  [v8 setScrollEnabled:v7];

  if (v6)
  {
  }

  if (v5)
  {
  }

  v9 = [(TUISystemInputAssistantPageView *)self primaryView];

  if (v9)
  {
    v10 = [(TUISystemInputAssistantPageView *)self scrollView];
    v11 = [v10 isScrollEnabled];

    if (v11)
    {
      v14 = [(TUISystemInputAssistantPageView *)self scrollView];
      v12 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
      [v14 addSubview:v12];
    }

    else
    {
      v14 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
      [(TUISystemInputAssistantPageView *)self addSubview:?];
    }
  }
}

- (void)setNeedsLayout
{
  self->_layoutIsDirty = 1;
  v2.receiver = self;
  v2.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v2 setNeedsLayout];
}

- (void)layoutSubviews
{
  self->_layoutIsDirty = 0;
  v65.receiver = self;
  v65.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v65 layoutSubviews];
  [(TUISystemInputAssistantPageView *)self _contentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(TUISystemInputAssistantPageView *)self scrollView];
  [v7 contentSize];
  v9 = v8;
  v11 = v10;

  if (v4 != v9 || v6 != v11)
  {
    v13 = [(TUISystemInputAssistantPageView *)self secondaryViewVisible];
    v14 = [(TUISystemInputAssistantPageView *)self scrollView];
    [v14 setContentSize:{v4, v6}];

    [(TUISystemInputAssistantPageView *)self setSecondaryViewVisible:v13];
  }

  [(TUISystemInputAssistantPageView *)self frame];
  width = v66.size.width;
  height = v66.size.height;
  v17 = CGRectGetHeight(v66);
  [(TUISystemInputAssistantPageView *)self bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22 + 1200.0;
  v24 = [(TUISystemInputAssistantPageView *)self clipView];
  [v24 setFrame:{v19, -600.0, v21, v23}];

  [(TUISystemInputAssistantPageView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(TUISystemInputAssistantPageView *)self scrollView];
  [v31 setFrame:{v26, 600.0, v28, v30}];

  v32 = [(TUISystemInputAssistantPageView *)self primaryView];
  v33 = [v32 isHidden];

  v34 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  v35 = v34;
  if (v33)
  {
    [v34 setHidden:1];

    [(TUISystemInputAssistantPageView *)self hidesExpandButton];
LABEL_9:
    v49 = [(TUISystemInputAssistantPageView *)self expandButton];
    [v49 removeFromSuperview];

    self->_currentChevronStyle = 0;
    expandButton = self->_expandButton;
    self->_expandButton = 0;
    goto LABEL_11;
  }

  [v34 setHidden:0];

  v36 = *MEMORY[0x1E695EFF8];
  v37 = *(MEMORY[0x1E695EFF8] + 8);
  v38 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  [v38 setFrame:{v36, v37, width, height}];

  v39 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  [v39 frame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(TUISystemInputAssistantPageView *)self primaryView];
  [v48 setFrame:{v41, v43, v45, v47}];

  if ([(TUISystemInputAssistantPageView *)self hidesExpandButton])
  {
    goto LABEL_9;
  }

  v51 = [(TUISystemInputAssistantPageView *)self primaryView];
  [v51 frame];
  UIRectInset();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = [(TUISystemInputAssistantPageView *)self primaryView];
  [v60 setFrame:{v53, v55, v57, v59}];

  expandButton = [(TUISystemInputAssistantPageView *)self primaryView];
  [expandButton frame];
  MaxX = CGRectGetMaxX(v67);
  v62 = [(TUISystemInputAssistantPageView *)self expandButton];
  [v62 setFrame:{MaxX, 0.0, v17, height}];

LABEL_11:
  v63 = [(TUISystemInputAssistantPageView *)self secondaryView];

  if (v63)
  {
    v64 = [(TUISystemInputAssistantPageView *)self secondaryView];
    [v64 setFrame:{width, 0.0, width, height}];
  }
}

- (CGSize)_contentSize
{
  [(TUISystemInputAssistantPageView *)self frame];
  v4 = v3 + v3;
  [(TUISystemInputAssistantPageView *)self frame];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v3 didMoveToWindow];
  if (self->_layoutIsDirty)
  {
    [(TUISystemInputAssistantPageView *)self setNeedsLayout];
  }
}

- (TUISystemInputAssistantPageViewDelegate)pageViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageViewDelegate);

  return WeakRetained;
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  v5 = v4;
  [(TUISystemInputAssistantPageView *)self frame];
  if (v5 < v6)
  {
    v7 = 0;
    goto LABEL_4;
  }

  [(TUISystemInputAssistantPageView *)self frame];
  v7 = v8 > 0.0;
  if (v8 <= 0.0)
  {
LABEL_4:
    if (v5 > 0.00000011920929)
    {
      return;
    }
  }

  [(TUISystemInputAssistantPageView *)self updateScrollEnabled];
  if (self->_secondaryViewVisible != v7)
  {
    self->_secondaryViewVisible = v7;
    v9 = [(TUISystemInputAssistantPageView *)self pageViewDelegate];
    [v9 assistantPageView:self didSwitchToSecondaryViewVisible:v7];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TUISystemInputAssistantPageView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v16 setFrame:x, y, width, height];
  [(TUISystemInputAssistantPageView *)self _checkOldBounds:v9 forContentOffsetChangeWithNewBounds:v11, v13, v15, x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TUISystemInputAssistantPageView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v16 setBounds:x, y, width, height];
  [(TUISystemInputAssistantPageView *)self _checkOldBounds:v9 forContentOffsetChangeWithNewBounds:v11, v13, v15, x, y, width, height];
}

- (void)_checkOldBounds:(CGRect)a3 forContentOffsetChangeWithNewBounds:(CGRect)a4
{
  v4 = a3.size.width == a4.size.width && a3.size.height == a4.size.height;
  if (!v4 && self->_secondaryViewInitialized)
  {
    if (self->_secondaryView)
    {
      [(TUISystemInputAssistantPageView *)self setSecondaryViewVisible:self->_secondaryViewVisible force:a3.size.width != a4.size.width withAnimationType:2 completion:0, a3.origin.x, a3.origin.y];
    }
  }
}

- (void)setSecondaryViewVisible:(BOOL)a3 force:(BOOL)a4 withAnimationType:(unint64_t)a5 completion:(id)a6
{
  v8 = a3;
  v10 = a6;
  if (a4 || !self->_secondaryViewInitialized || self->_secondaryViewVisible != v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke;
    aBlock[3] = &unk_1E72D85B8;
    aBlock[4] = self;
    v31 = v8;
    v11 = _Block_copy(aBlock);
    v12 = _Block_copy(v11);
    v13 = _Block_copy(v10);
    if (v8)
    {
      v14 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
      [(TUISystemInputAssistantPageView *)self secondaryView];
    }

    else
    {
      v14 = [(TUISystemInputAssistantPageView *)self secondaryView];
      [(TUISystemInputAssistantPageView *)self primaryContainerView];
    }
    v15 = ;
    v16 = v15;
    if (a5 == 2)
    {
      [v15 frame];
      [v14 frame];
      [v16 setFrame:?];
      [v16 setAlpha:0.0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke_2;
      v27[3] = &unk_1E72D85E0;
      v19 = v14;
      v28 = v19;
      v29 = v16;
      v20 = _Block_copy(v27);

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke_3;
      v22[3] = &unk_1E72D8608;
      v23 = v19;
      v24 = self;
      v25 = v11;
      v26 = v10;
      v21 = _Block_copy(v22);

      v13 = v21;
      v12 = v20;
    }

    else if (!a5)
    {
      v17 = [v14 layer];
      [v17 removeAllAnimations];

      v18 = [v16 layer];
      [v18 removeAllAnimations];

      v11[2](v11);
LABEL_12:
      self->_secondaryViewInitialized = 1;
      self->_secondaryViewVisible = v8;

      goto LABEL_13;
    }

    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v12 usingSpringWithDamping:v13 initialSpringVelocity:0.37 options:0.0 animations:1.0 completion:1.0];
    goto LABEL_12;
  }

LABEL_13:
}

void __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) frame];
    v3 = v2;
    v4 = 0.0;
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v5 = [*(a1 + 32) scrollView];
  [v5 setContentOffset:{v3, v4}];
}

uint64_t __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke_3(uint64_t a1, int a2)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 40) layoutSubviews];
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)_createExpandButtonIfNecessary
{
  if (!self->_expandButton && [(TUISystemInputAssistantPageView *)self _expandButtonVisible])
  {
    v3 = [TUIPredictionCellButton alloc];
    v4 = [(TUIPredictionCellButton *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    expandButton = self->_expandButton;
    self->_expandButton = v4;

    v6 = [(TUIPredictionCellButton *)self->_expandButton cellView];
    [v6 setVisibleSeparatorEdges:2];

    v7 = [(TUIPredictionCellButton *)self->_expandButton cellView];
    [v7 setSeparatorMargin:0.0];

    [(TUISystemInputAssistantPageView *)self _updateExpandButtonChevronImage];
    v8 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
    [v8 addSubview:self->_expandButton];
  }

  v9 = self->_expandButton;

  return v9;
}

- (id)imageSymbolConfigurationForAssistantItem
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:-1];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:24.0];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  return v4;
}

- (unint64_t)_expandChevronImageStyleForRenderConfig:(id)a3
{
  if ([a3 lightKeyboard])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_setRenderConfig:(id)a3
{
  v4.receiver = self;
  v4.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v4 _setRenderConfig:a3];
  [(TUISystemInputAssistantPageView *)self _updateExpandButtonChevronImage];
}

- (void)setScrollEnabled:(BOOL)a3
{
  if (self->_scrollEnabled != a3)
  {
    self->_scrollEnabled = a3;
    [(TUISystemInputAssistantPageView *)self updateScrollEnabled];
  }
}

- (void)setHidesExpandButton:(BOOL)a3
{
  self->_hidesExpandButton = a3;
  [(TUISystemInputAssistantPageView *)self updateScrollEnabled];
  if (!a3)
  {
    v5 = [(TUISystemInputAssistantPageView *)self _createExpandButtonIfNecessary];
  }

  [(TUISystemInputAssistantPageView *)self setNeedsLayout];
}

- (void)setSecondaryView:(id)a3
{
  v5 = a3;
  secondaryView = self->_secondaryView;
  v10 = v5;
  if (secondaryView == v5)
  {
    v7 = [(UIView *)v5 superview];
    v8 = [(TUISystemInputAssistantPageView *)self scrollView];

    if (v7 == v8)
    {
      goto LABEL_5;
    }

    secondaryView = self->_secondaryView;
  }

  [(UIView *)secondaryView removeFromSuperview];
  objc_storeStrong(&self->_secondaryView, a3);
  v9 = [(TUISystemInputAssistantPageView *)self scrollView];
  [v9 addSubview:v10];

LABEL_5:
  [(TUISystemInputAssistantPageView *)self setNeedsLayout];
}

- (void)setPrimaryView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_primaryView removeFromSuperview];
  primaryView = self->_primaryView;
  self->_primaryView = v4;
  v6 = v4;

  v7 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  [v7 addSubview:v6];

  [(TUISystemInputAssistantPageView *)self updateScrollEnabled];

  [(TUISystemInputAssistantPageView *)self setNeedsLayout];
}

- (TUISystemInputAssistantPageView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = TUISystemInputAssistantPageView;
  v3 = [(TUISystemInputAssistantPageView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUISystemInputAssistantPageView *)v3 setScrollEnabled:1];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(TUISystemInputAssistantPageView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    [(TUISystemInputAssistantPageView *)v4 setClipView:v6];

    v7 = [(TUISystemInputAssistantPageView *)v4 clipView];
    [(TUISystemInputAssistantPageView *)v4 addSubview:v7];

    v8 = objc_alloc(MEMORY[0x1E69DCEF8]);
    [(TUISystemInputAssistantPageView *)v4 bounds];
    v9 = [v8 initWithFrame:?];
    [(TUISystemInputAssistantPageView *)v4 setScrollView:v9];

    v10 = [(TUISystemInputAssistantPageView *)v4 clipView];
    v11 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [v10 addSubview:v11];

    v12 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [v12 setPagingEnabled:1];

    v13 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [v13 setShowsVerticalScrollIndicator:0];

    v14 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [v14 setShowsHorizontalScrollIndicator:0];

    v15 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [v15 setDelegate:v4];

    v16 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [v16 setClipsToBounds:0];

    v17 = [(TUISystemInputAssistantPageView *)v4 clipView];
    [v17 setClipsToBounds:1];

    v18 = objc_alloc(MEMORY[0x1E69DD250]);
    v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUISystemInputAssistantPageView *)v4 setPrimaryContainerView:v19];

    v20 = [(TUISystemInputAssistantPageView *)v4 primaryContainerView];
    v21 = [v20 layer];
    [v21 setAllowsGroupOpacity:0];

    v22 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    v23 = [(TUISystemInputAssistantPageView *)v4 primaryContainerView];
    [v22 addSubview:v23];

    [(TUISystemInputAssistantPageView *)v4 setHidesExpandButton:1];
    v4->_currentChevronStyle = 0;
    v4->_secondaryViewInitialized = 0;
  }

  return v4;
}

@end
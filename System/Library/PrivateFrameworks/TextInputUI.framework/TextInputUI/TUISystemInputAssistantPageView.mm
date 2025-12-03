@interface TUISystemInputAssistantPageView
- (CGSize)_contentSize;
- (TUISystemInputAssistantPageView)initWithFrame:(CGRect)frame;
- (TUISystemInputAssistantPageViewDelegate)pageViewDelegate;
- (id)_createExpandButtonIfNecessary;
- (id)imageSymbolConfigurationForAssistantItem;
- (unint64_t)_expandChevronImageStyleForRenderConfig:(id)config;
- (void)_checkOldBounds:(CGRect)bounds forContentOffsetChangeWithNewBounds:(CGRect)newBounds;
- (void)_setRenderConfig:(id)config;
- (void)_updateExpandButtonChevronImage;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHidesExpandButton:(BOOL)button;
- (void)setNeedsLayout;
- (void)setPrimaryView:(id)view;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSecondaryView:(id)view;
- (void)setSecondaryViewVisible:(BOOL)visible force:(BOOL)force withAnimationType:(unint64_t)type completion:(id)completion;
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
      _inheritedRenderConfig = [(TUISystemInputAssistantPageView *)self _inheritedRenderConfig];
      v5 = [(TUISystemInputAssistantPageView *)self _expandChevronImageStyleForRenderConfig:_inheritedRenderConfig];

      if (currentChevronStyle != v5)
      {
        _inheritedRenderConfig2 = [(TUISystemInputAssistantPageView *)self _inheritedRenderConfig];
        self->_currentChevronStyle = [(TUISystemInputAssistantPageView *)self _expandChevronImageStyleForRenderConfig:_inheritedRenderConfig2];

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
        imageSymbolConfigurationForAssistantItem = [(TUISystemInputAssistantPageView *)self imageSymbolConfigurationForAssistantItem];
        v12 = [v10 imageWithConfiguration:imageSymbolConfigurationForAssistantItem];

        cellView = [(TUIPredictionCellButton *)self->_expandButton cellView];
        [cellView setImage:v12];

        cellView2 = [(TUIPredictionCellButton *)self->_expandButton cellView];
        _inheritedRenderConfig3 = [(TUISystemInputAssistantPageView *)self _inheritedRenderConfig];
        [cellView2 setRenderConfig:_inheritedRenderConfig3];

        cellView3 = [(TUIPredictionCellButton *)self->_expandButton cellView];
        [cellView3 setImageTintColor:v17];
      }
    }
  }
}

- (void)updateScrollEnabled
{
  scrollEnabled = [(TUISystemInputAssistantPageView *)self scrollEnabled];
  if (scrollEnabled)
  {
    primaryView = [(TUISystemInputAssistantPageView *)self primaryView];
    if ([primaryView isHidden])
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      scrollView = [(TUISystemInputAssistantPageView *)self scrollView];
      [scrollView contentOffset];
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

  scrollView2 = [(TUISystemInputAssistantPageView *)self scrollView];
  [scrollView2 setScrollEnabled:v7];

  if (v6)
  {
  }

  if (scrollEnabled)
  {
  }

  primaryView2 = [(TUISystemInputAssistantPageView *)self primaryView];

  if (primaryView2)
  {
    scrollView3 = [(TUISystemInputAssistantPageView *)self scrollView];
    isScrollEnabled = [scrollView3 isScrollEnabled];

    if (isScrollEnabled)
    {
      scrollView4 = [(TUISystemInputAssistantPageView *)self scrollView];
      primaryContainerView = [(TUISystemInputAssistantPageView *)self primaryContainerView];
      [scrollView4 addSubview:primaryContainerView];
    }

    else
    {
      scrollView4 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
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
  scrollView = [(TUISystemInputAssistantPageView *)self scrollView];
  [scrollView contentSize];
  v9 = v8;
  v11 = v10;

  if (v4 != v9 || v6 != v11)
  {
    secondaryViewVisible = [(TUISystemInputAssistantPageView *)self secondaryViewVisible];
    scrollView2 = [(TUISystemInputAssistantPageView *)self scrollView];
    [scrollView2 setContentSize:{v4, v6}];

    [(TUISystemInputAssistantPageView *)self setSecondaryViewVisible:secondaryViewVisible];
  }

  [(TUISystemInputAssistantPageView *)self frame];
  width = v66.size.width;
  height = v66.size.height;
  v17 = CGRectGetHeight(v66);
  [(TUISystemInputAssistantPageView *)self bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22 + 1200.0;
  clipView = [(TUISystemInputAssistantPageView *)self clipView];
  [clipView setFrame:{v19, -600.0, v21, v23}];

  [(TUISystemInputAssistantPageView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  scrollView3 = [(TUISystemInputAssistantPageView *)self scrollView];
  [scrollView3 setFrame:{v26, 600.0, v28, v30}];

  primaryView = [(TUISystemInputAssistantPageView *)self primaryView];
  isHidden = [primaryView isHidden];

  primaryContainerView = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  v35 = primaryContainerView;
  if (isHidden)
  {
    [primaryContainerView setHidden:1];

    [(TUISystemInputAssistantPageView *)self hidesExpandButton];
LABEL_9:
    expandButton = [(TUISystemInputAssistantPageView *)self expandButton];
    [expandButton removeFromSuperview];

    self->_currentChevronStyle = 0;
    expandButton = self->_expandButton;
    self->_expandButton = 0;
    goto LABEL_11;
  }

  [primaryContainerView setHidden:0];

  v36 = *MEMORY[0x1E695EFF8];
  v37 = *(MEMORY[0x1E695EFF8] + 8);
  primaryContainerView2 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  [primaryContainerView2 setFrame:{v36, v37, width, height}];

  primaryContainerView3 = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  [primaryContainerView3 frame];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  primaryView2 = [(TUISystemInputAssistantPageView *)self primaryView];
  [primaryView2 setFrame:{v41, v43, v45, v47}];

  if ([(TUISystemInputAssistantPageView *)self hidesExpandButton])
  {
    goto LABEL_9;
  }

  primaryView3 = [(TUISystemInputAssistantPageView *)self primaryView];
  [primaryView3 frame];
  UIRectInset();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  primaryView4 = [(TUISystemInputAssistantPageView *)self primaryView];
  [primaryView4 setFrame:{v53, v55, v57, v59}];

  expandButton = [(TUISystemInputAssistantPageView *)self primaryView];
  [expandButton frame];
  MaxX = CGRectGetMaxX(v67);
  expandButton2 = [(TUISystemInputAssistantPageView *)self expandButton];
  [expandButton2 setFrame:{MaxX, 0.0, v17, height}];

LABEL_11:
  secondaryView = [(TUISystemInputAssistantPageView *)self secondaryView];

  if (secondaryView)
  {
    secondaryView2 = [(TUISystemInputAssistantPageView *)self secondaryView];
    [secondaryView2 setFrame:{width, 0.0, width, height}];
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

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
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
    pageViewDelegate = [(TUISystemInputAssistantPageView *)self pageViewDelegate];
    [pageViewDelegate assistantPageView:self didSwitchToSecondaryViewVisible:v7];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)_checkOldBounds:(CGRect)bounds forContentOffsetChangeWithNewBounds:(CGRect)newBounds
{
  v4 = bounds.size.width == newBounds.size.width && bounds.size.height == newBounds.size.height;
  if (!v4 && self->_secondaryViewInitialized)
  {
    if (self->_secondaryView)
    {
      [(TUISystemInputAssistantPageView *)self setSecondaryViewVisible:self->_secondaryViewVisible force:bounds.size.width != newBounds.size.width withAnimationType:2 completion:0, bounds.origin.x, bounds.origin.y];
    }
  }
}

- (void)setSecondaryViewVisible:(BOOL)visible force:(BOOL)force withAnimationType:(unint64_t)type completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  if (force || !self->_secondaryViewInitialized || self->_secondaryViewVisible != visibleCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke;
    aBlock[3] = &unk_1E72D85B8;
    aBlock[4] = self;
    v31 = visibleCopy;
    v11 = _Block_copy(aBlock);
    v12 = _Block_copy(v11);
    v13 = _Block_copy(completionCopy);
    if (visibleCopy)
    {
      primaryContainerView = [(TUISystemInputAssistantPageView *)self primaryContainerView];
      [(TUISystemInputAssistantPageView *)self secondaryView];
    }

    else
    {
      primaryContainerView = [(TUISystemInputAssistantPageView *)self secondaryView];
      [(TUISystemInputAssistantPageView *)self primaryContainerView];
    }
    v15 = ;
    v16 = v15;
    if (type == 2)
    {
      [v15 frame];
      [primaryContainerView frame];
      [v16 setFrame:?];
      [v16 setAlpha:0.0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke_2;
      v27[3] = &unk_1E72D85E0;
      v19 = primaryContainerView;
      v28 = v19;
      v29 = v16;
      v20 = _Block_copy(v27);

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __94__TUISystemInputAssistantPageView_setSecondaryViewVisible_force_withAnimationType_completion___block_invoke_3;
      v22[3] = &unk_1E72D8608;
      v23 = v19;
      selfCopy = self;
      v25 = v11;
      v26 = completionCopy;
      v21 = _Block_copy(v22);

      v13 = v21;
      v12 = v20;
    }

    else if (!type)
    {
      layer = [primaryContainerView layer];
      [layer removeAllAnimations];

      layer2 = [v16 layer];
      [layer2 removeAllAnimations];

      v11[2](v11);
LABEL_12:
      self->_secondaryViewInitialized = 1;
      self->_secondaryViewVisible = visibleCopy;

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

    cellView = [(TUIPredictionCellButton *)self->_expandButton cellView];
    [cellView setVisibleSeparatorEdges:2];

    cellView2 = [(TUIPredictionCellButton *)self->_expandButton cellView];
    [cellView2 setSeparatorMargin:0.0];

    [(TUISystemInputAssistantPageView *)self _updateExpandButtonChevronImage];
    primaryContainerView = [(TUISystemInputAssistantPageView *)self primaryContainerView];
    [primaryContainerView addSubview:self->_expandButton];
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

- (unint64_t)_expandChevronImageStyleForRenderConfig:(id)config
{
  if ([config lightKeyboard])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_setRenderConfig:(id)config
{
  v4.receiver = self;
  v4.super_class = TUISystemInputAssistantPageView;
  [(TUISystemInputAssistantPageView *)&v4 _setRenderConfig:config];
  [(TUISystemInputAssistantPageView *)self _updateExpandButtonChevronImage];
}

- (void)setScrollEnabled:(BOOL)enabled
{
  if (self->_scrollEnabled != enabled)
  {
    self->_scrollEnabled = enabled;
    [(TUISystemInputAssistantPageView *)self updateScrollEnabled];
  }
}

- (void)setHidesExpandButton:(BOOL)button
{
  self->_hidesExpandButton = button;
  [(TUISystemInputAssistantPageView *)self updateScrollEnabled];
  if (!button)
  {
    _createExpandButtonIfNecessary = [(TUISystemInputAssistantPageView *)self _createExpandButtonIfNecessary];
  }

  [(TUISystemInputAssistantPageView *)self setNeedsLayout];
}

- (void)setSecondaryView:(id)view
{
  viewCopy = view;
  secondaryView = self->_secondaryView;
  v10 = viewCopy;
  if (secondaryView == viewCopy)
  {
    superview = [(UIView *)viewCopy superview];
    scrollView = [(TUISystemInputAssistantPageView *)self scrollView];

    if (superview == scrollView)
    {
      goto LABEL_5;
    }

    secondaryView = self->_secondaryView;
  }

  [(UIView *)secondaryView removeFromSuperview];
  objc_storeStrong(&self->_secondaryView, view);
  scrollView2 = [(TUISystemInputAssistantPageView *)self scrollView];
  [scrollView2 addSubview:v10];

LABEL_5:
  [(TUISystemInputAssistantPageView *)self setNeedsLayout];
}

- (void)setPrimaryView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_primaryView removeFromSuperview];
  primaryView = self->_primaryView;
  self->_primaryView = viewCopy;
  v6 = viewCopy;

  primaryContainerView = [(TUISystemInputAssistantPageView *)self primaryContainerView];
  [primaryContainerView addSubview:v6];

  [(TUISystemInputAssistantPageView *)self updateScrollEnabled];

  [(TUISystemInputAssistantPageView *)self setNeedsLayout];
}

- (TUISystemInputAssistantPageView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = TUISystemInputAssistantPageView;
  v3 = [(TUISystemInputAssistantPageView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUISystemInputAssistantPageView *)v3 setScrollEnabled:1];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(TUISystemInputAssistantPageView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    [(TUISystemInputAssistantPageView *)v4 setClipView:v6];

    clipView = [(TUISystemInputAssistantPageView *)v4 clipView];
    [(TUISystemInputAssistantPageView *)v4 addSubview:clipView];

    v8 = objc_alloc(MEMORY[0x1E69DCEF8]);
    [(TUISystemInputAssistantPageView *)v4 bounds];
    v9 = [v8 initWithFrame:?];
    [(TUISystemInputAssistantPageView *)v4 setScrollView:v9];

    clipView2 = [(TUISystemInputAssistantPageView *)v4 clipView];
    scrollView = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [clipView2 addSubview:scrollView];

    scrollView2 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [scrollView2 setPagingEnabled:1];

    scrollView3 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [scrollView3 setShowsVerticalScrollIndicator:0];

    scrollView4 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [scrollView4 setShowsHorizontalScrollIndicator:0];

    scrollView5 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [scrollView5 setDelegate:v4];

    scrollView6 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    [scrollView6 setClipsToBounds:0];

    clipView3 = [(TUISystemInputAssistantPageView *)v4 clipView];
    [clipView3 setClipsToBounds:1];

    v18 = objc_alloc(MEMORY[0x1E69DD250]);
    v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUISystemInputAssistantPageView *)v4 setPrimaryContainerView:v19];

    primaryContainerView = [(TUISystemInputAssistantPageView *)v4 primaryContainerView];
    layer = [primaryContainerView layer];
    [layer setAllowsGroupOpacity:0];

    scrollView7 = [(TUISystemInputAssistantPageView *)v4 scrollView];
    primaryContainerView2 = [(TUISystemInputAssistantPageView *)v4 primaryContainerView];
    [scrollView7 addSubview:primaryContainerView2];

    [(TUISystemInputAssistantPageView *)v4 setHidesExpandButton:1];
    v4->_currentChevronStyle = 0;
    v4->_secondaryViewInitialized = 0;
  }

  return v4;
}

@end
@interface _UINavigationBarVisualProviderLegacyIOS
- (BOOL)_shouldPopForTouchAtPoint:(CGPoint)point;
- (BOOL)_supportsCanvasView;
- (BOOL)_suppressBackIndicator;
- (BOOL)canHandleStatusBarTouchAtPoint:(CGPoint)point;
- (BOOL)gestureRecognizerShouldBegin:(id)begin defaultAnswer:(id)answer;
- (CGPoint)frameOriginForStatusBarLocatedAt:(CGPoint)at;
- (CGRect)_contentViewFrameInBounds:(CGRect)bounds style:(id)style;
- (CGSize)_preferredContentSizeForItem:(id)item;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_backIndicatorClippingMargin;
- (double)_backTitleWidthOverTitleWidthForMatchingBackButtonView:(id)view titleView:(id)titleView withBackButtonWidth:(double)width;
- (double)_effectiveBackIndicatorLeftMargin;
- (id)_backButtonForBackItem:(id)item topItem:(id)topItem;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_defaultTitleFontForItem:(id)item fittingHeight:(double)height withScaleAdjustment:(double)adjustment;
- (id)_effectiveBackIndicatorImage;
- (id)_effectiveBackIndicatorTransitionMaskImage;
- (id)_navigationItemAtPoint:(CGPoint)point;
- (id)_shim_compatibilityBackgroundView;
- (id)_shim_customHitTest:(CGPoint)test forView:(id)view;
- (id)_shim_displayViewsIncludingHiddenBackButtonViews:(BOOL)views;
- (id)_shim_userContentGuide;
- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path;
- (id)backButtonViewAtPoint:(CGPoint)point;
- (id)preferredFocusedView;
- (int64_t)_shim_backdropStyle;
- (int64_t)statusBarStyle;
- (unint64_t)_subviewIndexAboveBackground;
- (void)_completeNavigationTransitionWithIncomingViews:(id)views outgoingViews:(id)outgoingViews transitionAssistant:(id)assistant completion:(id)completion;
- (void)_completeTopItemTransitionWithIncomingViews:(id)views outgoingViews:(id)outgoingViews previousLeftViews:(id)leftViews previousRightViews:(id)rightViews enableUserInteraction:(id)interaction transitionAssistant:(id)assistant;
- (void)_getLeftMargin:(double *)margin rightMargin:(double *)rightMargin forNavigationItem:(id)item showingBackButton:(BOOL)button visualStyle:(id)style;
- (void)_getTitleViewFrame:(CGRect *)frame leftViewFrames:(id)frames rightViewFrames:(id)viewFrames forPreviousItem:(id)item item:(id)a7;
- (void)_getTitleViewFrame:(CGRect *)frame leftViewFrames:(id)frames rightViewFrames:(id)viewFrames forPreviousItem:(id)item item:(id)a7 returnedIdealWidthOfTextContent:(double *)content availableLayoutWidthForTextContent:(double *)textContent idealBackButtonWidth:(double *)self0;
- (void)_handleMouseDownAtPoint:(CGPoint)point;
- (void)_handleMouseUpAtPoint:(CGPoint)point;
- (void)_layoutInBounds:(CGRect)bounds withVisualStyle:(id)style;
- (void)_layoutSubviewsFromContentView;
- (void)_popForTouchAtPoint:(CGPoint)point;
- (void)_setUpContentFocusContainerGuide;
- (void)_setViewsAnimated:(BOOL)animated forTopNavigationItem:(id)item backNavigationItem:(id)navigationItem previousTopItem:(id)topItem;
- (void)_shim_popForCarplayPressAtFakePoint:(CGPoint)point;
- (void)_shim_pressBackIndicator:(BOOL)indicator initialPress:(BOOL)press;
- (void)_shim_setCustomBackgroundView:(id)view;
- (void)_shim_setDisableBlurTinting:(BOOL)tinting;
- (void)_shim_setPromptText:(id)text animated:(BOOL)animated;
- (void)_shim_setUseContentView:(BOOL)view;
- (void)_shim_touchesBegan:(id)began withEvent:(id)event;
- (void)_shim_touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)_shim_touchesEnded:(id)ended withEvent:(id)event;
- (void)_shim_touchesMoved:(id)moved withEvent:(id)event;
- (void)_shim_updateBackgroundViewIgnoringFlag;
- (void)_shim_updateUserContentGuideForTopItem:(id)item backItem:(id)backItem;
- (void)_startPopAnimationFromOldBackItem:(id)item oldTopItem:(id)topItem newBackItem:(id)backItem newTopItem:(id)newTopItem withTransitionAssistant:(id)assistant completion:(id)completion;
- (void)_startPushAnimationFromOldBackItem:(id)item oldTopItem:(id)topItem newBackItem:(id)backItem newTopItem:(id)newTopItem withTransitionAssistant:(id)assistant completion:(id)completion;
- (void)_updateBackIndicatorImage;
- (void)_updateBackIndicatorViewTintColor;
- (void)_updateBackground;
- (void)_wrapView:(id)view inClippingViewWithLeftBoundary:(double)boundary rightBoundary:(double)rightBoundary leftMaskImage:(id)image leftMaskIsChevron:(BOOL)chevron rightMaskImage:(id)maskImage;
- (void)barSizeChanged;
- (void)changeAppearance;
- (void)intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)popAnimated:(BOOL)animated completion:(id)completion;
- (void)prepare;
- (void)prepareForPop;
- (void)prepareForPush;
- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem;
- (void)pushAnimated:(BOOL)animated completion:(id)completion;
- (void)removeContentForItem:(id)item;
- (void)setBackButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setupTopNavigationItem;
- (void)teardown;
- (void)traitCollectionDidChange:(id)change;
- (void)updateArchivedSubviews:(id)subviews;
- (void)updateBackgroundGroupName;
- (void)updateTopNavigationItemAnimated:(BOOL)animated;
- (void)updateTopNavigationItemTitleView;
@end

@implementation _UINavigationBarVisualProviderLegacyIOS

- (void)prepare
{
  v10.receiver = self;
  v10.super_class = _UINavigationBarVisualProviderLegacyIOS;
  [(_UINavigationBarVisualProvider *)&v10 prepare];
  v3 = [_UIBarBackground alloc];
  [(UIView *)self->super._navigationBar bounds];
  v4 = [(_UIBarBackground *)v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  v6 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
  backgroundViewLayout = self->_backgroundViewLayout;
  self->_backgroundViewLayout = v6;

  [(_UIBarBackground *)self->_backgroundView setLayout:self->_backgroundViewLayout];
  [(_UIBarBackground *)self->_backgroundView setTopAligned:1];
  [(UIView *)self->super._navigationBar addSubview:self->_backgroundView];
  v8 = [[_UINavigationBarGestureHandler alloc] initWithNavigationBar:self->super._navigationBar];
  gestureHandler = self->_gestureHandler;
  self->_gestureHandler = v8;

  [(_UINavigationBarGestureHandler *)self->_gestureHandler setDelegate:self];
  [(_UINavigationBarVisualProviderLegacyIOS *)self _setUpContentFocusContainerGuide];
}

- (void)teardown
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIView *)self->_layoutView removeFromSuperview];
  layoutView = self->_layoutView;
  self->_layoutView = 0;

  self->_contentView = 0;
  v5.receiver = self;
  v5.super_class = _UINavigationBarVisualProviderLegacyIOS;
  [(_UINavigationBarVisualProvider *)&v5 teardown];
}

- (void)changeAppearance
{
  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  prompt = [(_UINavBarPrompt *)self->_prompt prompt];

  if (prompt)
  {
    prompt = self->_prompt;

    [(UIView *)prompt setNeedsLayout];
  }
}

- (void)updateArchivedSubviews:(id)subviews
{
  v27[5] = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v27[0] = self->_titleView;
  v27[1] = self->_prompt;
  v27[2] = self->_backgroundView;
  v27[3] = self->_backIndicatorView;
  v5 = 0;
  v27[4] = self->_layoutView;
  do
  {
    if (v27[v5])
    {
      [subviewsCopy removeObject:?];
    }

    ++v5;
  }

  while (v5 != 5);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_rightViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [subviewsCopy removeObject:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_leftViews;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [subviewsCopy removeObject:{*(*(&v17 + 1) + 8 * v15++), v17}];
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  for (i = 4; i != -1; --i)
  {
  }
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  -[_UINavigationBarGestureHandler setIdiom:](self->_gestureHandler, "setIdiom:", [traitCollection userInterfaceIdiom]);
  [(_UINavigationBarVisualProviderLegacyIOS *)self _setUpContentFocusContainerGuide];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v28 = *MEMORY[0x1E69E9840];
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _customLeftViews = [topItem _customLeftViews];
  v7 = [_customLeftViews countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(_customLeftViews);
        }

        [*(*(&v22 + 1) + 8 * v10++) setSemanticContentAttribute:attribute];
      }

      while (v8 != v10);
      v8 = [_customLeftViews countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _customRightViews = [topItem _customRightViews];
  v12 = [_customRightViews countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(_customRightViews);
        }

        [*(*(&v18 + 1) + 8 * v15++) setSemanticContentAttribute:attribute];
      }

      while (v13 != v15);
      v13 = [_customRightViews countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  [(UIImageView *)self->_backIndicatorView setSemanticContentAttribute:attribute];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v17 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:topItem];
  [v17 setSemanticContentAttribute:attribute];
}

- (int64_t)statusBarStyle
{
  if ([(UINavigationBar *)self->super._navigationBar barStyle])
  {
    return 1;
  }

  [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout topInset];
  if (v3 > 0.0)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = _UINavigationBarVisualProviderLegacyIOS;
  return [(_UINavigationBarVisualProvider *)&v5 statusBarStyle];
}

- (BOOL)canHandleStatusBarTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  if (backItem)
  {
    v8 = [(_UINavigationBarVisualProviderLegacyIOS *)self _navigationItemAtPoint:x, y];
    v6 = backItem == v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)preferredFocusedView
{
  firstObject = [(NSArray *)self->_leftViews firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    firstObject2 = firstObject;
  }

  else
  {
    firstObject2 = [(NSArray *)self->_rightViews firstObject];
  }

  v6 = firstObject2;

  return v6;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  layer = [view layer];
  v7 = [layer implicitAnimationForKeyPath:pathCopy];

  v8 = [v7 copy];

  return v8;
}

- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path
{
  navigationBar = self->super._navigationBar;
  pathCopy = path;
  viewCopy = view;
  _currentVisualStyle = [(UINavigationBar *)navigationBar _currentVisualStyle];
  transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  v11 = [_currentVisualStyle timingFunctionForAnimationInView:viewCopy withKeyPath:pathCopy isInteractive:{objc_msgSend(transitionAssistant, "interactive")}];

  return v11;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin defaultAnswer:(id)answer
{
  answerCopy = answer;
  beginCopy = begin;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [beginCopy locationInView:self->super._navigationBar];
    v9 = v8;
    v11 = v10;

    beginCopy = [(_UINavigationBarVisualProviderLegacyIOS *)self backButtonViewAtPoint:v9, v11];
    v12 = beginCopy == 0;
  }

  else
  {
    v12 = answerCopy[2](answerCopy, beginCopy);
  }

  return v12;
}

- (CGPoint)frameOriginForStatusBarLocatedAt:(CGPoint)at
{
  v3 = [(UINavigationBar *)self->super._navigationBar barPosition:at.x];
  v4 = 0.0;
  v5 = 20.0;
  if (v3 != 3)
  {
    v5 = 0.0;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)_preferredContentSizeForItem:(id)item
{
  itemCopy = item;
  [(UINavigationBar *)self->super._navigationBar defaultSizeForOrientation:[(UINavigationBar *)self->super._navigationBar effectiveInterfaceOrientation]];
  v6 = v5;
  v8 = v7;
  if (itemCopy)
  {
    _activeBarMetrics = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72___UINavigationBarVisualProviderLegacyIOS__preferredContentSizeForItem___block_invoke;
    v16[3] = &__block_descriptor_48_e8_d16__0q8l;
    *&v16[4] = v6;
    *&v16[5] = v8;
    [itemCopy _desiredHeightForBarMetrics:_activeBarMetrics defaultHeightBlock:v16];
    v8 = v10;
  }

  superview = [(UIView *)self->super._navigationBar superview];
  v12 = superview;
  if (superview)
  {
    [superview bounds];
    v6 = v13;
  }

  v14 = v6;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(UIView *)self->_contentView subviews];
  v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidateIntrinsicContentSize];
      }

      while (v4 != v6);
      v4 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if ([(_UINavigationBarVisualProviderLegacyIOS *)self _supportsCanvasView:fits.width])
  {
    previousTopItem = self->super._itemForMeasuring;
    if (!previousTopItem)
    {
      state = [(_UINavigationBarItemStack *)self->super._stack state];
      if (state == 2)
      {
        transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
        if ([transitionAssistant cancelledTransition])
        {
          previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
LABEL_9:

          goto LABEL_7;
        }
      }

      previousTopItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
      if (state == 2)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    previousTopItem = 0;
  }

LABEL_7:
  [(_UINavigationBarVisualProviderLegacyIOS *)self _preferredContentSizeForItem:previousTopItem];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)barSizeChanged
{
  currentBackButton = [(UINavigationBar *)self->super._navigationBar currentBackButton];
  [currentBackButton _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)intrinsicContentSizeInvalidatedForChildView:(id)view
{
  backIndicatorView = self->_backIndicatorView;
  if (backIndicatorView == view)
  {
    [(UIView *)backIndicatorView sizeToFit];
    contentView = self->_contentView;

    [(UIView *)contentView setNeedsLayout];
  }
}

- (void)_layoutSubviewsFromContentView
{
  window = [(UIView *)self->_layoutView window];

  if (window && ![(_UINavigationBarItemStack *)self->super._stack state])
  {
    [(UIView *)self->_layoutView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
    _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
    [(_UINavigationBarVisualProviderLegacyIOS *)self _layoutInBounds:_currentVisualStyle withVisualStyle:v5, v7, v9, v11];
  }
}

- (void)_layoutInBounds:(CGRect)bounds withVisualStyle:(id)style
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v98[1] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  prompt = self->_prompt;
  [styleCopy promptInset];
  v11 = v10;
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  v100 = CGRectInset(v99, v11, 0.0);
  [(UIView *)prompt setFrame:v100.origin.x, v100.origin.y, v100.size.width, v100.size.height];
  v12 = topItem;
  [topItem _updateViewsForBarSizeChangeAndApply:1];
  metricsIsMini = [styleCopy metricsIsMini];
  if (([topItem leftItemsSupplementBackButton] & 1) != 0 || (objc_msgSend(topItem, "leftBarButtonItems"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v12 = topItem, !v15))
  {
    v68 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:v12];
    v12 = topItem;
  }

  else
  {
    v68 = 0;
  }

  _customLeftViews = [v12 _customLeftViews];
  if (v68)
  {
    v98[0] = v68;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
    v17 = v16;
    if (_customLeftViews)
    {
      v18 = [v16 arrayByAddingObjectsFromArray:?];

      v17 = v18;
    }
  }

  else
  {
    v17 = _customLeftViews;
  }

  objc_opt_class();
  objc_opt_class();
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v92 objects:v97 count:16];
  if (v20)
  {
    v21 = *v93;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v93 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v92 + 1) + 8 * i);
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
        {
          [v23 setControlSize:metricsIsMini];
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v92 objects:v97 count:16];
    }

    while (v20);
  }

  [topItem _customRightViews];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v24 = v89 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (v25)
  {
    v26 = *v89;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v89 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v88 + 1) + 8 * j);
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
        {
          [v28 setControlSize:metricsIsMini];
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v88 objects:v96 count:16];
    }

    while (v25);
  }

  _titleView = [topItem _titleView];
  if (_titleView && (objc_opt_isKindOfClass() & 1) != 0)
  {
    [_titleView setControlSize:metricsIsMini];
  }

  v30 = *(MEMORY[0x1E695F058] + 16);
  v86 = *MEMORY[0x1E695F058];
  v87 = v30;
  v31 = [v19 count];
  v32 = [v24 count];
  v33 = v32;
  if (!v31)
  {
    v34 = 0;
    if (v32)
    {
      goto LABEL_34;
    }

LABEL_36:
    v35 = 0;
    goto LABEL_37;
  }

  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v31];
  if (!v33)
  {
    goto LABEL_36;
  }

LABEL_34:
  v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v33];
LABEL_37:
  v66 = v35;
  [_UINavigationBarVisualProviderLegacyIOS _getTitleViewFrame:"_getTitleViewFrame:leftViewFrames:rightViewFrames:forPreviousItem:item:" leftViewFrames:&v86 rightViewFrames:v34 forPreviousItem:? item:?];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [_titleView _shouldUseNavigationBarHeight])
  {
    metricsHasPrompt = [styleCopy metricsHasPrompt];
    v37 = 0.0;
    if (metricsHasPrompt)
    {
      [styleCopy barPromptHeight];
      v39 = v38;
      [styleCopy barHeight];
      v37 = v39 - v40;
    }

    *(&v86 + 1) = v37;
    *(&v87 + 1) = height - v37;
  }

  [_titleView setFrame:{v86, v87}];
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __75___UINavigationBarVisualProviderLegacyIOS__layoutInBounds_withVisualStyle___block_invoke;
  v77[3] = &unk_1E70F7D18;
  v81 = v31;
  v41 = v19;
  v78 = v41;
  selfCopy = self;
  v80 = &v82;
  [v34 enumerateObjectsUsingBlock:v77];
  v42 = v83[3] + 1;
  if (v42 < v31)
  {
    do
    {
      v43 = [v41 objectAtIndex:v42];
      [v43 removeFromSuperview];

      ++v42;
    }

    while (v31 != v42);
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __75___UINavigationBarVisualProviderLegacyIOS__layoutInBounds_withVisualStyle___block_invoke_2;
  v72[3] = &unk_1E70F7D18;
  v76 = v33;
  v44 = v24;
  v73 = v44;
  selfCopy2 = self;
  v75 = &v82;
  [v66 enumerateObjectsUsingBlock:v72];
  v45 = v83[3] + 1;
  if (v45 < v33)
  {
    do
    {
      v46 = [v44 objectAtIndex:v45];
      [v46 removeFromSuperview];

      ++v45;
    }

    while (v33 != v45);
  }

  contentView = self->_contentView;
  items = [(UINavigationBar *)self->super._navigationBar items];
  v49 = [items count];
  if (v31 | v33)
  {
    v51 = v49 == 0;
  }

  else
  {
    v51 = 1;
  }

  LODWORD(v50) = -1105618534;
  if (v51)
  {
    *&v50 = 0.0;
  }

  [(UIView *)contentView setCharge:v50];

  [(_UINavigationBarVisualProviderLegacyIOS *)self _updateBackIndicatorImage];
  backIndicatorView = self->_backIndicatorView;
  if (backIndicatorView)
  {
    [(UIView *)backIndicatorView frame];
    v65 = v53;
    v55 = v54;
    [(_UINavigationBarVisualProviderLegacyIOS *)self _effectiveBackIndicatorLeftMargin];
    v57 = v56;
    if ((*(&self->super._navigationBar->super._viewFlags + 18) & 0x40) != 0)
    {
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      v57 = CGRectGetMaxX(v101) - v65 - v57;
    }

    [styleCopy backIndicatorBottomMargin];
    [(UIImageView *)self->_backIndicatorView alignmentRectInsets];
    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = width;
    v102.size.height = height;
    CGRectGetMaxY(v102);
    UIRoundToViewScale(self->super._navigationBar);
    [(UIImageView *)self->_backIndicatorView setFrame:v57, v58, v65, v55];
    [(UIView *)self->_contentView bringSubviewToFront:self->_backIndicatorView];
    v59 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:topItem];
    if (-[UINavigationBar _hasBackButton](self->super._navigationBar, "_hasBackButton") && [topItem _leftItemsWantBackButton] && (objc_msgSend(v59, "_suppressesBackIndicatorView") & 1) == 0)
    {
      [v59 alpha];
      v60 = v63;
    }

    else
    {
      v60 = 0.0;
      if ([topItem _wantsBackButtonIndicator])
      {
        _buttonForBackButtonIndicator = [topItem _buttonForBackButtonIndicator];
        [_buttonForBackButtonIndicator alpha];
        v60 = v62;
      }
    }

    [(UIView *)self->_backIndicatorView alpha];
    if ((v60 == 0.0) == (v64 != 0.0))
    {
      [(UIView *)self->_backIndicatorView setAlpha:v60];
    }
  }

  _Block_object_dispose(&v82, 8);
}

- (void)layoutSubviews
{
  _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
  [(UIView *)self->super._navigationBar bounds];
  if (self->_layoutView)
  {
    [(_UINavigationBarVisualProviderLegacyIOS *)self _contentViewFrameInBounds:_currentVisualStyle style:?];
    [(UIView *)self->_layoutView setFrame:?];
    [(UIView *)self->_layoutView setNeedsLayout];
    [(UIView *)self->_layoutView layoutIfNeeded];
  }

  else
  {
    [(_UINavigationBarVisualProviderLegacyIOS *)self _layoutInBounds:_currentVisualStyle withVisualStyle:?];
  }

  [(_UINavigationBarVisualProviderLegacyIOS *)self _updateBackground];
}

- (void)prepareForPush
{
  _barStyle = [(UINavigationBar *)self->super._navigationBar _barStyle];
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _titleView = [topItem _titleView];
  [_titleView setAlpha:0.0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_titleView setTitleAutoresizesToFit:{-[UINavigationBar _titleAutoresizesToFit](self->super._navigationBar, "_titleAutoresizesToFit")}];
  }

  [(UIView *)self->_contentView addSubview:_titleView];
  objc_storeStrong(&self->_titleView, _titleView);
  if ([topItem hidesBackButton])
  {
    backButtonView = 0;
  }

  else
  {
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    backButtonView = [backItem backButtonView];

    if (backButtonView)
    {
      [backButtonView setStyle:_barStyle];
      [backButtonView setPressed:0];
      [(UIView *)self->_contentView addSubview:backButtonView];
      if ([backButtonView _appearanceIsInvalid])
      {
        window = [(UIView *)self->super._navigationBar window];
        [_UIAppearance _applyInvocationsTo:backButtonView window:window];
      }

      if ([backButtonView customBackgroundImageChangedToOrFromNil])
      {
        [(_UINavigationBarVisualProviderLegacyIOS *)self _updateBackIndicatorImage];
      }
    }
  }
}

- (void)prepareForPop
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  if (topItem)
  {
    contentView = self->_contentView;
    v6 = topItem;
    _titleView = [topItem _titleView];
    [(UIView *)contentView addSubview:_titleView];

    topItem = v6;
  }
}

- (void)removeContentForItem:(id)item
{
  contentView = self->_contentView;
  if (!contentView)
  {
    contentView = self->super._navigationBar;
  }

  [item _removeContentInView:contentView];
}

- (void)pushAnimated:(BOOL)animated completion:(id)completion
{
  stack = self->super._stack;
  completionCopy = completion;
  if (animated)
  {
    previousBackItem = [(_UINavigationBarItemStack *)stack previousBackItem];
    previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    [(_UINavigationBarVisualProviderLegacyIOS *)self _startPushAnimationFromOldBackItem:previousBackItem oldTopItem:previousTopItem newBackItem:backItem newTopItem:topItem withTransitionAssistant:transitionAssistant completion:completionCopy];
  }

  else
  {
    previousBackItem = [(_UINavigationBarItemStack *)stack topItem];
    previousTopItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    backItem = [(_UINavigationBarItemStack *)self->super._stack previousBackItem];
    _titleView = [previousBackItem _titleView];
    [_titleView setAlpha:1.0];

    topItem = [backItem backButtonView];
    [topItem _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
    [topItem removeFromSuperview];
    if (previousTopItem)
    {
      _titleView2 = [previousTopItem _titleView];
      [_titleView2 removeFromSuperview];
      backButtonView = [previousTopItem backButtonView];
      [backButtonView setSemanticContentAttribute:{-[UIView semanticContentAttribute](self->super._navigationBar, "semanticContentAttribute")}];
      if ([previousBackItem hidesBackButton])
      {
        v15 = 0.0;
        [backButtonView setAlpha:0.0];
      }

      else
      {
        _leftItemsWantBackButton = [previousBackItem _leftItemsWantBackButton];
        v15 = 0.0;
        if (_leftItemsWantBackButton)
        {
          v17 = 1.0;
        }

        else
        {
          v17 = 0.0;
        }

        [backButtonView setAlpha:v17];
        if (_leftItemsWantBackButton)
        {
          if ([backButtonView _suppressesBackIndicatorView])
          {
            v15 = 0.0;
          }

          else
          {
            v15 = 1.0;
          }
        }
      }
    }

    else
    {
      v15 = 0.0;
    }

    [(UIView *)self->_backIndicatorView setAlpha:v15];
    (*(completionCopy + 2))(completionCopy, 0, 0);

    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)popAnimated:(BOOL)animated completion:(id)completion
{
  stack = self->super._stack;
  completionCopy = completion;
  if (animated)
  {
    previousBackItem = [(_UINavigationBarItemStack *)stack previousBackItem];
    previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    [(_UINavigationBarVisualProviderLegacyIOS *)self _startPopAnimationFromOldBackItem:previousBackItem oldTopItem:previousTopItem newBackItem:backItem newTopItem:topItem withTransitionAssistant:transitionAssistant completion:completionCopy];
  }

  else
  {
    previousBackItem = [(_UINavigationBarItemStack *)stack topItem];
    previousTopItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    previousTopItem2 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    backItem = previousTopItem2;
    if (previousTopItem2)
    {
      navigationBar = [previousTopItem2 navigationBar];
      navigationBar = self->super._navigationBar;

      if (navigationBar == navigationBar)
      {
        [backItem _removeTitleAndButtonViews];
        [backItem setNavigationBar:0];
      }

      navigationBar2 = [previousBackItem navigationBar];

      if (navigationBar2)
      {
        backButtonView = [previousBackItem backButtonView];
        [backButtonView _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
      }
    }

    if (previousBackItem)
    {
      _titleView = [previousBackItem _titleView];
      backButtonView2 = [previousBackItem backButtonView];
      [backButtonView2 removeFromSuperview];

      [(UIView *)_titleView setAlpha:1.0];
      titleView = self->_titleView;
      self->_titleView = _titleView;

      [previousBackItem updateNavigationBarButtonsAnimated:0];
    }

    if (previousTopItem)
    {
      backButtonView3 = [previousTopItem backButtonView];
      [backButtonView3 setPressed:0];
      transitionAssistant2 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
      if ([transitionAssistant2 shouldHideBackButtonDuringTransition] & 1) != 0 || (objc_msgSend(previousBackItem, "hidesBackButton"))
      {

        v22 = 0.0;
        v23 = 0.0;
      }

      else
      {
        _leftItemsWantBackButton = [previousBackItem _leftItemsWantBackButton];

        v22 = 0.0;
        v23 = 0.0;
        if (_leftItemsWantBackButton)
        {
          _suppressesBackIndicatorView = [backButtonView3 _suppressesBackIndicatorView];
          v22 = 1.0;
          if (_suppressesBackIndicatorView)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = 1.0;
          }
        }
      }

      [backButtonView3 setAlpha:v22];
      [(UIView *)self->_contentView addSubview:backButtonView3];
    }

    else
    {
      v23 = 0.0;
    }

    [(UIView *)self->_backIndicatorView setAlpha:v23];
    transitionAssistant3 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    (*(completionCopy + 2))(completionCopy, 0, transitionAssistant3);

    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)updateTopNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
  [(_UINavigationBarVisualProviderLegacyIOS *)self _setViewsAnimated:animatedCopy forTopNavigationItem:topItem backNavigationItem:backItem previousTopItem:previousTopItem];
}

- (void)updateTopNavigationItemTitleView
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  obj = [topItem _titleView];

  v4 = obj;
  titleView = self->_titleView;
  if (titleView != obj)
  {
    superview = [(UIView *)titleView superview];
    if (superview == self->_contentView)
    {
      v7 = self->_titleView;
    }

    else
    {
      if (![(NSMutableArray *)self->_slideTransitionClippingViews containsObject:superview])
      {
LABEL_7:
        objc_storeStrong(&self->_titleView, obj);
        [(UIView *)self->_titleView setAlpha:1.0];
        [(UIView *)self->_contentView addSubview:obj];

        v4 = obj;
        goto LABEL_8;
      }

      [(NSMutableArray *)self->_slideTransitionClippingViews removeObject:superview];
      v7 = superview;
    }

    [(UIView *)v7 removeFromSuperview];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setupTopNavigationItem
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _titleView = [topItem _titleView];
  v4 = _titleView;
  if (_titleView)
  {
    [_titleView setAlpha:1.0];
    [(UIView *)self->_contentView addSubview:v4];
  }

  objc_storeStrong(&self->_titleView, v4);
  previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v7 = topItem;
  if (previousTopItem != topItem)
  {
    [topItem _updateViewsForBarSizeChangeAndApply:0];
    [(_UINavigationBarVisualProviderLegacyIOS *)self updateTopNavigationItemAnimated:0];
    [(UINavigationBar *)self->super._navigationBar updatePrompt];
    v7 = topItem;
    if (backItem)
    {
      navigationBar = [backItem navigationBar];

      v7 = topItem;
      if (navigationBar)
      {
        backButtonView = [backItem backButtonView];
        [backButtonView _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];

        v7 = topItem;
      }
    }
  }

  v10 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:v7];
  if (v10 && [topItem _leftItemsWantBackButton])
  {
    [(UIView *)self->_contentView addSubview:v10];
    if ([v10 _appearanceIsInvalid])
    {
      window = [(UIView *)self->super._navigationBar window];
      [_UIAppearance _applyInvocationsTo:v10 window:window];
    }

    [v10 setAlpha:1.0];
    if ([v10 customBackgroundImageChangedToOrFromNil])
    {
      [(_UINavigationBarVisualProviderLegacyIOS *)self changeAppearance];
    }
  }
}

- (void)setBackButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if ([(_UINavigationBarItemStack *)self->super._stack state])
  {
    if (!visibleCopy)
    {
      transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
      [transitionAssistant setShouldHideBackButtonDuringTransition:1];
    }
  }

  else
  {
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    backButtonView = [backItem backButtonView];
    v10 = backButtonView;
    if (!backButtonView || ([backButtonView superview], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
    {
      if (topItem && ([topItem leftItemsSupplementBackButton] & 1) == 0)
      {
        _barButtonForBackButtonIndicator = [topItem _barButtonForBackButtonIndicator];
        if ([_barButtonForBackButtonIndicator _actsAsFakeBackButton])
        {
          view = [_barButtonForBackButtonIndicator view];

          v10 = view;
        }
      }
    }

    v15 = self->_contentView;
    if (visibleCopy)
    {
      if (v10)
      {
        currentLeftView = [(UINavigationBar *)self->super._navigationBar currentLeftView];

        if (currentLeftView == v10)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(_UINavigationBarVisualProviderLegacyIOS *)self _getTitleViewFrame:0 leftViewFrames:v17 rightViewFrames:0 forPreviousItem:backItem item:topItem];
          v18 = [v17 objectAtIndex:0];
          [v18 CGRectValue];
          [v10 setFrame:?];

          [(UIView *)v15 addSubview:v10];
        }
      }
    }

    if (v10)
    {
      v19 = visibleCopy;
    }

    else
    {
      v19 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73___UINavigationBarVisualProviderLegacyIOS_setBackButtonVisible_animated___block_invoke;
    aBlock[3] = &unk_1E70F5AF0;
    v20 = v10;
    v27 = v19;
    v25 = v20;
    selfCopy = self;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (animatedCopy)
    {
      +[UINavigationBar defaultAnimationDuration];
      [UIView animateWithDuration:v22 animations:?];
    }

    else
    {
      (*(v21 + 2))(v21);
    }
  }
}

- (id)_backButtonForBackItem:(id)item topItem:(id)topItem
{
  itemCopy = item;
  topItemCopy = topItem;
  v8 = topItemCopy;
  if (itemCopy && ([topItemCopy hidesBackButton] & 1) == 0 && -[_UINavigationBarVisualProviderLegacyIOS _shouldShowBackButtonForNavigationItem:](self, "_shouldShowBackButtonForNavigationItem:", itemCopy))
  {
    backButtonView = [itemCopy backButtonView];
  }

  else
  {
    backButtonView = 0;
  }

  return backButtonView;
}

- (id)_defaultTitleFontForItem:(id)item fittingHeight:(double)height withScaleAdjustment:(double)adjustment
{
  itemCopy = item;
  _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
  if (adjustment == 0.0)
  {
    adjustmentCopy = 1.0;
  }

  else
  {
    adjustmentCopy = adjustment;
  }

  _appearanceStorage = [(UINavigationBar *)self->super._navigationBar _appearanceStorage];
  textAttributes = [_appearanceStorage textAttributes];
  _titleView = [textAttributes objectForKey:*off_1E70EC918];

  if (_titleView)
  {
    [_titleView pointSize];
    if (v14 != 0.0)
    {
      goto LABEL_17;
    }

    [_currentVisualStyle headingFontSize];
    v16 = v15;
    v17 = [_titleView fontWithSize:?];

    _titleView = [itemCopy _titleView];
    if (height > 0.0 && [_titleView isMemberOfClass:objc_opt_class()] && (objc_msgSend(v17, "lineHeight"), v18 + 2.0 > height))
    {
      do
      {
        v19 = [v17 fontWithSize:v16];

        v16 = v16 + -1.0;
        [v19 lineHeight];
        v17 = v19;
      }

      while (v20 + 2.0 > height);
    }

    else
    {
      v19 = v17;
    }

    if (adjustmentCopy < 1.0)
    {
      [v19 pointSize];
      v24 = [v19 fontWithSize:adjustmentCopy * v23];

      v19 = v24;
    }
  }

  else
  {
    [_currentVisualStyle headingFontSize];
    v21 = [off_1E70ECC18 boldSystemFontOfSize:?];
    _titleView = v21;
    if (adjustmentCopy >= 1.0)
    {
      goto LABEL_17;
    }

    [v21 pointSize];
    v19 = [_titleView fontWithSize:adjustmentCopy * v22];
  }

  _titleView = v19;
LABEL_17:

  return _titleView;
}

- (void)_getLeftMargin:(double *)margin rightMargin:(double *)rightMargin forNavigationItem:(id)item showingBackButton:(BOOL)button visualStyle:(id)style
{
  itemCopy = item;
  styleCopy = style;
  [styleCopy textButtonMarginInNavigationBar:self->super._navigationBar];
  v14 = v13;
  [styleCopy imageButtonMarginInNavigationBar:self->super._navigationBar];
  v16 = v15;
  if (margin)
  {
    _firstNonSpaceLeftItem = [itemCopy _firstNonSpaceLeftItem];
    v18 = _firstNonSpaceLeftItem;
    if (button || !_firstNonSpaceLeftItem)
    {
      [(UIView *)self->super._navigationBar _contentMargin];
      v23 = v22;
      [styleCopy horizontalMarginAdjustment];
      v20 = v23 - v24;
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }
    }

    else
    {
      _isImageBarButtonItem = [_firstNonSpaceLeftItem _isImageBarButtonItem];
      v20 = v14;
      if (_isImageBarButtonItem)
      {
        [v18 _leftImagePaddingForEdgeMarginInNavBar];
        v20 = v16 + v21;
      }
    }

    *margin = v20;
  }

  if (rightMargin)
  {
    _firstNonSpaceRightItem = [itemCopy _firstNonSpaceRightItem];
    v26 = _firstNonSpaceRightItem;
    if (_firstNonSpaceRightItem)
    {
      if ([_firstNonSpaceRightItem _isImageBarButtonItem])
      {
        [v26 _rightImagePaddingForEdgeMarginInNavBar];
        v14 = v16 + v27;
      }
    }

    else
    {
      [(UIView *)self->super._navigationBar _contentMargin];
      v29 = v28;
      [styleCopy horizontalMarginAdjustment];
      v31 = v29 - v30;
      if (v31 >= 0.0)
      {
        v14 = v31;
      }

      else
      {
        v14 = 0.0;
      }
    }

    *rightMargin = v14;
  }
}

- (void)_getTitleViewFrame:(CGRect *)frame leftViewFrames:(id)frames rightViewFrames:(id)viewFrames forPreviousItem:(id)item item:(id)a7 returnedIdealWidthOfTextContent:(double *)content availableLayoutWidthForTextContent:(double *)textContent idealBackButtonWidth:(double *)self0
{
  v495 = *MEMORY[0x1E69E9840];
  framesCopy = frames;
  viewFramesCopy = viewFrames;
  itemCopy = item;
  v17 = a7;
  if ([framesCopy count] || objc_msgSend(viewFramesCopy, "count"))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderLegacyIOS.m" lineNumber:843 description:@"Empty arrays required."];
  }

  selfCopy3 = self;
  _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
  _customLeftViews = [v17 _customLeftViews];
  _customRightViews = [v17 _customRightViews];
  v412 = _customLeftViews;
  v416 = [_customLeftViews count];
  v411 = _customRightViews;
  v22 = [_customRightViews count];
  v23 = self->_contentView;
  window = [(UIView *)self->super._navigationBar window];
  rect_24 = [(UIView *)self->super._navigationBar _screen];
  v406 = v23;
  [(UIView *)v23 bounds];
  rect = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
  [v17 _fontScaleAdjustment];
  v33 = v32;
  v90 = v32 == 0.0;
  v34 = 1.0;
  if (!v90)
  {
    if (content | textContent)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      selfCopy3 = self;
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderLegacyIOS.m" lineNumber:866 description:@"Not designed for collecting font scale information when already scaling"];

      v34 = v33;
    }

    else
    {
      v34 = v33;
      selfCopy3 = self;
    }
  }

  v436 = v34;
  rect_16 = v22;
  v35 = MEMORY[0x1E695F058];
  [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy3 _backButtonForBackItem:itemCopy topItem:v17];
  v418 = v417 = v17;
  v36 = fabs(v31);
  v37 = fabs(v29) < 1.0 || v36 < 1.0;
  v415 = _currentVisualStyle;
  v428 = window;
  if (!v37)
  {
    contentCopy = content;
    v410 = viewFramesCopy;
    v473 = 0u;
    v474 = 0u;
    v471 = 0u;
    v472 = 0u;
    v67 = v412;
    v68 = [v67 countByEnumeratingWithState:&v471 objects:v492 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v472;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v472 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v471 + 1) + 8 * i);
          if ([v72 _appearanceIsInvalid])
          {
            [_UIAppearance _applyInvocationsTo:v72 window:window];
          }
        }

        v69 = [v67 countByEnumeratingWithState:&v471 objects:v492 count:16];
      }

      while (v69);
    }

    v469 = 0u;
    v470 = 0u;
    v467 = 0u;
    v468 = 0u;
    obj = v411;
    v73 = [obj countByEnumeratingWithState:&v467 objects:v491 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v468;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v468 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v77 = *(*(&v467 + 1) + 8 * j);
          if ([v77 _appearanceIsInvalid])
          {
            [_UIAppearance _applyInvocationsTo:v77 window:window];
          }
        }

        v74 = [obj countByEnumeratingWithState:&v467 objects:v491 count:16];
      }

      while (v74);
    }

    v78 = v417;
    v79 = v415;
    if (!v418 || ([v417 hidesBackButton] & 1) != 0 || objc_msgSend(v67, "count") && (objc_msgSend(v417, "leftItemsSupplementBackButton") & 1) == 0)
    {
      _wantsBackButtonIndicator = [v417 _wantsBackButtonIndicator];
      v440 = 0;
      v80 = _wantsBackButtonIndicator;
    }

    else
    {
      v80 = 0;
      v440 = 1;
      _wantsBackButtonIndicator = 1;
    }

    _activeBarMetrics = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
    isMinibar = [(UINavigationBar *)self->super._navigationBar isMinibar];
    v466 = 0.0;
    v465 = 0.0;
    if ([rect_24 _userInterfaceIdiom] == 2 || objc_msgSend(rect_24, "_userInterfaceIdiom") == 8)
    {
      [rect_24 overscanCompensationInsets];
      v84 = v83;
      v86 = v85;
      v466 = v83;
      v465 = v85;
      selfCopy6 = self;
    }

    else
    {
      selfCopy6 = self;
      [(_UINavigationBarVisualProviderLegacyIOS *)self _getLeftMargin:&v466 rightMargin:&v465 forNavigationItem:v417 showingBackButton:_wantsBackButtonIndicator visualStyle:v415];
      v84 = v466;
      v86 = v465;
    }

    [v415 buttonHeight];
    v89 = v88;
    if ([(UIView *)selfCopy6->super._navigationBar _areAccessibilityButtonShapesEnabled])
    {
      v90 = _activeBarMetrics == 1 || _activeBarMetrics == 102;
      v91 = v90;
      v92 = _UINavigationButtonAccessibilityBackground(0, v91);
      [v92 size];
      v89 = v93;
    }

    v94 = v86 + v84;
    [v415 topMargin];
    UIRoundToViewScale(selfCopy6->super._navigationBar);
    v96 = v95;
    _appearanceStorage = [(UINavigationBar *)selfCopy6->super._navigationBar _appearanceStorage];
    title = [v417 title];
    titleView = [v417 titleView];
    v392 = title;
    if (titleView)
    {
      v393 = 0;
    }

    else
    {
      v393 = [title length] != 0;
    }

    v438 = v29 - v94;
    v445 = v27 + v96;

    titleView2 = [v417 titleView];
    v388 = v31;
    v389 = v27;
    v385 = v84;
    if (titleView2)
    {
      titleView3 = [v417 titleView];
      [titleView3 frame];
      v101 = v100;
      v404 = v102;

      [v417 _idealCustomTitleWidth];
      if (v103 > v101)
      {
        [v417 _idealCustomTitleWidth];
        v101 = v104;
      }

      [v417 _titleViewWidthForAnimations];
      v105 = v416;
      if (v106 != 0.0)
      {
        [v417 _titleViewWidthForAnimations];
        v101 = v107;
      }

      titleView4 = [v417 titleView];
      [titleView4 sizeThatFits:{v438, v89}];
      v381 = fmin(v101, 1000.0);
      v110 = fmax(v381, v109);

      v403 = v110;
      v111 = v438 - v110;
      if (v393)
      {
        v390 = 0;
LABEL_96:
        v123 = 0.0;
        goto LABEL_97;
      }
    }

    else
    {
      if (v393)
      {
        [v415 topTitleMargin];
        UIRoundToViewScale(selfCopy6->super._navigationBar);
        v404 = v112;
        navigationBar = [(_UINavigationBarVisualProvider *)selfCopy6 navigationBar];
        [v417 _fontScaleAdjustment];
        v114 = [navigationBar _defaultTitleFontWithScaleAdjustment:?];

        textAttributes = [_appearanceStorage textAttributes];
        v116 = *off_1E70EC9B0;
        v117 = [textAttributes objectForKey:*off_1E70EC9B0];

        v390 = v114;
        if (v117)
        {
          v489[0] = *off_1E70EC918;
          v489[1] = v116;
          v490[0] = v114;
          v490[1] = v117;
          v118 = MEMORY[0x1E695DF20];
          v119 = v490;
          v120 = v489;
          v121 = 2;
        }

        else
        {
          v487 = *off_1E70EC918;
          v488 = v114;
          v118 = MEMORY[0x1E695DF20];
          v119 = &v488;
          v120 = &v487;
          v121 = 1;
        }

        v161 = [v118 dictionaryWithObjects:v119 forKeys:v120 count:v121];

        v162 = MEMORY[0x1E696AAB0];
        v163 = v161;
        v164 = title;
        v165 = [[v162 alloc] initWithString:v164 attributes:v163];

        [v165 size];
        v167 = v166;

        v79 = v415;
        [v415 minTitleWidth];
        v403 = v167;
        v381 = fmin(v167, v168);
        v123 = fmax(v381, v167) + 0.0;

        v111 = v29 - v94;
        v105 = v416;
        v78 = v417;
LABEL_97:
        shadowImage = [(_UIBarBackgroundLayoutLegacy *)selfCopy6->_backgroundViewLayout shadowImage];
        if (shadowImage != 0 && !isMinibar)
        {
          [v78 titleView];
        }

        UIRoundToViewScale(selfCopy6->super._navigationBar);
        v402 = v124;
        null = [MEMORY[0x1E695DFB0] null];
        v447 = v105 + v440;
        if (v447)
        {
          v429 = malloc_type_calloc(v105 + v440, 0x20uLL, 0x1000040E0EAB150uLL);
          v435 = malloc_type_calloc(v105, 8uLL, 0x100004000313F17uLL);
        }

        else
        {
          v429 = 0;
          v435 = 0;
        }

        _leftItemSpaceList = [v78 _leftItemSpaceList];
        v396 = v29;
        v125 = v440;
        v126 = v89;
        if (!v440)
        {
          v146 = 0;
          v398 = 0;
          v147 = 0.0;
          v382 = 0.0;
          goto LABEL_137;
        }

        [v79 minBackTextWidth];
        v128 = v127;
        [(UIView *)selfCopy6->_backIndicatorView frame];
        Width = CGRectGetWidth(v497);
        _appearanceStorage2 = [v418 _appearanceStorage];
        backgroundImageView = [v418 backgroundImageView];
        image = [backgroundImageView image];

        if (image)
        {
          goto LABEL_107;
        }

        image = [_appearanceStorage2 backButtonBackgroundImageForState:0 isMini:isMinibar];
        if (image == 0 && isMinibar)
        {
          image = [_appearanceStorage2 backButtonBackgroundImageForState:0 isMini:0];
        }

        if (image)
        {
          goto LABEL_107;
        }

        v136 = 0.0;
        if ([(UIView *)self->super._navigationBar _areAccessibilityButtonShapesEnabled])
        {
          image = _UINavigationButtonAccessibilityBackground(1, isMinibar);
          if (image)
          {
LABEL_107:
            [image capInsets];
            v134 = v133;
            v136 = v135;
            goto LABEL_108;
          }
        }

        else
        {
          image = 0;
        }

        v134 = 0.0;
LABEL_108:
        image2 = [v418 image];
        if (image2)
        {
          [v79 leftBackImageMargin];
          v139 = fmax(v134, v138);
          [v79 rightImageMargin];
          v141 = fmax(v136, v140);
          [v418 imageSize];
          v143 = v141 + v139 + v142;
          [v79 minBackImageWidth];
          v398 = 0;
          v145 = fmax(v143, v141 + v139 + v144);
          v382 = v145;
        }

        else
        {
          v145 = v128 + Width;
          title2 = [v418 title];
          _abbreviatedBackButtonTitles = [itemCopy _abbreviatedBackButtonTitles];
          lastObject = [_abbreviatedBackButtonTitles lastObject];
          v398 = [title2 isEqualToString:lastObject];

          if (title2)
          {
            v382 = v145;
            if ([title2 length])
            {
              _defaultFont = [v418 _defaultFont];
              [v79 leftBackTitleMarginForCustomBackButtonBackground:image];
              v153 = v152;
              [v79 rightTitleMargin];
              v155 = v153 + v436 * fmax(v136, v154);
              [v79 backButtonIndicatorSpacing];
              v157 = (v436 + -1.0) * v156 + v155;
              [v79 minBackTextWidth];
              v159 = v158 + v157;
              [title2 _legacy_sizeWithFont:_defaultFont];
              v382 = v159;
              v145 = fmax(v160 + v157, v159);
            }
          }

          else
          {
            v382 = v145;
          }

          v125 = v440;
        }

        if (width)
        {
          *width = v145;
        }

        [v79 maxBackButtonProportion];
        v170 = v169;
        v498.origin.x = rect;
        v498.size.height = v388;
        v498.origin.y = v389;
        v498.size.width = v29;
        v171 = floor(v170 * CGRectGetWidth(v498));
        [(UINavigationBar *)self->super._navigationBar _requestedMaxBackButtonWidth];
        if (v172 > 0.0)
        {
          [(UINavigationBar *)self->super._navigationBar _requestedMaxBackButtonWidth];
          v171 = fmin(v171, v173);
        }

        v147 = fmin(v145, v171);
        if (image2)
        {
          v174 = v147;
        }

        else
        {
          [v79 backButtonIndicatorSpacing];
          v174 = v436 * v175;
          v123 = v123 + v147 - v436 * v175;
        }

        [(UINavigationBar *)self->super._navigationBar defaultBackButtonAlignmentHeight];
        v429->size.width = v147;
        v429->size.height = v176;
        v429->origin.y = v445 + floor((v126 - v176) * 0.5);
        v464 = 0.0;
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v418 _hasBaselineAlignedAbsoluteVerticalPosition:&v464 withinNavBar:self->super._navigationBar forSize:{v429->size.width, v429->size.height}])
        {
          v177 = v464;
          v178 = v429;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v418 _backgroundVerticalPositionAdjustmentForBarMetrics:_activeBarMetrics];
            v429->origin.y = v179 + v429->origin.y;
          }

          if ([v418 hasCustomBackgroundImage])
          {
            goto LABEL_136;
          }

          v178 = v429;
          v177 = v429->origin.y + -1.0;
        }

        v178->origin.y = v177;
LABEL_136:
        v111 = v111 - v174;

        v146 = 1;
        selfCopy6 = self;
LABEL_137:
        [v79 interItemSpace];
        v181 = v180;
        v394 = framesCopy;
        if (v146 >= v447)
        {
          v185 = v429;
          goto LABEL_152;
        }

        v125 = [_leftItemSpaceList objectAtIndex:v146 - v125];
        v183 = v125;
        if (!v125 || v125 == null)
        {
          v184 = 0.0;
          if ((v125 | v80))
          {
            v184 = v181;
          }
        }

        else
        {
          v184 = totalSpaceForSpaceItems(v125, v125, v181);
        }

        if (v398)
        {
          v184 = v184 + v184;
        }

        v186 = v436 * v184;
        v435[v146 - v125] = v436 * v184;
        p_x = &v429[v146].origin.x;
        *p_x = v436 * v184;
        if (v125)
        {
          MaxX = CGRectGetMaxX(*v429);
          v185 = v429;
        }

        else
        {
          v185 = v429;
          if (!v80)
          {
LABEL_151:
            v123 = v123 + v186;

LABEL_152:
            v391 = v147;
            indexSet = [MEMORY[0x1E696AD50] indexSet];
            v460 = 0u;
            v461 = 0u;
            v462 = 0u;
            v463 = 0u;
            v443 = v67;
            v189 = [v443 countByEnumeratingWithState:&v460 objects:v486 count:16];
            if (v189)
            {
              v190 = v189;
              v191 = 0;
              v192 = *v461;
              p_size = &v185->size;
              do
              {
                v193 = 0;
                v194 = &p_size[2 * v146];
                v195 = v146;
                do
                {
                  if (*v461 != v192)
                  {
                    objc_enumerationMutation(v443);
                  }

                  v196 = *(*(&v460 + 1) + v193);
                  v197 = _barItemHidden(v196);
                  if (v197)
                  {
                    v194[-1].height = 0.0;
                    *v194 = *MEMORY[0x1E695F060];
                    goto LABEL_174;
                  }

                  if ([v196 _appearanceIsInvalid])
                  {
                    [v196 layoutBelowIfNeeded];
                  }

                  [v196 frame];
                  [v196 alignmentRectForFrame:?];
                  v199 = v198;
                  v201 = v200;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v196 titleForState:0], v202 = objc_claimAutoreleasedReturnValue(), v203 = objc_msgSend(v202, "length"), v202, v203))
                  {
                    v123 = v123 + v199;
                    [indexSet addIndex:v191];
                  }

                  else
                  {
                    v111 = v111 - v199;
                  }

                  v194->width = v199;
                  v194->height = v201;
                  v194[-1].height = v445 + floor((v126 - v201) * 0.5);
                  v464 = 0.0;
                  if ((objc_opt_respondsToSelector() & 1) != 0 && [v196 _hasBaselineAlignedAbsoluteVerticalPosition:&v464 withinNavBar:self->super._navigationBar forSize:{v429->size.width, v429->size.height}])
                  {
                    v204 = v464;
LABEL_173:
                    v194[-1].height = v204;
                    goto LABEL_174;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    [v196 _backgroundVerticalPositionAdjustmentForBarMetrics:_activeBarMetrics];
                    v194[-1].height = v205 + v194[-1].height;
                  }

                  if (objc_opt_respondsToSelector())
                  {
                    _appearanceStorage3 = [v196 _appearanceStorage];
                    anyBackgroundImage = [_appearanceStorage3 anyBackgroundImage];

                    if (!anyBackgroundImage)
                    {
                      v204 = v194[-1].height + -1.0;
                      goto LABEL_173;
                    }
                  }

LABEL_174:
                  v146 = v195 + 1;
                  if (v195 + 1 < v447)
                  {
                    if (v440)
                    {
                      v208 = v195;
                    }

                    else
                    {
                      v208 = v195 + 1;
                    }

                    v209 = [_leftItemSpaceList objectAtIndex:v208];
                    v210 = v209;
                    if (!v209 || v209 == null)
                    {
                      if (v197)
                      {
                        v211 = 0.0;
                      }

                      else
                      {
                        v211 = v181;
                      }
                    }

                    else
                    {
                      v211 = totalSpaceForSpaceItems(v209, v197 ^ 1u, v181);
                    }

                    v212 = v436 * v211;
                    v435[v208] = v436 * v211;
                    v194[1].width = v436 * v211 + CGRectGetMaxX(*&v194[-1].width);
                    v123 = v123 + v212;
                  }

                  v193 += 8;
                  v194 += 2;
                  ++v191;
                  ++v195;
                  --v190;
                }

                while (v190);
                v190 = [v443 countByEnumeratingWithState:&v460 objects:v486 count:16];
              }

              while (v190);
            }

            v213 = v416;
            v214 = [_leftItemSpaceList objectAtIndex:v416];
            [v415 interBlockSpace];
            v216 = v215;
            v217 = 0.0;
            v218 = 0.0;
            if (v214 && v214 != null)
            {
              v218 = totalSpaceForSpaceItems(v214, 0, v181);
              v217 = 0.0;
            }

            v383 = v214;
            v384 = v218;
            framesCopy = v394;
            viewFramesCopy = v410;
            window = v428;
            v219 = rect_16;
            if (v429)
            {
              v217 = CGRectGetMaxX(v429[v447 - 1]);
            }

            v401 = v217;
            if (rect_16)
            {
              v220 = malloc_type_calloc(rect_16, 0x20uLL, 0x1000040E0EAB150uLL);
              v421 = malloc_type_calloc(rect_16, 8uLL, 0x100004000313F17uLL);
            }

            else
            {
              v220 = 0;
              v421 = 0;
            }

            v221 = v440;
            _rightItemSpaceList = [v417 _rightItemSpaceList];
            indexSet2 = [MEMORY[0x1E696AD50] indexSet];
            v423 = v220;
            v432 = _rightItemSpaceList;
            if (v220 && v421)
            {
              v380 = v216;
              v458 = 0u;
              v459 = 0u;
              v456 = 0u;
              v457 = 0u;
              v441 = obj;
              v223 = [v441 countByEnumeratingWithState:&v456 objects:v485 count:16];
              if (!v223)
              {
                goto LABEL_230;
              }

              v224 = v223;
              v225 = 0;
              v226 = *v457;
              p_height = &v220->size.height;
              while (1)
              {
                v227 = 0;
                v228 = &v421[8 * v225];
                v229 = &p_height[4 * v225];
                do
                {
                  if (*v457 != v226)
                  {
                    objc_enumerationMutation(v441);
                  }

                  v230 = *(*(&v456 + 1) + v227);
                  v231 = [_rightItemSpaceList objectAtIndex:{v225, *&v380}];
                  v232 = v231;
                  if (!v231 || v231 == null)
                  {
                    if (v225)
                    {
                      v233 = v181;
                    }

                    else
                    {
                      v233 = 0.0;
                    }
                  }

                  else
                  {
                    v233 = totalSpaceForSpaceItems(v231, v225 != 0, v181);
                  }

                  *&v228[v227] = v233;
                  if (_barItemHidden(v230))
                  {
                    *(v229 - 2) = 0.0;
                    *(v229 - 1) = *MEMORY[0x1E695F060];
                    goto LABEL_226;
                  }

                  if ([v230 _appearanceIsInvalid])
                  {
                    [v230 layoutBelowIfNeeded];
                  }

                  [v230 frame];
                  [v230 alignmentRectForFrame:?];
                  v235 = v234;
                  v237 = v236;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v230 titleForState:0], v238 = objc_claimAutoreleasedReturnValue(), v239 = objc_msgSend(v238, "length"), v238, _rightItemSpaceList = v432, v239))
                  {
                    v123 = v123 + v235;
                    [indexSet2 addIndex:v225];
                  }

                  else
                  {
                    v111 = v111 - v235;
                  }

                  *(v229 - 1) = v235;
                  *v229 = v237;
                  v464 = 0.0;
                  window = v428;
                  if ((objc_opt_respondsToSelector() & 1) != 0 && [v230 _hasBaselineAlignedAbsoluteVerticalPosition:&v464 withinNavBar:self->super._navigationBar forSize:{v423->size.width, v423->size.height}])
                  {
                    v240 = v464;
                  }

                  else
                  {
                    *(v229 - 2) = v445 + floor((v126 - *v229) * 0.5);
                    if (objc_opt_respondsToSelector())
                    {
                      [v230 _backgroundVerticalPositionAdjustmentForBarMetrics:_activeBarMetrics];
                      *(v229 - 2) = v241 + *(v229 - 2);
                    }

                    if ((objc_opt_respondsToSelector() & 1) == 0)
                    {
                      goto LABEL_225;
                    }

                    _appearanceStorage4 = [v230 _appearanceStorage];
                    anyBackgroundImage2 = [_appearanceStorage4 anyBackgroundImage];

                    _rightItemSpaceList = v432;
                    if (anyBackgroundImage2)
                    {
                      goto LABEL_225;
                    }

                    v240 = *(v229 - 2) + -1.0;
                  }

                  *(v229 - 2) = v240;
LABEL_225:
                  v111 = v111 - v233;
LABEL_226:
                  MinX = v438;
                  if (v225)
                  {
                    MinX = CGRectGetMinX(*(v229 - 7));
                  }

                  *(v229 - 3) = MinX - v233 - *(v229 - 1);
                  ++v225;

                  v227 += 8;
                  v229 += 4;
                  --v224;
                }

                while (v224);
                v224 = [v441 countByEnumeratingWithState:&v456 objects:v485 count:16];
                if (!v224)
                {
LABEL_230:

                  framesCopy = v394;
                  viewFramesCopy = v410;
                  v219 = rect_16;
                  v221 = v440;
                  v213 = v416;
                  v220 = v423;
                  v216 = v380;
                  break;
                }
              }
            }

            v245 = [_rightItemSpaceList objectAtIndex:{v219, *&v380}];

            v246 = 0.0;
            v247 = 0.0;
            if (v245 && v245 != null)
            {
              v247 = totalSpaceForSpaceItems(v245, 0, v181);
              v246 = 0.0;
            }

            if (v220)
            {
              v248 = CGRectGetMaxX(*v220);
              v246 = v248 - CGRectGetMinX(v220[v219 - 1]);
            }

            v249 = v216;
            v250 = fmax(v216, v384);
            v433 = v246;
            v425 = v245;
            if (v221)
            {
              title3 = [v418 title];
              v252 = [title3 length];
              v253 = v401;
              v255 = v403 > v438 - v401 - v433 && v252 == 0;

              v246 = v433;
            }

            else
            {
              v255 = 0;
              v253 = v401;
            }

            v256 = fmax(v249, v247);
            if (v246 == 0.0 && v403 == 0.0)
            {
              v258 = 0.0;
            }

            else
            {
              v258 = v250;
            }

            if ((v253 == 0.0) | v255 & (v398 ^ 1) & 1)
            {
              v259 = 0.0;
            }

            else
            {
              v259 = v258;
            }

            if (((v398 ^ 1) & 1) == 0 && ![v443 count])
            {
              v259 = v259 + v259;
            }

            v260 = rect + v385;
            if (v403 == 0.0 || v433 == 0.0)
            {
              v262 = 0.0;
            }

            else
            {
              v262 = v256;
            }

            v431 = v436 * v262;
            v427 = v436 * v259;
            v395 = v436 * v262 + v436 * v259;
            v263 = v438 - (v403 + v401 + v433 + v395);
            if (v263 >= 0.0)
            {
              v280 = 0;
              v279 = v403;
              v285 = v403;
              v283 = v396;
            }

            else
            {
              v264 = v403 + v391 + v263;
              if (v436 < 1.0 && v264 < v381 + v382 && (v213 > 1 || v219 >= 2))
              {
                v265 = v213 ? v221 + 1 : v221;
                v266 = v219 != 0;
                v267 = v219 > v266;
                v268 = v447 > v265;
                if (v447 > v265 || v219 > v266)
                {
                  v269 = v219 - v266 > v213 - (v213 != 0);
                  while (!v268 || v269 && v219 != v266)
                  {
                    if (v267 && (v269 || v447 == v265))
                    {
                      v273 = &v220[v219 - 1];
                      v271 = v273->size.width;
                      v272 = CGRectGetMinX(v220[v219-- - 2]);
                      goto LABEL_279;
                    }

LABEL_280:
                    v264 = v403 + v391 + v263;
                    if (v263 < 0.0 && v264 < v381 + v382)
                    {
                      v267 = v219 > v266;
                      v269 = v219 - v266 > v447 - v265;
                      v268 = v447 > v265;
                      if (v447 > v265 || v219 > v266)
                      {
                        continue;
                      }
                    }

                    goto LABEL_287;
                  }

                  v270 = &v429[v447 - 1].origin.x;
                  v500.origin.x = *v270;
                  v500.origin.y = v270[1];
                  v271 = v270[2];
                  v500.size.height = v270[3];
                  v500.size.width = v271;
                  v272 = CGRectGetMinX(v500);
                  v220 = v423;
                  v273 = &v429[v447-- - 2];
LABEL_279:
                  v263 = v263 + v271 + v272 - CGRectGetMaxX(*v273);
                  v213 = v416;
                  goto LABEL_280;
                }
              }

LABEL_287:
              v275 = fmin(v391, fmax(v264 * 0.4, v382));
              v276 = fmin(v403, fmax(v264 - v275, v381));
              v277 = fmin(v403, v275 - v382 + v276);
              if ((v276 >= v403 || (v221 & 1) == 0) | v398 & 1)
              {
                v278 = v275;
              }

              else
              {
                v278 = v382;
              }

              if ((v276 >= v403 || (v221 & 1) == 0) | v398 & 1)
              {
                v279 = v276;
              }

              else
              {
                v279 = v277;
              }

              v280 = v279 + v278 > v264;
              v263 = v264 - (v279 + v278);
              UIRoundToViewScale(self->super._navigationBar);
              if (v281 <= 0.0)
              {
                v283 = v396;
              }

              else
              {
                v282 = v278 < v391 || v279 < v403;
                v283 = v396;
                if (v282)
                {
                  if (v279 == v403)
                  {
                    v284 = fmin(v263, v391 - v278);
                    v263 = v263 - v284;
                    v278 = v278 + v284;
                  }

                  else if (v278 == v391)
                  {
                    v325 = fmin(v263, v403 - v279);
                    v263 = v263 - v325;
                    v279 = v279 + v325;
                  }

                  else
                  {
                    v375 = fmin(v263 * 0.4, v391 - v278);
                    v376 = fmin(v263 - v375, v403 - v279);
                    v263 = v263 - (v375 + v376);
                    v278 = v278 + v375;
                    v279 = v279 + v376;
                  }
                }
              }

              if (v221)
              {
                UIRoundToViewScale(self->super._navigationBar);
                v429->size.width = v286;
                if (v447 >= 2)
                {
                  v287 = v447 - 1;
                  v288 = &v429[1].origin.x;
                  do
                  {
                    *v288 = *v288 - (v391 - v278);
                    v288 += 4;
                    --v287;
                  }

                  while (v287);
                }
              }

              v285 = v403;
            }

            _leftFlexibleSpaceCount = [v417 _leftFlexibleSpaceCount];
            _rightFlexibleSpaceCount = [v417 _rightFlexibleSpaceCount];
            v442 = v279;
            v437 = (v283 - v279) * 0.5 - v260;
            v399 = v280;
            if (v285 != 0.0)
            {
              if (v429)
              {
                v291 = CGRectGetMaxX(v429[v447 - 1]);
              }

              else
              {
                v291 = 0.0;
              }

              v420 = v291;
              v292 = v438;
              if (v220)
              {
                v292 = CGRectGetMinX(v220[v219 - 1]);
              }

              v501.origin.x = (v283 - v279) * 0.5 - v260;
              v501.origin.y = v402;
              v293 = v279;
              v501.size.width = v279;
              v501.size.height = v404;
              if (CGRectGetMinX(v501) < v427 + v420 || (v502.origin.x = v437, v502.origin.y = v402, v502.size.width = v279, v502.size.height = v404, CGRectGetMaxX(v502) > v292 - v431))
              {
                v294 = fmin(v292 - v420 - v427 - v431, v403) - v279;
                if (v393)
                {
                  [v392 sizeWithFont:v390 forWidth:4 lineBreakMode:v442 + v294 letterSpacing:0.0];
                  v293 = v442;
                  v294 = fmax(v295 + 1.0 - v442, 0.0);
                }

                v296 = v293 + v294;
                if ((_leftFlexibleSpaceCount != 0) != (_rightFlexibleSpaceCount != 0))
                {
                  v297 = _leftFlexibleSpaceCount == 0;
                }

                else
                {
                  v503.origin.x = rect + v385;
                  v503.origin.y = v445;
                  v503.size.width = v438;
                  v503.size.height = v126;
                  MidX = CGRectGetMidX(v503);
                  v297 = v420 - MidX > MidX - v292;
                }

                v263 = v263 - v294;
                v442 = v296;
                v299 = v292 - v431 - v296;
                if (v297)
                {
                  v299 = v427 + v420;
                }

                v437 = v299;
              }

              v283 = v396;
            }

            if (v263 <= 0.0 || !(_leftFlexibleSpaceCount | _rightFlexibleSpaceCount))
            {
LABEL_373:

              if (frame)
              {
                UIRoundToViewScale(self->super._navigationBar);
                v437 = v338;
                UICeilToViewScale(self->super._navigationBar);
                v340 = v339;
                v442 = v339;
                if (!v399)
                {
                  titleView5 = [v417 titleView];
                  v340 = v442;
                  if (titleView5)
                  {
                    v342 = titleView5;
                    [v417 _idealCustomTitleWidth];
                    v344 = v343;

                    v340 = v442;
                    if (v344 == 0.0)
                    {
                      [v417 _setIdealCustomTitleWidth:v442];
                      v340 = v442;
                    }
                  }
                }

                frame->origin.x = v437;
                frame->origin.y = v402;
                frame->size.width = v340;
                frame->size.height = v404;
                if (!v429)
                {
                  goto LABEL_395;
                }
              }

              else if (!v429)
              {
                goto LABEL_395;
              }

              if (framesCopy && v447)
              {
                v345 = 0;
                v346 = &v429->size;
                do
                {
                  if (v440)
                  {
                    if (!v345)
                    {
                      v349 = v418;
                      goto LABEL_389;
                    }

                    v347 = v345 - 1;
                    v348 = v443;
                  }

                  else
                  {
                    v348 = v443;
                    v347 = v345;
                  }

                  v349 = [v348 objectAtIndex:v347];

LABEL_389:
                  height = v346[-1].height;
                  v351 = v346->height;
                  UIRoundToViewScale(self->super._navigationBar);
                  v353 = v352;
                  UICeilToViewScale(self->super._navigationBar);
                  v355 = v354;
                  if ((_barItemHidden(v349) & 1) == 0)
                  {
                    [v349 frameForAlignmentRect:{v353, height, v355, v351}];
                    v353 = v356;
                    height = v357;
                    v355 = v358;
                    v351 = v359;
                  }

                  v360 = [MEMORY[0x1E696B098] valueWithCGRect:{v353, height, v355, v351}];
                  [framesCopy addObject:v360];

                  ++v345;
                  v346 += 2;
                }

                while (v447 != v345);
              }

              free(v429);
              free(v435);
LABEL_395:
              if (v220)
              {
                if (viewFramesCopy && v219)
                {
                  v361 = 0;
                  v362 = &v220->size;
                  do
                  {
                    v363 = [obj objectAtIndex:v361];
                    v364 = v362[-1].height;
                    v365 = v362->height;
                    UIRoundToViewScale(self->super._navigationBar);
                    v367 = v366;
                    UICeilToViewScale(self->super._navigationBar);
                    v369 = v368;
                    if ((_barItemHidden(v363) & 1) == 0)
                    {
                      [v363 frameForAlignmentRect:{v367, v364, v369, v365}];
                      v367 = v370;
                      v364 = v371;
                      v369 = v372;
                      v365 = v373;
                    }

                    v374 = [MEMORY[0x1E696B098] valueWithCGRect:{v367, v364, v369, v365}];
                    [viewFramesCopy addObject:v374];

                    ++v361;
                    v362 += 2;
                  }

                  while (v219 != v361);
                }

                free(v220);
                free(v421);
              }

              v17 = v417;
              _currentVisualStyle = v415;
              if ((*(&self->super._navigationBar->super._viewFlags + 18) & 0x40) != 0)
              {
                if (framesCopy && [framesCopy count])
                {
                  _UIRTLConvertAllLTRFramesToRTL(framesCopy, rect, v389, v283, v388);
                }

                if (viewFramesCopy && [viewFramesCopy count])
                {
                  _UIRTLConvertAllLTRFramesToRTL(viewFramesCopy, rect, v389, v283, v388);
                }

                if (frame)
                {
                  v504.origin.x = rect;
                  v504.size.height = v388;
                  v504.origin.y = v389;
                  v504.size.width = v283;
                  frame->origin.x = CGRectGetMaxX(v504) - v442 - v437;
                  frame->origin.y = v402;
                  frame->size.width = v442;
                  frame->size.height = v404;
                }
              }

              if (contentCopy)
              {
                *contentCopy = v123 + v395;
              }

              if (textContent)
              {
                *textContent = v111;
              }

              goto LABEL_417;
            }

            v300 = _rightFlexibleSpaceCount;
            if (!v429 || !_leftFlexibleSpaceCount)
            {
LABEL_351:
              v319 = rect_16;
              v220 = v423;
              if (!v423 || !v300)
              {
                goto LABEL_373;
              }

              y = v402;
              x = v437;
              v322 = v442;
              v323 = v404;
              if (v403 == 0.0)
              {
                v324 = 0.0;
                if (v401 == 0.0)
                {
LABEL_358:
                  v326 = CGRectGetMinX(v423[v219 - 1]);
                  if (rect_16)
                  {
                    v327 = 0;
                    v328 = (v326 - (v431 + v324)) / v300;
                    v329 = 0.0;
                    do
                    {
                      v330 = [v432 objectAtIndex:v327];
                      v331 = v330;
                      v332 = &v220[v327].origin.x;
                      *v332 = *v332 - v329;
                      if (v330 && v330 != null)
                      {
                        v450 = 0u;
                        v451 = 0u;
                        v448 = 0u;
                        v449 = 0u;
                        v333 = v330;
                        v334 = [v333 countByEnumeratingWithState:&v448 objects:v483 count:16];
                        if (v334)
                        {
                          v335 = v334;
                          v336 = *v449;
                          do
                          {
                            for (k = 0; k != v335; ++k)
                            {
                              if (*v449 != v336)
                              {
                                objc_enumerationMutation(v333);
                              }

                              if ([*(*(&v448 + 1) + 8 * k) systemItem] == 5)
                              {
                                *v332 = *v332 - v328;
                                v329 = v328 + v329;
                              }
                            }

                            v335 = [v333 countByEnumeratingWithState:&v448 objects:v483 count:16];
                          }

                          while (v335);
                        }

                        viewFramesCopy = v410;
                        window = v428;
                        v319 = rect_16;
                      }

                      ++v327;
                      v220 = v423;
                    }

                    while (v327 != v319);
                  }

                  goto LABEL_373;
                }

                v377 = &v429[v447];
                x = v377[-1].origin.x;
                y = v377[-1].origin.y;
                v322 = v377[-1].size.width;
                v323 = v377[-1].size.height;
              }

              v324 = CGRectGetMaxX(*&x);
              goto LABEL_358;
            }

            v301 = v402;
            v302 = v437;
            v303 = v442;
            v304 = v404;
            if (v403 == 0.0)
            {
              if (v433 == 0.0)
              {
                goto LABEL_333;
              }

              v305 = &v423[v219];
              v302 = v305[-1].origin.x;
              v301 = v305[-1].origin.y;
              v303 = v305[-1].size.width;
              v304 = v305[-1].size.height;
            }

            v438 = CGRectGetMinX(*&v302);
LABEL_333:
            v306 = CGRectGetMaxX(v429[v447 - 1]);
            if (v213)
            {
              v307 = 0;
              v308 = (v438 - v427 - v306) / _leftFlexibleSpaceCount;
              v309 = 0.0;
              do
              {
                if (v221)
                {
                  v310 = v307 + 1;
                }

                else
                {
                  v310 = v307;
                }

                v311 = [_leftItemSpaceList objectAtIndex:v307];
                v312 = v311;
                v313 = &v429[v310].origin.x;
                *v313 = v309 + *v313;
                if (v311 && v311 != null)
                {
                  v454 = 0u;
                  v455 = 0u;
                  v452 = 0u;
                  v453 = 0u;
                  v314 = v311;
                  v315 = [v314 countByEnumeratingWithState:&v452 objects:v484 count:16];
                  if (v315)
                  {
                    v316 = v315;
                    v317 = *v453;
                    do
                    {
                      for (m = 0; m != v316; ++m)
                      {
                        if (*v453 != v317)
                        {
                          objc_enumerationMutation(v314);
                        }

                        if ([*(*(&v452 + 1) + 8 * m) systemItem] == 5)
                        {
                          *v313 = v308 + *v313;
                          v309 = v308 + v309;
                        }
                      }

                      v316 = [v314 countByEnumeratingWithState:&v452 objects:v484 count:16];
                    }

                    while (v316);
                  }

                  viewFramesCopy = v410;
                  window = v428;
                  v221 = v440;
                }

                ++v307;
              }

              while (v307 != v416);
            }

            goto LABEL_351;
          }

          [(UIView *)selfCopy6->_backIndicatorView frame];
          MaxX = CGRectGetWidth(v499);
        }

        *p_x = MaxX + *p_x;
        goto LABEL_151;
      }

      v403 = *(v35 + 16);
      v404 = *(v35 + 24);
      v381 = 0.0;
      v111 = v29 - v94;
      v105 = v416;
    }

    [_appearanceStorage titleVerticalAdjustmentForBarMetrics:_activeBarMetrics];
    v390 = 0;
    goto LABEL_96;
  }

  titleView6 = [v17 titleView];
  v39 = titleView6;
  if (frame)
  {
    if (!titleView6)
    {
      v122 = *(v35 + 16);
      frame->origin = *v35;
      frame->size = v122;
      if (framesCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

    [titleView6 frame];
    frame->origin.x = v40;
    frame->origin.y = v41;
    frame->size.width = v42;
    frame->size.height = v43;
  }

  if (framesCopy)
  {
LABEL_15:
    if (v418 && ([v17 hidesBackButton] & 1) == 0 && ((objc_msgSend(v17, "leftItemsSupplementBackButton") & 1) != 0 || !objc_msgSend(v412, "count")))
    {
      [v418 frame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = [MEMORY[0x1E696B098] valueWithCGRect:?];
      [framesCopy addObject:v52];

      if (width)
      {
        v496.origin.x = v45;
        v496.origin.y = v47;
        v496.size.width = v49;
        v496.size.height = v51;
        *width = CGRectGetWidth(v496);
      }
    }

    v481 = 0u;
    v482 = 0u;
    v479 = 0u;
    v480 = 0u;
    v53 = v412;
    v54 = [v53 countByEnumeratingWithState:&v479 objects:v494 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v480;
      do
      {
        for (n = 0; n != v55; ++n)
        {
          if (*v480 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = MEMORY[0x1E696B098];
          [*(*(&v479 + 1) + 8 * n) frame];
          v59 = [v58 valueWithCGRect:?];
          [framesCopy addObject:v59];
        }

        v55 = [v53 countByEnumeratingWithState:&v479 objects:v494 count:16];
      }

      while (v55);
    }

    v17 = v417;
    _currentVisualStyle = v415;
  }

LABEL_29:
  if (viewFramesCopy)
  {
    v477 = 0u;
    v478 = 0u;
    v475 = 0u;
    v476 = 0u;
    v60 = v411;
    v61 = [v60 countByEnumeratingWithState:&v475 objects:v493 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v476;
      do
      {
        for (ii = 0; ii != v62; ++ii)
        {
          if (*v476 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = MEMORY[0x1E696B098];
          [*(*(&v475 + 1) + 8 * ii) frame];
          v66 = [v65 valueWithCGRect:?];
          [viewFramesCopy addObject:v66];
        }

        v62 = [v60 countByEnumeratingWithState:&v475 objects:v493 count:16];
      }

      while (v62);
    }

    v17 = v417;
    _currentVisualStyle = v415;
  }

  if (content)
  {
    *content = 0.0;
  }

  if (textContent)
  {
    *textContent = 0.0;
  }

LABEL_417:
}

- (void)_getTitleViewFrame:(CGRect *)frame leftViewFrames:(id)frames rightViewFrames:(id)viewFrames forPreviousItem:(id)item item:(id)a7
{
  framesCopy = frames;
  viewFramesCopy = viewFrames;
  itemCopy = item;
  v15 = a7;
  if (v15)
  {
    v16 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:itemCopy topItem:v15];
    _customLeftViews = [v15 _customLeftViews];
    _abbreviatedBackButtonTitles = [v15 _abbreviatedBackButtonTitles];
    v19 = [_abbreviatedBackButtonTitles count];

    if ([v16 _abbreviatedTitleIndex] >= v19)
    {
      [v16 _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    if (v16 && v19)
    {
      image = [v16 image];
      if (!image && [v16 _abbreviatedTitleIndex] == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v15, "hidesBackButton") & 1) == 0 && (!objc_msgSend(_customLeftViews, "count") || objc_msgSend(v15, "leftItemsSupplementBackButton")))
      {
        v26 = 0.0;
        [(_UINavigationBarVisualProviderLegacyIOS *)self _getTitleViewFrame:frame leftViewFrames:framesCopy rightViewFrames:viewFramesCopy forPreviousItem:itemCopy item:v15 returnedIdealWidthOfTextContent:0 availableLayoutWidthForTextContent:0 idealBackButtonWidth:&v26];
        if (framesCopy)
        {
          while (1)
          {
            v21 = [framesCopy objectAtIndexedSubscript:0];
            [v21 CGRectValue];
            Width = CGRectGetWidth(v27);
            v23 = v26;

            if (Width >= v23)
            {
              break;
            }

            _abbreviatedTitleIndex = [v16 _abbreviatedTitleIndex];
            v25 = _abbreviatedTitleIndex == 0x7FFFFFFFFFFFFFFFLL ? 0 : _abbreviatedTitleIndex + 1;
            if (v25 >= v19)
            {
              break;
            }

            [v16 _setAbbreviatedTitleIndex:?];
            if ([v16 _abbreviatedTitleIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v16 _setAbbreviatedTitleIndex:0];
            }

            [framesCopy removeAllObjects];
            [viewFramesCopy removeAllObjects];
            [(_UINavigationBarVisualProviderLegacyIOS *)self _getTitleViewFrame:frame leftViewFrames:framesCopy rightViewFrames:viewFramesCopy forPreviousItem:itemCopy item:v15 returnedIdealWidthOfTextContent:0 availableLayoutWidthForTextContent:0 idealBackButtonWidth:&v26];
          }
        }

        goto LABEL_22;
      }
    }

    v26 = 0.0;
    [(_UINavigationBarVisualProviderLegacyIOS *)self _getTitleViewFrame:frame leftViewFrames:framesCopy rightViewFrames:viewFramesCopy forPreviousItem:itemCopy item:v15 returnedIdealWidthOfTextContent:0 availableLayoutWidthForTextContent:0 idealBackButtonWidth:&v26];
LABEL_22:
  }
}

- (double)_backTitleWidthOverTitleWidthForMatchingBackButtonView:(id)view titleView:(id)titleView withBackButtonWidth:(double)width
{
  viewCopy = view;
  navigationBar = self->super._navigationBar;
  titleViewCopy = titleView;
  _currentVisualStyle = [(UINavigationBar *)navigationBar _currentVisualStyle];
  [titleViewCopy bounds];
  Width = CGRectGetWidth(v23);
  [titleViewCopy _titleSize];
  v14 = v13;

  v15 = Width == 0.0 || v14 > Width;
  v16 = 1.0;
  if (!v15)
  {
    [_currentVisualStyle leftBackTitleMarginForCustomBackButtonBackground:{0, 1.0}];
    v18 = width - v17;
    [viewCopy _titleSize];
    v20 = v19 > v18 || v18 == 0.0;
    v16 = v19 / Width;
    if (v20)
    {
      v16 = 1.0;
    }
  }

  if (fabs(v16) >= 0.1)
  {
    v21 = v16;
  }

  else
  {
    v21 = 1.0;
  }

  return v21;
}

- (unint64_t)_subviewIndexAboveBackground
{
  if ([(UIView *)self->super._navigationBar _canDrawContent])
  {
    return 0;
  }

  if (self->_contentView == &self->super._navigationBar->super)
  {
    return 0;
  }

  superview = [(UIView *)self->_backgroundView superview];
  navigationBar = self->super._navigationBar;

  if (superview != navigationBar)
  {
    return 0;
  }

  subviews = [(UIView *)self->super._navigationBar subviews];
  v5 = [subviews indexOfObject:self->_backgroundView] + 1;

  return v5;
}

- (void)_wrapView:(id)view inClippingViewWithLeftBoundary:(double)boundary rightBoundary:(double)rightBoundary leftMaskImage:(id)image leftMaskIsChevron:(BOOL)chevron rightMaskImage:(id)maskImage
{
  chevronCopy = chevron;
  imageCopy = image;
  maskImageCopy = maskImage;
  navigationBar = self->super._navigationBar;
  viewCopy = view;
  [(UIView *)navigationBar bounds];
  v18 = v17;
  v20 = v19;
  v21 = rightBoundary - boundary;
  v22 = [[UIView alloc] initWithFrame:boundary, v17, v21, v19];
  [(UIView *)v22 setBounds:boundary, v18, v21, v20];
  [(UIView *)v22 setClipsToBounds:1];
  [(UIView *)v22 setUserInteractionEnabled:0];
  [(UIView *)self->_contentView insertSubview:v22 atIndex:[(_UINavigationBarVisualProviderLegacyIOS *)self _subviewIndexAboveBackground]];
  [(UIView *)v22 addSubview:viewCopy];

  slideTransitionClippingViews = self->_slideTransitionClippingViews;
  if (!slideTransitionClippingViews)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v25 = self->_slideTransitionClippingViews;
    self->_slideTransitionClippingViews = v24;

    slideTransitionClippingViews = self->_slideTransitionClippingViews;
  }

  [(NSMutableArray *)slideTransitionClippingViews addObject:v22];
  if (imageCopy | maskImageCopy)
  {
    v26 = objc_alloc_init(MEMORY[0x1E6979398]);
    [v26 setBounds:{0.0, 0.0, v21, v20}];
    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    [v26 setAnchorPoint:{*MEMORY[0x1E695EFF8], v28}];
    [v26 setPosition:{boundary, v18}];
    [imageCopy size];
    v30 = v29;
    v32 = v31;
    [maskImageCopy size];
    v34 = v33;
    if (imageCopy)
    {
      v35 = objc_alloc_init(MEMORY[0x1E6979398]);
      v36 = imageCopy;
      [v35 setContents:{objc_msgSend(imageCopy, "CGImage")}];
      if (chevronCopy)
      {
        v37 = v32;
      }

      else
      {
        v37 = v20;
      }

      [v35 setBounds:{0.0, 0.0, v30, v37}];
      [v35 setAnchorPoint:{0.0, 0.0}];
      MinY = 0.0;
      if (chevronCopy)
      {
        [(UIView *)self->_backIndicatorView frame];
        MinY = CGRectGetMinY(v47);
      }

      [v35 setPosition:{0.0, MinY}];
      [imageCopy scale];
      [v35 setContentsScale:?];
      [v26 addSublayer:v35];
    }

    v39 = objc_alloc_init(MEMORY[0x1E6979398]);
    v40 = +[UIColor redColor];
    [v39 setBackgroundColor:{objc_msgSend(v40, "CGColor")}];

    [v39 setBounds:{0.0, 0.0, fmax(v21 - v30 - v34, 0.0), v20}];
    [v39 setAnchorPoint:{v27, v28}];
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    v48.size.width = v21;
    v48.size.height = v20;
    v41 = v30 + CGRectGetMinX(v48);
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v49.size.width = v21;
    v49.size.height = v20;
    [v39 setPosition:{v41, CGRectGetMinY(v49)}];
    [v26 addSublayer:v39];
    if (maskImageCopy)
    {
      v42 = objc_alloc_init(MEMORY[0x1E6979398]);
      [v42 setContents:{objc_msgSend(maskImageCopy, "CGImage")}];
      [v42 setBounds:{0.0, 0.0, v34, v20}];
      [v42 setAnchorPoint:{v27, v28}];
      [v26 bounds];
      v43 = CGRectGetMaxX(v50) - v34;
      v51.origin.x = 0.0;
      v51.origin.y = 0.0;
      v51.size.width = v21;
      v51.size.height = v20;
      [v42 setPosition:{v43, CGRectGetMinY(v51)}];
      [maskImageCopy scale];
      [v42 setContentsScale:?];
      [v26 addSublayer:v42];
    }

    layer = [(UIView *)v22 layer];
    [layer setMask:v26];
  }
}

- (double)_effectiveBackIndicatorLeftMargin
{
  _appearanceStorage = [(UINavigationBar *)self->super._navigationBar _appearanceStorage];
  backIndicatorImage = [_appearanceStorage backIndicatorImage];
  if (backIndicatorImage)
  {
    v5 = backIndicatorImage;
    backIndicatorTransitionMaskImage = [_appearanceStorage backIndicatorTransitionMaskImage];
    if (backIndicatorTransitionMaskImage)
    {
      v7 = backIndicatorTransitionMaskImage;
      backIndicatorLeftMargin = [_appearanceStorage backIndicatorLeftMargin];

      if (backIndicatorLeftMargin)
      {
        backIndicatorLeftMargin2 = [_appearanceStorage backIndicatorLeftMargin];
        [backIndicatorLeftMargin2 doubleValue];
        v11 = v10;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  [(UIView *)self->super._navigationBar _contentMargin];
  v13 = v12;
  _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
  [_currentVisualStyle horizontalMarginAdjustment];
  v11 = v13 - v15;

  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

LABEL_8:

  return v11;
}

- (double)_backIndicatorClippingMargin
{
  if (!self->_backIndicatorView)
  {
    return 0.0;
  }

  [(_UINavigationBarVisualProviderLegacyIOS *)self _effectiveBackIndicatorLeftMargin];
  return result;
}

- (BOOL)_suppressBackIndicator
{
  _screen = [(UIView *)self->super._navigationBar _screen];
  if (_screen)
  {
    navigationBar = self->super._navigationBar;
    _screen2 = [(UIView *)navigationBar _screen];
    v6 = ![(UINavigationBar *)navigationBar _shouldShowBackButtonForScreen:_screen2];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_effectiveBackIndicatorImage
{
  if ([(_UINavigationBarVisualProviderLegacyIOS *)self _suppressBackIndicator])
  {
    backIndicatorImage = 0;
  }

  else
  {
    backIndicatorImage = [(UINavigationBar *)self->super._navigationBar backIndicatorImage];
    if (!backIndicatorImage)
    {
      if (qword_1ED49B2A0 != -1)
      {
        dispatch_once(&qword_1ED49B2A0, &__block_literal_global_66);
      }

      backIndicatorImage = _MergedGlobals_29_0;
    }
  }

  return backIndicatorImage;
}

- (id)_effectiveBackIndicatorTransitionMaskImage
{
  if ([(_UINavigationBarVisualProviderLegacyIOS *)self _suppressBackIndicator])
  {
    backIndicatorTransitionMaskImage = 0;
  }

  else
  {
    backIndicatorTransitionMaskImage = [(UINavigationBar *)self->super._navigationBar backIndicatorTransitionMaskImage];
    if (!backIndicatorTransitionMaskImage)
    {
      if (qword_1ED49B2B0 != -1)
      {
        dispatch_once(&qword_1ED49B2B0, &__block_literal_global_70);
      }

      backIndicatorTransitionMaskImage = qword_1ED49B2A8;
    }
  }

  return backIndicatorTransitionMaskImage;
}

- (void)_updateBackIndicatorImage
{
  _effectiveBackIndicatorImage = [(_UINavigationBarVisualProviderLegacyIOS *)self _effectiveBackIndicatorImage];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v5 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:topItem];

  [v5 backIndicatorViewHasRespondedToCustomBackgroundImageChange];
  if (_effectiveBackIndicatorImage || ([(UIImageView *)self->_backIndicatorView image], (backItem = objc_claimAutoreleasedReturnValue()) != 0))
  {
    image = [(UIImageView *)self->_backIndicatorView image];
    v7 = [_effectiveBackIndicatorImage isEqual:image];

    if (_effectiveBackIndicatorImage)
    {
      if (v7)
      {
        goto LABEL_12;
      }

      if (!self->_backIndicatorView)
      {
        v8 = objc_alloc_init(UINavigationBarBackIndicatorView);
        backIndicatorView = self->_backIndicatorView;
        self->_backIndicatorView = &v8->super;

        [(UIImageView *)self->_backIndicatorView _setDefaultRenderingMode:2];
        [(UIImageView *)self->_backIndicatorView setSemanticContentAttribute:[(UIView *)self->super._navigationBar semanticContentAttribute]];
        [(UIView *)self->_contentView addSubview:self->_backIndicatorView];
        if (!-[UINavigationBar _hasBackButton](self->super._navigationBar, "_hasBackButton") || (-[UINavigationBar topItem](self->super._navigationBar, "topItem"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 _leftItemsWantBackButton], v10, (v11 & 1) == 0))
        {
          [(UIView *)self->_backIndicatorView setAlpha:0.0];
        }
      }

      [(UIImageView *)self->_backIndicatorView setImage:_effectiveBackIndicatorImage];
      [(UIView *)self->_backIndicatorView sizeToFit];
    }

    else
    {

      if (v7)
      {
        goto LABEL_12;
      }
    }

    [(UIView *)self->_contentView setNeedsLayout];
  }

LABEL_12:
  [(_UINavigationBarVisualProviderLegacyIOS *)self _updateBackIndicatorViewTintColor];
}

- (void)_updateBackIndicatorViewTintColor
{
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom > 1)
  {
    if (userInterfaceIdiom != 3)
    {
      return;
    }

    tintColor = [(UIView *)self->_backIndicatorView tintColor];
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    _barButtonForBackButtonIndicator = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:topItem];

    if ([_barButtonForBackButtonIndicator isFocused])
    {
      tintColor2 = +[UIColor _externalBarBackgroundColor];
    }

    else
    {
      tintColor2 = 0;
    }

    if (([tintColor isEqual:tintColor2] & 1) == 0)
    {
      [(UIView *)self->_backIndicatorView setTintColor:tintColor2];
      [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
    }

    goto LABEL_13;
  }

  tintColor = [(UINavigationBar *)self->super._navigationBar topItem];
  if (!-[UINavigationBar _hasBackButton](self->super._navigationBar, "_hasBackButton") && [tintColor _wantsBackButtonIndicator])
  {
    _barButtonForBackButtonIndicator = [tintColor _barButtonForBackButtonIndicator];
    tintColor2 = [_barButtonForBackButtonIndicator tintColor];
    [(UIView *)self->_backIndicatorView setTintColor:tintColor2];
LABEL_13:

    goto LABEL_14;
  }

  [(UIView *)self->_backIndicatorView setTintColor:0];
LABEL_14:
}

- (CGRect)_contentViewFrameInBounds:(CGRect)bounds style:(id)style
{
  width = bounds.size.width;
  x = bounds.origin.x;
  styleCopy = style;
  [styleCopy barHeightForMetrics:{objc_msgSend(styleCopy, "metrics")}];
  v9 = v8;

  UIFloorToViewScale(self->super._navigationBar);
  v11 = v10;
  v12 = x;
  v13 = width;
  v14 = v9;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (BOOL)_supportsCanvasView
{
  v2 = objc_opt_class();

  return [v2 _supportsCanvasView];
}

- (void)_startPushAnimationFromOldBackItem:(id)item oldTopItem:(id)topItem newBackItem:(id)backItem newTopItem:(id)newTopItem withTransitionAssistant:(id)assistant completion:(id)completion
{
  rect_24 = item;
  topItemCopy = topItem;
  backItemCopy = backItem;
  newTopItemCopy = newTopItem;
  assistantCopy = assistant;
  completionCopy = completion;
  _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
  v186 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v165 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v184 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v188 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 16);
  v216 = *MEMORY[0x1E695F058];
  v217 = v21;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  object = self;
  v183 = newTopItemCopy;
  [(_UINavigationBarVisualProviderLegacyIOS *)self _getTitleViewFrame:&v216 leftViewFrames:v19 rightViewFrames:v22 forPreviousItem:backItemCopy item:newTopItemCopy];
  if ([v22 count])
  {
    lastObject = [v22 lastObject];
    [lastObject CGRectValue];
    v164 = v24;
  }

  else
  {
    v164 = 0.0;
  }

  if ([v19 count])
  {
    v25 = [v19 objectAtIndex:0];
    [v25 CGRectValue];
    rect = v26;
    v28 = v27;
    v176 = v29;
    v31 = v30;
  }

  else
  {
    v28 = v20[1];
    rect = *v20;
    v31 = v20[3];
    v176 = v20[2];
  }

  v32 = v183;
  selfCopy = self;
  leftBarButtonItem = [v183 leftBarButtonItem];

  MinX = 0.0;
  if (leftBarButtonItem)
  {
    lastObject2 = [v19 lastObject];
    [lastObject2 CGRectValue];
    MaxX = CGRectGetMaxX(v218);

    if ([v183 leftItemsSupplementBackButton] && objc_msgSend(v19, "count") >= 2)
    {
      v37 = [v19 objectAtIndex:1];
      [v37 CGRectValue];
      MinX = CGRectGetMinX(v219);
    }
  }

  else
  {
    MaxX = 0.0;
  }

  v38 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItemCopy topItem:v183];
  [v38 _backButtonBackgroundImageForState:0 barMetrics:{-[UINavigationBar isMinibar](object->super._navigationBar, "isMinibar")}];
  v167 = v169 = _currentVisualStyle;
  [_currentVisualStyle leftBackTitleMarginForCustomBackButtonBackground:?];
  v171 = v39;
  rect_8 = object->_contentView;
  v40 = *(&object->super._navigationBar->super._viewFlags + 2);
  _titleView = [topItemCopy _titleView];
  title = [topItemCopy title];
  title2 = [v38 title];
  objc_opt_class();
  v45 = 1.0;
  rect_16 = title;
  v177 = backItemCopy;
  v170 = title2;
  v160 = v31;
  v161 = v28;
  v159 = MinX;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [title2 isEqualToString:title] && (objc_msgSend(v38, "hasCustomBackgroundImage") & 1) == 0 && (objc_msgSend(assistantCopy, "shouldCrossfade") & 1) == 0)
  {
    [(_UINavigationBarVisualProviderLegacyIOS *)object _backTitleWidthOverTitleWidthForMatchingBackButtonView:v38 titleView:_titleView withBackButtonWidth:v176];
    v45 = v156;
    v44 = 1.0;
    v174 = v45 != 1.0;
    if (!_titleView)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v174 = 0;
    if (!_titleView)
    {
      goto LABEL_23;
    }
  }

  [_titleView frame];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = fmin(v46, rect + v171);
  v55 = fmax(v47, rect);
  if ((v40 & 0x400000) != 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = v54;
  }

  [v186 addObject:_titleView];
  v57 = [MEMORY[0x1E696B098] valueWithCGRect:{v47, v49, v51, v53}];
  objc_setAssociatedObject(_titleView, &_UINavigationBarOriginalFrameKey, v57, 1);

  v220.origin.x = v56;
  v220.origin.y = v49;
  v220.size.width = v51;
  v220.size.height = v53;
  v58 = v45 * CGRectGetWidth(v220);
  v59 = MEMORY[0x1E696B098];
  v221.origin.x = v56;
  v221.origin.y = v49;
  v221.size.width = v58;
  v221.size.height = v53;
  v60 = v45;
  MidX = CGRectGetMidX(v221);
  v222.origin.x = v56;
  v222.origin.y = v49;
  v222.size.width = v58;
  v222.size.height = v53;
  MidY = CGRectGetMidY(v222);
  v63 = MidX;
  v45 = v60;
  v64 = [v59 valueWithCGPoint:{v63, MidY}];
  [v184 addObject:v64];

  if (([assistantCopy shouldCrossfade] & 1) == 0)
  {
    v44 = MaxX;
    if (MaxX > 0.0)
    {
      v65 = __slideTransitionFadeMaskImage(1);
      v223.origin.x = v47;
      v223.origin.y = v49;
      v223.size.width = v51;
      v223.size.height = v53;
      v66 = CGRectGetMinX(v223);
      [v65 size];
      v68 = fmin(MaxX, v66 - v67);
      [(UIView *)object->super._navigationBar bounds];
      [(_UINavigationBarVisualProviderLegacyIOS *)object _wrapView:_titleView inClippingViewWithLeftBoundary:v65 rightBoundary:0 leftMaskImage:0 leftMaskIsChevron:v68 rightMaskImage:CGRectGetMaxX(v224)];
    }
  }

LABEL_23:
  backButtonView = [rect_24 backButtonView];
  v70 = 0.0;
  if (![v183 _leftItemsWantBackButton] || (objc_msgSend(assistantCopy, "shouldHideBackButtonDuringTransition") & 1) != 0 || (objc_msgSend(v183, "hidesBackButton") & 1) != 0 || v38 && (objc_msgSend(v38, "_suppressesBackIndicatorView") & 1) != 0)
  {
    v71 = 1;
  }

  else
  {
    if (([backButtonView _suppressesBackIndicatorView] & 1) == 0)
    {
      [(_UINavigationBarVisualProviderLegacyIOS *)object _backIndicatorClippingMargin];
      v70 = v155;
    }

    v71 = 0;
  }

  v175 = topItemCopy;
  if (backButtonView)
  {
    v163 = v71;
    [backButtonView frame];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v157 = v78;
    if (backButtonView == v38)
    {
      v81 = [_UINavigationItemButtonView alloc];
      navigationItem = [v38 navigationItem];
      v83 = [(_UINavigationItemButtonView *)v81 initWithNavigationItem:navigationItem];

      _appearanceStorage = [v38 _appearanceStorage];

      if (_appearanceStorage)
      {
        backBarButtonItem = [rect_24 backBarButtonItem];
        _appearanceStorage2 = [backBarButtonItem _appearanceStorage];
        v87 = objc_getAssociatedObject(backBarButtonItem, &_UIAppearanceCustomizedSelectorsAssociationKey);
        [(_UINavigationItemButtonView *)v83 _applyBarButtonAppearanceStorage:_appearanceStorage2 withTaggedSelectors:v87];
      }

      v79 = v40;
      [v38 frame];
      [(_UINavigationItemView *)v83 setFrame:?];
      v32 = v183;
      selfCopy = object;
      backButtonView = v83;
    }

    else
    {
      v79 = v40;
    }

    [backButtonView setPressed:{0, v157}];
    v80 = v165;
    objecta = backButtonView;
    if (([assistantCopy shouldCrossfade] & 1) != 0 || v70 <= 0.0)
    {
      v88 = v45;
      [(UIView *)rect_8 addSubview:backButtonView];
    }

    else
    {
      v88 = v45;
      _effectiveBackIndicatorTransitionMaskImage = [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _effectiveBackIndicatorTransitionMaskImage];
      [objecta frame];
      [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:objecta inClippingViewWithLeftBoundary:_effectiveBackIndicatorTransitionMaskImage rightBoundary:1 leftMaskImage:0 leftMaskIsChevron:v70 rightMaskImage:CGRectGetMaxX(v225)];

      backButtonView = objecta;
    }

    [backButtonView frame];
    v92 = v91;
    v93 = v90;
    v95 = v94;
    navigationBar = selfCopy->super._navigationBar;
    if ((*(&navigationBar->super._viewFlags + 18) & 0x40) != 0)
    {
      [(UIView *)navigationBar bounds];
      v97 = v98;
    }

    else
    {
      v97 = -v90;
    }

    v99 = [MEMORY[0x1E696B098] valueWithCGRect:{v73, v75, v77, v158}];
    objc_setAssociatedObject(objecta, &_UINavigationBarOriginalFrameKey, v99, 1);

    [v186 addObject:objecta];
    v100 = MEMORY[0x1E696B098];
    v226.origin.x = v97;
    v226.origin.y = v92;
    v226.size.width = v93;
    v226.size.height = v95;
    v101 = CGRectGetMidX(v226);
    v227.origin.x = v97;
    v227.origin.y = v92;
    v227.size.width = v93;
    v227.size.height = v95;
    v102 = [v100 valueWithCGPoint:{v101, CGRectGetMidY(v227)}];
    [v184 addObject:v102];

    v45 = v88;
    v71 = v163;
  }

  else
  {
    v79 = v40;
    objecta = 0;
    v80 = v165;
  }

  _subviewIndexAboveBackground = [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _subviewIndexAboveBackground];
  if (v38)
  {
    v166 = v45;
    [v38 setStyle:{-[UINavigationBar _barStyle](selfCopy->super._navigationBar, "_barStyle")}];
    [v38 setPressed:0];
    if (_titleView)
    {
      [_titleView frame];
      x = v104;
      y = v106;
      width = v108;
      height = v110;
    }

    else
    {
      y = v216.y;
      x = v216.x;
      height = v217.height;
      width = v217.width;
    }

    if (v177)
    {
      goto LABEL_49;
    }

    titleView = [v175 titleView];
    if (titleView)
    {
    }

    else if ([v170 isEqualToString:rect_16])
    {
LABEL_49:
      v112 = v176 / v166;
      if ((v79 & 0x400000) != 0)
      {
        v228.origin.x = x;
        v228.origin.y = y;
        v228.size.width = width;
        v228.size.height = height;
        v117 = CGRectGetMaxX(v228);
        v229.origin.x = rect;
        v115 = v160;
        v114 = v161;
        v229.origin.y = v161;
        v229.size.width = v176 / v166;
        v229.size.height = v160;
        v113 = v171 / v166 + v117 - CGRectGetWidth(v229);
      }

      else
      {
        v113 = x - v171 / v166;
        v115 = v160;
        v114 = v161;
      }

      v45 = v166;
LABEL_60:
      if (([assistantCopy shouldCrossfade] & 1) != 0 || v159 <= 0.0)
      {
        [(UIView *)rect_8 insertSubview:v38 atIndex:_subviewIndexAboveBackground];
      }

      else
      {
        v120 = __slideTransitionFadeMaskImage(0);
        [(UIView *)selfCopy->super._navigationBar bounds];
        v121 = CGRectGetMinX(v236);
        v237.origin.x = v113;
        v237.origin.y = v114;
        v237.size.width = v112;
        v237.size.height = v115;
        v122 = CGRectGetMaxX(v237);
        [v120 size];
        [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:v38 inClippingViewWithLeftBoundary:0 rightBoundary:0 leftMaskImage:v120 leftMaskIsChevron:v121 rightMaskImage:fmax(v159, v122 + v123)];
      }

      [v38 setAlpha:0.0];
      if (([assistantCopy shouldHideBackButtonDuringTransition] & 1) != 0 || objc_msgSend(v32, "hidesBackButton"))
      {
        [v38 setFrame:{rect, v114, v176, v115}];
      }

      else
      {
        [v38 setFrame:{v113, v114, v112, v115}];
        if (v174)
        {
          CGAffineTransformMakeScale(&v215, 1.0 / v45, 1.0);
          [v38 setTransform:&v215];
        }

        [v80 addObject:v38];
        v124 = MEMORY[0x1E696B098];
        v238.origin.x = rect;
        v238.origin.y = v114;
        v238.size.width = v176;
        v238.size.height = v115;
        v125 = CGRectGetMidX(v238);
        v239.origin.x = rect;
        v239.origin.y = v114;
        v239.size.width = v176;
        v239.size.height = v115;
        v126 = [v124 valueWithCGPoint:{v125, CGRectGetMidY(v239)}];
        [v188 addObject:v126];
      }

      goto LABEL_70;
    }

    if ((v79 & 0x400000) != 0)
    {
      [(UIView *)selfCopy->super._navigationBar bounds];
      v172 = CGRectGetMaxX(v232);
      v233.origin.x = rect;
      v115 = v160;
      v233.origin.y = v161;
      v112 = v176;
      v233.size.width = v176;
      v233.size.height = v160;
      v173 = v172 - CGRectGetWidth(v233);
      v234.origin.x = rect;
      v234.origin.y = v161;
      v234.size.width = v176;
      v234.size.height = v160;
      v119 = CGRectGetMidX(v234);
      v235.origin.x = x;
      v114 = v161;
      v235.origin.y = y;
      v235.size.width = width;
      v235.size.height = height;
      v113 = v173 - (v119 - CGRectGetMidX(v235));
    }

    else
    {
      v230.origin.x = x;
      v230.origin.y = y;
      v230.size.width = width;
      v230.size.height = height;
      v118 = CGRectGetMidX(v230);
      v231.origin.x = rect;
      v115 = v160;
      v114 = v161;
      v231.origin.y = v161;
      v231.size.width = v176;
      v231.size.height = v160;
      v113 = v118 - CGRectGetMidX(v231) - v171;
      v112 = v176;
    }

    v45 = v166;
    goto LABEL_60;
  }

LABEL_70:
  _titleView2 = [v32 _titleView];
  if (_titleView2)
  {
    v128 = v216;
    v129 = v217;
    v130 = selfCopy->super._navigationBar;
    if ((*(&v130->super._viewFlags + 18) & 0x40) != 0)
    {
      v132 = -v217.width;
    }

    else
    {
      [(UIView *)v130 bounds];
      v132 = v131;
    }

    if (([assistantCopy shouldCrossfade] & 1) != 0 || (v133 = v164, v164 <= 0.0))
    {
      [(UIView *)rect_8 insertSubview:_titleView2 atIndex:_subviewIndexAboveBackground, v133];
    }

    else
    {
      v134 = __slideTransitionFadeMaskImage(0);
      v240.origin = v128;
      v240.size = v129;
      v135 = CGRectGetMaxX(v240);
      [v134 size];
      [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:_titleView2 inClippingViewWithLeftBoundary:0 rightBoundary:0 leftMaskImage:v134 leftMaskIsChevron:0.0 rightMaskImage:fmax(v164, v135 + v136)];
    }

    [_titleView2 setFrame:{v132, v128.y, v129}];
    [_titleView2 setAlpha:0.0];
    [v80 addObject:_titleView2];
    v137 = MEMORY[0x1E696B098];
    v241.origin = v128;
    v241.size = v129;
    v138 = CGRectGetMidX(v241);
    v242.origin = v128;
    v242.size = v129;
    v139 = [v137 valueWithCGPoint:{v138, CGRectGetMidY(v242)}];
    [v188 addObject:v139];
  }

  recta = _titleView2;
  if ([assistantCopy shouldCrossfade])
  {
    v213[0] = MEMORY[0x1E69E9820];
    v213[1] = 3221225472;
    v213[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke;
    v213[3] = &unk_1E70F3F18;
    v214 = v188;
    [v80 enumerateObjectsUsingBlock:v213];
  }

  [assistantCopy duration];
  v141 = v140;
  [assistantCopy incrementAnimationCount];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_2;
  aBlock[3] = &unk_1E70F7D40;
  aBlock[4] = selfCopy;
  v211 = v71;
  v142 = selfCopy;
  v143 = v186;
  v203 = v143;
  v144 = assistantCopy;
  v204 = v144;
  v187 = v184;
  v205 = v187;
  v145 = v80;
  v206 = v145;
  v189 = v188;
  v207 = v189;
  v212 = v174;
  v185 = v38;
  v208 = v185;
  v210 = v45;
  v146 = _titleView;
  v209 = v146;
  v147 = _Block_copy(aBlock);
  v196[0] = MEMORY[0x1E69E9820];
  v196[1] = 3221225472;
  v196[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_5;
  v196[3] = &unk_1E70F7D68;
  v196[4] = v142;
  v148 = v145;
  v197 = v148;
  v149 = v143;
  v198 = v149;
  v150 = v144;
  v199 = v150;
  v151 = completionCopy;
  v201 = v151;
  v152 = objecta;
  v200 = v152;
  v153 = _Block_copy(v196);
  if ([v150 shouldAnimateAlongside])
  {
    transitionCoordinator = [v150 transitionCoordinator];
    v194[0] = MEMORY[0x1E69E9820];
    v194[1] = 3221225472;
    v194[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_6;
    v194[3] = &unk_1E70F3770;
    v195 = v147;
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_7;
    v192[3] = &unk_1E70F3770;
    v193 = v153;
    [transitionCoordinator animateAlongsideTransition:v194 completion:v192];
  }

  else
  {
    [UIView _animateWithDuration:393216 delay:v142 options:v147 factory:v153 animations:v141 completion:0.0];
  }
}

- (void)_startPopAnimationFromOldBackItem:(id)item oldTopItem:(id)topItem newBackItem:(id)backItem newTopItem:(id)newTopItem withTransitionAssistant:(id)assistant completion:(id)completion
{
  itemCopy = item;
  topItemCopy = topItem;
  backItemCopy = backItem;
  newTopItemCopy = newTopItem;
  assistantCopy = assistant;
  completionCopy = completion;
  v183 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v181 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v176 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 16);
  v213 = *MEMORY[0x1E695F058];
  v214 = v21;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  [(_UINavigationBarVisualProviderLegacyIOS *)self _getTitleViewFrame:&v213 leftViewFrames:v19 rightViewFrames:v22 forPreviousItem:backItemCopy item:newTopItemCopy];
  lastObject = [v22 lastObject];

  if (lastObject)
  {
    lastObject2 = [v22 lastObject];
    [lastObject2 CGRectValue];
    v161 = v25;
  }

  else
  {
    v161 = 0.0;
  }

  if ([v19 count])
  {
    v26 = [v19 objectAtIndex:0];
    [v26 CGRectValue];
    v159 = v28;
    v160 = v27;
    v30 = v29;
    v157 = v31;
  }

  else
  {
    v159 = v20[1];
    v160 = *v20;
    v30 = v20[2];
    v157 = v20[3];
  }

  leftBarButtonItem = [newTopItemCopy leftBarButtonItem];

  MinX = 0.0;
  if (leftBarButtonItem)
  {
    lastObject3 = [v19 lastObject];
    [lastObject3 CGRectValue];
    MaxX = CGRectGetMaxX(v215);

    if ([newTopItemCopy leftItemsSupplementBackButton] && objc_msgSend(v19, "count") >= 2)
    {
      v35 = [v19 objectAtIndex:1];
      [v35 CGRectValue];
      MinX = CGRectGetMinX(v216);
    }
  }

  else
  {
    MaxX = 0.0;
  }

  if (-[_UINavigationBarVisualProviderLegacyIOS _shouldShowBackButtonForNavigationItem:](self, "_shouldShowBackButtonForNavigationItem:", backItemCopy) && ([newTopItemCopy hidesBackButton] & 1) == 0)
  {
    leftBarButtonItem2 = [newTopItemCopy leftBarButtonItem];
    if (leftBarButtonItem2 && ![newTopItemCopy leftItemsSupplementBackButton])
    {
      backButtonView = 0;
    }

    else
    {
      backButtonView = [backItemCopy backButtonView];
    }
  }

  else
  {
    backButtonView = 0;
  }

  existingBackButtonView = [itemCopy existingBackButtonView];
  v39 = 0.0;
  v171 = v22;
  if (!backButtonView || ([backButtonView _suppressesBackIndicatorView] & 1) != 0 || !objc_msgSend(newTopItemCopy, "_leftItemsWantBackButton") || (objc_msgSend(assistantCopy, "shouldHideBackButtonDuringTransition") & 1) != 0 || (objc_msgSend(newTopItemCopy, "hidesBackButton") & 1) != 0)
  {
    v167 = 1;
  }

  else
  {
    [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _backIndicatorClippingMargin];
    v39 = v154;
    v167 = 0;
  }

  _currentVisualStyle = [(UINavigationBar *)selfCopy->super._navigationBar _currentVisualStyle];
  v168 = [existingBackButtonView _backButtonBackgroundImageForState:0 barMetrics:{-[UINavigationBar isMinibar](selfCopy->super._navigationBar, "isMinibar")}];
  v169 = _currentVisualStyle;
  [_currentVisualStyle leftBackTitleMarginForCustomBackButtonBackground:v168];
  v162 = v41;
  _titleView = [newTopItemCopy _titleView];
  title = [newTopItemCopy title];
  title2 = [existingBackButtonView title];
  objc_opt_class();
  v45 = 1.0;
  v185 = newTopItemCopy;
  v179 = itemCopy;
  v172 = backItemCopy;
  v173 = title2;
  v174 = title;
  v158 = v30;
  v156 = v39;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [title2 isEqualToString:title] && (objc_msgSend(existingBackButtonView, "hasCustomBackgroundImage") & 1) == 0 && (objc_msgSend(assistantCopy, "shouldCrossfade") & 1) == 0)
  {
    [existingBackButtonView bounds];
    v47 = selfCopy;
    [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _backTitleWidthOverTitleWidthForMatchingBackButtonView:existingBackButtonView titleView:_titleView withBackButtonWidth:v152];
    v45 = v153;
    v46 = v153 != 1.0;
  }

  else
  {
    v46 = 0;
    v47 = selfCopy;
  }

  navigationBar = v47->super._navigationBar;
  v49 = &OBJC_IVAR____UIStateMachine__state;
  v50 = *(&navigationBar->super._viewFlags + 2);
  v51 = v213;
  v52 = v214;
  [(UIView *)navigationBar bounds];
  v165 = v54;
  v166 = v53;
  v56 = v55;
  rect = v57;
  v175 = v55;
  if (!v185 || !_titleView)
  {
    v66 = v18;
    v67 = v176;
    if (_titleView)
    {
      goto LABEL_47;
    }

    titleView = selfCopy->_titleView;
    selfCopy->_titleView = 0;
    goto LABEL_46;
  }

  v155 = MaxX;
  [(UIView *)selfCopy->_contentView addSubview:_titleView];
  objc_storeStrong(&selfCopy->_titleView, _titleView);
  v58 = *(&v213 + 1);
  v59 = *&v213;
  v60 = *(&v214 + 1);
  v61 = *&v214;
  if (existingBackButtonView)
  {
    [existingBackButtonView frame];
    v63 = fmin(v59, v162 + v62);
    v64 = fmax(v59, v62);
    if ((v50 & 0x400000) != 0)
    {
      v59 = v64;
    }

    else
    {
      v59 = v63;
    }

    v65 = v45;
    v61 = v45 * v61;
  }

  else
  {
    v65 = v45;
  }

  v66 = v18;
  v217.origin.x = v59;
  v217.origin.y = v58;
  v217.size.width = v61;
  v217.size.height = v60;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v59;
  v218.origin.y = v58;
  v218.size.width = v61;
  v218.size.height = v60;
  [_titleView setCenter:{MidX, CGRectGetMidY(v218)}];
  v70 = MEMORY[0x1E696B098];
  [_titleView frame];
  v71 = [v70 valueWithCGRect:?];
  objc_setAssociatedObject(_titleView, &_UINavigationBarOriginalFrameKey, v71, 1);

  v67 = v176;
  v45 = v65;
  if (v46)
  {
    CGAffineTransformMakeScale(&v212, v65, 1.0);
    [_titleView setTransform:&v212];
  }

  [_titleView setAlpha:0.0];
  [v66 addObject:_titleView];
  v72 = MEMORY[0x1E696B098];
  v219.origin = v51;
  v219.size = v52;
  v73 = CGRectGetMidX(v219);
  v220.origin = v51;
  v220.size = v52;
  v74 = [v72 valueWithCGPoint:{v73, CGRectGetMidY(v220)}];
  [v176 addObject:v74];

  v56 = v175;
  if (([assistantCopy shouldCrossfade] & 1) == 0 && v155 > 0.0)
  {
    titleView = __slideTransitionFadeMaskImage(1);
    v221.origin = v51;
    v221.size = v52;
    v75 = CGRectGetMinX(v221);
    [titleView size];
    v77 = fmin(v155, v75 - v76);
    v222.origin.y = v165;
    v222.origin.x = v166;
    v222.size.width = v175;
    v222.size.height = rect;
    [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:_titleView inClippingViewWithLeftBoundary:titleView rightBoundary:0 leftMaskImage:0 leftMaskIsChevron:v77 rightMaskImage:CGRectGetMaxX(v222)];
LABEL_46:
  }

LABEL_47:
  if (!existingBackButtonView)
  {
    goto LABEL_64;
  }

  [existingBackButtonView setPressed:0];
  [existingBackButtonView frame];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  if (([assistantCopy shouldCrossfade] & 1) != 0 || (v86 = MinX, MinX == 0.0))
  {
    [(UIView *)selfCopy->_contentView addSubview:existingBackButtonView, v86];
  }

  else
  {
    v87 = __slideTransitionFadeMaskImage(0);
    v223.origin.x = v79;
    v223.origin.y = v81;
    v223.size.width = v83;
    v223.size.height = v85;
    v88 = v45;
    v89 = CGRectGetMaxX(v223);
    [v87 size];
    v91 = v89 + fmax(v90, 2.0);
    v45 = v88;
    v56 = v175;
    [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:existingBackButtonView inClippingViewWithLeftBoundary:0 rightBoundary:0 leftMaskImage:v87 leftMaskIsChevron:0.0 rightMaskImage:fmax(MinX, v91)];
  }

  if (!v179)
  {
    titleView = [v185 titleView];
    if (titleView)
    {
    }

    else if ([v173 isEqualToString:v174])
    {
      goto LABEL_53;
    }

    if ((v50 & 0x400000) != 0)
    {
      v228.origin.y = v165;
      v228.origin.x = v166;
      v228.size.width = v56;
      v228.size.height = rect;
      v98 = v45;
      v99 = CGRectGetMaxX(v228);
      *&v229.origin.x = v51;
      v229.origin.y = v81;
      v229.size.width = *(&v52 + 1);
      v229.size.height = v85;
      v177 = v99 - CGRectGetWidth(v229);
      *&v230.origin.x = v51;
      v230.origin.y = v81;
      v230.size.width = *(&v52 + 1);
      v230.size.height = v85;
      v100 = CGRectGetMidX(v230);
      *&v231.origin.x = v51;
      v231.size.height = *(&v52 + 1);
      v231.origin.y = *(&v51 + 1);
      *&v231.size.width = v52;
      v101 = v100 - CGRectGetMidX(v231);
      v45 = v98;
      v56 = v175;
      v96 = v177 - v101;
      goto LABEL_63;
    }

    *&v226.origin.x = v51;
    v226.size.height = *(&v52 + 1);
    v226.origin.y = *(&v51 + 1);
    *&v226.size.width = v52;
    v97 = CGRectGetMidX(v226);
    *&v227.origin.x = v51;
    v227.origin.y = v81;
    v227.size.width = *(&v52 + 1);
    v227.size.height = v85;
    v92 = v97 - CGRectGetMidX(v227);
    v93 = v162;
    goto LABEL_61;
  }

LABEL_53:
  v83 = v83 / v45;
  if ((v50 & 0x400000) == 0)
  {
    v92 = *&v213;
    v93 = v162 / v45;
LABEL_61:
    v96 = v92 - v93;
    goto LABEL_63;
  }

  *&v224.origin.x = v51;
  v224.size.height = *(&v52 + 1);
  v224.origin.y = *(&v51 + 1);
  *&v224.size.width = v52;
  v95 = CGRectGetMaxX(v224);
  *&v225.origin.x = v51;
  v225.origin.y = v81;
  v225.size.width = *(&v52 + 1);
  v225.size.height = v85;
  v96 = v162 / v45 + v95 - CGRectGetWidth(v225);
LABEL_63:
  [v183 addObject:existingBackButtonView];
  v102 = MEMORY[0x1E696B098];
  v232.origin.x = v96;
  v232.origin.y = v81;
  v232.size.width = v83;
  v232.size.height = v85;
  v103 = CGRectGetMidX(v232);
  v233.origin.x = v96;
  v233.origin.y = v81;
  v233.size.width = v83;
  v233.size.height = v85;
  v104 = [v102 valueWithCGPoint:{v103, CGRectGetMidY(v233)}];
  [v181 addObject:v104];

LABEL_64:
  _titleView2 = [topItemCopy _titleView];
  v178 = _titleView2;
  if (_titleView2)
  {
    [_titleView2 frame];
    v108 = v107;
    v110 = v109;
    v111 = v106;
    v113 = v112;
    if ((*(&selfCopy->super._navigationBar->super._viewFlags + 2) & 0x400000) != 0)
    {
      v114 = -v106;
    }

    else
    {
      v114 = v56;
    }

    if (([assistantCopy shouldCrossfade] & 1) != 0 || (v115 = v161, v161 <= 0.0))
    {
      contentView = selfCopy->_contentView;
      _subviewIndexAboveBackground = [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _subviewIndexAboveBackground];
      v125 = contentView;
      v121 = v178;
      [(UIView *)v125 insertSubview:v178 atIndex:_subviewIndexAboveBackground];
    }

    else
    {
      v116 = __slideTransitionFadeMaskImage(0);
      v234.origin.y = v165;
      v234.origin.x = v166;
      v234.size.width = v56;
      v234.size.height = rect;
      v117 = CGRectGetMinX(v234);
      v235.origin.x = v108;
      v235.origin.y = v110;
      v235.size.width = v111;
      v235.size.height = v113;
      v118 = CGRectGetMaxX(v235);
      [v116 size];
      v120 = fmax(v161, v118 + fmax(v119, 2.0));
      v121 = v178;
      v122 = v117;
      v56 = v175;
      [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:v178 inClippingViewWithLeftBoundary:0 rightBoundary:0 leftMaskImage:v116 leftMaskIsChevron:v122 rightMaskImage:v120];

      v49 = &OBJC_IVAR____UIStateMachine__state;
    }

    [v183 addObject:v121];
    v126 = MEMORY[0x1E696B098];
    v236.origin.x = v114;
    v236.origin.y = v110;
    v236.size.width = v111;
    v236.size.height = v113;
    v127 = CGRectGetMidX(v236);
    v237.origin.x = v114;
    v237.origin.y = v110;
    v237.size.width = v111;
    v237.size.height = v113;
    v128 = [v126 valueWithCGPoint:{v127, CGRectGetMidY(v237)}];
    [v181 addObject:v128];
  }

  if (backButtonView)
  {
    [backButtonView setPressed:0];
    if (([assistantCopy shouldCrossfade] & 1) != 0 || v156 <= 0.0)
    {
      [(UIView *)selfCopy->_contentView addSubview:backButtonView];
    }

    else
    {
      _effectiveBackIndicatorTransitionMaskImage = [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _effectiveBackIndicatorTransitionMaskImage];
      v238.origin.y = v165;
      v238.origin.x = v166;
      v238.size.width = v56;
      v238.size.height = rect;
      [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _wrapView:backButtonView inClippingViewWithLeftBoundary:_effectiveBackIndicatorTransitionMaskImage rightBoundary:1 leftMaskImage:0 leftMaskIsChevron:v156 rightMaskImage:CGRectGetMaxX(v238)];
    }

    [backButtonView _setFadingInFromCustomAlpha:1];
    [backButtonView setAlpha:0.3];
    if ((*(&selfCopy->super._navigationBar->super._constraintsExceptingSubviewAutoresizingConstraints + v49[371]) & 0x400000) != 0)
    {
      v130 = v56;
    }

    else
    {
      v130 = -v158;
    }

    if (([assistantCopy shouldHideBackButtonDuringTransition] & 1) == 0)
    {
      _customLeftViews = [v185 _customLeftViews];
      if ([_customLeftViews count] && (objc_msgSend(v185, "leftItemsSupplementBackButton") & 1) == 0)
      {
      }

      else
      {
        hidesBackButton = [v185 hidesBackButton];

        if (!hidesBackButton)
        {
          [backButtonView setFrame:{v130, v159, v158, v157}];
          [v66 addObject:backButtonView];
          v133 = MEMORY[0x1E696B098];
          v239.origin.x = v160;
          v239.origin.y = v159;
          v239.size.width = v158;
          v239.size.height = v157;
          v134 = CGRectGetMidX(v239);
          v240.origin.x = v160;
          v240.origin.y = v159;
          v240.size.width = v158;
          v240.size.height = v157;
          v135 = [v133 valueWithCGPoint:{v134, CGRectGetMidY(v240)}];
          [v67 addObject:v135];

          goto LABEL_88;
        }
      }
    }

    [backButtonView setFrame:{v160, v159, v158, v157}];
  }

LABEL_88:
  if ([assistantCopy shouldCrossfade])
  {
    v210[0] = MEMORY[0x1E69E9820];
    v210[1] = 3221225472;
    v210[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke;
    v210[3] = &unk_1E70F3F18;
    v211 = v67;
    [v66 enumerateObjectsUsingBlock:v210];
  }

  [assistantCopy duration];
  if (v136 == 0.0)
  {
    +[UINavigationBar defaultAnimationDuration];
  }

  v137 = v136;
  [assistantCopy incrementAnimationCount];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_2;
  aBlock[3] = &unk_1E70F7D40;
  aBlock[4] = selfCopy;
  v208 = v167;
  v138 = v183;
  v200 = v138;
  v139 = assistantCopy;
  v201 = v139;
  v184 = v181;
  v202 = v184;
  v140 = v66;
  v203 = v140;
  v182 = v67;
  v204 = v182;
  v209 = v46;
  v141 = _titleView;
  v205 = v141;
  v142 = existingBackButtonView;
  v206 = v142;
  v207 = v45;
  v143 = _Block_copy(aBlock);
  v191[0] = MEMORY[0x1E69E9820];
  v191[1] = 3221225472;
  v191[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_5;
  v191[3] = &unk_1E70F7D90;
  v144 = backButtonView;
  v192 = v144;
  v193 = selfCopy;
  v145 = v140;
  v194 = v145;
  v146 = v138;
  v195 = v146;
  v147 = v139;
  v196 = v147;
  v148 = completionCopy;
  v198 = v148;
  v149 = v142;
  v197 = v149;
  v150 = _Block_copy(v191);
  if ([v147 interactive])
  {
    [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy updateTopNavigationItemAnimated:1];
  }

  if ([v147 shouldAnimateAlongside])
  {
    transitionCoordinator = [v147 transitionCoordinator];
    v189[0] = MEMORY[0x1E69E9820];
    v189[1] = 3221225472;
    v189[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_6;
    v189[3] = &unk_1E70F3770;
    v190 = v143;
    v187[0] = MEMORY[0x1E69E9820];
    v187[1] = 3221225472;
    v187[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_7;
    v187[3] = &unk_1E70F3770;
    v188 = v150;
    [transitionCoordinator animateAlongsideTransition:v189 completion:v187];
  }

  else
  {
    [UIView _animateWithDuration:393216 delay:selfCopy options:v143 factory:v150 animations:v137 completion:0.0];
  }
}

- (void)_completeNavigationTransitionWithIncomingViews:(id)views outgoingViews:(id)outgoingViews transitionAssistant:(id)assistant completion:(id)completion
{
  v85 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  outgoingViewsCopy = outgoingViews;
  assistantCopy = assistant;
  completionCopy = completion;
  v59 = assistantCopy;
  v57 = viewsCopy;
  v58 = outgoingViewsCopy;
  if ([assistantCopy cancelledTransition])
  {
    v13 = viewsCopy;
  }

  else
  {
    v13 = outgoingViewsCopy;
  }

  v14 = v13;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v15 = self->_slideTransitionClippingViews;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v78;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v78 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v77 + 1) + 8 * i);
        subviews = [v20 subviews];
        lastObject = [subviews lastObject];

        if (([v14 containsObject:lastObject] & 1) == 0)
        {
          if (!lastObject)
          {
            goto LABEL_13;
          }

          [(UIView *)self->_contentView insertSubview:lastObject atIndex:[(_UINavigationBarVisualProviderLegacyIOS *)self _subviewIndexAboveBackground]];
        }

LABEL_13:
        [v20 removeFromSuperview];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v17);
  }

  [(NSMutableArray *)self->_slideTransitionClippingViews removeAllObjects];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v23 = v14;
  v24 = [v23 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v74;
    v61 = *(MEMORY[0x1E695EFD0] + 16);
    v62 = *MEMORY[0x1E695EFD0];
    v60 = *(MEMORY[0x1E695EFD0] + 32);
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v74 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v73 + 1) + 8 * j);
        v72[0] = v62;
        v72[1] = v61;
        v72[2] = v60;
        [v28 setTransform:v72];
        if ([v59 cancelledTransition])
        {
          v29 = objc_getAssociatedObject(v28, &_UINavigationBarOriginalFrameKey);
          v30 = v29;
          if (v29)
          {
            [v29 CGRectValue];
            [v28 setFrame:?];
            objc_setAssociatedObject(v28, &_UINavigationBarOriginalFrameKey, 0, 1);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v25);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v31 = v23;
  v32 = [v31 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v69;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v69 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v68 + 1) + 8 * k);
        superview = [v36 superview];
        contentView = self->_contentView;

        if (superview == contentView)
        {
          [v36 removeFromSuperview];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v68 objects:v82 count:16];
    }

    while (v33);
  }

  v39 = v59;
  if ([v59 cancelledTransition])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v40 = v58;
    v41 = [v40 countByEnumeratingWithState:&v64 objects:v81 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v65;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v65 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v64 + 1) + 8 * m);
          [v45 setAlpha:1.0];
          v46 = objc_getAssociatedObject(v45, &_UINavigationBarOriginalFrameKey);
          v47 = v46;
          if (v46)
          {
            [v46 CGRectValue];
            [v45 setFrame:?];
            objc_setAssociatedObject(v45, &_UINavigationBarOriginalFrameKey, 0, 1);
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v64 objects:v81 count:16];
      }

      while (v42);
    }

    v39 = v59;
  }

  completionCopy[2](completionCopy, 1, v39);
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _titleView = [topItem _titleView];
  titleView = self->_titleView;
  self->_titleView = _titleView;

  if ([v39 shouldUpdatePromptAfterTransition])
  {
    [(UINavigationBar *)self->super._navigationBar updatePrompt];
    [v39 setShouldUpdatePromptAfterTransition:0];
  }

  [(_UINavigationBarVisualProviderLegacyIOS *)self _updateBackground];
  [v39 decrementAnimationCount];
  topItem2 = [(UINavigationBar *)self->super._navigationBar topItem];
  _pendingTitle = [topItem2 _pendingTitle];

  if (_pendingTitle)
  {
    if ([v39 shouldAnimateAlongside])
    {
      transitionCoordinator = [v39 transitionCoordinator];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __135___UINavigationBarVisualProviderLegacyIOS__completeNavigationTransitionWithIncomingViews_outgoingViews_transitionAssistant_completion___block_invoke;
      v63[3] = &unk_1E70F3B98;
      v63[4] = self;
      [transitionCoordinator animateAlongsideTransition:v63 completion:0];
    }

    else
    {
      transitionCoordinator = [(UINavigationBar *)self->super._navigationBar topItem];
      topItem3 = [(UINavigationBar *)self->super._navigationBar topItem];
      _pendingTitle2 = [topItem3 _pendingTitle];
      [transitionCoordinator _setTitle:_pendingTitle2 animated:1 matchBarButtonItemAnimationDuration:1];
    }
  }
}

- (void)_setViewsAnimated:(BOOL)animated forTopNavigationItem:(id)item backNavigationItem:(id)navigationItem previousTopItem:(id)topItem
{
  animatedCopy = animated;
  v262 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  navigationItemCopy = navigationItem;
  topItemCopy = topItem;
  _customLeftViews = [itemCopy _customLeftViews];
  v187 = itemCopy;
  _customRightViews = [itemCopy _customRightViews];
  _barStyle = [(UINavigationBar *)self->super._navigationBar _barStyle];
  selfCopy = self;
  isMinibar = [(UINavigationBar *)self->super._navigationBar isMinibar];
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  obj = _customLeftViews;
  v14 = _customLeftViews;
  v15 = [v14 countByEnumeratingWithState:&v252 objects:v261 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v253;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v253 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v252 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 setControlSize:isMinibar];
          [v19 setBarStyle:_barStyle];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v19 setControlSize:isMinibar];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v252 objects:v261 count:16];
    }

    while (v16);
  }

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v188 = _customRightViews;
  v20 = _customRightViews;
  v21 = [v20 countByEnumeratingWithState:&v248 objects:v260 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v249;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v249 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v248 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25 setControlSize:isMinibar];
          [v25 setBarStyle:_barStyle];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v25 setControlSize:isMinibar];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v248 objects:v260 count:16];
    }

    while (v22);
  }

  v26 = *(MEMORY[0x1E695F058] + 16);
  rect1.origin = *MEMORY[0x1E695F058];
  rect1.size = v26;
  v27 = [v14 count];
  v28 = itemCopy;
  leftBarButtonItems = [itemCopy leftBarButtonItems];
  leftBarButtonItems2 = [topItemCopy leftBarButtonItems];
  v181 = _dontCrossfadeBarButtonItems(leftBarButtonItems, leftBarButtonItems2);

  rightBarButtonItems = [itemCopy rightBarButtonItems];
  rightBarButtonItems2 = [topItemCopy rightBarButtonItems];
  v33 = _dontCrossfadeBarButtonItems(rightBarButtonItems, rightBarButtonItems2);

  if ([itemCopy hidesBackButton])
  {
    leftItemsSupplementBackButton = 0;
    v35 = selfCopy;
  }

  else
  {
    v35 = selfCopy;
    if (v27)
    {
      leftItemsSupplementBackButton = [v187 leftItemsSupplementBackButton];
    }

    else
    {
      leftItemsSupplementBackButton = 1;
    }
  }

  v36 = [(_UINavigationBarVisualProviderLegacyIOS *)v35 _backButtonForBackItem:navigationItemCopy topItem:v187];
  [v36 _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
  v37 = [v20 count];
  v38 = v37;
  if (v27 || leftItemsSupplementBackButton)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);

    if (!v38)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v39 = 0;
    if (!v37)
    {
LABEL_31:
      v40 = 0;
      goto LABEL_34;
    }
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);

LABEL_34:
  p_isa = &selfCopy->super.super.isa;
  v194 = v40;
  [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _getTitleViewFrame:&rect1 leftViewFrames:v39 rightViewFrames:v40 forPreviousItem:navigationItemCopy item:v187];
  v42 = [v39 count];
  if (v42)
  {
    v43 = v42;
    v242[0] = MEMORY[0x1E69E9820];
    v242[1] = 3221225472;
    v242[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke;
    v242[3] = &unk_1E70F7DB8;
    v246 = leftItemsSupplementBackButton;
    v243 = v36;
    v244 = v39;
    v245 = v43;
    [v14 enumerateObjectsUsingBlock:v242];
  }

  v183 = leftItemsSupplementBackButton;
  v44 = [v194 count];
  if (v44)
  {
    v45 = v44;
    v239[0] = MEMORY[0x1E69E9820];
    v239[1] = 3221225472;
    v239[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_2;
    v239[3] = &unk_1E70F7DE0;
    v240 = v194;
    v241 = v45;
    [v20 enumerateObjectsUsingBlock:v239];
  }

  v184 = v36;
  v193 = v39;
  if (animatedCopy)
  {
    v179 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v180 = v46;
    if (v14 && selfCopy->_leftViews && [v14 isEqualToArray:?] && selfCopy->_leftViews)
    {
      v182 = 0;
      v178 = 0;
LABEL_95:
      if (v20 && p_isa[10] && [v20 isEqualToArray:?] && p_isa[10])
      {
        v177 = 0;
        goto LABEL_117;
      }

      if (p_isa[10])
      {
        [v179 addObjectsFromArray:?];
        if (v33)
        {
          lastObject = [p_isa[10] lastObject];
          [lastObject setAlpha:0.0];
        }

        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v79 = p_isa[10];
        v80 = [v79 countByEnumeratingWithState:&v228 objects:v258 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v229;
          do
          {
            for (k = 0; k != v81; ++k)
            {
              if (*v229 != v82)
              {
                objc_enumerationMutation(v79);
              }

              v84 = *(*(&v228 + 1) + 8 * k);
              if ([v84 isUserInteractionEnabled])
              {
                [v47 addObject:v84];
                [v84 setUserInteractionEnabled:0];
              }
            }

            v81 = [v79 countByEnumeratingWithState:&v228 objects:v258 count:16];
          }

          while (v81);
        }

        p_isa = &selfCopy->super.super.isa;
        v177 = selfCopy->_rightViews;
        v28 = v187;
        v46 = v180;
        if (v20)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v177 = 0;
        if (v20)
        {
LABEL_113:
          v225[0] = MEMORY[0x1E69E9820];
          v225[1] = 3221225472;
          v225[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_4;
          v225[3] = &unk_1E70F7E08;
          v227 = v33;
          v226 = v46;
          [v20 enumerateObjectsUsingBlock:v225];

          v85 = 1;
LABEL_116:
          v182 |= v85;
          objc_storeStrong(p_isa + 10, v188);
LABEL_117:
          _titleView = [v28 _titleView];
          [_titleView frame];
          v264.origin.x = v87;
          v264.origin.y = v88;
          v264.size.width = v89;
          v264.size.height = v90;
          v175 = CGRectEqualToRect(rect1, v264);

          _subviewIndexAboveBackground = [p_isa _subviewIndexAboveBackground];
          v91 = p_isa;
          v92 = [v193 count];
          v93 = [v91[9] count];
          v221 = 0u;
          v222 = 0u;
          v223 = 0u;
          v224 = 0u;
          v189 = v91[9];
          v94 = [v189 countByEnumeratingWithState:&v221 objects:v257 count:16];
          if (v94)
          {
            v95 = v94;
            LOBYTE(v96) = 0;
            v97 = v92 > v93;
            v98 = *v222;
LABEL_119:
            v99 = 0;
            while (1)
            {
              if (*v222 != v98)
              {
                objc_enumerationMutation(v189);
              }

              v100 = *(*(&v221 + 1) + 8 * v99);
              [(UIView *)selfCopy->_contentView insertSubview:v100 atIndex:_subviewIndexAboveBackground];
              if (v96)
              {
                v96 = 1;
              }

              else
              {
                [v100 frame];
                v102 = v101;
                v104 = v103;
                v105 = [v193 objectAtIndexedSubscript:v97];
                [v105 CGRectValue];
                v96 = v104 != v107 || v102 != v106;
              }

              if (++v97 >= v92)
              {
                break;
              }

              if (v95 == ++v99)
              {
                v95 = [v189 countByEnumeratingWithState:&v221 objects:v257 count:16];
                if (v95)
                {
                  goto LABEL_119;
                }

                break;
              }
            }
          }

          else
          {
            v96 = 0;
          }

          v176 = !v175;

          v108 = [v194 count];
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v190 = selfCopy->_rightViews;
          v109 = [(NSArray *)v190 countByEnumeratingWithState:&v217 objects:v256 count:16];
          if (v109)
          {
            v110 = v109;
            v111 = 0;
            v112 = *v218;
LABEL_135:
            v113 = 0;
            while (1)
            {
              if (*v218 != v112)
              {
                objc_enumerationMutation(v190);
              }

              v114 = *(*(&v217 + 1) + 8 * v113);
              [(UIView *)selfCopy->_contentView insertSubview:v114 atIndex:_subviewIndexAboveBackground];
              if (v96)
              {
                v96 = 1;
              }

              else
              {
                [v114 frame];
                v116 = v115;
                v118 = v117;
                v119 = [v194 objectAtIndexedSubscript:v111];
                [v119 CGRectValue];
                v96 = v118 != v121 || v116 != v120;
              }

              if (++v111 >= v108)
              {
                break;
              }

              if (v110 == ++v113)
              {
                v110 = [(NSArray *)v190 countByEnumeratingWithState:&v217 objects:v256 count:16];
                if (v110)
                {
                  goto LABEL_135;
                }

                break;
              }
            }
          }

          v122 = &selfCopy->super.super.isa;
          if (v96)
          {
            [v193 removeAllObjects];
            [v194 removeAllObjects];
            [(_UINavigationBarVisualProviderLegacyIOS *)selfCopy _getTitleViewFrame:&rect1 leftViewFrames:v193 rightViewFrames:v194 forPreviousItem:navigationItemCopy item:v187];
          }

          ii = v180;
          if (!(v182 | v176))
          {
            goto LABEL_179;
          }

          [v187 _titleViewWidthForAnimations];
          if (v124 == 0.0)
          {
            _titleView2 = [v187 _titleView];
            [_titleView2 setFrame:{rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height}];
          }

          else
          {
            v214[0] = MEMORY[0x1E69E9820];
            v214[1] = 3221225472;
            v214[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_5;
            v214[3] = &unk_1E70F3B20;
            v215 = v187;
            v216 = rect1;
            [UIView animateWithDuration:v214 animations:0.3833];
            _titleView2 = v215;
          }

          if (v184)
          {
            v126 = v183;
          }

          else
          {
            v126 = 0;
          }

          if (v126 == 1)
          {
            superview = [v184 superview];
            v128 = superview;
            if (superview == selfCopy->super._navigationBar)
            {
            }

            else
            {
              slideTransitionClippingViews = selfCopy->_slideTransitionClippingViews;
              superview2 = [v184 superview];
              LOBYTE(slideTransitionClippingViews) = [(NSMutableArray *)slideTransitionClippingViews containsObject:superview2];

              if ((slideTransitionClippingViews & 1) == 0)
              {
                [(UIView *)selfCopy->_contentView addSubview:v184];
              }
            }

            [v184 alpha];
            if (v131 < 0.5 || ([v184 frame], v133 = v132, v135 = v134, v137 = v136, v139 = v138, objc_msgSend(v193, "objectAtIndex:", 0), v140 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v140, "CGRectValue"), v265.origin.x = v141, v265.origin.y = v142, v265.size.width = v143, v265.size.height = v144, v263.origin.x = v133, v263.origin.y = v135, v263.size.width = v137, v263.size.height = v139, v145 = CGRectEqualToRect(v263, v265), v140, !v145))
            {
              [v180 addObject:v184];
              v146 = [v193 objectAtIndex:0];
              [v146 CGRectValue];
              [v184 setFrame:?];
            }
          }

          else
          {
            [v184 removeFromSuperview];
            [v184 setAlpha:0.0];
            if (!v184)
            {
LABEL_169:
              v149 = v126;
              if ([v193 count] > v126)
              {
                v150 = 0;
                v149 = v126;
                do
                {
                  v151 = [v122[9] objectAtIndex:v150];
                  v152 = [v193 objectAtIndex:v149];
                  [v152 CGRectValue];
                  [v151 setFrame:?];

                  v122 = &selfCopy->super.super.isa;
                  ++v149;
                  ++v150;
                }

                while (v149 < [v193 count]);
              }

              for (m = v149 - v126; m < [v122[9] count]; ++m)
              {
                v154 = [v122[9] objectAtIndex:m];
                [v154 removeFromSuperview];
                [v180 removeObject:v154];
              }

              for (n = 0; n < [v194 count]; ++n)
              {
                v156 = [v122[10] objectAtIndex:n];
                v157 = [v194 objectAtIndex:n];
                [v157 CGRectValue];
                [v156 setFrame:?];
              }

              for (ii = v180; n < [v122[10] count]; ++n)
              {
                v158 = [v122[10] objectAtIndex:n];
                [v158 removeFromSuperview];
                [v180 removeObject:v158];
              }

LABEL_179:
              transitionAssistant = [v122[2] transitionAssistant];
              [transitionAssistant duration];
              v161 = v160;

              if (v161 == 0.0)
              {
                +[UINavigationBar defaultAnimationDuration];
                v161 = v162;
              }

              transitionAssistant2 = [v122[2] transitionAssistant];
              [transitionAssistant2 incrementAnimationCount];

              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_6;
              aBlock[3] = &unk_1E70F35B8;
              v164 = v179;
              v212 = v164;
              v165 = ii;
              v213 = v165;
              v198 = _Block_copy(aBlock);
              v205[0] = MEMORY[0x1E69E9820];
              v205[1] = 3221225472;
              v205[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_7;
              v205[3] = &unk_1E70F7E30;
              v205[4] = v122;
              v200 = v165;
              v206 = v200;
              _titleView3 = v164;
              v207 = _titleView3;
              obja = v178;
              v208 = obja;
              v166 = v177;
              v209 = v166;
              v167 = v47;
              v210 = v167;
              v168 = _Block_copy(v205);
              transitionAssistant3 = [v122[2] transitionAssistant];
              shouldAnimateAlongside = [transitionAssistant3 shouldAnimateAlongside];

              if (shouldAnimateAlongside)
              {
                transitionAssistant4 = [v122[2] transitionAssistant];
                transitionCoordinator = [transitionAssistant4 transitionCoordinator];
                v203[0] = MEMORY[0x1E69E9820];
                v203[1] = 3221225472;
                v203[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_8;
                v203[3] = &unk_1E70F3770;
                v173 = v198;
                v204 = v198;
                v201[0] = MEMORY[0x1E69E9820];
                v201[1] = 3221225472;
                v201[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_9;
                v201[3] = &unk_1E70F3770;
                v202 = v168;
                [transitionCoordinator animateAlongsideTransition:v203 completion:v201];

                v74 = v187;
              }

              else
              {
                v174 = v122;
                v173 = v198;
                [UIView _animateWithDuration:393216 delay:v174 options:v198 factory:v168 animations:v161 completion:0.0];
                v74 = v187;
              }

              v76 = v184;
              v77 = v193;
              v69 = v194;
              goto LABEL_185;
            }
          }

          _suppressesBackIndicatorView = [v184 _suppressesBackIndicatorView];
          v148 = 0.0;
          if ((_suppressesBackIndicatorView & 1) == 0)
          {
            [v184 alpha];
          }

          [(UIView *)selfCopy->_backIndicatorView setAlpha:v148];
          goto LABEL_169;
        }
      }

      v85 = p_isa[10] != 0;
      goto LABEL_116;
    }

    if (selfCopy->_leftViews)
    {
      [v179 addObjectsFromArray:?];
      if (v181)
      {
        lastObject2 = [(NSArray *)selfCopy->_leftViews lastObject];
        [lastObject2 setAlpha:0.0];
      }

      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v53 = selfCopy->_leftViews;
      v54 = [(NSArray *)v53 countByEnumeratingWithState:&v235 objects:v259 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v236;
        do
        {
          for (jj = 0; jj != v55; ++jj)
          {
            if (*v236 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v235 + 1) + 8 * jj);
            if ([v58 isUserInteractionEnabled])
            {
              [v47 addObject:v58];
              [v58 setUserInteractionEnabled:0];
            }
          }

          v55 = [(NSArray *)v53 countByEnumeratingWithState:&v235 objects:v259 count:16];
        }

        while (v55);
      }

      p_isa = &selfCopy->super.super.isa;
      v178 = selfCopy->_leftViews;
      v28 = v187;
      v46 = v180;
      if (v14)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v178 = 0;
      if (v14)
      {
LABEL_72:
        v232[0] = MEMORY[0x1E69E9820];
        v232[1] = 3221225472;
        v232[2] = __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_3;
        v232[3] = &unk_1E70F7E08;
        v234 = v181;
        v233 = v46;
        [v14 enumerateObjectsUsingBlock:v232];

        v59 = 1;
LABEL_94:
        v182 = v59;
        objc_storeStrong(p_isa + 9, obj);
        goto LABEL_95;
      }
    }

    v59 = p_isa[9] != 0;
    goto LABEL_94;
  }

  if (!v14 || !selfCopy->_leftViews || ![v14 isEqualToArray:?] || !selfCopy->_leftViews)
  {
    [(NSArray *)selfCopy->_leftViews makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&selfCopy->_leftViews, obj);
  }

  if (!v20 || !selfCopy->_rightViews || ![v20 isEqualToArray:?] || !selfCopy->_rightViews)
  {
    [(NSArray *)selfCopy->_rightViews makeObjectsPerformSelector:sel_removeFromSuperview];
    objc_storeStrong(&selfCopy->_rightViews, v188);
  }

  if (leftItemsSupplementBackButton)
  {
    [v36 setPressed:0];
    [v36 setStyle:{-[UINavigationBar _barStyle](selfCopy->super._navigationBar, "_barStyle")}];
    transitionAssistant5 = [(_UINavigationBarItemStack *)selfCopy->super._stack transitionAssistant];
    shouldHideBackButtonDuringTransition = [transitionAssistant5 shouldHideBackButtonDuringTransition];
    v50 = 0.0;
    if ((shouldHideBackButtonDuringTransition & 1) == 0)
    {
      hidesBackButton = [v187 hidesBackButton];
      v50 = 1.0;
      if (hidesBackButton)
      {
        v50 = 0.0;
      }
    }

    [v36 setAlpha:v50];
  }

  else
  {
    [v36 removeFromSuperview];
    [v36 setAlpha:0.0];
  }

  v60 = 0.0;
  if (v36 && ([v36 _suppressesBackIndicatorView] & 1) == 0)
  {
    [v36 alpha];
    v60 = v61;
  }

  [(UIView *)selfCopy->_backIndicatorView setAlpha:v60];
  if (v36)
  {
    v62 = leftItemsSupplementBackButton;
  }

  else
  {
    v62 = 0;
  }

  v63 = v62;
  v196 = v62;
  if ([v39 count] > v62)
  {
    v64 = 0;
    v63 = v196;
    do
    {
      v65 = [v14 objectAtIndex:v64];
      v66 = [v39 objectAtIndex:v63];
      [v66 CGRectValue];
      [v65 setFrame:?];

      p_isa = &selfCopy->super.super.isa;
      [(UIView *)selfCopy->_contentView addSubview:v65];
      [v65 setAlpha:1.0];

      ++v63;
      ++v64;
    }

    while (v63 < [v39 count]);
  }

  for (kk = v63 - v196; kk < [p_isa[9] count]; ++kk)
  {
    v68 = [p_isa[9] objectAtIndex:kk];
    [v68 removeFromSuperview];
  }

  v69 = v194;
  for (mm = 0; mm < [v194 count]; ++mm)
  {
    v71 = [v20 objectAtIndex:mm];
    v72 = [v194 objectAtIndex:mm];
    [v72 CGRectValue];
    [v71 setFrame:?];

    [p_isa[17] addSubview:v71];
    [v71 setAlpha:1.0];
  }

  while (mm < [p_isa[10] count])
  {
    v73 = [p_isa[10] objectAtIndex:mm];
    [v73 removeFromSuperview];

    ++mm;
  }

  v74 = v187;
  _titleView3 = [v187 _titleView];
  [_titleView3 setFrame:{rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height}];
  v76 = v184;
  v77 = v39;
LABEL_185:
}

- (void)_completeTopItemTransitionWithIncomingViews:(id)views outgoingViews:(id)outgoingViews previousLeftViews:(id)leftViews previousRightViews:(id)rightViews enableUserInteraction:(id)interaction transitionAssistant:(id)assistant
{
  v59 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  outgoingViewsCopy = outgoingViews;
  leftViewsCopy = leftViews;
  leftViewsCopy2 = leftViews;
  obj = rightViews;
  rightViewsCopy = rightViews;
  interactionCopy = interaction;
  assistantCopy = assistant;
  cancelledTransition = [assistantCopy cancelledTransition];
  v42 = outgoingViewsCopy;
  v43 = viewsCopy;
  if (cancelledTransition)
  {
    v17 = viewsCopy;
  }

  else
  {
    v17 = outgoingViewsCopy;
  }

  v18 = v17;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v53;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        superview = [v23 superview];
        contentView = self->_contentView;

        if (superview == contentView)
        {
          [v23 removeFromSuperview];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v20);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = interactionCopy;
  v27 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v48 + 1) + 8 * j) setUserInteractionEnabled:{1, obj}];
      }

      v28 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v28);
  }

  if (cancelledTransition)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = v42;
    v32 = [v31 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v45;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v44 + 1) + 8 * k) setAlpha:{1.0, obj}];
        }

        v33 = [v31 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v33);
    }

    objc_storeStrong(&self->_rightViews, obj);
    objc_storeStrong(&self->_leftViews, leftViewsCopy);
  }

  [assistantCopy decrementAnimationCount];
}

- (void)_updateBackground
{
  if ([(UIView *)self->super._navigationBar _canDrawContent])
  {
    [(UIView *)self->_backgroundView removeFromSuperview];
    navigationBar = self->super._navigationBar;

    [(UIView *)navigationBar setNeedsDisplay];
    return;
  }

  [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:self->_customBackgroundView];
  [(UIView *)self->super._navigationBar insertSubview:self->_backgroundView atIndex:0];
  [(UIView *)self->super._navigationBar bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _barPosition = [(UINavigationBar *)self->super._navigationBar _barPosition];
  v13 = _barPosition == 3;
  if (self->_customBackgroundView)
  {
    [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
    [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout setTopInset:0.0];
    if (_barPosition == 3)
    {
      v14 = v11;
      goto LABEL_44;
    }

    v14 = v11;
    goto LABEL_47;
  }

  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

  traitCollection2 = [(UIView *)self->super._navigationBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

  isTranslucent = [(UINavigationBar *)self->super._navigationBar isTranslucent];
  _effectiveBarTintColor = [(UINavigationBar *)self->super._navigationBar _effectiveBarTintColor];
  v71 = 0;
  v70 = 0;
  barStyle = [(UINavigationBar *)self->super._navigationBar barStyle];
  v19 = self->super._navigationBar;
  if (barStyle != 4)
  {
    v69 = 0;
    [(UINavigationBar *)v19 _getBackgroundImage:&v69 shouldRespectOversizedBackgroundImage:&v71 actualBarMetrics:&v70 actualBarPosition:0];
    v21 = v69;
    _hidesShadow = [(UINavigationBar *)self->super._navigationBar _hidesShadow];
    if (!v21)
    {
      goto LABEL_17;
    }

    v66 = _effectiveBarTintColor;
    [v21 size];
    v14 = v22;
    [v21 capInsets];
    v25 = 0;
    if (_barPosition == 3 && v23 == 0.0 && v24 == 0.0)
    {
      v65 = _barPosition == 3;
      window = [(UIView *)self->super._navigationBar window];
      v27 = __UIStatusBarManagerForWindow(window);
      isStatusBarHidden = [v27 isStatusBarHidden];

      if (isStatusBarHidden)
      {
        v25 = 0;
      }

      else
      {
        _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
        [_currentVisualStyle barHeightForMetrics:v70];
        v25 = v14 == v36;
      }

      v13 = v65;
    }

    v68 = 0;
    [v21 _isInvisibleAndGetIsTranslucent:&v68];
    if (isTranslucent)
    {
      [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureImage:v21 forceTranslucent:(v68 & 1) == 0];
    }

    else
    {
      backgroundViewLayout = self->_backgroundViewLayout;
      if (v66)
      {
        [(_UIBarBackgroundLayoutLegacy *)backgroundViewLayout configureImage:v21 forceOpaque:v68 backgroundTintColor:?];
      }

      else
      {
        [(_UIBarBackgroundLayoutLegacy *)backgroundViewLayout configureImage:v21 forceOpaque:v68 barStyle:barStyle];
      }
    }

    if ((v71 | _hidesShadow))
    {
      if (!v71)
      {
        v14 = v11;
      }

      if (_hidesShadow)
      {
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
        goto LABEL_40;
      }
    }

    else
    {
      shadowImage = [(UINavigationBar *)self->super._navigationBar shadowImage];
      v14 = v11;
      if (shadowImage)
      {
        v33 = shadowImage;
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureShadowImage:shadowImage];
        v34 = 0.0;
        v14 = v11;
        if (v25)
        {
LABEL_41:
          window2 = [(UIView *)self->super._navigationBar window];
          v40 = __UIStatusBarManagerForWindow(window2);
          [v40 defaultStatusBarHeightInOrientation:1];
          v34 = v41;

          goto LABEL_42;
        }

        v14 = v11;
LABEL_42:
        _effectiveBarTintColor = v66;
        goto LABEL_43;
      }
    }

    [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureShadowForBarStyle:barStyle];
LABEL_40:
    v33 = 0;
    v34 = 0.0;
    if (v25)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  _hidesShadow = [(UINavigationBar *)v19 _hidesShadow];
LABEL_17:
  _screen = [(UIView *)self->super._navigationBar _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  v31 = self->_backgroundViewLayout;
  if (_userInterfaceIdiom == 3)
  {
    [(_UIBarBackgroundLayoutLegacy *)v31 configureAsTransparent];
    v13 = 0;
  }

  else
  {
    [(_UIBarBackgroundLayoutLegacy *)v31 configureEffectForStyle:barStyle backgroundTintColor:_effectiveBarTintColor forceOpaque:!isTranslucent];
  }

  v32 = self->_backgroundViewLayout;
  if (_hidesShadow)
  {
    [(_UIBarBackgroundLayoutLegacy *)v32 configureWithoutShadow];
  }

  else
  {
    [(_UIBarBackgroundLayoutLegacy *)v32 configureShadowForBarStyle:barStyle];
  }

  v21 = 0;
  v33 = 0;
  v34 = 0.0;
  v14 = v11;
LABEL_43:
  [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout setTopInset:v34];

  if (v13)
  {
LABEL_44:
    _delegateWantsNavigationBarHidden = [(UINavigationBar *)self->super._navigationBar _delegateWantsNavigationBarHidden];
    v43 = self->super._navigationBar;
    if (_delegateWantsNavigationBarHidden)
    {
      window3 = [(UIView *)v43 window];
      v45 = __UIStatusBarManagerForWindow(window3);
      isStatusBarHidden2 = [v45 isStatusBarHidden];

      if ((isStatusBarHidden2 & 1) == 0)
      {
        window4 = [(UIView *)self->super._navigationBar window];
        v48 = __UIStatusBarManagerForWindow(window4);
        [v48 defaultStatusBarHeightInOrientation:1];
        v50 = v49;

        v73.origin.x = v5;
        v73.origin.y = v7;
        v73.size.width = v9;
        v73.size.height = v11;
        v51 = CGRectGetMinY(v73) - v50;
        v74.origin.x = v5;
        v74.origin.y = v7;
        v74.size.width = v9;
        v74.size.height = v11;
        v14 = v50 + CGRectGetHeight(v74);
        v7 = v51;
      }
    }

    else
    {
      [(UIView *)v43 frame];
      v7 = -v53;
      v14 = v53 + v54;
    }

    goto LABEL_49;
  }

LABEL_47:
  [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout topInset];
  v7 = v7 - v52;
  v14 = v14 + v52;
LABEL_49:
  [(UIView *)self->_backgroundView frame];
  v76.origin.x = v55;
  v76.origin.y = v56;
  v76.size.width = v57;
  v76.size.height = v58;
  v75.origin.x = v5;
  v75.origin.y = v7;
  v75.size.width = v9;
  v75.size.height = v14;
  if (!CGRectEqualToRect(v75, v76))
  {
    [(UIView *)self->_backgroundView setFrame:v5, v7, v9, v14];
  }

  topItem = [(UINavigationBar *)self->super._navigationBar topItem];
  _backgroundHidden = [topItem _backgroundHidden];

  if (_backgroundHidden)
  {
    [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureAsTransparent];
    [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowAlpha:1.0];
  }

  [(_UINavigationBarVisualProviderLegacyIOS *)self updateBackgroundGroupName];
  [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
  [(UINavigationBar *)self->super._navigationBar _updatePaletteBackgroundIfNecessary];
  _accessibilityButtonBackgroundTintColor = [(UINavigationBar *)self->super._navigationBar _accessibilityButtonBackgroundTintColor];
  if (_accessibilityButtonBackgroundTintColor)
  {
    v62 = 0;
  }

  else
  {
    v63 = +[UIDevice currentDevice];
    v62 = [v63 _graphicsQuality] == 100 && _UIBarBlurAcceptsBlendModeOnBackground(self->super._navigationBar);
  }

  subviews = [(UIView *)self->_contentView subviews];
  _UINavigationButtonUpdateAccessibilityBackgrounds(subviews, v62, _accessibilityButtonBackgroundTintColor);
}

- (void)updateBackgroundGroupName
{
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection objectForTrait:v3];
  [(_UIBarBackground *)self->_backgroundView setGroupName:v4];
}

- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem
{
  v21[2] = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  itemCopy = item;
  backItemCopy = backItem;
  _titleView = [itemCopy _titleView];
  [contentsCopy setTitleView:_titleView];

  [contentsCopy setPromptView:self->_prompt];
  v12 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItemCopy topItem:itemCopy];

  if (v12)
  {
    if (self->_backIndicatorView)
    {
      v21[0] = self->_backIndicatorView;
      v21[1] = v12;
      v13 = MEMORY[0x1E695DEC8];
      v14 = v21;
      v15 = 2;
LABEL_10:
      v18 = [v13 arrayWithObjects:v14 count:v15];
      [contentsCopy setViewsRepresentingBackButton:v18];

      goto LABEL_11;
    }

    v20 = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v20;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if ([(_UINavigationBarVisualProviderLegacyIOS *)self _shouldShowBackButtonForNavigationItem:itemCopy])
  {
    backIndicatorView = self->_backIndicatorView;
    if (backIndicatorView)
    {
      [(UIView *)backIndicatorView alpha];
      if (v17 > 0.0)
      {
        v19 = self->_backIndicatorView;
        v13 = MEMORY[0x1E695DEC8];
        v14 = &v19;
        goto LABEL_9;
      }
    }
  }

LABEL_11:
}

- (void)_setUpContentFocusContainerGuide
{
  v20[4] = *MEMORY[0x1E69E9840];
  _focusSystem = [(UIView *)self->super._navigationBar _focusSystem];

  if (_focusSystem)
  {
    if (!self->_contentFocusContainerGuide)
    {
      v4 = objc_alloc_init(UIFocusContainerGuide);
      contentFocusContainerGuide = self->_contentFocusContainerGuide;
      self->_contentFocusContainerGuide = v4;

      [(UIView *)self->super._navigationBar addLayoutGuide:self->_contentFocusContainerGuide];
      [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UINavigationBarContentFocusContainerGuide"];
      v16 = MEMORY[0x1E69977A0];
      topAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
      topAnchor2 = [(UIView *)self->super._navigationBar topAnchor];
      v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v20[0] = v17;
      leadingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
      leadingAnchor2 = [(UIView *)self->super._navigationBar leadingAnchor];
      v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v20[1] = v8;
      trailingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
      trailingAnchor2 = [(UIView *)self->super._navigationBar trailingAnchor];
      v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v20[2] = v11;
      bottomAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
      bottomAnchor2 = [(UIView *)self->super._navigationBar bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v20[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
      [v16 activateConstraints:v15];
    }
  }
}

- (id)_shim_displayViewsIncludingHiddenBackButtonViews:(BOOL)views
{
  subviews = [(UIView *)self->_contentView subviews];
  v6 = [subviews mutableCopy];

  [v6 removeObject:self->_backgroundView];
  if (!views)
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    backButtonView = [backItem backButtonView];
    if (backButtonView)
    {
      if ([topItem hidesBackButton])
      {
        [v6 removeObject:backButtonView];
      }

      p_backIndicatorView = &self->_backIndicatorView;
      if (!*p_backIndicatorView || ([topItem hidesBackButton] & 1) == 0 && objc_msgSend(topItem, "_wantsBackButtonIndicator") && !objc_msgSend(backButtonView, "_suppressesBackIndicatorView"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      p_backIndicatorView = &self->_backIndicatorView;
      if (!*p_backIndicatorView)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    [v6 removeObject:*p_backIndicatorView];
    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (void)_shim_setCustomBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_customBackgroundView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customBackgroundView, view);
    [(_UINavigationBarVisualProviderLegacyIOS *)self _updateBackground];
    viewCopy = v6;
  }
}

- (id)_shim_compatibilityBackgroundView
{
  customBackgroundView = self->_customBackgroundView;
  if (!customBackgroundView)
  {
    customBackgroundView = self->_backgroundView;
  }

  return customBackgroundView;
}

- (void)_shim_setUseContentView:(BOOL)view
{
  if (view)
  {
    v4 = [_UINavigationBarLegacyContentView alloc];
    [(UIView *)self->super._navigationBar bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    p_layoutView = &self->_layoutView;
    layoutView = self->_layoutView;
    self->_layoutView = v5;

    [(_UINavigationBarLegacyContentView *)self->_layoutView setVisualProvider:self];
    [(UIView *)self->super._navigationBar addSubview:self->_layoutView];
  }

  else
  {
    [(UIView *)self->_layoutView removeFromSuperview];
    v8 = self->_layoutView;
    self->_layoutView = 0;

    p_layoutView = &self->super._navigationBar;
  }

  self->_contentView = *p_layoutView;
}

- (void)_shim_setDisableBlurTinting:(BOOL)tinting
{
  [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setDisableTinting:tinting];

  [(_UINavigationBarVisualProviderLegacyIOS *)self changeAppearance];
}

- (int64_t)_shim_backdropStyle
{
  if (![(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout hasBackgroundEffect])
  {
    return 0;
  }

  barStyle = [(UINavigationBar *)self->super._navigationBar barStyle];
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v6 = 2010;
  if ((barStyle - 1) < 2)
  {
    v6 = 2030;
  }

  v7 = 4004;
  if ((barStyle - 1) < 2)
  {
    v7 = 4009;
  }

  if (userInterfaceIdiom == 8 || userInterfaceIdiom == 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)_shim_userContentGuide
{
  v25[4] = *MEMORY[0x1E69E9840];
  userContentGuide = self->_userContentGuide;
  if (!userContentGuide)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    v5 = self->_userContentGuide;
    self->_userContentGuide = v4;

    [(UIView *)self->super._navigationBar addLayoutGuide:self->_userContentGuide];
    [(UILayoutGuide *)self->_userContentGuide _setLockedToOwningView:1];
    [(UILayoutGuide *)self->_userContentGuide setIdentifier:@"_UINavigationBarContentGuide"];
    topAnchor = [(UILayoutGuide *)self->_userContentGuide topAnchor];
    topAnchor2 = [(UIView *)self->super._navigationBar topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];

    [v8 setIdentifier:@"_UINavigationBarContentGuide.top"];
    bottomAnchor = [(UILayoutGuide *)self->_userContentGuide bottomAnchor];
    bottomAnchor2 = [(UIView *)self->super._navigationBar bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    [v11 setIdentifier:@"_UINavigationBarContentGuide.bottom"];
    leadingAnchor = [(UILayoutGuide *)self->_userContentGuide leadingAnchor];
    leadingAnchor2 = [(UIView *)self->super._navigationBar leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    userContentGuideLeading = self->_userContentGuideLeading;
    self->_userContentGuideLeading = v14;

    [(NSLayoutConstraint *)self->_userContentGuideLeading setIdentifier:@"_UINavigationBarContentGuide.leading"];
    trailingAnchor = [(UIView *)self->super._navigationBar trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_userContentGuide trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    userContentGuideTrailing = self->_userContentGuideTrailing;
    self->_userContentGuideTrailing = v18;

    [(NSLayoutConstraint *)self->_userContentGuideTrailing setIdentifier:@"_UINavigationBarContentGuide.trailing"];
    v25[0] = v8;
    v25[1] = v11;
    v20 = self->_userContentGuideTrailing;
    v25[2] = self->_userContentGuideLeading;
    v25[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [(UILayoutGuide *)self->_userContentGuide _setSystemConstraints:v21];

    v22 = MEMORY[0x1E69977A0];
    _systemConstraints = [(UILayoutGuide *)self->_userContentGuide _systemConstraints];
    [v22 activateConstraints:_systemConstraints];

    userContentGuide = self->_userContentGuide;
  }

  return userContentGuide;
}

- (void)_shim_updateUserContentGuideForTopItem:(id)item backItem:(id)backItem
{
  itemCopy = item;
  if (self->_userContentGuide)
  {
    v7 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:itemCopy];

    if (v7)
    {
      _wantsBackButtonIndicator = 1;
    }

    else
    {
      _wantsBackButtonIndicator = [itemCopy _wantsBackButtonIndicator];
    }

    v13 = 0.0;
    _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
    [(_UINavigationBarVisualProviderLegacyIOS *)self _getLeftMargin:&v13 rightMargin:&v12 forNavigationItem:itemCopy showingBackButton:_wantsBackButtonIndicator visualStyle:_currentVisualStyle];
    [(UIView *)self->super._navigationBar bounds];
    v10 = v13;
    if (v11 < v13 + v12)
    {
      v12 = 0.0;
      v13 = 0.0;
      v10 = 0.0;
    }

    [(NSLayoutConstraint *)self->_userContentGuideLeading setConstant:v10, *&v12, *&v13];
    [(NSLayoutConstraint *)self->_userContentGuideTrailing setConstant:v12];
  }
}

- (void)_shim_setPromptText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  prompt = [(_UINavBarPrompt *)self->_prompt prompt];
  if (prompt == textCopy)
  {
    goto LABEL_26;
  }

  if (textCopy)
  {
    v8 = self->_prompt;
    v9 = [[_UINavBarPrompt alloc] initWithNavBar:self->super._navigationBar];
    prompt = self->_prompt;
    self->_prompt = v9;

    [(_UINavBarPrompt *)self->_prompt setPrompt:textCopy];
  }

  else
  {
    if ([0 isEqualToString:prompt])
    {
      goto LABEL_26;
    }

    v8 = self->_prompt;
    v11 = self->_prompt;
    self->_prompt = 0;
  }

  _currentVisualStyle = [(UINavigationBar *)self->super._navigationBar _currentVisualStyle];
  v13 = self->_prompt;
  if (v13)
  {
    [(UIView *)self->_contentView bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [_currentVisualStyle promptInset];
    v23 = v22;
    v34.origin.x = v15;
    v34.origin.y = v17;
    v34.size.width = v19;
    v34.size.height = v21;
    v35 = CGRectInset(v34, v23, 0.0);
    [(UIView *)v13 setFrame:v35.origin.x, v35.origin.y, v35.size.width, v35.size.height];
    [(UIView *)self->_contentView addSubview:self->_prompt];
  }

  metrics = [_currentVisualStyle metrics];
  if (metrics <= 100)
  {
    if (metrics)
    {
      if (metrics != 1 || !self->_prompt)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (!self->_prompt)
    {
      goto LABEL_22;
    }

    v25 = 101;
LABEL_21:
    [_currentVisualStyle setMetrics:v25];
    goto LABEL_22;
  }

  if (metrics == 101)
  {
    if (self->_prompt)
    {
      goto LABEL_22;
    }

    v25 = 0;
    goto LABEL_21;
  }

  if (metrics == 102 && !self->_prompt)
  {
LABEL_16:
    v25 = 102;
    goto LABEL_21;
  }

LABEL_22:
  [(UIView *)self->_prompt setAlpha:0.0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72___UINavigationBarVisualProviderLegacyIOS__shim_setPromptText_animated___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v26 = v8;
  v33 = v26;
  v27 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __72___UINavigationBarVisualProviderLegacyIOS__shim_setPromptText_animated___block_invoke_2;
  v30[3] = &unk_1E70F5AC0;
  v31 = v26;
  v28 = v26;
  v29 = _Block_copy(v30);
  if (animatedCopy)
  {
    +[UINavigationBar defaultAnimationDuration];
    [UIView animateWithDuration:v27 animations:v29 completion:?];
  }

  else
  {
    v27[2](v27);
    v29[2](v29, 1);
  }

LABEL_26:
}

- (void)_shim_pressBackIndicator:(BOOL)indicator initialPress:(BOOL)press
{
  v10[1] = *MEMORY[0x1E69E9840];
  backIndicatorView = self->_backIndicatorView;
  if (backIndicatorView)
  {
    pressCopy = press;
    indicatorCopy = indicator;
    [(UIView *)backIndicatorView alpha];
    if (v8 > 0.0)
    {
      v10[0] = self->_backIndicatorView;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [UIButton _setVisuallyHighlighted:indicatorCopy forViews:v9 initialPress:pressCopy];
    }
  }
}

- (id)_shim_customHitTest:(CGPoint)test forView:(id)view
{
  x = test.x;
  viewCopy = view;
  v7 = viewCopy;
  if (self->_contentView != viewCopy && self->super._navigationBar != viewCopy)
  {
    v8 = viewCopy;
    goto LABEL_89;
  }

  v64 = viewCopy;
  window = [(UIView *)viewCopy window];
  windowScene = [window windowScene];
  if (([windowScene _interfaceOrientation] - 3) >= 2)
  {
    v11 = 100.0;
  }

  else
  {
    v11 = 75.0;
  }

  [(UIView *)self->super._navigationBar bounds];
  v12 = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  MinX = CGRectGetMinX(v72);
  v73.origin.x = v12;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  MaxX = CGRectGetMaxX(v73);
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _customLeftViews = [topItem _customLeftViews];
  _customRightViews = [topItem _customRightViews];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  v22 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:topItem];

  v63 = topItem;
  if (!v22 || ([v22 isHidden] & 1) != 0 || (objc_msgSend(v22, "alpha"), v23 <= 0.05))
  {
    v25 = 0;
  }

  else
  {
    superview = [v22 superview];
    v25 = superview == self->_contentView;
  }

  v26 = [_customLeftViews count];
  v27 = [_customRightViews count];
  if (v25)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = UIViewIgnoresTouchEvents(self->_titleView);
  titleView = 0;
  if ((v30 & 1) == 0)
  {
    titleView = self->_titleView;
  }

  v61 = 136;
  v62 = v22;
  selfCopy = self;
  v67 = titleView;
  v32 = v27 - 1;
  if (v32 < 0)
  {
    superview2 = 0;
    v33 = -1;
  }

  else
  {
    v33 = -1;
    do
    {
      v34 = [_customRightViews objectAtIndex:{v32, v61}];
      superview2 = [v34 superview];
      if (superview2)
      {
        v36 = UIViewIgnoresTouchEvents(v34);

        if (v36)
        {
          superview2 = 0;
        }

        else
        {
          superview2 = v34;
          v33 = v32;
        }
      }

      v37 = v32-- < 1;
    }

    while (!v37 && !superview2);
  }

  v69 = v67;
  if (!v67)
  {
    v69 = superview2;
    if (!v26)
    {
      goto LABEL_58;
    }

LABEL_31:
    v38 = 0;
    v39 = v26 != 1 || v25;
    v68 = v39;
    v66 = superview2;
    while (1)
    {
      v8 = [_customLeftViews objectAtIndex:{v38, v61}];
      superview3 = [(UIView *)v8 superview];
      if (superview3 && (v41 = superview3, v42 = UIViewIgnoresTouchEvents(v8), v41, (v42 & 1) == 0))
      {
        v70 = v38 + 1;
        if (v38 + 1 >= v26)
        {
          goto LABEL_48;
        }

        v43 = v38 + 2;
        do
        {
          v44 = [_customLeftViews objectAtIndex:v43 - 1];
          p_super = [v44 superview];
          if (p_super)
          {
            v46 = UIViewIgnoresTouchEvents(v44);

            if (v46)
            {
              p_super = 0;
            }

            else
            {
              p_super = v44;
            }
          }

          if (v43 >= v26)
          {
            break;
          }

          ++v43;
        }

        while (!p_super);
        superview2 = v66;
        if (p_super)
        {
          v47 = 0;
          v48 = p_super;
        }

        else
        {
LABEL_48:
          p_super = 0;
          v47 = 1;
          v48 = v69;
        }

        v49 = v48;
        v50 = _hitAreaRightEdge(v8, v49, MaxX);
        v51 = fmax(v50, v11);
        if (!v68)
        {
          v50 = v51;
        }

        if (x <= v50 && x >= _hitAreaLeftEdge(v29, v8, MinX))
        {

LABEL_86:
LABEL_87:
          v7 = v64;
          goto LABEL_88;
        }

        v52 = v8;

        if (v47)
        {

          v29 = v52;
          goto LABEL_58;
        }

        v38 = v70;
        v29 = v52;
      }

      else
      {

        ++v38;
      }

      if (v38 == v26)
      {
        goto LABEL_58;
      }
    }
  }

  if (v26)
  {
    goto LABEL_31;
  }

LABEL_58:
  if (v67)
  {
    if (x >= _hitAreaLeftEdge(v29, selfCopy->_titleView, MinX) && x <= _hitAreaRightEdge(selfCopy->_titleView, superview2, MaxX))
    {
      v8 = selfCopy->_titleView;
      goto LABEL_87;
    }

    v53 = selfCopy->_titleView;

    v29 = v53;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v8 = [_customRightViews objectAtIndex:{v33, v61}];
      superview4 = [(UIView *)v8 superview];
      if (superview4 && (v55 = superview4, v56 = UIViewIgnoresTouchEvents(v8), v55, (v56 & 1) == 0))
      {
        v57 = v33;
        if (v33)
        {
          do
          {
            v58 = [_customRightViews objectAtIndex:v57 - 1];
            if (UIViewIgnoresTouchEvents(v58))
            {
              p_super = 0;
            }

            else
            {
              p_super = v58;
            }

            if (v57 < 2)
            {
              break;
            }

            --v57;
          }

          while (!p_super);
        }

        else
        {
          p_super = 0;
        }

        if (x >= _hitAreaLeftEdge(v29, v8, MinX) && x <= _hitAreaRightEdge(v8, p_super, MaxX))
        {
          goto LABEL_86;
        }
      }

      else
      {
        p_super = &v8->super;
        v8 = v29;
      }

      v29 = v8;
      v37 = v33-- < 1;
      if (v37)
      {
        goto LABEL_81;
      }
    }
  }

  v8 = v29;
LABEL_81:
  v7 = v64;
  navigationBar = v64;
  if (*(&selfCopy->super.super.isa + v61) == v64)
  {
    navigationBar = selfCopy->super._navigationBar;
  }

  v29 = v8;
  v8 = navigationBar;
LABEL_88:

LABEL_89:

  return v8;
}

- (id)_navigationItemAtPoint:(CGPoint)point
{
  x = point.x;
  v5 = [(_UINavigationBarItemStack *)self->super._stack backItem:point.x];
  if (!v5)
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    goto LABEL_14;
  }

  [(UIView *)self->super._navigationBar _contentMargin];
  v7 = v6;
  topItem2 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v9 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:v5 topItem:topItem2];
  backButtonView = [v5 backButtonView];
  [(UIView *)self->super._navigationBar bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(&self->super._navigationBar->super._viewFlags + 2);
  v20 = _UINavigationBarTouchExtremaForBackButtonView(backButtonView, v7);
  if ((v19 & 0x400000) != 0)
  {
    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v16;
    v27.size.height = v18;
    v20 = CGRectGetMaxX(v27) - v20;
  }

  if ((v19 & 0x400000) != 0)
  {
    v21 = x >= v20;
  }

  else
  {
    v21 = x <= v20;
  }

  if (v21)
  {
    [v9 frame];
    IsEmpty = CGRectIsEmpty(v28);

    v23 = v5;
    if (!IsEmpty)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v23 = topItem2;
LABEL_13:
  topItem = v23;

LABEL_14:

  return topItem;
}

- (id)backButtonViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v8 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:backItem topItem:topItem];
  if (v8)
  {
    [(UIView *)self->super._navigationBar _contentMargin];
    v10 = v9;
    v11 = _UINavigationBarTouchExtremaForBackButtonView(v8, v9);
    v13 = v12;
    [(UIView *)self->super._navigationBar bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = *(&self->super._navigationBar->super._viewFlags + 2);
    v23 = _UINavigationBarTouchExtremaForBackButtonView(v8, v10);
    if ((v22 & 0x400000) != 0)
    {
      v27.origin.x = v15;
      v27.origin.y = v17;
      v27.size.width = v19;
      v27.size.height = v21;
      v23 = CGRectGetMaxX(v27) - v23;
    }

    v24 = x < v23;
    if ((v22 & 0x400000) == 0)
    {
      v24 = x > v23;
    }

    if (v24 || y > v13)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)_handleMouseDownAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(_UINavigationBarItemStack *)self->super._stack state]|| [(UINavigationBar *)self->super._navigationBar _allowInteractionDuringTransition])
  {
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    if (backItem)
    {
      v6 = [(_UINavigationBarVisualProviderLegacyIOS *)self _navigationItemAtPoint:x, y];
      v7 = v6 != backItem;
      if (v6 == backItem)
      {
        backButtonView = [v6 backButtonView];
        [backButtonView alpha];
        if (v9 > 0.5 && ([backButtonView isHidden] & 1) == 0)
        {
          [backButtonView setPressed:1 initialPress:1];
          [(_UINavigationBarVisualProviderLegacyIOS *)self _shim_pressBackIndicator:1 initialPress:1];
        }
      }
    }

    else
    {
      v7 = 1;
    }

    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    _buttonForBackButtonIndicator = [topItem _buttonForBackButtonIndicator];
    v12 = _buttonForBackButtonIndicator;
    if (v7)
    {
      if (_buttonForBackButtonIndicator)
      {
        [_buttonForBackButtonIndicator alpha];
        if (v13 > 0.5 && ([v12 isHidden] & 1) == 0)
        {
          backIndicatorView = self->_backIndicatorView;
          [(UIView *)self->super._navigationBar _contentMargin];
          v16 = v15;
          [(UIView *)self->super._navigationBar bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = *(&self->super._navigationBar->super._viewFlags + 2);
          v26 = _UINavigationBarTouchExtremaForBackButtonView(backIndicatorView, v16);
          if ((v25 & 0x400000) != 0)
          {
            v30.origin.x = v18;
            v30.origin.y = v20;
            v30.size.width = v22;
            v30.size.height = v24;
            v26 = CGRectGetMaxX(v30) - v26;
          }

          v27 = x >= v26;
          if ((v25 & 0x400000) == 0)
          {
            v27 = x <= v26;
          }

          if (v27)
          {
            [v12 setHighlighted:1];
          }
        }
      }
    }
  }
}

- (void)_handleMouseUpAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((![(_UINavigationBarItemStack *)self->super._stack state]|| [(UINavigationBar *)self->super._navigationBar _allowInteractionDuringTransition]) && (UIViewIgnoresTouchEvents(self->super._navigationBar) & 1) == 0)
  {
    v6 = [(_UINavigationBarVisualProviderLegacyIOS *)self _navigationItemAtPoint:x, y];
    if (v6)
    {
      v20 = v6;
      backButtonView = [v6 backButtonView];
      if ([backButtonView pressed])
      {
        [backButtonView setPressed:0 initialPress:0];
      }

      else
      {
        backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
        if (backItem != v20)
        {
          backButtonView2 = [backItem backButtonView];
          [backButtonView2 setPressed:0 initialPress:0];
        }
      }

      if ([(_UINavigationBarVisualProviderLegacyIOS *)self _shouldPopForTouchAtPoint:x, y])
      {
        [(_UINavigationBarVisualProviderLegacyIOS *)self _popForTouchAtPoint:x, y];
      }

      else
      {
        topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
        _buttonForBackButtonIndicator = [topItem _buttonForBackButtonIndicator];

        if (_buttonForBackButtonIndicator && ([_buttonForBackButtonIndicator alpha], v12 > 0.5) && (objc_msgSend(_buttonForBackButtonIndicator, "isHidden") & 1) == 0)
        {
          backIndicatorView = self->_backIndicatorView;
          [(UIView *)self->super._navigationBar _contentMargin];
          v15 = v14;
          [(UIView *)self->super._navigationBar bounds];
          if (_UIPointInsideNavigationBarTouchExtremaForBackButton(backIndicatorView, (*(&self->super._navigationBar->super._viewFlags + 2) >> 22) & 1, v15, x, y, v16, v17, v18, v19))
          {
            [_buttonForBackButtonIndicator setHighlighted:0];
            [_buttonForBackButtonIndicator sendActionsForControlEvents:64];
          }
        }

        else
        {
          [(_UINavigationBarVisualProviderLegacyIOS *)self _shim_pressBackIndicator:0 initialPress:0];
        }
      }

      v6 = v20;
    }
  }
}

- (BOOL)_shouldPopForTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  state = [(_UINavigationBarItemStack *)self->super._stack state];
  if (state && ![(UINavigationBar *)self->super._navigationBar _allowInteractionDuringTransition])
  {
    return 0;
  }

  v7 = [(_UINavigationBarVisualProviderLegacyIOS *)self _navigationItemAtPoint:x, y];
  state2 = [(_UINavigationBarItemStack *)self->super._stack state];
  stack = self->super._stack;
  if (state2 == 2)
  {
    previousBackItem = [(_UINavigationBarItemStack *)stack previousBackItem];
    [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
  }

  else
  {
    previousBackItem = [(_UINavigationBarItemStack *)stack backItem];
    [(_UINavigationBarItemStack *)self->super._stack topItem];
  }
  v11 = ;
  v12 = [(_UINavigationBarVisualProviderLegacyIOS *)self _backButtonForBackItem:previousBackItem topItem:v11];

  [v12 alpha];
  if (v13 <= 0.05 || ([v12 isHidden] & 1) != 0)
  {
    goto LABEL_12;
  }

  superview = [v12 superview];
  v15 = superview;
  if (state != 2)
  {
    contentView = self->_contentView;

    if (v15 == contentView)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14Superview = [(UIView *)superview superview];
  v17 = self->_contentView;

  if (v14Superview != v17)
  {
LABEL_12:

    v12 = 0;
  }

LABEL_13:
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  leftItemsSupplementBackButton = [topItem leftItemsSupplementBackButton];
  if ((leftItemsSupplementBackButton & 1) == 0)
  {
    _customLeftViews = [topItem _customLeftViews];
    firstObject = [_customLeftViews firstObject];

    [firstObject alpha];
    if (v23 > 0.05 && ([firstObject isHidden] & 1) == 0)
    {
      superview2 = [firstObject superview];
      v25 = self->_contentView;

      if (superview2 == v25)
      {
        goto LABEL_19;
      }
    }
  }

  firstObject = 0;
LABEL_19:
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];

  if (firstObject)
  {
    v27 = leftItemsSupplementBackButton;
  }

  else
  {
    v27 = 1;
  }

  if (v12 && v7 == backItem && v27)
  {
    v28 = [(_UINavigationBarVisualProviderLegacyIOS *)self backButtonViewAtPoint:x, y];

    if (v28)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)_popForTouchAtPoint:(CGPoint)point
{
  navigationBar = self->super._navigationBar;
  v5 = [(_UINavigationBarVisualProviderLegacyIOS *)self _navigationItemAtPoint:point.x, point.y];
  backBarButtonItem = [v5 backBarButtonItem];
  [(UINavigationBar *)navigationBar _sendNavigationPopForBackBarButtonItem:backBarButtonItem];
}

- (void)_shim_touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  v5 = self->super._navigationBar;
  if ([eventCopy type])
  {

    v6 = 0;
  }

  else
  {
    v6 = [eventCopy _firstTouchForView:v5];

    if (v6)
    {
      [v6 locationInView:self->super._navigationBar];
      [(_UINavigationBarVisualProviderLegacyIOS *)self _handleMouseDownAtPoint:?];
    }
  }
}

- (void)_shim_touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  v5 = self->super._navigationBar;
  if ([eventCopy type])
  {
    v6 = 0;
LABEL_3:

    goto LABEL_4;
  }

  v6 = [eventCopy _firstTouchForView:v5];

  if (v6 && ![(_UINavigationBarItemStack *)self->super._stack state]&& (UIViewIgnoresTouchEvents(self->super._navigationBar) & 1) == 0)
  {
    [v6 locationInView:self->super._navigationBar];
    v7 = [(_UINavigationBarVisualProviderLegacyIOS *)self backButtonViewAtPoint:?];
    v5 = v7;
    if (v7)
    {
      [(UINavigationBar *)v7 setPressed:1 initialPress:0];
    }

    else
    {
      [v6 previousLocationInView:self->super._navigationBar];
      v8 = [(_UINavigationBarVisualProviderLegacyIOS *)self backButtonViewAtPoint:?];
      [v8 setPressed:0 initialPress:0];
    }

    [(_UINavigationBarVisualProviderLegacyIOS *)self _shim_pressBackIndicator:v5 != 0 initialPress:0];
    goto LABEL_3;
  }

LABEL_4:
}

- (void)_shim_touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  v5 = self->super._navigationBar;
  if ([eventCopy type])
  {

    v6 = 0;
  }

  else
  {
    v6 = [eventCopy _firstTouchForView:v5];

    if (v6)
    {
      [v6 locationInView:self->super._navigationBar];
      [(_UINavigationBarVisualProviderLegacyIOS *)self _handleMouseUpAtPoint:?];
    }
  }
}

- (void)_shim_touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  v5 = self->super._navigationBar;
  if ([eventCopy type])
  {
    v6 = 0;
LABEL_3:

    goto LABEL_4;
  }

  v6 = [eventCopy _firstTouchForView:v5];

  if (v6)
  {
    [v6 locationInView:self->super._navigationBar];
    v7 = [(_UINavigationBarVisualProviderLegacyIOS *)self _navigationItemAtPoint:?];
    v5 = v7;
    if (v7)
    {
      backButtonView = [(UINavigationBar *)v7 backButtonView];
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      if (([backButtonView pressed] & 1) == 0 && backItem && backItem != v5)
      {
        backButtonView2 = [(UINavigationBar *)backItem backButtonView];

        backButtonView = backButtonView2;
      }

      [backButtonView setPressed:0 initialPress:0];
      [(_UINavigationBarVisualProviderLegacyIOS *)self _shim_pressBackIndicator:0 initialPress:0];
    }

    goto LABEL_3;
  }

LABEL_4:
}

- (void)_shim_popForCarplayPressAtFakePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(_UINavigationBarVisualProviderLegacyIOS *)self _shouldPopForTouchAtPoint:?])
  {

    [(_UINavigationBarVisualProviderLegacyIOS *)self _popForTouchAtPoint:x, y];
  }
}

- (void)_shim_updateBackgroundViewIgnoringFlag
{
  _canDrawContent = [(UIView *)self->super._navigationBar _canDrawContent];
  navigationBar = self->super._navigationBar;
  if (_canDrawContent)
  {

    [(UIView *)navigationBar setNeedsDisplay];
  }

  else
  {
    [(UINavigationBar *)navigationBar setNeedsLayout];
    v5 = self->super._navigationBar;

    [(UIView *)v5 layoutIfNeeded];
  }
}

@end
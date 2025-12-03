@interface UIContentUnavailableView
- (BOOL)_prefersEqualButtonAndSecondaryButtonWidths;
- (BOOL)shouldReparentScrollViewPanGestureRecognizer;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSDirectionalEdgeInsets)_alignmentInsetsForView:(id)view;
- (NSDirectionalEdgeInsets)_scrollViewInsets;
- (UIActivityIndicatorView)_activityIndicator;
- (UIButton)_button;
- (UIButton)_secondaryButton;
- (UIContentUnavailableConfiguration)configuration;
- (UIContentUnavailableView)initWithCoder:(NSCoder *)coder;
- (UIContentUnavailableView)initWithConfiguration:(UIContentUnavailableConfiguration *)configuration;
- (UIContentUnavailableViewLayoutInfo)_computeLayoutInfoRestrictedToSize:(SEL)size;
- (UIImageView)_imageView;
- (UILabel)_secondaryTextLabel;
- (UILabel)_textLabel;
- (double)_keyboardInset;
- (double)_preferredMaxLayoutWidth;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_applyBackgroundConfiguration:(id)configuration;
- (void)_applyConfiguration:(id)configuration;
- (void)_checkWhetherEmbeddedInWrapperView;
- (void)_computeButtonLayoutInfo:(UIContentUnavailableViewLayoutInfo *)info;
- (void)_computeLayoutInfoForView:(id)view info:(UIContentUnavailableViewElementLayoutInfo *)info layoutInfo:(UIContentUnavailableViewLayoutInfo *)layoutInfo;
- (void)_handleKeyboardNotification:(id)notification aboutToHide:(BOOL)hide;
- (void)_keyboardAboutToHide:(id)hide;
- (void)_keyboardAboutToShow:(id)show;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)_reconfigureKeyboardLayoutAdjustment;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)setConfiguration:(UIContentUnavailableConfiguration *)configuration;
- (void)setScrollEnabled:(BOOL)scrollEnabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIContentUnavailableView

- (void)_reconfigureKeyboardLayoutAdjustment
{
  contentViewFlags = self->_contentViewFlags;
  _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
  _isInViewControllerThatHandlesKeyboardAvoidance = [_viewControllerForAncestor _isInViewControllerThatHandlesKeyboardAvoidance];

  v6 = ((_UIApplicationIsMessagesExtension() | _isInViewControllerThatHandlesKeyboardAvoidance) ^ 1) & *&contentViewFlags;
  v7 = self->_contentViewFlags;
  if (((v6 ^ ((v7 & 4) == 0)) & 1) == 0)
  {
    if (v6)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&self->_contentViewFlags = v8 | v7 & 0xFFFB;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if (v6)
    {
      [defaultCenter addObserver:self selector:sel__keyboardAboutToShow_ name:@"UIKeyboardPrivateWillShowNotification" object:0];
      [defaultCenter addObserver:self selector:sel__keyboardAboutToHide_ name:@"UIKeyboardPrivateWillHideNotification" object:0];
      [defaultCenter addObserver:self selector:sel__keyboardAboutToChangeFrame_ name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillShowNotification" object:0];
      [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillHideNotification" object:0];
      [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
    }
  }
}

- (NSDirectionalEdgeInsets)_scrollViewInsets
{
  _scrollView = [(UIContentUnavailableView *)self _scrollView];
  if (_scrollView)
  {
    traitCollection = [(UIView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    [_scrollView adjustedContentInset];
    v9 = v8;
    v11 = v10;
    if (layoutDirection == 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v6;
    }

    if (layoutDirection == 1)
    {
      v13 = v6;
    }

    else
    {
      v13 = v7;
    }
  }

  else
  {
    v13 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v9 = 0.0;
  }

  v14 = v9;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  result.trailing = v17;
  result.bottom = v16;
  result.leading = v15;
  result.top = v14;
  return result;
}

- (UILabel)_textLabel
{
  if ([(UIView *)self->_textLabel isHidden])
  {
    textLabel = 0;
  }

  else
  {
    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (UIButton)_button
{
  if ([(UIView *)self->_button isHidden])
  {
    button = 0;
  }

  else
  {
    button = self->_button;
  }

  return button;
}

- (UIButton)_secondaryButton
{
  if ([(UIView *)self->_secondaryButton isHidden])
  {
    secondaryButton = 0;
  }

  else
  {
    secondaryButton = self->_secondaryButton;
  }

  return secondaryButton;
}

- (UILabel)_secondaryTextLabel
{
  if ([(UIView *)self->_secondaryTextLabel isHidden])
  {
    secondaryTextLabel = 0;
  }

  else
  {
    secondaryTextLabel = self->_secondaryTextLabel;
  }

  return secondaryTextLabel;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIContentUnavailableView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIContentUnavailableView *)self _checkWhetherEmbeddedInWrapperView];
  [(UIContentUnavailableView *)self _reconfigureKeyboardLayoutAdjustment];
}

uint64_t __42__UIContentUnavailableView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, double a5, double a6)
{
  v9 = *(a3 + 16);
  v10 = 32;
  if (*(a1 + 56))
  {
    v10 = 48;
  }

  v11 = UIRectIntegralWithScale(a5 + *(a3 + v10) + *(*(*(a1 + 32) + 8) + 32), a6 + *(a3 + 24) + *(*(*(a1 + 32) + 8) + 40), *a3, *(a3 + 8), *(a1 + 48));
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (a4 && v9 && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__UIContentUnavailableView_layoutSubviews__block_invoke_2;
    v19[3] = &unk_1E70F3B20;
    v19[4] = a2;
    *&v19[5] = v11;
    *&v19[6] = v13;
    *&v19[7] = v15;
    *&v19[8] = v17;
    [UIView performWithoutAnimation:v19];
  }

  else
  {
    [a2 setFrame:{v11, v13, v15, v17}];
    if (!v9)
    {
      return [a2 setAlpha:0.0];
    }
  }

  [a2 setAlpha:1.0];
  return [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
}

uint64_t __42__UIContentUnavailableView_layoutSubviews__block_invoke_3(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = *(a4 + 24);
  v8 = *(a4 + 40);
  v9 = *a4 + *(a4 + 32) + *(a4 + 48);
  a2.n128_u64[0] = *(a1 + 56);
  if (*(a1 + 424))
  {
    if (*(a1 + 544) == 1)
    {
      a2.n128_f64[0] = CGRectGetWidth(*(a1 + 512)) - v9 - *(a1 + 72);
    }
  }

  else
  {
    a2.n128_f64[0] = a2.n128_f64[0] + (*(a1 + 496) - v9) * 0.5;
  }

  result = (*(*(a1 + 32) + 16))(a2, 0.0);
  if (*(a4 + 16) == 1)
  {
    *(*(*(a1 + 40) + 8) + 40) = v6 + v7 + v8 + *(*(*(a1 + 40) + 8) + 40);
  }

  return result;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = UIContentUnavailableView;
  [(UIView *)&v3 didMoveToSuperview];
  [(UIContentUnavailableView *)self _checkWhetherEmbeddedInWrapperView];
  [(UIContentUnavailableView *)self _reconfigureKeyboardLayoutAdjustment];
}

- (void)_checkWhetherEmbeddedInWrapperView
{
  superview = [(UIView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  contentViewFlags = self->_contentViewFlags;
  if ((isKindOfClass & 1) != (contentViewFlags & 1))
  {
    *&self->_contentViewFlags = contentViewFlags & 0xFFFE | isKindOfClass & 1;
    configuration = self->_configuration;

    [(UIContentUnavailableView *)self _applyConfiguration:configuration];
  }
}

- (UIImageView)_imageView
{
  if ([(UIView *)self->_imageView isHidden])
  {
    imageView = 0;
  }

  else
  {
    imageView = self->_imageView;
  }

  return imageView;
}

- (UIActivityIndicatorView)_activityIndicator
{
  if ([(UIView *)self->_activityIndicator isHidden])
  {
    activityIndicator = 0;
  }

  else
  {
    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (void)layoutSubviews
{
  v113.receiver = self;
  v113.super_class = UIContentUnavailableView;
  [(UIView *)&v113 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIContentUnavailableView *)self _scrollViewInsets];
  v12 = v11;
  v14 = v13;
  v66 = v15;
  v17 = v16;
  [(UIContentUnavailableView *)self _keyboardInset];
  v65 = v18;
  [(UIView *)self _currentScreenScale];
  v62 = v19;
  v114.origin.x = v4;
  v114.origin.y = v6;
  v114.size.width = v8;
  v114.size.height = v10;
  v61 = v17;
  v20 = CGRectGetWidth(v114) - v14 - v17;
  v115.origin.x = v4;
  v115.origin.y = v6;
  v115.size.width = v8;
  v115.size.height = v10;
  v21 = CGRectGetHeight(v115) - v12 - v66 - v65;
  memset(__src, 0, sizeof(__src));
  [(UIContentUnavailableView *)self _computeLayoutInfoRestrictedToSize:v20, v21];
  v116.origin.x = v4;
  v116.origin.y = v6;
  v116.size.width = v8;
  v116.size.height = v10;
  Width = CGRectGetWidth(v116);
  v64 = v6;
  v117.origin.x = v4;
  v117.origin.y = v6;
  v63 = v10;
  v117.size.width = v8;
  v117.size.height = v10;
  Height = CGRectGetHeight(v117);
  if (v20 <= 0.0)
  {
    v20 = *&__src[24];
  }

  if (*(&__src[24] + 1) >= v21)
  {
    v23 = *(&__src[24] + 1);
  }

  else
  {
    v23 = v21;
  }

  _scrollView = [(UIContentUnavailableView *)self _scrollView];
  [_scrollView setContentSize:{v20, v65 + v23}];

  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x3010000000;
  v111[3] = "";
  v111[4] = 0;
  *&v111[5] = (v23 - 0.0) * 0.5 + 0.0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__227;
  v109 = __Block_byref_object_dispose__227;
  v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__UIContentUnavailableView_layoutSubviews__block_invoke;
  aBlock[3] = &unk_1E7128090;
  v104 = 0;
  aBlock[6] = v62;
  aBlock[4] = v111;
  aBlock[5] = &v105;
  v25 = _Block_copy(aBlock);
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __42__UIContentUnavailableView_layoutSubviews__block_invoke_3;
  v88[3] = &unk_1E71280B8;
  v91 = v12 + 0.0;
  v92 = v14 + 0.0;
  v93 = v66 + 0.0;
  v94 = v61 + 0.0;
  memcpy(v95, __src, sizeof(v95));
  v96 = v60 - (v14 + 0.0) - (v61 + 0.0);
  v97 = Height - (v12 + 0.0) - (v66 + 0.0) - v65;
  v102 = 0;
  v98 = v4;
  v99 = v64;
  v100 = v8;
  v101 = v63;
  v26 = v25;
  v89 = v26;
  v90 = v111;
  v27 = _Block_copy(v88);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __42__UIContentUnavailableView_layoutSubviews__block_invoke_4;
  v73[3] = &unk_1E71280E0;
  v76 = v12 + 0.0;
  v77 = v14 + 0.0;
  v78 = v66 + 0.0;
  v79 = v61 + 0.0;
  memcpy(v80, __src, sizeof(v80));
  v81 = v60 - (v14 + 0.0) - (v61 + 0.0);
  v82 = Height - (v12 + 0.0) - (v66 + 0.0) - v65;
  v87 = 0;
  v83 = v4;
  v84 = v64;
  v85 = v8;
  v86 = v63;
  v28 = v26;
  v74 = v28;
  v75 = v111;
  v29 = _Block_copy(v73);
  _imageView = [(UIContentUnavailableView *)self _imageView];
  v31 = (*&self->_contentViewFlags >> 3) & 1;
  v32 = v27[2];
  v69 = __src[0];
  v70 = __src[1];
  v71 = __src[2];
  v72 = *&__src[3];
  v32(v27, _imageView, &v69, v31);

  _activityIndicator = [(UIContentUnavailableView *)self _activityIndicator];
  v34 = (*&self->_contentViewFlags >> 4) & 1;
  v35 = v27[2];
  v69 = *(&__src[17] + 8);
  v70 = *(&__src[18] + 8);
  v71 = *(&__src[19] + 8);
  v72 = *(&__src[20] + 1);
  v35(v27, _activityIndicator, &v69, v34);

  _textLabel = [(UIContentUnavailableView *)self _textLabel];
  v37 = (*&self->_contentViewFlags >> 5) & 1;
  v38 = v27[2];
  v69 = *(&__src[3] + 8);
  v70 = *(&__src[4] + 8);
  v71 = *(&__src[5] + 8);
  v72 = *(&__src[6] + 1);
  v38(v27, _textLabel, &v69, v37);

  _secondaryTextLabel = [(UIContentUnavailableView *)self _secondaryTextLabel];
  v40 = (*&self->_contentViewFlags >> 6) & 1;
  v41 = v27[2];
  v69 = __src[7];
  v70 = __src[8];
  v71 = __src[9];
  v72 = *&__src[10];
  v41(v27, _secondaryTextLabel, &v69, v40);

  if (LOBYTE(__src[21]) == 1)
  {
    _button = [(UIContentUnavailableView *)self _button];
    contentViewFlags = self->_contentViewFlags;
    _secondaryButton = [(UIContentUnavailableView *)self _secondaryButton];
    v50 = v29[2];
    v51 = HIBYTE(*&self->_contentViewFlags) & 1;
    v69 = *(&__src[10] + 8);
    v70 = *(&__src[11] + 8);
    v71 = *(&__src[12] + 8);
    v72 = *(&__src[13] + 1);
    v67[0] = __src[14];
    v67[1] = __src[15];
    v67[2] = __src[16];
    v68 = *&__src[17];
    v50(v29, _button, &v69, (*&contentViewFlags >> 7) & 1, _secondaryButton, v67, v51);
  }

  else
  {
    _button2 = [(UIContentUnavailableView *)self _button];
    v43 = (*&self->_contentViewFlags >> 7) & 1;
    v44 = v27[2];
    v69 = *(&__src[10] + 8);
    v70 = *(&__src[11] + 8);
    v71 = *(&__src[12] + 8);
    v72 = *(&__src[13] + 1);
    v44(v27, _button2, &v69, v43);

    _button = [(UIContentUnavailableView *)self _secondaryButton];
    v45 = HIBYTE(*&self->_contentViewFlags) & 1;
    v46 = v27[2];
    v69 = __src[14];
    v70 = __src[15];
    v71 = __src[16];
    v72 = *&__src[17];
    v46(v27, _button, &v69, v45);
  }

  [self setAccessibilityElements:v106[5]];
  imageProperties = [(UIContentUnavailableConfiguration *)self->_configuration imageProperties];
  [imageProperties cornerRadius];
  v54 = v53;
  _imageView2 = [(UIContentUnavailableView *)self _imageView];
  _UIApplyCornerRadiusToView(_imageView2, v54);

  _activityIndicator2 = [(UIContentUnavailableView *)self _activityIndicator];
  [_activityIndicator2 startAnimating];

  _button3 = [(UIContentUnavailableView *)self _button];
  [_button3 setNeedsUpdateConfiguration];

  _secondaryButton2 = [(UIContentUnavailableView *)self _secondaryButton];
  [_secondaryButton2 setNeedsUpdateConfiguration];

  [(UIContentUnavailableView *)self _clearInvalidFrameFlags];
  _Block_object_dispose(&v105, 8);

  _Block_object_dispose(v111, 8);
}

- (double)_keyboardInset
{
  v2 = 0.0;
  if ((*&self->_contentViewFlags & 4) != 0)
  {
    keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
    v5 = keyboardSceneDelegate;
    if ((*&self->_contentViewFlags & 2) != 0)
    {
      x = self->_keyboardFrame.origin.x;
      y = self->_keyboardFrame.origin.y;
      width = self->_keyboardFrame.size.width;
      height = self->_keyboardFrame.size.height;
    }

    else
    {
      if (![keyboardSceneDelegate isOnScreen])
      {
LABEL_7:
        [(UIContentUnavailableView *)self _scrollViewInsets];
        v2 = fmax(v2 - v10, 0.0);

        return v2;
      }

      [v5 visibleFrameInView:0];
      [_UIKeyboardLayoutAlignmentView _frameInBoundsForKeyboardFrame:self inView:?];
    }

    v2 = CGRectGetHeight(*&x);
    goto LABEL_7;
  }

  return v2;
}

void __48___UIContentUnavailableView__rebuildConstraints__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69977A0] constraintWithItem:a2 attribute:4 relatedBy:0 toItem:*(*(a1 + 32) + 432) attribute:4 multiplier:1.0 constant:0.0];
  [*(*(a1 + 32) + 520) addObject:v3];
}

- (UIContentUnavailableView)initWithConfiguration:(UIContentUnavailableConfiguration *)configuration
{
  if (!configuration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIContentUnavailableView.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v13.receiver = self;
  v13.super_class = UIContentUnavailableView;
  v5 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__UIContentUnavailableView_initWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v11 = v5;
    v12 = configuration;
    [UIView performWithoutAnimation:v10];
  }

  return v6;
}

- (UIContentUnavailableView)initWithCoder:(NSCoder *)coder
{
  v5 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = UIContentUnavailableView;
  v6 = [(UIView *)&v12 initWithCoder:coder];
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__UIContentUnavailableView_initWithCoder___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v7 = v6;
  v10 = v7;
  v11 = v5;
  [UIView performWithoutAnimation:v9];

LABEL_6:
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIContentUnavailableView;
  [(UIView *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_configuration forKey:@"configuration"];
}

- (void)setConfiguration:(UIContentUnavailableConfiguration *)configuration
{
  if (!configuration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIContentUnavailableView.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v5 = self->_configuration;
  if (([(UIContentUnavailableConfiguration *)v5 _isEqualToConfigurationQuick:?]& 1) == 0)
  {
    v6 = [(UIContentUnavailableConfiguration *)configuration copy];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__UIContentUnavailableView_setConfiguration___block_invoke;
      v9[3] = &unk_1E7128068;
      objc_copyWeak(&v11, &location);
      v10 = v5;
      [UIView _addCompletionWithPosition:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    [(UIContentUnavailableView *)self _applyConfiguration:v6];
  }
}

void __45__UIContentUnavailableView_setConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3)
  {
    v6 = WeakRetained;
    [WeakRetained _applyConfiguration:*(a1 + 32)];
    WeakRetained = v6;
  }
}

- (void)_applyConfiguration:(id)configuration
{
  if (!configuration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIContentUnavailableView.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  objc_storeStrong(&self->_configuration, configuration);
  axesPreservingSuperviewLayoutMargins = [configuration axesPreservingSuperviewLayoutMargins];
  if ((axesPreservingSuperviewLayoutMargins & 2) != 0)
  {
    v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA | 5;
  }

  else
  {
    v6 = (axesPreservingSuperviewLayoutMargins << 63 >> 63) & 0xA;
  }

  [(UIView *)self setEdgesPreservingSuperviewLayoutMargins:v6];
  [configuration directionalLayoutMargins];
  [(UIView *)self setDirectionalLayoutMargins:?];
  if (!self->_scrollView)
  {
    v7 = [_UIContentUnavailableScrollView alloc];
    [(UIView *)self bounds];
    v8 = [(_UIContentUnavailableScrollView *)v7 initWithFrame:?];
    scrollView = self->_scrollView;
    self->_scrollView = v8;

    [(UIView *)self->_scrollView setAutoresizingMask:18];
    [(UIScrollView *)self->_scrollView setDelegate:self];
    [(UIView *)self addSubview:self->_scrollView];
  }

  traitCollection = [(UIView *)self traitCollection];
  if (configuration)
  {
    v10 = *(configuration + 7) == 1;
  }

  else
  {
    v10 = 0;
  }

  [(UIScrollView *)self->_scrollView setScrollEnabled:[(UIContentUnavailableView *)self isScrollEnabled]];
  [(UIScrollView *)self->_scrollView _setIsTransientScrollView:v10];
  v11 = self->_scrollView;
  imageProperties = [configuration imageProperties];
  v13 = v11;
  v14 = self->_imageView;
  v15 = v14;
  if (!imageProperties || (!imageProperties[2] ? (v16 = 1) : (v16 = v10), (v16 & 1) != 0))
  {
    if (v14 && ![(UIView *)v14 isHidden])
    {
      v17 = 1;
      [(UIImageView *)v15 setHidden:1];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_28;
  }

  if (v14)
  {
    if (![(UIView *)v14 isHidden])
    {
      v17 = 0;
      goto LABEL_25;
    }

    [(UIImageView *)v15 setHidden:0];
  }

  else
  {
    v15 = objc_alloc_init(UIImageView);
    imageView = self->_imageView;
    self->_imageView = v15;
  }

  v17 = 1;
LABEL_25:
  superview = [(UIView *)v15 superview];

  if (superview != v13)
  {
    [(UIView *)v13 addSubview:v15];
  }

  [(UIContentUnavailableImageProperties *)imageProperties _applyToImageView:v15];
LABEL_28:

  contentViewFlags = self->_contentViewFlags;
  if (v17 | ((contentViewFlags & 8) >> 3))
  {
    v21 = 8;
  }

  else
  {
    v21 = 0;
  }

  *&self->_contentViewFlags = v21 | contentViewFlags & 0xFFF7;

  v22 = self->_scrollView;
  imageProperties2 = [configuration imageProperties];
  v24 = v22;
  v25 = imageProperties2;
  v26 = self->_activityIndicator;
  v27 = v26;
  if (!v10)
  {
    if (v26 && ![(UIView *)v26 isHidden])
    {
      v28 = 1;
      [(UIView *)v27 setHidden:1];
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_45;
  }

  if (v26)
  {
    if (![(UIView *)v26 isHidden])
    {
      v28 = 0;
      goto LABEL_41;
    }

    [(UIView *)v27 setHidden:0];
  }

  else
  {
    v27 = objc_alloc_init(UIActivityIndicatorView);
    [(UIActivityIndicatorView *)v27 setHidesWhenStopped:0];
    objc_storeStrong(&self->_activityIndicator, v27);
  }

  v28 = 1;
LABEL_41:
  superview2 = [(UIView *)v27 superview];

  if (superview2 != v24)
  {
    [(UIView *)v24 addSubview:v27];
  }

  [(UIContentUnavailableImageProperties *)v25 _applyToActivityIndicatorView:v27];
LABEL_45:

  v30 = self->_contentViewFlags;
  if (v28 | ((v30 & 0x10) >> 4))
  {
    v31 = 16;
  }

  else
  {
    v31 = 0;
  }

  *&self->_contentViewFlags = v31 | v30 & 0xFFEF;

  v32 = self->_scrollView;
  textProperties = [configuration textProperties];
  updated = _UIContentUnavailableUpdateLabelUsingTextConfiguration(v32, &self->_textLabel, textProperties);
  v35 = self->_contentViewFlags;
  if (updated | ((v35 & 0x20) >> 5))
  {
    v36 = 32;
  }

  else
  {
    v36 = 0;
  }

  *&self->_contentViewFlags = v36 | v35 & 0xFFDF;

  v37 = self->_scrollView;
  secondaryTextProperties = [configuration secondaryTextProperties];
  v39 = _UIContentUnavailableUpdateLabelUsingTextConfiguration(v37, &self->_secondaryTextLabel, secondaryTextProperties);
  v40 = self->_contentViewFlags;
  if (v39 | ((v40 & 0x40) >> 6))
  {
    v41 = 64;
  }

  else
  {
    v41 = 0;
  }

  *&self->_contentViewFlags = v41 | v40 & 0xFFBF;

  v42 = self->_scrollView;
  buttonProperties = [configuration buttonProperties];
  v44 = _UIUpdateButtonUsingButtonConfiguration(v42, &self->_button, buttonProperties);
  v45 = self->_contentViewFlags;
  if (v44 | ((v45 & 0x80) >> 7))
  {
    v46 = 128;
  }

  else
  {
    v46 = 0;
  }

  *&self->_contentViewFlags = v46 | v45 & 0xFF7F;

  v47 = self->_scrollView;
  secondaryButtonProperties = [configuration secondaryButtonProperties];
  v49 = _UIUpdateButtonUsingButtonConfiguration(v47, &self->_secondaryButton, secondaryButtonProperties);
  v50 = self->_contentViewFlags;
  if (v49 | ((v50 & 0x100) >> 8))
  {
    v51 = 256;
  }

  else
  {
    v51 = 0;
  }

  *&self->_contentViewFlags = v51 | v50 & 0xFEFF;

  v52 = _UIContentUnavailableConstantsForTraitCollection(traitCollection);
  -[UIView _setOverrideUserInterfaceRenderingMode:](self, "_setOverrideUserInterfaceRenderingMode:", [v52 defaultUserInterfaceRenderingMode]);
  background = [configuration background];
  [(UIContentUnavailableView *)self _applyBackgroundConfiguration:background];

  self->_preferredMaxLayoutWidth = 1.79769313e308;
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)_applyBackgroundConfiguration:(id)configuration
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
LABEL_2:
    [(_UISystemBackgroundView *)backgroundView setConfiguration:configuration];
    [(_UISystemBackgroundView *)self->_backgroundView frameInContainerView:self];
    v6 = self->_backgroundView;

    [(_UISystemBackgroundView *)v6 setFrame:?];
    return;
  }

  if (![configuration _hasBackgroundFill])
  {
    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      return;
    }

    goto LABEL_2;
  }

  v7 = [[_UISystemBackgroundView alloc] initWithConfiguration:configuration containerView:self];
  v8 = self->_backgroundView;
  self->_backgroundView = v7;

  [(UIView *)self->_backgroundView setAutoresizingMask:18];
  v9 = self->_backgroundView;

  [(UIView *)self insertSubview:v9 atIndex:0];
}

- (UIContentUnavailableConfiguration)configuration
{
  v2 = [(UIContentUnavailableConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setScrollEnabled:(BOOL)scrollEnabled
{
  if (self->_scrollEnabled != scrollEnabled)
  {
    self->_scrollEnabled = scrollEnabled;
    [(UIContentUnavailableView *)self _reconfigureKeyboardLayoutAdjustment];
    v4 = self->_scrollEnabled;
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setScrollEnabled:v4];
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  [(UIView *)self setNeedsLayout];
  _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
  v5 = _viewControllerForAncestor;
  if (*&self->_contentViewFlags)
  {
    if ([_viewControllerForAncestor _hasAppeared])
    {
      transitionCoordinator = [v5 transitionCoordinator];

      if (transitionCoordinator)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __68__UIContentUnavailableView_scrollViewDidChangeAdjustedContentInset___block_invoke;
        v7[3] = &unk_1E70F3590;
        v7[4] = self;
        [UIView _performWithAnimation:v7];
      }
    }
  }
}

- (void)_handleKeyboardNotification:(id)notification aboutToHide:(BOOL)hide
{
  if (hide)
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    _scrollView = [(UIContentUnavailableView *)self _scrollView];
    [_UIKeyboardLayoutAlignmentView _endFrameForNotification:notification inView:_scrollView];
    v6 = v11;
    v7 = v12;
    v8 = v13;
    v9 = v14;
  }

  v23.origin.x = v6;
  v23.origin.y = v7;
  v23.size.width = v8;
  v23.size.height = v9;
  if (!CGRectEqualToRect(v23, self->_keyboardFrame))
  {
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;
    *&self->_contentViewFlags |= 2u;
    [(UIView *)self setNeedsLayout];
    userInfo = [notification userInfo];
    v16 = [userInfo objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
    [v16 doubleValue];
    v18 = v17;

    userInfo2 = [notification userInfo];
    v20 = [userInfo2 objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
    intValue = [v20 intValue];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__UIContentUnavailableView__handleKeyboardNotification_aboutToHide___block_invoke;
    v22[3] = &unk_1E70F6848;
    v22[5] = v18;
    v22[6] = (intValue << 16) | 6;
    v22[4] = self;
    [UIView _performWithAnimation:v22];
    *&self->_contentViewFlags &= ~2u;
  }
}

uint64_t __68__UIContentUnavailableView__handleKeyboardNotification_aboutToHide___block_invoke(double *a1)
{
  v1 = a1[5];
  v2 = *(a1 + 6);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__UIContentUnavailableView__handleKeyboardNotification_aboutToHide___block_invoke_2;
  v4[3] = &unk_1E70F3590;
  *&v4[4] = a1[4];
  return [UIView animateWithDuration:v2 delay:v4 options:0 animations:v1 completion:0.0];
}

- (void)_keyboardAboutToShow:(id)show
{
  userInfo = [show userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {

    [(UIContentUnavailableView *)self _handleKeyboardNotification:show aboutToHide:0];
  }
}

- (void)_keyboardAboutToHide:(id)hide
{
  userInfo = [hide userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {

    [(UIContentUnavailableView *)self _handleKeyboardNotification:hide aboutToHide:1];
  }
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 1.79769313e308;
  v2.receiver = self;
  v2.super_class = UIContentUnavailableView;
  [(UIView *)&v2 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UIContentUnavailableView;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (double)_preferredMaxLayoutWidth
{
  result = 0.0;
  if ((*(&self->super._viewFlags + 6) & 2) == 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (fits.width <= 0.0)
  {
    fits.width = 1.79769313e308;
  }

  if (fits.height <= 0.0)
  {
    fits.height = 1.79769313e308;
  }

  [(UIContentUnavailableView *)self _intrinsicSizeWithinSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v9 = 1.79769313e308;
  if (size.width <= 0.0)
  {
    size.width = 1.79769313e308;
  }

  if (height > 0.0)
  {
    v9 = height;
  }

  [(UIContentUnavailableView *)self _intrinsicSizeWithinSize:size.width, v9];
  if (priority >= 1000.0)
  {
    v10 = width;
  }

  if (fittingPriority >= 1000.0)
  {
    v11 = height;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)shouldReparentScrollViewPanGestureRecognizer
{
  if (*&self->_contentViewFlags)
  {
    background = [(UIContentUnavailableConfiguration *)self->_configuration background];
    v2 = [background _hasBackgroundFill] ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UIContentUnavailableView;
  v5 = [(UIView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (UIContentUnavailableViewLayoutInfo)_computeLayoutInfoRestrictedToSize:(SEL)size
{
  height = a4.height;
  width = a4.width;
  traitCollection = [(UIView *)self traitCollection];
  v8 = self->_configuration;
  v51 = _UIContentUnavailableConstantsForTraitCollection(traitCollection);
  v9 = [(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft;
  isScrollEnabled = [(UIContentUnavailableView *)self isScrollEnabled];
  [(UIView *)self directionalLayoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIContentUnavailableView *)self _scrollViewInsets];
  v20 = v12 - v19;
  v22 = v14 - v21;
  v24 = v16 - v23;
  v26 = v18 - v25;
  v27 = v14 - v21 + v26;
  if (v27 >= width)
  {
    v27 = width;
  }

  v52 = v27;
  if (v20 + v24 < height || isScrollEnabled)
  {
    v29 = v20 + v24;
  }

  else
  {
    v29 = height;
  }

  v30 = 2777777.0;
  if (*&self->_contentViewFlags)
  {
    v30 = __UIViewReadableWidthForFont(0);
  }

  if (width - v52 < v30)
  {
    v30 = width - v52;
  }

  v31 = MEMORY[0x1E695F060];
  v32 = *MEMORY[0x1E695F060];
  v33 = *(MEMORY[0x1E695F060] + 8);
  retstr->var2.var0 = 0u;
  *&retstr->var6 = 0;
  v34 = fmax(v32, fmin(v30, width));
  *&retstr->var5.var2.top = 0u;
  *&retstr->var5.var2.bottom = 0u;
  v35 = fmax(v33, fmin(fmin(height - v29, 2777777.0), height));
  *&retstr->var4.var2.trailing = 0u;
  *&retstr->var5.var0.height = 0u;
  *&retstr->var4.var1 = 0u;
  *&retstr->var4.var2.leading = 0u;
  *&retstr->var3.var2.bottom = 0u;
  retstr->var4.var0 = 0u;
  *&retstr->var3.var0.height = 0u;
  *&retstr->var3.var2.top = 0u;
  *&retstr->var2.var2.leading = 0u;
  *&retstr->var2.var2.trailing = 0u;
  *&retstr->var2.var1 = 0u;
  *&retstr->var1.var2.top = 0u;
  *&retstr->var1.var2.bottom = 0u;
  *&retstr->var0.var2.trailing = 0u;
  *&retstr->var1.var0.height = 0u;
  *&retstr->var0.var1 = 0u;
  *&retstr->var0.var2.leading = 0u;
  retstr->var0.var0 = 0u;
  if (v8)
  {
    prefersSideBySideButtonAndSecondaryButton = v8->_prefersSideBySideButtonAndSecondaryButton;
  }

  else
  {
    prefersSideBySideButtonAndSecondaryButton = 0;
  }

  retstr->var6 = prefersSideBySideButtonAndSecondaryButton;
  retstr->var7 = v9;
  retstr->var8 = isScrollEnabled;
  retstr->var9 = [(UIContentUnavailableConfiguration *)v8 alignment];
  retstr->var10.top = v20;
  retstr->var10.leading = v22;
  retstr->var10.bottom = v24;
  retstr->var10.trailing = v26;
  retstr->var11 = *v31;
  retstr->var12.width = v34;
  retstr->var12.height = v35;
  _textLabel = [(UIContentUnavailableView *)self _textLabel];
  _button = [(UIContentUnavailableView *)self _button];
  _secondaryButton = [(UIContentUnavailableView *)self _secondaryButton];
  _secondaryTextLabel = [(UIContentUnavailableView *)self _secondaryTextLabel];
  _imageView = [(UIContentUnavailableView *)self _imageView];
  _activityIndicator = [(UIContentUnavailableView *)self _activityIndicator];
  if (_textLabel)
  {
    retstr->var1.var1 = 1;
    [(UIContentUnavailableView *)self _computeLayoutInfoForView:_textLabel info:&retstr->var1 layoutInfo:retstr];
  }

  if (_button | _secondaryButton)
  {
    retstr->var3.var1 = _button != 0;
    retstr->var4.var1 = _secondaryButton != 0;
    [(UIContentUnavailableView *)self _computeButtonLayoutInfo:retstr];
  }

  if (_secondaryTextLabel)
  {
    var1 = retstr->var1.var1;
    retstr->var2.var1 = _textLabel == 0 || var1;
    v45 = 0.0;
    if (!var1 || ([(UIContentUnavailableConfiguration *)v8 textToSecondaryTextPadding], v45 = v46, v43 = 0.0, !retstr->var1.var1))
    {
      if (retstr->var3.var1 || (v43 = 0.0, retstr->var4.var1))
      {
        [(UIContentUnavailableConfiguration *)v8 textToButtonPadding];
      }
    }

    retstr->var2.var2.top = v45 + retstr->var2.var2.top;
    retstr->var2.var2.bottom = v43 + retstr->var2.var2.bottom;
    [(UIContentUnavailableView *)self _computeLayoutInfoForView:_secondaryTextLabel info:&retstr->var2 layoutInfo:retstr];
  }

  if (_imageView)
  {
    retstr->var0.var1 = 1;
    if (retstr->var1.var1 || retstr->var2.var1 || retstr->var3.var1 || (v47 = 0.0, retstr->var4.var1))
    {
      [(UIContentUnavailableConfiguration *)v8 imageToTextPadding];
    }

    retstr->var0.var2.bottom = v47 + retstr->var0.var2.bottom;
    [(UIContentUnavailableView *)self _computeLayoutInfoForView:_imageView info:retstr layoutInfo:retstr];
  }

  if (_activityIndicator)
  {
    retstr->var5.var1 = 1;
    if (retstr->var1.var1 || retstr->var2.var1 || retstr->var3.var1 || (v48 = 0.0, retstr->var4.var1))
    {
      [(UIContentUnavailableConfiguration *)v8 imageToTextPadding];
    }

    retstr->var5.var2.bottom = v48 + retstr->var5.var2.bottom;
    [(UIContentUnavailableView *)self _computeLayoutInfoForView:_activityIndicator info:&retstr->var5 layoutInfo:retstr];
  }

  v49 = v29 + retstr->var11.height;
  retstr->var11.width = v52 + retstr->var11.width;
  retstr->var11.height = v49;

  return result;
}

- (void)_computeLayoutInfoForView:(id)view info:(UIContentUnavailableViewElementLayoutInfo *)info layoutInfo:(UIContentUnavailableViewLayoutInfo *)layoutInfo
{
  [(UIContentUnavailableView *)self _alignmentInsetsForView:?];
  v10 = info->var2.top + v9;
  v12 = v11 + info->var2.leading;
  v14 = v13 + info->var2.bottom;
  v16 = v15 + info->var2.trailing;
  info->var2.top = v10;
  info->var2.leading = v12;
  info->var2.bottom = v14;
  info->var2.trailing = v16;
  v17 = fmax(*MEMORY[0x1E695F060], fmin(layoutInfo->var12.width - v12 - v16, layoutInfo->var12.width));
  _textLabel = [(UIContentUnavailableView *)self _textLabel];
  v19 = _textLabel;
  if (_textLabel == view)
  {
  }

  else
  {
    _secondaryTextLabel = [(UIContentUnavailableView *)self _secondaryTextLabel];

    if (_secondaryTextLabel != view)
    {
      [view _intrinsicSizeWithinSize:{v17, 2777777.0}];
      v22 = v21;
      v24 = v23;
      goto LABEL_6;
    }
  }

  v25 = *MEMORY[0x1E695EFF8];
  v26 = *(MEMORY[0x1E695EFF8] + 8);
  viewCopy = view;
  [viewCopy textRectForBounds:objc_msgSend(viewCopy limitedToNumberOfLines:{"numberOfLines"), v25, v26, v17, 2777777.0}];
  v22 = v28;
  v24 = v29;

LABEL_6:
  _imageView = [(UIContentUnavailableView *)self _imageView];
  v31 = _imageView;
  if (_imageView == view)
  {
  }

  else
  {
    _activityIndicator = [(UIContentUnavailableView *)self _activityIndicator];

    if (_activityIndicator != view)
    {
      goto LABEL_21;
    }
  }

  imageProperties = [(UIContentUnavailableConfiguration *)self->_configuration imageProperties];
  [imageProperties maximumSize];
  if (v22 >= v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v22;
  }

  if (v34 > 0.0)
  {
    v22 = v36;
  }

  if (v24 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v24;
  }

  if (v35 > 0.0)
  {
    v24 = v37;
  }

LABEL_21:
  if (v22 >= v17)
  {
    v22 = v17;
  }

  info->var0.width = v22;
  info->var0.height = v24;
  if (info->var1)
  {
    v38 = v14 + v10 + v24;
    v39 = v24 > 0.0 && v22 > 0.0;
    v40 = round(v38);
    v41 = round(layoutInfo->var12.height);
    if (layoutInfo->var8)
    {
      _imageView2 = [(UIContentUnavailableView *)self _imageView];
      v43 = _imageView2 != view;
    }

    else
    {
      v43 = 0;
    }

    v44 = v39 && (v40 <= v41 || v43);
    info->var1 = v44;
    if (v44 == 1)
    {
      width = v16 + v12 + v22;
      height = layoutInfo->var11.height;
      if (layoutInfo->var11.width >= width)
      {
        width = layoutInfo->var11.width;
      }

      layoutInfo->var11.width = width;
      layoutInfo->var11.height = v38 + height;
      layoutInfo->var12.height = layoutInfo->var12.height - v38;
    }
  }
}

- (void)_computeButtonLayoutInfo:(UIContentUnavailableViewLayoutInfo *)info
{
  _button = [(UIContentUnavailableView *)self _button];
  _secondaryButton = [(UIContentUnavailableView *)self _secondaryButton];
  v6 = self->_configuration;
  var1 = info->var3.var1;
  v8 = info->var4.var1;
  [(UIContentUnavailableConfiguration *)v6 buttonToSecondaryButtonPadding];
  v10 = v9;
  if (info->var1.var1 || (v11 = 0.0, info->var2.var1))
  {
    [(UIContentUnavailableConfiguration *)v6 textToButtonPadding];
    v11 = v12;
  }

  _prefersEqualButtonAndSecondaryButtonWidths = [(UIContentUnavailableView *)self _prefersEqualButtonAndSecondaryButtonWidths];
  v14 = info->var6 && var1 && v8;
  [(UIContentUnavailableView *)self _alignmentInsetsForView:_button];
  v16 = v15;
  bottom = info->var3.var2.bottom;
  v19 = info->var3.var2.top + v18;
  v21 = v20 + info->var3.var2.leading;
  v23 = v22 + info->var3.var2.trailing;
  [(UIContentUnavailableView *)self _alignmentInsetsForView:_secondaryButton];
  v26 = v25;
  v28 = info->var4.var2.top + v27;
  v29 = v24 + info->var4.var2.leading;
  v31 = v30 + info->var4.var2.trailing;
  v91 = v21;
  v92 = v23;
  if (var1 && v8)
  {
    v32 = v11 + v19;
    if (v14)
    {
      v29 = v10 + v29;
      v33 = v11 + v28;
      v34 = v21 + v29 + 0.0;
      v35 = v23 + v31;
    }

    else
    {
      v33 = v10 + v28;
      if (v21 >= v29)
      {
        v37 = v21;
      }

      else
      {
        v37 = v24 + info->var4.var2.leading;
      }

      v34 = v37 + 0.0;
      if (v23 >= v31)
      {
        v35 = v23;
      }

      else
      {
        v35 = v31;
      }
    }

    v36 = v35 + 0.0;
  }

  else
  {
    if (var1)
    {
      v33 = v28;
    }

    else
    {
      v33 = v11 + v28;
    }

    if (var1)
    {
      v32 = v11 + v19;
    }

    else
    {
      v32 = v19;
    }

    if (var1)
    {
      v36 = v23;
    }

    else
    {
      v36 = v31;
    }

    if (var1)
    {
      v34 = v21;
    }

    else
    {
      v34 = v29;
    }
  }

  v87 = v32;
  v88 = v33;
  v89 = v29;
  v90 = v31;
  v38 = info->var4.var2.bottom;
  v40 = *MEMORY[0x1E695F060];
  v39 = *(MEMORY[0x1E695F060] + 8);
  v41 = fmax(*MEMORY[0x1E695F060], fmin(info->var12.width - v34 - v36, info->var12.width));
  v42 = v39;
  v43 = *MEMORY[0x1E695F060];
  if (var1)
  {
    [_button _intrinsicSizeWithinSize:{v41, 2777777.0}];
    v43 = v44;
  }

  v45 = _prefersEqualButtonAndSecondaryButtonWidths && var1 && v8;
  v83 = v42;
  v85 = v16 + bottom;
  v86 = v26 + v38;
  if (v8)
  {
    [_secondaryButton _intrinsicSizeWithinSize:{v41, 2777777.0}];
    v40 = v46;
    v39 = v47;
  }

  buttonProperties = [(UIContentUnavailableConfiguration *)v6 buttonProperties];
  [buttonProperties minimumSize];
  v50 = v49;
  v52 = v51;

  secondaryButtonProperties = [(UIContentUnavailableConfiguration *)v6 secondaryButtonProperties];
  [secondaryButtonProperties minimumSize];
  v55 = v54;
  v57 = v56;

  if (v43 >= v50)
  {
    v58 = v43;
  }

  else
  {
    v58 = v50;
  }

  if (v84 >= v52)
  {
    v59 = v84;
  }

  else
  {
    v59 = v52;
  }

  if (v40 >= v55)
  {
    v60 = v40;
  }

  else
  {
    v60 = v55;
  }

  if (v39 >= v57)
  {
    v61 = v39;
  }

  else
  {
    v61 = v57;
  }

  if (v58 >= v41)
  {
    v58 = v41;
  }

  if (v60 >= v41)
  {
    v60 = v41;
  }

  if (v58 >= v60)
  {
    v62 = v58;
  }

  else
  {
    v62 = v60;
  }

  if (v45)
  {
    v63 = v62;
  }

  else
  {
    v63 = v60;
  }

  if (v45)
  {
    v64 = v62;
  }

  else
  {
    v64 = v58;
  }

  v65 = v92 + v91 + v64;
  v66 = v85 + v87 + v59;
  v67 = v90 + v89 + v63;
  v68 = v86 + v88 + v61;
  if (v65 >= v67)
  {
    v69 = v92 + v91 + v64;
  }

  else
  {
    v69 = v90 + v89 + v63;
  }

  v70 = v66 + v68;
  v71 = v65 + v67;
  if (v66 >= v68)
  {
    v72 = v85 + v87 + v59;
  }

  else
  {
    v72 = v86 + v88 + v61;
  }

  if (v14)
  {
    v73 = v71;
  }

  else
  {
    v73 = v69;
  }

  if (v14)
  {
    v74 = v72;
  }

  else
  {
    v74 = v70;
  }

  if (round(v73) > round(info->var12.width) && v14)
  {
    info->var6 = 0;
    [(UIContentUnavailableView *)self _computeButtonLayoutInfo:info];
    goto LABEL_89;
  }

  if (v64 > 0.0 && v59 > 0.0 && var1)
  {
    v77 = round(v74);
    height = info->var12.height;
    goto LABEL_82;
  }

  height = info->var12.height;
  if (v63 > 0.0 && v61 > 0.0 && v8)
  {
    v77 = round(v74);
LABEL_82:
    v79 = v77 <= round(height) || info->var8;
    info->var3.var0.width = v64;
    info->var3.var0.height = v59;
    v80 = info->var3.var1;
    if (!v79)
    {
      v80 = 0;
    }

    goto LABEL_85;
  }

  v79 = 0;
  v80 = 0;
  info->var3.var0.width = v64;
  info->var3.var0.height = v59;
LABEL_85:
  info->var3.var1 = v80;
  info->var3.var2.top = v87;
  info->var3.var2.leading = v91;
  info->var3.var2.bottom = v85;
  info->var3.var2.trailing = v92;
  info->var4.var0.width = v63;
  info->var4.var0.height = v61;
  info->var4.var1 &= v79;
  info->var4.var2.top = v88;
  info->var4.var2.leading = v89;
  info->var4.var2.bottom = v86;
  info->var4.var2.trailing = v90;
  info->var6 = v14;
  if (v79)
  {
    width = info->var11.width;
    v82 = info->var11.height;
    if (width < v73)
    {
      width = v73;
    }

    info->var11.width = width;
    info->var11.height = v74 + v82;
    info->var12.height = height - v74;
  }

LABEL_89:
}

- (BOOL)_prefersEqualButtonAndSecondaryButtonWidths
{
  _button = [(UIContentUnavailableView *)self _button];
  _secondaryButton = [(UIContentUnavailableView *)self _secondaryButton];
  _currentConfiguration = [_button _currentConfiguration];
  if ([_currentConfiguration _hasObscuringBackground])
  {
    _currentConfiguration2 = [_secondaryButton _currentConfiguration];
    _hasObscuringBackground = [_currentConfiguration2 _hasObscuringBackground];
  }

  else
  {
    _hasObscuringBackground = 0;
  }

  v8 = [_button behavioralStyle] == 2 && objc_msgSend(_secondaryButton, "behavioralStyle") == 2;
  v9 = _hasObscuringBackground | v8;

  return v9 & 1;
}

- (NSDirectionalEdgeInsets)_alignmentInsetsForView:(id)view
{
  objc_opt_class();
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    viewCopy = view;
    if ([viewCopy behavioralStyle] == 2 || (objc_msgSend(viewCopy, "_currentConfiguration"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_hasObscuringBackground"), v9, (v10 & 1) != 0))
    {
      effectiveUserInterfaceLayoutDirection = [viewCopy effectiveUserInterfaceLayoutDirection];
      [viewCopy alignmentRectInsets];
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v16 = v15;
      }

      else
      {
        v16 = v13;
      }

      if (effectiveUserInterfaceLayoutDirection != 1)
      {
        v13 = v15;
      }

      v7 = -v12;
      v6 = -v16;
      v5 = -v14;
      v4 = -v13;
    }

    else
    {
      _currentConfiguration = [viewCopy _currentConfiguration];
      [_currentConfiguration contentInsets];
      v7 = -v18;
      v6 = -v19;
      v5 = -v20;
      v4 = -v21;
    }
  }

  v22 = v7;
  v23 = v6;
  v24 = v5;
  v25 = v4;
  result.trailing = v25;
  result.bottom = v24;
  result.leading = v23;
  result.top = v22;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  if (size.width >= self->_preferredMaxLayoutWidth)
  {
    size.width = self->_preferredMaxLayoutWidth;
  }

  [(UIContentUnavailableView *)self _computeLayoutInfoRestrictedToSize:size.width, size.height, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  v4 = 0.0;
  v3 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = UIContentUnavailableView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:margins.top, margins.left, margins.bottom, margins.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  if ((*&self->_contentViewFlags & 1) == 0)
  {
    window = [(UIView *)self window];

    if (window)
    {
      _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
      contentUnavailableConfigurationState = [_viewControllerForAncestor contentUnavailableConfigurationState];

      v6 = [(UIContentUnavailableConfiguration *)self->_configuration updatedConfigurationForState:contentUnavailableConfigurationState];
      [(UIContentUnavailableView *)self _applyConfiguration:v6];
    }
  }
}

uint64_t __42__UIContentUnavailableView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

double __42__UIContentUnavailableView_layoutSubviews__block_invoke_4(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7)
{
  v12 = a3[1];
  v13 = a3[3];
  v14 = a3[5];
  v15 = *a3 + a3[4] + a3[6];
  v16 = a6[1];
  v17 = a6[3];
  v18 = a6[5];
  v19 = v15 + *a6 + a6[4] + a6[6];
  v20 = *(a1 + 56);
  if (*(a1 + 424))
  {
    if (*(a1 + 544) == 1)
    {
      v20 = CGRectGetWidth(*(a1 + 512)) - v19 - *(a1 + 72);
    }
  }

  else
  {
    v20 = v20 + (*(a1 + 496) - v19) * 0.5;
  }

  v21 = v16 + v17 + v18;
  if (v12 + v13 + v14 >= v21)
  {
    v22 = v12 + v13 + v14;
  }

  else
  {
    v22 = v16 + v17 + v18;
  }

  v23 = v15 + v20;
  v24 = (v22 - v21) * 0.5;
  v25 = *(a1 + 32);
  v26 = *(v25 + 16);
  v27 = *(a3 + 1);
  v32 = *a3;
  v33 = v27;
  v34 = *(a3 + 2);
  v35 = *(a3 + 6);
  v26(v25, a2, &v32, a4, a5, a6, a7);
  v28 = *(*(a1 + 32) + 16);
  v29 = *(a6 + 1);
  v32 = *a6;
  v33 = v29;
  v34 = *(a6 + 2);
  v35 = *(a6 + 6);
  v28(v23, v24);
  v30 = *(*(a1 + 40) + 8);
  result = v22 + *(v30 + 40);
  *(v30 + 40) = result;
  return result;
}

void __73___UIContentUnavailableView__buttonBackgroundImageForStyle_controlState___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _MergedGlobals_9_15;
  _MergedGlobals_9_15 = v0;
}

void __73___UIContentUnavailableView__buttonBackgroundImageForStyle_controlState___block_invoke_2(uint64_t a1)
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSetFillColorWithColor(v3, *(a1 + 32));
  v4 = GetContextStack(0);
  if (*v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[3 * (*v4 - 1) + 1];
  }

  CGContextSetStrokeColorWithColor(v5, *(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (!*(a1 + 80))
  {
    *&v6 = CGRectInset(*&v6, 0.5, 0.5);
    v10 = v10 + -0.5;
  }

  v11 = [UIBezierPath bezierPathWithRoundedRect:v6 cornerRadius:v7, v8, v9, v10];
  v12 = *(a1 + 80);
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_14;
    }

    v13 = v11;
    [v11 fill];
  }

  else
  {
    v13 = v11;
    [v11 stroke];
  }

  v11 = v13;
LABEL_14:
}

void __65___UIContentUnavailableView_windowWillAnimateRotateNotification___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setHidden:1];
  obj = [[UISnapshotView alloc] initWithFrame:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
  [(UISnapshotView *)obj captureSnapshotRect:*(*(a1 + 32) + 432) fromView:0 withSnapshotType:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
  [*(*(a1 + 32) + 488) setHidden:0];
  objc_storeStrong((*(a1 + 32) + 496), obj);
  [*(*(a1 + 32) + 496) bounds];
  v3 = v2;
  v5 = v4;
  [*(*(a1 + 32) + 496) bounds];
  Width = CGRectGetWidth(v26);
  v7 = *(a1 + 32);
  if (Width > *(v7 + 504))
  {
    [*(v7 + 496) bounds];
    v8 = CGRectGetWidth(v27);
    [*(*(a1 + 32) + 488) bounds];
    v9 = v8 - CGRectGetWidth(v28);
    [*(*(a1 + 32) + 496) bounds];
    v10 = CGRectGetMidX(v29) + v9 * -0.5;
    v11 = *(*(a1 + 32) + 496);
    [v11 bounds];
    [v11 _setContentStretchInPixels:0 forContentSize:v10 shouldTile:{v3, v9, v5, v12, v13}];
    v7 = *(a1 + 32);
  }

  [*(v7 + 448) setAlpha:0.0];
  [*(*(a1 + 32) + 456) setAlpha:0.0];
  [*(*(a1 + 32) + 496) setAlpha:0.0];
  v14 = [*(*(a1 + 32) + 432) layer];
  v15 = [v14 presentationLayer];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [*(*(a1 + 32) + 496) setFrame:{v17, v19, v21, v23}];
  [*(*(a1 + 32) + 432) addSubview:*(*(a1 + 32) + 496)];
}

@end
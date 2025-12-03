@interface UIKeyboardStickerCollectionViewCell
- (BOOL)allowsRearrange;
- (BOOL)isEmptyCell;
- (UIButton)deleteButton;
- (UIKeyboardEmojiAndStickerCollectionViewCellDelegate)delegate;
- (UIKeyboardEmojiAndStickerCollectionViewDelegate)cellDelegate;
- (UIKeyboardStickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIKeyboardStickerRestrictedContentView)restrictedContentView;
- (UIView)rearrangingView;
- (id)_jiggleAnimationWithVariation:(double)variation keyPath:(id)path duration:(double)duration;
- (id)accessibilityLabel;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didTapDuringRearrange:(id)rearrange;
- (void)_endJiggle;
- (void)_endRearrange;
- (void)_performDeleteAction;
- (void)_reportRearrangeStateChanged:(BOOL)changed;
- (void)_showRearrangeViewIfNecessary:(BOOL)necessary;
- (void)_startJiggle;
- (void)_startRearrange;
- (void)didEndDisplaying;
- (void)didLongPress:(id)press;
- (void)layoutSubviews;
- (void)performDeleteWithCompletionHandler:(id)handler;
- (void)prepareForReuse;
- (void)resetRestrictedContent;
- (void)setImageGlyph:(id)glyph;
- (void)setIsRestrictedContent:(BOOL)content;
- (void)setRearrangeMode:(BOOL)mode;
- (void)setSelected:(BOOL)selected;
- (void)setUsageSource:(id)source;
- (void)tappedAddEffect:(id)effect;
- (void)tappedNewEmoji:(id)emoji;
- (void)tappedRearrange:(id)rearrange;
- (void)updateDistributionPermissions;
- (void)willDisplay;
@end

@implementation UIKeyboardStickerCollectionViewCell

- (id)accessibilityLabel
{
  sharedInstance = [getSTKImageGlyphDataSourceClass() sharedInstance];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([sharedInstance accessibilityTextForItem:self->_imageGlyph], (toString = objc_claimAutoreleasedReturnValue()) == 0))
  {
    toString = [(STKImageGlyph *)self->_imageGlyph toString];
  }

  return toString;
}

- (UIKeyboardStickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = UIKeyboardStickerCollectionViewCell;
  v3 = [(UICollectionViewCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v4 = getSTKStickerViewClass_softClass;
    v27 = getSTKStickerViewClass_softClass;
    if (!getSTKStickerViewClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getSTKStickerViewClass_block_invoke;
      v22 = &unk_1E70F2F20;
      v23 = &v24;
      StickerKitLibraryCore();
      Class = objc_getClass("STKStickerView");
      *(v23[1] + 24) = Class;
      getSTKStickerViewClass_softClass = *(v23[1] + 24);
      v4 = v25[3];
    }

    v6 = v4;
    _Block_object_dispose(&v24, 8);
    v7 = [v4 alloc];
    [(UIView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    stickerView = v3->_stickerView;
    v3->_stickerView = v8;

    contentView = [(UICollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_stickerView];

    v11 = [[UIEditMenuInteraction alloc] initWithDelegate:v3];
    editMenuInteraction = v3->_editMenuInteraction;
    v3->_editMenuInteraction = v11;

    [(UIView *)v3 addInteraction:v3->_editMenuInteraction];
    v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:sel_didLongPress_];
    longPressGR = v3->_longPressGR;
    v3->_longPressGR = v13;

    [(UIView *)v3 addGestureRecognizer:v3->_longPressGR];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:sel__didTapDuringRearrange_];
    rearrangeViewTapGR = v3->_rearrangeViewTapGR;
    v3->_rearrangeViewTapGR = v15;

    [(UIGestureRecognizer *)v3->_rearrangeViewTapGR setEnabled:0];
    v3->_isRestrictedContent = 0;
    v3->_allowsDistribution = 1;
  }

  return v3;
}

- (void)setImageGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_stickerView configureWithImage:0 imageGlyph:glyphCopy effect:0];
    objc_storeStrong(&self->_imageGlyph, glyph);
    [(UIKeyboardStickerCollectionViewCell *)self updateDistributionPermissions];
  }
}

- (void)setUsageSource:(id)source
{
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_stickerView setUsageSource:sourceCopy];
    objc_storeStrong(&self->_usageSource, source);
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  navigationHighlightView = [(UIKeyboardStickerCollectionViewCell *)self navigationHighlightView];

  if (navigationHighlightView)
  {
    if (selectedCopy)
    {
LABEL_3:
      navigationHighlightView5 = +[UIColor systemBlueColor];
      navigationHighlightView2 = [(UIKeyboardStickerCollectionViewCell *)self navigationHighlightView];
      [navigationHighlightView2 setBackgroundColor:navigationHighlightView5];

      goto LABEL_6;
    }
  }

  else
  {
    v8 = [UIView alloc];
    [(UIView *)self bounds];
    v9 = [(UIView *)v8 initWithFrame:?];
    [(UIKeyboardStickerCollectionViewCell *)self setNavigationHighlightView:v9];

    contentView = [(UICollectionViewCell *)self contentView];
    navigationHighlightView3 = [(UIKeyboardStickerCollectionViewCell *)self navigationHighlightView];
    [contentView insertSubview:navigationHighlightView3 belowSubview:self->_stickerView];

    navigationHighlightView4 = [(UIKeyboardStickerCollectionViewCell *)self navigationHighlightView];
    layer = [navigationHighlightView4 layer];
    [layer setCornerRadius:5.0];

    if (selectedCopy)
    {
      goto LABEL_3;
    }
  }

  navigationHighlightView5 = [(UIKeyboardStickerCollectionViewCell *)self navigationHighlightView];
  [navigationHighlightView5 setBackgroundColor:0];
LABEL_6:

  [(UIView *)self setNeedsDisplay];
}

- (void)performDeleteWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:325.0 damping:32.0 initialVelocity:0.0, 0.0];
  v6 = [[UIViewPropertyAnimator alloc] initWithDuration:v5 timingParameters:0.4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__UIKeyboardStickerCollectionViewCell_performDeleteWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [(UIViewPropertyAnimator *)v6 addAnimations:v15];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __74__UIKeyboardStickerCollectionViewCell_performDeleteWithCompletionHandler___block_invoke_2;
  v11 = &unk_1E710AD58;
  objc_copyWeak(&v13, &location);
  v7 = handlerCopy;
  v12 = v7;
  [(UIViewPropertyAnimator *)v6 addCompletion:&v8];
  [(UIViewPropertyAnimator *)v6 startAnimation:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __74__UIKeyboardStickerCollectionViewCell_performDeleteWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stickerView];
  [v2 setAlpha:0.0];

  CGAffineTransformMakeScale(&v5, 0.1, 0.1);
  v3 = [*(a1 + 32) stickerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

void __74__UIKeyboardStickerCollectionViewCell_performDeleteWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImageGlyph:0];
  v3 = [WeakRetained stickerView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v7];

  v5 = [WeakRetained stickerView];
  [v5 setAlpha:0.0];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)setRearrangeMode:(BOOL)mode
{
  v4 = mode && [(UIKeyboardStickerCollectionViewCell *)self allowsRearrange];
  if (self->_rearrangeMode != v4)
  {
    self->_rearrangeMode = v4;
    [(UIGestureRecognizer *)self->_rearrangeViewTapGR setEnabled:v4];
    if (v4)
    {
      [(UIKeyboardStickerRestrictedContentView *)self->_restrictedContentView preventContentInteractions:0];

      [(UIKeyboardStickerCollectionViewCell *)self _startRearrange];
    }

    else
    {
      [(UIKeyboardStickerCollectionViewCell *)self _endRearrange];

      [(UIKeyboardStickerCollectionViewCell *)self updateDistributionPermissions];
    }
  }
}

- (BOOL)allowsRearrange
{
  delegate = [(UIKeyboardStickerCollectionViewCell *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(UIKeyboardStickerCollectionViewCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(UIKeyboardStickerCollectionViewCell *)self delegate];
      isRearrangingAllowed = [delegate3 isRearrangingAllowed];

      if (!isRearrangingAllowed)
      {
        LOBYTE(v13) = 0;
        return v13;
      }
    }
  }

  sharedInstance = [getSTKImageGlyphDataSourceClass() sharedInstance];
  imageGlyph = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  v11 = [sharedInstance indexPathForItem:imageGlyph];

  section = [v11 section];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (![sharedInstance isStickerSection:section])
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = ![(UIKeyboardStickerCollectionViewCell *)self isEmptyCell];
    goto LABEL_9;
  }

  if ([sharedInstance allowsRearrangeForSection:section])
  {
    goto LABEL_8;
  }

LABEL_6:
  LOBYTE(v13) = 0;
LABEL_9:

  return v13;
}

- (BOOL)isEmptyCell
{
  imageGlyph = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  imageGlyph2 = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  isEmpty = [imageGlyph2 isEmpty];

  return isEmpty;
}

- (void)willDisplay
{
  stickerView = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    stickerView2 = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
    [stickerView2 willDisplay];
  }
}

- (void)didEndDisplaying
{
  stickerView = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    stickerView2 = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
    [stickerView2 didEndDisplaying];
  }
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = UIKeyboardStickerCollectionViewCell;
  [(UICollectionViewCell *)&v10 prepareForReuse];
  imageGlyph = self->_imageGlyph;
  self->_imageGlyph = 0;

  [(UIView *)self->_stickerView setAlpha:1.0];
  stickerView = self->_stickerView;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v5;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)stickerView setTransform:v9];
  self->_rearrangeMode = 0;
  [(UIView *)self->_rearrangingView setHidden:1];
  [(UIKeyboardStickerCollectionViewCell *)self resetRestrictedContent];
  stickerView = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    stickerView2 = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
    [stickerView2 prepareForReuse];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKeyboardStickerCollectionViewCell;
  [(UICollectionViewCell *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_navigationHighlightView setFrame:?];
  [(UIView *)self bounds];
  [(UIView *)self->_rearrangingView setFrame:?];
  [(UIView *)self bounds];
  [(UIView *)self->_stickerView setFrame:?];
  [(UIView *)self bounds];
  [(UIView *)self->_restrictedContentView setFrame:?];
}

- (UIKeyboardStickerRestrictedContentView)restrictedContentView
{
  restrictedContentView = self->_restrictedContentView;
  if (!restrictedContentView)
  {
    v4 = [UIKeyboardStickerRestrictedContentView alloc];
    [(UIView *)self bounds];
    v5 = [(UIKeyboardStickerRestrictedContentView *)v4 initWithFrame:?];
    v6 = self->_restrictedContentView;
    self->_restrictedContentView = v5;

    [(UIView *)self->_restrictedContentView setHidden:1];
    contentView = [(UICollectionViewCell *)self contentView];
    [contentView addSubview:self->_restrictedContentView];

    restrictedContentView = self->_restrictedContentView;
  }

  return restrictedContentView;
}

- (void)updateDistributionPermissions
{
  if (self->_imageGlyph && os_variant_has_internal_diagnostics())
  {
    if (self->_isRestrictedContent && (v3 = objc_loadWeakRetained(&self->_cellDelegate), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_cellDelegate);
      self->_allowsDistribution = [WeakRetained didAcceptRestrictedDistributionTerms];

      restrictedContentView = [(UIKeyboardStickerCollectionViewCell *)self restrictedContentView];
      [restrictedContentView isDisplayed:1];

      restrictedContentView2 = [(UIKeyboardStickerCollectionViewCell *)self restrictedContentView];
      [restrictedContentView2 preventContentInteractions:!self->_allowsDistribution];
    }

    else
    {
      self->_allowsDistribution = 1;
      [(UIKeyboardStickerRestrictedContentView *)self->_restrictedContentView isDisplayed:0];
      restrictedContentView = self->_restrictedContentView;

      [(UIKeyboardStickerRestrictedContentView *)restrictedContentView preventContentInteractions:0];
    }
  }
}

- (void)setIsRestrictedContent:(BOOL)content
{
  if (self->_isRestrictedContent != content)
  {
    self->_isRestrictedContent = content;
    [(UIKeyboardStickerCollectionViewCell *)self updateDistributionPermissions];
  }
}

- (void)resetRestrictedContent
{
  self->_allowsDistribution = 1;
  self->_isRestrictedContent = 0;
  [(UIKeyboardStickerRestrictedContentView *)self->_restrictedContentView isDisplayed:0];
}

- (UIView)rearrangingView
{
  v22[2] = *MEMORY[0x1E69E9840];
  rearrangingView = self->_rearrangingView;
  if (!rearrangingView)
  {
    v4 = [UIView alloc];
    [(UIView *)self bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    v6 = self->_rearrangingView;
    self->_rearrangingView = v5;

    [(UIView *)self->_rearrangingView setClipsToBounds:0];
    [(UIView *)self->_rearrangingView setTranslatesAutoresizingMaskIntoConstraints:0];
    deleteButton = [(UIKeyboardStickerCollectionViewCell *)self deleteButton];
    [deleteButton setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = self->_rearrangingView;
    deleteButton2 = [(UIKeyboardStickerCollectionViewCell *)self deleteButton];
    [(UIView *)v8 addSubview:deleteButton2];

    v20 = MEMORY[0x1E69977A0];
    deleteButton3 = [(UIKeyboardStickerCollectionViewCell *)self deleteButton];
    centerXAnchor = [deleteButton3 centerXAnchor];
    leadingAnchor = [(UIView *)self->_rearrangingView leadingAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:0.0];
    v22[0] = v12;
    deleteButton4 = [(UIKeyboardStickerCollectionViewCell *)self deleteButton];
    centerYAnchor = [deleteButton4 centerYAnchor];
    topAnchor = [(UIView *)self->_rearrangingView topAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:0.0];
    v22[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v20 activateConstraints:v17];

    contentView = [(UICollectionViewCell *)self contentView];
    [contentView addSubview:self->_rearrangingView];

    [(UIView *)self->_rearrangingView setHidden:1];
    [(UIView *)self->_rearrangingView addGestureRecognizer:self->_rearrangeViewTapGR];
    rearrangingView = self->_rearrangingView;
  }

  return rearrangingView;
}

- (void)_reportRearrangeStateChanged:(BOOL)changed
{
  changedCopy = changed;
  delegate = [(UIKeyboardStickerCollectionViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIKeyboardStickerCollectionViewCell *)self delegate];
    [delegate2 rearrangeStateChanged:changedCopy];
  }
}

- (UIButton)deleteButton
{
  deleteButton = self->_deleteButton;
  if (!deleteButton)
  {
    v4 = [UIImage systemImageNamed:@"minus"];
    v5 = +[UIButtonConfiguration plainButtonConfiguration];
    v6 = +[UIColor systemGrayColor];
    v7 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v6];
    v8 = [v4 imageByApplyingSymbolConfiguration:v7];

    v9 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:1 scale:15.0];
    v10 = [v8 imageByApplyingSymbolConfiguration:v9];

    v11 = +[UIBackgroundConfiguration clearConfiguration];
    v12 = [UIBlurEffect effectWithStyle:5];
    [v11 setVisualEffect:v12];

    [v5 setBackground:v11];
    [v5 setButtonSize:1];
    [v5 setContentInsets:{3.0, 3.0, 3.0, 3.0}];
    [v5 setImage:v10];
    [v5 setCornerStyle:4];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__UIKeyboardStickerCollectionViewCell_deleteButton__block_invoke;
    v17[3] = &unk_1E70F4708;
    v17[4] = self;
    v13 = [UIAction actionWithHandler:v17];
    v14 = [UIButton buttonWithConfiguration:v5 primaryAction:v13];
    v15 = self->_deleteButton;
    self->_deleteButton = v14;

    deleteButton = self->_deleteButton;
  }

  return deleteButton;
}

uint64_t __51__UIKeyboardStickerCollectionViewCell_deleteButton__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = +[_UISignalAnalytics getIASignalGenmojiEdit];
  v3 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
  v9[0] = v3;
  v4 = [_UISignalAnalytics getIAGenmojiImageTypeFromImageGlyph:*(*(a1 + 32) + 664)];
  v10[0] = v4;
  v5 = +[_UISignalAnalytics getIAPayloadKeyGenmojiEditType];
  v9[1] = v5;
  v6 = +[_UISignalAnalytics getIAPayloadValueGenmojiEditTypeDelete];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [_UISignalAnalytics sendGenmojiSignal:v2 payload:v7];

  return [*(a1 + 32) _performDeleteAction];
}

- (void)_showRearrangeViewIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  rearrangingView = [(UIKeyboardStickerCollectionViewCell *)self rearrangingView];
  [rearrangingView setHidden:!necessaryCopy];
}

- (void)_startRearrange
{
  [(UIKeyboardStickerCollectionViewCell *)self _startJiggle];

  [(UIKeyboardStickerCollectionViewCell *)self _showRearrangeViewIfNecessary:1];
}

- (void)_endRearrange
{
  [(UIKeyboardStickerCollectionViewCell *)self _endJiggle];

  [(UIKeyboardStickerCollectionViewCell *)self _showRearrangeViewIfNecessary:0];
}

- (void)_performDeleteAction
{
  sharedInstance = [getSTKImageGlyphDataSourceClass() sharedInstance];
  imageGlyph = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  [sharedInstance deleteItem:imageGlyph completionHandler:&__block_literal_global_273];
}

- (void)_didTapDuringRearrange:(id)rearrange
{
  if ([rearrange state] == 3)
  {

    [(UIKeyboardStickerCollectionViewCell *)self _reportRearrangeStateChanged:0];
  }
}

- (void)didLongPress:(id)press
{
  if (!self->_rearrangeMode && ![(UIKeyboardStickerCollectionViewCell *)self isEmptyCell])
  {
    [(UIView *)self frame];
    v6 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v4 * 0.5, 0.0];
    [v6 set_ignoresKeyboardAvoidance:1];
    editMenuInteraction = [(UIKeyboardStickerCollectionViewCell *)self editMenuInteraction];
    [editMenuInteraction presentEditMenuWithConfiguration:v6];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = UIKeyboardStickerCollectionViewCell;
  v8 = [(UIView *)&v13 hitTest:eventCopy withEvent:x, y];
  v9 = v8;
  if (self->_rearrangeMode)
  {
    p_deleteButton = &self->_deleteButton;
    [(UIView *)self->_deleteButton convertPoint:self fromView:x, y];
    if ([(UIView *)self->_deleteButton pointInside:eventCopy withEvent:?])
    {
LABEL_5:
      v9 = *p_deleteButton;
      goto LABEL_6;
    }

    v9 = v8;
    if (v8 == self->_stickerView)
    {
      p_deleteButton = &self->_rearrangingView;
      goto LABEL_5;
    }
  }

LABEL_6:
  v11 = v9;

  return v9;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v6 = [(UIKeyboardStickerCollectionViewCell *)self cellDelegate:interaction];
  isSearching = [v6 isSearching];

  if ((isSearching & 1) != 0 || (-[UIKeyboardStickerCollectionViewCell imageGlyph](self, "imageGlyph"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 type], v8, v9 != 1))
  {
    v21 = 0;
    goto LABEL_14;
  }

  sharedInstance = [getSTKImageGlyphDataSourceClass() sharedInstance];
  imageGlyph = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  v12 = [sharedInstance indexPathForItem:imageGlyph];

  v38 = v12;
  v39 = sharedInstance;
  v13 = [sharedInstance isStickerSection:{objc_msgSend(v12, "section")}];
  imageGlyph2 = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  v15 = [imageGlyph2 stickerSourceType] == 1;

  imageGlyph3 = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  v35 = [imageGlyph3 stickerSourceType] == 6;

  allowsRearrange = [(UIKeyboardStickerCollectionViewCell *)self allowsRearrange];
  imageGlyph4 = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  stickerEffectType = [imageGlyph4 stickerEffectType];

  v19 = _UINSLocalizedStringWithDefaultValue(@"Rearrange", @"Rearrange");
  v42[5] = MEMORY[0x1E69E9820];
  v42[6] = 3221225472;
  v42[7] = __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
  v42[8] = &unk_1E70F4708;
  v42[9] = self;
  v37 = v19;
  v36 = [UIAction actionWithTitle:"actionWithTitle:image:identifier:handler:" image:? identifier:? handler:?];
  if (stickerEffectType)
  {
    v20 = @"Edit Effect";
  }

  else
  {
    v20 = @"Add Effect";
  }

  v22 = _UINSLocalizedStringWithDefaultValue(v20, v20);
  v23 = v15 & v13;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_2;
  v42[3] = &unk_1E70F4708;
  v42[4] = self;
  v34 = v22;
  v24 = [UIAction actionWithTitle:v22 image:0 identifier:0 handler:v42];
  v25 = _UINSLocalizedStringWithDefaultValue(@"New Emoji", @"New Emoji");
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_3;
  v41[3] = &unk_1E70F4708;
  v41[4] = self;
  v26 = [UIAction actionWithTitle:v25 image:0 identifier:0 handler:v41];
  v27 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_4;
  v40[3] = &unk_1E70F4708;
  v40[4] = self;
  v28 = [UIAction actionWithTitle:v27 image:0 identifier:0 handler:v40];
  [v28 setAttributes:2];
  v29 = objc_opt_new();
  v30 = v29;
  if (allowsRearrange)
  {
    [v29 addObject:v36];
  }

  v31 = v35 & v13;
  if (!v23)
  {
    if (!v31)
    {
      goto LABEL_11;
    }

LABEL_18:
    [v30 addObject:v26];
    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v30 addObject:v24];
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v13)
  {
LABEL_12:
    [v30 addObject:v28];
  }

LABEL_13:
  v21 = [UIMenu menuWithChildren:v30];

LABEL_14:

  return v21;
}

void __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_UISignalAnalytics getIASignalGenmojiEdit];
  v5 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
  v10[0] = v5;
  v6 = [_UISignalAnalytics getIAGenmojiImageTypeFromImageGlyph:*(*(a1 + 32) + 664)];
  v11[0] = v6;
  v7 = +[_UISignalAnalytics getIAPayloadKeyGenmojiEditType];
  v10[1] = v7;
  v8 = +[_UISignalAnalytics getIAPayloadValueGenmojiEditTypeRearrange];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [_UISignalAnalytics sendGenmojiSignal:v4 payload:v9];

  [*(a1 + 32) tappedRearrange:v3];
}

void __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[_UISignalAnalytics getIASignalGenmojiExistingGenmojiLongPressedThenNewEmojiSelected];
  [_UISignalAnalytics sendGenmojiCreationSignal:v3 payload:0];

  [*(a1 + 32) tappedNewEmoji:v4];
}

void __97__UIKeyboardStickerCollectionViewCell_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_4(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_UISignalAnalytics getIASignalGenmojiEdit];
  v5 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
  v10[0] = v5;
  v6 = [_UISignalAnalytics getIAGenmojiImageTypeFromImageGlyph:*(*(a1 + 32) + 664)];
  v11[0] = v6;
  v7 = +[_UISignalAnalytics getIAPayloadKeyGenmojiEditType];
  v10[1] = v7;
  v8 = +[_UISignalAnalytics getIAPayloadValueGenmojiEditTypeDelete];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [_UISignalAnalytics sendGenmojiSignal:v4 payload:v9];

  [*(a1 + 32) tappedDelete:v3];
}

- (void)tappedRearrange:(id)rearrange
{
  if (!self->_rearrangeMode)
  {
    [(UIKeyboardStickerCollectionViewCell *)self _reportRearrangeStateChanged:1];
  }
}

- (void)tappedAddEffect:(id)effect
{
  v34[1] = *MEMORY[0x1E69E9840];
  stickerView = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  window = [stickerView window];
  stickerView2 = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  [stickerView2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  stickerView3 = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  [window convertRect:stickerView3 fromView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  imageGlyph = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  stickerUUID = [imageGlyph stickerUUID];
  v33 = @"UIEmojiAndStickerShouldEditNotificationUserInfoSourceRectKey";
  v32[0] = v17;
  v32[1] = v19;
  v32[2] = v21;
  v32[3] = v23;
  v27 = [MEMORY[0x1E696B098] valueWithBytes:v32 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v34[0] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [defaultCenter postNotificationName:@"UIEmojiAndStickerShouldEditNotification" object:stickerUUID userInfo:v28];

  stickerView4 = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  [stickerView4 setAlpha:0.0];

  v30[4] = self;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __55__UIKeyboardStickerCollectionViewCell_tappedAddEffect___block_invoke;
  v31[3] = &unk_1E70F3590;
  v31[4] = self;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __55__UIKeyboardStickerCollectionViewCell_tappedAddEffect___block_invoke_2;
  v30[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:v31 animations:v30 completion:0.5];
}

void __55__UIKeyboardStickerCollectionViewCell_tappedAddEffect___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stickerView];
  [v1 setAlpha:0.001];
}

void __55__UIKeyboardStickerCollectionViewCell_tappedAddEffect___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) stickerView];
  [v1 setAlpha:1.0];
}

- (void)tappedNewEmoji:(id)emoji
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  imageGlyph = [(UIKeyboardStickerCollectionViewCell *)self imageGlyph];
  stickerUUID = [imageGlyph stickerUUID];
  [defaultCenter postNotificationName:@"UIEmojiAndStickerShouldCreateNotification" object:stickerUUID userInfo:0];
}

- (void)_startJiggle
{
  [(UIView *)self bounds];
  Height = CGRectGetHeight(v12);
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v13);
  if (Height >= Width)
  {
    Width = Height;
  }

  v5 = fmin(1.0 / (Width / 100.0), 1.0);
  v10 = [(UIKeyboardStickerCollectionViewCell *)self _jiggleAnimationWithVariation:@"transform.translation.x" keyPath:0.4 duration:0.134];
  v6 = [(UIKeyboardStickerCollectionViewCell *)self _jiggleAnimationWithVariation:@"transform.translation.y" keyPath:0.4 duration:0.142];
  v7 = [(UIKeyboardStickerCollectionViewCell *)self _jiggleAnimationWithVariation:@"transform.rotation" keyPath:v5 * -0.03 duration:0.128];
  stickerView = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  layer = [stickerView layer];
  [layer addAnimation:v10 forKey:@"XTranslationJitterAnimation"];
  [layer addAnimation:v6 forKey:@"YTranslationJitterAnimation"];
  [layer addAnimation:v7 forKey:@"RotationJitterAnimation"];
  if (objc_opt_respondsToSelector())
  {
    [stickerView setIsDragInteractionEnabled:0];
  }
}

- (void)_endJiggle
{
  stickerView = [(UIKeyboardStickerCollectionViewCell *)self stickerView];
  layer = [stickerView layer];
  [layer removeAllAnimations];

  if (objc_opt_respondsToSelector())
  {
    [stickerView setIsDragInteractionEnabled:1];
  }
}

- (id)_jiggleAnimationWithVariation:(double)variation keyPath:(id)path duration:(double)duration
{
  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:path];
  [v7 setDuration:duration];
  [v7 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:variation];
  [v7 setFromValue:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:-variation];
  [v7 setToValue:v9];

  LODWORD(v10) = 1052266988;
  LODWORD(v11) = 1059145646;
  LODWORD(v12) = 1.0;
  v13 = [MEMORY[0x1E69793D0] functionWithControlPoints:v10 :0.0 :v11 :v12];
  [v7 setTimingFunction:v13];

  LODWORD(v14) = 2139095040;
  [v7 setRepeatCount:v14];
  [v7 setAutoreverses:1];
  [v7 setRemovedOnCompletion:0];

  return v7;
}

- (UIKeyboardEmojiAndStickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIKeyboardEmojiAndStickerCollectionViewDelegate)cellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cellDelegate);

  return WeakRetained;
}

@end
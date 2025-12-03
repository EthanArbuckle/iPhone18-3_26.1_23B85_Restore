@interface PXActionableSectionHeaderView
- (BOOL)_wantsActionButton;
- (BOOL)_wantsOverBackgroundBehavior;
- (BOOL)_wantsSecondaryButton;
- (CGRect)clippingRect;
- (NSString)primaryText;
- (NSString)secondaryText;
- (PXActionableSectionHeaderView)initWithFrame:(CGRect)frame;
- (PXActionableSectionHeaderViewDelegate)delegate;
- (PXSimpleIndexPath)sectionIndexPath;
- (UIControl)currentActionButton;
- (UIEdgeInsets)contentInsets;
- (double)baselineToBottomSpacing;
- (double)heightForSizeClass:(int64_t)class width:(double)width safeAreaInsets:(UIEdgeInsets)insets;
- (id)_backdropButtonForegroundColor;
- (id)traitCollection;
- (int64_t)layoutMode;
- (int64_t)layoutModeForHorizontalSizeClass:(int64_t)class;
- (void)_actionButtonPressed:(id)pressed;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_updateActionButtonAnimated:(BOOL)animated;
- (void)_updateActionButtonConfiguration;
- (void)_updateActionButtonEnabledAnimated:(BOOL)animated;
- (void)_updateBackdropActionButton;
- (void)_updateBackdropViewGroupName;
- (void)_updateBackgroundAnimated:(BOOL)animated;
- (void)_updateFilterButton;
- (void)_updateLabelColors;
- (void)_updateLabelFonts;
- (void)_updateLabelLineNumbers;
- (void)_updateSecondaryButtonAnimated:(BOOL)animated;
- (void)_updateSpacerLabelHiddenState;
- (void)_updateSystemActionButton;
- (void)_updateWithCurrentTraits;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performChangesToGroupedBackgroundPropertiesAnimated:(BOOL)animated withBlock:(id)block;
- (void)setAccessibilityIdentifierWithValue:(id)value;
- (void)setActionButtonEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setActionText:(id)text;
- (void)setAvoidsTintedButtonsAtHighSpeed:(BOOL)speed;
- (void)setBackdropButtonSpec:(id)spec;
- (void)setBackdropViewGroupName:(id)name;
- (void)setBackgroundImage:(id)image;
- (void)setBackgroundImageAlpha:(double)alpha;
- (void)setBackgroundImageOverhang:(double)overhang;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setBounds:(CGRect)bounds;
- (void)setButtonStyle:(unint64_t)style;
- (void)setClippingRect:(CGRect)rect;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setDelegate:(id)delegate;
- (void)setFilterButtonControllerFactory:(id)factory;
- (void)setFrame:(CGRect)frame;
- (void)setPreferredUserInterfaceStyle:(int64_t)style;
- (void)setPrimaryText:(id)text;
- (void)setSecondarySymbolName:(id)name;
- (void)setSecondaryText:(id)text;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelfSizingTraits:(id)traits;
- (void)setShowsActionButton:(BOOL)button animated:(BOOL)animated;
- (void)setShowsSecondaryButton:(BOOL)button animated:(BOOL)animated;
- (void)setShowsTopSeparator:(BOOL)separator;
- (void)setSpeedRegime:(int64_t)regime;
- (void)setSupportsMultipleLinesInCompactLayout:(BOOL)layout;
- (void)setUserData:(id)data;
- (void)setWantsBackground:(BOOL)background animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSecondaryLabel;
@end

@implementation PXActionableSectionHeaderView

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      px_descriptionForAssertionMessage = [dataCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:534 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v20, px_descriptionForAssertionMessage}];
    }
  }

  v6 = objc_getAssociatedObject(self, UserDataAssociationKey);
  if (v6 != dataCopy)
  {
    objc_setAssociatedObject(self, UserDataAssociationKey, dataCopy, 3);
    -[PXActionableSectionHeaderView setBackgroundStyle:](self, "setBackgroundStyle:", [dataCopy backgroundStyle]);
    -[PXActionableSectionHeaderView setButtonStyle:](self, "setButtonStyle:", [dataCopy buttonStyle]);
    primaryText = [dataCopy primaryText];
    [(PXActionableSectionHeaderView *)self setPrimaryText:primaryText];

    secondaryText = [dataCopy secondaryText];
    [(PXActionableSectionHeaderView *)self setSecondaryText:secondaryText];

    [dataCopy edgeInsets];
    [(PXActionableSectionHeaderView *)self setContentInsets:?];
    weakLayout = [dataCopy weakLayout];
    [(PXActionableSectionHeaderView *)self setDelegate:weakLayout];
    actionText = [dataCopy actionText];
    [(PXActionableSectionHeaderView *)self setActionText:actionText];

    backdropViewGroupName = [dataCopy backdropViewGroupName];
    [(PXActionableSectionHeaderView *)self setBackdropViewGroupName:backdropViewGroupName];

    gradientImage = [dataCopy gradientImage];
    [(PXActionableSectionHeaderView *)self setBackgroundImage:gradientImage];

    [dataCopy gradientAlpha];
    [(PXActionableSectionHeaderView *)self setBackgroundImageAlpha:?];
    [dataCopy gradientOverhang];
    [(PXActionableSectionHeaderView *)self setBackgroundImageOverhang:?];
    buttonSpec = [dataCopy buttonSpec];
    [(PXActionableSectionHeaderView *)self setBackdropButtonSpec:buttonSpec];

    filterButtonControllerFactory = [dataCopy filterButtonControllerFactory];
    [(PXActionableSectionHeaderView *)self setFilterButtonControllerFactory:filterButtonControllerFactory];

    if (dataCopy)
    {
      [dataCopy sectionIndexPath];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v24[0] = v25;
    v24[1] = v26;
    [(PXActionableSectionHeaderView *)self setSectionIndexPath:v24];
    -[PXActionableSectionHeaderView setAvoidsTintedButtonsAtHighSpeed:](self, "setAvoidsTintedButtonsAtHighSpeed:", [dataCopy avoidsTintedButtonsAtHighSpeeds]);
    -[PXActionableSectionHeaderView setSupportsMultipleLinesInCompactLayout:](self, "setSupportsMultipleLinesInCompactLayout:", [dataCopy supportsMultipleLinesInCompactLayout]);
    -[PXActionableSectionHeaderView setPreferredUserInterfaceStyle:](self, "setPreferredUserInterfaceStyle:", [dataCopy preferredUserInterfaceStyle]);
    scrollSpeedRegime = [weakLayout scrollSpeedRegime];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PXActionableSectionHeaderView_PXGReusableView__setUserData___block_invoke;
    v22[3] = &unk_1E774C620;
    v16 = scrollSpeedRegime < 2;
    v22[4] = self;
    v23 = weakLayout;
    v17 = weakLayout;
    [(PXActionableSectionHeaderView *)self performChangesToGroupedBackgroundPropertiesAnimated:v16 withBlock:v22];
    -[PXActionableSectionHeaderView setShowsActionButton:animated:](self, "setShowsActionButton:animated:", [dataCopy showsActionButton], v16);
    -[PXActionableSectionHeaderView setShowsSecondaryButton:animated:](self, "setShowsSecondaryButton:animated:", [dataCopy showsSecondaryButton], v16);
  }
}

uint64_t __62__PXActionableSectionHeaderView_PXGReusableView__setUserData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSpeedRegime:{objc_msgSend(*(a1 + 40), "scrollSpeedRegime")}];
  v2 = [*(a1 + 40) wantsBackground];
  v3 = *(a1 + 32);

  return [v3 setWantsBackground:v2];
}

- (CGRect)clippingRect
{
  v2 = *MEMORY[0x1E695F040];
  v3 = *(MEMORY[0x1E695F040] + 8);
  v4 = *(MEMORY[0x1E695F040] + 16);
  v5 = *(MEMORY[0x1E695F040] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setClippingRect:(CGRect)rect
{
  if (!CGRectEqualToRect(rect, *MEMORY[0x1E695F040]))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderLayoutProvider+iOS.m" lineNumber:526 description:@"Clipping isn't supported"];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[22].item;
  *&retstr->dataSourceIdentifier = *&self[22].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXActionableSectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)layoutModeForHorizontalSizeClass:(int64_t)class
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return ((class == 1) | IsAccessibilityCategory) & 1;
}

- (int64_t)layoutMode
{
  traitCollection = [(PXActionableSectionHeaderView *)self traitCollection];
  v4 = -[PXActionableSectionHeaderView layoutModeForHorizontalSizeClass:](self, "layoutModeForHorizontalSizeClass:", [traitCollection horizontalSizeClass]);

  return v4;
}

- (void)_updateBackdropViewGroupName
{
  if (self->_inLayoutTransition || ![(PXActionableSectionHeaderView *)self wantsBackground])
  {
    backdropViewGroupName = 0;
  }

  else
  {
    backdropViewGroupName = [(PXActionableSectionHeaderView *)self backdropViewGroupName];
  }

  v4 = backdropViewGroupName;
  [(UIVisualEffectView *)self->_visualEffectView _setGroupName:backdropViewGroupName];
}

- (void)_updateBackgroundAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PXActionableSectionHeaderView *)self backgroundStyle])
  {
    v5 = 528;
    if (animatedCopy)
    {
      visualEffectView = self->_visualEffectView;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_3;
      v34[3] = &unk_1E774C648;
      v34[4] = self;
      [MEMORY[0x1E69DD250] transitionWithView:visualEffectView duration:5439488 options:v34 animations:0 completion:0.3];
    }

    else
    {
      [(UIVisualEffectView *)self->_visualEffectView setHidden:1];
    }
  }

  else
  {
    v7 = MEMORY[0x1E69DC730];
    if ([(PXActionableSectionHeaderView *)self preferredUserInterfaceStyle]== 2)
    {
      v8 = 20;
    }

    else
    {
      v8 = 10;
    }

    v9 = [v7 effectWithStyle:v8];
    v5 = 528;
    v10 = self->_visualEffectView;
    if (v10)
    {
      [(UIVisualEffectView *)v10 setEffect:v9];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v9];
      v12 = self->_visualEffectView;
      self->_visualEffectView = v11;

      if (MEMORY[0x1A590D320]())
      {
        [(UIVisualEffectView *)self->_visualEffectView _setCornerRadius:0 continuous:-1 maskedCorners:5.0];
      }
    }

    superview = [(UIVisualEffectView *)self->_visualEffectView superview];

    if (superview != self)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke;
      v36[3] = &unk_1E774C648;
      v36[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v36];
    }

    if (animatedCopy)
    {
      v14 = self->_visualEffectView;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_2;
      v35[3] = &unk_1E774C648;
      v35[4] = self;
      [MEMORY[0x1E69DD250] transitionWithView:v14 duration:5439488 options:v35 animations:0 completion:0.3];
    }

    else
    {
      [(UIVisualEffectView *)self->_visualEffectView setHidden:0];
    }

    [(PXActionableSectionHeaderView *)self _updateBackdropViewGroupName];
  }

  if ([(PXActionableSectionHeaderView *)self backgroundStyle]!= 1 || ([(PXActionableSectionHeaderView *)self backgroundImage], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, v17 = [(PXActionableSectionHeaderView *)self wantsBackground], v16, !v17))
  {
LABEL_23:
    if (!self->_hasBackgroundView)
    {
      goto LABEL_28;
    }

    self->_hasBackgroundView = 0;
    if (animatedCopy)
    {
      v18 = MEMORY[0x1E69DD250];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_6;
      v31[3] = &unk_1E774C648;
      v31[4] = self;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_7;
      v30[3] = &unk_1E774B308;
      v30[4] = self;
      v19 = v31;
      v20 = v30;
LABEL_26:
      [v18 animateWithDuration:196608 delay:v19 options:v20 animations:0.3 completion:0.0];
      goto LABEL_28;
    }

    [(UIImageView *)self->_backgroundImageView setHidden:1];
    goto LABEL_28;
  }

  if ([(PXActionableSectionHeaderView *)self _isMovingFast])
  {
    if (self->_hasBackgroundView)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (!self->_hasBackgroundView)
  {
    self->_hasBackgroundView = 1;
    backgroundImageView = self->_backgroundImageView;
    if (!backgroundImageView)
    {
      v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v25 = [v24 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v26 = self->_backgroundImageView;
      self->_backgroundImageView = v25;

      [(UIImageView *)self->_backgroundImageView setAlpha:0.0];
      backgroundImageView = self->_backgroundImageView;
    }

    superview2 = [(UIImageView *)backgroundImageView superview];

    if (superview2 != self)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_4;
      v33[3] = &unk_1E774C648;
      v33[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v33];
    }

    isHidden = [(UIImageView *)self->_backgroundImageView isHidden];
    [(UIImageView *)self->_backgroundImageView setHidden:0];
    backgroundImage = [(PXActionableSectionHeaderView *)self backgroundImage];
    [(UIImageView *)self->_backgroundImageView setImage:backgroundImage];

    if (animatedCopy)
    {
      if (isHidden)
      {
        [(UIImageView *)self->_backgroundImageView setAlpha:0.0];
      }

      v18 = MEMORY[0x1E69DD250];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_5;
      v32[3] = &unk_1E774C648;
      v32[4] = self;
      v19 = v32;
      v20 = 0;
      goto LABEL_26;
    }

    [(PXActionableSectionHeaderView *)self backgroundImageAlpha];
    [(UIImageView *)self->_backgroundImageView setAlpha:?];
  }

LABEL_28:
  backgroundStyle = [(PXActionableSectionHeaderView *)self backgroundStyle];
  if (backgroundStyle != 1)
  {
    if (backgroundStyle)
    {
      return;
    }

    v5 = 688;
  }

  [*(&self->super.super.super.super.isa + v5) removeFromSuperview];
  v22 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = 0;
}

uint64_t __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 528)];
  v2 = *(a1 + 32);
  v3 = v2[66];

  return [v2 sendSubviewToBack:v3];
}

uint64_t __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 688)];
  v2 = *(a1 + 32);
  v3 = v2[86];

  return [v2 sendSubviewToBack:v3];
}

uint64_t __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) backgroundImageAlpha];
  v2 = *(*(a1 + 32) + 688);

  return [v2 setAlpha:?];
}

uint64_t __59__PXActionableSectionHeaderView__updateBackgroundAnimated___block_invoke_7(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 688) setHidden:1];
  }

  return result;
}

- (void)_updateSpacerLabelHiddenState
{
  primaryText = [(PXActionableSectionHeaderView *)self primaryText];
  v6 = !primaryText || (v4 = primaryText, [(PXActionableSectionHeaderView *)self secondaryText], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5) || [(PXActionableSectionHeaderView *)self layoutMode]== 1;
  spacerLabel = [(PXActionableSectionHeaderView *)self spacerLabel];
  [spacerLabel setHidden:v6];

  [(PXActionableSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateLabelColors
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:labelColor];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_spacerLabel setTextColor:systemGrayColor];

  systemGrayColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_secondaryLabel setTextColor:systemGrayColor2];
}

- (void)_updateLabelLineNumbers
{
  if ([(PXActionableSectionHeaderView *)self layoutMode]== 1)
  {
    if ([(PXActionableSectionHeaderView *)self supportsMultipleLinesInCompactLayout])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  primaryLabel = [(PXActionableSectionHeaderView *)self primaryLabel];
  numberOfLines = [primaryLabel numberOfLines];

  if (v3 != numberOfLines)
  {
    primaryLabel2 = [(PXActionableSectionHeaderView *)self primaryLabel];
    [primaryLabel2 setNumberOfLines:v3];

    [(PXActionableSectionHeaderView *)self setNeedsLayout];
  }

  secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
  numberOfLines2 = [secondaryLabel numberOfLines];

  if (v3 != numberOfLines2)
  {
    secondaryLabel2 = [(PXActionableSectionHeaderView *)self secondaryLabel];
    [secondaryLabel2 setNumberOfLines:v3];

    [(PXActionableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateLabelFonts
{
  primaryLabel = [(PXActionableSectionHeaderView *)self primaryLabel];
  v4 = MEMORY[0x1A590C430](5, 0x8000, 7);
  [primaryLabel setFont:v4];

  secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
  _PXConfigureHeaderSubtitleLabel(secondaryLabel);

  spacerLabel = [(PXActionableSectionHeaderView *)self spacerLabel];
  _PXConfigureHeaderSubtitleLabel(spacerLabel);

  [(PXActionableSectionHeaderView *)self _updateSystemActionButton];

  [(PXActionableSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateWithCurrentTraits
{
  [(PXActionableSectionHeaderView *)self _updateLabelLineNumbers];

  [(PXActionableSectionHeaderView *)self _updateSpacerLabelHiddenState];
}

- (void)_actionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(PXActionableSectionHeaderView *)self actionButtonEnabled]&& (*&self->_delegateFlags & 1) != 0)
  {
    delegate = [(PXActionableSectionHeaderView *)self delegate];
    [delegate headerViewDidPressActionButton:pressedCopy inHeaderView:self];
  }
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  [(PXActionableSectionHeaderView *)self _updateLabelFonts];
  [(PXActionableSectionHeaderView *)self _updateLabelLineNumbers];

  [(PXActionableSectionHeaderView *)self _updateSpacerLabelHiddenState];
}

- (void)layoutSubviews
{
  v295.receiver = self;
  v295.super_class = PXActionableSectionHeaderView;
  [(PXActionableSectionHeaderView *)&v295 layoutSubviews];
  [(PXActionableSectionHeaderView *)self contentInsets];
  [(PXActionableSectionHeaderView *)self safeAreaInsets];
  UIEdgeInsetsAdd();
  [(PXActionableSectionHeaderView *)self layoutMargins];
  UIEdgeInsetsMax();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXActionableSectionHeaderView *)self bounds];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  v19 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  v21 = *(MEMORY[0x1E695F058] + 16);
  v22 = *(MEMORY[0x1E695F058] + 24);
  [(PXActionableSectionHeaderView *)self bounds];
  v233 = v24;
  v234 = v23;
  v231 = v26;
  v232 = v25;
  [(PXActionableSectionHeaderView *)self backgroundImageOverhang];
  v230 = v27;
  _wantsActionButton = [(PXActionableSectionHeaderView *)self _wantsActionButton];
  _wantsSecondaryButton = [(PXActionableSectionHeaderView *)self _wantsSecondaryButton];
  v242 = v14;
  v235 = v16;
  v274 = v18;
  rect = v12;
  if ([(PXActionableSectionHeaderView *)self layoutMode]!= 1)
  {
    v48 = v21;
    if (_wantsActionButton || _wantsSecondaryButton)
    {
      v49 = v16;
      v50 = v22;
      v272 = v48;
      v287 = v20;
      x = v19;
      if (_wantsActionButton)
      {
        currentActionButton = [(PXActionableSectionHeaderView *)self currentActionButton];
        [currentActionButton sizeToFit];

        currentActionButton2 = [(PXActionableSectionHeaderView *)self currentActionButton];
        [currentActionButton2 frame];
        v281 = v20;

        UIRectCenteredYInRect();
        v288 = v54;
        v292 = v55;
        v57 = v56;
        v59 = v58;
        v299.origin.x = rect;
        v299.origin.y = v242;
        v299.size.width = v16;
        v299.size.height = v274;
        MaxX = CGRectGetMaxX(v299);
        v300.origin.x = v288;
        v300.origin.y = v57;
        v300.size.width = v59;
        v300.size.height = v292;
        v301.origin.x = MaxX - CGRectGetWidth(v300);
        v20 = v281;
        v287 = v57;
        v301.origin.y = v57;
        v50 = v292;
        v272 = v59;
        v301.size.width = v59;
        x = v301.origin.x;
        v301.size.height = v292;
        v49 = v16 - CGRectGetWidth(v301);
      }

      v291 = v50;
      if (_wantsSecondaryButton)
      {
        v282 = v49;
        currentSecondaryButton = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
        [currentSecondaryButton sizeToFit];

        currentSecondaryButton2 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
        [currentSecondaryButton2 frame];

        v63 = v274;
        UIRectCenteredYInRect();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v302.origin.x = rect;
        v302.origin.y = v242;
        v72 = v67;
        v302.size.width = v235;
        v302.size.height = v274;
        v73 = CGRectGetMaxX(v302);
        v303.origin.x = v65;
        v303.origin.y = v72;
        v303.size.width = v69;
        v303.size.height = v71;
        v74 = v73 - CGRectGetWidth(v303);
        if (_wantsActionButton)
        {
          v304.origin.x = v74;
          v304.origin.y = v72;
          v304.size.width = v69;
          v304.size.height = v71;
          x = x - (CGRectGetWidth(v304) + 8.0);
        }

        v270 = x;
        v236 = v74;
        v238 = v69;
        v305.origin.x = v74;
        v225 = v72;
        v305.origin.y = v72;
        v305.size.width = v69;
        v240 = v71;
        v305.size.height = v71;
        v49 = v282 - (CGRectGetWidth(v305) + 8.0);
        v14 = v242;
        v12 = rect;
LABEL_23:
        primaryLabel = [(PXActionableSectionHeaderView *)self primaryLabel];
        [primaryLabel sizeToFit];

        spacerLabel = [(PXActionableSectionHeaderView *)self spacerLabel];
        [spacerLabel sizeToFit];

        secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
        [secondaryLabel sizeToFit];

        primaryLabel2 = [(PXActionableSectionHeaderView *)self primaryLabel];
        [primaryLabel2 frame];
        UIRectCenteredYInRect();
        v251 = v119;
        v268 = v120;
        v278 = v121;

        spacerLabel2 = [(PXActionableSectionHeaderView *)self spacerLabel];
        [spacerLabel2 frame];
        UIRectCenteredYInRect();
        v283 = v123;
        v255 = v125;
        v258 = v124;

        secondaryLabel2 = [(PXActionableSectionHeaderView *)self secondaryLabel];
        [secondaryLabel2 frame];
        UIRectCenteredYInRect();
        v262 = v127;
        v129 = v128;
        rect_16a = v130;

        primaryLabel3 = [(PXActionableSectionHeaderView *)self primaryLabel];
        [primaryLabel3 frame];
        v132 = v14;
        Width = CGRectGetWidth(v313);

        spacerLabel3 = [(PXActionableSectionHeaderView *)self spacerLabel];
        [spacerLabel3 frame];
        v135 = CGRectGetWidth(v314) + 16.0;

        secondaryLabel3 = [(PXActionableSectionHeaderView *)self secondaryLabel];
        [secondaryLabel3 frame];
        v137 = CGRectGetWidth(v315);

        v316.origin.x = v12;
        v316.origin.y = v132;
        v138 = v49;
        v316.size.width = v49;
        v316.size.height = v63;
        v139 = CGRectGetWidth(v316) - v135;
        v140 = v139 * 0.75;
        v141 = v139 - v139 * 0.75;
        if (Width >= v139 * 0.75 || v137 >= v141)
        {
          if (Width >= v140 || v137 < v141)
          {
            if (Width >= v140)
            {
              v142 = v242;
              v86 = v255;
              if (v137 < v141)
              {
                v140 = v139 - v137 - v135;
                v141 = v129;
              }

              goto LABEL_31;
            }

LABEL_30:
            v142 = v242;
            v86 = v255;
LABEL_31:
            v265 = v141;
            rect_24b = v140;
            v143 = rect;
            v144 = v138;
            v145 = v274;
            v317.origin.x = CGRectGetMinX(*(&v142 - 1));
            v146 = v317.origin.x;
            v317.origin.y = v251;
            v317.size.width = v140;
            v317.size.height = v278;
            v84 = CGRectGetMaxX(v317) + 8.0;
            v318.origin.x = v84;
            v90 = v283;
            v318.origin.y = v283;
            v21 = v258;
            v318.size.width = v258;
            v318.size.height = v86;
            v147 = CGRectGetMaxX(v318);
            v89 = v278;
            v81 = v146;
            v82 = v251;
            v267 = v147 + 8.0;
            v85 = rect_16a;
            v88 = rect_24b;
            v87 = v262;
            goto LABEL_32;
          }

          v141 = v139 - Width - v135;
        }

        else
        {
          v141 = v129;
        }

        v140 = v268;
        goto LABEL_30;
      }

      v270 = x;
      v238 = v48;
      v240 = v22;
      v225 = v20;
      v236 = v19;
      v14 = v242;
      v12 = rect;
    }

    else
    {
      v49 = v16;
      v238 = v48;
      v240 = v22;
      v225 = v20;
      v236 = v19;
      v291 = v22;
      v272 = v48;
      v287 = v20;
      v270 = v19;
    }

    v63 = v274;
    goto LABEL_23;
  }

  if (!_wantsActionButton && !_wantsSecondaryButton)
  {
    primaryLabel4 = [(PXActionableSectionHeaderView *)self primaryLabel];
    [primaryLabel4 sizeThatFits:{v16, v18}];
    v77 = v76;
    v276 = v76;

    v306.origin.x = v12;
    v306.origin.y = v14;
    v306.size.width = v16;
    v306.size.height = v77;
    MaxY = CGRectGetMaxY(v306);
    secondaryLabel4 = [(PXActionableSectionHeaderView *)self secondaryLabel];
    [secondaryLabel4 sizeThatFits:{v16, v274}];
    v80 = v79;

    v81 = v12;
    v82 = v14;
    v238 = v21;
    v240 = v22;
    v226 = v20;
    v236 = v19;
    v291 = v22;
    v272 = v21;
    v287 = v20;
    v267 = v12;
    v270 = v19;
    v83 = v20;
    v84 = v19;
    v85 = v80;
    v265 = v16;
    v86 = v22;
    v87 = MaxY;
    v88 = v16;
    v89 = v276;
    v90 = v83;
    goto LABEL_32;
  }

  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v280 = v20;
  v254 = v22;
  v257 = v21;
  rect_16 = v19;
  if (IsAccessibilityCategory)
  {
    primaryLabel5 = [(PXActionableSectionHeaderView *)self primaryLabel];
    [primaryLabel5 sizeThatFits:{v16, v18}];
    v34 = v33;

    v35 = v14;
    v260 = v12;
    v296.origin.x = v12;
    v296.origin.y = v14;
    v296.size.width = v16;
    v296.size.height = v18;
    v36 = CGRectGetWidth(v296);
    v37 = v36;
    v275 = v34;
    rect_24 = v36;
    if (_wantsActionButton)
    {
      currentActionButton3 = [(PXActionableSectionHeaderView *)self currentActionButton];
      [currentActionButton3 sizeToFit];

      currentActionButton4 = [(PXActionableSectionHeaderView *)self currentActionButton];
      [currentActionButton4 frame];
      v41 = v40;
      v286 = v42;

      v297.origin.x = v12;
      v297.origin.y = v35;
      v297.size.width = v16;
      v297.size.height = v18;
      MinX = CGRectGetMinX(v297);
      v298.origin.x = v12;
      v298.origin.y = v35;
      v298.size.width = v37;
      v298.size.height = v34;
      v44 = CGRectGetMaxY(v298);
      v45 = v44 + 8.0;
      if (_wantsSecondaryButton)
      {
        v272 = v41;
        v46 = v286;
        v291 = v286;
        v47 = MinX;
LABEL_45:
        v201 = v46;
        currentSecondaryButton3 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
        [currentSecondaryButton3 sizeToFit];

        currentSecondaryButton4 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
        [currentSecondaryButton4 frame];
        v205 = v204;
        v207 = v206;

        v326.origin.x = v260;
        v326.origin.y = v35;
        v326.size.width = v235;
        v326.size.height = v274;
        MinX = CGRectGetMinX(v326);
        v209 = v242;
        v208 = rect;
        if (_wantsActionButton)
        {
          v208 = v47;
          v209 = v45;
        }

        v210 = v41;
        v211 = v201;
        v199 = CGRectGetMaxY(*&v208) + 8.0;
        v238 = v205;
        v240 = v207;
        v41 = v205;
        v46 = v207;
        v200 = v199;
        v236 = MinX;
        goto LABEL_50;
      }

      v47 = MinX;
      v199 = v44 + 8.0;
      v272 = v41;
      v46 = v286;
      v291 = v286;
      v238 = v257;
      v240 = v22;
      v200 = v280;
      v236 = rect_16;
    }

    else
    {
      v46 = v34;
      v41 = v36;
      v47 = rect_16;
      v45 = v280;
      v272 = v257;
      v291 = v22;
      MinX = v12;
      v199 = v35;
      v238 = v257;
      v240 = v22;
      v200 = v280;
      v236 = rect_16;
      if (_wantsSecondaryButton)
      {
        goto LABEL_45;
      }
    }

LABEL_50:
    v226 = v200;
    v270 = v47;
    v287 = v45;
    v212 = MinX;
    v213 = v41;
    v87 = CGRectGetMaxY(*(&v46 - 3));
    v327.origin.x = v260;
    v327.origin.y = v35;
    v253 = v35;
    v327.size.width = v235;
    v327.size.height = v274;
    v267 = CGRectGetMinX(v327);
    secondaryLabel5 = [(PXActionableSectionHeaderView *)self secondaryLabel];
    [secondaryLabel5 sizeThatFits:{v235, v274}];
    v216 = v215;

    v328.origin.x = v260;
    v328.origin.y = v35;
    v328.size.width = v235;
    v85 = v216;
    v328.size.height = v274;
    v265 = CGRectGetWidth(v328);
    v89 = v275;
    v90 = v280;
    v86 = v254;
    v21 = v257;
    v84 = rect_16;
    v88 = rect_24;
    v82 = v253;
    v81 = v260;
    goto LABEL_32;
  }

  v91 = v22;
  v272 = v21;
  v287 = v20;
  v92 = v19;
  if (_wantsActionButton)
  {
    currentActionButton5 = [(PXActionableSectionHeaderView *)self currentActionButton];
    [currentActionButton5 sizeToFit];

    currentActionButton6 = [(PXActionableSectionHeaderView *)self currentActionButton];
    [currentActionButton6 frame];

    UIRectCenteredYInRect();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v91 = v101;
    v307.origin.x = rect;
    v307.origin.y = v242;
    v307.size.width = v235;
    v307.size.height = v18;
    v102 = CGRectGetMaxX(v307);
    v308.origin.x = v96;
    v19 = rect_16;
    v308.origin.y = v98;
    v308.size.width = v100;
    v308.size.height = v91;
    v92 = v102 - CGRectGetWidth(v308);
    v309.origin.x = v92;
    v287 = v98;
    v309.origin.y = v98;
    v272 = v100;
    v309.size.width = v100;
    v22 = v254;
    v309.size.height = v91;
    v16 = v235 - CGRectGetWidth(v309);
    v21 = v257;
  }

  v291 = v91;
  if (_wantsSecondaryButton)
  {
    v277 = v16;
    currentSecondaryButton5 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
    [currentSecondaryButton5 sizeToFit];

    currentSecondaryButton6 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
    [currentSecondaryButton6 frame];

    UIRectCenteredYInRect();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v310.origin.x = rect;
    v310.origin.y = v242;
    v310.size.width = v235;
    v310.size.height = v18;
    v113 = CGRectGetMaxX(v310);
    v311.origin.x = v106;
    v311.origin.y = v108;
    v311.size.width = v110;
    v311.size.height = v112;
    v114 = v113 - CGRectGetWidth(v311);
    if (_wantsActionButton)
    {
      v312.origin.x = v114;
      v312.origin.y = v108;
      v312.size.width = v110;
      v312.size.height = v112;
      v92 = v92 - (CGRectGetWidth(v312) + 8.0);
    }

    v236 = v114;
    v238 = v110;
    v329.origin.x = v114;
    v229 = v108;
    v329.origin.y = v108;
    v329.size.width = v110;
    v240 = v112;
    v329.size.height = v112;
    v16 = v277 - (CGRectGetWidth(v329) + 8.0);
  }

  else
  {
    v238 = v21;
    v240 = v22;
    v229 = v20;
    v236 = v19;
  }

  v270 = v92;
  v217 = v16 + -8.0;
  primaryLabel6 = [(PXActionableSectionHeaderView *)self primaryLabel];
  [primaryLabel6 sizeThatFits:{v16 + -8.0, v18}];
  v220 = v219;

  v330.origin.x = rect;
  v330.origin.y = v242;
  v330.size.width = v217;
  v330.size.height = v18;
  v221 = CGRectGetWidth(v330);
  v331.origin.x = rect;
  v331.origin.y = v242;
  v331.size.width = v217;
  v331.size.height = v18;
  v267 = CGRectGetMinX(v331);
  v332.origin.x = rect;
  v332.origin.y = v242;
  v332.size.width = v221;
  v332.size.height = v220;
  v264 = CGRectGetMaxY(v332);
  secondaryLabel6 = [(PXActionableSectionHeaderView *)self secondaryLabel];
  [secondaryLabel6 sizeThatFits:{v217, v18}];
  v224 = v223;

  v333.origin.x = rect;
  v333.origin.y = v242;
  v333.size.width = v217;
  v85 = v224;
  v333.size.height = v18;
  v265 = CGRectGetWidth(v333);
  if (v224 == 0.0)
  {
    UIRectCenteredYInRect();
    v81 = rect;
  }

  else
  {
    v81 = rect;
    v82 = v242;
  }

  v90 = v20;
  v86 = v254;
  v21 = v257;
  v84 = rect_16;
  v88 = v221;
  v87 = v264;
  v89 = v220;
LABEL_32:
  v148 = v81;
  v319 = CGRectIntegral(*(&v82 - 1));
  v149 = v319.origin.x;
  v279 = v319.size.width;
  y = v319.origin.y;
  height = v319.size.height;
  v319.origin.x = v84;
  v319.origin.y = v90;
  v319.size.width = v21;
  v319.size.height = v86;
  v320 = CGRectIntegral(v319);
  rect_16b = v320.origin.x;
  rect_24a = v320.size.width;
  v151 = v320.origin.y;
  v252 = v320.size.height;
  v320.size.width = v265;
  v320.origin.x = v267;
  v320.origin.y = v87;
  v320.size.height = v85;
  v321 = CGRectIntegral(v320);
  v256 = v321.origin.x;
  v259 = v321.origin.y;
  v152 = v321.size.width;
  v153 = v321.size.height;
  v321.origin.x = v270;
  v321.size.width = v272;
  v321.origin.y = v287;
  v321.size.height = v291;
  v322 = CGRectIntegral(v321);
  v266 = v322.origin.x;
  v269 = v322.size.height;
  rect_8 = v322.origin.y;
  v154 = v322.size.width;
  v322.origin.x = v236;
  v322.size.width = v238;
  v322.origin.y = v226;
  v322.size.height = v240;
  v323 = CGRectIntegral(v322);
  v155 = v323.origin.x;
  v156 = v323.origin.y;
  v289 = v323.size.width;
  v293 = v323.size.height;
  v271 = v154;
  v263 = v153;
  if ([(PXActionableSectionHeaderView *)self _shouldReverseLayoutDirection])
  {
    v241 = MEMORY[0x1A590CE60](v149, y, v279, height, rect, v242, v235, v274);
    v158 = v157;
    v279 = v159;
    v239 = v160;
    rect_16b = MEMORY[0x1A590CE60](rect_16b, v151, rect_24a, v252, rect, v242, v235, v274);
    rect_24a = v161;
    v227 = v162;
    v252 = v163;
    v256 = MEMORY[0x1A590CE60](v256, v259, v152, v153, rect, v242, v235, v274);
    v259 = v164;
    v237 = v165;
    v263 = v166;
    v266 = MEMORY[0x1A590CE60](v266, rect_8, v154, v269, rect, v242, v235, v274);
    v269 = v167;
    rect_8 = v168;
    v271 = v169;
    v155 = MEMORY[0x1A590CE60](v155, v156, v289, v293, rect, v242, v235, v274);
    v156 = v172;
  }

  else
  {
    v239 = height;
    v241 = v149;
    v227 = v151;
    v237 = v152;
    v158 = y;
    v170 = v289;
    v171 = v293;
  }

  v290 = v170;
  v273 = v155;
  v294 = v171;
  v285 = v158;
  if (MEMORY[0x1A590D320]())
  {
    primaryLabel7 = [(PXActionableSectionHeaderView *)self primaryLabel];
    [primaryLabel7 intrinsicContentSize];
    v175 = v174;
    v177 = v176;

    v324.origin.x = v241;
    v324.origin.y = v158;
    v324.size.width = v175;
    v324.size.height = v177;
    v325 = CGRectInset(v324, -5.0, -2.0);
    v178 = v325.origin.x;
    v179 = v325.origin.y;
    v180 = v325.size.width;
    v181 = v158;
    v182 = v325.size.height;
    v183 = v266;
    if ([(PXActionableSectionHeaderView *)self _shouldReverseLayoutDirection])
    {
      v178 = MEMORY[0x1A590CE60](v178, v179, v180, v182, v241, v181, v279, v239);
      v179 = v184;
      v180 = v185;
      v182 = v186;
    }

    v187 = rect_8;
  }

  else
  {
    [(PXActionableSectionHeaderView *)self bounds];
    v178 = v188;
    v179 = v189;
    v180 = v190;
    v182 = v191;
    v187 = rect_8;
    v183 = v266;
  }

  visualEffectView = [(PXActionableSectionHeaderView *)self visualEffectView];
  [visualEffectView setFrame:{v178, v179, v180, v182}];

  backgroundImageView = [(PXActionableSectionHeaderView *)self backgroundImageView];
  [backgroundImageView setFrame:{v234, v233, v232, v230 + v231}];

  primaryLabel8 = [(PXActionableSectionHeaderView *)self primaryLabel];
  [primaryLabel8 setFrame:{v241, v285, v279, v239}];

  spacerLabel4 = [(PXActionableSectionHeaderView *)self spacerLabel];
  [spacerLabel4 setFrame:{rect_16b, v228, rect_24a, v252}];

  secondaryLabel7 = [(PXActionableSectionHeaderView *)self secondaryLabel];
  [secondaryLabel7 setFrame:{v256, v259, v237, v263}];

  currentActionButton7 = [(PXActionableSectionHeaderView *)self currentActionButton];
  [currentActionButton7 setFrame:{v183, v187, v271, v269}];

  currentSecondaryButton7 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
  [currentSecondaryButton7 setFrame:{v273, v156, v290, v294}];
}

- (double)heightForSizeClass:(int64_t)class width:(double)width safeAreaInsets:(UIEdgeInsets)insets
{
  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:?];
  [(PXActionableSectionHeaderView *)self setSelfSizingTraits:v8];

  [(PXActionableSectionHeaderView *)self contentInsets];
  UIEdgeInsetsMax();
  v9 = *(MEMORY[0x1E695F060] + 8);
  v12 = width - v10 - v11;
  if ([(PXActionableSectionHeaderView *)self layoutModeForHorizontalSizeClass:class]== 1)
  {
    if ([(PXActionableSectionHeaderView *)self _wantsActionButton]|| [(PXActionableSectionHeaderView *)self _wantsSecondaryButton])
    {
      preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (IsAccessibilityCategory)
      {
        primaryLabel = [(PXActionableSectionHeaderView *)self primaryLabel];
        [primaryLabel sizeThatFits:{v12, v9}];
        v17 = v16;

        currentActionButton = [(PXActionableSectionHeaderView *)self currentActionButton];
        [currentActionButton sizeThatFits:{v12, v9}];
        v20 = v19;

        currentSecondaryButton = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
        [currentSecondaryButton sizeThatFits:{v12, v9}];
        v23 = v22;

        secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
        [secondaryLabel sizeThatFits:{v12, v9}];
        v26 = v25;

        if ([(PXActionableSectionHeaderView *)self _wantsActionButton])
        {
          v27 = 8.0;
        }

        else
        {
          v27 = 0.0;
        }

        _wantsSecondaryButton = [(PXActionableSectionHeaderView *)self _wantsSecondaryButton];
        v29 = v27 + 8.0;
        if (!_wantsSecondaryButton)
        {
          v29 = v27;
        }

        v30 = v17 + v20 + v23 + v26 + v29;
      }

      else
      {
        currentActionButton2 = [(PXActionableSectionHeaderView *)self currentActionButton];
        [currentActionButton2 sizeThatFits:{v12, v9}];
        v47 = v46;
        v49 = v48;

        currentSecondaryButton2 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
        [currentSecondaryButton2 sizeThatFits:{v12, v9}];
        v52 = v51;
        v54 = v53;

        v55 = v12 - (v47 + v52 + 8.0);
        primaryLabel2 = [(PXActionableSectionHeaderView *)self primaryLabel];
        [primaryLabel2 sizeThatFits:{v55, v9}];
        v58 = v57;

        secondaryLabel2 = [(PXActionableSectionHeaderView *)self secondaryLabel];
        [secondaryLabel2 sizeThatFits:{v55, v9}];
        v61 = v60;

        if (v61 <= 0.0)
        {
          v30 = fmax(fmax(v58, v49), v54);
        }

        else
        {
          v30 = v58 + v61;
        }
      }
    }

    else
    {
      primaryLabel3 = [(PXActionableSectionHeaderView *)self primaryLabel];
      [primaryLabel3 sizeThatFits:{v12, v9}];
      v64 = v63;

      secondaryLabel3 = [(PXActionableSectionHeaderView *)self secondaryLabel];
      [secondaryLabel3 sizeThatFits:{v12, v9}];
      v67 = v66;

      v30 = v64 + v67;
    }
  }

  else
  {
    primaryLabel4 = [(PXActionableSectionHeaderView *)self primaryLabel];
    [primaryLabel4 sizeThatFits:{v12, v9}];
    v33 = v32;

    secondaryLabel4 = [(PXActionableSectionHeaderView *)self secondaryLabel];
    [secondaryLabel4 sizeThatFits:{v12, v9}];
    v36 = v35;

    currentActionButton3 = [(PXActionableSectionHeaderView *)self currentActionButton];
    [currentActionButton3 sizeThatFits:{v12, v9}];
    v39 = v38;

    currentSecondaryButton3 = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
    [currentSecondaryButton3 sizeThatFits:{v12, v9}];
    v42 = v41;

    v30 = fmax(v33, fmax(v36, fmax(v39, v42)));
  }

  v43 = v30 + 16.0;
  [(PXActionableSectionHeaderView *)self setSelfSizingTraits:0];
  return round(v43);
}

- (double)baselineToBottomSpacing
{
  if ([(PXActionableSectionHeaderView *)self layoutMode]== 1 && ([(PXActionableSectionHeaderView *)self secondaryText], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    font2 = v3;
    font = [(UILabel *)self->_secondaryLabel font];
    [font descender];
    v7 = v6;
  }

  else
  {
    font2 = [(UILabel *)self->_primaryLabel font];
    [font2 descender];
    v7 = v8;
  }

  return 8.0 - v7;
}

- (void)setPreferredUserInterfaceStyle:(int64_t)style
{
  if (self->_preferredUserInterfaceStyle != style)
  {
    self->_preferredUserInterfaceStyle = style;
    [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:0];
    [(PXActionableSectionHeaderView *)self _updateLabelColors];
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }
}

- (void)setSupportsMultipleLinesInCompactLayout:(BOOL)layout
{
  if (self->_supportsMultipleLinesInCompactLayout != layout)
  {
    self->_supportsMultipleLinesInCompactLayout = layout;
    [(PXActionableSectionHeaderView *)self _updateLabelLineNumbers];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(PXActionableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setBackdropViewGroupName:(id)name
{
  nameCopy = name;
  backdropViewGroupName = self->_backdropViewGroupName;
  if (backdropViewGroupName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)backdropViewGroupName isEqualToString:nameCopy];
    nameCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_backdropViewGroupName;
      self->_backdropViewGroupName = v7;

      [(PXActionableSectionHeaderView *)self _updateBackdropViewGroupName];
      nameCopy = v9;
    }
  }
}

- (void)setBackgroundImageOverhang:(double)overhang
{
  if (self->_backgroundImageOverhang != overhang)
  {
    self->_backgroundImageOverhang = overhang;
    [(PXActionableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setBackgroundImageAlpha:(double)alpha
{
  if (self->_backgroundImageAlpha != alpha)
  {
    if (alpha < 0.0 || alpha > 1.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderView.m" lineNumber:614 description:{@"Invalid alpha %lf", *&alpha}];
    }

    self->_backgroundImageAlpha = alpha;

    [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:0];
  }
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  if (self->_backgroundImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_backgroundImage, image);
    [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:0];
    imageCopy = v6;
  }
}

- (void)performChangesToGroupedBackgroundPropertiesAnimated:(BOOL)animated withBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  v9 = blockCopy;
  if (self->_isModifyingGroupedBackgroundProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionableSectionHeaderView.m" lineNumber:589 description:@"Modifying grouped background properties recursively not allowed"];

    blockCopy = v9;
  }

  self->_isModifyingGroupedBackgroundProperties = 1;
  self->_wantsGroupedBackgroundPropertiesUpdate = 0;
  (*(blockCopy + 2))();
  self->_isModifyingGroupedBackgroundProperties = 0;
  if (self->_wantsGroupedBackgroundPropertiesUpdate)
  {
    [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:animatedCopy];
    [(PXActionableSectionHeaderView *)self _updateLabelColors];
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];
    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }
}

- (id)_backdropButtonForegroundColor
{
  _wantsOverBackgroundBehavior = [(PXActionableSectionHeaderView *)self _wantsOverBackgroundBehavior];
  traitCollection = [(PXActionableSectionHeaderView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
  }

  else
  {
    preferredUserInterfaceStyle = [(PXActionableSectionHeaderView *)self preferredUserInterfaceStyle];

    v6 = preferredUserInterfaceStyle == 2 || _wantsOverBackgroundBehavior;
    if (v6 != 1)
    {
      goto LABEL_9;
    }
  }

  if ([(PXActionableSectionHeaderView *)self backgroundStyle]== 1)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_10;
  }

LABEL_9:
  whiteColor = [(PXActionableSectionHeaderView *)self tintColor];
LABEL_10:

  return whiteColor;
}

- (BOOL)_wantsOverBackgroundBehavior
{
  if ([(PXActionableSectionHeaderView *)self _isMovingFast])
  {

    return [(PXActionableSectionHeaderView *)self avoidsTintedButtonsAtHighSpeed];
  }

  else
  {

    return [(PXActionableSectionHeaderView *)self wantsBackground];
  }
}

- (void)setAvoidsTintedButtonsAtHighSpeed:(BOOL)speed
{
  if (self->_avoidsTintedButtonsAtHighSpeed != speed)
  {
    self->_avoidsTintedButtonsAtHighSpeed = speed;
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }
}

- (void)setSpeedRegime:(int64_t)regime
{
  if (self->_speedRegime != regime)
  {
    self->_speedRegime = regime;
    if (self->_isModifyingGroupedBackgroundProperties)
    {
      self->_wantsGroupedBackgroundPropertiesUpdate = 1;
    }

    else
    {
      [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:0];
      [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

      [(PXActionableSectionHeaderView *)self _updateFilterButton];
    }
  }
}

- (void)setWantsBackground:(BOOL)background animated:(BOOL)animated
{
  if (self->_wantsBackground != background)
  {
    self->_wantsBackground = background;
    if (self->_isModifyingGroupedBackgroundProperties)
    {
      self->_wantsGroupedBackgroundPropertiesUpdate = 1;
    }

    else
    {
      [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:animated];
      [(PXActionableSectionHeaderView *)self _updateLabelColors];
      [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

      [(PXActionableSectionHeaderView *)self _updateFilterButton];
    }
  }
}

- (void)setBackgroundStyle:(unint64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    [(PXActionableSectionHeaderView *)self _updateBackgroundAnimated:0];
    [(PXActionableSectionHeaderView *)self _updateLabelColors];
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }
}

- (void)_updateFilterButton
{
  _backdropButtonForegroundColor = [(PXActionableSectionHeaderView *)self _backdropButtonForegroundColor];
  filterButtonController = [(PXActionableSectionHeaderView *)self filterButtonController];
  [filterButtonController setForegroundColor:_backdropButtonForegroundColor];

  _backdropButtonBackgroundColor = [(PXActionableSectionHeaderView *)self _backdropButtonBackgroundColor];
  filterButtonController2 = [(PXActionableSectionHeaderView *)self filterButtonController];
  [filterButtonController2 setBackgroundColor:_backdropButtonBackgroundColor];
}

- (void)_updateSystemActionButton
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1A590C430](8, 0x8000, 7);
  v16 = *MEMORY[0x1E69DB648];
  v17[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  actionText = [(PXActionableSectionHeaderView *)self actionText];
  v6 = actionText;
  v7 = &stru_1F1741150;
  if (actionText)
  {
    v7 = actionText;
  }

  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v4];
  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  [v10 setObject:lightGrayColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v10];
  systemActionButton = [(PXActionableSectionHeaderView *)self systemActionButton];
  [systemActionButton setImage:0 forState:0];
  [systemActionButton setImage:0 forState:2];
  [systemActionButton setAttributedTitle:v9 forState:0];
  [systemActionButton setAttributedTitle:v12 forState:2];
  titleLabel = [systemActionButton titleLabel];
  layer = [titleLabel layer];
  [layer removeAllAnimations];

  [systemActionButton sizeToFit];
  [systemActionButton layoutIfNeeded];
  [(PXActionableSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateBackdropActionButton
{
  actionText = [(PXActionableSectionHeaderView *)self actionText];
  if (!actionText)
  {
    return;
  }

  v4 = actionText;
  backdropButtonSpec = [(PXActionableSectionHeaderView *)self backdropButtonSpec];

  if (!backdropButtonSpec)
  {
    return;
  }

  actionText2 = [(PXActionableSectionHeaderView *)self actionText];
  backdropButtonSpec2 = [(PXActionableSectionHeaderView *)self backdropButtonSpec];
  v17 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:actionText2 spec:backdropButtonSpec2];

  if ([(PXActionableSectionHeaderView *)self actionButtonEnabled])
  {
    v8 = &__block_literal_global_182736;
  }

  else
  {
    v8 = 0;
  }

  [v17 setActionHandler:v8];
  if ([(PXActionableSectionHeaderView *)self actionButtonEnabled])
  {
    _wantsOverBackgroundBehavior = [(PXActionableSectionHeaderView *)self _wantsOverBackgroundBehavior];
    traitCollection = [(PXActionableSectionHeaderView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
    }

    else
    {
      preferredUserInterfaceStyle = [(PXActionableSectionHeaderView *)self preferredUserInterfaceStyle];

      v13 = preferredUserInterfaceStyle == 2 || _wantsOverBackgroundBehavior;
      if (v13 != 1)
      {
        v11 = 14;
        goto LABEL_19;
      }
    }

    if ([(PXActionableSectionHeaderView *)self backgroundStyle]== 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 14;
    }
  }

  else
  {
    v11 = 8;
  }

LABEL_19:
  [v17 setStyle:v11];
  _backdropButtonForegroundColor = [(PXActionableSectionHeaderView *)self _backdropButtonForegroundColor];
  [v17 setTintColor:_backdropButtonForegroundColor];

  _backdropButtonBackgroundColor = [(PXActionableSectionHeaderView *)self _backdropButtonBackgroundColor];
  [v17 setBackgroundColor:_backdropButtonBackgroundColor];

  backdropActionButton = [(PXActionableSectionHeaderView *)self backdropActionButton];
  [backdropActionButton setUserData:v17];
}

- (void)_updateActionButtonConfiguration
{
  buttonStyle = [(PXActionableSectionHeaderView *)self buttonStyle];
  if (buttonStyle == 1)
  {
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }

  else if (!buttonStyle)
  {

    [(PXActionableSectionHeaderView *)self _updateSystemActionButton];
  }
}

- (void)_updateSecondaryButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  filterButtonControllerFactory = [(PXActionableSectionHeaderView *)self filterButtonControllerFactory];

  currentSecondaryButton = self->_currentSecondaryButton;
  if (filterButtonControllerFactory)
  {
    if (!currentSecondaryButton)
    {
      v7 = (*(self->_filterButtonControllerFactory + 2))();
      filterButtonController = self->_filterButtonController;
      self->_filterButtonController = v7;

      button = [(PXContentFilterToggleButtonController *)self->_filterButtonController button];
      v10 = self->_currentSecondaryButton;
      self->_currentSecondaryButton = button;

      [(PXActionableSectionHeaderView *)self addSubview:self->_currentSecondaryButton];
    }

    if (animatedCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [(UIButton *)currentSecondaryButton removeFromSuperview];
    v11 = self->_currentSecondaryButton;
    self->_currentSecondaryButton = 0;

    v12 = self->_filterButtonController;
    self->_filterButtonController = 0;

    if (animatedCopy)
    {
LABEL_5:
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__PXActionableSectionHeaderView__updateSecondaryButtonAnimated___block_invoke;
      v15[3] = &unk_1E774C648;
      v15[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:196608 delay:v15 options:0 animations:0.3 completion:0.0];
      goto LABEL_11;
    }
  }

  if ([(PXActionableSectionHeaderView *)self showsSecondaryButton])
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  currentSecondaryButton = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
  [currentSecondaryButton setAlpha:v13];

LABEL_11:
  [(PXActionableSectionHeaderView *)self setNeedsLayout];
}

void __64__PXActionableSectionHeaderView__updateSecondaryButtonAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) showsSecondaryButton])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) currentSecondaryButton];
  [v3 setAlpha:v2];
}

- (void)_updateActionButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  buttonStyle = [(PXActionableSectionHeaderView *)self buttonStyle];
  if (buttonStyle == 1)
  {
    p_backdropActionButton = &self->_backdropActionButton;
    if (self->_backdropActionButton)
    {
      v7 = &OBJC_IVAR___PXActionableSectionHeaderView__systemActionButton;
      goto LABEL_10;
    }

    v10 = objc_alloc_init(PXCuratedLibraryOverlayButton);
    v11 = *p_backdropActionButton;
    *p_backdropActionButton = v10;

    v7 = &OBJC_IVAR___PXActionableSectionHeaderView__systemActionButton;
LABEL_9:
    [*p_backdropActionButton addTarget:self action:sel__actionButtonPressed_ forControlEvents:64];
    [(PXActionableSectionHeaderView *)self addSubview:*p_backdropActionButton];
    goto LABEL_10;
  }

  if (buttonStyle)
  {
    goto LABEL_11;
  }

  p_backdropActionButton = &self->_systemActionButton;
  if (!self->_systemActionButton)
  {
    v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v9 = *p_backdropActionButton;
    *p_backdropActionButton = v8;

    [*p_backdropActionButton setContentVerticalAlignment:0];
    v7 = &OBJC_IVAR___PXActionableSectionHeaderView__backdropActionButton;
    goto LABEL_9;
  }

  v7 = &OBJC_IVAR___PXActionableSectionHeaderView__backdropActionButton;
LABEL_10:
  v12 = *v7;
  [*(&self->super.super.super.super.isa + v12) removeFromSuperview];
  v13 = *(&self->super.super.super.super.isa + v12);
  *(&self->super.super.super.super.isa + v12) = 0;

LABEL_11:
  showsActionButton = [(PXActionableSectionHeaderView *)self showsActionButton];
  if (animatedCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__PXActionableSectionHeaderView__updateActionButtonAnimated___block_invoke;
    v18[3] = &unk_1E7749428;
    v18[4] = self;
    v19 = showsActionButton;
    [MEMORY[0x1E69DD250] animateWithDuration:196608 delay:v18 options:0 animations:0.3 completion:0.0];
  }

  else
  {
    if (showsActionButton)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    systemActionButton = [(PXActionableSectionHeaderView *)self systemActionButton];
    [systemActionButton setAlpha:v15];

    backdropActionButton = [(PXActionableSectionHeaderView *)self backdropActionButton];
    [backdropActionButton setAlpha:v15];
  }

  [(PXActionableSectionHeaderView *)self setNeedsLayout];
}

void __61__PXActionableSectionHeaderView__updateActionButtonAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) systemActionButton];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) backdropActionButton];
  [v5 setAlpha:v4];
}

- (void)setShowsTopSeparator:(BOOL)separator
{
  if (self->_showsTopSeparator != separator)
  {
    self->_showsTopSeparator = separator;
    [(PXActionableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setActionText:(id)text
{
  textCopy = text;
  actionText = self->_actionText;
  if (actionText != textCopy)
  {
    v9 = textCopy;
    v6 = [(NSString *)actionText isEqualToString:textCopy];
    textCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_actionText;
      self->_actionText = v7;

      [(PXActionableSectionHeaderView *)self _updateActionButtonAnimated:0];
      [(PXActionableSectionHeaderView *)self _updateActionButtonConfiguration];
      textCopy = v9;
    }
  }
}

- (void)_updateActionButtonEnabledAnimated:(BOOL)animated
{
  animatedCopy = animated;
  buttonStyle = [(PXActionableSectionHeaderView *)self buttonStyle];
  if (buttonStyle == 1)
  {
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];

    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }

  else if (!buttonStyle)
  {
    actionButtonEnabled = [(PXActionableSectionHeaderView *)self actionButtonEnabled];
    systemActionButton = [(PXActionableSectionHeaderView *)self systemActionButton];
    [systemActionButton setEnabled:actionButtonEnabled];

    if (animatedCopy)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__PXActionableSectionHeaderView__updateActionButtonEnabledAnimated___block_invoke;
      v10[3] = &unk_1E774C648;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0.2];
    }

    else
    {
      if ([(PXActionableSectionHeaderView *)self actionButtonEnabled])
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.6;
      }

      systemActionButton2 = [(PXActionableSectionHeaderView *)self systemActionButton];
      [systemActionButton2 setAlpha:v8];
    }
  }
}

void __68__PXActionableSectionHeaderView__updateActionButtonEnabledAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) actionButtonEnabled])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.6;
  }

  v3 = [*(a1 + 32) systemActionButton];
  [v3 setAlpha:v2];
}

- (void)setActionButtonEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_actionButtonEnabled != enabled)
  {
    self->_actionButtonEnabled = enabled;
    [(PXActionableSectionHeaderView *)self _updateActionButtonEnabledAnimated:animated];
  }
}

- (BOOL)_wantsSecondaryButton
{
  currentSecondaryButton = [(PXActionableSectionHeaderView *)self currentSecondaryButton];
  v3 = currentSecondaryButton != 0;

  return v3;
}

- (BOOL)_wantsActionButton
{
  actionText = [(PXActionableSectionHeaderView *)self actionText];
  v3 = [actionText length] != 0;

  return v3;
}

- (void)setShowsSecondaryButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsSecondaryButton != button)
  {
    self->_showsSecondaryButton = button;
    [(PXActionableSectionHeaderView *)self _updateSecondaryButtonAnimated:animated];
  }
}

- (void)setShowsActionButton:(BOOL)button animated:(BOOL)animated
{
  if (self->_showsActionButton != button)
  {
    self->_showsActionButton = button;
    [(PXActionableSectionHeaderView *)self _updateActionButtonAnimated:animated];
  }
}

- (void)setBackdropButtonSpec:(id)spec
{
  specCopy = spec;
  if (self->_backdropButtonSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_backdropButtonSpec, spec);
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];
    [(PXActionableSectionHeaderView *)self _updateFilterButton];
    specCopy = v6;
  }
}

- (void)setFilterButtonControllerFactory:(id)factory
{
  if (self->_filterButtonControllerFactory != factory)
  {
    v4 = [factory copy];
    filterButtonControllerFactory = self->_filterButtonControllerFactory;
    self->_filterButtonControllerFactory = v4;

    [(PXActionableSectionHeaderView *)self _updateSecondaryButtonAnimated:0];

    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }
}

- (void)setButtonStyle:(unint64_t)style
{
  if (self->_buttonStyle != style)
  {
    self->_buttonStyle = style;
    [(PXActionableSectionHeaderView *)self _updateActionButtonAnimated:0];

    [(PXActionableSectionHeaderView *)self _updateActionButtonConfiguration];
  }
}

- (UIControl)currentActionButton
{
  buttonStyle = [(PXActionableSectionHeaderView *)self buttonStyle];
  if (buttonStyle == 1)
  {
    buttonStyle = [(PXActionableSectionHeaderView *)self backdropActionButton];
  }

  else if (!buttonStyle)
  {
    buttonStyle = [(PXActionableSectionHeaderView *)self systemActionButton];
  }

  return buttonStyle;
}

- (void)setAccessibilityIdentifierWithValue:(id)value
{
  if (value)
  {
    v4 = [value stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    v5 = [@"section_header" stringByAppendingString:@"_"];
    v6 = [v5 stringByAppendingString:v4];
  }

  else
  {
    v6 = @"section_header";
  }

  [(PXActionableSectionHeaderView *)self setAccessibilityIdentifier:v6];
}

- (NSString)secondaryText
{
  secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
  text = [secondaryLabel text];

  return text;
}

- (void)updateSecondaryLabel
{
  v18 = objc_alloc_init(MEMORY[0x1E696AD40]);
  secondarySymbolName = [(PXActionableSectionHeaderView *)self secondarySymbolName];
  v4 = [secondarySymbolName length];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v6 = MEMORY[0x1E69DCAB8];
    secondarySymbolName2 = [(PXActionableSectionHeaderView *)self secondarySymbolName];
    v8 = [v6 systemImageNamed:secondarySymbolName2];
    v9 = [v8 imageWithRenderingMode:2];
    [v5 setImage:v9];

    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v18 appendAttributedString:v10];
    [v18 appendAttributedString:v11];
  }

  secondaryText = [(PXActionableSectionHeaderView *)self secondaryText];
  v13 = [secondaryText length];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    secondaryText2 = [(PXActionableSectionHeaderView *)self secondaryText];
    v16 = [v14 initWithString:secondaryText2];
    [v18 appendAttributedString:v16];
  }

  secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
  [secondaryLabel setAttributedText:v18];

  [(PXActionableSectionHeaderView *)self _updateSpacerLabelHiddenState];
  [(PXActionableSectionHeaderView *)self setNeedsLayout];
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryLabel = [(PXActionableSectionHeaderView *)self secondaryLabel];
  text = [secondaryLabel text];
  v6 = text;
  if (text == textCopy)
  {
  }

  else
  {
    v7 = [text isEqualToString:textCopy];

    if ((v7 & 1) == 0)
    {
      secondaryLabel2 = [(PXActionableSectionHeaderView *)self secondaryLabel];
      [secondaryLabel2 setText:textCopy];

      [(PXActionableSectionHeaderView *)self updateSecondaryLabel];
    }
  }
}

- (void)setSecondarySymbolName:(id)name
{
  nameCopy = name;
  secondarySymbolName = [(PXActionableSectionHeaderView *)self secondarySymbolName];
  v6 = secondarySymbolName;
  if (secondarySymbolName == nameCopy)
  {
  }

  else
  {
    v7 = [secondarySymbolName isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_secondarySymbolName, name);
      [(PXActionableSectionHeaderView *)self updateSecondaryLabel];
    }
  }
}

- (NSString)primaryText
{
  primaryLabel = [(PXActionableSectionHeaderView *)self primaryLabel];
  text = [primaryLabel text];

  return text;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryLabel = [(PXActionableSectionHeaderView *)self primaryLabel];
  [primaryLabel setText:textCopy];

  [(PXActionableSectionHeaderView *)self _updateSpacerLabelHiddenState];
  [(PXActionableSectionHeaderView *)self setNeedsLayout];
  [(PXActionableSectionHeaderView *)self setAccessibilityIdentifierWithValue:textCopy];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5.receiver = self;
  v5.super_class = PXActionableSectionHeaderView;
  [(PXActionableSectionHeaderView *)&v5 applyLayoutAttributes:attributesCopy];
  if (objc_opt_respondsToSelector())
  {
    -[PXActionableSectionHeaderView setWantsBackground:](self, "setWantsBackground:", [attributesCopy floating]);
  }
}

- (void)setSelfSizingTraits:(id)traits
{
  traitsCopy = traits;
  if (self->_selfSizingTraits != traitsCopy)
  {
    v6 = traitsCopy;
    objc_storeStrong(&self->_selfSizingTraits, traits);
    [(PXActionableSectionHeaderView *)self _updateWithCurrentTraits];
    traitsCopy = v6;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXActionableSectionHeaderView;
  changeCopy = change;
  [(PXActionableSectionHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  [(PXActionableSectionHeaderView *)self _updateWithCurrentTraits:v8.receiver];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PXActionableSectionHeaderView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXActionableSectionHeaderView *)self _updateLabelColors];
    [(PXActionableSectionHeaderView *)self _updateBackdropActionButton];
    [(PXActionableSectionHeaderView *)self _updateFilterButton];
  }
}

- (id)traitCollection
{
  selfSizingTraits = [(PXActionableSectionHeaderView *)self selfSizingTraits];
  v4 = selfSizingTraits;
  if (selfSizingTraits)
  {
    traitCollection = selfSizingTraits;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXActionableSectionHeaderView;
    traitCollection = [(PXActionableSectionHeaderView *)&v8 traitCollection];
  }

  v6 = traitCollection;

  return v6;
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = PXActionableSectionHeaderView;
  [(PXActionableSectionHeaderView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(PXActionableSectionHeaderView *)self _updateClipping];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PXActionableSectionHeaderView;
  [(PXActionableSectionHeaderView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PXActionableSectionHeaderView *)self _updateClipping];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXActionableSectionHeaderView;
  [(PXActionableSectionHeaderView *)&v4 dealloc];
}

- (PXActionableSectionHeaderView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PXActionableSectionHeaderView;
  v3 = [(PXActionableSectionHeaderView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v3->_primaryLabel;
    v3->_primaryLabel = v4;

    [(UILabel *)v3->_primaryLabel setUserInteractionEnabled:0];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    spacerLabel = v3->_spacerLabel;
    v3->_spacerLabel = v6;

    [(UILabel *)v3->_spacerLabel setUserInteractionEnabled:0];
    [(UILabel *)v3->_spacerLabel setText:@"·"];
    [(UILabel *)v3->_spacerLabel setAccessibilityElementsHidden:1];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v8;

    [(UILabel *)v3->_secondaryLabel setUserInteractionEnabled:0];
    v3->_buttonStyle = 0;
    v3->_actionButtonEnabled = 1;
    [(PXActionableSectionHeaderView *)v3 addSubview:v3->_primaryLabel];
    [(PXActionableSectionHeaderView *)v3 addSubview:v3->_spacerLabel];
    [(PXActionableSectionHeaderView *)v3 addSubview:v3->_secondaryLabel];
    v3->_backgroundStyle = 0;
    [(PXActionableSectionHeaderView *)v3 _updateBackgroundAnimated:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXActionableSectionHeaderView *)v3 setBackgroundColor:clearColor];

    [(PXActionableSectionHeaderView *)v3 setOpaque:0];
    [(PXActionableSectionHeaderView *)v3 _updateLabelFonts];
    [(PXActionableSectionHeaderView *)v3 _updateSpacerLabelHiddenState];
    [(PXActionableSectionHeaderView *)v3 _updateLabelLineNumbers];
    [(PXActionableSectionHeaderView *)v3 _updateLabelColors];
    [(PXActionableSectionHeaderView *)v3 _updateActionButtonAnimated:0];
    [(PXActionableSectionHeaderView *)v3 _updateActionButtonConfiguration];
    [(PXActionableSectionHeaderView *)v3 _updateActionButtonEnabledAnimated:0];
    [(PXActionableSectionHeaderView *)v3 _updateSecondaryButtonAnimated:0];
    [(PXActionableSectionHeaderView *)v3 _updateFilterButton];
    [(PXActionableSectionHeaderView *)v3 setAccessibilityIdentifierWithValue:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

@end
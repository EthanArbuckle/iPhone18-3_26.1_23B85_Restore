@interface PXPhotosSectionHeaderView
+ (BOOL)_hasAccessibilityLargeText;
+ (BOOL)shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:(id)collecton;
+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)collection;
- (BOOL)allowLocationTapForTouch:(id)touch;
- (CGRect)clippingRect;
- (NSString)synthesizedSectionTitle;
- (PXPhotosSectionHeaderView)initWithFrame:(CGRect)frame;
- (PXPhotosSectionHeaderViewDelegate)delegate;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)highlightInsets;
- (double)baselineToBottomSpacing;
- (id)_dateRangeCompactFormatter;
- (id)_dateRangeLongFormatter;
- (id)_dateRangeYearFormatter;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_handleActionButton:(id)button;
- (void)_layoutSubviewsForCurentStyle;
- (void)_setHighlightViewVisible:(BOOL)visible;
- (void)_updateActionButton;
- (void)_updateBackdropViewGroupName;
- (void)_updateBackgroundAnimated:(BOOL)animated;
- (void)_updateDateDependentLabels;
- (void)_updateDateLabel;
- (void)_updateDisclosureIcon;
- (void)_updateHighlightView;
- (void)_updateLabelsForTextStyle;
- (void)_updateLocationsLabelVisibility;
- (void)_updateTitleLabel;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)performBatchUpdateOfDateDependentPropertiesWithBlock:(id)block;
- (void)prepareForReuse;
- (void)setActionButtonTitle:(id)title;
- (void)setAllowsPhotosDetailsInteraction:(BOOL)interaction;
- (void)setBackdropViewGroupName:(id)name;
- (void)setBackgroundImage:(id)image;
- (void)setBackgroundImageAlpha:(double)alpha;
- (void)setBackgroundImageOverhang:(double)overhang;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setButtonSpec:(id)spec;
- (void)setClippingRect:(CGRect)rect;
- (void)setSectionLocations:(id)locations;
- (void)setSectionStartDate:(id)date endDate:(id)endDate;
- (void)setSectionTitle:(id)title;
- (void)setShowsActionButton:(BOOL)button;
- (void)setStyle:(int64_t)style;
- (void)setUseYearOnlyForDefaultTitle:(BOOL)title;
- (void)setUserData:(id)data;
- (void)setWantsBackground:(BOOL)background animated:(BOOL)animated;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXPhotosSectionHeaderView

- (UIEdgeInsets)highlightInsets
{
  top = self->_highlightInsets.top;
  left = self->_highlightInsets.left;
  bottom = self->_highlightInsets.bottom;
  right = self->_highlightInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
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

- (PXPhotosSectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateHighlightView
{
  highlightViewVisible = self->_highlightViewVisible;
  highlightView = self->_highlightView;
  if (highlightViewVisible)
  {
    if (highlightView)
    {
      goto LABEL_10;
    }

    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = self->_highlightView;
    self->_highlightView = v5;

    v7 = self->_highlightView;
    if (self->_visualEffectView)
    {
      [(PXPhotosSectionHeaderView *)self insertSubview:v7 aboveSubview:?];
    }

    else
    {
      [(PXPhotosSectionHeaderView *)self addSubview:v7];
      [(PXPhotosSectionHeaderView *)self sendSubviewToBack:self->_highlightView];
    }

    [(UIView *)self->_highlightView setAutoresizingMask:18];
    v9 = self->_highlightView;
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.150000006];
    [(UIView *)v9 setBackgroundColor:v8];
  }

  else
  {
    if (!highlightView)
    {
      goto LABEL_10;
    }

    [(UIView *)highlightView removeFromSuperview];
    v8 = self->_highlightView;
    self->_highlightView = 0;
  }

LABEL_10:

  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
}

- (void)_setHighlightViewVisible:(BOOL)visible
{
  if (self->_highlightViewVisible != visible)
  {
    self->_highlightViewVisible = visible;
    [(PXPhotosSectionHeaderView *)self _updateHighlightView];
  }
}

- (BOOL)allowLocationTapForTouch:(id)touch
{
  touchCopy = touch;
  if ([(PXPhotosSectionHeaderView *)self allowsPhotosDetailsInteraction]&& (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), WeakRetained, (v6 & 1) != 0))
  {
    if ((-[PXCuratedLibraryOverlayButton isHidden](self->_actionButton, "isHidden") & 1) != 0 || (-[PXCuratedLibraryOverlayButton frame](self->_actionButton, "frame"), CGRectIsEmpty(v20)) || ([*MEMORY[0x1E69DDA98] preferredContentSizeCategory], v7 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7), v7, IsAccessibilityCategory))
    {
      v9 = 1;
    }

    else
    {
      _shouldReverseLayoutDirection = [(PXPhotosSectionHeaderView *)self _shouldReverseLayoutDirection];
      [(PXCuratedLibraryOverlayButton *)self->_actionButton frame];
      if (_shouldReverseLayoutDirection)
      {
        MaxX = CGRectGetMaxX(*&v12);
        v17 = 16.0;
      }

      else
      {
        MaxX = CGRectGetMinX(*&v12);
        v17 = -16.0;
      }

      v18 = MaxX + v17;
      [touchCopy locationInView:self];
      if (_shouldReverseLayoutDirection)
      {
        v9 = v19 >= v18;
      }

      else
      {
        v9 = v19 <= v18;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderView;
  [(PXPhotosSectionHeaderView *)&v3 prepareForReuse];
  if (self->_visualEffectView)
  {
    [(PXPhotosSectionHeaderView *)self _updateBackdropViewGroupName];
  }

  self->_useYearOnlyForDefaultTitle = 0;
}

- (void)_layoutSubviewsForCurentStyle
{
  locationsLabel = self->_locationsLabel;
  if (locationsLabel && ([(UILabel *)locationsLabel isHidden]& 1) == 0)
  {
    [(NSArray *)self->_sectionLocations count];
  }

  actionButton = self->_actionButton;
  if (actionButton)
  {
    [(PXCuratedLibraryOverlayButton *)actionButton isHidden];
  }

  disclosureIconView = self->_disclosureIconView;
  if (disclosureIconView)
  {
    [(UIImageView *)disclosureIconView isHidden];
  }

  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    [(UILabel *)dateLabel isHidden];
  }

  [objc_opt_class() _hasAccessibilityLargeText];
  [(PXPhotosSectionHeaderView *)self _updateLabelsForTextStyle];
  style = [(PXPhotosSectionHeaderView *)self style];
  [(PXPhotosSectionHeaderView *)self contentInsets];
  [(PXPhotosSectionHeaderView *)self safeAreaInsets];
  UIEdgeInsetsMax();
  [(PXPhotosSectionHeaderView *)self bounds];
  [(PXPhotosSectionHeaderView *)self px_screenScale];
  [(PXPhotosSectionHeaderView *)self bounds];
  [(PXPhotosSectionHeaderView *)self bounds];
  [(PXPhotosSectionHeaderView *)self backgroundImageOverhang];
  font = [(UILabel *)self->_titleLabel font];
  v8 = self->_dateLabel;
  if (!v8)
  {
    v8 = self->_locationsLabel;
  }

  [(UILabel *)v8 font];
  objc_claimAutoreleasedReturnValue();
  v9 = 26.0;
  if (style == 1)
  {
    v9 = 30.0;
  }

  [font _scaledValueForValue:v9];
  PXFloatRoundToPixel();
}

uint64_t __58__PXPhotosSectionHeaderView__layoutSubviewsForCurentStyle__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 504) setText:a2];
  v3 = *(*(a1 + 32) + 504);
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);

  return [v3 sizeThatFits:{v4, v5}];
}

- (void)layoutSubviews
{
  [(PXPhotosSectionHeaderView *)self _layoutSubviewsForCurentStyle];
  if (self->_highlightView)
  {
    [(PXPhotosSectionHeaderView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    visualEffectView = self->_visualEffectView;
    if (!visualEffectView || [(UIVisualEffectView *)visualEffectView isHidden])
    {
      [(PXPhotosSectionHeaderView *)self highlightInsets];
      v4 = v4 + v12;
      v6 = v6 + v13;
      v8 = v8 - (v12 + v14);
      v10 = v10 - (v13 + v15);
    }

    highlightView = self->_highlightView;

    [(UIView *)highlightView setFrame:v4, v6, v8, v10];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  anyObject = [endedCopy anyObject];
  [anyObject locationInView:self];
  v7 = v6;
  v9 = v8;

  [(PXPhotosSectionHeaderView *)self bounds];
  v15.x = v7;
  v15.y = v9;
  if (CGRectContainsPoint(v16, v15) && ([endedCopy anyObject], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[PXPhotosSectionHeaderView allowLocationTapForTouch:](self, "allowLocationTapForTouch:", v10), v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didTapHeaderView:self];

    [(PXPhotosSectionHeaderView *)self performSelector:sel__hideHighlightView withObject:0 afterDelay:1.0];
  }

  else
  {
    [(PXPhotosSectionHeaderView *)self _hideHighlightView];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  v6 = [(PXPhotosSectionHeaderView *)self allowLocationTapForTouch:anyObject];

  if (v6)
  {

    [(PXPhotosSectionHeaderView *)self _setHighlightViewVisible:1];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXPhotosSectionHeaderView;
  changeCopy = change;
  [(PXPhotosSectionHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PXPhotosSectionHeaderView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2 && [(PXPhotosSectionHeaderView *)self style]!= -1)
  {
    [(PXPhotosSectionHeaderView *)self _updateDisclosureIcon];
    [(PXPhotosSectionHeaderView *)self _updateLocationsLabelVisibility];
    [(PXPhotosSectionHeaderView *)self _updateDateLabel];
    [(PXPhotosSectionHeaderView *)self _updateActionButton];
  }
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  style = [(PXPhotosSectionHeaderView *)self style];
  v25 = _PXPhotoCollectionHeaderTitleLabelFontForStyle(style);
  v5 = _PXPhotoCollectionHeaderSubtitleFontForStyle(style);
  titleLabel = self->_titleLabel;
  if (titleLabel && (-[UILabel font](titleLabel, "font"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:v25], v7, (v8 & 1) == 0))
  {
    [(UILabel *)self->_titleLabel setFont:v25];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    font = [(UILabel *)dateLabel font];
    v12 = [font isEqual:v5];

    if ((v12 & 1) == 0)
    {
      [(UILabel *)self->_dateLabel setFont:v5];
      v9 = 1;
    }
  }

  locationsLabel = self->_locationsLabel;
  if (locationsLabel)
  {
    font2 = [(UILabel *)locationsLabel font];
    v15 = [font2 isEqual:v5];

    if ((v15 & 1) == 0)
    {
      [(UILabel *)self->_locationsLabel setFont:v5];
      v9 = 1;
    }
  }

  separatorLabel = self->_separatorLabel;
  if (separatorLabel)
  {
    font3 = [(UILabel *)separatorLabel font];
    v18 = [font3 isEqual:v5];

    if ((v18 & 1) == 0)
    {
      [(UILabel *)self->_separatorLabel setFont:v5];
      v9 = 1;
    }
  }

  if (!self->_actionButton)
  {
    p_disclosureIconView = &self->_disclosureIconView;
    disclosureIconView = self->_disclosureIconView;
    if (!disclosureIconView)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [(PXPhotosSectionHeaderView *)self _updateActionButton];
  p_disclosureIconView = &self->_disclosureIconView;
  disclosureIconView = self->_disclosureIconView;
  if (disclosureIconView)
  {
LABEL_18:
    [(UIImageView *)disclosureIconView removeFromSuperview];
    v21 = *p_disclosureIconView;
    *p_disclosureIconView = 0;

    [(PXPhotosSectionHeaderView *)self _updateDisclosureIcon];
  }

LABEL_19:
  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
  delegate = [(PXPhotosSectionHeaderView *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    delegate2 = [(PXPhotosSectionHeaderView *)self delegate];
    [delegate2 textSizeDidChangeForHeaderView:self];
  }

LABEL_21:
}

- (id)_dateRangeYearFormatter
{
  v3 = _dateRangeYearFormatter_yearDateFormatter;
  if (!_dateRangeYearFormatter_yearDateFormatter)
  {
    v4 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:4];
    v5 = _dateRangeYearFormatter_yearDateFormatter;
    _dateRangeYearFormatter_yearDateFormatter = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dateRangeFormatterChanged_ name:*MEMORY[0x1E69BE978] object:_dateRangeYearFormatter_yearDateFormatter];

    v3 = _dateRangeYearFormatter_yearDateFormatter;
  }

  return v3;
}

- (id)_dateRangeLongFormatter
{
  v3 = _dateRangeLongFormatter_dateRangeFormatter;
  if (!_dateRangeLongFormatter_dateRangeFormatter)
  {
    v4 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:2];
    v5 = _dateRangeLongFormatter_dateRangeFormatter;
    _dateRangeLongFormatter_dateRangeFormatter = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dateRangeFormatterChanged_ name:*MEMORY[0x1E69BE978] object:_dateRangeLongFormatter_dateRangeFormatter];

    v3 = _dateRangeLongFormatter_dateRangeFormatter;
  }

  return v3;
}

- (id)_dateRangeCompactFormatter
{
  v3 = _dateRangeCompactFormatter_dateRangeFormatter;
  if (!_dateRangeCompactFormatter_dateRangeFormatter)
  {
    v4 = [MEMORY[0x1E69BE3B8] autoupdatingFormatterWithPreset:0];
    v5 = _dateRangeCompactFormatter_dateRangeFormatter;
    _dateRangeCompactFormatter_dateRangeFormatter = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dateRangeFormatterChanged_ name:*MEMORY[0x1E69BE978] object:_dateRangeCompactFormatter_dateRangeFormatter];

    v3 = _dateRangeCompactFormatter_dateRangeFormatter;
  }

  return v3;
}

- (void)_updateBackdropViewGroupName
{
  if (self->_inLayoutTransition || ![(PXPhotosSectionHeaderView *)self wantsBackground])
  {
    backdropViewGroupName = 0;
  }

  else
  {
    backdropViewGroupName = [(PXPhotosSectionHeaderView *)self backdropViewGroupName];
  }

  v4 = backdropViewGroupName;
  [(UIVisualEffectView *)self->_visualEffectView _setGroupName:backdropViewGroupName];
}

- (void)_updateBackgroundAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PXPhotosSectionHeaderView *)self backgroundStyle])
  {
    wantsBackground = 0;
  }

  else
  {
    wantsBackground = [(PXPhotosSectionHeaderView *)self wantsBackground];
  }

  if ([(PXPhotosSectionHeaderView *)self backgroundStyle]== 1)
  {
    backgroundImage = [(PXPhotosSectionHeaderView *)self backgroundImage];
    if (backgroundImage)
    {
      wantsBackground2 = [(PXPhotosSectionHeaderView *)self wantsBackground];
    }

    else
    {
      wantsBackground2 = 0;
    }
  }

  else
  {
    wantsBackground2 = 0;
  }

  v8 = 552;
  visualEffectView = self->_visualEffectView;
  if (wantsBackground)
  {
    if (!visualEffectView)
    {
      v10 = [MEMORY[0x1E69DC730] effectWithStyle:10];
      v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
      v12 = self->_visualEffectView;
      self->_visualEffectView = v11;

      visualEffectView = self->_visualEffectView;
    }

    superview = [(UIVisualEffectView *)visualEffectView superview];

    if (superview != self)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __55__PXPhotosSectionHeaderView__updateBackgroundAnimated___block_invoke;
      v25[3] = &unk_1E774C648;
      v25[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v25];
    }

    [(UIVisualEffectView *)self->_visualEffectView setHidden:0];
    [(PXPhotosSectionHeaderView *)self _updateBackdropViewGroupName];
  }

  else
  {
    [(UIVisualEffectView *)visualEffectView setHidden:1];
  }

  backgroundImageView = self->_backgroundImageView;
  if (wantsBackground2)
  {
    if (!backgroundImageView)
    {
      v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v17 = self->_backgroundImageView;
      self->_backgroundImageView = v16;

      backgroundImageView = self->_backgroundImageView;
    }

    superview2 = [(UIImageView *)backgroundImageView superview];

    if (superview2 != self)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __55__PXPhotosSectionHeaderView__updateBackgroundAnimated___block_invoke_2;
      v24[3] = &unk_1E774C648;
      v24[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
    }

    [(UIImageView *)self->_backgroundImageView setHidden:0];
    backgroundImage2 = [(PXPhotosSectionHeaderView *)self backgroundImage];
    [(UIImageView *)self->_backgroundImageView setImage:backgroundImage2];

    if (animatedCopy)
    {
      [(UIImageView *)self->_backgroundImageView setAlpha:0.0];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __55__PXPhotosSectionHeaderView__updateBackgroundAnimated___block_invoke_3;
      v23[3] = &unk_1E774C648;
      v23[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v23 animations:0.3];
    }

    else
    {
      [(PXPhotosSectionHeaderView *)self backgroundImageAlpha];
      [(UIImageView *)self->_backgroundImageView setAlpha:?];
    }
  }

  else
  {
    [(UIImageView *)backgroundImageView setHidden:1];
  }

  backgroundStyle = [(PXPhotosSectionHeaderView *)self backgroundStyle];
  switch(backgroundStyle)
  {
    case 0uLL:
      goto LABEL_31;
    case 2uLL:
      [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
      v21 = self->_visualEffectView;
      self->_visualEffectView = 0;

LABEL_31:
      v8 = 560;
      goto LABEL_32;
    case 1uLL:
LABEL_32:
      [*(&self->super.super.super.super.isa + v8) removeFromSuperview];
      v22 = *(&self->super.super.super.super.isa + v8);
      *(&self->super.super.super.super.isa + v8) = 0;

      break;
  }
}

uint64_t __55__PXPhotosSectionHeaderView__updateBackgroundAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 552)];
  v2 = *(a1 + 32);
  v3 = v2[69];

  return [v2 sendSubviewToBack:v3];
}

uint64_t __55__PXPhotosSectionHeaderView__updateBackgroundAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 560)];
  v2 = *(a1 + 32);
  v3 = v2[70];

  return [v2 sendSubviewToBack:v3];
}

uint64_t __55__PXPhotosSectionHeaderView__updateBackgroundAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) backgroundImageAlpha];
  v2 = *(*(a1 + 32) + 560);

  return [v2 setAlpha:?];
}

- (void)_updateActionButton
{
  if (!self->_showsActionButton)
  {
    [(PXCuratedLibraryOverlayButton *)self->_actionButton removeFromSuperview];
    actionButton = self->_actionButton;
    self->_actionButton = 0;
LABEL_15:

    goto LABEL_16;
  }

  if ([(PXPhotosSectionHeaderView *)self style]== -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderView.m" lineNumber:619 description:@"Invalid header style."];
  }

  if (!self->_actionButton)
  {
    v4 = objc_alloc_init(PXCuratedLibraryOverlayButton);
    v5 = self->_actionButton;
    self->_actionButton = v4;

    [(PXCuratedLibraryOverlayButton *)self->_actionButton addTarget:self action:sel__handleActionButton_ forControlEvents:64];
    [(PXPhotosSectionHeaderView *)self addSubview:self->_actionButton];
  }

  actionButtonTitle = [(PXPhotosSectionHeaderView *)self actionButtonTitle];
  if (actionButtonTitle)
  {
    v7 = actionButtonTitle;
    buttonSpec = [(PXPhotosSectionHeaderView *)self buttonSpec];

    if (buttonSpec)
    {
      actionButtonTitle2 = [(PXPhotosSectionHeaderView *)self actionButtonTitle];
      buttonSpec2 = [(PXPhotosSectionHeaderView *)self buttonSpec];
      actionButton = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:actionButtonTitle2 spec:buttonSpec2];

      [actionButton setActionHandler:&__block_literal_global_94564];
      traitCollection = [(PXPhotosSectionHeaderView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (([(PXPhotosSectionHeaderView *)self wantsBackground]|| userInterfaceStyle == 2) && [(PXPhotosSectionHeaderView *)self backgroundStyle])
      {
        systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
        v15 = 0;
      }

      else
      {
        systemWhiteColor = [(PXPhotosSectionHeaderView *)self tintColor];
        v15 = 14;
      }

      [actionButton setTintColor:systemWhiteColor];

      [actionButton setStyle:v15];
      tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      [actionButton setBackgroundColor:tertiarySystemFillColor];

      [(PXCuratedLibraryOverlayButton *)self->_actionButton setUserData:actionButton];
      goto LABEL_15;
    }
  }

LABEL_16:

  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateDateLabel
{
  if (self->_sectionStartDate && ![(PXPhotosSectionHeaderView *)self _usingDateAsTitle])
  {
    if ([(PXPhotosSectionHeaderView *)self style]== -1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderView.m" lineNumber:584 description:@"Invalid header style."];
    }

    if (!self->_dateLabel)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabel = self->_dateLabel;
      self->_dateLabel = v4;

      if ([(PXPhotosSectionHeaderView *)self _shouldReverseLayoutDirection])
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      [(UILabel *)self->_dateLabel setTextAlignment:v6];
      [(UILabel *)self->_dateLabel setUserInteractionEnabled:0];
      _PXConfigurePhotoCollectionHeaderDateLabel(self->_dateLabel, [(PXPhotosSectionHeaderView *)self style]);
      [(PXPhotosSectionHeaderView *)self addSubview:self->_dateLabel];
    }

    traitCollection = [(PXPhotosSectionHeaderView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (([(PXPhotosSectionHeaderView *)self wantsBackground]|| userInterfaceStyle == 2) && [(PXPhotosSectionHeaderView *)self backgroundStyle])
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    else
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemGrayColor];
    }

    v10 = systemWhiteColor;
    [(UILabel *)self->_dateLabel setTextColor:systemWhiteColor];

    _dateRangeCompactFormatter = [(PXPhotosSectionHeaderView *)self _dateRangeCompactFormatter];
    v12 = [_dateRangeCompactFormatter stringFromDate:self->_sectionStartDate toDate:self->_sectionEndDate];

    [(UILabel *)self->_dateLabel setHidden:0];
    [(UILabel *)self->_dateLabel setText:v12];
  }

  else
  {
    [(UILabel *)self->_dateLabel setText:0];
    [(UILabel *)self->_dateLabel setHidden:1];
  }

  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateLocationsLabelVisibility
{
  v4 = [(NSArray *)self->_sectionLocations count];
  if (v4)
  {
    if ([(PXPhotosSectionHeaderView *)self style]== -1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderView.m" lineNumber:540 description:@"Invalid header style."];
    }

    p_locationsLabel = &self->_locationsLabel;
    if (!self->_locationsLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v7 = *p_locationsLabel;
      *p_locationsLabel = v6;

      [(PXPhotosSectionHeaderView *)self addSubview:*p_locationsLabel];
      [(UILabel *)*p_locationsLabel setUserInteractionEnabled:0];
      _PXConfigurePhotoCollectionHeaderLocationsLabel(*p_locationsLabel, [(PXPhotosSectionHeaderView *)self style]);
    }

    if (!self->_separatorLabel)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      separatorLabel = self->_separatorLabel;
      self->_separatorLabel = v8;

      [(PXPhotosSectionHeaderView *)self addSubview:self->_separatorLabel];
      [(UILabel *)self->_separatorLabel setUserInteractionEnabled:0];
      [(UILabel *)self->_separatorLabel setText:@"·"];
      _PXConfigurePhotoCollectionHeaderLocationsLabel(self->_separatorLabel, [(PXPhotosSectionHeaderView *)self style]);
    }

    traitCollection = [(PXPhotosSectionHeaderView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (([(PXPhotosSectionHeaderView *)self wantsBackground]|| userInterfaceStyle == 2) && [(PXPhotosSectionHeaderView *)self backgroundStyle])
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      [(UILabel *)*p_locationsLabel setTextColor:systemWhiteColor];

      systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    else
    {
      systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
      [(UILabel *)*p_locationsLabel setTextColor:systemGrayColor];

      systemWhiteColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
    }

    v15 = systemWhiteColor2;
    [(UILabel *)self->_separatorLabel setTextColor:systemWhiteColor2];
  }

  else
  {
    [(UILabel *)self->_locationsLabel setText:0];
    [(UILabel *)self->_locationsLabel setHidden:1];
    p_locationsLabel = &self->_separatorLabel;
  }

  [(UILabel *)*p_locationsLabel setHidden:v4 == 0];

  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateDisclosureIcon
{
  allowsPhotosDetailsInteraction = [(PXPhotosSectionHeaderView *)self allowsPhotosDetailsInteraction];
  disclosureIconView = self->_disclosureIconView;
  if (allowsPhotosDetailsInteraction)
  {
    if (!disclosureIconView)
    {
      v5 = _PXPhotoCollectionHeaderDisclosureIconForStyle([(PXPhotosSectionHeaderView *)self style]);
      if (v5)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
        v7 = self->_disclosureIconView;
        self->_disclosureIconView = v6;

        [(PXPhotosSectionHeaderView *)self addSubview:self->_disclosureIconView];
      }

      disclosureIconView = self->_disclosureIconView;
    }

    [(UIImageView *)disclosureIconView setHidden:0];
    traitCollection = [(PXPhotosSectionHeaderView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (([(PXPhotosSectionHeaderView *)self wantsBackground]|| userInterfaceStyle == 2) && [(PXPhotosSectionHeaderView *)self backgroundStyle])
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    else
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemGrayColor];
    }

    v11 = systemWhiteColor;
    [(UIImageView *)self->_disclosureIconView setTintColor:systemWhiteColor];
  }

  else
  {
    [(UIImageView *)disclosureIconView setHidden:1];
  }

  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateTitleLabel
{
  synthesizedSectionTitle = [(PXPhotosSectionHeaderView *)self synthesizedSectionTitle];
  if (synthesizedSectionTitle)
  {
    if ([(PXPhotosSectionHeaderView *)self style]== -1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderView.m" lineNumber:482 description:@"Invalid header style."];
    }

    p_titleLabel = &self->_titleLabel;
    if (!self->_titleLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v6 = *p_titleLabel;
      *p_titleLabel = v5;

      [*p_titleLabel setUserInteractionEnabled:0];
      _PXConfigurePhotoCollectionHeaderTitleLabel(*p_titleLabel, [(PXPhotosSectionHeaderView *)self style]);
      [(PXPhotosSectionHeaderView *)self addSubview:*p_titleLabel];
    }

    if ([(PXPhotosSectionHeaderView *)self wantsBackground]&& [(PXPhotosSectionHeaderView *)self backgroundStyle])
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    else
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] labelColor];
    }

    v8 = systemWhiteColor;
    [*p_titleLabel setTextColor:systemWhiteColor];

    titleLabel = *p_titleLabel;
    v10 = synthesizedSectionTitle;
  }

  else
  {
    p_titleLabel = &self->_titleLabel;
    titleLabel = self->_titleLabel;
    v10 = 0;
  }

  [titleLabel setText:v10];
  [*p_titleLabel setHidden:synthesizedSectionTitle == 0];
  [(PXPhotosSectionHeaderView *)self setNeedsLayout];
}

- (void)_updateDateDependentLabels
{
  [(PXPhotosSectionHeaderView *)self _updateTitleLabel];

  [(PXPhotosSectionHeaderView *)self _updateDateLabel];
}

- (void)_handleActionButton:(id)button
{
  buttonCopy = button;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 headerView:self actionButtonPressed:buttonCopy];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (objc_opt_respondsToSelector())
  {
    -[PXPhotosSectionHeaderView setWantsBackground:](self, "setWantsBackground:", [attributesCopy floating]);
  }
}

- (void)_updateLabelsForTextStyle
{
  _hasAccessibilityLargeText = [objc_opt_class() _hasAccessibilityLargeText];
  titleLabel = self->_titleLabel;
  if (_hasAccessibilityLargeText)
  {
    [(UILabel *)titleLabel setNumberOfLines:2];
    [(UILabel *)self->_dateLabel setNumberOfLines:2];
    [(UILabel *)self->_locationsLabel setNumberOfLines:2];
    [(UILabel *)self->_dateLabel setTextAlignment:4];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    locationsLabel = self->_locationsLabel;

    [(UILabel *)locationsLabel setLineBreakMode:4];
  }

  else
  {
    [(UILabel *)titleLabel setNumberOfLines:1];
    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    [(UILabel *)self->_locationsLabel setNumberOfLines:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    [(UILabel *)self->_locationsLabel setLineBreakMode:5];
    if ([(PXPhotosSectionHeaderView *)self _shouldReverseLayoutDirection])
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    dateLabel = self->_dateLabel;

    [(UILabel *)dateLabel setTextAlignment:v6];
  }
}

- (double)baselineToBottomSpacing
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 14.0;
  }

  [(PXPhotosSectionHeaderView *)self px_screenScale];
  [(UILabel *)self->_titleLabel font];
  if (objc_claimAutoreleasedReturnValue())
  {
    [(UILabel *)self->_titleLabel font];
    [objc_claimAutoreleasedReturnValue() _scaledValueForValue:v4];
    PXFloatRoundToPixel();
  }

  return v4;
}

- (void)setBackdropViewGroupName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_backdropViewGroupName] & 1) == 0)
  {
    v4 = [nameCopy copy];
    backdropViewGroupName = self->_backdropViewGroupName;
    self->_backdropViewGroupName = v4;

    [(PXPhotosSectionHeaderView *)self _updateBackdropViewGroupName];
  }
}

- (void)setAllowsPhotosDetailsInteraction:(BOOL)interaction
{
  if (self->_allowsPhotosDetailsInteraction != interaction)
  {
    self->_allowsPhotosDetailsInteraction = interaction;
    [(PXPhotosSectionHeaderView *)self _updateDisclosureIcon];
  }
}

- (void)setActionButtonTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_actionButtonTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      actionButtonTitle = self->_actionButtonTitle;
      self->_actionButtonTitle = v7;

      [(PXPhotosSectionHeaderView *)self _updateActionButton];
      v5 = v9;
    }
  }
}

- (void)setShowsActionButton:(BOOL)button
{
  if (self->_showsActionButton != button)
  {
    self->_showsActionButton = button;
    [(PXPhotosSectionHeaderView *)self _updateActionButton];
  }
}

- (void)setSectionStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (self->_sectionStartDate != dateCopy && ![(NSDate *)dateCopy isEqual:?]|| self->_sectionEndDate != endDateCopy && ([(NSDate *)endDateCopy isEqual:?]& 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXPhotosSectionHeaderView_setSectionStartDate_endDate___block_invoke;
    v8[3] = &unk_1E774A1B8;
    v8[4] = self;
    v9 = dateCopy;
    v10 = endDateCopy;
    [(PXPhotosSectionHeaderView *)self performBatchUpdateOfDateDependentPropertiesWithBlock:v8];
  }
}

void __57__PXPhotosSectionHeaderView_setSectionStartDate_endDate___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 547) = 1;
  objc_storeStrong((*(a1 + 32) + 664), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 672);

  objc_storeStrong(v3, v2);
}

- (void)setSectionLocations:(id)locations
{
  v27 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v5 = +[PXGridSettings sharedInstance];
  simulatedNumberOfLocations = [v5 simulatedNumberOfLocations];

  if (simulatedNumberOfLocations < 1)
  {
    v7 = locationsCopy;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = +[PXGridSettings sharedInstance];
    simulatedNumberOfLocations2 = [v8 simulatedNumberOfLocations];

    if (simulatedNumberOfLocations2 >= 1)
    {
      v10 = 1;
      do
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fake Location %li", v10];
        [(NSArray *)v7 addObject:v11];

        ++v10;
        --simulatedNumberOfLocations2;
      }

      while (simulatedNumberOfLocations2);
    }
  }

  v12 = +[PXGridSettings sharedInstance];
  simulateLongTitles = [v12 simulateLongTitles];

  if (simulateLongTitles)
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v7;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v22 + 1) + 8 * i);
          v21 = 10;
          do
          {
            [(NSArray *)array addObject:v20];
            --v21;
          }

          while (v21);
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  else
  {
    array = v7;
  }

  if (array != self->_sectionLocations)
  {
    objc_storeStrong(&self->_sectionLocations, array);
  }

  [(PXPhotosSectionHeaderView *)self _updateLocationsLabelVisibility];
}

- (void)setUseYearOnlyForDefaultTitle:(BOOL)title
{
  if (self->_useYearOnlyForDefaultTitle != title)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PXPhotosSectionHeaderView_setUseYearOnlyForDefaultTitle___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    titleCopy = title;
    [(PXPhotosSectionHeaderView *)self performBatchUpdateOfDateDependentPropertiesWithBlock:v5];
  }
}

- (void)performBatchUpdateOfDateDependentPropertiesWithBlock:(id)block
{
  blockCopy = block;
  performingBatchDateDependentUpdate = self->_performingBatchDateDependentUpdate;
  v6 = blockCopy;
  if (performingBatchDateDependentUpdate)
  {
    self->_performingBatchDateDependentUpdate = 1;
    (*(blockCopy + 2))();
    self->_performingBatchDateDependentUpdate = performingBatchDateDependentUpdate;
  }

  else
  {
    self->_dateDependentPropertiesDidChange = 0;
    self->_performingBatchDateDependentUpdate = 1;
    (*(blockCopy + 2))();
    self->_performingBatchDateDependentUpdate = performingBatchDateDependentUpdate;
    if (self->_dateDependentPropertiesDidChange)
    {
      [(PXPhotosSectionHeaderView *)self _updateDateDependentLabels];
    }
  }
}

- (NSString)synthesizedSectionTitle
{
  v3 = self->_sectionTitle;
  if ([(PXPhotosSectionHeaderView *)self _usingDateAsTitle])
  {
    if (self->_useYearOnlyForDefaultTitle)
    {
      [(PXPhotosSectionHeaderView *)self _dateRangeYearFormatter];
    }

    else
    {
      [(PXPhotosSectionHeaderView *)self _dateRangeLongFormatter];
    }
    v4 = ;
    sectionStartDate = [(PXPhotosSectionHeaderView *)self sectionStartDate];
    if (sectionStartDate)
    {
      sectionEndDate = [(PXPhotosSectionHeaderView *)self sectionEndDate];
      v7 = [v4 stringFromDate:sectionStartDate toDate:sectionEndDate];

      v3 = v7;
    }
  }

  return v3;
}

- (void)setSectionTitle:(id)title
{
  titleCopy = title;
  v5 = +[PXGridSettings sharedInstance];
  simulateLongTitles = [v5 simulateLongTitles];

  if (simulateLongTitles)
  {
    v7 = [titleCopy px_stringByRepeating:10];

    titleCopy = v7;
  }

  sectionTitle = self->_sectionTitle;
  v9 = titleCopy;
  v10 = v9;
  if (v9 == sectionTitle)
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqualToString:sectionTitle];

    if (!v11)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __45__PXPhotosSectionHeaderView_setSectionTitle___block_invoke;
      v12[3] = &unk_1E774C620;
      v12[4] = self;
      v13 = v10;
      [(PXPhotosSectionHeaderView *)self performBatchUpdateOfDateDependentPropertiesWithBlock:v12];
    }
  }
}

void __45__PXPhotosSectionHeaderView_setSectionTitle___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 547) = 1;
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 648);
  *(v3 + 648) = v2;
}

- (void)setWantsBackground:(BOOL)background animated:(BOOL)animated
{
  if (self->_wantsBackground != background)
  {
    self->_wantsBackground = background;
    [(PXPhotosSectionHeaderView *)self _updateBackgroundAnimated:animated];
    [(PXPhotosSectionHeaderView *)self _updateTitleLabel];
    [(PXPhotosSectionHeaderView *)self _updateLocationsLabelVisibility];
    [(PXPhotosSectionHeaderView *)self _updateDateLabel];
    [(PXPhotosSectionHeaderView *)self _updateDisclosureIcon];

    [(PXPhotosSectionHeaderView *)self _updateActionButton];
  }
}

- (void)setButtonSpec:(id)spec
{
  specCopy = spec;
  if (self->_buttonSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_buttonSpec, spec);
    [(PXPhotosSectionHeaderView *)self _updateActionButton];
    specCopy = v6;
  }
}

- (void)setBackgroundImageAlpha:(double)alpha
{
  if (self->_backgroundImageAlpha != alpha)
  {
    self->_backgroundImageAlpha = alpha;
    [(PXPhotosSectionHeaderView *)self _updateBackgroundAnimated:0];
  }
}

- (void)setBackgroundImageOverhang:(double)overhang
{
  if (self->_backgroundImageOverhang != overhang)
  {
    self->_backgroundImageOverhang = overhang;
    [(PXPhotosSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  if (self->_backgroundImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_backgroundImage, image);
    [(PXPhotosSectionHeaderView *)self _updateBackgroundAnimated:0];
    imageCopy = v6;
  }
}

- (void)setBackgroundStyle:(unint64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    [(PXPhotosSectionHeaderView *)self _updateBackgroundAnimated:0];
    [(PXPhotosSectionHeaderView *)self _updateTitleLabel];
    [(PXPhotosSectionHeaderView *)self _updateLocationsLabelVisibility];
    [(PXPhotosSectionHeaderView *)self _updateDateLabel];
    [(PXPhotosSectionHeaderView *)self _updateDisclosureIcon];

    [(PXPhotosSectionHeaderView *)self _updateActionButton];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(UILabel *)self->_titleLabel removeFromSuperview];
    titleLabel = self->_titleLabel;
    self->_titleLabel = 0;

    [(UILabel *)self->_locationsLabel removeFromSuperview];
    locationsLabel = self->_locationsLabel;
    self->_locationsLabel = 0;

    [(UILabel *)self->_dateLabel removeFromSuperview];
    dateLabel = self->_dateLabel;
    self->_dateLabel = 0;

    [(PXPhotosSectionHeaderView *)self _updateDisclosureIcon];

    [(PXPhotosSectionHeaderView *)self setNeedsLayout];
  }
}

- (PXPhotosSectionHeaderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXPhotosSectionHeaderView;
  v3 = [(PXPhotosSectionHeaderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_style = 0;
    v3->_allowsPhotosDetailsInteraction = 1;
    v3->_backgroundStyle = 0;
    [(PXPhotosSectionHeaderView *)v3 _updateBackgroundAnimated:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXPhotosSectionHeaderView *)v4 setBackgroundColor:clearColor];

    [(PXPhotosSectionHeaderView *)v4 setOpaque:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    layer = [(PXPhotosSectionHeaderView *)v4 layer];
    [layer setAllowsGroupOpacity:0];
  }

  return v4;
}

+ (BOOL)_hasAccessibilityLargeText
{
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  LOBYTE(self) = [self shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:currentTraitCollection];

  return self;
}

+ (BOOL)shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:(id)collecton
{
  v4 = *MEMORY[0x1E69DDA98];
  collectonCopy = collecton;
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];
  v7 = [self shouldUsePhoneLayoutWithTraitCollection:collectonCopy];

  if (v7)
  {
    LOBYTE(v7) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  }

  return v7;
}

+ (BOOL)shouldUsePhoneLayoutWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy horizontalSizeClass] == 1 || objc_msgSend(collectionCopy, "verticalSizeClass") == 1;

  return v4;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      px_descriptionForAssertionMessage = [dataCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:435 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v18, px_descriptionForAssertionMessage}];
    }
  }

  v6 = objc_getAssociatedObject(self, UserDataAssociationKey_236924);
  if (v6 != dataCopy)
  {
    objc_setAssociatedObject(self, UserDataAssociationKey_236924, dataCopy, 3);
    weakLayout = [dataCopy weakLayout];
    [(PXPhotosSectionHeaderView *)self setDelegate:weakLayout];
    -[PXPhotosSectionHeaderView setStyle:](self, "setStyle:", [dataCopy headerStyle]);
    sharedInstance = [off_1E7721810 sharedInstance];
    -[PXPhotosSectionHeaderView setBackgroundStyle:](self, "setBackgroundStyle:", [sharedInstance useGradientSectionHeaders]);

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__PXPhotosSectionHeaderView_PXGReusableView__setUserData___block_invoke;
    v20[3] = &unk_1E774C620;
    v20[4] = self;
    v9 = dataCopy;
    v21 = v9;
    [(PXPhotosSectionHeaderView *)self performBatchUpdateOfDateDependentPropertiesWithBlock:v20];
    locationNames = [v9 locationNames];
    [(PXPhotosSectionHeaderView *)self setSectionLocations:locationNames];

    [(PXPhotosSectionHeaderView *)self setContentInsets:0.0, 20.0, 0.0, 20.0];
    [(PXPhotosSectionHeaderView *)self setHighlightInsets:-7.5, 0.0, 2.0, 0.0];
    v11 = [v9 actionType] - 1;
    if (v11 > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = PXLocalizedStringFromTable(off_1E7749448[v11], @"PhotosUICore");
    }

    [(PXPhotosSectionHeaderView *)self setShowsActionButton:v12 != 0];
    [(PXPhotosSectionHeaderView *)self setActionButtonTitle:v12];
    -[PXPhotosSectionHeaderView setAllowsPhotosDetailsInteraction:](self, "setAllowsPhotosDetailsInteraction:", [v9 allowsPhotosDetailsInteraction]);
    backdropViewGroupName = [v9 backdropViewGroupName];
    [(PXPhotosSectionHeaderView *)self setBackdropViewGroupName:backdropViewGroupName];

    gradientImage = [v9 gradientImage];
    [(PXPhotosSectionHeaderView *)self setBackgroundImage:gradientImage];

    [v9 gradientAlpha];
    [(PXPhotosSectionHeaderView *)self setBackgroundImageAlpha:?];
    [v9 gradientOverhang];
    [(PXPhotosSectionHeaderView *)self setBackgroundImageOverhang:?];
    buttonSpec = [v9 buttonSpec];
    [(PXPhotosSectionHeaderView *)self setButtonSpec:buttonSpec];

    -[PXPhotosSectionHeaderView setBackgroundStyle:](self, "setBackgroundStyle:", [v9 backgroundStyle]);
    -[PXPhotosSectionHeaderView setWantsBackground:animated:](self, "setWantsBackground:animated:", [weakLayout wantsBackground], objc_msgSend(weakLayout, "scrollSpeedRegime") < 2);
  }
}

void __58__PXPhotosSectionHeaderView_PXGReusableView__setUserData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) title];
  [*(a1 + 32) setSectionTitle:v2];

  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) startDate];
  v4 = [*(a1 + 40) endDate];
  [v3 setSectionStartDate:v5 endDate:v4];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlbumSectionHeaderLayoutProvider+iOS.m" lineNumber:427 description:@"Clipping isn't supported"];
  }
}

@end
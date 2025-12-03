@interface PXCMMPosterBannerView
- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXCMMPosterBannerView)initWithFrame:(CGRect)frame;
- (id)_actionButtonWithTitle:(id)title action:(SEL)action;
- (id)_attributedStringWithString:(id)string boldRange:(_NSRange)range;
- (id)_headlineStringAttributes;
- (void)_actionButtonTapped:(id)tapped;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_updateActionButton;
- (void)_updateLoadingPeopleSuggestions;
- (void)_updateTitles;
- (void)layoutSubviews;
- (void)setActionButtonWithTitle:(id)title actionBlock:(id)block;
- (void)setAddingPhotos:(BOOL)photos;
- (void)setHeadline:(id)headline boldRange:(_NSRange)range;
- (void)setLoadingPeopleSuggestions:(BOOL)suggestions;
- (void)setLocalizedNamesForHeadline:(id)headline;
- (void)setSubheadline:(id)subheadline;
- (void)willMoveToWindow:(id)window;
@end

@implementation PXCMMPosterBannerView

- (id)_attributedStringWithString:(id)string boldRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v14[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  _headlineStringAttributes = [(PXCMMPosterBannerView *)self _headlineStringAttributes];
  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:stringCopy attributes:_headlineStringAttributes];

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    _headlineLabelBoldFont = [objc_opt_class() _headlineLabelBoldFont];
    v13 = *MEMORY[0x1E69DB648];
    v14[0] = _headlineLabelBoldFont;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v9 setAttributes:v11 range:{location, length}];
  }

  return v9;
}

- (id)_headlineStringAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 setAlignment:0];
  [v2 setLineBreakMode:0];
  v6[0] = *MEMORY[0x1E69DB648];
  _headlineLabelFont = [objc_opt_class() _headlineLabelFont];
  v6[1] = *MEMORY[0x1E69DB688];
  v7[0] = _headlineLabelFont;
  v7[1] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_actionButtonWithTitle:(id)title action:(SEL)action
{
  v6 = MEMORY[0x1E69DC740];
  titleCopy = title;
  filledButtonConfiguration = [v6 filledButtonConfiguration];
  [filledButtonConfiguration setCornerStyle:4];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [filledButtonConfiguration setBaseForegroundColor:whiteColor];

  tintColor = [(PXCMMPosterBannerView *)self tintColor];
  [filledButtonConfiguration setBaseBackgroundColor:tintColor];

  [filledButtonConfiguration setTitle:titleCopy];
  [filledButtonConfiguration setButtonSize:1];
  [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_25304];
  v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
  [v11 addTarget:self action:action forControlEvents:0x2000];

  return v11;
}

id __55__PXCMMPosterBannerView__actionButtonWithTitle_action___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB980]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
{
  _subheadlineLabelFont = [objc_opt_class() _subheadlineLabelFont];
  [(UILabel *)self->_subheadlineLabel setFont:_subheadlineLabelFont];

  [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateTitles];
  updater = self->_updater;

  [(PXUpdater *)updater setNeedsUpdateOf:sel__updateActionButton];
}

- (void)_actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_actionButtonAction && ![(PXCMMPosterBannerView *)self isAddingPhotos])
  {
    v5 = [self->_actionButtonAction copy];
    (*(v5 + 16))();
  }

  else
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Tap on action button, but no button action block.", v6, 2u);
    }
  }
}

- (void)_updateTitles
{
  headline = self->_headline;
  if (headline || self->_localizedNamesForHeadline)
  {
    if (self->_headlineLabel)
    {
      if (headline)
      {
LABEL_5:
        v4 = [(PXCMMPosterBannerView *)self _attributedStringWithString:headline boldRange:self->_headlineBoldRange.location, self->_headlineBoldRange.length];
        [(UILabel *)self->_headlineLabel setAttributedText:v4];

        goto LABEL_9;
      }
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E69DCC10]);
      v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      headlineLabel = self->_headlineLabel;
      self->_headlineLabel = v6;

      [(UILabel *)self->_headlineLabel setNumberOfLines:0];
      contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
      [contentView addSubview:self->_headlineLabel];

      headline = self->_headline;
      if (headline)
      {
        goto LABEL_5;
      }
    }

    [(UILabel *)self->_headlineLabel setAttributedText:?];
  }

  else
  {
    [(UILabel *)self->_headlineLabel removeFromSuperview];
    v9 = self->_headlineLabel;
    self->_headlineLabel = 0;
  }

LABEL_9:
  subheadline = self->_subheadline;
  subheadlineLabel = self->_subheadlineLabel;
  if (subheadline)
  {
    if (!subheadlineLabel)
    {
      v12 = objc_alloc(MEMORY[0x1E69DCC10]);
      v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v14 = self->_subheadlineLabel;
      self->_subheadlineLabel = v13;

      _subheadlineLabelFont = [objc_opt_class() _subheadlineLabelFont];
      [(UILabel *)self->_subheadlineLabel setFont:_subheadlineLabelFont];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)self->_subheadlineLabel setTextColor:secondaryLabelColor];

      contentView2 = [(UIVisualEffectView *)self->_visualEffectView contentView];
      [contentView2 addSubview:self->_subheadlineLabel];

      subheadline = self->_subheadline;
      subheadlineLabel = self->_subheadlineLabel;
    }

    [(UILabel *)subheadlineLabel setText:subheadline];
  }

  else
  {
    [(UILabel *)subheadlineLabel removeFromSuperview];
    v18 = self->_subheadlineLabel;
    self->_subheadlineLabel = 0;
  }
}

- (void)_updateActionButton
{
  actionButtonAction = self->_actionButtonAction;
  actionButtonTitle = self->_actionButtonTitle;
  actionButton = self->_actionButton;
  if (actionButtonTitle)
  {
    if (actionButton)
    {
      goto LABEL_6;
    }

    v6 = [PXCMMPosterBannerView _actionButtonWithTitle:"_actionButtonWithTitle:action:" action:?];
    v7 = self->_actionButton;
    self->_actionButton = v6;

    contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
    [contentView addSubview:self->_actionButton];
  }

  else
  {
    [(UIButton *)actionButton removeFromSuperview];
    contentView = self->_actionButton;
    self->_actionButton = 0;
  }

  actionButton = self->_actionButton;
LABEL_6:
  [(UIButton *)actionButton setEnabled:actionButtonAction != 0];
  configuration = [(UIButton *)self->_actionButton configuration];
  v10 = [configuration copy];

  [v10 setTitle:self->_actionButtonTitle];
  [(UIButton *)self->_actionButton sizeToFit];
  [v10 setShowsActivityIndicator:{-[PXCMMPosterBannerView isAddingPhotos](self, "isAddingPhotos")}];
  [(UIButton *)self->_actionButton setConfiguration:v10];
  [(PXCMMPosterBannerView *)self setNeedsLayout];
}

- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames
{
  framesCopy = frames;
  [(PXUpdater *)self->_updater updateIfNeeded];
  widthCopy = width;
  v7 = width + -32.0;
  v47.origin.x = 16.0;
  v47.origin.y = 0.0;
  v47.size.width = v7;
  v47.size.height = 1.79769313e308;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = 16.0;
  v48.origin.y = 0.0;
  v48.size.width = v7;
  v48.size.height = 1.79769313e308;
  MaxX = CGRectGetMaxX(v48);
  v11 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v14 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXCMMPosterBannerView semanticContentAttribute](self, "semanticContentAttribute")}];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  actionButton = self->_actionButton;
  v41 = v13;
  v42 = v11;
  v45 = v10;
  if (actionButton)
  {
    [(UIButton *)actionButton sizeThatFits:MaxX - MinX, 1.79769313e308];
    v20 = v19;
    v22 = v21;
    v23 = MinX;
    if ((v14 == 0) != IsAccessibilityCategory)
    {
      v49.origin.x = 16.0;
      v49.origin.y = 0.0;
      v49.size.width = v7;
      v24 = v20;
      v49.size.height = 1.79769313e308;
      v25 = CGRectGetMaxX(v49);
      v20 = v24;
      v23 = v25 - v24;
    }

    v10 = (60.0 - v22) * 0.5;
    v26 = v22;
    if (!IsAccessibilityCategory)
    {
      v27 = v20 + 16.0;
      if (v14)
      {
        MinX = MinX + v27;
      }

      else
      {
        MaxX = MaxX - v27;
      }
    }
  }

  else
  {
    v26 = v12;
    v20 = v13;
    v23 = v11;
  }

  headlineLabel = self->_headlineLabel;
  rect = v26;
  if (headlineLabel)
  {
    v29 = MaxX - MinX;
    if (self->_headline)
    {
      v30 = MaxX - MinX;
    }

    else
    {
      v30 = MaxX - MinX;
      if (self->_localizedNamesForHeadline)
      {
        _headlineStringAttributes = [(PXCMMPosterBannerView *)self _headlineStringAttributes];
        _headlineLabelBoldFont = [objc_opt_class() _headlineLabelBoldFont];
        v33 = [PXCMMSharePromptStringGenerator sharePromptStringWithAttributes:_headlineStringAttributes boldFont:_headlineLabelBoldFont lines:2 width:self->_localizedNamesForHeadline names:self->_containsUnverifiedPersons containsUnverifiedPersons:v30];
        [(UILabel *)self->_headlineLabel setAttributedText:v33];

        headlineLabel = self->_headlineLabel;
      }
    }

    if ([(UILabel *)headlineLabel px_isOneLineForWidth:v30])
    {
      if (!self->_subheadlineLabel)
      {
        PXScaledValueForTextStyleWithSymbolicTraits();
      }
    }

    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  if (self->_subheadlineLabel)
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  v39 = v26;
  v34 = 0.0 + 9.0 + 0.0;
  if (!self->_actionButton)
  {
    v35 = v23;
    if (!framesCopy)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (IsAccessibilityCategory)
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  v35 = v23;
  v10 = (v34 - v39) * 0.5;
  if (framesCopy)
  {
LABEL_26:
    v36 = v20;
    [(UIVisualEffectView *)self->_visualEffectView setFrame:0.0, 0.0, widthCopy, v34, *&v42];
    [(UILabel *)self->_headlineLabel setFrame:v42, v45, v41, v12];
    [(UILabel *)self->_subheadlineLabel setFrame:v40, v45, v41, v12];
    [(UIButton *)self->_actionButton setFrame:v35, v10, v36, rect];
  }

LABEL_27:
  v37 = widthCopy;
  v38 = 0.0 + 9.0 + 0.0;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)_updateLoadingPeopleSuggestions
{
  isLoadingPeopleSuggestions = [(PXCMMPosterBannerView *)self isLoadingPeopleSuggestions];
  configuration = [(UIButton *)self->_actionButton configuration];
  [configuration setShowsActivityIndicator:isLoadingPeopleSuggestions];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PXCMMPosterBannerView;
  [(PXCMMPosterBannerView *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateTitles];
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateActionButton];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCMMPosterBannerView;
  [(PXCMMPosterBannerView *)&v4 layoutSubviews];
  [(PXCMMPosterBannerView *)self bounds];
  [(PXCMMPosterBannerView *)self _performLayoutInWidth:1 updateSubviewFrames:v3];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXCMMPosterBannerView *)self _performLayoutInWidth:0 updateSubviewFrames:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setActionButtonWithTitle:(id)title actionBlock:(id)block
{
  titleCopy = title;
  blockCopy = block;
  actionButtonTitle = self->_actionButtonTitle;
  if (actionButtonTitle != titleCopy && ![(NSString *)actionButtonTitle isEqualToString:titleCopy])
  {
    v8 = [(NSString *)titleCopy copy];
    v9 = self->_actionButtonTitle;
    self->_actionButtonTitle = v8;
  }

  v10 = [blockCopy copy];
  actionButtonAction = self->_actionButtonAction;
  self->_actionButtonAction = v10;

  [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateActionButton];
}

- (void)setSubheadline:(id)subheadline
{
  subheadlineCopy = subheadline;
  subheadline = self->_subheadline;
  if (subheadline != subheadlineCopy)
  {
    v9 = subheadlineCopy;
    v6 = [(NSString *)subheadline isEqualToString:subheadlineCopy];
    subheadlineCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_subheadline;
      self->_subheadline = v7;

      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateTitles];
      subheadlineCopy = v9;
    }
  }
}

- (void)setLocalizedNamesForHeadline:(id)headline
{
  headlineCopy = headline;
  if (([headlineCopy isEqualToArray:self->_localizedNamesForHeadline] & 1) == 0)
  {
    v4 = [headlineCopy copy];
    localizedNamesForHeadline = self->_localizedNamesForHeadline;
    self->_localizedNamesForHeadline = v4;

    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateTitles];
  }
}

- (void)setHeadline:(id)headline boldRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  headlineCopy = headline;
  headline = self->_headline;
  v13 = headlineCopy;
  if (headline != headlineCopy && (v9 = [(NSString *)headline isEqualToString:headlineCopy], headlineCopy = v13, !v9) || (self->_headlineBoldRange.location == location ? (v10 = self->_headlineBoldRange.length == length) : (v10 = 0), !v10))
  {
    v11 = [(NSString *)headlineCopy copy];
    v12 = self->_headline;
    self->_headline = v11;

    self->_headlineBoldRange.location = location;
    self->_headlineBoldRange.length = length;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateTitles];
    headlineCopy = v13;
  }
}

- (void)setAddingPhotos:(BOOL)photos
{
  if (self->_addingPhotos != photos)
  {
    self->_addingPhotos = photos;
    [(PXCMMPosterBannerView *)self _updateActionButton];
  }
}

- (void)setLoadingPeopleSuggestions:(BOOL)suggestions
{
  if (self->_loadingPeopleSuggestions != suggestions)
  {
    self->_loadingPeopleSuggestions = suggestions;
    [(PXCMMPosterBannerView *)self _updateLoadingPeopleSuggestions];
  }
}

- (PXCMMPosterBannerView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PXCMMPosterBannerView;
  v3 = [(PXCMMPosterBannerView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 408) = xmmword_1A5380D90;
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
    visualEffectView = v4->_visualEffectView;
    v4->_visualEffectView = v6;

    [(PXCMMPosterBannerView *)v4 addSubview:v4->_visualEffectView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v9 = [[off_1E7721940 alloc] initWithTarget:v4];
    updater = v4->_updater;
    v4->_updater = v9;

    [(PXUpdater *)v4->_updater setNeedsUpdateSelector:sel_setNeedsLayout];
    [(PXUpdater *)v4->_updater addUpdateSelector:sel__updateActionButton];
    [(PXUpdater *)v4->_updater addUpdateSelector:sel__updateTitles];
    [(PXUpdater *)v4->_updater setNeedsUpdateOf:sel__updateActionButton];
    [(PXUpdater *)v4->_updater setNeedsUpdateOf:sel__updateTitles];
  }

  return v4;
}

@end
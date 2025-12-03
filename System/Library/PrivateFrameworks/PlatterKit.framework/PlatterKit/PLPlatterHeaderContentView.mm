@interface PLPlatterHeaderContentView
+ (double)contentBaselineToBoundsBottomWithWidth:(double)width scale:(double)scale;
- (BOOL)adjustForContentSizeCategoryChange;
- (BSUIFontProvider)_fontProvider;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)icons;
- (NSString)preferredContentSizeCategory;
- (NSString)title;
- (PLPlatterHeaderContentView)init;
- (UIButton)utilityButton;
- (UIFont)_dateLabelFont;
- (UIFont)_titleLabelFont;
- (double)_headerHeightForWidth:(double)width;
- (double)contentBaseline;
- (id)_attributedStringForTitle:(id)title;
- (id)_dateLabelPreferredFont;
- (id)_layoutManager;
- (id)_lazyTitleLabel;
- (id)_newIconButton;
- (id)_newTitleLabel;
- (id)_titleLabelPreferredFont;
- (id)_updateTitleAttributesForAttributedString:(id)string;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureDateLabel;
- (void)_configureDateLabelIfNecessary;
- (void)_configureIconButton:(id)button withIcon:(id)icon;
- (void)_configureIconButtonsForIcons:(id)icons;
- (void)_configureTitleLabel:(id)label;
- (void)_configureUtilityButton;
- (void)_configureUtilityButtonIfNecessary;
- (void)_darkerSystemColorsStatusDidChange:(id)change;
- (void)_layoutDateLabelWithScale:(double)scale;
- (void)_layoutIconButtonsWithScale:(double)scale;
- (void)_layoutTitleLabelWithScale:(double)scale;
- (void)_layoutUtilityButtonWithScale:(double)scale;
- (void)_recycleDateLabel;
- (void)_reduceTransparencyStatusDidChange:(id)change;
- (void)_setUsesLargeTextLayout:(BOOL)layout;
- (void)_tearDownDateLabel;
- (void)_updateStylingForTitleLabel:(id)label;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForTitleLabel:(id)label;
- (void)_updateUtilityButtonFont;
- (void)_updateUtilityButtonVisualStyling;
- (void)dateLabelDidChange:(id)change;
- (void)dealloc;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setIcons:(id)icons;
- (void)setTimeZone:(id)zone;
- (void)setTitle:(id)title;
- (void)setUtilityView:(id)view;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation PLPlatterHeaderContentView

+ (double)contentBaselineToBoundsBottomWithWidth:(double)width scale:(double)scale
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  v9 = objc_opt_class();
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v11 = [self _titleLabelFontFromFontProvider:preferredFontProvider];
  [v9 contentBaselineToBoundsBottomWithFont:v11 boundsWidth:width scale:scale];
  v13 = v12;

  return v13;
}

- (PLPlatterHeaderContentView)init
{
  v7.receiver = self;
  v7.super_class = PLPlatterHeaderContentView;
  v2 = [(PLPlatterHeaderContentView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_dateFormatStyle = 1;
    [(PLPlatterHeaderContentView *)v2 setPreservesSuperviewLayoutMargins:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__darkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__reduceTransparencyStatusDidChange_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76460] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D764C8] object:0];

  [(PLPlatterHeaderContentView *)self _recycleDateLabel];
  v5.receiver = self;
  v5.super_class = PLPlatterHeaderContentView;
  [(PLPlatterHeaderContentView *)&v5 dealloc];
}

- (BSUIFontProvider)_fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(PLPlatterHeaderContentView *)self adjustsFontForContentSizeCategory])
    {
      [MEMORY[0x277CF0D60] preferredFontProvider];
    }

    else
    {
      [MEMORY[0x277CF0D60] defaultFontProvider];
    }
    v3 = ;
    fontProvider = self->_fontProvider;
    self->_fontProvider = v3;
  }

  v5 = self->_fontProvider;

  return v5;
}

- (id)_layoutManager
{
  layoutManager = self->_layoutManager;
  if (!layoutManager)
  {
    [(PLPlatterHeaderContentView *)self _usesLargeTextLayout];
    v4 = [objc_alloc(objc_opt_class()) initWithPlatterHeaderContentView:self];
    v5 = self->_layoutManager;
    self->_layoutManager = v4;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (void)_setUsesLargeTextLayout:(BOOL)layout
{
  if (self->_usesLargeTextLayout != layout)
  {
    self->_usesLargeTextLayout = layout;
    self->_layoutManager = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PLPlatterHeaderContentView *)self _headerHeightForWidth:fits.width, fits.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (NSArray)icons
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_iconButtons count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = self->_iconButtons;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v11 + 1) + 8 * i) imageForState:{0, v11}];
            [v3 addObject:v9];
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_configureIconButtonsForIcons:(id)icons
{
  iconsCopy = icons;
  if ([iconsCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v4 = 0;
  }

  v5 = [iconsCopy count];
  p_iconButtons = &self->_iconButtons;
  if (v5 | [(NSArray *)self->_iconButtons count])
  {
    v7 = 0;
    do
    {
      v8 = [iconsCopy count];
      v9 = [(NSArray *)*p_iconButtons count];
      if (v7 >= v8)
      {
        if (v7 >= v9)
        {
          _newIconButton = 0;
        }

        else
        {
          _newIconButton = [(NSArray *)*p_iconButtons objectAtIndex:v7];
        }

        [_newIconButton removeFromSuperview];
      }

      else
      {
        if (v7 >= v9 || ([(NSArray *)*p_iconButtons objectAtIndex:v7], (_newIconButton = objc_claimAutoreleasedReturnValue()) == 0))
        {
          _newIconButton = [(PLPlatterHeaderContentView *)self _newIconButton];
          [(PLPlatterHeaderContentView *)self addSubview:_newIconButton];
        }

        v11 = [iconsCopy objectAtIndex:v7];
        [(PLPlatterHeaderContentView *)self _configureIconButton:_newIconButton withIcon:v11];
        [(NSArray *)v4 addObject:_newIconButton];
      }

      ++v7;
      v12 = [iconsCopy count];
      p_iconButtons = &self->_iconButtons;
      v13 = [(NSArray *)self->_iconButtons count];
      if (v12 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }
    }

    while (v7 < v14);
  }

  v15 = *p_iconButtons;
  *p_iconButtons = v4;
}

- (void)setIcons:(id)icons
{
  iconButtons = self->_iconButtons;
  iconsCopy = icons;
  v6 = [(NSArray *)iconButtons count];
  [(PLPlatterHeaderContentView *)self _configureIconButtonsForIcons:iconsCopy];

  if (v6 != [(NSArray *)self->_iconButtons count])
  {
    titleLabel = self->_titleLabel;

    [(PLPlatterHeaderContentView *)self _updateTextAttributesForTitleLabel:titleLabel];
  }
}

- (NSString)title
{
  _titleLabel = [(PLPlatterHeaderContentView *)self _titleLabel];
  text = [_titleLabel text];

  return text;
}

- (id)_titleLabelPreferredFont
{
  v3 = objc_opt_class();
  _fontProvider = [(PLPlatterHeaderContentView *)self _fontProvider];
  v5 = [v3 _titleLabelFontFromFontProvider:_fontProvider];

  return v5;
}

- (UIFont)_titleLabelFont
{
  attributedText = [(UILabel *)self->_titleLabel attributedText];
  if ([attributedText length])
  {
    [(UILabel *)self->_titleLabel font];
  }

  else
  {
    [(PLPlatterHeaderContentView *)self _titleLabelPreferredFont];
  }
  v4 = ;

  return v4;
}

- (void)_updateTextAttributesForTitleLabel:(id)label
{
  labelCopy = label;
  attributedText = [labelCopy attributedText];
  v5 = [attributedText mutableCopy];
  v6 = [(PLPlatterHeaderContentView *)self _updateTitleAttributesForAttributedString:v5];
  [labelCopy setAttributedText:v6];

  [labelCopy setNumberOfLines:{-[PLPlatterHeaderContentView _usesLargeTextLayout](self, "_usesLargeTextLayout") ^ 1}];
}

- (id)_newTitleLabel
{
  v2 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v2 _setOverallWritingDirectionFollowsLayoutDirection:1];
  return v2;
}

- (id)_lazyTitleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    _newTitleLabel = [(PLPlatterHeaderContentView *)self _newTitleLabel];
    v5 = self->_titleLabel;
    self->_titleLabel = _newTitleLabel;

    [(PLPlatterHeaderContentView *)self addSubview:self->_titleLabel];
    [(PLPlatterHeaderContentView *)self _configureTitleLabel:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    titleCopy = @" ";
  }

  v10 = titleCopy;
  title = [(PLPlatterHeaderContentView *)self title];
  v6 = [(__CFString *)v10 isEqualToString:title];

  if ((v6 & 1) == 0)
  {
    _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
    [_layoutManager invalidateCachedSizeInfo];

    _lazyTitleLabel = [(PLPlatterHeaderContentView *)self _lazyTitleLabel];
    v9 = [(PLPlatterHeaderContentView *)self _attributedStringForTitle:v10];
    [_lazyTitleLabel setAttributedText:v9];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
    self->_hasUpdatedContent = 1;
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      self->_hasUpdatedContent = 0;
      [_lazyTitleLabel pl_performCrossFadeIfNecessary];
    }
  }
}

- (id)_attributedStringForTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:titleCopy];
    v6 = [(PLPlatterHeaderContentView *)self _updateTitleAttributesForAttributedString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_updateTitleAttributesForAttributedString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    _usesLargeTextLayout = [(PLPlatterHeaderContentView *)self _usesLargeTextLayout];
    if (_usesLargeTextLayout)
    {
      v6 = 0.45;
    }

    else
    {
      v6 = 0.0;
    }

    if (_usesLargeTextLayout)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v9 = [defaultParagraphStyle mutableCopy];

    v10 = [(NSArray *)self->_iconButtons count];
    [(PLPlatterHeaderContentView *)self _iconDimension];
    v12 = v11;
    [(PLPlatterHeaderContentView *)self _iconLeadingPadding];
    v14 = v10 - 1;
    if (!v10)
    {
      v14 = 0;
    }

    v15 = v13 * v14 + v12 * v10;
    if (v10)
    {
      [(PLPlatterHeaderContentView *)self _iconTrailingPadding];
    }

    else
    {
      v16 = 0.0;
    }

    [v9 setFirstLineHeadIndent:v15 + v16];
    [v9 setLineBreakMode:v7];
    *&v17 = v6;
    [v9 setHyphenationFactor:v17];
    [stringCopy addAttribute:*MEMORY[0x277D74118] value:v9 range:{0, objc_msgSend(stringCopy, "length")}];
    v18 = *MEMORY[0x277D740A8];
    _titleLabelPreferredFont = [(PLPlatterHeaderContentView *)self _titleLabelPreferredFont];
    [stringCopy addAttribute:v18 value:_titleLabelPreferredFont range:{0, objc_msgSend(stringCopy, "length")}];
  }

  return stringCopy;
}

- (void)_updateTextAttributesForDateLabel
{
  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    [(BSUIDateLabel *)dateLabel setAdjustsFontSizeToFitWidth:[(PLPlatterHeaderContentView *)self _usesLargeTextLayout]];
    v4 = self->_dateLabel;
    _dateLabelPreferredFont = [(PLPlatterHeaderContentView *)self _dateLabelPreferredFont];
    [(BSUIDateLabel *)v4 setFont:_dateLabelPreferredFont];

    [(BSUIDateLabel *)self->_dateLabel setNumberOfLines:1];
    v6 = self->_dateLabel;

    [(BSUIDateLabel *)v6 setLineBreakMode:3];
  }
}

- (UIFont)_dateLabelFont
{
  font = [(BSUIDateLabel *)self->_dateLabel font];
  v4 = font;
  if (font)
  {
    _dateLabelPreferredFont = font;
  }

  else
  {
    _dateLabelPreferredFont = [(PLPlatterHeaderContentView *)self _dateLabelPreferredFont];
  }

  v6 = _dateLabelPreferredFont;

  return v6;
}

- (id)_dateLabelPreferredFont
{
  _fontProvider = [(PLPlatterHeaderContentView *)self _fontProvider];
  v3 = [_fontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];

  return v3;
}

- (void)_configureDateLabelIfNecessary
{
  if (!self->_dateLabel)
  {
    if (self->_date)
    {
      [(PLPlatterHeaderContentView *)self _configureDateLabel];
    }
  }
}

- (void)_recycleDateLabel
{
  [(BSUIDateLabel *)self->_dateLabel setDelegate:0];
  [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_dateLabel];
  [(BSUIDateLabel *)self->_dateLabel mt_removeAllVisualStyling];
  v3 = +[PLPlatterHeaderViewDateLabelFactory sharedInstance];
  [v3 recycleLabel:self->_dateLabel];
}

- (void)_tearDownDateLabel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__PLPlatterHeaderContentView__tearDownDateLabel__block_invoke;
  v2[3] = &unk_2784250D8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __48__PLPlatterHeaderContentView__tearDownDateLabel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 408);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 32) _recycleDateLabel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 408);
    *(v3 + 408) = 0;
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [dateCopy copy];
    date = self->_date;
    self->_date = v4;

    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  if (self->_dateAllDay != day)
  {
    self->_dateAllDay = day;
    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if (self->_dateFormatStyle != style)
  {
    self->_dateFormatStyle = style;
    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [zoneCopy copy];
    timeZone = self->_timeZone;
    self->_timeZone = v4;

    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (UIButton)utilityButton
{
  [(PLPlatterHeaderContentView *)self _configureUtilityButtonIfNecessary];
  utilityButton = self->_utilityButton;

  return utilityButton;
}

- (void)setUtilityView:(id)view
{
  viewCopy = view;
  utilityView = self->_utilityView;
  if (utilityView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)utilityView removeFromSuperview];
    objc_storeStrong(&self->_utilityView, view);
    [(PLPlatterHeaderContentView *)self addSubview:self->_utilityView];
    utilityView = [(PLPlatterHeaderContentView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](utilityView, viewCopy);
}

- (double)contentBaseline
{
  if ([(PLPlatterHeaderContentView *)self _usesLargeTextLayout])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__PLPlatterHeaderContentView_contentBaseline__block_invoke;
    v7[3] = &unk_2784250D8;
    v7[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  }

  _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
  [_layoutManager contentBaseline];
  v5 = v4;

  return v5;
}

- (void)_updateUtilityButtonFont
{
  utilityButton = self->_utilityButton;
  if (utilityButton)
  {
    titleLabel = [(UIButton *)utilityButton titleLabel];
    _fontProvider = [(PLPlatterHeaderContentView *)self _fontProvider];
    v5 = [_fontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];
    [titleLabel setFont:v5];
  }
}

- (void)layoutMarginsDidChange
{
  if (self->_heedsHorizontalLayoutMargins)
  {
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PLPlatterHeaderContentView;
  [(PLPlatterHeaderContentView *)&v8 layoutSubviews];
  [(PLPlatterHeaderContentView *)self _configureDateLabelIfNecessary];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  [(PLPlatterHeaderContentView *)self _layoutIconButtonsWithScale:v5];
  _utilityButton = [(PLPlatterHeaderContentView *)self _utilityButton];

  if (_utilityButton)
  {
    [(PLPlatterHeaderContentView *)self _layoutUtilityButtonWithScale:v5];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PLPlatterHeaderContentView_layoutSubviews__block_invoke;
  v7[3] = &unk_2784253A0;
  v7[4] = self;
  *&v7[5] = v5;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  if (self->_hasUpdatedContent)
  {
    self->_hasUpdatedContent = 0;
    [(UILabel *)self->_titleLabel pl_performCrossFadeIfNecessary];
  }
}

uint64_t __44__PLPlatterHeaderContentView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutDateLabelWithScale:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _layoutTitleLabelWithScale:v3];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (category == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (category == 1 && self->_visualStylingProvider != providerCopy)
  {
    v8 = providerCopy;
    [(MTVisualStylingProvider *)providerCopy stopAutomaticallyUpdatingView:self->_titleLabel];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:self->_dateLabel];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:self->_utilityButton];
    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:self->_titleLabel];
    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];
    [(PLPlatterHeaderContentView *)self _updateUtilityButtonVisualStyling];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
    providerCopy = v8;
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(PLPlatterHeaderContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (!preferredContentSizeCategory)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    preferredContentSizeCategory = self->_preferredContentSizeCategory;
  }

  return preferredContentSizeCategory;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  preferredContentSizeCategory2 = [(PLPlatterHeaderContentView *)self preferredContentSizeCategory];
  v6 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v6 & 1) == 0)
  {
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(PLPlatterHeaderContentView *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
    [(PLPlatterHeaderContentView *)self _setUsesLargeTextLayout:UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory)];
    _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
    [_layoutManager invalidateCachedSizeInfo];

    _titleLabel = [(PLPlatterHeaderContentView *)self _titleLabel];
    [(PLPlatterHeaderContentView *)self _updateTextAttributesForTitleLabel:_titleLabel];

    [(PLPlatterHeaderContentView *)self _updateTextAttributesForDateLabel];
    [(PLPlatterHeaderContentView *)self _updateUtilityButtonFont];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }

  return v6 ^ 1;
}

- (void)dateLabelDidChange:(id)change
{
  if (![(PLPlatterHeaderContentView *)self _usesLargeTextLayout])
  {
    [(BSUIDateLabel *)self->_dateLabel sizeToFit];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)_configureUtilityButtonIfNecessary
{
  if (!self->_utilityButton)
  {
    [(PLPlatterHeaderContentView *)self _configureUtilityButton];
  }
}

- (double)_headerHeightForWidth:(double)width
{
  _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
  [_layoutManager headerHeightForWidth:width];
  v6 = v5;

  return v6;
}

- (id)_newIconButton
{
  v2 = objc_alloc_init(MEMORY[0x277D75220]);
  [v2 setContentMode:4];
  [v2 setAdjustsImageWhenHighlighted:0];
  return v2;
}

- (void)_configureIconButton:(id)button withIcon:(id)icon
{
  buttonCopy = button;
  iconCopy = icon;
  [buttonCopy setImage:iconCopy forState:0];
  isSymbolImage = [iconCopy isSymbolImage];

  if (isSymbolImage)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [buttonCopy setTintColor:labelColor];
  }

  else
  {
    [buttonCopy setTintColor:0];
  }
}

- (void)_updateStylingForTitleLabel:(id)label
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    labelCopy = label;
    [MTVisualStylingProvider automaticallyUpdateView:"automaticallyUpdateView:withStyle:" withStyle:?];
  }

  else
  {
    v4 = MEMORY[0x277D75348];
    labelCopy2 = label;
    labelCopy = [v4 blackColor];
    [labelCopy2 setTextColor:?];
  }
}

- (void)_configureTitleLabel:(id)label
{
  labelCopy = label;
  [(PLPlatterHeaderContentView *)self _updateTextAttributesForTitleLabel:labelCopy];
  [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:labelCopy];
}

- (void)_configureDateLabel
{
  v3 = +[PLPlatterHeaderViewDateLabelFactory sharedInstance];
  v4 = [v3 startLabelWithStartDate:self->_date endDate:0 timeZone:self->_timeZone allDay:self->_dateAllDay forStyle:BSUIDateFormatStyleFromPLDateFormatStyle(self->_dateFormatStyle)];
  dateLabel = self->_dateLabel;
  self->_dateLabel = v4;

  [(BSUIDateLabel *)self->_dateLabel setDelegate:self];
  [(PLPlatterHeaderContentView *)self addSubview:self->_dateLabel];
  [(PLPlatterHeaderContentView *)self _updateTextAttributesForDateLabel];
  visualStylingProvider = self->_visualStylingProvider;
  v7 = self->_dateLabel;
  if (visualStylingProvider)
  {

    [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:v7 withStyle:1];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(BSUIDateLabel *)v7 setTextColor:blackColor];
  }
}

- (void)_updateUtilityButtonVisualStyling
{
  if (self->_visualStylingProvider)
  {
    objc_initWeak(&location, self->_utilityButton);
    visualStylingProvider = self->_visualStylingProvider;
    titleLabel = [(UIButton *)self->_utilityButton titleLabel];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __73__PLPlatterHeaderContentView_Subclass___updateUtilityButtonVisualStyling__block_invoke;
    v10 = &unk_278425490;
    objc_copyWeak(&v11, &location);
    [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:titleLabel withStyle:1 andObserverBlock:&v7];

    v5 = self->_visualStylingProvider;
    v6 = [(UIButton *)self->_utilityButton imageView:v7];
    [(MTVisualStylingProvider *)v5 automaticallyUpdateView:v6 withStyle:1];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

id __73__PLPlatterHeaderContentView_Subclass___updateUtilityButtonVisualStyling__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__PLPlatterHeaderContentView_Subclass___updateUtilityButtonVisualStyling__block_invoke_2;
  v5[3] = &unk_278425468;
  v6 = WeakRetained;
  v2 = WeakRetained;
  v3 = MEMORY[0x223D70F60](v5);

  return v3;
}

void __73__PLPlatterHeaderContentView_Subclass___updateUtilityButtonVisualStyling__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = [a2 _visualStylingForContinuallyUpdatedView:?];
  v3 = [v6 color];
  [*(a1 + 32) setTitleColor:v3 forState:0];
  v4 = *(a1 + 32);
  v5 = [v3 colorWithAlphaComponent:0.7];
  [v4 setTitleColor:v5 forState:1];

  [*(a1 + 32) setTintColor:v3];
}

- (void)_configureUtilityButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:0];
  utilityButton = self->_utilityButton;
  self->_utilityButton = v3;

  [(PLPlatterHeaderContentView *)self addSubview:self->_utilityButton];
  [(PLPlatterHeaderContentView *)self _updateUtilityButtonFont];

  [(PLPlatterHeaderContentView *)self _updateUtilityButtonVisualStyling];
}

- (void)_layoutIconButtonsWithScale:(double)scale
{
  _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
  [_layoutManager layoutIconButtonsWithScale:scale];
}

- (void)_layoutTitleLabelWithScale:(double)scale
{
  _titleLabel = [(PLPlatterHeaderContentView *)self _titleLabel];
  if (_titleLabel)
  {
    v22 = _titleLabel;
    dateLabel = self->_dateLabel;
    if (!dateLabel)
    {
      dateLabel = self->_utilityButton;
    }

    v7 = dateLabel;
    [v7 alpha];
    if (v8 <= 0.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;

    if ([(PLPlatterHeaderContentView *)self _shouldReverseLayoutDirection])
    {
      if (v10)
      {
        [v10 frame];
LABEL_15:
        MaxX = CGRectGetMaxX(*&v11);
        goto LABEL_16;
      }

      [(PLPlatterHeaderContentView *)self bounds];
    }

    else
    {
      if (!v10)
      {
        [(PLPlatterHeaderContentView *)self bounds];
        goto LABEL_15;
      }

      [v10 frame];
    }

    MaxX = CGRectGetMinX(*&v15);
LABEL_16:
    v20 = MaxX;
    _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
    [_layoutManager layoutTitleLabelWithTrailingXLimit:v20 scale:scale];

    _titleLabel = v22;
  }
}

- (void)_layoutUtilityButtonWithScale:(double)scale
{
  _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
  [_layoutManager layoutUtilityButtonWithScale:scale];
}

- (void)_layoutDateLabelWithScale:(double)scale
{
  if (self->_dateLabel)
  {
    _layoutManager = [(PLPlatterHeaderContentView *)self _layoutManager];
    [_layoutManager layoutDateLabelWithScale:scale];
  }
}

- (void)_darkerSystemColorsStatusDidChange:(id)change
{
  if (self->_titleLabel)
  {
    [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:?];
  }
}

- (void)_reduceTransparencyStatusDidChange:(id)change
{
  if (self->_titleLabel)
  {
    [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:?];
  }
}

@end
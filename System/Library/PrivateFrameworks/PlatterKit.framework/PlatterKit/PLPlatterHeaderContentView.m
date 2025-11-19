@interface PLPlatterHeaderContentView
+ (double)contentBaselineToBoundsBottomWithWidth:(double)a3 scale:(double)a4;
- (BOOL)adjustForContentSizeCategoryChange;
- (BSUIFontProvider)_fontProvider;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)icons;
- (NSString)preferredContentSizeCategory;
- (NSString)title;
- (PLPlatterHeaderContentView)init;
- (UIButton)utilityButton;
- (UIFont)_dateLabelFont;
- (UIFont)_titleLabelFont;
- (double)_headerHeightForWidth:(double)a3;
- (double)contentBaseline;
- (id)_attributedStringForTitle:(id)a3;
- (id)_dateLabelPreferredFont;
- (id)_layoutManager;
- (id)_lazyTitleLabel;
- (id)_newIconButton;
- (id)_newTitleLabel;
- (id)_titleLabelPreferredFont;
- (id)_updateTitleAttributesForAttributedString:(id)a3;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_configureDateLabel;
- (void)_configureDateLabelIfNecessary;
- (void)_configureIconButton:(id)a3 withIcon:(id)a4;
- (void)_configureIconButtonsForIcons:(id)a3;
- (void)_configureTitleLabel:(id)a3;
- (void)_configureUtilityButton;
- (void)_configureUtilityButtonIfNecessary;
- (void)_darkerSystemColorsStatusDidChange:(id)a3;
- (void)_layoutDateLabelWithScale:(double)a3;
- (void)_layoutIconButtonsWithScale:(double)a3;
- (void)_layoutTitleLabelWithScale:(double)a3;
- (void)_layoutUtilityButtonWithScale:(double)a3;
- (void)_recycleDateLabel;
- (void)_reduceTransparencyStatusDidChange:(id)a3;
- (void)_setUsesLargeTextLayout:(BOOL)a3;
- (void)_tearDownDateLabel;
- (void)_updateStylingForTitleLabel:(id)a3;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForTitleLabel:(id)a3;
- (void)_updateUtilityButtonFont;
- (void)_updateUtilityButtonVisualStyling;
- (void)dateLabelDidChange:(id)a3;
- (void)dealloc;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setDate:(id)a3;
- (void)setDateAllDay:(BOOL)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setIcons:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUtilityView:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation PLPlatterHeaderContentView

+ (double)contentBaselineToBoundsBottomWithWidth:(double)a3 scale:(double)a4
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 preferredContentSizeCategory];

  UIContentSizeCategoryIsAccessibilityCategory(v8);
  v9 = objc_opt_class();
  v10 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v11 = [a1 _titleLabelFontFromFontProvider:v10];
  [v9 contentBaselineToBoundsBottomWithFont:v11 boundsWidth:a3 scale:a4];
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
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__darkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v3 selector:sel__reduceTransparencyStatusDidChange_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76460] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D764C8] object:0];

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

- (void)_setUsesLargeTextLayout:(BOOL)a3
{
  if (self->_usesLargeTextLayout != a3)
  {
    self->_usesLargeTextLayout = a3;
    self->_layoutManager = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PLPlatterHeaderContentView *)self _headerHeightForWidth:a3.width, a3.height];
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

- (void)_configureIconButtonsForIcons:(id)a3
{
  v16 = a3;
  if ([v16 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v16 count];
  p_iconButtons = &self->_iconButtons;
  if (v5 | [(NSArray *)self->_iconButtons count])
  {
    v7 = 0;
    do
    {
      v8 = [v16 count];
      v9 = [(NSArray *)*p_iconButtons count];
      if (v7 >= v8)
      {
        if (v7 >= v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = [(NSArray *)*p_iconButtons objectAtIndex:v7];
        }

        [v10 removeFromSuperview];
      }

      else
      {
        if (v7 >= v9 || ([(NSArray *)*p_iconButtons objectAtIndex:v7], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v10 = [(PLPlatterHeaderContentView *)self _newIconButton];
          [(PLPlatterHeaderContentView *)self addSubview:v10];
        }

        v11 = [v16 objectAtIndex:v7];
        [(PLPlatterHeaderContentView *)self _configureIconButton:v10 withIcon:v11];
        [(NSArray *)v4 addObject:v10];
      }

      ++v7;
      v12 = [v16 count];
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

- (void)setIcons:(id)a3
{
  iconButtons = self->_iconButtons;
  v5 = a3;
  v6 = [(NSArray *)iconButtons count];
  [(PLPlatterHeaderContentView *)self _configureIconButtonsForIcons:v5];

  if (v6 != [(NSArray *)self->_iconButtons count])
  {
    titleLabel = self->_titleLabel;

    [(PLPlatterHeaderContentView *)self _updateTextAttributesForTitleLabel:titleLabel];
  }
}

- (NSString)title
{
  v2 = [(PLPlatterHeaderContentView *)self _titleLabel];
  v3 = [v2 text];

  return v3;
}

- (id)_titleLabelPreferredFont
{
  v3 = objc_opt_class();
  v4 = [(PLPlatterHeaderContentView *)self _fontProvider];
  v5 = [v3 _titleLabelFontFromFontProvider:v4];

  return v5;
}

- (UIFont)_titleLabelFont
{
  v3 = [(UILabel *)self->_titleLabel attributedText];
  if ([v3 length])
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

- (void)_updateTextAttributesForTitleLabel:(id)a3
{
  v7 = a3;
  v4 = [v7 attributedText];
  v5 = [v4 mutableCopy];
  v6 = [(PLPlatterHeaderContentView *)self _updateTitleAttributesForAttributedString:v5];
  [v7 setAttributedText:v6];

  [v7 setNumberOfLines:{-[PLPlatterHeaderContentView _usesLargeTextLayout](self, "_usesLargeTextLayout") ^ 1}];
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
    v4 = [(PLPlatterHeaderContentView *)self _newTitleLabel];
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    [(PLPlatterHeaderContentView *)self addSubview:self->_titleLabel];
    [(PLPlatterHeaderContentView *)self _configureTitleLabel:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = @" ";
  }

  v10 = v4;
  v5 = [(PLPlatterHeaderContentView *)self title];
  v6 = [(__CFString *)v10 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(PLPlatterHeaderContentView *)self _layoutManager];
    [v7 invalidateCachedSizeInfo];

    v8 = [(PLPlatterHeaderContentView *)self _lazyTitleLabel];
    v9 = [(PLPlatterHeaderContentView *)self _attributedStringForTitle:v10];
    [v8 setAttributedText:v9];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
    self->_hasUpdatedContent = 1;
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      self->_hasUpdatedContent = 0;
      [v8 pl_performCrossFadeIfNecessary];
    }
  }
}

- (id)_attributedStringForTitle:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v4];
    v6 = [(PLPlatterHeaderContentView *)self _updateTitleAttributesForAttributedString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_updateTitleAttributesForAttributedString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PLPlatterHeaderContentView *)self _usesLargeTextLayout];
    if (v5)
    {
      v6 = 0.45;
    }

    else
    {
      v6 = 0.0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }

    v8 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v9 = [v8 mutableCopy];

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
    [v4 addAttribute:*MEMORY[0x277D74118] value:v9 range:{0, objc_msgSend(v4, "length")}];
    v18 = *MEMORY[0x277D740A8];
    v19 = [(PLPlatterHeaderContentView *)self _titleLabelPreferredFont];
    [v4 addAttribute:v18 value:v19 range:{0, objc_msgSend(v4, "length")}];
  }

  return v4;
}

- (void)_updateTextAttributesForDateLabel
{
  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    [(BSUIDateLabel *)dateLabel setAdjustsFontSizeToFitWidth:[(PLPlatterHeaderContentView *)self _usesLargeTextLayout]];
    v4 = self->_dateLabel;
    v5 = [(PLPlatterHeaderContentView *)self _dateLabelPreferredFont];
    [(BSUIDateLabel *)v4 setFont:v5];

    [(BSUIDateLabel *)self->_dateLabel setNumberOfLines:1];
    v6 = self->_dateLabel;

    [(BSUIDateLabel *)v6 setLineBreakMode:3];
  }
}

- (UIFont)_dateLabelFont
{
  v3 = [(BSUIDateLabel *)self->_dateLabel font];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PLPlatterHeaderContentView *)self _dateLabelPreferredFont];
  }

  v6 = v5;

  return v6;
}

- (id)_dateLabelPreferredFont
{
  v2 = [(PLPlatterHeaderContentView *)self _fontProvider];
  v3 = [v2 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];

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

- (void)setDate:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    date = self->_date;
    self->_date = v4;

    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)a3
{
  if (self->_dateAllDay != a3)
  {
    self->_dateAllDay = a3;
    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if (self->_dateFormatStyle != a3)
  {
    self->_dateFormatStyle = a3;
    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];

    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
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

- (void)setUtilityView:(id)a3
{
  v5 = a3;
  utilityView = self->_utilityView;
  if (utilityView != v5)
  {
    v7 = v5;
    [(UIView *)utilityView removeFromSuperview];
    objc_storeStrong(&self->_utilityView, a3);
    [(PLPlatterHeaderContentView *)self addSubview:self->_utilityView];
    utilityView = [(PLPlatterHeaderContentView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](utilityView, v5);
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

  v3 = [(PLPlatterHeaderContentView *)self _layoutManager];
  [v3 contentBaseline];
  v5 = v4;

  return v5;
}

- (void)_updateUtilityButtonFont
{
  utilityButton = self->_utilityButton;
  if (utilityButton)
  {
    v6 = [(UIButton *)utilityButton titleLabel];
    v4 = [(PLPlatterHeaderContentView *)self _fontProvider];
    v5 = [v4 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];
    [v6 setFont:v5];
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
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = v4;

  [(PLPlatterHeaderContentView *)self _layoutIconButtonsWithScale:v5];
  v6 = [(PLPlatterHeaderContentView *)self _utilityButton];

  if (v6)
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

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7 = a3;
  if (a4 == 1 && self->_visualStylingProvider != v7)
  {
    v8 = v7;
    [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:self->_titleLabel];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:self->_dateLabel];
    [(MTVisualStylingProvider *)v8 stopAutomaticallyUpdatingView:self->_utilityButton];
    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:self->_titleLabel];
    [(PLPlatterHeaderContentView *)self _tearDownDateLabel];
    [(PLPlatterHeaderContentView *)self _updateUtilityButtonVisualStyling];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
    v7 = v8;
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
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
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(PLPlatterHeaderContentView *)self preferredContentSizeCategory];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(PLPlatterHeaderContentView *)self setPreferredContentSizeCategory:v4];
    [(PLPlatterHeaderContentView *)self _setUsesLargeTextLayout:UIContentSizeCategoryIsAccessibilityCategory(v4)];
    v8 = [(PLPlatterHeaderContentView *)self _layoutManager];
    [v8 invalidateCachedSizeInfo];

    v9 = [(PLPlatterHeaderContentView *)self _titleLabel];
    [(PLPlatterHeaderContentView *)self _updateTextAttributesForTitleLabel:v9];

    [(PLPlatterHeaderContentView *)self _updateTextAttributesForDateLabel];
    [(PLPlatterHeaderContentView *)self _updateUtilityButtonFont];
    [(PLPlatterHeaderContentView *)self setNeedsLayout];
  }

  return v6 ^ 1;
}

- (void)dateLabelDidChange:(id)a3
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

- (double)_headerHeightForWidth:(double)a3
{
  v4 = [(PLPlatterHeaderContentView *)self _layoutManager];
  [v4 headerHeightForWidth:a3];
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

- (void)_configureIconButton:(id)a3 withIcon:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v8 setImage:v5 forState:0];
  v6 = [v5 isSymbolImage];

  if (v6)
  {
    v7 = [MEMORY[0x277D75348] labelColor];
    [v8 setTintColor:v7];
  }

  else
  {
    [v8 setTintColor:0];
  }
}

- (void)_updateStylingForTitleLabel:(id)a3
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v6 = a3;
    [MTVisualStylingProvider automaticallyUpdateView:"automaticallyUpdateView:withStyle:" withStyle:?];
  }

  else
  {
    v4 = MEMORY[0x277D75348];
    v5 = a3;
    v6 = [v4 blackColor];
    [v5 setTextColor:?];
  }
}

- (void)_configureTitleLabel:(id)a3
{
  v4 = a3;
  [(PLPlatterHeaderContentView *)self _updateTextAttributesForTitleLabel:v4];
  [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:v4];
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
    v8 = [MEMORY[0x277D75348] blackColor];
    [(BSUIDateLabel *)v7 setTextColor:v8];
  }
}

- (void)_updateUtilityButtonVisualStyling
{
  if (self->_visualStylingProvider)
  {
    objc_initWeak(&location, self->_utilityButton);
    visualStylingProvider = self->_visualStylingProvider;
    v4 = [(UIButton *)self->_utilityButton titleLabel];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __73__PLPlatterHeaderContentView_Subclass___updateUtilityButtonVisualStyling__block_invoke;
    v10 = &unk_278425490;
    objc_copyWeak(&v11, &location);
    [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:v4 withStyle:1 andObserverBlock:&v7];

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

- (void)_layoutIconButtonsWithScale:(double)a3
{
  v4 = [(PLPlatterHeaderContentView *)self _layoutManager];
  [v4 layoutIconButtonsWithScale:a3];
}

- (void)_layoutTitleLabelWithScale:(double)a3
{
  v5 = [(PLPlatterHeaderContentView *)self _titleLabel];
  if (v5)
  {
    v22 = v5;
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
    v21 = [(PLPlatterHeaderContentView *)self _layoutManager];
    [v21 layoutTitleLabelWithTrailingXLimit:v20 scale:a3];

    v5 = v22;
  }
}

- (void)_layoutUtilityButtonWithScale:(double)a3
{
  v4 = [(PLPlatterHeaderContentView *)self _layoutManager];
  [v4 layoutUtilityButtonWithScale:a3];
}

- (void)_layoutDateLabelWithScale:(double)a3
{
  if (self->_dateLabel)
  {
    v4 = [(PLPlatterHeaderContentView *)self _layoutManager];
    [v4 layoutDateLabelWithScale:a3];
  }
}

- (void)_darkerSystemColorsStatusDidChange:(id)a3
{
  if (self->_titleLabel)
  {
    [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:?];
  }
}

- (void)_reduceTransparencyStatusDidChange:(id)a3
{
  if (self->_titleLabel)
  {
    [(PLPlatterHeaderContentView *)self _updateStylingForTitleLabel:?];
  }
}

@end
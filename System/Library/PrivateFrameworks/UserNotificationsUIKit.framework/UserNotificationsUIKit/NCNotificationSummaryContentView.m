@interface NCNotificationSummaryContentView
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGRect)_adjustedRectForLabelLayoutFromRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationSummaryContentView)initWithFrame:(CGRect)a3;
- (double)_widthForIconsContainerView;
- (id)_dateLabelFont;
- (id)_dateLabelPreferredFont;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (int64_t)_dateFormatStyleForDate:(id)a3;
- (unint64_t)_maximumNumberOfLinesForSummaryText;
- (unint64_t)_numberOfLinesForSummaryTextInFrame:(CGRect)a3;
- (unint64_t)_numberOfLinesForSummaryTitleTextInFrame:(CGRect)a3;
- (void)_addShadowForIconView:(id)a3;
- (void)_layoutSummaryDateLabel;
- (void)_layoutSummaryIconsView;
- (void)_layoutSummaryLabel;
- (void)_layoutSummaryTitleLabel;
- (void)_recycleDateLabel;
- (void)_tearDownDateLabelIfNecessary;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForSummaryLabel;
- (void)_updateTextAttributesForSummaryTitleLabel;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_updateVisualStylingProvidersForIconViewIfNecessary:(id)a3;
- (void)_updateVisualStylingProvidersForIconViewsIfNecessary;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)dateLabelDidChange:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setSummary:(id)a3;
- (void)setSummaryDate:(id)a3;
- (void)setSummaryIconSymbolName:(id)a3;
- (void)setSummaryIconViews:(id)a3;
- (void)setSummaryLabelMaterialSecondary:(BOOL)a3;
- (void)setSummaryTitle:(id)a3;
- (void)setSummaryTitleFontName:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation NCNotificationSummaryContentView

- (NCNotificationSummaryContentView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = NCNotificationSummaryContentView;
  v3 = [(NCNotificationSummaryContentView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_adjustsFontForContentSizeCategory = 1;
    v5 = [MEMORY[0x277D75C80] currentTraitCollection];
    v6 = [v5 preferredContentSizeCategory];
    preferredContentSizeCategory = v4->_preferredContentSizeCategory;
    v4->_preferredContentSizeCategory = v6;
  }

  return v4;
}

- (void)setSummaryLabelMaterialSecondary:(BOOL)a3
{
  if (self->_summaryLabelMaterialSecondary != a3)
  {
    self->_summaryLabelMaterialSecondary = a3;
    summaryLabel = self->_summaryLabel;
    if (summaryLabel)
    {
      v5 = [(NCNotificationSummaryContentView *)self isSummaryLabelMaterialSecondary];
      v6 = [(NCNotificationSummaryContentView *)self visualStylingProviderForCategory:1];
      [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:summaryLabel style:v5 visualStylingProvider:v6 outgoingProvider:0];
    }
  }
}

- (void)setSummaryTitle:(id)a3
{
  v13 = a3;
  v4 = [(NCNotificationSummaryContentView *)self summaryTitle];
  v5 = BSEqualStrings();

  v6 = v13;
  if ((v5 & 1) == 0)
  {
    summaryTitleLabel = self->_summaryTitleLabel;
    if (v13)
    {
      if (!summaryTitleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_summaryTitleLabel;
        self->_summaryTitleLabel = v8;

        [(UILabel *)self->_summaryTitleLabel setLineBreakMode:4];
        [(NCNotificationSummaryContentView *)self addSubview:self->_summaryTitleLabel];
        [(NCNotificationSummaryContentView *)self _updateTextAttributesForSummaryTitleLabel];
        v10 = self->_summaryTitleLabel;
        v11 = [(NCNotificationSummaryContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:v10 style:0 visualStylingProvider:v11 outgoingProvider:0];

        v6 = v13;
        summaryTitleLabel = self->_summaryTitleLabel;
      }

      [(UILabel *)summaryTitleLabel setText:v6];
    }

    else
    {
      [(UILabel *)summaryTitleLabel removeFromSuperview];
      v12 = self->_summaryTitleLabel;
      self->_summaryTitleLabel = 0;
    }

    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setSummary:(id)a3
{
  v14 = a3;
  v4 = [(NCNotificationSummaryContentView *)self summary];
  v5 = BSEqualStrings();

  v6 = v14;
  if ((v5 & 1) == 0)
  {
    summaryLabel = self->_summaryLabel;
    if (v14)
    {
      if (!summaryLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_summaryLabel;
        self->_summaryLabel = v8;

        [(UILabel *)self->_summaryLabel setLineBreakMode:4];
        [(NCNotificationSummaryContentView *)self addSubview:self->_summaryLabel];
        [(NCNotificationSummaryContentView *)self _updateTextAttributesForSummaryLabel];
        v10 = self->_summaryLabel;
        v11 = [(NCNotificationSummaryContentView *)self isSummaryLabelMaterialSecondary];
        v12 = [(NCNotificationSummaryContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:v10 style:v11 visualStylingProvider:v12 outgoingProvider:0];

        v6 = v14;
        summaryLabel = self->_summaryLabel;
      }

      [(UILabel *)summaryLabel setText:v6];
    }

    else
    {
      [(UILabel *)summaryLabel removeFromSuperview];
      v13 = self->_summaryLabel;
      self->_summaryLabel = 0;
    }

    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setSummaryIconViews:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NCNotificationSummaryContentView *)self summaryIconViews];
  v7 = BSEqualArrays();

  if ((v7 & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_iconViews;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v25 + 1) + 8 * v12++) removeFromSuperview];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    summaryIconSymbolImageView = self->_summaryIconSymbolImageView;
    if (summaryIconSymbolImageView)
    {
      [(UIImageView *)summaryIconSymbolImageView removeFromSuperview];
      v14 = self->_summaryIconSymbolImageView;
      self->_summaryIconSymbolImageView = 0;
    }

    summaryIconSymbolBackgroundView = self->_summaryIconSymbolBackgroundView;
    if (summaryIconSymbolBackgroundView)
    {
      [(UIView *)summaryIconSymbolBackgroundView removeFromSuperview];
      v16 = self->_summaryIconSymbolBackgroundView;
      self->_summaryIconSymbolBackgroundView = 0;
    }

    objc_storeStrong(&self->_iconViews, a3);
    v17 = [v5 count];
    summaryIconsContainerView = self->_summaryIconsContainerView;
    if (v17)
    {
      if (!summaryIconsContainerView)
      {
        v19 = objc_alloc(MEMORY[0x277D75D18]);
        v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v21 = self->_summaryIconsContainerView;
        self->_summaryIconsContainerView = v20;

        [(NCNotificationSummaryContentView *)self addSubview:self->_summaryIconsContainerView];
      }

      iconViews = self->_iconViews;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__NCNotificationSummaryContentView_setSummaryIconViews___block_invoke;
      v24[3] = &unk_2783714A8;
      v24[4] = self;
      [(NSArray *)iconViews enumerateObjectsUsingBlock:v24];
    }

    else
    {
      [(UIView *)summaryIconsContainerView removeFromSuperview];
      v23 = self->_summaryIconsContainerView;
      self->_summaryIconsContainerView = 0;
    }

    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }
}

void __56__NCNotificationSummaryContentView_setSummaryIconViews___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(*(a1 + 32) + 432) count] >= 2 && objc_msgSend(*(*(a1 + 32) + 432), "count") - 1 > a3)
  {
    [*(a1 + 32) _addShadowForIconView:v5];
  }

  [*(*(a1 + 32) + 424) addSubview:v5];
  [*(a1 + 32) _updateVisualStylingProvidersForIconViewIfNecessary:v5];
}

- (void)setSummaryTitleFontName:(id)a3
{
  objc_storeStrong(&self->_summaryTitleFontName, a3);
  [(NCNotificationSummaryContentView *)self _updateTextAttributesForSummaryTitleLabel];

  [(NCNotificationSummaryContentView *)self setNeedsLayout];
}

- (void)setSummaryDate:(id)a3
{
  v12 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(NCNotificationSummaryContentView *)self _tearDownDateLabelIfNecessary];
    objc_storeStrong(&self->_summaryDate, a3);
    if (v12)
    {
      v5 = [MEMORY[0x277CF0D50] sharedInstance];
      summaryDate = self->_summaryDate;
      v7 = [MEMORY[0x277CBEA80] currentCalendar];
      v8 = [v5 startLabelWithStartDate:summaryDate endDate:0 timeZone:0 allDay:objc_msgSend(v7 forStyle:{"isDateInToday:", v12) ^ 1, 0}];
      summaryDateLabel = self->_summaryDateLabel;
      self->_summaryDateLabel = v8;

      [(BSUIDateLabel *)self->_summaryDateLabel setDelegate:self];
      [(NCNotificationSummaryContentView *)self addSubview:self->_summaryDateLabel];
      [(NCNotificationSummaryContentView *)self _updateTextAttributesForDateLabel];
      v10 = self->_summaryDateLabel;
      v11 = [(NCNotificationSummaryContentView *)self visualStylingProviderForCategory:1];
      [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:v10 style:1 visualStylingProvider:v11 outgoingProvider:0];
    }

    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }
}

- (void)setSummaryIconSymbolName:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_summaryIconSymbolName isEqualToString:v4])
  {
    [(UIImageView *)self->_summaryIconSymbolImageView removeFromSuperview];
    summaryIconSymbolImageView = self->_summaryIconSymbolImageView;
    self->_summaryIconSymbolImageView = 0;

    if (v4)
    {
      iconViews = self->_iconViews;
      if (iconViews)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v7 = iconViews;
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v37;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v36 + 1) + 8 * i) removeFromSuperview];
            }

            v9 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v9);
        }

        v12 = self->_iconViews;
        self->_iconViews = 0;
      }

      if (!self->_summaryIconsContainerView)
      {
        v13 = objc_alloc(MEMORY[0x277D75D18]);
        v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        summaryIconsContainerView = self->_summaryIconsContainerView;
        self->_summaryIconsContainerView = v14;

        [(NCNotificationSummaryContentView *)self addSubview:self->_summaryIconsContainerView];
      }

      if (!self->_summaryIconSymbolBackgroundView)
      {
        v16 = objc_alloc(MEMORY[0x277D75D18]);
        [(NCNotificationSummaryContentView *)self isIconViewLeading];
        [(NCNotificationSummaryContentView *)self isIconViewLeading];
        BSRectWithSize();
        v17 = [v16 initWithFrame:?];
        summaryIconSymbolBackgroundView = self->_summaryIconSymbolBackgroundView;
        self->_summaryIconSymbolBackgroundView = v17;

        v19 = self->_summaryIconSymbolBackgroundView;
        v20 = [MEMORY[0x277D75348] systemWhiteColor];
        [(UIView *)v19 setBackgroundColor:v20];

        v21 = self->_summaryIconSymbolBackgroundView;
        v22 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
        v23 = 20.0;
        if (v22)
        {
          v23 = 19.0;
        }

        [(UIView *)v21 _setContinuousCornerRadius:v23];
        [(UIView *)self->_summaryIconsContainerView addSubview:self->_summaryIconSymbolBackgroundView];
        v24 = self->_summaryIconSymbolBackgroundView;
        v25 = [(NCNotificationSummaryContentView *)self visualStylingProviderForCategory:1];
        [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:v24 style:3 visualStylingProvider:v25 outgoingProvider:0];
      }

      v26 = MEMORY[0x277D755D0];
      v27 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
      v28 = 15.2;
      if (!v27)
      {
        v28 = 16.0;
      }

      v29 = [v26 configurationWithPointSize:v28];
      v30 = [MEMORY[0x277D755B8] _systemImageNamed:v4 withConfiguration:v29];
      v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v30];
      v32 = self->_summaryIconSymbolImageView;
      self->_summaryIconSymbolImageView = v31;

      v33 = self->_summaryIconSymbolImageView;
      v34 = [MEMORY[0x277D75348] systemWhiteColor];
      [(UIImageView *)v33 setTintColor:v34];

      [(UIImageView *)self->_summaryIconSymbolImageView setContentMode:4];
      [(UIView *)self->_summaryIconsContainerView addSubview:self->_summaryIconSymbolImageView];
    }

    else
    {
      [(UIView *)self->_summaryIconSymbolBackgroundView removeFromSuperview];
      v35 = self->_summaryIconSymbolBackgroundView;
      self->_summaryIconSymbolBackgroundView = 0;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NCNotificationSummaryContentView *)self _adjustedRectForLabelLayoutFromRect:0.0, 0.0, a3.width, a3.height];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  summaryTitleLabel = self->_summaryTitleLabel;
  if (summaryTitleLabel)
  {
    [(UILabel *)summaryTitleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryContentView *)self _numberOfLinesForSummaryTitleTextInFrame:v4, v5, v6, v7]];
  }

  summaryLabel = self->_summaryLabel;
  if (summaryLabel)
  {
    [(UILabel *)summaryLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryContentView *)self _numberOfLinesForSummaryTextInFrame:v8, v9, v10, v11]];
  }

  if (UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory))
  {
    [(BSUIDateLabel *)self->_summaryDateLabel unui_measuringHeightWithNumberOfLines:1];
  }

  if (self->_summaryIconsContainerView)
  {
    [(NCNotificationSummaryContentView *)self isIconViewLeading];
  }

  v14 = [(NCNotificationSummaryContentView *)self traitCollection];
  [v14 displayScale];
  UICeilToScale();

  UISizeRoundToScale();
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationSummaryContentView;
  [(NCNotificationSummaryContentView *)&v3 layoutSubviews];
  [(NCNotificationSummaryContentView *)self _layoutSummaryTitleLabel];
  [(NCNotificationSummaryContentView *)self _layoutSummaryDateLabel];
  [(NCNotificationSummaryContentView *)self _layoutSummaryLabel];
  [(NCNotificationSummaryContentView *)self _layoutSummaryIconsView];
}

- (void)didMoveToWindow
{
  v3 = [(NCNotificationSummaryContentView *)self window];

  if (v3)
  {

    [(NCNotificationSummaryContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(v4, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, v4);
    [(NCNotificationSummaryContentView *)self _updateTextAttributes];
    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }

  return v5 != NSOrderedSame;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider)
  {
    v4 = strokeVisualStylingProvider;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationSummaryContentView;
    v4 = [(NCNotificationSummaryContentView *)&v6 visualStylingProviderForCategory:a3];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider != v6)
  {
    v11 = v6;
    v8 = v6;
    v9 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v8;
    v10 = strokeVisualStylingProvider;

    [(NCNotificationSummaryContentView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:a4 outgoingProvider:v10];
    v6 = v11;
  }
}

- (void)dateLabelDidChange:(id)a3
{
  [(BSUIDateLabel *)self->_summaryDateLabel sizeToFit];

  [(NCNotificationSummaryContentView *)self setNeedsLayout];
}

- (void)_layoutSummaryTitleLabel
{
  if (self->_summaryTitleLabel)
  {
    [(NCNotificationSummaryContentView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UILabel *)self->_summaryTitleLabel frame];
    v35 = v6;
    v36 = v8;
    rect = v10;
    [(NCNotificationSummaryContentView *)self _adjustedRectForLabelLayoutFromRect:v4, v6, v8, v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    summaryDateLabel = self->_summaryDateLabel;
    v21 = 0.0;
    if (summaryDateLabel && !IsAccessibilityCategory)
    {
      [(BSUIDateLabel *)summaryDateLabel sizeThatFits:v16, v18];
      v21 = v22 + 10.0;
    }

    v39.origin.x = v12;
    v39.origin.y = v14;
    v39.size.width = v16;
    v39.size.height = v18;
    v23 = CGRectGetWidth(v39) - v21;
    [(UILabel *)self->_summaryTitleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryContentView *)self _numberOfLinesForSummaryTitleTextInFrame:v12, v14, v16, v18]];
    v25 = v24;
    [(NCNotificationSummaryContentView *)self _widthForIconsContainerView];
    v27 = v26;
    v28 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
    v29 = [(NCNotificationSummaryContentView *)self _shouldReverseLayoutDirection];
    if (v28)
    {
      if (v29)
      {
        v40.origin.x = v4;
        v40.origin.y = v35;
        v40.size.width = v36;
        v40.size.height = rect;
        v30 = CGRectGetMaxX(v40) - v23 - v27 + -10.0;
      }

      else
      {
        v30 = v27 + 10.0;
      }
    }

    else if (v29)
    {
      v41.origin.x = v4;
      v41.origin.y = v35;
      v41.size.width = v36;
      v41.size.height = rect;
      v31 = CGRectGetMaxX(v41) - v23;
      [(NCNotificationSummaryContentView *)self horizontalLeadingMargin];
      v30 = v31 - v32;
    }

    else
    {
      [(NCNotificationSummaryContentView *)self horizontalLeadingMargin];
      v30 = v33;
    }

    [(UILabel *)self->_summaryTitleLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationSummaryContentView *)self _numberOfLinesForSummaryTitleTextInFrame:v12, v14, v16, v18]];
    v42.origin.y = 0.0;
    v42.origin.x = v30;
    v42.size.width = v23;
    v42.size.height = v25;
    CGRectGetWidth(v42);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    summaryTitleLabel = self->_summaryTitleLabel;

    [(UILabel *)summaryTitleLabel setFrame:?];
  }
}

- (void)_layoutSummaryLabel
{
  if (!self->_summaryLabel)
  {
    return;
  }

  [(NCNotificationSummaryContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_summaryTitleLabel frame];
  v38 = v12;
  v39 = v11;
  v37 = v13;
  rect = v14;
  [(UILabel *)self->_summaryLabel frame];
  [(NCNotificationSummaryContentView *)self _adjustedRectForLabelLayoutFromRect:v4, v6, v8, v10];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v40 = CGRectGetWidth(v43);
  v35 = height;
  [(UILabel *)self->_summaryLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryContentView *)self _numberOfLinesForSummaryTextInFrame:x, y, width, height]];
  v36 = v19;
  [(NCNotificationSummaryContentView *)self _widthForIconsContainerView];
  v21 = v20;
  v22 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
  v23 = [(NCNotificationSummaryContentView *)self _shouldReverseLayoutDirection];
  if (v22)
  {
    if (v23)
    {
      v44.origin.x = v4;
      v44.origin.y = v6;
      v44.size.width = v8;
      v44.size.height = v10;
      v24 = CGRectGetMaxX(v44) - v40 - v21 + -10.0;
    }

    else
    {
      v24 = v21 + 10.0;
    }
  }

  else if (v23)
  {
    v45.origin.x = v4;
    v45.origin.y = v6;
    v45.size.width = v8;
    v45.size.height = v10;
    v25 = CGRectGetMaxX(v45) - v40;
    [(NCNotificationSummaryContentView *)self horizontalLeadingMargin];
    v24 = v25 - v26;
  }

  else
  {
    [(NCNotificationSummaryContentView *)self horizontalLeadingMargin];
  }

  v34 = v24;
  if (UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory) && (summaryDateLabel = self->_summaryDateLabel) != 0)
  {
    [(BSUIDateLabel *)summaryDateLabel frame];
  }

  else
  {
    v28 = v39;
    v29 = v38;
    v30 = v37;
    v31 = rect;
    if (!self->_summaryTitleLabel)
    {
      v32 = 0.0;
      goto LABEL_16;
    }
  }

  v32 = CGRectGetMaxY(*&v28) + 1.0;
LABEL_16:
  [(UILabel *)self->_summaryLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationSummaryContentView *)self _numberOfLinesForSummaryTextInFrame:x, y, width, v35]];
  v46.origin.x = v39;
  v46.origin.y = v38;
  v46.size.width = v37;
  v46.size.height = rect;
  CGRectGetWidth(v46);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  summaryLabel = self->_summaryLabel;

  [(UILabel *)summaryLabel setFrame:v34, v32, v40, v36];
}

- (void)_layoutSummaryIconsView
{
  if ([(NSArray *)self->_iconViews count]|| self->_summaryIconSymbolImageView)
  {
    v3 = [(NCNotificationSummaryContentView *)self _shouldReverseLayoutDirection];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v4 = 0.0;
    if (v3)
    {
      [(NCNotificationSummaryContentView *)self _widthForIconsContainerView];
      v6 = v5;
      v7 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
      v8 = 40.0;
      if (v7)
      {
        v8 = 38.0;
      }

      v4 = v6 - v8;
    }

    *&v24[3] = v4;
    iconViews = self->_iconViews;
    if (iconViews)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__NCNotificationSummaryContentView__layoutSummaryIconsView__block_invoke;
      v22[3] = &unk_278372B70;
      v22[4] = self;
      v22[5] = v24;
      v23 = v3;
      [(NSArray *)iconViews enumerateObjectsUsingBlock:v22];
    }

    else if (self->_summaryIconSymbolImageView)
    {
      v10 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
      v11 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
      if (v10)
      {
        v12 = 38.0;
      }

      else
      {
        v12 = 40.0;
      }

      if (v11)
      {
        v13 = 38.0;
      }

      else
      {
        v13 = 40.0;
      }

      [(UIImageView *)self->_summaryIconSymbolImageView setFrame:0.0, 0.0, v12, v13];
      [(UIView *)self->_summaryIconSymbolBackgroundView setFrame:0.0, 0.0, v12, v13];
      [(UIView *)self->_summaryIconsContainerView bringSubviewToFront:self->_summaryIconSymbolImageView];
    }

    [(UIView *)self->_summaryIconsContainerView frame];
    [(NCNotificationSummaryContentView *)self bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(NCNotificationSummaryContentView *)self _widthForIconsContainerView];
    if ([(NCNotificationSummaryContentView *)self isIconViewLeading])
    {
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else if ((v3 & 1) == 0)
    {
LABEL_21:
      v25.origin.x = v15;
      v25.origin.y = v17;
      v25.size.width = v19;
      v25.size.height = v21;
      CGRectGetMaxX(v25);
    }

    [(NCNotificationSummaryContentView *)self isIconViewLeading];
    UIRectCenteredYInRect();
    UIRectIntegralWithScale();
    [(UIView *)self->_summaryIconsContainerView setFrame:?];
    _Block_object_dispose(v24, 8);
  }
}

double __59__NCNotificationSummaryContentView__layoutSummaryIconsView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  if ([v3 isIconViewLeading])
  {
    v6 = 38.0;
  }

  else
  {
    v6 = 40.0;
  }

  if ([*(a1 + 32) isIconViewLeading])
  {
    v7 = 38.0;
  }

  else
  {
    v7 = 40.0;
  }

  [v5 setFrame:{v4, 0.0, v6, v7}];
  [*(*(a1 + 32) + 424) sendSubviewToBack:v5];

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) isIconViewLeading];
  v10 = [*(a1 + 32) isIconViewLeading];
  if (v8 == 1)
  {
    v11 = 15.2;
    if (!v10)
    {
      v11 = 16.0;
    }

    v12 = 22.8;
    if (!v10)
    {
      v12 = 24.0;
    }

    if (!v9)
    {
      v11 = v12;
    }

    v13 = -v11;
  }

  else
  {
    if (v9)
    {
      v13 = 15.2;
      v14 = 16.0;
    }

    else
    {
      v13 = 22.8;
      v14 = 24.0;
    }

    if (!v10)
    {
      v13 = v14;
    }
  }

  v15 = *(*(a1 + 40) + 8);
  result = v13 + *(v15 + 24);
  *(v15 + 24) = result;
  return result;
}

- (void)_layoutSummaryDateLabel
{
  if (self->_summaryDateLabel)
  {
    [(NCNotificationSummaryContentView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UILabel *)self->_summaryTitleLabel frame];
    v12 = v11;
    v24 = v13;
    v25 = v14;
    rect = v15;
    [(BSUIDateLabel *)self->_summaryDateLabel frame];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    [(NCNotificationSummaryContentView *)self _adjustedRectForLabelLayoutFromRect:v4, v6, v8, v10];
    v19 = v17;
    v20 = v18;
    if (!IsAccessibilityCategory)
    {
      [(UILabel *)self->_summaryTitleLabel sizeThatFits:v17, v18];
      v19 = v19 - v21 + -10.0;
    }

    [(BSUIDateLabel *)self->_summaryDateLabel sizeThatFits:v19, v20];
    [(NCNotificationSummaryContentView *)self _widthForIconsContainerView];
    v22 = [(NCNotificationSummaryContentView *)self _shouldReverseLayoutDirection];
    if (IsAccessibilityCategory)
    {
      if (v22)
      {
        v28.origin.x = v4;
        v28.origin.y = v6;
        v28.size.width = v8;
        v28.size.height = v10;
        CGRectGetMaxX(v28);
      }
    }

    else if ((v22 & 1) == 0)
    {
      v29.origin.x = v4;
      v29.origin.y = v6;
      v29.size.width = v8;
      v29.size.height = v10;
      CGRectGetWidth(v29);
    }

    v30.origin.x = v12;
    v30.origin.y = v24;
    v30.size.width = v25;
    v30.size.height = rect;
    CGRectGetMaxY(v30);
    UIRectIntegralWithScale();
    summaryDateLabel = self->_summaryDateLabel;

    [(BSUIDateLabel *)summaryDateLabel setFrame:?];
  }
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4];
  }
}

- (void)_updateVisualStylingProvidersForIconViewIfNecessary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 requiredVisualStyleCategories];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) integerValue];
          v11 = [(NCNotificationSummaryContentView *)self visualStylingProviderForCategory:v10];
          [v4 setVisualStylingProvider:v11 forCategory:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updateVisualStylingProvidersForIconViewsIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_iconViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NCNotificationSummaryContentView *)self _updateVisualStylingProvidersForIconViewIfNecessary:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  if (a4 == 1)
  {
    summaryLabel = self->_summaryLabel;
    v9 = a5;
    v10 = a3;
    [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:summaryLabel style:[(NCNotificationSummaryContentView *)self isSummaryLabelMaterialSecondary] visualStylingProvider:v10 outgoingProvider:v9];
    [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:self->_summaryTitleLabel style:0 visualStylingProvider:v10 outgoingProvider:v9];
    [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:self->_summaryDateLabel style:1 visualStylingProvider:v10 outgoingProvider:v9];
    [(NCNotificationSummaryContentView *)self _updateVisualStylingOfView:self->_summaryIconSymbolBackgroundView style:3 visualStylingProvider:v10 outgoingProvider:v9];

    [(NCNotificationSummaryContentView *)self _updateVisualStylingProvidersForIconViewsIfNecessary];
  }
}

- (void)_updateTextAttributes
{
  [(NCNotificationSummaryContentView *)self _updateTextAttributesForSummaryLabel];
  [(NCNotificationSummaryContentView *)self _updateTextAttributesForSummaryTitleLabel];

  [(NCNotificationSummaryContentView *)self _updateTextAttributesForDateLabel];
}

- (void)_updateTextAttributesForSummaryTitleLabel
{
  if (self->_summaryTitleLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    v5 = *v4;
    v6 = [(NCNotificationSummaryContentView *)self summaryTitleFontName];
    if (v6)
    {
      v7 = MEMORY[0x277D74300];
      v8 = MEMORY[0x277D74310];
      v9 = [(NCNotificationSummaryContentView *)self traitCollection];
      v10 = [v8 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v9];

      [v10 pointSize];
      v11 = [v7 fontWithName:v6 size:?];

      v5 = v9;
    }

    else
    {
      v11 = [objc_opt_class() _preferredFont:1 textStyle:v5 weight:0 additionalTraits:*MEMORY[0x277D74420]];
    }

    [(UILabel *)self->_summaryTitleLabel setFont:v11];
    [(UILabel *)self->_summaryTitleLabel setNumberOfLines:[(NCNotificationSummaryContentView *)self _maximumNumberOfLinesForSummaryTitleText]];
    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSummaryLabel
{
  if (self->_summaryLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    summaryLabel = self->_summaryLabel;
    v6 = *v4;
    v7 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0x8000 additionalTraits:*MEMORY[0x277D74418]];

    [(UILabel *)summaryLabel setFont:v7];
    [(UILabel *)self->_summaryLabel setNumberOfLines:[(NCNotificationSummaryContentView *)self _maximumNumberOfLinesForSummaryText]];

    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForDateLabel
{
  summaryDateLabel = self->_summaryDateLabel;
  if (summaryDateLabel)
  {
    v4 = [(NCNotificationSummaryContentView *)self _dateLabelPreferredFont];
    [(BSUIDateLabel *)summaryDateLabel setFont:v4];

    [(BSUIDateLabel *)self->_summaryDateLabel setNumberOfLines:1];
    [(BSUIDateLabel *)self->_summaryDateLabel setLineBreakMode:3];

    [(NCNotificationSummaryContentView *)self setNeedsLayout];
  }
}

- (id)_dateLabelFont
{
  v3 = [(BSUIDateLabel *)self->_summaryDateLabel font];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NCNotificationSummaryContentView *)self _dateLabelPreferredFont];
  }

  v6 = v5;

  return v6;
}

- (id)_dateLabelPreferredFont
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277D76968];
  v4 = *MEMORY[0x277D74418];

  return [v2 _preferredFont:1 textStyle:v3 weight:0 additionalTraits:v4];
}

+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (unint64_t)_numberOfLinesForSummaryTitleTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  summaryTitleLabel = self->_summaryTitleLabel;
  v9 = [(NCNotificationSummaryContentView *)self _maximumNumberOfLinesForSummaryTitleText];
  drawingContext = self->_drawingContext;

  return [(UILabel *)summaryTitleLabel unui_numberOfLinesInFrame:v9 maximum:drawingContext drawingContext:x, y, width, height];
}

- (unint64_t)_maximumNumberOfLinesForSummaryText
{
  if (UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory))
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)_numberOfLinesForSummaryTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  summaryLabel = self->_summaryLabel;
  v9 = [(NCNotificationSummaryContentView *)self _maximumNumberOfLinesForSummaryText];
  drawingContext = self->_drawingContext;

  return [(UILabel *)summaryLabel unui_numberOfLinesInFrame:v9 maximum:drawingContext drawingContext:x, y, width, height];
}

- (double)_widthForIconsContainerView
{
  v3 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
  v4 = [(NSArray *)self->_iconViews count];
  v5 = 0.0;
  if (v4 >= 2)
  {
    v6 = ([(NSArray *)self->_iconViews count]- 1);
    v7 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
    v8 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
    v9 = 15.2;
    if (!v8)
    {
      v9 = 16.0;
    }

    v10 = 22.8;
    if (!v8)
    {
      v10 = 24.0;
    }

    if (!v7)
    {
      v9 = v10;
    }

    v5 = v9 * v6;
  }

  v11 = 40.0;
  if (v3)
  {
    v11 = 38.0;
  }

  return v11 + v5;
}

- (CGRect)_adjustedRectForLabelLayoutFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  [(NCNotificationSummaryContentView *)self horizontalLeadingMargin];
  v10 = v8 - v9;
  [(NCNotificationSummaryContentView *)self horizontalTrailingMargin];
  v12 = v10 - v11;
  [(NCNotificationSummaryContentView *)self _widthForIconsContainerView];
  v14 = v13;
  if ([(NSArray *)self->_iconViews count]|| self->_summaryIconSymbolImageView)
  {
    v12 = v12 - (v14 + 10.0);
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v15 = CGRectGetHeight(v19);
  v16 = x;
  v17 = y;
  v18 = v12;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_recycleDateLabel
{
  [(BSUIDateLabel *)self->_summaryDateLabel setDelegate:0];
  [(MTVisualStylingProvider *)self->_strokeVisualStylingProvider stopAutomaticallyUpdatingView:self->_summaryDateLabel];
  v3 = [MEMORY[0x277CF0D50] sharedInstance];
  [v3 recycleLabel:self->_summaryDateLabel];
}

- (void)_tearDownDateLabelIfNecessary
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__NCNotificationSummaryContentView__tearDownDateLabelIfNecessary__block_invoke;
  v2[3] = &unk_27836F6A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __65__NCNotificationSummaryContentView__tearDownDateLabelIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 456);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 32) _recycleDateLabel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 456);
    *(v3 + 456) = 0;
  }
}

- (int64_t)_dateFormatStyleForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 isDateInToday:v4];

  return v6;
}

- (void)_addShadowForIconView:(id)a3
{
  v4 = a3;
  v15 = [v4 layer];
  [v15 setShadowColor:CGColorGetConstantColor(*MEMORY[0x277CBF3B8])];
  LODWORD(v5) = 1049582633;
  [v15 setShadowOpacity:v5];
  [v15 setShadowRadius:2.0];
  if ([(NCNotificationSummaryContentView *)self isIconViewLeading])
  {
    v6 = 33.82;
  }

  else
  {
    v6 = 35.6;
  }

  if ([(NCNotificationSummaryContentView *)self _shouldReverseLayoutDirection])
  {
    v7 = v6 * -0.1;
  }

  else
  {
    v8 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
    v9 = 40.0;
    if (v8)
    {
      v9 = 38.0;
    }

    v7 = v9 + v6 * -0.9;
  }

  v10 = [(NCNotificationSummaryContentView *)self isIconViewLeading];
  v11 = 40.0;
  if (v10)
  {
    v11 = 38.0;
  }

  [v15 setShadowOffset:{v7, (v11 - v6) * 0.5}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = v6 * 0.5;
  }

  else
  {
    v13 = 9.0;
  }

  v14 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v6, v6, v13}];
  [v15 setShadowPath:{objc_msgSend(v14, "CGPath")}];
}

@end
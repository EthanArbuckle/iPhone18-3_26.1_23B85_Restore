@interface NCNotificationSeamlessContentView
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (BOOL)notificationLabel:(id)a3 requestsInteractionWithURL:(id)a4;
- (CGRect)_textFrameForBounds:(CGRect)a3 ignoreBadgedIconView:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 withTraits:(id)a4;
- (MTVisualStylingProvider)importantTextVisualStylingProvider;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationSeamlessContentView)initWithFrame:(CGRect)a3;
- (NCNotificationSeamlessContentViewDelegate)delegate;
- (UIImageConfiguration)importantTextImageConfiguration;
- (id)_dateLabelFont;
- (id)_dateLabelPreferredFont;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_adjustInlineActionButtonBackgroundColor;
- (void)_configureCrossfadingContentViewIfNecessary;
- (void)_configureDateLabel;
- (void)_configureDateLabelIfNecessary;
- (void)_configureImportantTextLabelIfNecessary;
- (void)_configureSecondaryLabelBottomAlignedIfNecessary;
- (void)_configureSecondaryLabelTopAlignedGroupCollapsedIfNecessary;
- (void)_configureSecondaryLabelTopAlignedIfNecessary;
- (void)_layoutSubviewInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4 traits:(id)a5;
- (void)_recycleDateLabel;
- (void)_setNeedsTextAttributesUpdate;
- (void)_tearDownDateLabel;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForFooterSummaryAttributionTextLabel;
- (void)_updateTextAttributesForFooterTextLabel;
- (void)_updateTextAttributesForImportantTextLabel;
- (void)_updateTextAttributesForInlineActionButton;
- (void)_updateTextAttributesForPrimarySubtitleTextLabel;
- (void)_updateTextAttributesForPrimaryTextLabel;
- (void)_updateTextAttributesForSecondaryTextElementBottomAligned;
- (void)_updateTextAttributesForSecondaryTextElementTopAligned;
- (void)_updateTextAttributesForSecondaryTextElementTopAlignedGroupCollapsed;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfImageView:(id)a3 ifSymbolImageWithStyle:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)dateLabelDidChange:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlignContentToBottom:(BOOL)a3;
- (void)setAllowContentToCrossFade:(BOOL)a3;
- (void)setBadgedIconDescription:(id)a3;
- (void)setDate:(id)a3;
- (void)setDateAllDay:(BOOL)a3;
- (void)setDateAlpha:(double)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setFooterSummaryAttributionText:(id)a3;
- (void)setFooterText:(id)a3;
- (void)setHideDate:(BOOL)a3;
- (void)setImportantAttributedText:(id)a3;
- (void)setImportantText:(id)a3;
- (void)setImportantTextVisualStylingProvider:(id)a3;
- (void)setInlineAction:(id)a3;
- (void)setIsGroupCollapsed:(BOOL)a3;
- (void)setPrimarySubtitleText:(id)a3;
- (void)setPrimarySubtitleTextMaximumNumberOfLines:(unint64_t)a3;
- (void)setPrimaryText:(id)a3;
- (void)setPrimaryTextMaximumNumberOfLines:(unint64_t)a3;
- (void)setScreenCaptureProhibited:(BOOL)a3;
- (void)setSecondaryText:(id)a3;
- (void)setSecondaryTextCompact:(id)a3;
- (void)setSecondaryTextGroupCollapsed:(id)a3;
- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)a3;
- (void)setShadowsEnabled:(BOOL)a3;
- (void)setTextMenusEnabled:(BOOL)a3;
- (void)setThumbnail:(id)a3;
- (void)setThumbnailAlignedWithSecondaryText:(BOOL)a3;
- (void)setTimeZone:(id)a3;
- (void)setURLInteractionEnabled:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NCNotificationSeamlessContentView

- (void)_setNeedsTextAttributesUpdate
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = 0;

  [(NCNotificationSeamlessContentView *)self setNeedsLayout];
}

- (void)_adjustInlineActionButtonBackgroundColor
{
  inlineActionButton = self->_inlineActionButton;
  v6 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [(NCNotificationSeamlessContentView *)self traitCollection];
  v5 = [v6 colorWithAlphaComponent:{dbl_21E946240[objc_msgSend(v4, "userInterfaceStyle") == 2]}];
  [(UIButton *)inlineActionButton setBackgroundColor:v5];
}

- (void)didMoveToWindow
{
  v3 = [(NCNotificationSeamlessContentView *)self window];

  if (v3)
  {

    [(NCNotificationSeamlessContentView *)self adjustForContentSizeCategoryChange];
  }
}

- (void)_tearDownDateLabel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__NCNotificationSeamlessContentView__tearDownDateLabel__block_invoke;
  v2[3] = &unk_27836F6A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __55__NCNotificationSeamlessContentView__tearDownDateLabel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 488);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 32) _recycleDateLabel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 488);
    *(v3 + 488) = 0;
  }
}

- (void)_configureCrossfadingContentViewIfNecessary
{
  if (!self->_crossfadingContentView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NCNotificationSeamlessContentView *)self bounds];
    v4 = [v3 initWithFrame:?];
    crossfadingContentView = self->_crossfadingContentView;
    self->_crossfadingContentView = v4;

    [(UIView *)self->_crossfadingContentView setAccessibilityIdentifier:@"ShortLook.Platter.Content.Seamless.CrossFade"];
    [(NCNotificationSeamlessContentView *)self addSubview:self->_crossfadingContentView];
    v6 = self->_crossfadingContentView;

    [(UIView *)v6 setAutoresizingMask:18];
  }
}

- (void)_updateTextAttributesForPrimaryTextLabel
{
  if (self->_primaryTextLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    primaryTextLabel = self->_primaryTextLabel;
    v6 = *v4;
    v7 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0 additionalTraits:*MEMORY[0x277D74420]];

    [(UILabel *)primaryTextLabel setFont:v7];
    [(UILabel *)self->_primaryTextLabel setNumberOfLines:self->_primaryTextMaximumNumberOfLines];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_configureSecondaryLabelTopAlignedIfNecessary
{
  if (!self->_secondaryTextElementTopAligned)
  {
    v3 = objc_alloc_init(NCNotificationBodyLabel);
    [(NCNotificationBodyLabel *)v3 setDelegate:self];
    [(NCNotificationBodyLabel *)v3 nc_setMenuEnabled:self->_textMenusEnabled];
    [(NCNotificationBodyLabel *)v3 setURLInteractionEnabled:self->_URLInteractionEnabled];
    [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
    secondaryTextElementTopAligned = self->_secondaryTextElementTopAligned;
    self->_secondaryTextElementTopAligned = v3;
    v5 = v3;

    [(UIView *)self->_crossfadingContentView addSubview:self->_secondaryTextElementTopAligned];
    [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAligned];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementTopAligned setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
  }
}

- (void)_updateTextAttributesForSecondaryTextElementTopAligned
{
  if (self->_secondaryTextElementTopAligned)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned setPreferredTextStyle:*v4];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned setPreferredFontWeight:*MEMORY[0x277D74418]];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned nc_setNumberOfLines:self->_secondaryTextMaximumNumberOfLines];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (UIImageConfiguration)importantTextImageConfiguration
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D755D0];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
  v4 = MEMORY[0x277D76918];
  if (!IsAccessibilityCategory)
  {
    v4 = MEMORY[0x277D76968];
  }

  v5 = [v2 configurationWithTextStyle:*v4 scale:1];
  v6 = MEMORY[0x277D755D0];
  v7 = [MEMORY[0x277D75348] whiteColor];
  v13[0] = v7;
  v8 = [MEMORY[0x277D75348] tintColor];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v6 configurationWithPaletteColors:v9];
  v11 = [v5 configurationByApplyingConfiguration:v10];

  return v11;
}

- (id)_dateLabelFont
{
  v3 = [(BSUIDateLabel *)self->_dateLabel font];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NCNotificationSeamlessContentView *)self _dateLabelPreferredFont];
  }

  v6 = v5;

  return v6;
}

- (MTVisualStylingProvider)importantTextVisualStylingProvider
{
  importantTextVisualStylingProvider = self->_importantTextVisualStylingProvider;
  if (importantTextVisualStylingProvider)
  {
    v3 = importantTextVisualStylingProvider;
  }

  else
  {
    v3 = [(NCNotificationSeamlessContentView *)self visualStylingProviderForCategory:1];
  }

  return v3;
}

- (NCNotificationListCellDynamicHeightTraits)currentTraits
{
  v2 = [(NCNotificationSeamlessContentView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 currentTraits];
  }

  else
  {
    v3 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v4 = v3;

  return v4;
}

- (NCNotificationSeamlessContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateTextAttributesForSecondaryTextElementBottomAligned
{
  if (self->_secondaryTextElementBottomAligned)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned setPreferredTextStyle:*v4];
    v5 = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
    v6 = [v5 nc_contentType];

    v7 = MEMORY[0x277D74420];
    if (v6 != 6)
    {
      v7 = MEMORY[0x277D74418];
    }

    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned setPreferredFontWeight:*v7];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned nc_setNumberOfLines:1];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSecondaryTextElementTopAlignedGroupCollapsed
{
  if (self->_secondaryTextElementTopAlignedGroupCollapsed)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed setPreferredTextStyle:*v4];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed setPreferredFontWeight:*MEMORY[0x277D74418]];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed nc_setNumberOfLines:self->_secondaryTextMaximumNumberOfLines];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForImportantTextLabel
{
  if (self->_importantTextLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D76968];
    }

    importantTextLabel = self->_importantTextLabel;
    v6 = *v4;
    v7 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0 additionalTraits:*MEMORY[0x277D74420]];

    [(UILabel *)importantTextLabel setFont:v7];
    [(UILabel *)self->_importantTextLabel setNumberOfLines:[(NCNotificationSeamlessContentView *)self _importantTextMaximumNumberOfLines]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForInlineActionButton
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(UIAction *)self->_inlineAction title];
  if ([v3 length])
  {
    v4 = [(UIButton *)self->_inlineActionButton configuration];
    if (!v4)
    {
      v4 = [MEMORY[0x277D75230] plainButtonConfiguration];
    }

    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v6 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v6 = MEMORY[0x277D769D0];
    }

    v7 = *v6;
    v8 = [objc_opt_class() _preferredFont:1 textStyle:v7 weight:0 additionalTraits:*MEMORY[0x277D74420]];
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v13 = *MEMORY[0x277D740A8];
    v14[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 initWithString:v3 attributes:v10];

    [v4 setAttributedTitle:v11];
    [v4 setContentInsets:{8.0, 22.0, 8.0, 22.0}];
    [v4 setButtonSize:0];
    [(UIButton *)self->_inlineActionButton setConfiguration:v4];
    v12 = [(UIButton *)self->_inlineActionButton titleLabel];
    [v12 setLineBreakMode:4];

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForFooterTextLabel
{
  if (self->_footerTextLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D76940];
    }

    preferredContentSizeCategory = self->_preferredContentSizeCategory;
    v6 = *v4;
    v7 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v8 = MEMORY[0x277D74418];
    if (!v7)
    {
      v8 = MEMORY[0x277D74410];
    }

    footerTextLabel = self->_footerTextLabel;
    v10 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0 additionalTraits:*v8];

    [(UILabel *)footerTextLabel setFont:v10];
    [(UILabel *)self->_footerTextLabel setNumberOfLines:[(NCNotificationSeamlessContentView *)self _footerTextMaximumNumberOfLines]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForDateLabel
{
  dateLabel = self->_dateLabel;
  if (dateLabel)
  {
    v4 = [(NCNotificationSeamlessContentView *)self _dateLabelPreferredFont];
    [(BSUIDateLabel *)dateLabel setFont:v4];

    [(BSUIDateLabel *)self->_dateLabel setNumberOfLines:1];
    [(BSUIDateLabel *)self->_dateLabel setLineBreakMode:3];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_configureDateLabelIfNecessary
{
  if (!self->_dateLabel)
  {
    if (self->_date)
    {
      [(NCNotificationSeamlessContentView *)self _configureDateLabel];
    }
  }
}

- (void)_configureDateLabel
{
  v3 = [MEMORY[0x277CF0D50] sharedInstance];
  v4 = [v3 startLabelWithStartDate:self->_date endDate:0 timeZone:self->_timeZone allDay:self->_dateAllDay forStyle:self->_dateFormatStyle];
  dateLabel = self->_dateLabel;
  self->_dateLabel = v4;

  [(BSUIDateLabel *)self->_dateLabel setDelegate:self];
  [(BSUIDateLabel *)self->_dateLabel setHidden:self->_hideDate];
  [(NCNotificationSeamlessContentView *)self addSubview:self->_dateLabel];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForDateLabel];
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider)
  {
    v7 = self->_dateLabel;

    [(MTVisualStylingProvider *)strokeVisualStylingProvider automaticallyUpdateView:v7 withStyle:1];
  }
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(NCNotificationSeamlessContentView *)self _needsTextAttributesUpdate])
  {

    [(NCNotificationSeamlessContentView *)self _updateTextAttributes];
  }
}

- (void)_updateTextAttributes
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForPrimaryTextLabel];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForPrimarySubtitleTextLabel];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAligned];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementBottomAligned];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAlignedGroupCollapsed];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForImportantTextLabel];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForInlineActionButton];
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForFooterTextLabel];

  [(NCNotificationSeamlessContentView *)self _updateTextAttributesForDateLabel];
}

- (void)_updateTextAttributesForPrimarySubtitleTextLabel
{
  if (self->_primarySubtitleTextLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    v6 = *v4;
    v7 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0 additionalTraits:*MEMORY[0x277D74420]];

    [(UILabel *)primarySubtitleTextLabel setFont:v7];
    [(UILabel *)self->_primarySubtitleTextLabel setNumberOfLines:self->_primarySubtitleTextMaximumNumberOfLines];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NCNotificationSeamlessContentView;
  [(NCNotificationSeamlessContentView *)&v12 layoutSubviews];
  [(NCNotificationSeamlessContentView *)self bounds];
  if (CGRectGetWidth(v13) > 0.0)
  {
    [(NCNotificationSeamlessContentView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(NCNotificationSeamlessContentView *)self currentTraits];
    [(NCNotificationSeamlessContentView *)self _layoutSubviewInBounds:0 measuringOnly:v11 traits:v4, v6, v8, v10];

    if (self->_hasUpdatedContent)
    {
      [(UIView *)self->_crossfadingContentView pl_performCrossFadeIfNecessary];
      self->_hasUpdatedContent = 0;
    }
  }
}

- (id)_dateLabelPreferredFont
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277D76968];
  v4 = *MEMORY[0x277D74418];

  return [v2 _preferredFont:1 textStyle:v3 weight:0 additionalTraits:v4];
}

- (void)_configureSecondaryLabelBottomAlignedIfNecessary
{
  if (!self->_secondaryTextElementBottomAligned)
  {
    v3 = objc_alloc_init(NCNotificationBodyLabel);
    [(NCNotificationBodyLabel *)v3 setDelegate:self];
    [(NCNotificationBodyLabel *)v3 nc_setMenuEnabled:self->_textMenusEnabled];
    [(NCNotificationBodyLabel *)v3 setURLInteractionEnabled:self->_URLInteractionEnabled];
    [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
    secondaryTextElementBottomAligned = self->_secondaryTextElementBottomAligned;
    self->_secondaryTextElementBottomAligned = v3;
    v5 = v3;

    [(UIView *)self->_crossfadingContentView addSubview:self->_secondaryTextElementBottomAligned];
    [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementBottomAligned];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementBottomAligned setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
  }
}

- (void)_configureImportantTextLabelIfNecessary
{
  if (!self->_importantTextLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    importantTextLabel = self->_importantTextLabel;
    self->_importantTextLabel = v3;

    [(UILabel *)self->_importantTextLabel nc_setMenuEnabled:self->_textMenusEnabled];
    [(UILabel *)self->_importantTextLabel setLineBreakMode:4];
    [(NCNotificationSeamlessContentView *)self addSubview:self->_importantTextLabel];
    [(NCNotificationSeamlessContentView *)self _updateTextAttributesForImportantTextLabel];
    v5 = self->_importantTextLabel;
    v6 = [(NCNotificationSeamlessContentView *)self importantTextVisualStylingProvider];
    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:v5 style:1 visualStylingProvider:v6 outgoingProvider:0];

    v7 = self->_importantTextLabel;

    [(UILabel *)v7 setAlpha:0.0];
  }
}

- (NCNotificationSeamlessContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationSeamlessContentView;
  v3 = [(NCNotificationSeamlessContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCNotificationSeamlessContentView *)v3 setAccessibilityIdentifier:@"ShortLook.Platter.Content.Seamless"];
    v4->_adjustsFontForContentSizeCategory = 1;
    v4->_dateAlpha = 1.0;
    v4->_allowContentToCrossFade = 1;
  }

  return v4;
}

- (void)setURLInteractionEnabled:(BOOL)a3
{
  if (self->_URLInteractionEnabled != a3)
  {
    v4 = a3;
    self->_URLInteractionEnabled = a3;
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned setURLInteractionEnabled:?];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed setURLInteractionEnabled:v4];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned setURLInteractionEnabled:v4];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setTextMenusEnabled:(BOOL)a3
{
  if (self->_textMenusEnabled != a3)
  {
    self->_textMenusEnabled = a3;
    [(UILabel *)self->_primaryTextLabel nc_setMenuEnabled:?];
    [(UILabel *)self->_primarySubtitleTextLabel nc_setMenuEnabled:self->_textMenusEnabled];
    [(UILabel *)self->_importantTextLabel nc_setMenuEnabled:self->_textMenusEnabled];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned nc_setMenuEnabled:self->_textMenusEnabled];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed nc_setMenuEnabled:self->_textMenusEnabled];
    secondaryTextElementBottomAligned = self->_secondaryTextElementBottomAligned;
    textMenusEnabled = self->_textMenusEnabled;

    [(NCNotificationBodyLabel *)secondaryTextElementBottomAligned nc_setMenuEnabled:textMenusEnabled];
  }
}

- (void)setThumbnailAlignedWithSecondaryText:(BOOL)a3
{
  if (self->_thumbnailAlignedWithSecondaryText != a3)
  {
    self->_thumbnailAlignedWithSecondaryText = a3;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)a3
{
  v11 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self primaryText];
  v5 = BSEqualStrings();

  v6 = v11;
  if ((v5 & 1) == 0)
  {
    primaryTextLabel = self->_primaryTextLabel;
    if (v11)
    {
      if (!primaryTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_primaryTextLabel;
        self->_primaryTextLabel = v8;

        [(UILabel *)self->_primaryTextLabel setAccessibilityIdentifier:@"NotificationTitle"];
        [(UILabel *)self->_primaryTextLabel nc_setMenuEnabled:self->_textMenusEnabled];
        [(UILabel *)self->_primaryTextLabel setLineBreakMode:4];
        [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_primaryTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateTextAttributesForPrimaryTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_primaryTextLabel style:0 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
        v6 = v11;
        primaryTextLabel = self->_primaryTextLabel;
      }

      [(UILabel *)primaryTextLabel setText:v6];
    }

    else
    {
      [(UILabel *)primaryTextLabel removeFromSuperview];
      v10 = self->_primaryTextLabel;
      self->_primaryTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setPrimarySubtitleText:(id)a3
{
  v11 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  v6 = v11;
  if ((v5 & 1) == 0)
  {
    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    if (v11)
    {
      if (!primarySubtitleTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_primarySubtitleTextLabel;
        self->_primarySubtitleTextLabel = v8;

        [(UILabel *)self->_primarySubtitleTextLabel nc_setMenuEnabled:self->_textMenusEnabled];
        [(UILabel *)self->_primarySubtitleTextLabel setAccessibilityIdentifier:@"NotificationSubtitle"];
        [(UILabel *)self->_primarySubtitleTextLabel setLineBreakMode:4];
        [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_primarySubtitleTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateTextAttributesForPrimarySubtitleTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_primarySubtitleTextLabel style:0 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
        v6 = v11;
        primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
      }

      [(UILabel *)primarySubtitleTextLabel setText:v6];
    }

    else
    {
      [(UILabel *)primarySubtitleTextLabel removeFromSuperview];
      v10 = self->_primarySubtitleTextLabel;
      self->_primarySubtitleTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setSecondaryText:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (v8)
    {
      [(NCNotificationSeamlessContentView *)self _configureSecondaryLabelTopAlignedIfNecessary];
      [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned setAttributedText:v8];
      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAligned];
      secondaryTextElementTopAligned = self->_secondaryTextElementTopAligned;
      v7 = NCStringFromAutomationAccessibilityIdentifierAndContentType(@"NotificationBody.TopAligned", [v8 nc_contentType]);
      [(NCNotificationBodyLabel *)secondaryTextElementTopAligned setAccessibilityIdentifier:v7];
    }

    else
    {
      [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned removeFromSuperview];
      v7 = self->_secondaryTextElementTopAligned;
      self->_secondaryTextElementTopAligned = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setSecondaryTextCompact:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (v8)
    {
      [(NCNotificationSeamlessContentView *)self _configureSecondaryLabelBottomAlignedIfNecessary];
      [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned setAttributedText:v8];
      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementBottomAligned];
      secondaryTextElementBottomAligned = self->_secondaryTextElementBottomAligned;
      v7 = NCStringFromAutomationAccessibilityIdentifierAndContentType(@"NotificationBody.BottomAligned", [v8 nc_contentType]);
      [(NCNotificationBodyLabel *)secondaryTextElementBottomAligned setAccessibilityIdentifier:v7];
    }

    else
    {
      [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned removeFromSuperview];
      v7 = self->_secondaryTextElementBottomAligned;
      self->_secondaryTextElementBottomAligned = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setSecondaryTextGroupCollapsed:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self secondaryTextGroupCollapsed];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (v8)
    {
      [(NCNotificationSeamlessContentView *)self _configureSecondaryLabelTopAlignedGroupCollapsedIfNecessary];
      [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed setAttributedText:v8];
      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAlignedGroupCollapsed];
      secondaryTextElementTopAlignedGroupCollapsed = self->_secondaryTextElementTopAlignedGroupCollapsed;
      v7 = NCStringFromAutomationAccessibilityIdentifierAndContentType(@"NotificationBody.TopAligned", [v8 nc_contentType]);
      [(NCNotificationBodyLabel *)secondaryTextElementTopAlignedGroupCollapsed setAccessibilityIdentifier:v7];
    }

    else
    {
      [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed removeFromSuperview];
      v7 = self->_secondaryTextElementTopAlignedGroupCollapsed;
      self->_secondaryTextElementTopAlignedGroupCollapsed = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setImportantText:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self importantText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      [(NCNotificationSeamlessContentView *)self _configureImportantTextLabelIfNecessary];
      [(UILabel *)self->_importantTextLabel setText:v7];
    }

    else
    {
      [(UILabel *)self->_importantTextLabel removeFromSuperview];
      importantTextLabel = self->_importantTextLabel;
      self->_importantTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setImportantAttributedText:(id)a3
{
  v7 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self importantAttributedText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      [(NCNotificationSeamlessContentView *)self _configureImportantTextLabelIfNecessary];
      [(UILabel *)self->_importantTextLabel setAttributedText:v7];
    }

    else
    {
      [(UILabel *)self->_importantTextLabel removeFromSuperview];
      importantTextLabel = self->_importantTextLabel;
      self->_importantTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setImportantTextVisualStylingProvider:(id)a3
{
  v8 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(NCNotificationSeamlessContentView *)self importantTextVisualStylingProvider];
    if (([v5 isAutomaticallyUpdatingView:self->_importantTextLabel] & 1) == 0)
    {

      v5 = 0;
    }

    objc_storeStrong(&self->_importantTextVisualStylingProvider, a3);
    importantTextLabel = self->_importantTextLabel;
    v7 = [(NCNotificationSeamlessContentView *)self importantTextVisualStylingProvider];
    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:importantTextLabel style:1 visualStylingProvider:v7 outgoingProvider:v5];
  }
}

- (void)setInlineAction:(id)a3
{
  v14 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self inlineAction];
  v5 = BSEqualObjects();

  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v7 = [v14 copy];
    inlineAction = self->_inlineAction;
    self->_inlineAction = v7;

    v9 = [(UIAction *)self->_inlineAction title];

    inlineActionButton = self->_inlineActionButton;
    if (v9)
    {
      if (!inlineActionButton)
      {
        v11 = [MEMORY[0x277D75220] buttonWithType:1];
        v12 = self->_inlineActionButton;
        self->_inlineActionButton = v11;

        [(UIButton *)self->_inlineActionButton addAction:self->_inlineAction forControlEvents:64];
        [(NCNotificationSeamlessContentView *)self _adjustInlineActionButtonBackgroundColor];
        [(UIButton *)self->_inlineActionButton _setContinuousCornerRadius:6.0];
        [(UIButton *)self->_inlineActionButton setContentHorizontalAlignment:3];
        [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_inlineActionButton];
        [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_inlineActionButton style:0 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
      }

      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForInlineActionButton];
    }

    else
    {
      [(UIButton *)inlineActionButton removeFromSuperview];
      v13 = self->_inlineActionButton;
      self->_inlineActionButton = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
    v6 = v14;
  }
}

- (void)setFooterText:(id)a3
{
  v11 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self footerText];
  v5 = BSEqualObjects();

  v6 = v11;
  if ((v5 & 1) == 0)
  {
    footerTextLabel = self->_footerTextLabel;
    if (v11)
    {
      if (!footerTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_footerTextLabel;
        self->_footerTextLabel = v8;

        [(UILabel *)self->_footerTextLabel setLineBreakMode:4];
        [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_footerTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateTextAttributesForFooterTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_footerTextLabel style:1 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
        v6 = v11;
        footerTextLabel = self->_footerTextLabel;
      }

      [(UILabel *)footerTextLabel setAttributedText:v6];
    }

    else
    {
      [(UILabel *)footerTextLabel removeFromSuperview];
      v10 = self->_footerTextLabel;
      self->_footerTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setFooterSummaryAttributionText:(id)a3
{
  v11 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
  v5 = BSEqualObjects();

  v6 = v11;
  if ((v5 & 1) == 0)
  {
    footerSummaryAttributionTextLabel = self->_footerSummaryAttributionTextLabel;
    if (v11)
    {
      if (!footerSummaryAttributionTextLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_footerSummaryAttributionTextLabel;
        self->_footerSummaryAttributionTextLabel = v8;

        [(UILabel *)self->_footerSummaryAttributionTextLabel setLineBreakMode:4];
        [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
        [(UIView *)self->_crossfadingContentView addSubview:self->_footerSummaryAttributionTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateTextAttributesForFooterSummaryAttributionTextLabel];
        [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_footerSummaryAttributionTextLabel style:1 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
        v6 = v11;
        footerSummaryAttributionTextLabel = self->_footerSummaryAttributionTextLabel;
      }

      [(UILabel *)footerSummaryAttributionTextLabel setAttributedText:v6];
    }

    else
    {
      [(UILabel *)footerSummaryAttributionTextLabel removeFromSuperview];
      v10 = self->_footerSummaryAttributionTextLabel;
      self->_footerSummaryAttributionTextLabel = 0;
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setDate:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    date = self->_date;
    self->_date = v4;

    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)a3
{
  if (self->_dateAllDay != a3)
  {
    self->_dateAllDay = a3;
    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if (self->_dateFormatStyle != a3)
  {
    self->_dateFormatStyle = a3;
    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)a3
{
  if (self->_hideDate != a3)
  {
    self->_hideDate = a3;
    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setDateAlpha:(double)a3
{
  if (self->_dateAlpha != a3)
  {
    self->_dateAlpha = a3;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
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

    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setBadgedIconDescription:(id)a3
{
  v10 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_badgedIconDescription, a3);
    badgedIconView = self->_badgedIconView;
    if (self->_badgedIconDescription)
    {
      if (badgedIconView)
      {
        [(NCBadgedIconView *)badgedIconView setBadgedIconDescription:?];
      }

      else
      {
        v7 = [[NCBadgedIconView alloc] initWithBadgedIconDescription:v10 pointSize:38.0];
        v8 = self->_badgedIconView;
        self->_badgedIconView = v7;

        [(NCBadgedIconView *)self->_badgedIconView setShadowEnabled:self->_shadowsEnabled];
        [(NCNotificationSeamlessContentView *)self addSubview:self->_badgedIconView];
        v9 = [(NCNotificationSeamlessContentView *)self visualStylingProviderForCategory:1];
        [(NCBadgedIconView *)self->_badgedIconView updateVisualStylingOfProminentImageViewIfSymbolImageWithStyle:0 visualStylingProvider:v9 outgoingProvider:v9];
      }
    }

    else
    {
      [(NCBadgedIconView *)badgedIconView removeFromSuperview];
      v6 = self->_badgedIconView;
      self->_badgedIconView = 0;
    }

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setShadowsEnabled:(BOOL)a3
{
  if (self->_shadowsEnabled != a3)
  {
    self->_shadowsEnabled = a3;
    [(NCBadgedIconView *)self->_badgedIconView setShadowEnabled:?];
  }
}

- (void)setThumbnail:(id)a3
{
  v12 = a3;
  v4 = [(NCNotificationSeamlessContentView *)self thumbnail];
  v5 = BSEqualObjects();

  v6 = v12;
  if ((v5 & 1) == 0)
  {
    if (v12 && !self->_thumbnailImageView)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      thumbnailImageView = self->_thumbnailImageView;
      self->_thumbnailImageView = v7;

      [(UIImageView *)self->_thumbnailImageView setContentMode:1];
      [(UIImageView *)self->_thumbnailImageView _setContinuousCornerRadius:6.0];
      [(UIImageView *)self->_thumbnailImageView setClipsToBounds:1];
      [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
      [(UIView *)self->_crossfadingContentView addSubview:self->_thumbnailImageView];
      v6 = v12;
    }

    [(UIImageView *)self->_thumbnailImageView setImage:v6];
    v9 = [(NCNotificationSeamlessContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:0 visualStylingProvider:v9 outgoingProvider:v9];
    if (!v12)
    {
      v10 = self->_thumbnailImageView;
      if (v10)
      {
        [(UIImageView *)v10 removeFromSuperview];
        v11 = self->_thumbnailImageView;
        self->_thumbnailImageView = 0;
      }
    }

    self->_hasUpdatedContent = 1;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setPrimaryTextMaximumNumberOfLines:(unint64_t)a3
{
  if (self->_primaryTextMaximumNumberOfLines != a3)
  {
    self->_primaryTextMaximumNumberOfLines = a3;
    [(NCNotificationSeamlessContentView *)self _setNeedsTextAttributesUpdate];
    self->_hasUpdatedContent = 1;
  }
}

- (void)setPrimarySubtitleTextMaximumNumberOfLines:(unint64_t)a3
{
  if (self->_primarySubtitleTextMaximumNumberOfLines != a3)
  {
    self->_primarySubtitleTextMaximumNumberOfLines = a3;
    [(NCNotificationSeamlessContentView *)self _setNeedsTextAttributesUpdate];
    self->_hasUpdatedContent = 1;
  }
}

- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)a3
{
  if (self->_secondaryTextMaximumNumberOfLines != a3)
  {
    self->_secondaryTextMaximumNumberOfLines = a3;
    [(NCNotificationSeamlessContentView *)self _setNeedsTextAttributesUpdate];
    self->_hasUpdatedContent = 1;
  }
}

- (void)setScreenCaptureProhibited:(BOOL)a3
{
  if (self->_screenCaptureProhibited != a3)
  {
    self->_screenCaptureProhibited = a3;
    [(NCNotificationSeamlessContentView *)self nc_setScreenCaptureProhibited:?];
  }
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

- (void)setAlignContentToBottom:(BOOL)a3
{
  if (self->_alignContentToBottom != a3)
  {
    self->_alignContentToBottom = a3;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setIsGroupCollapsed:(BOOL)a3
{
  if (self->_isGroupCollapsed != a3)
  {
    self->_isGroupCollapsed = a3;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setAllowContentToCrossFade:(BOOL)a3
{
  if (self->_allowContentToCrossFade != a3)
  {
    self->_allowContentToCrossFade = a3;
    v14 = [(NCNotificationSeamlessContentView *)self secondaryText];
    [(NCNotificationSeamlessContentView *)self setSecondaryText:0];
    v5 = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextCompact:0];
    v6 = [(NCNotificationSeamlessContentView *)self secondaryTextGroupCollapsed];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextGroupCollapsed:0];
    v7 = [(NCNotificationSeamlessContentView *)self primaryText];
    [(NCNotificationSeamlessContentView *)self setPrimaryText:0];
    v8 = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
    [(NCNotificationSeamlessContentView *)self setPrimarySubtitleText:0];
    v9 = [(NCNotificationSeamlessContentView *)self inlineAction];
    [(NCNotificationSeamlessContentView *)self setInlineAction:0];
    v10 = [(NCNotificationSeamlessContentView *)self footerText];
    [(NCNotificationSeamlessContentView *)self setFooterText:0];
    v11 = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
    [(NCNotificationSeamlessContentView *)self setFooterSummaryAttributionText:0];
    v12 = [(NCNotificationSeamlessContentView *)self thumbnail];
    [(NCNotificationSeamlessContentView *)self setThumbnail:0];
    [(UIView *)self->_crossfadingContentView removeFromSuperview];
    crossfadingContentView = self->_crossfadingContentView;
    self->_crossfadingContentView = 0;

    [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self setSecondaryText:v14];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextCompact:v5];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextGroupCollapsed:v6];
    [(NCNotificationSeamlessContentView *)self setPrimaryText:v7];
    [(NCNotificationSeamlessContentView *)self setPrimarySubtitleText:v8];
    [(NCNotificationSeamlessContentView *)self setInlineAction:v9];
    [(NCNotificationSeamlessContentView *)self setFooterText:v10];
    [(NCNotificationSeamlessContentView *)self setFooterSummaryAttributionText:v11];
    [(NCNotificationSeamlessContentView *)self setThumbnail:v12];
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v15 = *MEMORY[0x277CBF3A8];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NCNotificationSeamlessContentView *)self currentTraits];
  [(NCNotificationSeamlessContentView *)self _layoutSubviewInBounds:&v15 measuringOnly:v12 traits:v5, v7, v9, v11];

  v14 = *(&v15 + 1);
  v13 = *&v15;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = NCNotificationSeamlessContentView;
  [(NCNotificationSeamlessContentView *)&v7 traitCollectionDidChange:a3];
  badgedIconView = self->_badgedIconView;
  v5 = [(NCNotificationSeamlessContentView *)self window];
  v6 = [v5 traitCollection];
  -[NCBadgedIconView setOverrideUserInterfaceStyle:](badgedIconView, "setOverrideUserInterfaceStyle:", [v6 userInterfaceStyle]);

  [(NCNotificationSeamlessContentView *)self _adjustInlineActionButtonBackgroundColor];
}

- (CGSize)sizeThatFits:(CGSize)a3 withTraits:(id)a4
{
  v8 = *MEMORY[0x277CBF3A8];
  v5 = a4;
  BSRectWithSize();
  [(NCNotificationSeamlessContentView *)self _layoutSubviewInBounds:&v8 measuringOnly:v5 traits:?];

  v7 = *(&v8 + 1);
  v6 = *&v8;
  result.height = v7;
  result.width = v6;
  return result;
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
    v6.super_class = NCNotificationSeamlessContentView;
    v4 = [(NCNotificationSeamlessContentView *)&v6 visualStylingProviderForCategory:a3];
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

    [(NCNotificationListBaseContentView *)self->_secondaryTextElementTopAligned setVisualStylingProvider:v8 forCategory:a4];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementBottomAligned setVisualStylingProvider:v8 forCategory:a4];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementTopAlignedGroupCollapsed setVisualStylingProvider:v8 forCategory:a4];
    [(NCNotificationSeamlessContentView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:a4 outgoingProvider:v10];

    v6 = v11;
  }
}

- (void)dateLabelDidChange:(id)a3
{
  [(BSUIDateLabel *)self->_dateLabel sizeToFit];
  [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  v4 = [(NCNotificationSeamlessContentView *)self primaryText];
  v5 = [v4 length];

  if (v5 && [(UILabel *)self->_primaryTextLabel numberOfLines]!= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained didInvalidateSizeFromNotificationSeamlessContentView:self];
    }
  }
}

- (BOOL)notificationLabel:(id)a3 requestsInteractionWithURL:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationSeamlessContentView:self requestsInteractionWithURL:v5];
  }

  return 0;
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

- (void)_updateVisualStylingOfImageView:(id)a3 ifSymbolImageWithStyle:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v10 = a6;
    v11 = a5;
    v12 = a3;
    v14 = [v12 image];
    if ([v14 isSymbolImage])
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:v12 style:a4 visualStylingProvider:v13 outgoingProvider:v10];
  }
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  badgedIconView = self->_badgedIconView;
  v8 = a5;
  v9 = a3;
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:badgedIconView style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_primaryTextLabel style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_primarySubtitleTextLabel style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_inlineActionButton style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_footerTextLabel style:1 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_footerSummaryAttributionTextLabel style:1 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:0 visualStylingProvider:v9 outgoingProvider:v8];
}

- (CGRect)_textFrameForBounds:(CGRect)a3 ignoreBadgedIconView:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(NCNotificationSeamlessContentView *)self isHorizontalMarginPaddingDisabled])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 14.0;
  }

  if (!a4 && self->_badgedIconView)
  {
    v10 = v10 + 50.0;
  }

  if ([(NCNotificationSeamlessContentView *)self isHorizontalMarginPaddingDisabled])
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 17.0;
  }

  if ([(NCNotificationSeamlessContentView *)self _shouldReverseLayoutDirection])
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [v13 displayScale];
  UIFloorToScale();
  v15 = v14;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = CGRectGetWidth(v28) - v10 - v11;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v17 = CGRectGetHeight(v29);
  v18 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [v18 displayScale];
  UIFloorToScale();
  v20 = v17 - v19;
  v21 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [v21 displayScale];
  UIFloorToScale();
  v23 = v20 - v22;

  v24 = v12;
  v25 = v15;
  v26 = v16;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_layoutSubviewInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4 traits:(id)a5
{
  v384 = *MEMORY[0x277D85DE8];
  v249 = a5;
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesIfNecessary];
  v254 = a4;
  v8 = a4 == 0;
  v259 = [(NCNotificationSeamlessContentView *)self _shouldReverseLayoutDirection];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
  v9 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [v9 displayScale];
  v240 = v10;

  v379 = 0;
  v380 = &v379;
  v381 = 0x2020000000;
  v382 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke;
  aBlock[3] = &unk_27836FE20;
  v378 = v8;
  aBlock[5] = &v379;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v12 = [v249 alignContentToBottom];
  v250 = [v249 isGroupCollapsed];
  v253 = v12 ^ 1;
  if (v12 & 1 | ((v250 & 1) == 0))
  {
    v252 = 0;
    v242 = v12 ^ 1;
    v243 = v12;
  }

  else
  {
    v13 = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
    v252 = [v13 length] != 0;

    v242 = !v252;
    v243 = v252;
  }

  [(NCNotificationSeamlessContentView *)self _textFrameForBounds:0 ignoreBadgedIconView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v244 = v14;
  v245 = v15;
  v246 = v17;
  v247 = v16;
  if (v12)
  {
    v18 = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
    v258 = [v18 nc_contentType] == 6;
  }

  else
  {
    v258 = 0;
  }

  if (v254)
  {
    v266 = 0;
  }

  else
  {
    v266 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v371 = 0;
  v372 = &v371;
  v373 = 0x4010000000;
  v374 = &unk_21E979265;
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  *v263 = *MEMORY[0x277CBF3A0];
  v375 = *MEMORY[0x277CBF3A0];
  v260 = v19;
  v376 = v19;
  [(NCNotificationSeamlessContentView *)self _configureDateLabelIfNecessary];
  dateLabel = self->_dateLabel;
  if (dateLabel == 0 || IsAccessibilityCategory)
  {
    goto LABEL_23;
  }

  [(BSUIDateLabel *)dateLabel sizeThatFits:a3.size.width, a3.size.height];
  BSRectWithSize();
  p_x = &v372->origin.x;
  v372[1].origin.x = v22;
  p_x[5] = v23;
  p_x[6] = v24;
  p_x[7] = v25;
  v26 = v244;
  v27 = v245;
  v29 = v246;
  v28 = v247;
  if (v259)
  {
    MinX = CGRectGetMinX(*&v26);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v26);
    MinX = MaxX - CGRectGetWidth(v372[1]);
  }

  v372[1].origin.x = MinX;
  if (v12 && ([(NCNotificationSeamlessContentView *)self thumbnail], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    Height = CGRectGetHeight(a3);
    v35 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v35 displayScale];
    UIFloorToScale();
    v372[1].origin.y = Height - v36 - CGRectGetHeight(v372[1]);

    v5 = 0;
  }

  else
  {
    v32 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v32 displayScale];
    UIFloorToScale();
    v372[1].origin.y = v33 + 2.0;

    if (!v12)
    {
      goto LABEL_20;
    }
  }

LABEL_20:
  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76840], self->_preferredContentSizeCategory) == NSOrderedDescending)
  {
    v37 = [(NCNotificationSeamlessContentView *)self _dateLabelFont];
    v38 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v38 displayScale];
    UIFloorToScale();
    [v37 _scaledValueForValue:v39 + 2.0];
    v372[1].origin.y = v40;
  }

  UIRectIntegralWithScale();
  v41 = &v372->origin.x;
  v372[1].origin.x = v42;
  v41[5] = v43;
  v41[6] = v44;
  v41[7] = v45;
  v11[2](v11, self->_dateLabel);
LABEL_23:
  v46 = self->_dateAlpha <= 0.0 || self->_date == 0;
  v47 = [(NCNotificationSeamlessContentView *)self thumbnail];

  v365 = 0;
  v366 = &v365;
  v367 = 0x4010000000;
  v368 = &unk_21E979265;
  v369 = *v263;
  v370 = v260;
  v358[0] = MEMORY[0x277D85DD0];
  v358[1] = 3221225472;
  v358[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_3;
  v358[3] = &unk_27836FE48;
  v363 = v259;
  v360 = &v365;
  v358[4] = self;
  v362 = a3;
  v361 = &v371;
  v364 = v12;
  v264 = v11;
  v359 = v264;
  v248 = _Block_copy(v358);
  if (v47)
  {
    if (self->_thumbnailAlignedWithSecondaryText)
    {
      if (!v46)
      {
        goto LABEL_32;
      }
    }

    else if (!(v46 | !CGRectIsEmpty(v372[1])))
    {
      goto LABEL_32;
    }

    v248[2]();
  }

LABEL_32:
  v352 = 0;
  v353 = &v352;
  v354 = 0x4010000000;
  v355 = &unk_21E979265;
  v356 = 0u;
  v357 = 0u;
  v385.origin.x = v244;
  v385.origin.y = v247;
  v385.size.width = v246;
  v385.size.height = v245;
  v48 = CGRectGetMinX(v385);
  v386.origin.x = v244;
  v386.origin.y = v247;
  v386.size.width = v246;
  v386.size.height = v245;
  MinY = CGRectGetMinY(v386);
  v387.origin.x = v244;
  v387.origin.y = v247;
  v387.size.width = v246;
  v387.size.height = v245;
  *&v50 = CGRectGetWidth(v387);
  *&v356 = v48;
  *(&v356 + 1) = MinY;
  v357 = v50;
  v350[0] = MEMORY[0x277D85DD0];
  v350[1] = 3221225472;
  v350[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_4;
  v350[3] = &unk_27836FE70;
  v351 = v259;
  v350[4] = &v352;
  v261 = _Block_copy(v350);
  v348[0] = MEMORY[0x277D85DD0];
  v348[1] = 3221225472;
  v348[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_5;
  v348[3] = &__block_descriptor_33_e104__CGRect__CGPoint_dd__CGSize_dd__72__0_CGRect__CGPoint_dd__CGSize_dd__8_CGRect__CGPoint_dd__CGSize_dd__40l;
  v349 = v259;
  v51 = _Block_copy(v348);
  v52 = [(NCNotificationSeamlessContentView *)self primaryText];
  v53 = [v52 length] == 0;

  v54 = [(NCNotificationSeamlessContentView *)self primaryText];
  if ([v54 length])
  {
    v55 = 0;
  }

  else
  {
    v56 = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
    v55 = ([v56 length] | v47) == 0;
  }

  v57 = self->_dateLabel;
  v346[0] = 0;
  v346[1] = v346;
  v346[2] = 0x2020000000;
  if (self->_date)
  {
    v58 = self->_hideDate || IsAccessibilityCategory || v57 != 0 && !IsAccessibilityCategory && v55;
  }

  else
  {
    v58 = 1;
  }

  v347 = v58 & 1;
  v339[0] = MEMORY[0x277D85DD0];
  v339[1] = 3221225472;
  v339[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_6;
  v339[3] = &unk_27836FEB8;
  v344 = a3;
  v339[4] = self;
  v341 = v346;
  v241 = v51;
  v340 = v241;
  v342 = &v371;
  v345 = v12;
  v343 = &v365;
  v59 = _Block_copy(v339);
  v60 = [(NCNotificationSeamlessContentView *)self importantText];
  v61 = [v60 length] == 0;

  if (!v61)
  {
    (*(v59 + 2))(v59, 0, 0, 1);
    v62 = v261[2](v261, self->_importantTextLabel, 1);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v333[0] = MEMORY[0x277D85DD0];
    v333[1] = 3221225472;
    v333[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_7;
    v333[3] = &unk_27836FEE0;
    v334 = v264;
    v333[4] = self;
    v335 = v62;
    v336 = v64;
    v337 = v66;
    v338 = v68;
    v69 = _Block_copy(v333);
    [v266 addObject:v69];
  }

  if (v53 || v258)
  {
    r1 = *(MEMORY[0x277CBF3A0] + 8);
    v256 = *(MEMORY[0x277CBF3A0] + 16);
    x = *MEMORY[0x277CBF3A0];
    rect = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v70 = [(NCNotificationSeamlessContentView *)self importantText];
    v71 = [v70 length] != 0;

    (*(v59 + 2))(v59, (v71 || v46) & (v47 != 0), 0, 0);
    v72 = v261[2](v261, self->_primaryTextLabel, v253);
    v256 = v73;
    x = v72;
    rect = v74;
    v76 = v75;
    if (v12)
    {
      v77 = CGRectGetHeight(a3);
      v78 = [(NCNotificationSeamlessContentView *)self traitCollection];
      [v78 displayScale];
      UIFloorToScale();
      v80 = v79;
      v388.size.width = v256;
      v388.origin.x = x;
      v388.origin.y = v76;
      v388.size.height = rect;
      v81 = CGRectGetHeight(v388);

      v76 = v77 - v80 - v81;
    }

    v327[0] = MEMORY[0x277D85DD0];
    v327[1] = 3221225472;
    v327[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_9;
    v327[3] = &unk_27836FEE0;
    v82 = v264;
    v328 = v82;
    v327[4] = self;
    v329 = x;
    r1 = v76;
    v330 = v76;
    v331 = v256;
    v332 = rect;
    v83 = _Block_copy(v327);
    [v266 addObject:v83];

    if (v47 && self->_thumbnailAlignedWithSecondaryText)
    {
      v248[2]();
      v389.size.width = v256;
      v389.origin.x = x;
      v389.origin.y = v76;
      v389.size.height = rect;
      MaxY = CGRectGetMaxY(v389);
      v85 = &v366->origin.x;
      v366[1].origin.y = MaxY;
      (v82[2])(v82, self->_thumbnailImageView, v85[4], MaxY, v85[6], v85[7]);
    }
  }

  if (!(v12 & 1 | !IsAccessibilityCategory) && self->_date)
  {
    (*(v59 + 2))(v59, v47 != 0, 0, 0);
    v86 = v261[2](v261, self->_dateLabel, 1);
    v87 = &v372->origin.x;
    v372[1].origin.x = v86;
    v87[5] = v88;
    v87[6] = v89;
    v87[7] = v90;
    v324[0] = MEMORY[0x277D85DD0];
    v324[1] = 3221225472;
    v324[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_10;
    v324[3] = &unk_27836FF08;
    v325 = v264;
    v324[4] = self;
    v326 = &v371;
    v91 = _Block_copy(v324);
    [v266 addObject:v91];
  }

  if (v47 && CGRectIsEmpty(v366[1]))
  {
    v248[2]();
  }

  v92 = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
  v93 = [v92 length] == 0;

  if (!v93)
  {
    (*(v59 + 2))(v59, v47 != 0, IsAccessibilityCategory, 0);
    v94 = v261[2](v261, self->_primarySubtitleTextLabel, 1);
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v318[0] = MEMORY[0x277D85DD0];
    v318[1] = 3221225472;
    v318[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_11;
    v318[3] = &unk_27836FEE0;
    v319 = v264;
    v318[4] = self;
    v320 = v94;
    v321 = v96;
    v322 = v98;
    v323 = v100;
    v101 = _Block_copy(v318);
    [v266 addObject:v101];
  }

  v102 = [(NCNotificationSeamlessContentView *)self secondaryText];
  v103 = [v102 length] == 0;

  v104 = v12 | v250;
  if (((v103 | v104) & 1) == 0)
  {
    (*(v59 + 2))(v59, v47 != 0, IsAccessibilityCategory, 0);
    v105 = v261[2](v261, self->_secondaryTextElementTopAligned, 1);
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v312[0] = MEMORY[0x277D85DD0];
    v312[1] = 3221225472;
    v312[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_12;
    v312[3] = &unk_27836FEE0;
    v313 = v264;
    v312[4] = self;
    v314 = v105;
    v315 = v107;
    v316 = v109;
    v317 = v111;
    v112 = _Block_copy(v312);
    [v266 addObject:v112];
  }

  v113 = [(NCNotificationSeamlessContentView *)self secondaryTextGroupCollapsed];
  v114 = [v113 length] != 0;

  v115 = v253 & v250;
  if ((v114 & v115) != 0)
  {
    (*(v59 + 2))(v59, v47 != 0, IsAccessibilityCategory, 0);
    v116 = v261[2](v261, self->_secondaryTextElementTopAlignedGroupCollapsed, 1);
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v306[0] = MEMORY[0x277D85DD0];
    v306[1] = 3221225472;
    v306[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_13;
    v306[3] = &unk_27836FEE0;
    v307 = v264;
    v306[4] = self;
    v308 = v116;
    v309 = v118;
    v310 = v120;
    v311 = v122;
    v123 = _Block_copy(v306);
    [v266 addObject:v123];
  }

  v124 = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
  v125 = [v124 length] == 0;

  if (((v125 | v253 | IsAccessibilityCategory) & 1) == 0)
  {
    v126 = *(v59 + 2);
    if (v258)
    {
      v127 = v126(v59, 0, 1, 1);
      v129 = v128;
      v131 = v130;
    }

    else
    {
      v127 = v126(v59, v47 != 0, 0, 0);
      v133 = v132;
      v131 = v134;
      v390.size.width = v256;
      v390.origin.x = x;
      v390.origin.y = r1;
      v390.size.height = rect;
      Width = CGRectGetWidth(v390);
      v136 = [(NCNotificationSeamlessContentView *)self thumbnail];
      v137 = 0.0;
      if (!v136)
      {
        v137 = CGRectGetWidth(v372[1]) + 10.0;
      }

      v129 = v133 - (Width + 5.0) - v137;
    }

    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned sizeThatFits:v129, v131];
    v139 = v138;
    v141 = v140;
    v142 = CGRectGetHeight(a3);
    v143 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v143 displayScale];
    UIFloorToScale();
    v145 = v144;
    v391.origin.x = 0.0;
    v391.origin.y = 0.0;
    v391.size.width = v139;
    v391.size.height = v141;
    v146 = CGRectGetHeight(v391);

    v147 = v142 - v145 - v146;
    if (v129 >= v139)
    {
      v129 = v139;
    }

    if (v258)
    {
      UIRectCenteredXInRect();
      v127 = v148;
      v147 = v149;
      v129 = v150;
      v141 = v151;
    }

    else
    {
      v152 = [(NCNotificationSeamlessContentView *)self primaryText];
      v153 = [v152 length] == 0;

      if (!v153)
      {
        v155 = v256;
        v154 = x;
        v156 = r1;
        v157 = rect;
        if (v259)
        {
          v158 = CGRectGetMinX(*&v154);
          v392.origin.x = 0.0;
          v392.origin.y = v147;
          v392.size.width = v129;
          v392.size.height = v141;
          v127 = v158 + -5.0 - CGRectGetWidth(v392);
        }

        else
        {
          v127 = CGRectGetMaxX(*&v154) + 5.0;
        }
      }
    }

    v300[0] = MEMORY[0x277D85DD0];
    v300[1] = 3221225472;
    v300[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_14;
    v300[3] = &unk_27836FEE0;
    v301 = v264;
    v300[4] = self;
    v302 = v127;
    v303 = v147;
    v304 = v129;
    v305 = v141;
    v159 = _Block_copy(v300);
    [v266 addObject:v159];
  }

  v160 = [(UIAction *)self->_inlineAction title];
  v161 = [v160 length] == 0;

  if (!v161)
  {
    (*(v59 + 2))(v59, v47 != 0, IsAccessibilityCategory, 0);
    v162 = v261[2](v261, self->_inlineActionButton, 0);
    v164 = v163;
    v166 = v165;
    v353[1].size.height = v353[1].size.height + 8.0;
    v168 = v167 + 8.0;
    v294[0] = MEMORY[0x277D85DD0];
    v294[1] = 3221225472;
    v294[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_15;
    v294[3] = &unk_27836FEE0;
    v295 = v264;
    v294[4] = self;
    v296 = v162;
    v297 = v168;
    v298 = v164;
    v299 = v166;
    v169 = _Block_copy(v294);
    [v266 addObject:v169];
  }

  v170 = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
  v171 = [v170 length] != 0;

  if (v171 && v252)
  {
    (*(v59 + 2))(v59, v47 != 0, IsAccessibilityCategory, 0);
    v172 = v261[2](v261, self->_footerSummaryAttributionTextLabel, 1);
    v174 = v173;
    v176 = v175;
    v353[1].size.height = v353[1].size.height + 2.0;
    v178 = v177 + 2.0;
    v288[0] = MEMORY[0x277D85DD0];
    v288[1] = 3221225472;
    v288[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_16;
    v288[3] = &unk_27836FEE0;
    v289 = v264;
    v288[4] = self;
    v290 = v172;
    v291 = v178;
    v292 = v174;
    v293 = v176;
    v179 = _Block_copy(v288);
    [v266 addObject:v179];
  }

  v180 = [(NCNotificationSeamlessContentView *)self footerText];
  v181 = [v180 length] == 0;

  if (!v181 && !v243)
  {
    (*(v59 + 2))(v59, v47 != 0, IsAccessibilityCategory, 0);
    v182 = v261[2](v261, self->_footerTextLabel, 1);
    v184 = v183;
    v186 = v185;
    v353[1].size.height = v353[1].size.height + 2.0;
    v188 = v187 + 2.0;
    v282[0] = MEMORY[0x277D85DD0];
    v282[1] = 3221225472;
    v282[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_17;
    v282[3] = &unk_27836FEE0;
    v282[4] = self;
    v283 = v264;
    v284 = v182;
    v285 = v188;
    v286 = v184;
    v287 = v186;
    v189 = _Block_copy(v282);
    [v266 addObject:v189];
  }

  if (v259)
  {
    CGRectGetWidth(a3);
  }

  [(NCNotificationSeamlessContentView *)self isHorizontalMarginPaddingDisabled];
  UIRectCenteredYInRectScale();
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v197 = v196;
  if ([(NCBadgedIconView *)self->_badgedIconView isFeaturingSymbol])
  {
    BSRectWithSize();
    v239 = 0;
    UIRectCenteredIntegralRectScale();
    v191 = v198;
    v193 = v199;
    v195 = v200;
    v197 = v201;
  }

  if (v12)
  {
    [(NCNotificationSeamlessContentView *)self bounds];
    v202 = CGRectGetHeight(v393);
    v203 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v203 displayScale];
    UIFloorToScale();
    v205 = v204;
    v394.origin.x = v191;
    v394.origin.y = v193;
    v394.size.width = v195;
    v394.size.height = v197;
    v206 = CGRectGetHeight(v394);

    if (v193 < v202 - v205 - v206)
    {
      v193 = v202 - v205 - v206;
    }
  }

  if (IsAccessibilityCategory)
  {
    if (!CGRectIsEmpty(v372[1]))
    {
      v395.size.width = v256;
      v395.origin.x = x;
      v395.origin.y = r1;
      v395.size.height = rect;
      v396 = CGRectUnion(v395, v372[1]);
      v256 = v396.size.width;
      x = v396.origin.x;
      r1 = v396.origin.y;
      rect = v396.size.height;
    }

    v207 = [(NCNotificationSeamlessContentView *)self importantText];
    v208 = [v207 length] == 0;

    if (!v208)
    {
      [(UILabel *)self->_importantTextLabel frame];
      v400.size.width = v256;
      v400.origin.x = x;
      v400.origin.y = r1;
      v400.size.height = rect;
      CGRectUnion(v397, v400);
    }

    v239 = v240;
    UIRectCenteredYInRectScale();
    v191 = v209;
    v193 = v210;
    v195 = v211;
    v197 = v212;
  }

  (v264[2])(v264, self->_badgedIconView, v191, v193, v195, v197);
  v277[0] = MEMORY[0x277D85DD0];
  v277[1] = 3221225472;
  v277[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_18;
  v277[3] = &unk_27836FF30;
  v277[4] = self;
  v278 = v258;
  v279 = v12;
  v280 = ((v12 | v250) & 1) == 0;
  v281 = v253 & v250;
  v213 = _Block_copy(v277);
  [v266 addObject:v213];

  v271[0] = MEMORY[0x277D85DD0];
  v271[1] = 3221225472;
  v271[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_19;
  v271[3] = &unk_27836FF58;
  v271[4] = self;
  v272 = v258;
  v273 = v12;
  v274 = v12;
  v275 = v252;
  v276 = v242;
  v214 = _Block_copy(v271);
  [v266 addObject:v214];

  v215 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [v215 displayScale];
  UIFloorToScale();
  v217 = v216;
  v218 = CGRectGetHeight(v353[1]);
  v219 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [v219 displayScale];
  UIFloorToScale();
  v221 = v220;

  if (self->_date && !UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory))
  {
    v215 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v215 displayScale];
    UIFloorToScale();
    v225 = v224;
    v219 = [(NCNotificationSeamlessContentView *)self _dateLabelFont];
    [v219 lineHeight];
    v104 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v104 displayScale];
    UICeilToScale();
    v227 = v226;
    v115 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [v115 displayScale];
    UIFloorToScale();
    v222 = v225 + 2.0 + v227 + v228;
    v223 = 1;
  }

  else if (self->_thumbnailAlignedWithSecondaryText)
  {
    v222 = CGRectGetMinY(v366[1]);
    v223 = 0;
  }

  else
  {
    v223 = 0;
    v222 = 16.0;
  }

  v229 = [(NCNotificationSeamlessContentView *)self thumbnail];
  if (v229)
  {
    v230 = 32.0;
  }

  else
  {
    v230 = 0.0;
  }

  if (v223)
  {
  }

  v231 = v222 + v230 + 16.0;
  if (v254)
  {
    CGRectGetWidth(a3);
    UISizeRoundToScale();
    v254->width = v232;
    v254->height = v233;
  }

  else
  {
    if ((v12 & 1) == 0 && fmax(v231, 66.0) > v217 + v218 + v221)
    {
      UIRectCenteredYInRectScale();
      v234 = CGRectGetMinY(v398);
      v399.origin.x = v244;
      v399.size.width = v246;
      v399.origin.y = v247;
      v399.size.height = v245;
      v380[3] = v234 - CGRectGetMinY(v399);
    }

    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    v235 = v266;
    v236 = [v235 countByEnumeratingWithState:&v267 objects:v383 count:16];
    if (v236)
    {
      v237 = *v268;
      do
      {
        for (i = 0; i != v236; ++i)
        {
          if (*v268 != v237)
          {
            objc_enumerationMutation(v235);
          }

          (*(*(*(&v267 + 1) + 8 * i) + 16))(*(*(&v267 + 1) + 8 * i));
        }

        v236 = [v235 countByEnumeratingWithState:&v267 objects:v383 count:16];
      }

      while (v236);
    }
  }

  _Block_object_dispose(v346, 8);
  _Block_object_dispose(&v352, 8);

  _Block_object_dispose(&v365, 8);
  _Block_object_dispose(&v371, 8);

  _Block_object_dispose(&v379, 8);
}

void __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = v11;
  if (*(a1 + 48) == 1)
  {
    v13 = a4 + *(*(*(a1 + 40) + 8) + 24);
    v14 = [v11 superview];
    v15 = v14;
    if (v14 == *(*(a1 + 32) + 408))
    {
    }

    else
    {
      [v12 frame];
      v16 = CGRectEqualToRect(v24, *MEMORY[0x277CBF3A0]);

      if (!v16)
      {
        [v12 setFrame:{a3, v13, a5, a6}];
        goto LABEL_7;
      }
    }

    v17 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_2;
    v18[3] = &unk_27836FDF8;
    v19 = v12;
    v20 = a3;
    v21 = v13;
    v22 = a5;
    v23 = a6;
    [v17 performWithoutAnimation:v18];
  }

LABEL_7:
}

uint64_t __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_3(uint64_t a1)
{
  BSRectWithSize();
  v2 = *(*(a1 + 48) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  if (*(a1 + 96) == 1)
  {
    v7 = [*(a1 + 32) isHorizontalMarginPaddingDisabled];
    v8 = 17.0;
    if (v7)
    {
      v8 = 0.0;
    }
  }

  else
  {
    Width = CGRectGetWidth(*(a1 + 64));
    v10 = Width - CGRectGetWidth(*(*(*(a1 + 48) + 8) + 32));
    v11 = [*(a1 + 32) isHorizontalMarginPaddingDisabled];
    v12 = 17.0;
    if (v11)
    {
      v12 = 0.0;
    }

    v8 = v10 - v12;
  }

  *(*(*(a1 + 48) + 8) + 32) = v8;
  if (*(*(a1 + 32) + 488))
  {
    MaxY = CGRectGetMaxY(*(*(*(a1 + 56) + 8) + 32));
    v14 = [*(a1 + 32) traitCollection];
    [v14 displayScale];
    UIFloorToScale();
    *(*(*(a1 + 48) + 8) + 40) = MaxY + v15;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = 0x4030000000000000;
  }

  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  if (*(a1 + 97) == 1)
  {
    Height = CGRectGetHeight(*(a1 + 64));
    v19 = [*(a1 + 32) traitCollection];
    [v19 displayScale];
    UIFloorToScale();
    v21 = Height - v20 + -32.0;

    if (v17 < v21)
    {
      v17 = v21;
    }

    v16 = *(*(a1 + 48) + 8);
  }

  *(v16 + 40) = v17;
  UIRectIntegralWithScale();
  v22 = *(*(a1 + 48) + 8);
  v22[4] = v25.n128_u64[0];
  v22[5] = v26.n128_u64[0];
  v22[6] = v27.n128_u64[0];
  v22[7] = v28.n128_u64[0];
  v23 = *(*(a1 + 48) + 8);
  v24 = *(*(a1 + 40) + 16);
  v25.n128_u64[0] = v23[4];
  v26.n128_u64[0] = v23[5];
  v27.n128_u64[0] = v23[6];
  v28.n128_u64[0] = v23[7];

  return v24(v25, v26, v27, v28);
}

double __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_4(uint64_t a1, void *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  [a2 sizeThatFits:{a6, a7}];
  v23.origin.x = a4;
  v23.origin.y = a5;
  v23.size.width = a6;
  v23.size.height = a7;
  CGRectGetWidth(v23);
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a3)
  {
    CGRectGetMinX(*&v13);
  }

  else
  {
    CGRectGetMinX(*&v13);
  }

  CGRectGetMaxY(*(*(*(a1 + 32) + 8) + 32));
  UIRectIntegralWithScale();
  v18 = v17;
  v24.origin.x = v17;
  v24.origin.y = v19;
  v24.size.width = v20;
  v24.size.height = v21;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v24);
  return v18;
}

CGFloat __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_5(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16.origin.x = a6;
  v16.origin.y = a7;
  v16.size.width = a8;
  v16.size.height = a9;
  CGRectGetWidth(v16);
  if (*(a1 + 32) == 1)
  {
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    return CGRectGetMaxX(v17) + 10.0;
  }

  return a2;
}

uint64_t __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_6(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = [*(a1 + 32) _textFrameForBounds:*(a1 + 72) ignoreBadgedIconView:{*(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (a2)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    result = (*(*(a1 + 40) + 16))();
    if (!a4 || (*(a1 + 104) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

void __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_8;
  v5[3] = &unk_27836FEE0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v4;
  [v2 performWithoutAnimation:v5];
}

uint64_t __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_18(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setAlpha:(*(a1 + 40) ^ 1u)];
  v2 = *(a1 + 32);
  v3 = 0.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(v2 + 576);
  }

  [*(v2 + 488) setAlpha:v3];
  [*(*(a1 + 32) + 456) setAlpha:(*(a1 + 41) ^ 1u)];
  LOBYTE(v4) = *(a1 + 42);
  [*(*(a1 + 32) + 432) setAlpha:v4];
  v5 = *(*(a1 + 32) + 440);
  LOBYTE(v6) = *(a1 + 43);
  v7 = v6;

  return [v5 setAlpha:v7];
}

uint64_t __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_19(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_20;
  v2[3] = &unk_27836FF58;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  return [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

uint64_t __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_20(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setHidden:*(a1 + 40)];
  [*(*(a1 + 32) + 424) setHidden:*(a1 + 41)];
  [*(*(a1 + 32) + 448) setHidden:(*(a1 + 42) & 1) == 0];
  [*(*(a1 + 32) + 472) setHidden:(*(a1 + 43) & 1) == 0];
  [*(*(a1 + 32) + 464) setHidden:(*(a1 + 44) & 1) == 0];
  [*(*(a1 + 32) + 480) setHidden:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 512);
  v3 = *(a1 + 40);

  return [v2 setHidden:v3];
}

- (void)_updateTextAttributesForFooterSummaryAttributionTextLabel
{
  if (self->_footerSummaryAttributionTextLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D76940];
    }

    preferredContentSizeCategory = self->_preferredContentSizeCategory;
    v6 = *v4;
    v7 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v8 = MEMORY[0x277D74418];
    if (!v7)
    {
      v8 = MEMORY[0x277D74410];
    }

    footerSummaryAttributionTextLabel = self->_footerSummaryAttributionTextLabel;
    v10 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0 additionalTraits:*v8];

    [(UILabel *)footerSummaryAttributionTextLabel setFont:v10];
    [(UILabel *)self->_footerSummaryAttributionTextLabel setNumberOfLines:[(NCNotificationSeamlessContentView *)self _footerTextMaximumNumberOfLines]];
    self->_hasUpdatedContent = 1;

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)_configureSecondaryLabelTopAlignedGroupCollapsedIfNecessary
{
  if (!self->_secondaryTextElementTopAlignedGroupCollapsed)
  {
    v3 = objc_alloc_init(NCNotificationBodyLabel);
    [(NCNotificationBodyLabel *)v3 setDelegate:self];
    [(NCNotificationBodyLabel *)v3 nc_setMenuEnabled:self->_textMenusEnabled];
    [(NCNotificationBodyLabel *)v3 setURLInteractionEnabled:self->_URLInteractionEnabled];
    [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
    secondaryTextElementTopAlignedGroupCollapsed = self->_secondaryTextElementTopAlignedGroupCollapsed;
    self->_secondaryTextElementTopAlignedGroupCollapsed = v3;
    v5 = v3;

    [(UIView *)self->_crossfadingContentView addSubview:self->_secondaryTextElementTopAlignedGroupCollapsed];
    [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAlignedGroupCollapsed];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementTopAlignedGroupCollapsed setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
  }
}

- (void)_recycleDateLabel
{
  [(BSUIDateLabel *)self->_dateLabel setDelegate:0];
  [(BSUIDateLabel *)self->_dateLabel setHidden:0];
  [(MTVisualStylingProvider *)self->_strokeVisualStylingProvider stopAutomaticallyUpdatingView:self->_dateLabel];
  v3 = [MEMORY[0x277CF0D50] sharedInstance];
  [v3 recycleLabel:self->_dateLabel];
}

@end
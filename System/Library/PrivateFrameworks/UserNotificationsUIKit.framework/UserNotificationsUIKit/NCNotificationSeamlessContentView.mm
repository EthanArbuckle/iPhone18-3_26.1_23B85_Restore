@interface NCNotificationSeamlessContentView
+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits;
- (BOOL)notificationLabel:(id)label requestsInteractionWithURL:(id)l;
- (CGRect)_textFrameForBounds:(CGRect)bounds ignoreBadgedIconView:(BOOL)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits;
- (MTVisualStylingProvider)importantTextVisualStylingProvider;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationSeamlessContentView)initWithFrame:(CGRect)frame;
- (NCNotificationSeamlessContentViewDelegate)delegate;
- (UIImageConfiguration)importantTextImageConfiguration;
- (id)_dateLabelFont;
- (id)_dateLabelPreferredFont;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_adjustInlineActionButtonBackgroundColor;
- (void)_configureCrossfadingContentViewIfNecessary;
- (void)_configureDateLabel;
- (void)_configureDateLabelIfNecessary;
- (void)_configureImportantTextLabelIfNecessary;
- (void)_configureSecondaryLabelBottomAlignedIfNecessary;
- (void)_configureSecondaryLabelTopAlignedGroupCollapsedIfNecessary;
- (void)_configureSecondaryLabelTopAlignedIfNecessary;
- (void)_layoutSubviewInBounds:(CGRect)bounds measuringOnly:(CGSize *)only traits:(id)traits;
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
- (void)_updateVisualStylingOfImageView:(id)view ifSymbolImageWithStyle:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
- (void)dateLabelDidChange:(id)change;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlignContentToBottom:(BOOL)bottom;
- (void)setAllowContentToCrossFade:(BOOL)fade;
- (void)setBadgedIconDescription:(id)description;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateAlpha:(double)alpha;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setFooterSummaryAttributionText:(id)text;
- (void)setFooterText:(id)text;
- (void)setHideDate:(BOOL)date;
- (void)setImportantAttributedText:(id)text;
- (void)setImportantText:(id)text;
- (void)setImportantTextVisualStylingProvider:(id)provider;
- (void)setInlineAction:(id)action;
- (void)setIsGroupCollapsed:(BOOL)collapsed;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimarySubtitleTextMaximumNumberOfLines:(unint64_t)lines;
- (void)setPrimaryText:(id)text;
- (void)setPrimaryTextMaximumNumberOfLines:(unint64_t)lines;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setSecondaryText:(id)text;
- (void)setSecondaryTextCompact:(id)compact;
- (void)setSecondaryTextGroupCollapsed:(id)collapsed;
- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)lines;
- (void)setShadowsEnabled:(BOOL)enabled;
- (void)setTextMenusEnabled:(BOOL)enabled;
- (void)setThumbnail:(id)thumbnail;
- (void)setThumbnailAlignedWithSecondaryText:(BOOL)text;
- (void)setTimeZone:(id)zone;
- (void)setURLInteractionEnabled:(BOOL)enabled;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)traitCollectionDidChange:(id)change;
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
  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  traitCollection = [(NCNotificationSeamlessContentView *)self traitCollection];
  v5 = [systemBlackColor colorWithAlphaComponent:{dbl_21E946240[objc_msgSend(traitCollection, "userInterfaceStyle") == 2]}];
  [(UIButton *)inlineActionButton setBackgroundColor:v5];
}

- (void)didMoveToWindow
{
  window = [(NCNotificationSeamlessContentView *)self window];

  if (window)
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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v13[0] = whiteColor;
  tintColor = [MEMORY[0x277D75348] tintColor];
  v13[1] = tintColor;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v6 configurationWithPaletteColors:v9];
  v11 = [v5 configurationByApplyingConfiguration:v10];

  return v11;
}

- (id)_dateLabelFont
{
  font = [(BSUIDateLabel *)self->_dateLabel font];
  v4 = font;
  if (font)
  {
    _dateLabelPreferredFont = font;
  }

  else
  {
    _dateLabelPreferredFont = [(NCNotificationSeamlessContentView *)self _dateLabelPreferredFont];
  }

  v6 = _dateLabelPreferredFont;

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
  delegate = [(NCNotificationSeamlessContentView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentTraits = [delegate currentTraits];
  }

  else
  {
    currentTraits = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v4 = currentTraits;

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
    secondaryTextCompact = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
    nc_contentType = [secondaryTextCompact nc_contentType];

    v7 = MEMORY[0x277D74420];
    if (nc_contentType != 6)
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
  title = [(UIAction *)self->_inlineAction title];
  if ([title length])
  {
    configuration = [(UIButton *)self->_inlineActionButton configuration];
    if (!configuration)
    {
      configuration = [MEMORY[0x277D75230] plainButtonConfiguration];
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
    v11 = [v9 initWithString:title attributes:v10];

    [configuration setAttributedTitle:v11];
    [configuration setContentInsets:{8.0, 22.0, 8.0, 22.0}];
    [configuration setButtonSize:0];
    [(UIButton *)self->_inlineActionButton setConfiguration:configuration];
    titleLabel = [(UIButton *)self->_inlineActionButton titleLabel];
    [titleLabel setLineBreakMode:4];

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
    _dateLabelPreferredFont = [(NCNotificationSeamlessContentView *)self _dateLabelPreferredFont];
    [(BSUIDateLabel *)dateLabel setFont:_dateLabelPreferredFont];

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
  mEMORY[0x277CF0D50] = [MEMORY[0x277CF0D50] sharedInstance];
  v4 = [mEMORY[0x277CF0D50] startLabelWithStartDate:self->_date endDate:0 timeZone:self->_timeZone allDay:self->_dateAllDay forStyle:self->_dateFormatStyle];
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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

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
    currentTraits = [(NCNotificationSeamlessContentView *)self currentTraits];
    [(NCNotificationSeamlessContentView *)self _layoutSubviewInBounds:0 measuringOnly:currentTraits traits:v4, v6, v8, v10];

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
    importantTextVisualStylingProvider = [(NCNotificationSeamlessContentView *)self importantTextVisualStylingProvider];
    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:v5 style:1 visualStylingProvider:importantTextVisualStylingProvider outgoingProvider:0];

    v7 = self->_importantTextLabel;

    [(UILabel *)v7 setAlpha:0.0];
  }
}

- (NCNotificationSeamlessContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NCNotificationSeamlessContentView;
  v3 = [(NCNotificationSeamlessContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setURLInteractionEnabled:(BOOL)enabled
{
  if (self->_URLInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_URLInteractionEnabled = enabled;
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned setURLInteractionEnabled:?];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed setURLInteractionEnabled:enabledCopy];
    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned setURLInteractionEnabled:enabledCopy];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setTextMenusEnabled:(BOOL)enabled
{
  if (self->_textMenusEnabled != enabled)
  {
    self->_textMenusEnabled = enabled;
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

- (void)setThumbnailAlignedWithSecondaryText:(BOOL)text
{
  if (self->_thumbnailAlignedWithSecondaryText != text)
  {
    self->_thumbnailAlignedWithSecondaryText = text;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCNotificationSeamlessContentView *)self primaryText];
  v5 = BSEqualStrings();

  v6 = textCopy;
  if ((v5 & 1) == 0)
  {
    primaryTextLabel = self->_primaryTextLabel;
    if (textCopy)
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
        v6 = textCopy;
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

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  v6 = textCopy;
  if ((v5 & 1) == 0)
  {
    primarySubtitleTextLabel = self->_primarySubtitleTextLabel;
    if (textCopy)
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
        v6 = textCopy;
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

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = [(NCNotificationSeamlessContentView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (textCopy)
    {
      [(NCNotificationSeamlessContentView *)self _configureSecondaryLabelTopAlignedIfNecessary];
      [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAligned setAttributedText:textCopy];
      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAligned];
      secondaryTextElementTopAligned = self->_secondaryTextElementTopAligned;
      v7 = NCStringFromAutomationAccessibilityIdentifierAndContentType(@"NotificationBody.TopAligned", [textCopy nc_contentType]);
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

- (void)setSecondaryTextCompact:(id)compact
{
  compactCopy = compact;
  secondaryTextCompact = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (compactCopy)
    {
      [(NCNotificationSeamlessContentView *)self _configureSecondaryLabelBottomAlignedIfNecessary];
      [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned setAttributedText:compactCopy];
      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementBottomAligned];
      secondaryTextElementBottomAligned = self->_secondaryTextElementBottomAligned;
      v7 = NCStringFromAutomationAccessibilityIdentifierAndContentType(@"NotificationBody.BottomAligned", [compactCopy nc_contentType]);
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

- (void)setSecondaryTextGroupCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  secondaryTextGroupCollapsed = [(NCNotificationSeamlessContentView *)self secondaryTextGroupCollapsed];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (collapsedCopy)
    {
      [(NCNotificationSeamlessContentView *)self _configureSecondaryLabelTopAlignedGroupCollapsedIfNecessary];
      [(NCNotificationBodyLabel *)self->_secondaryTextElementTopAlignedGroupCollapsed setAttributedText:collapsedCopy];
      [(NCNotificationSeamlessContentView *)self _updateTextAttributesForSecondaryTextElementTopAlignedGroupCollapsed];
      secondaryTextElementTopAlignedGroupCollapsed = self->_secondaryTextElementTopAlignedGroupCollapsed;
      v7 = NCStringFromAutomationAccessibilityIdentifierAndContentType(@"NotificationBody.TopAligned", [collapsedCopy nc_contentType]);
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

- (void)setImportantText:(id)text
{
  textCopy = text;
  importantText = [(NCNotificationSeamlessContentView *)self importantText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (textCopy)
    {
      [(NCNotificationSeamlessContentView *)self _configureImportantTextLabelIfNecessary];
      [(UILabel *)self->_importantTextLabel setText:textCopy];
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

- (void)setImportantAttributedText:(id)text
{
  textCopy = text;
  importantAttributedText = [(NCNotificationSeamlessContentView *)self importantAttributedText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (textCopy)
    {
      [(NCNotificationSeamlessContentView *)self _configureImportantTextLabelIfNecessary];
      [(UILabel *)self->_importantTextLabel setAttributedText:textCopy];
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

- (void)setImportantTextVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  if ((BSEqualObjects() & 1) == 0)
  {
    importantTextVisualStylingProvider = [(NCNotificationSeamlessContentView *)self importantTextVisualStylingProvider];
    if (([importantTextVisualStylingProvider isAutomaticallyUpdatingView:self->_importantTextLabel] & 1) == 0)
    {

      importantTextVisualStylingProvider = 0;
    }

    objc_storeStrong(&self->_importantTextVisualStylingProvider, provider);
    importantTextLabel = self->_importantTextLabel;
    importantTextVisualStylingProvider2 = [(NCNotificationSeamlessContentView *)self importantTextVisualStylingProvider];
    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:importantTextLabel style:1 visualStylingProvider:importantTextVisualStylingProvider2 outgoingProvider:importantTextVisualStylingProvider];
  }
}

- (void)setInlineAction:(id)action
{
  actionCopy = action;
  inlineAction = [(NCNotificationSeamlessContentView *)self inlineAction];
  v5 = BSEqualObjects();

  v6 = actionCopy;
  if ((v5 & 1) == 0)
  {
    v7 = [actionCopy copy];
    inlineAction = self->_inlineAction;
    self->_inlineAction = v7;

    title = [(UIAction *)self->_inlineAction title];

    inlineActionButton = self->_inlineActionButton;
    if (title)
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
    v6 = actionCopy;
  }
}

- (void)setFooterText:(id)text
{
  textCopy = text;
  footerText = [(NCNotificationSeamlessContentView *)self footerText];
  v5 = BSEqualObjects();

  v6 = textCopy;
  if ((v5 & 1) == 0)
  {
    footerTextLabel = self->_footerTextLabel;
    if (textCopy)
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
        v6 = textCopy;
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

- (void)setFooterSummaryAttributionText:(id)text
{
  textCopy = text;
  footerSummaryAttributionText = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
  v5 = BSEqualObjects();

  v6 = textCopy;
  if ((v5 & 1) == 0)
  {
    footerSummaryAttributionTextLabel = self->_footerSummaryAttributionTextLabel;
    if (textCopy)
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
        v6 = textCopy;
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

- (void)setDate:(id)date
{
  dateCopy = date;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [dateCopy copy];
    date = self->_date;
    self->_date = v4;

    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  if (self->_dateAllDay != day)
  {
    self->_dateAllDay = day;
    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if (self->_dateFormatStyle != style)
  {
    self->_dateFormatStyle = style;
    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)date
{
  if (self->_hideDate != date)
  {
    self->_hideDate = date;
    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];

    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setDateAlpha:(double)alpha
{
  if (self->_dateAlpha != alpha)
  {
    self->_dateAlpha = alpha;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
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

    [(NCNotificationSeamlessContentView *)self _tearDownDateLabel];
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setBadgedIconDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_badgedIconDescription, description);
    badgedIconView = self->_badgedIconView;
    if (self->_badgedIconDescription)
    {
      if (badgedIconView)
      {
        [(NCBadgedIconView *)badgedIconView setBadgedIconDescription:?];
      }

      else
      {
        v7 = [[NCBadgedIconView alloc] initWithBadgedIconDescription:descriptionCopy pointSize:38.0];
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

- (void)setShadowsEnabled:(BOOL)enabled
{
  if (self->_shadowsEnabled != enabled)
  {
    self->_shadowsEnabled = enabled;
    [(NCBadgedIconView *)self->_badgedIconView setShadowEnabled:?];
  }
}

- (void)setThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  thumbnail = [(NCNotificationSeamlessContentView *)self thumbnail];
  v5 = BSEqualObjects();

  v6 = thumbnailCopy;
  if ((v5 & 1) == 0)
  {
    if (thumbnailCopy && !self->_thumbnailImageView)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      thumbnailImageView = self->_thumbnailImageView;
      self->_thumbnailImageView = v7;

      [(UIImageView *)self->_thumbnailImageView setContentMode:1];
      [(UIImageView *)self->_thumbnailImageView _setContinuousCornerRadius:6.0];
      [(UIImageView *)self->_thumbnailImageView setClipsToBounds:1];
      [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
      [(UIView *)self->_crossfadingContentView addSubview:self->_thumbnailImageView];
      v6 = thumbnailCopy;
    }

    [(UIImageView *)self->_thumbnailImageView setImage:v6];
    v9 = [(NCNotificationSeamlessContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:0 visualStylingProvider:v9 outgoingProvider:v9];
    if (!thumbnailCopy)
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

- (void)setPrimaryTextMaximumNumberOfLines:(unint64_t)lines
{
  if (self->_primaryTextMaximumNumberOfLines != lines)
  {
    self->_primaryTextMaximumNumberOfLines = lines;
    [(NCNotificationSeamlessContentView *)self _setNeedsTextAttributesUpdate];
    self->_hasUpdatedContent = 1;
  }
}

- (void)setPrimarySubtitleTextMaximumNumberOfLines:(unint64_t)lines
{
  if (self->_primarySubtitleTextMaximumNumberOfLines != lines)
  {
    self->_primarySubtitleTextMaximumNumberOfLines = lines;
    [(NCNotificationSeamlessContentView *)self _setNeedsTextAttributesUpdate];
    self->_hasUpdatedContent = 1;
  }
}

- (void)setSecondaryTextMaximumNumberOfLines:(unint64_t)lines
{
  if (self->_secondaryTextMaximumNumberOfLines != lines)
  {
    self->_secondaryTextMaximumNumberOfLines = lines;
    [(NCNotificationSeamlessContentView *)self _setNeedsTextAttributesUpdate];
    self->_hasUpdatedContent = 1;
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  if (self->_screenCaptureProhibited != prohibited)
  {
    self->_screenCaptureProhibited = prohibited;
    [(NCNotificationSeamlessContentView *)self nc_setScreenCaptureProhibited:?];
  }
}

+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (font)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (void)setAlignContentToBottom:(BOOL)bottom
{
  if (self->_alignContentToBottom != bottom)
  {
    self->_alignContentToBottom = bottom;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setIsGroupCollapsed:(BOOL)collapsed
{
  if (self->_isGroupCollapsed != collapsed)
  {
    self->_isGroupCollapsed = collapsed;
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (void)setAllowContentToCrossFade:(BOOL)fade
{
  if (self->_allowContentToCrossFade != fade)
  {
    self->_allowContentToCrossFade = fade;
    secondaryText = [(NCNotificationSeamlessContentView *)self secondaryText];
    [(NCNotificationSeamlessContentView *)self setSecondaryText:0];
    secondaryTextCompact = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextCompact:0];
    secondaryTextGroupCollapsed = [(NCNotificationSeamlessContentView *)self secondaryTextGroupCollapsed];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextGroupCollapsed:0];
    primaryText = [(NCNotificationSeamlessContentView *)self primaryText];
    [(NCNotificationSeamlessContentView *)self setPrimaryText:0];
    primarySubtitleText = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
    [(NCNotificationSeamlessContentView *)self setPrimarySubtitleText:0];
    inlineAction = [(NCNotificationSeamlessContentView *)self inlineAction];
    [(NCNotificationSeamlessContentView *)self setInlineAction:0];
    footerText = [(NCNotificationSeamlessContentView *)self footerText];
    [(NCNotificationSeamlessContentView *)self setFooterText:0];
    footerSummaryAttributionText = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
    [(NCNotificationSeamlessContentView *)self setFooterSummaryAttributionText:0];
    thumbnail = [(NCNotificationSeamlessContentView *)self thumbnail];
    [(NCNotificationSeamlessContentView *)self setThumbnail:0];
    [(UIView *)self->_crossfadingContentView removeFromSuperview];
    crossfadingContentView = self->_crossfadingContentView;
    self->_crossfadingContentView = 0;

    [(NCNotificationSeamlessContentView *)self _configureCrossfadingContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self setSecondaryText:secondaryText];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextCompact:secondaryTextCompact];
    [(NCNotificationSeamlessContentView *)self setSecondaryTextGroupCollapsed:secondaryTextGroupCollapsed];
    [(NCNotificationSeamlessContentView *)self setPrimaryText:primaryText];
    [(NCNotificationSeamlessContentView *)self setPrimarySubtitleText:primarySubtitleText];
    [(NCNotificationSeamlessContentView *)self setInlineAction:inlineAction];
    [(NCNotificationSeamlessContentView *)self setFooterText:footerText];
    [(NCNotificationSeamlessContentView *)self setFooterSummaryAttributionText:footerSummaryAttributionText];
    [(NCNotificationSeamlessContentView *)self setThumbnail:thumbnail];
    [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v15 = *MEMORY[0x277CBF3A8];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  currentTraits = [(NCNotificationSeamlessContentView *)self currentTraits];
  [(NCNotificationSeamlessContentView *)self _layoutSubviewInBounds:&v15 measuringOnly:currentTraits traits:v5, v7, v9, v11];

  v14 = *(&v15 + 1);
  v13 = *&v15;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = NCNotificationSeamlessContentView;
  [(NCNotificationSeamlessContentView *)&v7 traitCollectionDidChange:change];
  badgedIconView = self->_badgedIconView;
  window = [(NCNotificationSeamlessContentView *)self window];
  traitCollection = [window traitCollection];
  -[NCBadgedIconView setOverrideUserInterfaceStyle:](badgedIconView, "setOverrideUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  [(NCNotificationSeamlessContentView *)self _adjustInlineActionButtonBackgroundColor];
}

- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits
{
  v8 = *MEMORY[0x277CBF3A8];
  traitsCopy = traits;
  BSRectWithSize();
  [(NCNotificationSeamlessContentView *)self _layoutSubviewInBounds:&v8 measuringOnly:traitsCopy traits:?];

  v7 = *(&v8 + 1);
  v6 = *&v8;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)visualStylingProviderForCategory:(int64_t)category
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
    v4 = [(NCNotificationSeamlessContentView *)&v6 visualStylingProviderForCategory:category];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider != providerCopy)
  {
    v11 = providerCopy;
    v8 = providerCopy;
    v9 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v8;
    v10 = strokeVisualStylingProvider;

    [(NCNotificationListBaseContentView *)self->_secondaryTextElementTopAligned setVisualStylingProvider:v8 forCategory:category];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementBottomAligned setVisualStylingProvider:v8 forCategory:category];
    [(NCNotificationListBaseContentView *)self->_secondaryTextElementTopAlignedGroupCollapsed setVisualStylingProvider:v8 forCategory:category];
    [(NCNotificationSeamlessContentView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:category outgoingProvider:v10];

    providerCopy = v11;
  }
}

- (void)dateLabelDidChange:(id)change
{
  [(BSUIDateLabel *)self->_dateLabel sizeToFit];
  [(NCNotificationSeamlessContentView *)self setNeedsLayout];
  primaryText = [(NCNotificationSeamlessContentView *)self primaryText];
  v5 = [primaryText length];

  if (v5 && [(UILabel *)self->_primaryTextLabel numberOfLines]!= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained didInvalidateSizeFromNotificationSeamlessContentView:self];
    }
  }
}

- (BOOL)notificationLabel:(id)label requestsInteractionWithURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationSeamlessContentView:self requestsInteractionWithURL:lCopy];
  }

  return 0;
}

- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style];
  }
}

- (void)_updateVisualStylingOfImageView:(id)view ifSymbolImageWithStyle:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    outgoingProviderCopy = outgoingProvider;
    providerCopy = provider;
    viewCopy = view;
    image = [viewCopy image];
    if ([image isSymbolImage])
    {
      v13 = providerCopy;
    }

    else
    {
      v13 = 0;
    }

    [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:viewCopy style:style visualStylingProvider:v13 outgoingProvider:outgoingProviderCopy];
  }
}

- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  badgedIconView = self->_badgedIconView;
  providerCopy = provider;
  changeCopy = change;
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:badgedIconView style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_primaryTextLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_primarySubtitleTextLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_inlineActionButton style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_footerTextLabel style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfView:self->_footerSummaryAttributionTextLabel style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(NCNotificationSeamlessContentView *)self _updateVisualStylingOfImageView:self->_thumbnailImageView ifSymbolImageWithStyle:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
}

- (CGRect)_textFrameForBounds:(CGRect)bounds ignoreBadgedIconView:(BOOL)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(NCNotificationSeamlessContentView *)self isHorizontalMarginPaddingDisabled])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 14.0;
  }

  if (!view && self->_badgedIconView)
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

  traitCollection = [(NCNotificationSeamlessContentView *)self traitCollection];
  [traitCollection displayScale];
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
  traitCollection2 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [traitCollection2 displayScale];
  UIFloorToScale();
  v20 = v17 - v19;
  traitCollection3 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [traitCollection3 displayScale];
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

- (void)_layoutSubviewInBounds:(CGRect)bounds measuringOnly:(CGSize *)only traits:(id)traits
{
  v384 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  [(NCNotificationSeamlessContentView *)self _updateTextAttributesIfNecessary];
  onlyCopy = only;
  v8 = only == 0;
  _shouldReverseLayoutDirection = [(NCNotificationSeamlessContentView *)self _shouldReverseLayoutDirection];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
  traitCollection = [(NCNotificationSeamlessContentView *)self traitCollection];
  [traitCollection displayScale];
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
  alignContentToBottom = [traitsCopy alignContentToBottom];
  isGroupCollapsed = [traitsCopy isGroupCollapsed];
  v253 = alignContentToBottom ^ 1;
  if (alignContentToBottom & 1 | ((isGroupCollapsed & 1) == 0))
  {
    v252 = 0;
    v242 = alignContentToBottom ^ 1;
    v243 = alignContentToBottom;
  }

  else
  {
    footerSummaryAttributionText = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
    v252 = [footerSummaryAttributionText length] != 0;

    v242 = !v252;
    v243 = v252;
  }

  [(NCNotificationSeamlessContentView *)self _textFrameForBounds:0 ignoreBadgedIconView:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v244 = v14;
  v245 = v15;
  v246 = v17;
  v247 = v16;
  if (alignContentToBottom)
  {
    secondaryTextCompact = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
    v258 = [secondaryTextCompact nc_contentType] == 6;
  }

  else
  {
    v258 = 0;
  }

  if (onlyCopy)
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

  [(BSUIDateLabel *)dateLabel sizeThatFits:bounds.size.width, bounds.size.height];
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
  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMinX(*&v26);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v26);
    MinX = MaxX - CGRectGetWidth(v372[1]);
  }

  v372[1].origin.x = MinX;
  if (alignContentToBottom && ([(NCNotificationSeamlessContentView *)self thumbnail], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    Height = CGRectGetHeight(bounds);
    traitCollection2 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection2 displayScale];
    UIFloorToScale();
    v372[1].origin.y = Height - v36 - CGRectGetHeight(v372[1]);

    v5 = 0;
  }

  else
  {
    traitCollection3 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection3 displayScale];
    UIFloorToScale();
    v372[1].origin.y = v33 + 2.0;

    if (!alignContentToBottom)
    {
      goto LABEL_20;
    }
  }

LABEL_20:
  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76840], self->_preferredContentSizeCategory) == NSOrderedDescending)
  {
    _dateLabelFont = [(NCNotificationSeamlessContentView *)self _dateLabelFont];
    traitCollection4 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection4 displayScale];
    UIFloorToScale();
    [_dateLabelFont _scaledValueForValue:v39 + 2.0];
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
  thumbnail = [(NCNotificationSeamlessContentView *)self thumbnail];

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
  v363 = _shouldReverseLayoutDirection;
  v360 = &v365;
  v358[4] = self;
  boundsCopy = bounds;
  v361 = &v371;
  v364 = alignContentToBottom;
  v264 = v11;
  v359 = v264;
  v248 = _Block_copy(v358);
  if (thumbnail)
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
  v351 = _shouldReverseLayoutDirection;
  v350[4] = &v352;
  v261 = _Block_copy(v350);
  v348[0] = MEMORY[0x277D85DD0];
  v348[1] = 3221225472;
  v348[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_5;
  v348[3] = &__block_descriptor_33_e104__CGRect__CGPoint_dd__CGSize_dd__72__0_CGRect__CGPoint_dd__CGSize_dd__8_CGRect__CGPoint_dd__CGSize_dd__40l;
  v349 = _shouldReverseLayoutDirection;
  v51 = _Block_copy(v348);
  primaryText = [(NCNotificationSeamlessContentView *)self primaryText];
  v53 = [primaryText length] == 0;

  primaryText2 = [(NCNotificationSeamlessContentView *)self primaryText];
  if ([primaryText2 length])
  {
    v55 = 0;
  }

  else
  {
    primarySubtitleText = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
    v55 = ([primarySubtitleText length] | thumbnail) == 0;
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
  boundsCopy2 = bounds;
  v339[4] = self;
  v341 = v346;
  v241 = v51;
  v340 = v241;
  v342 = &v371;
  v345 = alignContentToBottom;
  v343 = &v365;
  v59 = _Block_copy(v339);
  importantText = [(NCNotificationSeamlessContentView *)self importantText];
  v61 = [importantText length] == 0;

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
    importantText2 = [(NCNotificationSeamlessContentView *)self importantText];
    v71 = [importantText2 length] != 0;

    (*(v59 + 2))(v59, (v71 || v46) & (thumbnail != 0), 0, 0);
    v72 = v261[2](v261, self->_primaryTextLabel, v253);
    v256 = v73;
    x = v72;
    rect = v74;
    v76 = v75;
    if (alignContentToBottom)
    {
      v77 = CGRectGetHeight(bounds);
      traitCollection5 = [(NCNotificationSeamlessContentView *)self traitCollection];
      [traitCollection5 displayScale];
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

    if (thumbnail && self->_thumbnailAlignedWithSecondaryText)
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

  if (!(alignContentToBottom & 1 | !IsAccessibilityCategory) && self->_date)
  {
    (*(v59 + 2))(v59, thumbnail != 0, 0, 0);
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

  if (thumbnail && CGRectIsEmpty(v366[1]))
  {
    v248[2]();
  }

  primarySubtitleText2 = [(NCNotificationSeamlessContentView *)self primarySubtitleText];
  v93 = [primarySubtitleText2 length] == 0;

  if (!v93)
  {
    (*(v59 + 2))(v59, thumbnail != 0, IsAccessibilityCategory, 0);
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

  secondaryText = [(NCNotificationSeamlessContentView *)self secondaryText];
  v103 = [secondaryText length] == 0;

  traitCollection10 = alignContentToBottom | isGroupCollapsed;
  if (((v103 | traitCollection10) & 1) == 0)
  {
    (*(v59 + 2))(v59, thumbnail != 0, IsAccessibilityCategory, 0);
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

  secondaryTextGroupCollapsed = [(NCNotificationSeamlessContentView *)self secondaryTextGroupCollapsed];
  v114 = [secondaryTextGroupCollapsed length] != 0;

  traitCollection11 = v253 & isGroupCollapsed;
  if ((v114 & traitCollection11) != 0)
  {
    (*(v59 + 2))(v59, thumbnail != 0, IsAccessibilityCategory, 0);
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

  secondaryTextCompact2 = [(NCNotificationSeamlessContentView *)self secondaryTextCompact];
  v125 = [secondaryTextCompact2 length] == 0;

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
      v127 = v126(v59, thumbnail != 0, 0, 0);
      v133 = v132;
      v131 = v134;
      v390.size.width = v256;
      v390.origin.x = x;
      v390.origin.y = r1;
      v390.size.height = rect;
      Width = CGRectGetWidth(v390);
      thumbnail2 = [(NCNotificationSeamlessContentView *)self thumbnail];
      v137 = 0.0;
      if (!thumbnail2)
      {
        v137 = CGRectGetWidth(v372[1]) + 10.0;
      }

      v129 = v133 - (Width + 5.0) - v137;
    }

    [(NCNotificationBodyLabel *)self->_secondaryTextElementBottomAligned sizeThatFits:v129, v131];
    v139 = v138;
    v141 = v140;
    v142 = CGRectGetHeight(bounds);
    traitCollection6 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection6 displayScale];
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
      primaryText3 = [(NCNotificationSeamlessContentView *)self primaryText];
      v153 = [primaryText3 length] == 0;

      if (!v153)
      {
        v155 = v256;
        v154 = x;
        v156 = r1;
        v157 = rect;
        if (_shouldReverseLayoutDirection)
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

  title = [(UIAction *)self->_inlineAction title];
  v161 = [title length] == 0;

  if (!v161)
  {
    (*(v59 + 2))(v59, thumbnail != 0, IsAccessibilityCategory, 0);
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

  footerSummaryAttributionText2 = [(NCNotificationSeamlessContentView *)self footerSummaryAttributionText];
  v171 = [footerSummaryAttributionText2 length] != 0;

  if (v171 && v252)
  {
    (*(v59 + 2))(v59, thumbnail != 0, IsAccessibilityCategory, 0);
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

  footerText = [(NCNotificationSeamlessContentView *)self footerText];
  v181 = [footerText length] == 0;

  if (!v181 && !v243)
  {
    (*(v59 + 2))(v59, thumbnail != 0, IsAccessibilityCategory, 0);
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

  if (_shouldReverseLayoutDirection)
  {
    CGRectGetWidth(bounds);
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

  if (alignContentToBottom)
  {
    [(NCNotificationSeamlessContentView *)self bounds];
    v202 = CGRectGetHeight(v393);
    traitCollection7 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection7 displayScale];
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

    importantText3 = [(NCNotificationSeamlessContentView *)self importantText];
    v208 = [importantText3 length] == 0;

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
  v279 = alignContentToBottom;
  v280 = ((alignContentToBottom | isGroupCollapsed) & 1) == 0;
  v281 = v253 & isGroupCollapsed;
  v213 = _Block_copy(v277);
  [v266 addObject:v213];

  v271[0] = MEMORY[0x277D85DD0];
  v271[1] = 3221225472;
  v271[2] = __81__NCNotificationSeamlessContentView__layoutSubviewInBounds_measuringOnly_traits___block_invoke_19;
  v271[3] = &unk_27836FF58;
  v271[4] = self;
  v272 = v258;
  v273 = alignContentToBottom;
  v274 = alignContentToBottom;
  v275 = v252;
  v276 = v242;
  v214 = _Block_copy(v271);
  [v266 addObject:v214];

  traitCollection8 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [traitCollection8 displayScale];
  UIFloorToScale();
  v217 = v216;
  v218 = CGRectGetHeight(v353[1]);
  traitCollection9 = [(NCNotificationSeamlessContentView *)self traitCollection];
  [traitCollection9 displayScale];
  UIFloorToScale();
  v221 = v220;

  if (self->_date && !UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory))
  {
    traitCollection8 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection8 displayScale];
    UIFloorToScale();
    v225 = v224;
    traitCollection9 = [(NCNotificationSeamlessContentView *)self _dateLabelFont];
    [traitCollection9 lineHeight];
    traitCollection10 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection10 displayScale];
    UICeilToScale();
    v227 = v226;
    traitCollection11 = [(NCNotificationSeamlessContentView *)self traitCollection];
    [traitCollection11 displayScale];
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

  thumbnail3 = [(NCNotificationSeamlessContentView *)self thumbnail];
  if (thumbnail3)
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
  if (onlyCopy)
  {
    CGRectGetWidth(bounds);
    UISizeRoundToScale();
    onlyCopy->width = v232;
    onlyCopy->height = v233;
  }

  else
  {
    if ((alignContentToBottom & 1) == 0 && fmax(v231, 66.0) > v217 + v218 + v221)
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
  mEMORY[0x277CF0D50] = [MEMORY[0x277CF0D50] sharedInstance];
  [mEMORY[0x277CF0D50] recycleLabel:self->_dateLabel];
}

@end
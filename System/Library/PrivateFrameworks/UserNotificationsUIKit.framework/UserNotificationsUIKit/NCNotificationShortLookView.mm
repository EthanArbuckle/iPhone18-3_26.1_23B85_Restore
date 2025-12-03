@interface NCNotificationShortLookView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)allowContentToCrossFade;
- (BOOL)hideDate;
- (BOOL)isDateAllDay;
- (CGAffineTransform)contentTransform;
- (CGSize)_sizeThatFitsContentWithSize:(CGSize)size withAuxiliaryOptionsViewVisible:(BOOL)visible withProjectedConfigurationOrNil:(id)nil;
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (MTVisualStylingProvider)importantTextVisualStylingProvider;
- (MTVisualStylingProvider)strokeVisualStylingProvider;
- (NCBadgedIconDescription)badgedIconDescription;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationShortLookView)initWithFrame:(CGRect)frame;
- (NCNotificationShortLookViewDelegate)delegate;
- (NSAttributedString)footerSummaryAttributionText;
- (NSAttributedString)footerText;
- (NSAttributedString)importantAttributedText;
- (NSAttributedString)secondaryTextCompact;
- (NSAttributedString)secondaryTextGroupCollapsed;
- (NSDate)date;
- (NSString)importantText;
- (NSTimeZone)timeZone;
- (UIAction)inlineAction;
- (UIImageConfiguration)importantTextImageConfiguration;
- (double)dateAlpha;
- (double)glassSmoothness;
- (id)_fontProvider;
- (id)_newNotificationContentView;
- (id)_notificationContentView;
- (int64_t)backgroundGlassId;
- (int64_t)dateFormatStyle;
- (unint64_t)backgroundGlassState;
- (void)_configureAuxiliaryOptionsViewIfNecessary;
- (void)_configureNotificationContentViewIfNecessary;
- (void)_configurePlatterViewIfNeccesary;
- (void)_layoutAuxiliaryOptionsView;
- (void)_layoutNotificationContentView;
- (void)_setFontProvider:(id)provider;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform;
- (void)didInvalidateSizeFromNotificationSeamlessContentView:(id)view;
- (void)layoutSubviews;
- (void)removeAuxiliaryOptionsView;
- (void)removeLightEffectsIfNeeded;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setAlignContentToBottom:(BOOL)bottom;
- (void)setAllowContentToCrossFade:(BOOL)fade;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setAuxiliaryOptionActions:(id)actions;
- (void)setAuxiliaryOptionsSummaryText:(id)text;
- (void)setAuxiliaryOptionsVisible:(BOOL)visible;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setBadgedIconDescription:(id)description;
- (void)setCompositeAlpha:(double)alpha;
- (void)setContentAlpha:(double)alpha;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setCustomPlatterBackgroundView:(id)view;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateAlpha:(double)alpha;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setDisableDimming:(BOOL)dimming;
- (void)setFooterSummaryAttributionText:(id)text;
- (void)setFooterText:(id)text;
- (void)setGlassMode:(unint64_t)mode;
- (void)setHideDate:(BOOL)date;
- (void)setImportantAttributedText:(id)text;
- (void)setImportantText:(id)text;
- (void)setImportantTextVisualStylingProvider:(id)provider;
- (void)setInlineAction:(id)action;
- (void)setIsGroupCollapsed:(BOOL)collapsed;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setMaterialRecipe:(int64_t)recipe;
- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)lines;
- (void)setNotificationContentViewHidden:(BOOL)hidden;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setRootScrollVelocity:(double)velocity;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setSecondaryText:(id)text;
- (void)setSecondaryTextCompact:(id)compact;
- (void)setSecondaryTextGroupCollapsed:(id)collapsed;
- (void)setSupportsGlass:(BOOL)glass;
- (void)setThumbnail:(id)thumbnail;
- (void)setTimeZone:(id)zone;
- (void)setUnmanagedBackdropContrast:(BOOL)contrast;
@end

@implementation NCNotificationShortLookView

- (void)_configureNotificationContentViewIfNecessary
{
  if (!self->_notificationContentView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__NCNotificationShortLookView__configureNotificationContentViewIfNecessary__block_invoke;
    v4[3] = &unk_27836F6A8;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

- (void)_layoutNotificationContentView
{
  if (self->_notificationContentView)
  {
    customContentView = [(NCNotificationShortLookView *)self customContentView];
    [customContentView bounds];
    v5 = v4;
    v7 = v6;

    [(NCNotificationContentDisplaying *)self->_notificationContentView sizeThatFits:v5, v7];
    BSRectWithSize();
    notificationContentView = self->_notificationContentView;
    _NCMainScreenScale();
    UIRectIntegralWithScale();

    [(NCNotificationContentDisplaying *)notificationContentView setFrame:?];
  }
}

- (NCNotificationListCellDynamicHeightTraits)currentTraits
{
  v3 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  [(NCNotificationListCellDynamicHeightTraits *)v3 setAlignContentToBottom:self->_alignContentToBottom];
  [(NCNotificationListCellDynamicHeightTraits *)v3 setShowAuxiliaryOptions:[(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView auxiliaryOptionsVisible]];
  [(NCNotificationListCellDynamicHeightTraits *)v3 setIsGroupCollapsed:self->_isGroupCollapsed];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationShortLookView;
  [(NCNotificationShortLookView *)&v3 layoutSubviews];
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  [(NCNotificationShortLookView *)self _layoutNotificationContentView];
  [(NCNotificationShortLookView *)self _layoutAuxiliaryOptionsView];
}

- (void)_layoutAuxiliaryOptionsView
{
  if (self->_auxiliaryOptionsView)
  {
    [(NCNotificationShortLookView *)self bounds];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView sizeThatFits:v3, v4];
    BSRectWithSize();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCNotificationContentDisplaying *)self->_notificationContentView frame];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setFrame:v6, CGRectGetMaxY(v16), v8, v10];
    auxiliaryOptionsView = self->_auxiliaryOptionsView;
    auxiliaryOptionsVisible = [(NCAuxiliaryOptionsView *)auxiliaryOptionsView auxiliaryOptionsVisible];
    v13 = 0.0;
    if (auxiliaryOptionsVisible)
    {
      isNotificationContentViewHidden = [(NCNotificationShortLookView *)self isNotificationContentViewHidden];
      v13 = 1.0;
      if (isNotificationContentViewHidden)
      {
        v13 = 0.0;
      }
    }

    [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setAlpha:v13];
  }
}

- (NCBadgedIconDescription)badgedIconDescription
{
  if (objc_opt_respondsToSelector())
  {
    badgedIconDescription = [(NCNotificationContentDisplaying *)self->_notificationContentView badgedIconDescription];
  }

  else
  {
    badgedIconDescription = 0;
  }

  return badgedIconDescription;
}

- (NSDate)date
{
  if (objc_opt_respondsToSelector())
  {
    date = [(NCNotificationContentDisplaying *)self->_notificationContentView date];
  }

  else
  {
    date = 0;
  }

  return date;
}

- (BOOL)isDateAllDay
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  notificationContentView = self->_notificationContentView;

  return [(NCNotificationContentDisplaying *)notificationContentView isDateAllDay];
}

- (NSTimeZone)timeZone
{
  if (objc_opt_respondsToSelector())
  {
    timeZone = [(NCNotificationContentDisplaying *)self->_notificationContentView timeZone];
  }

  else
  {
    timeZone = 0;
  }

  return timeZone;
}

- (int64_t)dateFormatStyle
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  notificationContentView = self->_notificationContentView;

  return [(NCNotificationContentDisplaying *)notificationContentView dateFormatStyle];
}

- (NSAttributedString)secondaryTextCompact
{
  if (objc_opt_respondsToSelector())
  {
    secondaryTextCompact = [(NCNotificationContentDisplaying *)self->_notificationContentView secondaryTextCompact];
  }

  else
  {
    secondaryTextCompact = 0;
  }

  return secondaryTextCompact;
}

- (NSAttributedString)secondaryTextGroupCollapsed
{
  if (objc_opt_respondsToSelector())
  {
    secondaryTextGroupCollapsed = [(NCNotificationContentDisplaying *)self->_notificationContentView secondaryTextGroupCollapsed];
  }

  else
  {
    secondaryTextGroupCollapsed = 0;
  }

  return secondaryTextGroupCollapsed;
}

- (UIAction)inlineAction
{
  if (objc_opt_respondsToSelector())
  {
    inlineAction = [(NCNotificationContentDisplaying *)self->_notificationContentView inlineAction];
  }

  else
  {
    inlineAction = 0;
  }

  return inlineAction;
}

- (NSAttributedString)footerText
{
  if (objc_opt_respondsToSelector())
  {
    footerText = [(NCNotificationContentDisplaying *)self->_notificationContentView footerText];
  }

  else
  {
    footerText = 0;
  }

  return footerText;
}

- (NSAttributedString)footerSummaryAttributionText
{
  if (objc_opt_respondsToSelector())
  {
    footerSummaryAttributionText = [(NCNotificationContentDisplaying *)self->_notificationContentView footerSummaryAttributionText];
  }

  else
  {
    footerSummaryAttributionText = 0;
  }

  return footerSummaryAttributionText;
}

- (UIImageConfiguration)importantTextImageConfiguration
{
  if (objc_opt_respondsToSelector())
  {
    importantTextImageConfiguration = [(NCNotificationContentDisplaying *)self->_notificationContentView importantTextImageConfiguration];
  }

  else
  {
    importantTextImageConfiguration = 0;
  }

  return importantTextImageConfiguration;
}

- (NSAttributedString)importantAttributedText
{
  if (objc_opt_respondsToSelector())
  {
    importantAttributedText = [(NCNotificationContentDisplaying *)self->_notificationContentView importantAttributedText];
  }

  else
  {
    importantAttributedText = 0;
  }

  return importantAttributedText;
}

- (MTVisualStylingProvider)importantTextVisualStylingProvider
{
  if (objc_opt_respondsToSelector())
  {
    importantTextVisualStylingProvider = [(NCNotificationContentDisplaying *)self->_notificationContentView importantTextVisualStylingProvider];
  }

  else
  {
    importantTextVisualStylingProvider = 0;
  }

  return importantTextVisualStylingProvider;
}

- (NSString)importantText
{
  if (objc_opt_respondsToSelector())
  {
    importantText = [(NCNotificationContentDisplaying *)self->_notificationContentView importantText];
  }

  else
  {
    importantText = 0;
  }

  return importantText;
}

- (void)removeAuxiliaryOptionsView
{
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView removeFromSuperview];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;
  self->_auxiliaryOptionsView = 0;

  [(NCNotificationShortLookView *)self setNeedsLayout];
}

- (NCNotificationShortLookView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NCNotificationShortLookView;
  v3 = [(NCNotificationShortLookView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 61) = 0x3FF0000000000000;
    *(v3 + 62) = 0x3FF0000000000000;
    *(v3 + 63) = 0x3FF0000000000000;
    v3[453] = 0;
    v5 = MEMORY[0x277CBF2C0];
    *(v3 + 552) = *(MEMORY[0x277CBF2C0] + 32);
    v6 = v5[1];
    *(v3 + 520) = *v5;
    *(v3 + 536) = v6;
    *(v3 + 58) = 0x7FFFFFFFFFFFFFFFLL;
    *(v3 + 59) = 0x7FEFFFFFFFFFFFFFLL;
    v3[452] = 0;
    *(v3 + 60) = 0;
    [v3 _configurePlatterViewIfNeccesary];
  }

  return v4;
}

- (void)setNotificationContentViewHidden:(BOOL)hidden
{
  if (hidden)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  _notificationContentView = [(NCNotificationShortLookView *)self _notificationContentView];
  [_notificationContentView setAlpha:v4];

  auxiliaryOptionsView = self->_auxiliaryOptionsView;

  [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setAlpha:v4];
}

- (void)setAlignContentToBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  self->_alignContentToBottom = bottom;
  if (objc_opt_respondsToSelector())
  {
    notificationContentView = self->_notificationContentView;

    [(NCNotificationContentDisplaying *)notificationContentView setAlignContentToBottom:bottomCopy];
  }
}

- (void)setDisableDimming:(BOOL)dimming
{
  if (self->_disableDimming != dimming)
  {
    self->_disableDimming = dimming;
    [(NCNotificationListStackDimmingOverlayView *)self->_stackDimmingOverlayView setHidden:?];
  }
}

- (void)setIsGroupCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  self->_isGroupCollapsed = collapsed;
  if (objc_opt_respondsToSelector())
  {
    notificationContentView = self->_notificationContentView;

    [(NCNotificationContentDisplaying *)notificationContentView setIsGroupCollapsed:collapsedCopy];
  }
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform
{
  v4 = dbl_21E946550[transform->a < 0.94];
  if (transform->a > 0.94)
  {
    v4 = 0.0;
  }

  [(NCNotificationListStackDimmingOverlayView *)self->_stackDimmingOverlayView setAlpha:v4];
  stackDimmingOverlayView = self->_stackDimmingOverlayView;
  v6 = self->_disableDimming || self->_apparentZDistanceToUser == 0;

  [(NCNotificationListStackDimmingOverlayView *)stackDimmingOverlayView setHidden:v6];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NCNotificationShortLookView *)self contentSizeForSize:fits.width, fits.height];

  [(NCNotificationShortLookView *)self sizeThatFitsContentWithSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits
{
  height = fits.height;
  width = fits.width;
  traitsCopy = traits;
  [(NCNotificationShortLookView *)self contentSizeForSize:width, height];
  -[NCNotificationShortLookView _sizeThatFitsContentWithSize:withAuxiliaryOptionsViewVisible:withProjectedConfigurationOrNil:](self, "_sizeThatFitsContentWithSize:withAuxiliaryOptionsViewVisible:withProjectedConfigurationOrNil:", [traitsCopy showAuxiliaryOptions], traitsCopy, v8, v9);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)size
{
  [(PLPlatterView *)self->_platterView contentSizeForSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  auxiliaryOptionsVisible = [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView auxiliaryOptionsVisible];

  [(NCNotificationShortLookView *)self _sizeThatFitsContentWithSize:auxiliaryOptionsVisible withAuxiliaryOptionsViewVisible:0 withProjectedConfigurationOrNil:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (MTVisualStylingProvider)strokeVisualStylingProvider
{
  if (objc_opt_respondsToSelector())
  {
    strokeVisualStylingProvider = [(NCNotificationContentDisplaying *)self->_notificationContentView strokeVisualStylingProvider];
  }

  else
  {
    strokeVisualStylingProvider = 0;
  }

  return strokeVisualStylingProvider;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCNotificationContentDisplaying *)self->_notificationContentView primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setPrimaryText:textCopy];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCNotificationContentDisplaying *)self->_notificationContentView primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setPrimarySubtitleText:textCopy];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = [(NCNotificationContentDisplaying *)self->_notificationContentView secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setSecondaryText:textCopy];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setSecondaryTextCompact:(id)compact
{
  compactCopy = compact;
  secondaryTextCompact = [(NCNotificationShortLookView *)self secondaryTextCompact];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setSecondaryTextCompact:compactCopy];
    }
  }
}

- (void)setSecondaryTextGroupCollapsed:(id)collapsed
{
  collapsedCopy = collapsed;
  secondaryTextGroupCollapsed = [(NCNotificationShortLookView *)self secondaryTextGroupCollapsed];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setSecondaryTextGroupCollapsed:collapsedCopy];
    }
  }
}

- (void)setImportantText:(id)text
{
  textCopy = text;
  importantText = [(NCNotificationShortLookView *)self importantText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setImportantText:textCopy];
    }
  }
}

- (void)setImportantAttributedText:(id)text
{
  textCopy = text;
  importantAttributedText = [(NCNotificationShortLookView *)self importantAttributedText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setImportantAttributedText:textCopy];
    }
  }
}

- (void)setImportantTextVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  importantTextVisualStylingProvider = [(NCNotificationShortLookView *)self importantTextVisualStylingProvider];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setImportantTextVisualStylingProvider:providerCopy];
    }
  }
}

- (void)setFooterText:(id)text
{
  textCopy = text;
  footerText = [(NCNotificationShortLookView *)self footerText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setFooterText:textCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setFooterSummaryAttributionText:(id)text
{
  textCopy = text;
  footerSummaryAttributionText = [(NCNotificationShortLookView *)self footerSummaryAttributionText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setFooterSummaryAttributionText:textCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setInlineAction:(id)action
{
  actionCopy = action;
  inlineAction = [(NCNotificationShortLookView *)self inlineAction];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setInlineAction:actionCopy];
    }
  }
}

- (void)setBadgedIconDescription:(id)description
{
  descriptionCopy = description;
  badgedIconDescription = [(NCNotificationShortLookView *)self badgedIconDescription];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setBadgedIconDescription:descriptionCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  thumbnail = [(NCNotificationContentDisplaying *)self->_notificationContentView thumbnail];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setThumbnail:thumbnailCopy];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(NCNotificationShortLookView *)self date];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDate:dateCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  dayCopy = day;
  if ([(NCNotificationShortLookView *)self isDateAllDay]!= day)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDateAllDay:dayCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NCNotificationShortLookView *)self timeZone];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setTimeZone:zoneCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if ([(NCNotificationShortLookView *)self dateFormatStyle]!= style)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDateFormatStyle:style];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (BOOL)hideDate
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  notificationContentView = self->_notificationContentView;

  return [(NCNotificationContentDisplaying *)notificationContentView hideDate];
}

- (void)setHideDate:(BOOL)date
{
  dateCopy = date;
  if ([(NCNotificationShortLookView *)self hideDate]!= date)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setHideDate:dateCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (BOOL)allowContentToCrossFade
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  notificationContentView = self->_notificationContentView;

  return [(NCNotificationContentDisplaying *)notificationContentView allowContentToCrossFade];
}

- (void)setAllowContentToCrossFade:(BOOL)fade
{
  fadeCopy = fade;
  if ([(NCNotificationShortLookView *)self allowContentToCrossFade]!= fade)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setAllowContentToCrossFade:fadeCopy];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (double)dateAlpha
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView dateAlpha];
  return result;
}

- (void)setDateAlpha:(double)alpha
{
  [(NCNotificationShortLookView *)self dateAlpha];
  if (v5 != alpha)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDateAlpha:alpha];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  prohibitedCopy = prohibited;
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView setScreenCaptureProhibited:prohibitedCopy];
}

- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)lines
{
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  [(NCNotificationContentDisplaying *)self->_notificationContentView setPrimaryTextMaximumNumberOfLines:lines];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView setPrimarySubtitleTextMaximumNumberOfLines:lines];
}

- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)lines
{
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView setSecondaryTextMaximumNumberOfLines:lines];
}

- (void)setSupportsGlass:(BOOL)glass
{
  if (self->_supportsGlass != glass)
  {
    self->_supportsGlass = glass;
    [(NCPlatterView *)self->_platterView setSupportsGlass:?];
  }
}

- (void)setCustomPlatterBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_customPlatterBackgroundView != viewCopy)
  {
    v6 = viewCopy;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    objc_storeStrong(&self->_customPlatterBackgroundView, view);
    [(PLPlatterView *)self->_platterView setBackgroundView:v6];
    [(NCPlatterView *)self->_platterView layoutIfNeeded];
    viewCopy = v6;
  }
}

- (void)setAuxiliaryOptionsSummaryText:(id)text
{
  textCopy = text;
  auxiliaryOptionsSummaryText = [(NCNotificationShortLookView *)self auxiliaryOptionsSummaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureAuxiliaryOptionsViewIfNecessary];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsSummaryText:textCopy];
    [(NCNotificationShortLookView *)self setNeedsDisplay];
  }
}

- (void)setAuxiliaryOptionsVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(NCNotificationShortLookView *)self auxiliaryOptionsVisible]!= visible)
  {
    [(NCNotificationShortLookView *)self _configureAuxiliaryOptionsViewIfNecessary];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__NCNotificationShortLookView_setAuxiliaryOptionsVisible___block_invoke;
    v5[3] = &unk_27836F6A8;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsVisible:visibleCopy];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionActions:(id)actions
{
  actionsCopy = actions;
  [(NCNotificationShortLookView *)self _configureAuxiliaryOptionsViewIfNecessary];
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionActions:actionsCopy];

  [(NCNotificationShortLookView *)self setNeedsLayout];
}

- (BOOL)adjustsFontForContentSizeCategory
{
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  if (([(NCNotificationContentDisplaying *)self->_notificationContentView adjustsFontForContentSizeCategory]& 1) != 0)
  {
    return 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  platterView = self->_platterView;

  return [(NCPlatterView *)platterView adjustsFontForContentSizeCategory];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  if (objc_opt_respondsToSelector())
  {
    [(NCPlatterView *)self->_platterView setAdjustsFontForContentSizeCategory:categoryCopy];
  }

  adjustsFontForContentSizeCategory = [(NCNotificationShortLookView *)self adjustsFontForContentSizeCategory];
  [(NCNotificationContentDisplaying *)self->_notificationContentView setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;

  [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  if (objc_opt_respondsToSelector())
  {
    adjustForContentSizeCategoryChange = [(NCPlatterView *)self->_platterView adjustForContentSizeCategoryChange];
  }

  else
  {
    adjustForContentSizeCategoryChange = 0;
  }

  adjustForContentSizeCategoryChange2 = [(NCNotificationContentDisplaying *)self->_notificationContentView adjustForContentSizeCategoryChange];
  v5 = [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView adjustForContentSizeCategoryChange]| adjustForContentSizeCategoryChange2 | adjustForContentSizeCategoryChange;
  if (v5)
  {
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }

  return v5 & 1;
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
  [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:baseCopy];
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialGroupNameBase:baseCopy];
}

- (void)setMaterialRecipe:(int64_t)recipe
{
  [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
  [(NCPlatterView *)self->_platterView setMaterialRecipe:recipe];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;

  [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setMaterialRecipe:recipe];
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    backgroundMaterialView = [(PLPlatterView *)self->_platterView backgroundMaterialView];

    if (!backgroundMaterialView)
    {
      [(NCPlatterView *)self->_platterView setNeedsLayout];
      [(NCPlatterView *)self->_platterView layoutIfNeeded];
    }

    backgroundMaterialView2 = [(PLPlatterView *)self->_platterView backgroundMaterialView];

    if (backgroundMaterialView2)
    {
      backgroundMaterialView3 = [(PLPlatterView *)self->_platterView backgroundMaterialView];
      [backgroundMaterialView3 setAlpha:alpha];

      backgroundMaterialView4 = [(PLPlatterView *)self->_platterView backgroundMaterialView];
      [backgroundMaterialView4 setHidden:alpha < 0.001];
    }
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    notificationContentView = self->_notificationContentView;

    [(NCNotificationContentDisplaying *)notificationContentView setAlpha:alpha];
  }
}

- (void)setCompositeAlpha:(double)alpha
{
  if (self->_compositeAlpha != alpha)
  {
    self->_compositeAlpha = alpha;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    layer = [(NCNotificationShortLookView *)self layer];
    [layer setAllowsGroupOpacity:alpha < 1.0];

    [(NCNotificationShortLookView *)self setAlpha:alpha];
  }
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v7;
  *&v11.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v11))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_contentTransform->c = *&transform->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    v10 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v10;
    *&t1.tx = *&transform->tx;
    [(NCNotificationShortLookView *)self setTransform:&t1];
  }
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  if (self->_apparentZDistanceToUser != user)
  {
    self->_apparentZDistanceToUser = user;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    [(NCPlatterView *)self->_platterView updateWithApparentZDistanceToUser:user];
    stackDimmingOverlayView = self->_stackDimmingOverlayView;
    v7 = user == 0 || self->_disableDimming;

    [(NCNotificationListStackDimmingOverlayView *)stackDimmingOverlayView setHidden:v7];
  }
}

- (void)setRootScrollVelocity:(double)velocity
{
  if (self->_rootScrollVelocity != velocity)
  {
    self->_rootScrollVelocity = velocity;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithRootListScrollVelocity:velocity];
  }
}

- (void)setGlassMode:(unint64_t)mode
{
  if (self->_glassMode != mode)
  {
    self->_glassMode = mode;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithGlassMode:mode];
  }
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  if (self->_backgroundHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_backgroundHidden = hidden;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView setBackgroundHidden:hiddenCopy];
  }
}

- (unint64_t)backgroundGlassState
{
  result = self->_platterView;
  if (result)
  {
    return [result backgroundGlassState];
  }

  return result;
}

- (int64_t)backgroundGlassId
{
  result = self->_platterView;
  if (result)
  {
    return [result backgroundGlassId];
  }

  return result;
}

- (double)glassSmoothness
{
  platterView = self->_platterView;
  if (!platterView)
  {
    return 0.0;
  }

  [(NCPlatterView *)platterView glassSmoothness];
  return result;
}

- (void)removeLightEffectsIfNeeded
{
  platterView = self->_platterView;
  if (platterView)
  {
    [(NCPlatterView *)platterView removeLightEffectsIfNeeded];
  }
}

- (void)setUnmanagedBackdropContrast:(BOOL)contrast
{
  if (self->_unmanagedBackdropContrast != contrast)
  {
    contrastCopy = contrast;
    self->_unmanagedBackdropContrast = contrast;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView setUnmanagedBackdropContrast:contrastCopy];
  }
}

- (CGSize)_sizeThatFitsContentWithSize:(CGSize)size withAuxiliaryOptionsViewVisible:(BOOL)visible withProjectedConfigurationOrNil:(id)nil
{
  visibleCopy = visible;
  width = size.width;
  platterView = self->_platterView;
  nilCopy = nil;
  [(PLPlatterView *)platterView sizeThatFitsContentWithSize:width, 0.0];
  v11 = v10;
  v13 = v12;
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  NCSizeThatFits(self->_notificationContentView, nilCopy, width, 0.0);
  v15 = v14;

  v16 = v13 + v15;
  if (visibleCopy)
  {
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView sizeThatFits:width, 0.0];
    v16 = v16 + v17;
  }

  v18 = v11;
  v19 = v16;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)_configurePlatterViewIfNeccesary
{
  if (!self->_platterView)
  {
    v3 = [[NCPlatterView alloc] initWithRecipe:1 supportsGlass:[(NCNotificationShortLookView *)self supportsGlass]];
    platterView = self->_platterView;
    self->_platterView = v3;

    [(NCPlatterView *)self->_platterView _setContinuousCornerRadius:23.5];
    [(NCPlatterView *)self->_platterView setAccessibilityIdentifier:@"ShortLook.Platter"];
    customContentView = [(PLPlatterView *)self->_platterView customContentView];
    [customContentView setClipsToBounds:1];

    [(NCNotificationShortLookView *)self addSubview:self->_platterView];
    v6 = self->_platterView;
    [(NCNotificationShortLookView *)self bounds];
    [(NCPlatterView *)v6 setFrame:?];
    v7 = self->_platterView;

    [(NCPlatterView *)v7 setAutoresizingMask:18];
  }
}

- (id)_newNotificationContentView
{
  v3 = objc_alloc_init(NCNotificationSeamlessContentView);
  [(NCNotificationSeamlessContentView *)v3 setDelegate:self];
  return v3;
}

void __75__NCNotificationShortLookView__configureNotificationContentViewIfNecessary__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _newNotificationContentView];
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  *(v3 + 424) = v2;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [*(*(a1 + 32) + 424) requiredVisualStyleCategories];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) integerValue];
        v11 = *(a1 + 32);
        v12 = *(v11 + 424);
        v13 = [*(v11 + 408) visualStylingProviderForCategory:v10];
        [v12 setVisualStylingProvider:v13 forCategory:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 424) setAdjustsFontForContentSizeCategory:{objc_msgSend(*(a1 + 32), "adjustsFontForContentSizeCategory")}];
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 424) setFontProvider:*(*(a1 + 32) + 416)];
  }

  v14 = [*(a1 + 32) customContentView];
  [v14 setAccessibilityIdentifier:@"ShortLook.Platter.Content"];

  v15 = [*(a1 + 32) customContentView];
  [v15 addSubview:*(*(a1 + 32) + 424)];
}

- (id)_notificationContentView
{
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  return notificationContentView;
}

- (void)_configureAuxiliaryOptionsViewIfNecessary
{
  if (!self->_auxiliaryOptionsView)
  {
    v3 = objc_alloc_init(NCAuxiliaryOptionsView);
    auxiliaryOptionsView = self->_auxiliaryOptionsView;
    self->_auxiliaryOptionsView = v3;

    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setFontProvider:self->_fontProvider];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAdjustsFontForContentSizeCategory:[(NCNotificationShortLookView *)self adjustsFontForContentSizeCategory]];
    v5 = self->_auxiliaryOptionsView;
    [(NCNotificationShortLookView *)self _continuousCornerRadius];
    [(NCAuxiliaryOptionsView *)v5 _setContinuousCornerRadius:?];
    customContentView = [(NCNotificationShortLookView *)self customContentView];
    [customContentView addSubview:self->_auxiliaryOptionsView];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__NCNotificationShortLookView__configureAuxiliaryOptionsViewIfNecessary__block_invoke;
    v7[3] = &unk_27836F6A8;
    v7[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  }
}

- (id)_fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(NCNotificationShortLookView *)self adjustsFontForContentSizeCategory])
    {
      [MEMORY[0x277CF0D60] preferredFontProvider];
    }

    else
    {
      [MEMORY[0x277CF0D60] defaultFontProvider];
    }
    v3 = ;
    [(NCNotificationShortLookView *)self _setFontProvider:v3];
  }

  fontProvider = self->_fontProvider;

  return fontProvider;
}

- (void)_setFontProvider:(id)provider
{
  providerCopy = provider;
  if (self->_fontProvider != providerCopy)
  {
    objc_storeStrong(&self->_fontProvider, provider);
    providerCopy = objc_opt_respondsToSelector();
    if (providerCopy)
    {
      providerCopy = [(NCNotificationContentDisplaying *)self->_notificationContentView setFontProvider:self->_fontProvider];
    }
  }

  MEMORY[0x2821F96F8](providerCopy);
}

- (void)didInvalidateSizeFromNotificationSeamlessContentView:(id)view
{
  delegate = [(NCNotificationShortLookView *)self delegate];
  [delegate didInvalidateSizeFromNotificationShortLookView:self];
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[11].b;
  *&retstr->a = *&self[10].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].d;
  return self;
}

- (NCNotificationShortLookViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
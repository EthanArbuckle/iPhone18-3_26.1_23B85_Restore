@interface NCNotificationShortLookView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)allowContentToCrossFade;
- (BOOL)hideDate;
- (BOOL)isDateAllDay;
- (CGAffineTransform)contentTransform;
- (CGSize)_sizeThatFitsContentWithSize:(CGSize)a3 withAuxiliaryOptionsViewVisible:(BOOL)a4 withProjectedConfigurationOrNil:(id)a5;
- (CGSize)contentSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 withTraits:(id)a4;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3;
- (MTVisualStylingProvider)importantTextVisualStylingProvider;
- (MTVisualStylingProvider)strokeVisualStylingProvider;
- (NCBadgedIconDescription)badgedIconDescription;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationShortLookView)initWithFrame:(CGRect)a3;
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
- (void)_setFontProvider:(id)a3;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3;
- (void)didInvalidateSizeFromNotificationSeamlessContentView:(id)a3;
- (void)layoutSubviews;
- (void)removeAuxiliaryOptionsView;
- (void)removeLightEffectsIfNeeded;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setAlignContentToBottom:(BOOL)a3;
- (void)setAllowContentToCrossFade:(BOOL)a3;
- (void)setApparentZDistanceToUser:(int64_t)a3;
- (void)setAuxiliaryOptionActions:(id)a3;
- (void)setAuxiliaryOptionsSummaryText:(id)a3;
- (void)setAuxiliaryOptionsVisible:(BOOL)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setBadgedIconDescription:(id)a3;
- (void)setCompositeAlpha:(double)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setCustomPlatterBackgroundView:(id)a3;
- (void)setDate:(id)a3;
- (void)setDateAllDay:(BOOL)a3;
- (void)setDateAlpha:(double)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setDisableDimming:(BOOL)a3;
- (void)setFooterSummaryAttributionText:(id)a3;
- (void)setFooterText:(id)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setHideDate:(BOOL)a3;
- (void)setImportantAttributedText:(id)a3;
- (void)setImportantText:(id)a3;
- (void)setImportantTextVisualStylingProvider:(id)a3;
- (void)setInlineAction:(id)a3;
- (void)setIsGroupCollapsed:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setMaterialRecipe:(int64_t)a3;
- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)a3;
- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)a3;
- (void)setNotificationContentViewHidden:(BOOL)a3;
- (void)setPrimarySubtitleText:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setRootScrollVelocity:(double)a3;
- (void)setScreenCaptureProhibited:(BOOL)a3;
- (void)setSecondaryText:(id)a3;
- (void)setSecondaryTextCompact:(id)a3;
- (void)setSecondaryTextGroupCollapsed:(id)a3;
- (void)setSupportsGlass:(BOOL)a3;
- (void)setThumbnail:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)setUnmanagedBackdropContrast:(BOOL)a3;
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
    v3 = [(NCNotificationShortLookView *)self customContentView];
    [v3 bounds];
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
    v12 = [(NCAuxiliaryOptionsView *)auxiliaryOptionsView auxiliaryOptionsVisible];
    v13 = 0.0;
    if (v12)
    {
      v14 = [(NCNotificationShortLookView *)self isNotificationContentViewHidden];
      v13 = 1.0;
      if (v14)
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
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView badgedIconDescription];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)date
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView date];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView timeZone];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView secondaryTextCompact];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSAttributedString)secondaryTextGroupCollapsed
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView secondaryTextGroupCollapsed];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIAction)inlineAction
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView inlineAction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSAttributedString)footerText
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView footerText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSAttributedString)footerSummaryAttributionText
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView footerSummaryAttributionText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImageConfiguration)importantTextImageConfiguration
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView importantTextImageConfiguration];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSAttributedString)importantAttributedText
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView importantAttributedText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MTVisualStylingProvider)importantTextVisualStylingProvider
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView importantTextVisualStylingProvider];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)importantText
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView importantText];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeAuxiliaryOptionsView
{
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView removeFromSuperview];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;
  self->_auxiliaryOptionsView = 0;

  [(NCNotificationShortLookView *)self setNeedsLayout];
}

- (NCNotificationShortLookView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationShortLookView;
  v3 = [(NCNotificationShortLookView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setNotificationContentViewHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(NCNotificationShortLookView *)self _notificationContentView];
  [v5 setAlpha:v4];

  auxiliaryOptionsView = self->_auxiliaryOptionsView;

  [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setAlpha:v4];
}

- (void)setAlignContentToBottom:(BOOL)a3
{
  v3 = a3;
  self->_alignContentToBottom = a3;
  if (objc_opt_respondsToSelector())
  {
    notificationContentView = self->_notificationContentView;

    [(NCNotificationContentDisplaying *)notificationContentView setAlignContentToBottom:v3];
  }
}

- (void)setDisableDimming:(BOOL)a3
{
  if (self->_disableDimming != a3)
  {
    self->_disableDimming = a3;
    [(NCNotificationListStackDimmingOverlayView *)self->_stackDimmingOverlayView setHidden:?];
  }
}

- (void)setIsGroupCollapsed:(BOOL)a3
{
  v3 = a3;
  self->_isGroupCollapsed = a3;
  if (objc_opt_respondsToSelector())
  {
    notificationContentView = self->_notificationContentView;

    [(NCNotificationContentDisplaying *)notificationContentView setIsGroupCollapsed:v3];
  }
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3
{
  v4 = dbl_21E946550[a3->a < 0.94];
  if (a3->a > 0.94)
  {
    v4 = 0.0;
  }

  [(NCNotificationListStackDimmingOverlayView *)self->_stackDimmingOverlayView setAlpha:v4];
  stackDimmingOverlayView = self->_stackDimmingOverlayView;
  v6 = self->_disableDimming || self->_apparentZDistanceToUser == 0;

  [(NCNotificationListStackDimmingOverlayView *)stackDimmingOverlayView setHidden:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NCNotificationShortLookView *)self contentSizeForSize:a3.width, a3.height];

  [(NCNotificationShortLookView *)self sizeThatFitsContentWithSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 withTraits:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(NCNotificationShortLookView *)self contentSizeForSize:width, height];
  -[NCNotificationShortLookView _sizeThatFitsContentWithSize:withAuxiliaryOptionsViewVisible:withProjectedConfigurationOrNil:](self, "_sizeThatFitsContentWithSize:withAuxiliaryOptionsViewVisible:withProjectedConfigurationOrNil:", [v7 showAuxiliaryOptions], v7, v8, v9);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)a3
{
  [(PLPlatterView *)self->_platterView contentSizeForSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView auxiliaryOptionsVisible];

  [(NCNotificationShortLookView *)self _sizeThatFitsContentWithSize:v6 withAuxiliaryOptionsViewVisible:0 withProjectedConfigurationOrNil:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (MTVisualStylingProvider)strokeVisualStylingProvider
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCNotificationContentDisplaying *)self->_notificationContentView strokeVisualStylingProvider];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimaryText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationContentDisplaying *)self->_notificationContentView primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setPrimaryText:v6];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setPrimarySubtitleText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationContentDisplaying *)self->_notificationContentView primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setPrimarySubtitleText:v6];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setSecondaryText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationContentDisplaying *)self->_notificationContentView secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setSecondaryText:v6];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setSecondaryTextCompact:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self secondaryTextCompact];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setSecondaryTextCompact:v6];
    }
  }
}

- (void)setSecondaryTextGroupCollapsed:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self secondaryTextGroupCollapsed];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setSecondaryTextGroupCollapsed:v6];
    }
  }
}

- (void)setImportantText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self importantText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setImportantText:v6];
    }
  }
}

- (void)setImportantAttributedText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self importantAttributedText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setImportantAttributedText:v6];
    }
  }
}

- (void)setImportantTextVisualStylingProvider:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self importantTextVisualStylingProvider];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setImportantTextVisualStylingProvider:v6];
    }
  }
}

- (void)setFooterText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self footerText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setFooterText:v6];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setFooterSummaryAttributionText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self footerSummaryAttributionText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setFooterSummaryAttributionText:v6];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setInlineAction:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self inlineAction];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setInlineAction:v6];
    }
  }
}

- (void)setBadgedIconDescription:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self badgedIconDescription];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setBadgedIconDescription:v6];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setThumbnail:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationContentDisplaying *)self->_notificationContentView thumbnail];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentDisplaying *)self->_notificationContentView setThumbnail:v6];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setDate:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self date];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDate:v6];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)a3
{
  v3 = a3;
  if ([(NCNotificationShortLookView *)self isDateAllDay]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDateAllDay:v3];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self timeZone];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setTimeZone:v6];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if ([(NCNotificationShortLookView *)self dateFormatStyle]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDateFormatStyle:a3];
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

- (void)setHideDate:(BOOL)a3
{
  v3 = a3;
  if ([(NCNotificationShortLookView *)self hideDate]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setHideDate:v3];
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

- (void)setAllowContentToCrossFade:(BOOL)a3
{
  v3 = a3;
  if ([(NCNotificationShortLookView *)self allowContentToCrossFade]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setAllowContentToCrossFade:v3];
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

- (void)setDateAlpha:(double)a3
{
  [(NCNotificationShortLookView *)self dateAlpha];
  if (v5 != a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationContentDisplaying *)self->_notificationContentView setDateAlpha:a3];
    }

    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)a3
{
  v3 = a3;
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView setScreenCaptureProhibited:v3];
}

- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)a3
{
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  [(NCNotificationContentDisplaying *)self->_notificationContentView setPrimaryTextMaximumNumberOfLines:a3];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView setPrimarySubtitleTextMaximumNumberOfLines:a3];
}

- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)a3
{
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentDisplaying *)notificationContentView setSecondaryTextMaximumNumberOfLines:a3];
}

- (void)setSupportsGlass:(BOOL)a3
{
  if (self->_supportsGlass != a3)
  {
    self->_supportsGlass = a3;
    [(NCPlatterView *)self->_platterView setSupportsGlass:?];
  }
}

- (void)setCustomPlatterBackgroundView:(id)a3
{
  v5 = a3;
  if (self->_customPlatterBackgroundView != v5)
  {
    v6 = v5;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    objc_storeStrong(&self->_customPlatterBackgroundView, a3);
    [(PLPlatterView *)self->_platterView setBackgroundView:v6];
    [(NCPlatterView *)self->_platterView layoutIfNeeded];
    v5 = v6;
  }
}

- (void)setAuxiliaryOptionsSummaryText:(id)a3
{
  v6 = a3;
  v4 = [(NCNotificationShortLookView *)self auxiliaryOptionsSummaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCNotificationShortLookView *)self _configureAuxiliaryOptionsViewIfNecessary];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsSummaryText:v6];
    [(NCNotificationShortLookView *)self setNeedsDisplay];
  }
}

- (void)setAuxiliaryOptionsVisible:(BOOL)a3
{
  v3 = a3;
  if ([(NCNotificationShortLookView *)self auxiliaryOptionsVisible]!= a3)
  {
    [(NCNotificationShortLookView *)self _configureAuxiliaryOptionsViewIfNecessary];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__NCNotificationShortLookView_setAuxiliaryOptionsVisible___block_invoke;
    v5[3] = &unk_27836F6A8;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsVisible:v3];
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionActions:(id)a3
{
  v4 = a3;
  [(NCNotificationShortLookView *)self _configureAuxiliaryOptionsViewIfNecessary];
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionActions:v4];

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

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(NCPlatterView *)self->_platterView setAdjustsFontForContentSizeCategory:v3];
  }

  v5 = [(NCNotificationShortLookView *)self adjustsFontForContentSizeCategory];
  [(NCNotificationContentDisplaying *)self->_notificationContentView setAdjustsFontForContentSizeCategory:v5];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;

  [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setAdjustsFontForContentSizeCategory:v5];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NCPlatterView *)self->_platterView adjustForContentSizeCategoryChange];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NCNotificationContentDisplaying *)self->_notificationContentView adjustForContentSizeCategoryChange];
  v5 = [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView adjustForContentSizeCategoryChange]| v4 | v3;
  if (v5)
  {
    [(NCNotificationShortLookView *)self setNeedsLayout];
  }

  return v5 & 1;
}

- (void)setMaterialGroupNameBase:(id)a3
{
  v4 = a3;
  [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
  [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:v4];
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialGroupNameBase:v4];
}

- (void)setMaterialRecipe:(int64_t)a3
{
  [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
  [(NCPlatterView *)self->_platterView setMaterialRecipe:a3];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;

  [(NCAuxiliaryOptionsView *)auxiliaryOptionsView setMaterialRecipe:a3];
}

- (void)setBackgroundAlpha:(double)a3
{
  if (self->_backgroundAlpha != a3)
  {
    self->_backgroundAlpha = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    v5 = [(PLPlatterView *)self->_platterView backgroundMaterialView];

    if (!v5)
    {
      [(NCPlatterView *)self->_platterView setNeedsLayout];
      [(NCPlatterView *)self->_platterView layoutIfNeeded];
    }

    v6 = [(PLPlatterView *)self->_platterView backgroundMaterialView];

    if (v6)
    {
      v7 = [(PLPlatterView *)self->_platterView backgroundMaterialView];
      [v7 setAlpha:a3];

      v8 = [(PLPlatterView *)self->_platterView backgroundMaterialView];
      [v8 setHidden:a3 < 0.001];
    }
  }
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    notificationContentView = self->_notificationContentView;

    [(NCNotificationContentDisplaying *)notificationContentView setAlpha:a3];
  }
}

- (void)setCompositeAlpha:(double)a3
{
  if (self->_compositeAlpha != a3)
  {
    self->_compositeAlpha = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    v5 = [(NCNotificationShortLookView *)self layer];
    [v5 setAllowsGroupOpacity:a3 < 1.0];

    [(NCNotificationShortLookView *)self setAlpha:a3];
  }
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&a3->c;
  *&v11.a = *&a3->a;
  *&v11.c = v7;
  *&v11.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v11))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_contentTransform->c = *&a3->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
    v10 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v10;
    *&t1.tx = *&a3->tx;
    [(NCNotificationShortLookView *)self setTransform:&t1];
  }
}

- (void)setApparentZDistanceToUser:(int64_t)a3
{
  if (self->_apparentZDistanceToUser != a3)
  {
    self->_apparentZDistanceToUser = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    [(NCPlatterView *)self->_platterView updateWithApparentZDistanceToUser:a3];
    stackDimmingOverlayView = self->_stackDimmingOverlayView;
    v7 = a3 == 0 || self->_disableDimming;

    [(NCNotificationListStackDimmingOverlayView *)stackDimmingOverlayView setHidden:v7];
  }
}

- (void)setRootScrollVelocity:(double)a3
{
  if (self->_rootScrollVelocity != a3)
  {
    self->_rootScrollVelocity = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithRootListScrollVelocity:a3];
  }
}

- (void)setGlassMode:(unint64_t)a3
{
  if (self->_glassMode != a3)
  {
    self->_glassMode = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithGlassMode:a3];
  }
}

- (void)setBackgroundHidden:(BOOL)a3
{
  if (self->_backgroundHidden != a3)
  {
    v4 = a3;
    self->_backgroundHidden = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView setBackgroundHidden:v4];
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

- (void)setUnmanagedBackdropContrast:(BOOL)a3
{
  if (self->_unmanagedBackdropContrast != a3)
  {
    v4 = a3;
    self->_unmanagedBackdropContrast = a3;
    [(NCNotificationShortLookView *)self _configurePlatterViewIfNeccesary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView setUnmanagedBackdropContrast:v4];
  }
}

- (CGSize)_sizeThatFitsContentWithSize:(CGSize)a3 withAuxiliaryOptionsViewVisible:(BOOL)a4 withProjectedConfigurationOrNil:(id)a5
{
  v5 = a4;
  width = a3.width;
  platterView = self->_platterView;
  v9 = a5;
  [(PLPlatterView *)platterView sizeThatFitsContentWithSize:width, 0.0];
  v11 = v10;
  v13 = v12;
  [(NCNotificationShortLookView *)self _configureNotificationContentViewIfNecessary];
  NCSizeThatFits(self->_notificationContentView, v9, width, 0.0);
  v15 = v14;

  v16 = v13 + v15;
  if (v5)
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
    v5 = [(PLPlatterView *)self->_platterView customContentView];
    [v5 setClipsToBounds:1];

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
    v6 = [(NCNotificationShortLookView *)self customContentView];
    [v6 addSubview:self->_auxiliaryOptionsView];

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

- (void)_setFontProvider:(id)a3
{
  v5 = a3;
  if (self->_fontProvider != v5)
  {
    objc_storeStrong(&self->_fontProvider, a3);
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      v5 = [(NCNotificationContentDisplaying *)self->_notificationContentView setFontProvider:self->_fontProvider];
    }
  }

  MEMORY[0x2821F96F8](v5);
}

- (void)didInvalidateSizeFromNotificationSeamlessContentView:(id)a3
{
  v4 = [(NCNotificationShortLookView *)self delegate];
  [v4 didInvalidateSizeFromNotificationShortLookView:self];
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
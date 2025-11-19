@interface NCNotificationSummaryExpandedHeaderView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate;
- (NCNotificationSummaryExpandedHeaderView)initWithFrame:(CGRect)a3;
- (NCNotificationSummaryExpandedHeaderViewDelegate)delegate;
- (double)_allowedWidthForButtonInRect:(CGRect)a3;
- (id)_newOnboardingButtonWithTitle:(id)a3;
- (id)containerViewForToggleControlClickInteractionPresentedContent:(id)a3;
- (unint64_t)_maximumNumberOfLinesForTitleText;
- (unint64_t)_numberOfLinesForTitleTextInFrame:(CGRect)a3;
- (void)_configureControlsViewIfNecessary;
- (void)_configureDividerViewIfNecessary;
- (void)_configureOnboardingButtonsIfNecessary;
- (void)_configureTimeStampLabel;
- (void)_configureTimeStampLabelIfNecessary;
- (void)_handleClearAll:(id)a3;
- (void)_handleClearControlPrimaryAction:(id)a3;
- (void)_handleClearControlTouchUpInside:(id)a3;
- (void)_handleCollapseControlPrimaryAction:(id)a3;
- (void)_layoutControlsView;
- (void)_layoutDividerView;
- (void)_layoutOnboardingButtons;
- (void)_layoutSubtitleLabel;
- (void)_layoutTimeStampLabel;
- (void)_layoutTitleLabel;
- (void)_recycleTimeStampLabel;
- (void)_summaryOnboardingAccepted:(id)a3;
- (void)_summaryOnboardingRejected:(id)a3;
- (void)_tearDownTimeStampLabel;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForButtonLabel:(id)a3;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForSubtitleTextLabel;
- (void)_updateTextAttributesForTitleTextLabel;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)layoutSubviews;
- (void)resetClearButtonStateAnimated:(BOOL)a3;
- (void)setDate:(id)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setOnboarding:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)setTitle:(id)a3;
- (void)toggleControlDidBeginClickInteraction:(id)a3;
- (void)toggleControlDidDismssClickInteractionPresentedContent:(id)a3;
- (void)toggleControlDidPresentClickInteractionPresentedContent:(id)a3;
@end

@implementation NCNotificationSummaryExpandedHeaderView

- (NCNotificationSummaryExpandedHeaderView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummaryExpandedHeaderView;
  result = [(NCNotificationListBaseContentView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_onboarding = 0;
    result->_animateCollapseButtonLayout = 0;
  }

  return result;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 isEqualToString:v10];

  if ((v5 & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (!titleLabel)
    {
      v7 = objc_alloc_init(MEMORY[0x277D756B8]);
      v8 = self->_titleLabel;
      self->_titleLabel = v7;

      [(NCNotificationSummaryExpandedHeaderView *)self addSubview:self->_titleLabel];
      [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForTitleTextLabel];
      v9 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
      [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_titleLabel style:0 visualStylingProvider:v9 outgoingProvider:0];

      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:v10];
    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_subtitleLabel text];
  v5 = [v4 isEqualToString:v10];

  if ((v5 & 1) == 0)
  {
    subtitleLabel = self->_subtitleLabel;
    if (!subtitleLabel)
    {
      v7 = objc_alloc_init(MEMORY[0x277D756B8]);
      v8 = self->_subtitleLabel;
      self->_subtitleLabel = v7;

      [(NCNotificationSummaryExpandedHeaderView *)self addSubview:self->_subtitleLabel];
      [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForSubtitleTextLabel];
      v9 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
      [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_subtitleLabel style:0 visualStylingProvider:v9 outgoingProvider:0];

      subtitleLabel = self->_subtitleLabel;
    }

    [(UILabel *)subtitleLabel setText:v10];
    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
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

    [(NCNotificationSummaryExpandedHeaderView *)self _tearDownTimeStampLabel];
    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
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

    [(NCNotificationSummaryExpandedHeaderView *)self _tearDownTimeStampLabel];
    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if (self->_dateFormatStyle != a3)
  {
    self->_dateFormatStyle = a3;
    [(NCNotificationSummaryExpandedHeaderView *)self _tearDownTimeStampLabel];

    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)setOnboarding:(BOOL)a3
{
  if (self->_onboarding != a3)
  {
    self->_onboarding = a3;
    if (!a3)
    {
      [(UIButton *)self->_onboardingAcceptButton removeFromSuperview];
      onboardingAcceptButton = self->_onboardingAcceptButton;
      self->_onboardingAcceptButton = 0;

      [(UIButton *)self->_onboardingRejectButton removeFromSuperview];
      onboardingRejectButton = self->_onboardingRejectButton;
      self->_onboardingRejectButton = 0;
    }

    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  timeStampLabel = self->_timeStampLabel;
  if (timeStampLabel)
  {
    v7 = [(BSUIDateLabel *)timeStampLabel font];
    [v7 lineHeight];
  }

  v8 = width + -14.0;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryExpandedHeaderView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, v8, height]];
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryExpandedHeaderView *)self _numberOfLinesForSubtitleTextInFrame:0.0, 0.0, v8, height]];
  }

  if ([(NCNotificationSummaryExpandedHeaderView *)self isOnboarding])
  {
    [(NCNotificationSummaryExpandedHeaderView *)self _allowedWidthForButtonInRect:0.0, 0.0, width, height];
    v12 = v11;
    [(UIButton *)self->_onboardingAcceptButton sizeThatFits:?];
    [(UIButton *)self->_onboardingRejectButton sizeThatFits:v12, height];
    v13 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    UIContentSizeCategoryIsAccessibilityCategory(v13);
  }

  v14 = [(NCNotificationSummaryExpandedHeaderView *)self traitCollection];
  [v14 displayScale];
  UICeilToScale();
  v16 = v15;

  v17 = width;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationSummaryExpandedHeaderView;
  [(NCNotificationSummaryExpandedHeaderView *)&v3 layoutSubviews];
  [(NCNotificationSummaryExpandedHeaderView *)self _configureTimeStampLabelIfNecessary];
  [(NCNotificationSummaryExpandedHeaderView *)self _configureDividerViewIfNecessary];
  [(NCNotificationSummaryExpandedHeaderView *)self _configureOnboardingButtonsIfNecessary];
  [(NCNotificationSummaryExpandedHeaderView *)self _configureControlsViewIfNecessary];
  [(NCNotificationSummaryExpandedHeaderView *)self _layoutTimeStampLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _layoutControlsView];
  [(NCNotificationSummaryExpandedHeaderView *)self _layoutTitleLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _layoutSubtitleLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _layoutOnboardingButtons];
  [(NCNotificationSummaryExpandedHeaderView *)self _layoutDividerView];
}

- (void)_configureDividerViewIfNecessary
{
  if (self->_onboarding && !self->_dividerView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    dividerView = self->_dividerView;
    self->_dividerView = v4;

    v6 = self->_dividerView;
    v7 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v6 setBackgroundColor:v7];

    v8 = self->_dividerView;
    v9 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
    [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v8 style:3 visualStylingProvider:v9 outgoingProvider:0];

    v10 = self->_dividerView;

    [(NCNotificationSummaryExpandedHeaderView *)self addSubview:v10];
  }
}

- (void)_configureOnboardingButtonsIfNecessary
{
  if (self->_onboarding)
  {
    if (self->_onboardingAcceptButton || (NCUserNotificationsUIKitFrameworkBundle(), v3 = objc_claimAutoreleasedReturnValue(), [v3 localizedStringForKey:@"NOTIFICATION_SUMMARY_ONBOARDING_SUGGESTION_BUTTON_TITLE_ACCEPT" value:&stru_282FE84F8 table:0], v4 = objc_claimAutoreleasedReturnValue(), v5 = -[NCNotificationSummaryExpandedHeaderView _newOnboardingButtonWithTitle:](self, "_newOnboardingButtonWithTitle:", v4), onboardingAcceptButton = self->_onboardingAcceptButton, self->_onboardingAcceptButton = v5, onboardingAcceptButton, v4, v3, -[UIButton addTarget:action:forControlEvents:](self->_onboardingAcceptButton, "addTarget:action:forControlEvents:", self, sel__summaryOnboardingAccepted_, 64), self->_onboarding))
    {
      if (!self->_onboardingRejectButton)
      {
        v7 = NCUserNotificationsUIKitFrameworkBundle();
        v8 = [v7 localizedStringForKey:@"NOTIFICATION_SUMMARY_ONBOARDING_SUGGESTION_BUTTON_TITLE_REJECT" value:&stru_282FE84F8 table:0];
        v9 = [(NCNotificationSummaryExpandedHeaderView *)self _newOnboardingButtonWithTitle:v8];
        onboardingRejectButton = self->_onboardingRejectButton;
        self->_onboardingRejectButton = v9;

        v11 = self->_onboardingRejectButton;

        [(UIButton *)v11 addTarget:self action:sel__summaryOnboardingRejected_ forControlEvents:64];
      }
    }
  }
}

- (id)_newOnboardingButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NCNotificationSummaryOnboardingButton);
  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  [(NCNotificationSummaryOnboardingButton *)v5 setTitleColor:v6 forState:0];

  [(NCNotificationSummaryOnboardingButton *)v5 setTitle:v4 forState:0];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForButtonLabel:v5];
  v7 = [(NCNotificationSummaryOnboardingButton *)v5 titleLabel];
  [v7 setAdjustsFontSizeToFitWidth:1];

  [(NCNotificationSummaryExpandedHeaderView *)self addSubview:v5];
  return v5;
}

- (void)_configureControlsViewIfNecessary
{
  if (!self->_controlsView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__NCNotificationSummaryExpandedHeaderView__configureControlsViewIfNecessary__block_invoke;
    v4[3] = &unk_27836F6A8;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

void __76__NCNotificationSummaryExpandedHeaderView__configureControlsViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 504);
  *(v4 + 504) = v3;

  [*(a1 + 32) addSubview:*(*(a1 + 32) + 504)];
  v20 = [*(a1 + 32) delegate];
  v6 = [v20 materialGroupNameBaseForNotificationSummaryExpandedHeaderView:*(a1 + 32)];
  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v9 = [v7 configurationWithFont:v8 scale:2];

  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down" withConfiguration:v9];
  v11 = [objc_alloc(MEMORY[0x277D3D2F8]) initWithMaterialRecipe:1];
  [v11 setGlyph:v10];
  [v11 setMaterialGroupNameBase:v6];
  [v11 setAccessibilityIdentifier:@"notification-summary-collapse-control"];
  [v11 addTarget:*(a1 + 32) action:sel__handleCollapseControlPrimaryAction_ forControlEvents:0x2000];
  [*(*(a1 + 32) + 504) addSubview:v11];
  v12 = *(a1 + 32);
  v13 = *(v12 + 488);
  *(v12 + 488) = v11;
  v14 = v11;

  v15 = NCUserNotificationsUIKitFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
  v17 = [NCToggleControl dismissControlWithMaterialRecipe:1 clearAllText:v16];

  [v17 setDelegate:*(a1 + 32)];
  [v17 setMaterialGroupNameBase:v6];
  [v17 setAdjustsFontForContentSizeCategory:1];
  [v17 addTarget:*(a1 + 32) action:sel__handleClearControlTouchUpInside_ forControlEvents:64];
  [v17 addTarget:*(a1 + 32) action:sel__handleClearControlPrimaryAction_ forControlEvents:0x2000];
  [v17 addTarget:*(a1 + 32) forPreviewInteractionPresentedContentWithAction:sel__handleClearAll_];
  [*(*(a1 + 32) + 504) addSubview:v17];
  v18 = *(a1 + 32);
  v19 = *(v18 + 496);
  *(v18 + 496) = v17;
}

- (void)_handleClearControlTouchUpInside:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  [v4 notificationSummaryExpandedHeaderView:self didTransitionToClearState:{-[NCToggleControl isExpanded](self->_clearControl, "isExpanded") ^ 1}];

  self->_animateCollapseButtonLayout = 1;

  [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
}

- (void)_handleClearControlPrimaryAction:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  [v4 notificationSummaryExpandedHeaderViewRequestsClearingSummary:self];
}

- (void)_handleCollapseControlPrimaryAction:(id)a3
{
  self->_animateCollapseButtonLayout = 0;
  [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  memset(&v10, 0, sizeof(v10));
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection];
  v5 = 1.57;
  if (v4)
  {
    v5 = -1.57;
  }

  CGAffineTransformMakeRotation(&v10, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = v10;
  v8[2] = __79__NCNotificationSummaryExpandedHeaderView__handleCollapseControlPrimaryAction___block_invoke;
  v8[3] = &unk_278370CA8;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NCNotificationSummaryExpandedHeaderView__handleCollapseControlPrimaryAction___block_invoke_2;
  v7[3] = &unk_27836F980;
  v7[4] = self;
  [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v8 interactive:v7 animations:200.0 completion:25.0];
  v6 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  [v6 notificationSummaryExpandedHeaderViewRequestsCollapsingSummary:self];
}

uint64_t __79__NCNotificationSummaryExpandedHeaderView__handleCollapseControlPrimaryAction___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 488);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __79__NCNotificationSummaryExpandedHeaderView__handleCollapseControlPrimaryAction___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 488);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 496) setExpanded:0];
}

- (void)_handleClearAll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notificationSummaryExpandedHeaderViewRequestsClearAll:self];
  [(NCToggleControl *)self->_clearControl dismissModalFullScreenIfNeeded];
}

- (void)_layoutTimeStampLabel
{
  timeStampLabel = self->_timeStampLabel;
  if (timeStampLabel)
  {
    [(BSUIDateLabel *)timeStampLabel frame];
    [(NCNotificationSummaryExpandedHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection];
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    CGRectGetWidth(v16);
    v12 = [(BSUIDateLabel *)self->_timeStampLabel font];
    [v12 lineHeight];
    v13 = [(NCNotificationSummaryExpandedHeaderView *)self traitCollection];
    [v13 displayScale];
    UICeilToScale();

    UIRectIntegralWithScale();
    v14 = self->_timeStampLabel;

    [(BSUIDateLabel *)v14 setFrame:?];
  }
}

- (void)_layoutControlsView
{
  controlsView = self->_controlsView;
  if (controlsView)
  {
    [(UIView *)controlsView frame];
    [(NCNotificationSummaryExpandedHeaderView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(NCToggleControl *)self->_clearControl sizeThatFits:v8, v10];
    [(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection];
    UIRectIntegralWithScale();
    [(NCToggleControl *)self->_clearControl setFrame:?];
    [(NCToggleControl *)self->_clearControl layoutIfNeeded];
    v12 = [(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection];
    v13 = [(PLGlyphControl *)self->_clearControl _backgroundMaterialView];
    [v13 frame];
    if (v12)
    {
      CGRectGetMaxX(*&v14);
    }

    else
    {
      CGRectGetMinX(*&v14);
    }

    [(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection];
    UIRectIntegralWithScale();
    if (self->_animateCollapseButtonLayout)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__NCNotificationSummaryExpandedHeaderView__layoutControlsView__block_invoke;
      v23[3] = &unk_27836FDF8;
      v23[4] = self;
      v23[5] = v18;
      v23[6] = v19;
      v23[7] = v20;
      v23[8] = v21;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __62__NCNotificationSummaryExpandedHeaderView__layoutControlsView__block_invoke_2;
      v22[3] = &unk_27836F980;
      v22[4] = self;
      [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v23 interactive:v22 animations:200.0 completion:25.0];
    }

    else
    {
      [(PLGlyphControl *)self->_collapseControl setFrame:?];
    }

    if (([(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v24.origin.x = v5;
      v24.origin.y = v7;
      v24.size.width = v9;
      v24.size.height = v11;
      CGRectGetMaxX(v24);
    }

    UIRectIntegralWithScale();
    [(UIView *)self->_controlsView setFrame:?];
  }
}

- (void)_layoutTitleLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    [(NCNotificationSummaryExpandedHeaderView *)self bounds];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v8 = v17.size.width + -14.0;
    v9 = CGRectGetHeight(v17);
    [(UILabel *)self->_titleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryExpandedHeaderView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, v8, v9]];
    v11 = v10;
    v12 = 14.0;
    if ([(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection])
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v12 = CGRectGetMaxX(v18) + -14.0 - v8;
    }

    timeStampLabel = self->_timeStampLabel;
    if (timeStampLabel)
    {
      [(BSUIDateLabel *)timeStampLabel frame];
      v14 = CGRectGetMaxY(v19) + 2.0;
    }

    else
    {
      v14 = 55.0;
    }

    [(UILabel *)self->_titleLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationSummaryExpandedHeaderView *)self _numberOfLinesForTitleTextInFrame:0.0, 0.0, v8, v9]];
    v20.origin.x = v12;
    v20.origin.y = v14;
    v20.size.width = v8;
    v20.size.height = v11;
    CGRectGetWidth(v20);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    UIRectIntegralWithScale();
    v15 = self->_titleLabel;

    [(UILabel *)v15 setFrame:?];
  }
}

- (void)_layoutSubtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (!subtitleLabel)
  {
    return;
  }

  [(UILabel *)subtitleLabel frame];
  [(NCNotificationSummaryExpandedHeaderView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v8 = v18.size.width + -14.0;
  v9 = CGRectGetHeight(v18);
  [(UILabel *)self->_subtitleLabel unui_measuringHeightWithNumberOfLines:[(NCNotificationSummaryExpandedHeaderView *)self _numberOfLinesForSubtitleTextInFrame:0.0, 0.0, v8, v9]];
  v11 = v10;
  v12 = 14.0;
  if ([(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection])
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v12 = CGRectGetMaxX(v19) + -14.0 - v8;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v14 = 5.0;
  }

  else
  {
    titleLabel = self->_timeStampLabel;
    if (!titleLabel)
    {
      v15 = 55.0;
      goto LABEL_10;
    }

    v14 = 2.0;
  }

  [titleLabel frame];
  v15 = CGRectGetMaxY(v20) + v14;
LABEL_10:
  [(UILabel *)self->_subtitleLabel unui_drawingHeightWithNumberOfLines:[(NCNotificationSummaryExpandedHeaderView *)self _numberOfLinesForSubtitleTextInFrame:0.0, 0.0, v8, v9]];
  v21.origin.x = v12;
  v21.origin.y = v15;
  v21.size.width = v8;
  v21.size.height = v11;
  CGRectGetWidth(v21);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  UIRectIntegralWithScale();
  v16 = self->_subtitleLabel;

  [(UILabel *)v16 setFrame:?];
}

- (void)_layoutOnboardingButtons
{
  if (self->_onboarding)
  {
    [(NCNotificationSummaryExpandedHeaderView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCNotificationSummaryExpandedHeaderView *)self _allowedWidthForButtonInRect:?];
    v12 = v11;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    Height = CGRectGetHeight(v35);
    [(UIButton *)self->_onboardingAcceptButton sizeThatFits:v12, Height];
    v15 = v14;
    [(UIButton *)self->_onboardingRejectButton sizeThatFits:v12, Height];
    if (v15 >= v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v18 = v17 + 10.0;
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel || (subtitleLabel = self->_titleLabel) != 0 || (subtitleLabel = self->_timeStampLabel) != 0)
    {
      [subtitleLabel frame];
      CGRectGetMaxY(v36);
    }

    UIRectIntegralWithScale();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v28);

    if (IsAccessibilityCategory)
    {
      [(UIButton *)self->_onboardingRejectButton setFrame:v21, v23, v25, v27];
      onboardingAcceptButton = self->_onboardingAcceptButton;
      v31 = v18 + v23 + 10.0;
      v32 = v21;
    }

    else
    {
      v33 = v12 + 14.0 + 10.0;
      if ([(NCNotificationSummaryExpandedHeaderView *)self _shouldReverseLayoutDirection])
      {
        [(UIButton *)self->_onboardingAcceptButton setFrame:v21, v23, v25, v27];
        onboardingAcceptButton = self->_onboardingRejectButton;
      }

      else
      {
        [(UIButton *)self->_onboardingRejectButton setFrame:v21, v23, v25, v27];
        onboardingAcceptButton = self->_onboardingAcceptButton;
      }

      v32 = v33;
      v31 = v23;
    }

    [(UIButton *)onboardingAcceptButton setFrame:v32, v31, v25, v27];
  }
}

- (void)_layoutDividerView
{
  dividerView = self->_dividerView;
  if (!dividerView)
  {
    return;
  }

  [(UIView *)dividerView frame];
  if (self->_onboarding)
  {
    onboardingAcceptButton = self->_onboardingAcceptButton;
LABEL_8:
    [onboardingAcceptButton frame];
    MaxY = CGRectGetMaxY(v9);
    v5 = 15.0;
    goto LABEL_9;
  }

  onboardingAcceptButton = self->_subtitleLabel;
  if (onboardingAcceptButton)
  {
    goto LABEL_8;
  }

  onboardingAcceptButton = self->_titleLabel;
  if (onboardingAcceptButton)
  {
    goto LABEL_8;
  }

  onboardingAcceptButton = self->_timeStampLabel;
  if (onboardingAcceptButton)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(NCNotificationSummaryExpandedHeaderView *)self bounds:MaxY];
  CGRectGetWidth(v10);
  UIRectIntegralWithScale();
  v7 = self->_dividerView;

  [(UIView *)v7 setFrame:?];
}

- (void)resetClearButtonStateAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NCToggleControl *)self->_clearControl isExpanded])
  {
    self->_animateCollapseButtonLayout = 1;
    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
    if (v3)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __73__NCNotificationSummaryExpandedHeaderView_resetClearButtonStateAnimated___block_invoke;
      v6[3] = &unk_27836F6A8;
      v6[4] = self;
      [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v6 interactive:0 animations:200.0 completion:25.0];
    }

    else
    {
      clearControl = self->_clearControl;

      [(NCToggleControl *)clearControl setExpanded:0];
    }
  }
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_controlsView frame];
  [(NCNotificationSummaryExpandedHeaderView *)self convertRect:0 toView:?];
  v8.x = x;
  v8.y = y;
  v6 = CGRectContainsPoint(v9, v8);
  return [(NCToggleControl *)self->_clearControl isExpanded]&& v6;
}

- (id)containerViewForToggleControlClickInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  v5 = [v4 containerViewForClickInteractionPresentedContentForNotificationSummaryExpandedHeaderView:self];

  return v5;
}

- (void)toggleControlDidBeginClickInteraction:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  [v4 notificationSummaryExpandedHeaderViewDidBeginClickInteraction:self];
}

- (void)toggleControlDidPresentClickInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  [v4 notificationSummaryExpandedHeaderViewDidPresentClickInteractionPresentedContent:self];
}

- (void)toggleControlDidDismssClickInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  [v4 notificationSummaryExpandedHeaderViewDidDismssClickInteractionPresentedContent:self];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v5.receiver = self;
  v5.super_class = NCNotificationSummaryExpandedHeaderView;
  [(NCNotificationListBaseContentView *)&v5 adjustForContentSizeCategoryChange];
  [(UIView *)self->_controlsView removeFromSuperview];
  controlsView = self->_controlsView;
  self->_controlsView = 0;

  [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  return 1;
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  titleLabel = self->_titleLabel;
  v8 = a5;
  v9 = a3;
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:titleLabel style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_timeStampLabel style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_dividerView style:3 visualStylingProvider:v9 outgoingProvider:v8];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:self->_subtitleLabel style:0 visualStylingProvider:v9 outgoingProvider:v8];
}

- (double)_allowedWidthForButtonInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = CGRectGetWidth(v12) + -28.0;
  if (IsAccessibilityCategory)
  {
    v10 = v9;
  }

  else
  {
    v10 = (v9 + -10.0) * 0.5;
  }

  return v10;
}

- (unint64_t)_maximumNumberOfLinesForTitleText
{
  v2 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (unint64_t)_numberOfLinesForTitleTextInFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  titleLabel = self->_titleLabel;
  v9 = [(NCNotificationSummaryExpandedHeaderView *)self _maximumNumberOfLinesForTitleText];

  return [(NCNotificationListBaseContentView *)self _numberOfLinesForLabel:titleLabel maximumNumberOfLines:v9 inFrame:x, y, width, height];
}

- (void)_updateTextAttributes
{
  v3.receiver = self;
  v3.super_class = NCNotificationSummaryExpandedHeaderView;
  [(NCNotificationListBaseContentView *)&v3 _updateTextAttributes];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForDateLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForTitleTextLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForSubtitleTextLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForButtonLabel:self->_onboardingAcceptButton];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForButtonLabel:self->_onboardingRejectButton];
}

- (void)_updateTextAttributesForDateLabel
{
  timeStampLabel = self->_timeStampLabel;
  if (timeStampLabel)
  {
    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:timeStampLabel withTextStyle:*MEMORY[0x277D76968] fontWeight:0 additionalTraits:1 maximumNumberOfLines:*MEMORY[0x277D74400]];
    [(BSUIDateLabel *)self->_timeStampLabel setNumberOfLines:1];
    [(BSUIDateLabel *)self->_timeStampLabel setLineBreakMode:3];

    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForTitleTextLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:titleLabel withTextStyle:*MEMORY[0x277D76A08] fontWeight:0 additionalTraits:[(NCNotificationSummaryExpandedHeaderView *)self _maximumNumberOfLinesForTitleText] maximumNumberOfLines:*MEMORY[0x277D74420]];

    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSubtitleTextLabel
{
  if (self->_subtitleLabel)
  {
    v3 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);
    v5 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v5 = MEMORY[0x277D76968];
    }

    v6 = *v5;

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:self->_subtitleLabel withTextStyle:v6 fontWeight:0 additionalTraits:0 maximumNumberOfLines:*MEMORY[0x277D74418]];

    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForButtonLabel:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NCNotificationListBaseContentView *)self preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);
    v7 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v7 = MEMORY[0x277D769D0];
    }

    v8 = *v7;

    v9 = [v4 titleLabel];

    [(NCNotificationListBaseContentView *)self _updateTextAttributesForLabel:v9 withTextStyle:v8 fontWeight:0 additionalTraits:0 maximumNumberOfLines:*MEMORY[0x277D74418]];
    [(NCNotificationSummaryExpandedHeaderView *)self setNeedsLayout];
  }
}

- (void)_configureTimeStampLabelIfNecessary
{
  if (!self->_timeStampLabel)
  {
    if (self->_date)
    {
      [(NCNotificationSummaryExpandedHeaderView *)self _configureTimeStampLabel];
    }
  }
}

- (void)_configureTimeStampLabel
{
  v3 = [MEMORY[0x277CF0D50] sharedInstance];
  v4 = [v3 startLabelWithStartDate:self->_date endDate:0 timeZone:self->_timeZone allDay:0 forStyle:self->_dateFormatStyle];
  timeStampLabel = self->_timeStampLabel;
  self->_timeStampLabel = v4;

  [(BSUIDateLabel *)self->_timeStampLabel setDelegate:self];
  [(NCNotificationSummaryExpandedHeaderView *)self addSubview:self->_timeStampLabel];
  [(NCNotificationSummaryExpandedHeaderView *)self _updateTextAttributesForDateLabel];
  v6 = self->_timeStampLabel;
  v7 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:v6 style:0 visualStylingProvider:v7 outgoingProvider:0];
}

- (void)_recycleTimeStampLabel
{
  [(BSUIDateLabel *)self->_timeStampLabel setDelegate:0];
  timeStampLabel = self->_timeStampLabel;
  v4 = [(NCNotificationListBaseContentView *)self visualStylingProviderForCategory:1];
  [(NCNotificationListBaseContentView *)self _updateVisualStylingOfView:timeStampLabel style:0 visualStylingProvider:0 outgoingProvider:v4];

  v5 = [MEMORY[0x277CF0D50] sharedInstance];
  [v5 recycleLabel:self->_timeStampLabel];
}

- (void)_tearDownTimeStampLabel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__NCNotificationSummaryExpandedHeaderView__tearDownTimeStampLabel__block_invoke;
  v2[3] = &unk_27836F6A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __66__NCNotificationSummaryExpandedHeaderView__tearDownTimeStampLabel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 440);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 32) _recycleTimeStampLabel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 440);
    *(v3 + 440) = 0;
  }
}

- (void)_summaryOnboardingAccepted:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  if (v4)
  {
    v5 = v4;
    [v4 notificationSummaryExpandedHeaderView:self acceptedSummaryOnboarding:1];
    v4 = v5;
  }
}

- (void)_summaryOnboardingRejected:(id)a3
{
  v4 = [(NCNotificationSummaryExpandedHeaderView *)self delegate];
  if (v4)
  {
    v5 = v4;
    [v4 notificationSummaryExpandedHeaderView:self acceptedSummaryOnboarding:0];
    v4 = v5;
  }
}

- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);

  return WeakRetained;
}

- (NCNotificationSummaryExpandedHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
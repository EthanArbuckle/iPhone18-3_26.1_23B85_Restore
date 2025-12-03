@interface NCNotificationListCountIndicatorView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGRect)_insetBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListCountIndicatorView)initWithFrame:(CGRect)frame;
- (NCNotificationListCountIndicatorViewDelegate)delegate;
- (NSString)preferredContentSizeCategory;
- (double)_availableWidth;
- (id)_fontProvider;
- (id)_newIndicatorButtonWithTitle:(id)title symbolName:(id)name font:(id)font;
- (id)_subtitleLabelFont;
- (id)_titleLabelFont;
- (void)_configureContainerViewIfNecessary;
- (void)_configureSubtitleLabelIfNecessary;
- (void)_configureTitleLabelIfNecessary;
- (void)_invalidateButton:(id)button animated:(BOOL)animated;
- (void)_invalidateSubtitleLabelAnimated:(BOOL)animated;
- (void)_invalidateTitleLabelAnimated:(BOOL)animated;
- (void)_layoutVerticallyCenter;
- (void)_performLayout:(id)layout animated:(BOOL)animated completion:(id)completion;
- (void)_sizeToFitSubtitleLabelIfNecessary;
- (void)_sizeToFitTitleLabelIfNecessary;
- (void)_updateTitleLabelNumberOfLines;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)buttonWasLongPressed:(id)pressed;
- (void)buttonWasTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)updateCount:(unint64_t)count title:(id)title symbolImageName:(id)name contentHidden:(BOOL)hidden;
@end

@implementation NCNotificationListCountIndicatorView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NCNotificationListCountIndicatorView;
  [(NCNotificationListCountIndicatorView *)&v4 layoutSubviews];
  [(NCNotificationListCountIndicatorView *)self _configureTitleLabelIfNecessary];
  [(NCNotificationListCountIndicatorView *)self _configureSubtitleLabelIfNecessary];
  [(NCNotificationListCountIndicatorView *)self _updateTitleLabelNumberOfLines];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NCNotificationListCountIndicatorView_layoutSubviews__block_invoke;
  v3[3] = &unk_27836F6A8;
  v3[4] = self;
  [MEMORY[0x277D75D18] _performWithAnimation:v3];
}

- (void)_configureTitleLabelIfNecessary
{
  if (!self->_contentHidden && !self->_titleLabel)
  {
    titleString = self->_titleString;
    if (titleString)
    {
      titleSymbol = self->_titleSymbol;
      _titleLabelFont = [(NCNotificationListCountIndicatorView *)self _titleLabelFont];
      v6 = [(NCNotificationListCountIndicatorView *)self _newIndicatorButtonWithTitle:titleString symbolName:titleSymbol font:_titleLabelFont];
      titleLabel = self->_titleLabel;
      self->_titleLabel = v6;

      [(NCNotificationListCountIndicatorButton *)self->_titleLabel setDelegate:self];
      [(NCNotificationListCountIndicatorButton *)self->_titleLabel setNumberOfLines:self->_titleLabelNumberOfLines];
      [(NCNotificationListCountIndicatorButton *)self->_titleLabel setShouldAllowLongPressInteraction:self->_shouldAllowLongPressInteraction];

      [(NCNotificationListCountIndicatorView *)self _sizeToFitTitleLabelIfNecessary];
    }
  }
}

- (void)_configureSubtitleLabelIfNecessary
{
  if (!self->_contentHidden && !self->_subtitleLabel)
  {
    subtitleString = self->_subtitleString;
    if (subtitleString)
    {
      _subtitleLabelFont = [(NCNotificationListCountIndicatorView *)self _subtitleLabelFont];
      v5 = [(NCNotificationListCountIndicatorView *)self _newIndicatorButtonWithTitle:subtitleString symbolName:0 font:_subtitleLabelFont];
      subtitleLabel = self->_subtitleLabel;
      self->_subtitleLabel = v5;

      [(NCNotificationListCountIndicatorView *)self _sizeToFitSubtitleLabelIfNecessary];
    }
  }
}

- (void)_updateTitleLabelNumberOfLines
{
  titleLabel = self->_titleLabel;
  if (titleLabel && [(NCNotificationListCountIndicatorButton *)titleLabel numberOfLines]!= self->_titleLabelNumberOfLines)
  {
    [(NCNotificationListCountIndicatorButton *)self->_titleLabel setNumberOfLines:?];

    [(NCNotificationListCountIndicatorView *)self _sizeToFitTitleLabelIfNecessary];
  }
}

uint64_t __54__NCNotificationListCountIndicatorView_layoutSubviews__block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 448);
  if (v2)
  {
    [v2 transform];
    v2 = *(*(a1 + 32) + 448);
  }

  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v3;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:&v6];
  [*(a1 + 32) _sizeToFitTitleLabelIfNecessary];
  [*(a1 + 32) _sizeToFitSubtitleLabelIfNecessary];
  [*(a1 + 32) _layoutVerticallyCenter];
  v4 = *(*(a1 + 32) + 448);
  v6 = v9;
  v7 = v10;
  v8 = v11;
  return [v4 setTransform:&v6];
}

- (void)_sizeToFitTitleLabelIfNecessary
{
  if (self->_titleLabel)
  {
    [(NCNotificationListCountIndicatorView *)self _insetBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCNotificationListCountIndicatorView *)self _availableWidth];
    v12 = v11;
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    [(NCNotificationListCountIndicatorButton *)self->_titleLabel sizeThatFits:v12, CGRectGetHeight(v15)];
    [(NCNotificationListCountIndicatorView *)self bounds];
    CGRectGetWidth(v16);
    UIRectIntegralWithScale();
    titleLabel = self->_titleLabel;

    [(NCNotificationListCountIndicatorButton *)titleLabel setFrame:?];
  }
}

- (void)_sizeToFitSubtitleLabelIfNecessary
{
  if (self->_subtitleLabel)
  {
    [(NCNotificationListCountIndicatorView *)self _insetBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(NCNotificationListCountIndicatorView *)self _availableWidth];
    v12 = v11;
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    [(NCNotificationListCountIndicatorButton *)self->_subtitleLabel sizeThatFits:v12, CGRectGetHeight(v15)];
    UIRectIntegralWithScale();
    [(NCNotificationListCountIndicatorButton *)self->_subtitleLabel setFrame:?];
    subtitleLabel = self->_subtitleLabel;

    [(NCNotificationListCountIndicatorButton *)subtitleLabel setAlpha:1.0];
  }
}

- (void)_layoutVerticallyCenter
{
  [(NCNotificationListCountIndicatorButton *)self->_titleLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCNotificationListCountIndicatorButton *)self->_subtitleLabel frame];
  v14 = v13;
  v41 = v15;
  if (self->_titleLabel)
  {
    v16 = v11;
    v43.origin.x = v4;
    v17 = v12;
    v43.origin.y = v6;
    v43.size.width = v8;
    v43.size.height = v10;
    CGRectGetWidth(v43);
    v44.size.height = v10;
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    CGRectGetMaxY(v44);
    v12 = v17;
    v11 = v16;
  }

  if (self->_subtitleLabel)
  {
    v40 = v8;
    v18 = v11;
    v19 = v12;
    v20 = v14;
    v21 = v41;
    CGRectGetWidth(*&v11);
    v45.origin.x = v18;
    v45.origin.y = v19;
    v45.size.width = v14;
    v45.size.height = v41;
    CGRectGetHeight(v45);
  }

  [(NCNotificationListCountIndicatorView *)self bounds];
  UIRectCenteredRect();
  v23 = v22;
  [(UIView *)self->_containerView setFrame:?];
  [(UIView *)self->_containerView bounds];
  UIRectCenteredXInRect();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(UIView *)self->_containerView bounds];
  UIRectCenteredXInRect();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v23 - v36;
  [(NCNotificationListCountIndicatorButton *)self->_titleLabel setFrame:v25, v27, v29, v31];
  subtitleLabel = self->_subtitleLabel;

  [(NCNotificationListCountIndicatorButton *)subtitleLabel setFrame:v33, v38, v35, v37];
}

- (double)_availableWidth
{
  [(NCNotificationListCountIndicatorView *)self _insetBounds];

  return CGRectGetWidth(*&v2);
}

- (CGRect)_insetBounds
{
  [(NCNotificationListCountIndicatorView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v6 = CGRectGetWidth(v11) + -16.0;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v7 = CGRectGetHeight(v12);
  v8 = 0.0;
  v9 = 0.0;
  v10 = v6;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (NCNotificationListCountIndicatorView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NCNotificationListCountIndicatorView;
  v3 = [(NCNotificationListCountIndicatorView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCNotificationListCountIndicatorView *)v3 setMaximumContentSizeCategory:*MEMORY[0x277D76818]];
    v4->_animateLayoutForContentTransition = 0;
    v4->_titleLabelRepresentsNotificationCount = 0;
    layer = [(NCNotificationListCountIndicatorView *)v4 layer];
    [layer setAnchorPoint:{0.5, 0.5}];
  }

  return v4;
}

- (void)updateCount:(unint64_t)count title:(id)title symbolImageName:(id)name contentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v45 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  nameCopy = name;
  v12 = titleCopy;
  v13 = nameCopy;
  v33 = v12;
  v34 = v13;
  if (count)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_STRING_STATE_COUNT_TEXT" value:&stru_282FE84F8 table:0];
    count = [v14 localizedStringWithFormat:v16, count, 0];

    if (count)
    {
      countCopy = count;
      v18 = countCopy;
      if (v12)
      {
        v19 = 0;
        count = countCopy;
        v20 = v34;
      }

      else
      {

        count = 0;
        v19 = 1;
        v12 = v18;
        v20 = @"circlebadge.fill";
      }

      self->_titleLabelRepresentsNotificationCount = v19;
    }

    else
    {
      v18 = 0;
      v20 = v34;
    }
  }

  else
  {
    v18 = 0;
    v20 = v13;
  }

  v31 = v18;
  if (BSEqualStrings())
  {
    v21 = BSEqualStrings() ^ 1;
  }

  else
  {
    v21 = 1;
  }

  countCopy2 = count;
  v22 = BSEqualStrings();
  contentHidden = self->_contentHidden;
  v24 = v22 ^ 1;
  v30 = contentHidden != hiddenCopy;
  v25 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109632;
    HIDWORD(buf) = v21;
    v41 = 1024;
    v42 = v24;
    v43 = 1024;
    v44 = contentHidden != hiddenCopy;
    _os_log_impl(&dword_21E77E000, v25, OS_LOG_TYPE_DEFAULT, "CountIndicatorView updating count; titleChanged %{BOOL}d; subtitleChanged %{BOOL}d; contentHiddenChanged %{BOOL}d", &buf, 0x14u);
  }

  if ((v21 & 1) != 0 || (v24 & 1) != 0 || contentHidden != hiddenCopy)
  {
    objc_storeStrong(&self->_titleString, v12);
    objc_storeStrong(&self->_titleSymbol, v20);
    objc_storeStrong(&self->_subtitleString, countCopy2);
    self->_contentHidden = hiddenCopy;
    objc_initWeak(&buf, self);
    window = [(NCNotificationListCountIndicatorView *)self window];
    windowScene = [window windowScene];
    _FBSScene = [windowScene _FBSScene];

    v29 = +[NCBacklightAssertionManager sharedManager];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke;
    v35[3] = &unk_27836F8C0;
    objc_copyWeak(&v36, &buf);
    v37 = v21;
    v38 = v24;
    v39 = v30;
    v35[4] = self;
    [v29 queue_acquireAssertionWithReason:0 onScene:_FBSScene completion:v35];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&buf);
  }
}

void __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained frame];
  if (v5 > 1.0)
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 48) == 1)
  {
    [WeakRetained _invalidateTitleLabelAnimated:v2];
  }

  if (*(a1 + 49) == 1)
  {
    [WeakRetained _invalidateSubtitleLabelAnimated:v2];
  }

  v6 = [WeakRetained[59] length];
  v7 = 1;
  if (!v6)
  {
    v7 = 2;
  }

  WeakRetained[61] = v7;
  v8 = *(a1 + 50);
  if (v8 == 1 && (WeakRetained[60] & 1) == 0)
  {
    [WeakRetained[56] setHidden:0];
    LOBYTE(v8) = *(a1 + 50);
  }

  if (v8)
  {
    v9 = WeakRetained[56];
    if (WeakRetained[60])
    {
      v10 = *(MEMORY[0x277CBF2C0] + 16);
      *&v15.a = *MEMORY[0x277CBF2C0];
      *&v15.c = v10;
      *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v15, 0.25, 0.25);
    }

    [v9 setTransform:&v15];
    LOBYTE(v8) = *(a1 + 50);
  }

  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke_2;
  v13[3] = &unk_27836F898;
  v14 = v8;
  v13[4] = WeakRetained;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke_3;
  v12[3] = &unk_27836F6A8;
  v12[4] = WeakRetained;
  [v11 _performLayout:v13 animated:v2 completion:v12];
}

uint64_t __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 448);
    if (*(v2 + 480) == 1)
    {
      CGAffineTransformMakeScale(&v6, 0.25, 0.25);
    }

    else
    {
      v4 = *(MEMORY[0x277CBF2C0] + 16);
      *&v6.a = *MEMORY[0x277CBF2C0];
      *&v6.c = v4;
      *&v6.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    [v3 setTransform:&v6];
    [*(*(a1 + 32) + 448) setAlpha:(*(*(a1 + 32) + 480) ^ 1u)];
  }

  [*(a1 + 32) setNeedsLayout];
  return [*(a1 + 32) layoutIfNeeded];
}

void __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 480);
    v5 = *(v3 + 464);
    v6 = *(v3 + 472);
    v8[0] = 67109634;
    v8[1] = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_21E77E000, v2, OS_LOG_TYPE_DEFAULT, "CountIndicatorView update completed with contentHidden: %{BOOL}d; title: %{public}@; subtitle: %{public}@", v8, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (*(v7 + 480) == 1)
  {
    [*(v7 + 448) setHidden:1];
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_3);
}

void __88__NCNotificationListCountIndicatorView_updateCount_title_symbolImageName_contentHidden___block_invoke_9()
{
  v0 = +[NCBacklightAssertionManager sharedManager];
  [v0 queue_releaseAssertionWithReason:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(NCNotificationListCountIndicatorView *)self _configureTitleLabelIfNecessary];
  [(NCNotificationListCountIndicatorView *)self _configureSubtitleLabelIfNecessary];
  [(NCNotificationListCountIndicatorView *)self _availableWidth];
  v6 = v5;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(NCNotificationListCountIndicatorButton *)subtitleLabel sizeThatFits:v5, height];
  }

  [(NCNotificationListCountIndicatorButton *)self->_titleLabel sizeThatFits:v6, height];
  traitCollection = [(NCNotificationListCountIndicatorView *)self traitCollection];
  [traitCollection displayScale];
  UICeilToScale();
  v10 = v9;

  traitCollection2 = [(NCNotificationListCountIndicatorView *)self traitCollection];
  [traitCollection2 displayScale];
  UICeilToScale();
  v13 = v12;

  v14 = v10;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationListCountIndicatorView adjustForLegibilitySettingsChange:v6];
    }
  }

  if (([changeCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, change);
    [(NCNotificationListCountIndicatorButton *)self->_titleLabel setLegibilitySettings:changeCopy];
    [(NCNotificationListCountIndicatorButton *)self->_subtitleLabel setLegibilitySettings:changeCopy];
    [(NCNotificationListCountIndicatorView *)self setNeedsLayout];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    if (category)
    {
      [(NCNotificationListCountIndicatorView *)self adjustForContentSizeCategoryChange];
    }
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

  if (-[NCNotificationListCountIndicatorView adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory") && (-[NCNotificationListCountIndicatorView preferredContentSizeCategory](self, "preferredContentSizeCategory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [preferredContentSizeCategory isEqualToString:v5], v5, (v6 & 1) == 0))
  {
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(NCNotificationListCountIndicatorView *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
    [(NCNotificationListCountIndicatorView *)self _invalidateTitleLabelAnimated:0];
    [(NCNotificationListCountIndicatorView *)self _invalidateSubtitleLabelAnimated:0];
    [(NCNotificationListCountIndicatorView *)self setNeedsLayout];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_newIndicatorButtonWithTitle:(id)title symbolName:(id)name font:(id)font
{
  fontCopy = font;
  nameCopy = name;
  titleCopy = title;
  [(NCNotificationListCountIndicatorView *)self _configureContainerViewIfNecessary];
  v11 = [[NCNotificationListCountIndicatorButton alloc] initWithTitle:titleCopy symbolName:nameCopy withFont:fontCopy legibilitySettings:self->_legibilitySettings];

  titleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"focus-container-%@", titleCopy];

  [(NCNotificationListCountIndicatorButton *)v11 setAccessibilityIdentifier:titleCopy];
  [(NCNotificationListCountIndicatorButton *)v11 setDelegate:self];
  [(UIView *)self->_containerView addSubview:v11];
  [(UIView *)self->_containerView bringSubviewToFront:v11];

  return v11;
}

- (void)_configureContainerViewIfNecessary
{
  if (!self->_containerView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    containerView = self->_containerView;
    self->_containerView = v3;

    v5 = self->_containerView;

    [(NCNotificationListCountIndicatorView *)self addSubview:v5];
  }
}

- (void)_invalidateTitleLabelAnimated:(BOOL)animated
{
  [(NCNotificationListCountIndicatorView *)self _invalidateButton:self->_titleLabel animated:animated];
  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;
}

- (void)_invalidateSubtitleLabelAnimated:(BOOL)animated
{
  [(NCNotificationListCountIndicatorView *)self _invalidateButton:self->_subtitleLabel animated:animated];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = 0;
}

- (void)_invalidateButton:(id)button animated:(BOOL)animated
{
  animatedCopy = animated;
  buttonCopy = button;
  v7 = buttonCopy;
  if (buttonCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__NCNotificationListCountIndicatorView__invalidateButton_animated___block_invoke;
    v8[3] = &unk_27836F6A8;
    v9 = buttonCopy;
    [v9 hideContentAnimated:animatedCopy completion:v8];
    [(NCNotificationListCountIndicatorView *)self setNeedsLayout];
  }
}

- (void)_performLayout:(id)layout animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  layoutCopy = layout;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__NCNotificationListCountIndicatorView__performLayout_animated_completion___block_invoke;
  aBlock[3] = &unk_27836F8E8;
  v9 = completionCopy;
  v15 = v9;
  v10 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    v11 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__NCNotificationListCountIndicatorView__performLayout_animated_completion___block_invoke_2;
    v12[3] = &unk_27836F910;
    v13 = layoutCopy;
    [v11 _animateUsingSpringWithDampingRatio:0 response:v12 tracking:v10 dampingRatioSmoothing:0.845 responseSmoothing:0.531 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    layoutCopy[2](layoutCopy);
    v10[2](v10, 1, 0);
  }
}

uint64_t __75__NCNotificationListCountIndicatorView__performLayout_animated_completion___block_invoke(uint64_t result, int a2, char a3)
{
  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

- (void)buttonWasTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained notificationListCountIndicatorViewTapped:self];
}

- (void)buttonWasLongPressed:(id)pressed
{
  titleLabel = self->_titleLabel;
  if (titleLabel == pressed)
  {
    if (!self->_titleLabelRepresentsNotificationCount)
    {
      titleLabel = self;
    }

    v6 = titleLabel;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained notificationListCountIndicatorViewLongPressed:self presentingView:v6];
  }
}

- (id)_fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(NCNotificationListCountIndicatorView *)self adjustsFontForContentSizeCategory])
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

- (id)_titleLabelFont
{
  _fontProvider = [(NCNotificationListCountIndicatorView *)self _fontProvider];
  v3 = [_fontProvider preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:1];

  return v3;
}

- (id)_subtitleLabelFont
{
  _fontProvider = [(NCNotificationListCountIndicatorView *)self _fontProvider];
  v3 = [_fontProvider preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:1];

  return v3;
}

- (NCNotificationListCountIndicatorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface NCNotificationListCoalescingControlsView
- (BOOL)_isClearButtonExpanded;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)dismissModalFullScreenIfNeeded;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListCoalescingControlsViewDelegate)delegate;
- (UIEdgeInsets)_edgeInsets;
- (double)_effectiveButtonHeight;
- (double)_effectiveHorizontalPadding;
- (double)_effectiveValue:(double)value;
- (double)_effectiveVerticalPadding;
- (double)_imageDimension;
- (id)_clearButton;
- (id)_clearButtonTitle;
- (id)_newClearButton;
- (id)_newRestackButton;
- (id)_restackButtonTitle;
- (id)containerViewForToggleControlClickInteractionPresentedContent:(id)content;
- (void)_configureToggleControlPairIfNecessary;
- (void)_handleClearAll:(id)all;
- (void)_handleClearPrimaryAction:(id)action;
- (void)_handleClearTouchUpInside:(id)inside;
- (void)_handleRestackPrimaryAction:(id)action;
- (void)_handleRestackTouchUpInside:(id)inside;
- (void)_layoutToggleControlPair;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setClearAllText:(id)text;
- (void)setMaterialGroupNameBase:(id)base;
- (void)toggleControlDidBeginClickInteraction:(id)interaction;
- (void)toggleControlDidDismssClickInteractionPresentedContent:(id)content;
- (void)toggleControlDidPresentClickInteractionPresentedContent:(id)content;
@end

@implementation NCNotificationListCoalescingControlsView

- (BOOL)dismissModalFullScreenIfNeeded
{
  _clearButton = [(NCNotificationListCoalescingControlsView *)self _clearButton];
  dismissModalFullScreenIfNeeded = [_clearButton dismissModalFullScreenIfNeeded];

  return dismissModalFullScreenIfNeeded;
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  [(NCNotificationListCoalescingControlsView *)self bounds];
  [(NCNotificationListCoalescingControlsView *)self convertRect:0 toView:?];
  v8.x = x;
  v8.y = y;
  v6 = CGRectContainsPoint(v9, v8);
  return [(NCNotificationListCoalescingControlsView *)self _isClearButtonExpanded]&& v6;
}

- (void)setClearAllText:(id)text
{
  objc_storeStrong(&self->_clearAllText, text);
  textCopy = text;
  [(NCToggleControlPair *)self->_toggleControlPair setClearAllText:textCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListCoalescingControlsView;
  [(NCNotificationListCoalescingControlsView *)&v3 layoutSubviews];
  [(NCNotificationListCoalescingControlsView *)self _configureToggleControlPairIfNecessary];
  [(NCNotificationListCoalescingControlsView *)self _layoutToggleControlPair];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(NCNotificationListCoalescingControlsView *)self _configureToggleControlPairIfNecessary];
  toggleControlPair = self->_toggleControlPair;

  [(NCToggleControlPair *)toggleControlPair sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  adjustsFontForContentSizeCategory = [(NCNotificationListCoalescingControlsView *)self adjustsFontForContentSizeCategory];
  if (categoryCopy)
  {
    [(NCNotificationListCoalescingControlsView *)self _configureToggleControlPairIfNecessary];
  }

  [(NCToggleControlPair *)self->_toggleControlPair setAdjustsFontForContentSizeCategory:categoryCopy];
  if (adjustsFontForContentSizeCategory != [(NCNotificationListCoalescingControlsView *)self adjustsFontForContentSizeCategory])
  {
    toggleControlPair = self->_toggleControlPair;

    [(NCToggleControlPair *)toggleControlPair adjustForContentSizeCategoryChange];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  [(NCToggleControlPair *)self->_toggleControlPair adjustForContentSizeCategoryChange];
  toggleControlPair = self->_toggleControlPair;

  return [(NCToggleControlPair *)toggleControlPair adjustsFontForContentSizeCategory];
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
  [(NCToggleControlPair *)self->_toggleControlPair setMaterialGroupNameBase:baseCopy];
}

- (id)containerViewForToggleControlClickInteractionPresentedContent:(id)content
{
  delegate = [(NCNotificationListCoalescingControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate containerViewForCoalescingControlsPreviewInteractionPresentedContent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)toggleControlDidBeginClickInteraction:(id)interaction
{
  delegate = [(NCNotificationListCoalescingControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListCoalescingControlsViewDidBeginPreviewInteraction:self];
  }
}

- (void)toggleControlDidPresentClickInteractionPresentedContent:(id)content
{
  delegate = [(NCNotificationListCoalescingControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:self];
  }
}

- (void)toggleControlDidDismssClickInteractionPresentedContent:(id)content
{
  delegate = [(NCNotificationListCoalescingControlsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:self];
  }
}

- (double)_effectiveButtonHeight
{
  result = self->_effectiveButtonHeight;
  if (result == 0.0)
  {
    [(NCNotificationListCoalescingControlsView *)self _effectiveValue:34.0];
    self->_effectiveButtonHeight = result;
  }

  return result;
}

- (double)_effectiveHorizontalPadding
{
  result = self->_effectiveHorizontalPadding;
  if (result == 0.0)
  {
    [(NCNotificationListCoalescingControlsView *)self _effectiveValue:12.0];
    self->_effectiveHorizontalPadding = result;
  }

  return result;
}

- (double)_effectiveVerticalPadding
{
  result = self->_effectiveVerticalPadding;
  if (result == 0.0)
  {
    [(NCNotificationListCoalescingControlsView *)self _effectiveValue:8.0];
    self->_effectiveVerticalPadding = result;
  }

  return result;
}

- (double)_effectiveValue:(double)value
{
  if ([(NCNotificationListCoalescingControlsView *)self adjustsFontForContentSizeCategory])
  {
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v4 _scaledValueForValue:value];
    _NCMainScreenScale();
    UIRoundToScale();
  }

  _NCMainScreenScale();

  UICeilToScale();
  return result;
}

- (double)_imageDimension
{
  [(NCNotificationListCoalescingControlsView *)self _effectiveButtonHeight];
  v4 = v3;
  [(NCNotificationListCoalescingControlsView *)self _effectiveHorizontalPadding];
  v6 = v4 + v5 * -2.0;
  [(NCNotificationListCoalescingControlsView *)self _effectiveButtonHeight];
  return fmin(v6, v7 * 0.5);
}

- (id)_restackButtonTitle
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_LIST_SHOW_LESS" value:&stru_282FE84F8 table:0];

  return v3;
}

- (id)_clearButtonTitle
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR" value:&stru_282FE84F8 table:0];

  return v3;
}

- (UIEdgeInsets)_edgeInsets
{
  [(NCNotificationListCoalescingControlsView *)self _effectiveHorizontalPadding];
  v4 = v3;
  [(NCNotificationListCoalescingControlsView *)self _effectiveVerticalPadding];
  v6 = v4;
  v7 = v5;
  v8 = v4;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)_newRestackButton
{
  footerCell = self->_footerCell;
  v4 = NCUserNotificationsUIKitFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
  v6 = [NCToggleControl showLessControlWithMaterialRecipe:1 clearAllText:v5 glyphOrientation:!footerCell];

  [v6 setDelegate:self];
  [v6 setAnchorEdge:0];
  [v6 addTarget:self action:sel__handleRestackTouchUpInside_ forControlEvents:64];
  [v6 addTarget:self action:sel__handleRestackPrimaryAction_ forControlEvents:0x2000];
  return v6;
}

- (id)_newClearButton
{
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
  v5 = [NCToggleControl dismissControlWithMaterialRecipe:1 clearAllText:v4];

  [v5 setDelegate:self];
  [v5 setAnchorEdge:2];
  [v5 addTarget:self action:sel__handleClearTouchUpInside_ forControlEvents:64];
  [v5 addTarget:self action:sel__handleClearPrimaryAction_ forControlEvents:0x2000];
  [v5 addTarget:self forPreviewInteractionPresentedContentWithAction:sel__handleClearAll_];
  return v5;
}

- (void)_configureToggleControlPairIfNecessary
{
  if (!self->_toggleControlPair)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __82__NCNotificationListCoalescingControlsView__configureToggleControlPairIfNecessary__block_invoke;
    v4[3] = &unk_27836F6A8;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

uint64_t __82__NCNotificationListCoalescingControlsView__configureToggleControlPairIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [NCToggleControlPair alloc];
  v3 = [*(a1 + 32) _newRestackButton];
  v4 = [*(a1 + 32) _newClearButton];
  v5 = [(NCToggleControlPair *)v2 initWithLeadingToggleControl:v3 trailingToggleControl:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 440);
  *(v6 + 440) = v5;

  [*(*(a1 + 32) + 440) setClearAllText:*(*(a1 + 32) + 424)];
  v8 = *(a1 + 32);
  v9 = v8[55];
  v10 = [v8 materialGroupNameBase];
  [v9 setMaterialGroupNameBase:v10];

  v11 = *(a1 + 32);
  v12 = v11[55];

  return [v11 addSubview:v12];
}

- (void)_layoutToggleControlPair
{
  [(NCNotificationListCoalescingControlsView *)self _configureToggleControlPairIfNecessary];
  [(NCNotificationListCoalescingControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCToggleControlPair *)self->_toggleControlPair sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  _shouldReverseLayoutDirection = [(NCNotificationListCoalescingControlsView *)self _shouldReverseLayoutDirection];
  v16 = 0.0;
  if ((_shouldReverseLayoutDirection & 1) == 0)
  {
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    v16 = CGRectGetWidth(v19) - v12;
  }

  toggleControlPair = self->_toggleControlPair;

  [(NCToggleControlPair *)toggleControlPair setFrame:v16, 0.0, v12, v14];
}

- (void)_handleRestackTouchUpInside:(id)inside
{
  if ([(NCNotificationListCoalescingControlsView *)self _isClearButtonExpanded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationListCoalescingControlsView:self didTransitionToClearState:0];
    }
  }
}

- (void)_handleRestackPrimaryAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationListCoalescingControlsViewRequestsRestack:self];
  }
}

- (void)_handleClearTouchUpInside:(id)inside
{
  if (![(NCNotificationListCoalescingControlsView *)self _isClearButtonExpanded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationListCoalescingControlsView:self didTransitionToClearState:1];
    }
  }
}

- (void)_handleClearPrimaryAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationListCoalescingControlsViewRequestsClear:self];
  }
}

- (void)_handleClearAll:(id)all
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationListCoalescingControlsViewRequestsClearAll:self];
  }

  _clearButton = [(NCNotificationListCoalescingControlsView *)self _clearButton];
  [_clearButton dismissModalFullScreenIfNeeded];
}

- (id)_clearButton
{
  toggleControls = [(NCToggleControlPair *)self->_toggleControlPair toggleControls];
  lastObject = [toggleControls lastObject];

  return lastObject;
}

- (BOOL)_isClearButtonExpanded
{
  _clearButton = [(NCNotificationListCoalescingControlsView *)self _clearButton];
  isExpanded = [_clearButton isExpanded];

  return isExpanded;
}

- (NCNotificationListCoalescingControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
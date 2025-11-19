@interface NCNotificationListCoalescingControlsCell
+ (double)coalescingControlsCellHeightShowingCoalescingControls:(BOOL)a3;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)dismissModalFullScreenIfNeeded;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)a3;
- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate;
- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)a3;
- (void)_configureCoalescingControlsViewIfNecessary;
- (void)_layoutCoalescingControlsView;
- (void)layoutSubviews;
- (void)notificationListCoalescingControlsView:(id)a3 didTransitionToClearState:(BOOL)a4;
- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)a3;
- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)a3;
- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)a3;
- (void)notificationListCoalescingControlsViewRequestsClear:(id)a3;
- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)a3;
- (void)notificationListCoalescingControlsViewRequestsRestack:(id)a3;
- (void)resetClearButtonStateAnimated:(BOOL)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setClearAllText:(id)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setShouldShowCoalescingControls:(BOOL)a3;
@end

@implementation NCNotificationListCoalescingControlsCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListCoalescingControlsCell;
  [(NCNotificationListCoalescingControlsCell *)&v3 layoutSubviews];
  [(NCNotificationListCoalescingControlsCell *)self _configureCoalescingControlsViewIfNecessary];
  [(NCNotificationListCoalescingControlsCell *)self _layoutCoalescingControlsView];
}

- (void)setClearAllText:(id)a3
{
  objc_storeStrong(&self->_clearAllText, a3);
  v5 = a3;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setClearAllText:v5];
}

- (void)resetClearButtonStateAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationListCoalescingControlsCell *)self coalescingControlsView];
  [v4 resetClearButtonStateAnimated:v3];
}

- (BOOL)dismissModalFullScreenIfNeeded
{
  v2 = [(NCNotificationListCoalescingControlsCell *)self coalescingControlsView];
  v3 = [v2 dismissModalFullScreenIfNeeded];

  return v3;
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(NCNotificationListCoalescingControlsCell *)self coalescingControlsView];
  v6 = [v5 shouldReceiveTouchAtPointInWindowSpace:{x, y}];

  return v6;
}

- (void)setShouldShowCoalescingControls:(BOOL)a3
{
  if (self->_shouldShowCoalescingControls != a3)
  {
    self->_shouldShowCoalescingControls = a3;
    coalescingControlsView = self->_coalescingControlsView;
    v4 = 0.0;
    if (a3)
    {
      v4 = 1.0;
    }

    [(NCNotificationListCoalescingControlsView *)coalescingControlsView setAlpha:v4];
  }
}

+ (double)coalescingControlsCellHeightShowingCoalescingControls:(BOOL)a3
{
  if (a3)
  {
    v3 = 56.0;
  }

  else
  {
    v3 = 28.0;
  }

  v4 = +[NCNotificationListCoalescingControlsView labelTextStyle];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
  [v5 _scaledValueForValue:v3];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();

  _NCMainScreenScale();
  UICeilToScale();
  v8 = v7;

  return v8;
}

- (void)notificationListCoalescingControlsViewRequestsClear:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewRequestsRestack:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsRestackingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsView:(id)a3 didTransitionToClearState:(BOOL)a4
{
  v4 = a4;
  v6 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationListCoalescingControlsHandler:self didTransitionToClearState:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:self];
  }
}

- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:self];
  }
}

- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:self];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setAdjustsFontForContentSizeCategory:?];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(NCNotificationListCoalescingControlsCell *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    v3 = [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView adjustForContentSizeCategoryChange];
    if (v3)
    {
      [(NCNotificationListCoalescingControlsCell *)self setNeedsLayout];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)setMaterialGroupNameBase:(id)a3
{
  objc_storeStrong(&self->_materialGroupNameBase, a3);
  v5 = a3;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setMaterialGroupNameBase:self->_materialGroupNameBase];
}

- (void)_configureCoalescingControlsViewIfNecessary
{
  if (!self->_coalescingControlsView)
  {
    v3 = [NCNotificationListCoalescingControlsView alloc];
    [(NCNotificationListCoalescingControlsCell *)self bounds];
    v4 = [(NCNotificationListCoalescingControlsView *)v3 initWithFrame:?];
    coalescingControlsView = self->_coalescingControlsView;
    self->_coalescingControlsView = v4;

    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setFooterCell:self->_footerCell];
    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setDelegate:self];
    v6 = self->_coalescingControlsView;
    v7 = [(NCNotificationListCoalescingControlsCell *)self materialGroupNameBase];
    [(NCNotificationListCoalescingControlsView *)v6 setMaterialGroupNameBase:v7];

    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setClearAllText:self->_clearAllText];
    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setAdjustsFontForContentSizeCategory:[(NCNotificationListCoalescingControlsCell *)self adjustsFontForContentSizeCategory]];
    v8 = 0.0;
    if (self->_shouldShowCoalescingControls)
    {
      v8 = 1.0;
    }

    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setAlpha:v8];
    v9 = self->_coalescingControlsView;

    [(NCNotificationListCoalescingControlsCell *)self addSubview:v9];
  }
}

- (void)_layoutCoalescingControlsView
{
  [(NCNotificationListCoalescingControlsCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView frame];
  v12 = v11;
  v14 = v13;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView sizeThatFits:v8, v10];
  v16 = v15;
  v18 = v17;
  v19 = [(NCNotificationListCoalescingControlsCell *)self _shouldReverseLayoutDirection];
  v20 = 0.0;
  if ((v19 & 1) == 0)
  {
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    Width = CGRectGetWidth(v24);
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v20 = Width - CGRectGetWidth(v25);
  }

  coalescingControlsView = self->_coalescingControlsView;

  [(NCNotificationListCoalescingControlsView *)coalescingControlsView setFrame:v20, 0.0, v16, v18];
}

- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);

  return WeakRetained;
}

@end
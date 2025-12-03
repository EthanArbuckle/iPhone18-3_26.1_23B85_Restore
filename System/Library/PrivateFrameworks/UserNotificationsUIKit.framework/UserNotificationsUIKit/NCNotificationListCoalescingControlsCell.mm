@interface NCNotificationListCoalescingControlsCell
+ (double)coalescingControlsCellHeightShowingCoalescingControls:(BOOL)controls;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)dismissModalFullScreenIfNeeded;
- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space;
- (NCNotificationListCoalescingControlsHandlerDelegate)handlerDelegate;
- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)content;
- (void)_configureCoalescingControlsViewIfNecessary;
- (void)_layoutCoalescingControlsView;
- (void)layoutSubviews;
- (void)notificationListCoalescingControlsView:(id)view didTransitionToClearState:(BOOL)state;
- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)interaction;
- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)content;
- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)content;
- (void)notificationListCoalescingControlsViewRequestsClear:(id)clear;
- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)all;
- (void)notificationListCoalescingControlsViewRequestsRestack:(id)restack;
- (void)resetClearButtonStateAnimated:(BOOL)animated;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setClearAllText:(id)text;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setShouldShowCoalescingControls:(BOOL)controls;
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

- (void)setClearAllText:(id)text
{
  objc_storeStrong(&self->_clearAllText, text);
  textCopy = text;
  [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setClearAllText:textCopy];
}

- (void)resetClearButtonStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  coalescingControlsView = [(NCNotificationListCoalescingControlsCell *)self coalescingControlsView];
  [coalescingControlsView resetClearButtonStateAnimated:animatedCopy];
}

- (BOOL)dismissModalFullScreenIfNeeded
{
  coalescingControlsView = [(NCNotificationListCoalescingControlsCell *)self coalescingControlsView];
  dismissModalFullScreenIfNeeded = [coalescingControlsView dismissModalFullScreenIfNeeded];

  return dismissModalFullScreenIfNeeded;
}

- (BOOL)shouldReceiveTouchAtPointInWindowSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  coalescingControlsView = [(NCNotificationListCoalescingControlsCell *)self coalescingControlsView];
  v6 = [coalescingControlsView shouldReceiveTouchAtPointInWindowSpace:{x, y}];

  return v6;
}

- (void)setShouldShowCoalescingControls:(BOOL)controls
{
  if (self->_shouldShowCoalescingControls != controls)
  {
    self->_shouldShowCoalescingControls = controls;
    coalescingControlsView = self->_coalescingControlsView;
    v4 = 0.0;
    if (controls)
    {
      v4 = 1.0;
    }

    [(NCNotificationListCoalescingControlsView *)coalescingControlsView setAlpha:v4];
  }
}

+ (double)coalescingControlsCellHeightShowingCoalescingControls:(BOOL)controls
{
  if (controls)
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  UIRoundToScreenScale();

  _NCMainScreenScale();
  UICeilToScale();
  v8 = v7;

  return v8;
}

- (void)notificationListCoalescingControlsViewRequestsClear:(id)clear
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v5 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewRequestsClearAll:(id)all
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v5 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsViewRequestsRestack:(id)restack
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v5 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationListCoalescingControlsHandlerRequestsRestackingNotifications:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCoalescingControlsView:(id)view didTransitionToClearState:(BOOL)state
{
  stateCopy = state;
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (handlerDelegate)
  {
    v7 = handlerDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationListCoalescingControlsHandler:self didTransitionToClearState:stateCopy];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)containerViewForCoalescingControlsPreviewInteractionPresentedContent:(id)content
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (handlerDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [handlerDelegate containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListCoalescingControlsViewDidBeginPreviewInteraction:(id)interaction
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [handlerDelegate notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:self];
  }
}

- (void)notificationListCoalescingControlsViewDidPresentPreviewInteractionPresentedContent:(id)content
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [handlerDelegate notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:self];
  }
}

- (void)notificationListCoalescingControlsViewDidDismissPreviewInteractionPresentedContent:(id)content
{
  handlerDelegate = [(NCNotificationListCoalescingControlsCell *)self handlerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [handlerDelegate notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:self];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView setAdjustsFontForContentSizeCategory:?];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(NCNotificationListCoalescingControlsCell *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    adjustsFontForContentSizeCategory = [(NCNotificationListCoalescingControlsView *)self->_coalescingControlsView adjustForContentSizeCategoryChange];
    if (adjustsFontForContentSizeCategory)
    {
      [(NCNotificationListCoalescingControlsCell *)self setNeedsLayout];
      LOBYTE(adjustsFontForContentSizeCategory) = 1;
    }
  }

  return adjustsFontForContentSizeCategory;
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
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
    materialGroupNameBase = [(NCNotificationListCoalescingControlsCell *)self materialGroupNameBase];
    [(NCNotificationListCoalescingControlsView *)v6 setMaterialGroupNameBase:materialGroupNameBase];

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
  _shouldReverseLayoutDirection = [(NCNotificationListCoalescingControlsCell *)self _shouldReverseLayoutDirection];
  v20 = 0.0;
  if ((_shouldReverseLayoutDirection & 1) == 0)
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
@interface NCNotificationListPresentableGroup
- (BOOL)_shouldAllowRestacking;
- (BOOL)_shouldAllowRestackingFromFooter;
- (BOOL)actionsRevealedForNotificationListCell:(id)a3;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)isGrouped;
- (BOOL)shouldPerformClippingForNotificationListCell:(id)a3;
- (NCNotificationListBaseComponentDelegate)delegate;
- (NCNotificationListViewProtocol)listView;
- (NSString)materialGroupNameBase;
- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (id)_legibilitySettings;
- (id)containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:(id)a3;
- (id)footerViewForNotificationList:(id)a3;
- (id)headerViewForNotificationList:(id)a3;
- (void)_didSignificantInteraction;
- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)a3;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)notificationListCell:(id)a3 didBeginHidingActionsForSwipeInteraction:(id)a4;
- (void)notificationListCell:(id)a3 didBeginRevealingActionsForSwipeInteraction:(id)a4;
- (void)notificationListCell:(id)a3 didMoveToNewXPosition:(double)a4;
- (void)notificationListCoalescingControlsHandler:(id)a3 didTransitionToClearState:(BOOL)a4;
- (void)notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:(id)a3;
- (void)notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:(id)a3;
- (void)notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:(id)a3;
- (void)notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:(id)a3;
- (void)notificationListCoalescingControlsHandlerRequestsClearingNotifications:(id)a3;
- (void)notificationListCoalescingControlsHandlerRequestsRestackingNotifications:(id)a3;
- (void)notificationListWillLayoutSubviews;
- (void)recycleView:(id)a3;
- (void)setGrouped:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation NCNotificationListPresentableGroup

- (NCNotificationListViewProtocol)listView
{
  listView = self->_listView;
  if (!listView)
  {
    v4 = [NCNotificationListView alloc];
    v5 = objc_opt_class();
    v6 = [(NCNotificationListPresentableGroup *)self purposeWithSensitiveTextHashed:0];
    v7 = [(NCNotificationListPresentableGroup *)self purposeWithSensitiveTextHashed:1];
    v8 = [(NCNotificationListView *)v4 initWithModelType:v5 purpose:v6 purposeWithSensitiveTextHashed:v7];
    v9 = self->_listView;
    self->_listView = v8;

    [(NCNotificationListViewProtocol *)self->_listView setDataSource:self];
    [(NCNotificationListViewProtocol *)self->_listView setSupportsGrouping:1];
    [(NCNotificationListViewProtocol *)self->_listView setGrouped:1];
    v10 = [(NCNotificationListPresentableGroup *)self shouldImmediatelyReveal];
    listView = self->_listView;
    if (v10)
    {
      [(NCNotificationListViewProtocol *)listView setRevealed:1];
      [(NCNotificationListViewProtocol *)self->_listView setRevealPercentage:1.0];
      listView = self->_listView;
    }
  }

  return listView;
}

- (void)notificationListWillLayoutSubviews
{
  footerView = self->_footerView;
  if (footerView)
  {
    v3 = [(NCNotificationListPresentableGroup *)self _shouldAllowRestackingFromFooter];

    [(NCNotificationListCoalescingControlsCell *)footerView setShouldShowCoalescingControls:v3];
  }
}

- (NCNotificationListBaseComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isGrouped
{
  if ([(NCNotificationListPresentableGroup *)self count]< 2)
  {
    return 0;
  }

  v3 = [(NCNotificationListPresentableGroup *)self listView];
  v4 = [v3 isGrouped];

  return v4;
}

- (void)setGrouped:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(NCNotificationListPresentableGroup *)self count]> 1 || [(NCNotificationListPresentableGroup *)self count]== 1 && (v5 & 1) == 0)
  {
    v7 = [(NCNotificationListPresentableGroup *)self listView];
    v8 = [v7 isGrouped];

    if (v8 != v5)
    {
      if (v4)
      {
        objc_initWeak(&location, self);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __58__NCNotificationListPresentableGroup_setGrouped_animated___block_invoke;
        v9[3] = &unk_27836F498;
        objc_copyWeak(&v10, &location);
        [(NCNotificationListPresentableGroup *)self _scrollToTopIfNecessaryAndPerformBlock:v9];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }

      else
      {

        [(NCNotificationListPresentableGroup *)self toggleGroupedState];
      }
    }
  }
}

void __58__NCNotificationListPresentableGroup_setGrouped_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained toggleGroupedState];
}

- (BOOL)actionsRevealedForNotificationListCell:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self cellWithActionsRevealed];

  return v5 == v4;
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationListPresentableGroup *)self headerView];
  [v5 adjustForLegibilitySettingsChange:v4];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(NCNotificationListPresentableGroup *)self listView];
  [v3 invalidateData];

  v4 = [(NCNotificationListPresentableGroup *)self headerView];
  [v4 adjustForContentSizeCategoryChange];

  v5 = [(NCNotificationListPresentableGroup *)self footerView];
  [v5 adjustForContentSizeCategoryChange];

  return 1;
}

- (NSString)materialGroupNameBase
{
  materialGroupNameBase = self->_materialGroupNameBase;
  if (!materialGroupNameBase)
  {
    v4 = [(NCNotificationListPresentableGroup *)self delegate];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v4 backgroundGroupNameBaseForNotificationListBaseComponent:self];
      v6 = self->_materialGroupNameBase;
      self->_materialGroupNameBase = v5;
    }

    materialGroupNameBase = self->_materialGroupNameBase;
  }

  return materialGroupNameBase;
}

- (id)headerViewForNotificationList:(id)a3
{
  if (!self->_headerView && [(NCNotificationListPresentableGroup *)self _shouldAllowRestacking])
  {
    v4 = [(NCNotificationListPresentableGroup *)self listView];
    [v4 bounds];
    Width = CGRectGetWidth(v17);

    v6 = [(NCNotificationListPresentableGroup *)self headerText];
    v7 = [(NCNotificationListPresentableGroup *)self clearAllText];
    v8 = [(NCNotificationListCache *)self->_notificationListCache coalescingHeaderCellWithTitle:v6 clearAllText:v7 width:Width];
    headerView = self->_headerView;
    self->_headerView = v8;

    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setTitle:v6];
    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setClearAllText:v7];
    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setHandlerDelegate:self];
    v10 = self->_headerView;
    v11 = [(NCNotificationListPresentableGroup *)self materialGroupNameBase];
    [(NCNotificationListCoalescingHeaderCell *)v10 setMaterialGroupNameBase:v11];

    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setAdjustsFontForContentSizeCategory:1];
    v12 = self->_headerView;
    v13 = [(NCNotificationListPresentableGroup *)self _legibilitySettings];
    [(NCNotificationListCoalescingHeaderCell *)v12 adjustForLegibilitySettingsChange:v13];

    [(NCNotificationListCoalescingHeaderCell *)self->_headerView frame];
    self->_headerViewHeight = CGRectGetHeight(v18);
  }

  v14 = self->_headerView;

  return v14;
}

- (void)recycleView:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v11;
    headerView = self->_headerView;
    if (headerView == v4)
    {
      v6 = v4;
      self->_headerView = 0;

      v7 = [(NCNotificationListPresentableGroup *)self notificationListCache];
      [v7 recycleNotificationListCoalescingHeaderCell:v6];
LABEL_7:
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = v11;
    if (self->_footerView == v8)
    {
      v9 = v8;
      [(NCNotificationListCoalescingControlsCell *)v8 setFooterCell:0];
      footerView = self->_footerView;
      self->_footerView = 0;

      v7 = [(NCNotificationListPresentableGroup *)self notificationListCache];
      [v7 recycleNotificationListCoalescingControlsCell:v9];
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (id)footerViewForNotificationList:(id)a3
{
  if (!self->_footerView && [(NCNotificationListPresentableGroup *)self _shouldAllowRestacking])
  {
    v4 = [(NCNotificationListPresentableGroup *)self listView];
    [v4 bounds];
    Width = CGRectGetWidth(v15);

    v6 = [(NCNotificationListPresentableGroup *)self notificationListCache];
    v7 = [v6 coalescingControlsCellWithWidth:Width];
    footerView = self->_footerView;
    self->_footerView = v7;

    [(NCNotificationListCoalescingControlsCell *)self->_footerView setFooterCell:1];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView setHandlerDelegate:self];
    v9 = [(NCNotificationListPresentableGroup *)self clearAllText];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView setClearAllText:v9];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView setShouldShowCoalescingControls:[(NCNotificationListPresentableGroup *)self _shouldAllowRestackingFromFooter]];
    v10 = self->_footerView;
    v11 = [(NCNotificationListPresentableGroup *)self materialGroupNameBase];
    [(NCNotificationListCoalescingControlsCell *)v10 setMaterialGroupNameBase:v11];

    [(NCNotificationListCoalescingControlsCell *)self->_footerView setAdjustsFontForContentSizeCategory:1];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView frame];
    self->_footerViewHeight = CGRectGetHeight(v16);
  }

  v12 = self->_footerView;

  return v12;
}

- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  if (![(NCNotificationListPresentableGroup *)self _shouldAllowRestacking:a3])
  {
    return 0.0;
  }

  [(NCNotificationListPresentableGroup *)self headerViewHeight];
  return result;
}

- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  if (![(NCNotificationListPresentableGroup *)self _shouldAllowRestackingFromFooter:a3])
  {
    return 0.0;
  }

  [(NCNotificationListPresentableGroup *)self footerViewHeight];
  return result;
}

- (BOOL)shouldPerformClippingForNotificationListCell:(id)a3
{
  v3 = [(NCNotificationListPresentableGroup *)self listView];
  v4 = [v3 isGrouped];

  return v4 ^ 1;
}

- (void)notificationListCell:(id)a3 didBeginHidingActionsForSwipeInteraction:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:v6 revealed:0];
  }

  [(NCNotificationListPresentableGroup *)self setCellWithActionsRevealed:0];
}

- (void)notificationListCell:(id)a3 didBeginRevealingActionsForSwipeInteraction:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:v6 revealed:1];
  }

  [(NCNotificationListPresentableGroup *)self setCellWithActionsRevealed:v8];
}

- (void)notificationListCell:(id)a3 didMoveToNewXPosition:(double)a4
{
  v8 = a3;
  v6 = [(NCNotificationListPresentableGroup *)self listView];
  [v6 updateSubviewTranslation:a4];

  v7 = [(NCNotificationListPresentableGroup *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 notificationListPresentableGroup:self didReceivedHorizontalTranslation:v8 forCell:a4];
  }
}

- (void)notificationListCoalescingControlsHandlerRequestsRestackingNotifications:(id)a3
{
  v4 = a3;
  [(NCNotificationListPresentableGroup *)self _didSignificantInteraction];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __111__NCNotificationListPresentableGroup_notificationListCoalescingControlsHandlerRequestsRestackingNotifications___block_invoke;
  v5[3] = &unk_27836F498;
  objc_copyWeak(&v6, &location);
  [(NCNotificationListPresentableGroup *)self _scrollToTopIfNecessaryAndPerformBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __111__NCNotificationListPresentableGroup_notificationListCoalescingControlsHandlerRequestsRestackingNotifications___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained toggleGroupedState];
}

- (void)notificationListCoalescingControlsHandlerRequestsClearingNotifications:(id)a3
{
  v4 = a3;
  [(NCNotificationListPresentableGroup *)self _didSignificantInteraction];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __109__NCNotificationListPresentableGroup_notificationListCoalescingControlsHandlerRequestsClearingNotifications___block_invoke;
  v5[3] = &unk_278370A90;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [(NCNotificationListPresentableGroup *)self _scrollToTopIfNecessaryAndPerformBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __109__NCNotificationListPresentableGroup_notificationListCoalescingControlsHandlerRequestsClearingNotifications___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained listView];
    [v3 setGrouped:1];

    [*(a1 + 32) clearAll];
    WeakRetained = v4;
  }
}

- (void)notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Requests clearing all", v7, 2u);
  }

  [(NCNotificationListPresentableGroup *)self _didSignificantInteraction];
  v6 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 notificationListBaseComponentRequestsClearingAll:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
  }
}

- (id)containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:(id)a3
{
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListBaseComponent:self didBeginUserInteractionWithViewController:0];
  }
}

- (void)notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListBaseComponent:self didPresentCoalescingControlsHandler:v5 inForceTouchState:1];
  }
}

- (void)notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListBaseComponent:self didPresentCoalescingControlsHandler:v5 inForceTouchState:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
  }
}

- (void)notificationListCoalescingControlsHandler:(id)a3 didTransitionToClearState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NCNotificationListPresentableGroup *)self delegate];
  [v7 notificationListBaseComponent:self didTransitionCoalescingControlsHandler:v6 toClearState:v4];

  [(NCNotificationListPresentableGroup *)self _didSignificantInteraction];
}

- (void)_didSignificantInteraction
{
  v3 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationListBaseComponentDidSignificantUserInteraction:self];
  }
}

- (BOOL)_shouldAllowRestacking
{
  v3 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldAllowRestackingForNotificationListPresentableGroup:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldAllowRestackingFromFooter
{
  [(NCNotificationListViewProtocol *)self->_listView frame];
  Height = CGRectGetHeight(v7);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = CGRectGetHeight(v8) * 0.8;

  result = [(NCNotificationListPresentableGroup *)self _shouldAllowRestacking];
  if (Height <= v5)
  {
    return 0;
  }

  return result;
}

- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)a3
{
  v8 = a3;
  v4 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 shouldScrollToTopForNotificationListBaseComponent:self];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NCNotificationListPresentableGroup *)self listView];
  v7 = [v6 isVisibleForViewAtIndex:0];

  if (!v7 || v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 notificationListPresentableGroup:self requestsScrollToTopOfCollectionWithCompletion:v8];
    }
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (id)_legibilitySettings
{
  v3 = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 legibilitySettingsForNotificationListBaseComponent:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
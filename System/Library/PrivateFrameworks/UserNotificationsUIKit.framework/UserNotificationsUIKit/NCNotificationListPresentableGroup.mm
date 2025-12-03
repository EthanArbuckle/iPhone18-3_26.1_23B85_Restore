@interface NCNotificationListPresentableGroup
- (BOOL)_shouldAllowRestacking;
- (BOOL)_shouldAllowRestackingFromFooter;
- (BOOL)actionsRevealedForNotificationListCell:(id)cell;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)isGrouped;
- (BOOL)shouldPerformClippingForNotificationListCell:(id)cell;
- (NCNotificationListBaseComponentDelegate)delegate;
- (NCNotificationListViewProtocol)listView;
- (NSString)materialGroupNameBase;
- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (id)_legibilitySettings;
- (id)containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:(id)content;
- (id)footerViewForNotificationList:(id)list;
- (id)headerViewForNotificationList:(id)list;
- (void)_didSignificantInteraction;
- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)block;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)notificationListCell:(id)cell didBeginHidingActionsForSwipeInteraction:(id)interaction;
- (void)notificationListCell:(id)cell didBeginRevealingActionsForSwipeInteraction:(id)interaction;
- (void)notificationListCell:(id)cell didMoveToNewXPosition:(double)position;
- (void)notificationListCoalescingControlsHandler:(id)handler didTransitionToClearState:(BOOL)state;
- (void)notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:(id)interaction;
- (void)notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:(id)content;
- (void)notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:(id)content;
- (void)notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:(id)notifications;
- (void)notificationListCoalescingControlsHandlerRequestsClearingNotifications:(id)notifications;
- (void)notificationListCoalescingControlsHandlerRequestsRestackingNotifications:(id)notifications;
- (void)notificationListWillLayoutSubviews;
- (void)recycleView:(id)view;
- (void)setGrouped:(BOOL)grouped animated:(BOOL)animated;
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
    shouldImmediatelyReveal = [(NCNotificationListPresentableGroup *)self shouldImmediatelyReveal];
    listView = self->_listView;
    if (shouldImmediatelyReveal)
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
    _shouldAllowRestackingFromFooter = [(NCNotificationListPresentableGroup *)self _shouldAllowRestackingFromFooter];

    [(NCNotificationListCoalescingControlsCell *)footerView setShouldShowCoalescingControls:_shouldAllowRestackingFromFooter];
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

  listView = [(NCNotificationListPresentableGroup *)self listView];
  isGrouped = [listView isGrouped];

  return isGrouped;
}

- (void)setGrouped:(BOOL)grouped animated:(BOOL)animated
{
  animatedCopy = animated;
  groupedCopy = grouped;
  if ([(NCNotificationListPresentableGroup *)self count]> 1 || [(NCNotificationListPresentableGroup *)self count]== 1 && (groupedCopy & 1) == 0)
  {
    listView = [(NCNotificationListPresentableGroup *)self listView];
    isGrouped = [listView isGrouped];

    if (isGrouped != groupedCopy)
    {
      if (animatedCopy)
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

- (BOOL)actionsRevealedForNotificationListCell:(id)cell
{
  cellCopy = cell;
  cellWithActionsRevealed = [(NCNotificationListPresentableGroup *)self cellWithActionsRevealed];

  return cellWithActionsRevealed == cellCopy;
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  headerView = [(NCNotificationListPresentableGroup *)self headerView];
  [headerView adjustForLegibilitySettingsChange:changeCopy];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  listView = [(NCNotificationListPresentableGroup *)self listView];
  [listView invalidateData];

  headerView = [(NCNotificationListPresentableGroup *)self headerView];
  [headerView adjustForContentSizeCategoryChange];

  footerView = [(NCNotificationListPresentableGroup *)self footerView];
  [footerView adjustForContentSizeCategoryChange];

  return 1;
}

- (NSString)materialGroupNameBase
{
  materialGroupNameBase = self->_materialGroupNameBase;
  if (!materialGroupNameBase)
  {
    delegate = [(NCNotificationListPresentableGroup *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [delegate backgroundGroupNameBaseForNotificationListBaseComponent:self];
      v6 = self->_materialGroupNameBase;
      self->_materialGroupNameBase = v5;
    }

    materialGroupNameBase = self->_materialGroupNameBase;
  }

  return materialGroupNameBase;
}

- (id)headerViewForNotificationList:(id)list
{
  if (!self->_headerView && [(NCNotificationListPresentableGroup *)self _shouldAllowRestacking])
  {
    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView bounds];
    Width = CGRectGetWidth(v17);

    headerText = [(NCNotificationListPresentableGroup *)self headerText];
    clearAllText = [(NCNotificationListPresentableGroup *)self clearAllText];
    v8 = [(NCNotificationListCache *)self->_notificationListCache coalescingHeaderCellWithTitle:headerText clearAllText:clearAllText width:Width];
    headerView = self->_headerView;
    self->_headerView = v8;

    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setTitle:headerText];
    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setClearAllText:clearAllText];
    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setHandlerDelegate:self];
    v10 = self->_headerView;
    materialGroupNameBase = [(NCNotificationListPresentableGroup *)self materialGroupNameBase];
    [(NCNotificationListCoalescingHeaderCell *)v10 setMaterialGroupNameBase:materialGroupNameBase];

    [(NCNotificationListCoalescingHeaderCell *)self->_headerView setAdjustsFontForContentSizeCategory:1];
    v12 = self->_headerView;
    _legibilitySettings = [(NCNotificationListPresentableGroup *)self _legibilitySettings];
    [(NCNotificationListCoalescingHeaderCell *)v12 adjustForLegibilitySettingsChange:_legibilitySettings];

    [(NCNotificationListCoalescingHeaderCell *)self->_headerView frame];
    self->_headerViewHeight = CGRectGetHeight(v18);
  }

  v14 = self->_headerView;

  return v14;
}

- (void)recycleView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = viewCopy;
    headerView = self->_headerView;
    if (headerView == v4)
    {
      v6 = v4;
      self->_headerView = 0;

      notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
      [notificationListCache recycleNotificationListCoalescingHeaderCell:v6];
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

    v8 = viewCopy;
    if (self->_footerView == v8)
    {
      v9 = v8;
      [(NCNotificationListCoalescingControlsCell *)v8 setFooterCell:0];
      footerView = self->_footerView;
      self->_footerView = 0;

      notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
      [notificationListCache recycleNotificationListCoalescingControlsCell:v9];
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (id)footerViewForNotificationList:(id)list
{
  if (!self->_footerView && [(NCNotificationListPresentableGroup *)self _shouldAllowRestacking])
  {
    listView = [(NCNotificationListPresentableGroup *)self listView];
    [listView bounds];
    Width = CGRectGetWidth(v15);

    notificationListCache = [(NCNotificationListPresentableGroup *)self notificationListCache];
    v7 = [notificationListCache coalescingControlsCellWithWidth:Width];
    footerView = self->_footerView;
    self->_footerView = v7;

    [(NCNotificationListCoalescingControlsCell *)self->_footerView setFooterCell:1];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView setHandlerDelegate:self];
    clearAllText = [(NCNotificationListPresentableGroup *)self clearAllText];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView setClearAllText:clearAllText];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView setShouldShowCoalescingControls:[(NCNotificationListPresentableGroup *)self _shouldAllowRestackingFromFooter]];
    v10 = self->_footerView;
    materialGroupNameBase = [(NCNotificationListPresentableGroup *)self materialGroupNameBase];
    [(NCNotificationListCoalescingControlsCell *)v10 setMaterialGroupNameBase:materialGroupNameBase];

    [(NCNotificationListCoalescingControlsCell *)self->_footerView setAdjustsFontForContentSizeCategory:1];
    [(NCNotificationListCoalescingControlsCell *)self->_footerView frame];
    self->_footerViewHeight = CGRectGetHeight(v16);
  }

  v12 = self->_footerView;

  return v12;
}

- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  if (![(NCNotificationListPresentableGroup *)self _shouldAllowRestacking:list])
  {
    return 0.0;
  }

  [(NCNotificationListPresentableGroup *)self headerViewHeight];
  return result;
}

- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  if (![(NCNotificationListPresentableGroup *)self _shouldAllowRestackingFromFooter:list])
  {
    return 0.0;
  }

  [(NCNotificationListPresentableGroup *)self footerViewHeight];
  return result;
}

- (BOOL)shouldPerformClippingForNotificationListCell:(id)cell
{
  listView = [(NCNotificationListPresentableGroup *)self listView];
  isGrouped = [listView isGrouped];

  return isGrouped ^ 1;
}

- (void)notificationListCell:(id)cell didBeginHidingActionsForSwipeInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:interactionCopy revealed:0];
  }

  [(NCNotificationListPresentableGroup *)self setCellWithActionsRevealed:0];
}

- (void)notificationListCell:(id)cell didBeginRevealingActionsForSwipeInteraction:(id)interaction
{
  cellCopy = cell;
  interactionCopy = interaction;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didTransitionActionsForSwipeInteraction:interactionCopy revealed:1];
  }

  [(NCNotificationListPresentableGroup *)self setCellWithActionsRevealed:cellCopy];
}

- (void)notificationListCell:(id)cell didMoveToNewXPosition:(double)position
{
  cellCopy = cell;
  listView = [(NCNotificationListPresentableGroup *)self listView];
  [listView updateSubviewTranslation:position];

  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationListPresentableGroup:self didReceivedHorizontalTranslation:cellCopy forCell:position];
  }
}

- (void)notificationListCoalescingControlsHandlerRequestsRestackingNotifications:(id)notifications
{
  notificationsCopy = notifications;
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

- (void)notificationListCoalescingControlsHandlerRequestsClearingNotifications:(id)notifications
{
  notificationsCopy = notifications;
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

- (void)notificationListCoalescingControlsHandlerRequestsClearingAllNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Requests clearing all", v7, 2u);
  }

  [(NCNotificationListPresentableGroup *)self _didSignificantInteraction];
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponentRequestsClearingAll:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
  }
}

- (id)containerViewForCoalescingControlsHandlerPreviewInteractionPresentedContent:(id)content
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListCoalescingControlsHandlerDidBeginPreviewInteraction:(id)interaction
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didBeginUserInteractionWithViewController:0];
  }
}

- (void)notificationListCoalescingControlsHandlerDidPresentPreviewInteractionPresentedContent:(id)content
{
  contentCopy = content;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didPresentCoalescingControlsHandler:contentCopy inForceTouchState:1];
  }
}

- (void)notificationListCoalescingControlsHandlerDidDismissPreviewInteractionPresentedContent:(id)content
{
  contentCopy = content;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didPresentCoalescingControlsHandler:contentCopy inForceTouchState:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponent:self didEndUserInteractionWithViewController:0];
  }
}

- (void)notificationListCoalescingControlsHandler:(id)handler didTransitionToClearState:(BOOL)state
{
  stateCopy = state;
  handlerCopy = handler;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  [delegate notificationListBaseComponent:self didTransitionCoalescingControlsHandler:handlerCopy toClearState:stateCopy];

  [(NCNotificationListPresentableGroup *)self _didSignificantInteraction];
}

- (void)_didSignificantInteraction
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
  }
}

- (BOOL)_shouldAllowRestacking
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate shouldAllowRestackingForNotificationListPresentableGroup:self];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = CGRectGetHeight(v8) * 0.8;

  result = [(NCNotificationListPresentableGroup *)self _shouldAllowRestacking];
  if (Height <= v5)
  {
    return 0;
  }

  return result;
}

- (void)_scrollToTopIfNecessaryAndPerformBlock:(id)block
{
  blockCopy = block;
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate shouldScrollToTopForNotificationListBaseComponent:self];
  }

  else
  {
    v5 = 0;
  }

  listView = [(NCNotificationListPresentableGroup *)self listView];
  v7 = [listView isVisibleForViewAtIndex:0];

  if (!v7 || v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate notificationListPresentableGroup:self requestsScrollToTopOfCollectionWithCompletion:blockCopy];
    }
  }

  else if (blockCopy)
  {
    blockCopy[2]();
  }
}

- (id)_legibilitySettings
{
  delegate = [(NCNotificationListPresentableGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate legibilitySettingsForNotificationListBaseComponent:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
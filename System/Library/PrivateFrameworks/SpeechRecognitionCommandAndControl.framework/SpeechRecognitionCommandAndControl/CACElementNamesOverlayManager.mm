@interface CACElementNamesOverlayManager
- (CACElementNamesOverlayManagerDelegate)delegate;
- (id)voiceOverDescriptions;
- (void)hide;
- (void)hideWithoutAnimation;
- (void)setDelegate:(id)delegate;
- (void)showNamesForElements:(id)elements;
- (void)startDelayedDimmingOfNumbers;
- (void)stopDelayedDimmingOfNumbers;
@end

@implementation CACElementNamesOverlayManager

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CACSimpleContentViewManager *)self setContentViewManagerDelegate:obj];
  }
}

- (void)showNamesForElements:(id)elements
{
  elementsCopy = elements;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CACElementNamesOverlayManager_showNamesForElements___block_invoke_2;
  v6[3] = &unk_279CECB38;
  v7 = elementsCopy;
  v5 = elementsCopy;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:&__block_literal_global_45 updateHandler:v6];
}

CACElementNamesOverlayViewController *__54__CACElementNamesOverlayManager_showNamesForElements___block_invoke()
{
  v0 = objc_alloc_init(CACElementNamesOverlayViewController);

  return v0;
}

- (id)voiceOverDescriptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  viewController = [(CACSimpleContentViewManager *)selfCopy viewController];
  items = [viewController items];
  v5 = [items copy];

  objc_sync_exit(selfCopy);
  v6 = +[CACVoiceOverShortDescriptionGenerator sharedInstance];
  v7 = [v6 shortDescriptionsForItems:v5 style:1];

  return v7;
}

- (void)hide
{
  v2.receiver = self;
  v2.super_class = CACElementNamesOverlayManager;
  [(CACSimpleContentViewManager *)&v2 hide];
}

- (void)hideWithoutAnimation
{
  v2.receiver = self;
  v2.super_class = CACElementNamesOverlayManager;
  [(CACSimpleContentViewManager *)&v2 hideWithoutAnimation];
}

- (void)startDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  [(CACSimpleContentViewManager *)self setActiveDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]];
  viewController = [(CACSimpleContentViewManager *)self viewController];
  view = [viewController view];
  [view setAlpha:1.0];

  delegate = [(CACElementNamesOverlayManager *)self delegate];
  if ([delegate isOverlayFadingEnabledForElementNamesOverlayManager:self])
  {
    delegate2 = [(CACElementNamesOverlayManager *)self delegate];
    v6 = [delegate2 isAlwaysShowingElementNamesOverlayManager:self];

    if (v6)
    {
      delegate3 = [(CACElementNamesOverlayManager *)self delegate];
      [delegate3 overlayFadeDelayForElementNamesOverlayManager:self];
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__CACElementNamesOverlayManager_startDelayedDimmingOfNumbers__block_invoke;
      block[3] = &unk_279CEB2D0;
      block[4] = self;
      dispatch_after(v9, MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
  }
}

uint64_t __61__CACElementNamesOverlayManager_startDelayedDimmingOfNumbers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDimmingTransactionID];
  result = [*(a1 + 32) pendingDimmingTransactionID];
  if (v2 == result)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __61__CACElementNamesOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2;
    v4[3] = &unk_279CEB2D0;
    v4[4] = *(a1 + 32);
    return [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0 completion:1.0];
  }

  return result;
}

void __61__CACElementNamesOverlayManager_startDelayedDimmingOfNumbers__block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  [v6 overlayFadeOpacityForElementNamesOverlayManager:*(a1 + 32)];
  v3 = v2;
  v4 = [*(a1 + 32) viewController];
  v5 = [v4 view];
  [v5 setAlpha:v3];
}

- (void)stopDelayedDimmingOfNumbers
{
  [(CACSimpleContentViewManager *)self setPendingDimmingTransactionID:[(CACSimpleContentViewManager *)self pendingDimmingTransactionID]+ 1];
  viewController = [(CACSimpleContentViewManager *)self viewController];
  view = [viewController view];
  [view setAlpha:1.0];
}

- (CACElementNamesOverlayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
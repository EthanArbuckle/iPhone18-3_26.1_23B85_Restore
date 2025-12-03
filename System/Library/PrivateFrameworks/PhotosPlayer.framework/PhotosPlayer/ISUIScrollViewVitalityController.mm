@interface ISUIScrollViewVitalityController
- (BOOL)canPerformVitality;
- (ISUIScrollViewVitalityController)init;
- (UIScrollView)_scrollView;
- (id)visibilityOffsetHelper;
- (void)_reduceMotionDidChange:(id)change;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation ISUIScrollViewVitalityController

- (UIScrollView)_scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->__scrollView);

  return WeakRetained;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__ISUIScrollViewVitalityController_scrollViewDidEndDecelerating___block_invoke;
  v3[3] = &unk_279A2A180;
  v3[4] = self;
  [(ISScrollViewVitalityController *)self performChanges:v3];
}

uint64_t __65__ISUIScrollViewVitalityController_scrollViewDidEndDecelerating___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScrolling:0];
  v2 = *(a1 + 32);

  return [v2 setDecelerating:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  v7 = draggingCopy;
  v8 = 0.0;
  if (decelerateCopy)
  {
    if ([draggingCopy isPagingEnabled])
    {
      v9 = [v7 valueForKey:@"_pagingFriction"];
      [v9 doubleValue];
      v11 = v10;

      v8 = v11 * 33.81 + -32.046;
    }

    else
    {
      v8 = 0.6;
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ISUIScrollViewVitalityController_scrollViewDidEndDragging_willDecelerate___block_invoke;
  v12[3] = &unk_279A2A090;
  v12[4] = self;
  *&v12[5] = v8;
  v13 = decelerateCopy;
  [(ISScrollViewVitalityController *)self performChanges:v12];
}

uint64_t __76__ISUIScrollViewVitalityController_scrollViewDidEndDragging_willDecelerate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 40)];
  [v2 setEstimatedScrollEndDate:v3];

  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {

    return [v4 setDecelerating:1];
  }

  else
  {

    return [v4 setScrolling:0];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __95__ISUIScrollViewVitalityController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke;
  v5[3] = &unk_279A2A410;
  v5[4] = self;
  v5[5] = offset;
  [(ISScrollViewVitalityController *)self performChanges:v5];
}

uint64_t __95__ISUIScrollViewVitalityController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasTargetContentOffset:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = v3[1];

  return [v2 setTargetContentOffset:{v4, v5}];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__ISUIScrollViewVitalityController_scrollViewWillBeginDragging___block_invoke;
  v3[3] = &unk_279A2A180;
  v3[4] = self;
  [(ISScrollViewVitalityController *)self performChanges:v3];
}

uint64_t __64__ISUIScrollViewVitalityController_scrollViewWillBeginDragging___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScrolling:1];
  [*(a1 + 32) setDecelerating:0];
  [*(a1 + 32) setEstimatedScrollEndDate:0];
  v2 = *(a1 + 32);

  return [v2 setHasTargetContentOffset:0];
}

- (void)_reduceMotionDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__ISUIScrollViewVitalityController__reduceMotionDidChange___block_invoke;
  v3[3] = &unk_279A2A180;
  v3[4] = self;
  is_dispatch_on_main_queue(v3);
}

- (BOOL)canPerformVitality
{
  v4.receiver = self;
  v4.super_class = ISUIScrollViewVitalityController;
  canPerformVitality = [(ISScrollViewVitalityController *)&v4 canPerformVitality];
  if (canPerformVitality)
  {
    LOBYTE(canPerformVitality) = !UIAccessibilityIsReduceMotionEnabled();
  }

  return canPerformVitality;
}

- (id)visibilityOffsetHelper
{
  visibilityOffsetHelper = self->_visibilityOffsetHelper;
  if (!visibilityOffsetHelper)
  {
    v4 = objc_alloc_init(ISUIVisibilityOffsetHelper);
    v5 = self->_visibilityOffsetHelper;
    self->_visibilityOffsetHelper = v4;

    visibilityOffsetHelper = self->_visibilityOffsetHelper;
  }

  return visibilityOffsetHelper;
}

- (ISUIScrollViewVitalityController)init
{
  v5.receiver = self;
  v5.super_class = ISUIScrollViewVitalityController;
  v2 = [(ISScrollViewVitalityController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__reduceMotionDidChange_ name:*MEMORY[0x277D764C0] object:0];
  }

  return v2;
}

@end
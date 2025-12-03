@interface WFQuickLookController
- (CGSize)preferredContentSize;
- (WFQuickLookController)initWithInitialIndex:(int64_t)index;
- (WFQuickLookController)initWithNibName:(id)name bundle:(id)bundle;
- (id)activityItemForDocumentInteractionController:(id)controller;
- (void)_updateAppearance:(BOOL)appearance;
- (void)updateCurrentIndex;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)wf_refreshPreviewItemAtIndex:(int64_t)index;
@end

@implementation WFQuickLookController

- (id)activityItemForDocumentInteractionController:(id)controller
{
  controllerCopy = controller;
  if ([-[WFQuickLookController superclass](self "superclass")])
  {
    v15.receiver = self;
    v15.super_class = WFQuickLookController;
    v5 = [(QLPreviewController *)&v15 activityItemForDocumentInteractionController:controllerCopy];
    objc_opt_class();
    NSClassFromString(&cfstr_Qlactivityitem.isa);
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v5;
    if (isKindOfClass & 1) != 0 && (objc_opt_respondsToSelector())
    {
      currentPreviewItem = [(QLPreviewController *)self currentPreviewItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = currentPreviewItem;
        originalItem = [v9 originalItem];

        if (originalItem)
        {
          v11 = objc_opt_new();
          originalItem2 = [v9 originalItem];
          [v11 setItem:originalItem2];

          v13 = [MEMORY[0x277CDAA48] itemWithPreviewItem:v11];
          [v7 setActivityPreviewItem:v13];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)wf_refreshPreviewItemAtIndex:(int64_t)index
{
  if ([(QLPreviewController *)self currentPreviewItemIndex]== index)
  {

    [(QLPreviewController *)self refreshCurrentPreviewItem];
  }

  else
  {
    indexesPendingRefresh = [(WFQuickLookController *)self indexesPendingRefresh];
    [indexesPendingRefresh addIndex:index];
  }
}

- (CGSize)preferredContentSize
{
  v10.receiver = self;
  v10.super_class = WFQuickLookController;
  [(WFQuickLookController *)&v10 preferredContentSize];
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  if (v2 != *MEMORY[0x277CBF3A8] || v3 != v5)
  {
    v7 = fmax(400.0 / v2, 300.0 / v3);
    v4 = v2;
    v5 = v3;
    if (v7 > 1.0)
    {
      v4 = v2 * v7;
      v5 = v3 * v7;
    }
  }

  v8 = v4;
  v9 = v5;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateCurrentIndex
{
  currentPreviewItemIndex = [(QLPreviewController *)self currentPreviewItemIndex];
  if (self->_lastIndex != currentPreviewItemIndex)
  {
    [(WFQuickLookController *)self willChangeValueForKey:@"currentPreviewItemIndex"];
    [(WFQuickLookController *)self didChangeValueForKey:@"currentPreviewItemIndex"];
    indexesPendingRefresh = [(WFQuickLookController *)self indexesPendingRefresh];
    if ([indexesPendingRefresh containsIndex:currentPreviewItemIndex])
    {
      [indexesPendingRefresh removeAllIndexes];
      [(QLPreviewController *)self refreshCurrentPreviewItem];
    }
  }

  self->_lastIndex = currentPreviewItemIndex;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = WFQuickLookController;
  [(QLPreviewController *)&v5 viewWillDisappear:disappear];
  indexTimer = [(WFQuickLookController *)self indexTimer];
  [indexTimer invalidate];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFQuickLookController;
  [(QLPreviewController *)&v5 viewWillAppear:appear];
  [(QLPreviewController *)self setCurrentPreviewItemIndex:[(WFQuickLookController *)self initialIndex]];
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateCurrentIndex selector:0 userInfo:1 repeats:0.100000001];
  [(WFQuickLookController *)self setIndexTimer:v4];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = WFQuickLookController;
  [(WFQuickLookController *)&v19 viewWillLayoutSubviews];
  if ([(WFQuickLookController *)self modalPresentationStyle]== 2)
  {
    view = [(WFQuickLookController *)self view];
    superview = [view superview];
    view2 = [(WFQuickLookController *)self view];
    superview2 = [view2 superview];
    [superview2 center];
    v8 = v7;
    v10 = v9;
    view3 = [(WFQuickLookController *)self view];
    superview3 = [view3 superview];
    v12Superview = [superview3 superview];
    [superview convertPoint:v12Superview fromView:{v8, v10}];
    v15 = v14;
    v17 = v16;
    view4 = [(WFQuickLookController *)self view];
    [view4 setCenter:{v15, v17}];
  }
}

- (void)_updateAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  if (![(WFQuickLookController *)self isEmbedded])
  {
    v5.receiver = self;
    v5.super_class = WFQuickLookController;
    [(QLPreviewController *)&v5 _updateAppearance:appearanceCopy];
  }
}

- (WFQuickLookController)initWithInitialIndex:(int64_t)index
{
  v6.receiver = self;
  v6.super_class = WFQuickLookController;
  v4 = [(WFQuickLookController *)&v6 init];
  [(WFQuickLookController *)v4 setInitialIndex:index];
  return v4;
}

- (WFQuickLookController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = WFQuickLookController;
  v4 = [(QLPreviewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    indexesPendingRefresh = v4->_indexesPendingRefresh;
    v4->_indexesPendingRefresh = v5;

    v7 = v4;
  }

  return v4;
}

@end
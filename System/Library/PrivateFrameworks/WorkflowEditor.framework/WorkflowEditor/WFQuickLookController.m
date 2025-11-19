@interface WFQuickLookController
- (CGSize)preferredContentSize;
- (WFQuickLookController)initWithInitialIndex:(int64_t)a3;
- (WFQuickLookController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)activityItemForDocumentInteractionController:(id)a3;
- (void)_updateAppearance:(BOOL)a3;
- (void)updateCurrentIndex;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)wf_refreshPreviewItemAtIndex:(int64_t)a3;
@end

@implementation WFQuickLookController

- (id)activityItemForDocumentInteractionController:(id)a3
{
  v4 = a3;
  if ([-[WFQuickLookController superclass](self "superclass")])
  {
    v15.receiver = self;
    v15.super_class = WFQuickLookController;
    v5 = [(QLPreviewController *)&v15 activityItemForDocumentInteractionController:v4];
    objc_opt_class();
    NSClassFromString(&cfstr_Qlactivityitem.isa);
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v5;
    if (isKindOfClass & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v8 = [(QLPreviewController *)self currentPreviewItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        v10 = [v9 originalItem];

        if (v10)
        {
          v11 = objc_opt_new();
          v12 = [v9 originalItem];
          [v11 setItem:v12];

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

- (void)wf_refreshPreviewItemAtIndex:(int64_t)a3
{
  if ([(QLPreviewController *)self currentPreviewItemIndex]== a3)
  {

    [(QLPreviewController *)self refreshCurrentPreviewItem];
  }

  else
  {
    v5 = [(WFQuickLookController *)self indexesPendingRefresh];
    [v5 addIndex:a3];
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
  v3 = [(QLPreviewController *)self currentPreviewItemIndex];
  if (self->_lastIndex != v3)
  {
    [(WFQuickLookController *)self willChangeValueForKey:@"currentPreviewItemIndex"];
    [(WFQuickLookController *)self didChangeValueForKey:@"currentPreviewItemIndex"];
    v4 = [(WFQuickLookController *)self indexesPendingRefresh];
    if ([v4 containsIndex:v3])
    {
      [v4 removeAllIndexes];
      [(QLPreviewController *)self refreshCurrentPreviewItem];
    }
  }

  self->_lastIndex = v3;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFQuickLookController;
  [(QLPreviewController *)&v5 viewWillDisappear:a3];
  v4 = [(WFQuickLookController *)self indexTimer];
  [v4 invalidate];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFQuickLookController;
  [(QLPreviewController *)&v5 viewWillAppear:a3];
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
    v3 = [(WFQuickLookController *)self view];
    v4 = [v3 superview];
    v5 = [(WFQuickLookController *)self view];
    v6 = [v5 superview];
    [v6 center];
    v8 = v7;
    v10 = v9;
    v11 = [(WFQuickLookController *)self view];
    v12 = [v11 superview];
    v13 = [v12 superview];
    [v4 convertPoint:v13 fromView:{v8, v10}];
    v15 = v14;
    v17 = v16;
    v18 = [(WFQuickLookController *)self view];
    [v18 setCenter:{v15, v17}];
  }
}

- (void)_updateAppearance:(BOOL)a3
{
  v3 = a3;
  if (![(WFQuickLookController *)self isEmbedded])
  {
    v5.receiver = self;
    v5.super_class = WFQuickLookController;
    [(QLPreviewController *)&v5 _updateAppearance:v3];
  }
}

- (WFQuickLookController)initWithInitialIndex:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = WFQuickLookController;
  v4 = [(WFQuickLookController *)&v6 init];
  [(WFQuickLookController *)v4 setInitialIndex:a3];
  return v4;
}

- (WFQuickLookController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFQuickLookController;
  v4 = [(QLPreviewController *)&v9 initWithNibName:a3 bundle:a4];
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
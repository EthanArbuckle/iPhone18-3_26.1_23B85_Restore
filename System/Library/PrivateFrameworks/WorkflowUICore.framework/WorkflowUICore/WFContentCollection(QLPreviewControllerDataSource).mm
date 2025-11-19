@interface WFContentCollection(QLPreviewControllerDataSource)
- (id)previewController:()QLPreviewControllerDataSource previewItemAtIndex:;
- (uint64_t)numberOfPreviewItemsInPreviewController:()QLPreviewControllerDataSource;
@end

@implementation WFContentCollection(QLPreviewControllerDataSource)

- (id)previewController:()QLPreviewControllerDataSource previewItemAtIndex:
{
  v6 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __91__WFContentCollection_QLPreviewControllerDataSource__previewController_previewItemAtIndex___block_invoke;
  v15 = &unk_279EF5098;
  v16 = v6;
  v17 = a4;
  v7 = v6;
  v8 = _Block_copy(&v12);
  v9 = _Block_copy(v8);
  v10 = [a1 previewProxyItemAtIndex:a4 refreshBlock:{v9, v12, v13, v14, v15}];

  return v10;
}

- (uint64_t)numberOfPreviewItemsInPreviewController:()QLPreviewControllerDataSource
{
  v1 = [a1 items];
  v2 = [v1 count];

  return v2;
}

@end
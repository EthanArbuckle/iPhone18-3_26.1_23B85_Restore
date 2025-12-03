@interface VUIARQLPreviewController
- (VUIARQLPreviewController)initWithQuickLookPreviewItem:(id)item;
- (VUIARQLPreviewController)initWithQuickLookWebKitItem:(id)item;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
@end

@implementation VUIARQLPreviewController

- (VUIARQLPreviewController)initWithQuickLookPreviewItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = VUIARQLPreviewController;
  v5 = [(VUIARQLPreviewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VUIARQLPreviewController *)v5 _commonInit];
    [(VUIARQLPreviewController *)v6 setQuickLookPreviewItem:itemCopy];
  }

  return v6;
}

- (VUIARQLPreviewController)initWithQuickLookWebKitItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = VUIARQLPreviewController;
  v5 = [(VUIARQLPreviewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VUIARQLPreviewController *)v5 _commonInit];
    [(VUIARQLPreviewController *)v6 setQuickLookWebKitItem:itemCopy];
  }

  return v6;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  controllerCopy = controller;
  quickLookWebKitItem = self->_quickLookWebKitItem;
  if (quickLookWebKitItem || (quickLookWebKitItem = self->_quickLookPreviewItem) != 0)
  {
    v7 = quickLookWebKitItem;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:&stru_1F5DB25C0];
    v7 = [objc_alloc(MEMORY[0x1E697A0B8]) initWithFileAtURL:v9];
  }

  return v7;
}

@end
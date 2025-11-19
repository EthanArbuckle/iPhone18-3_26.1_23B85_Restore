@interface _UIDICActivityItemProvider
- (BOOL)_shouldExecuteItemOperationForActivity:(id)a3;
- (UIDocumentInteractionController)documentInteractionController;
- (_UIDICActivityItemProvider)initWithPlaceholderItem:(id)a3 documentInteractionController:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 openURLAnnotationForActivityType:(id)a4;
- (id)loadedURL;
- (void)main;
@end

@implementation _UIDICActivityItemProvider

- (_UIDICActivityItemProvider)initWithPlaceholderItem:(id)a3 documentInteractionController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = _UIDICActivityItemProvider;
  v7 = [(UIActivityItemProvider *)&v10 initWithPlaceholderItem:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_documentInteractionController, v6);
  }

  return v8;
}

- (id)loadedURL
{
  v2 = [(_UIDICActivityItemProvider *)self documentInteractionController];
  v3 = [v2 URL];

  return v3;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDICActivityItemProvider *)self item];
  v9 = [v7 isEqualToString:@"com.apple.UIKit.activity.CopyToPasteboard"];

  if (v9)
  {
    v10 = [(UIActivityItemProvider *)self activityViewControllerPlaceholderItem:v6];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (id)activityViewController:(id)a3 openURLAnnotationForActivityType:(id)a4
{
  v4 = [(_UIDICActivityItemProvider *)self documentInteractionController:a3];
  v5 = [v4 annotation];

  return v5;
}

- (void)main
{
  v5.receiver = self;
  v5.super_class = _UIDICActivityItemProvider;
  [(UIActivityItemProvider *)&v5 main];
  v3 = [(_UIDICActivityItemProvider *)self loadedURL];
  v4 = [v3 ui_downloadOperationForActivity:0];
  [v4 main];
}

- (BOOL)_shouldExecuteItemOperationForActivity:(id)a3
{
  v3 = a3;
  if (_shouldExecuteItemOperationForActivity__onceToken != -1)
  {
    [_UIDICActivityItemProvider _shouldExecuteItemOperationForActivity:];
  }

  if (_shouldExecuteItemOperationForActivity__executeInShareUI == 1)
  {
    v4 = [v3 _activitySupportsPromiseURLs] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (UIDocumentInteractionController)documentInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_documentInteractionController);

  return WeakRetained;
}

@end
@interface _UIDICActivityItemProvider
- (BOOL)_shouldExecuteItemOperationForActivity:(id)activity;
- (UIDocumentInteractionController)documentInteractionController;
- (_UIDICActivityItemProvider)initWithPlaceholderItem:(id)item documentInteractionController:(id)controller;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller openURLAnnotationForActivityType:(id)type;
- (id)loadedURL;
- (void)main;
@end

@implementation _UIDICActivityItemProvider

- (_UIDICActivityItemProvider)initWithPlaceholderItem:(id)item documentInteractionController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = _UIDICActivityItemProvider;
  v7 = [(UIActivityItemProvider *)&v10 initWithPlaceholderItem:item];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_documentInteractionController, controllerCopy);
  }

  return v8;
}

- (id)loadedURL
{
  documentInteractionController = [(_UIDICActivityItemProvider *)self documentInteractionController];
  v3 = [documentInteractionController URL];

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  item = [(_UIDICActivityItemProvider *)self item];
  v9 = [typeCopy isEqualToString:@"com.apple.UIKit.activity.CopyToPasteboard"];

  if (v9)
  {
    v10 = [(UIActivityItemProvider *)self activityViewControllerPlaceholderItem:controllerCopy];
  }

  else
  {
    v10 = item;
  }

  v11 = v10;

  return v11;
}

- (id)activityViewController:(id)controller openURLAnnotationForActivityType:(id)type
{
  v4 = [(_UIDICActivityItemProvider *)self documentInteractionController:controller];
  annotation = [v4 annotation];

  return annotation;
}

- (void)main
{
  v5.receiver = self;
  v5.super_class = _UIDICActivityItemProvider;
  [(UIActivityItemProvider *)&v5 main];
  loadedURL = [(_UIDICActivityItemProvider *)self loadedURL];
  v4 = [loadedURL ui_downloadOperationForActivity:0];
  [v4 main];
}

- (BOOL)_shouldExecuteItemOperationForActivity:(id)activity
{
  activityCopy = activity;
  if (_shouldExecuteItemOperationForActivity__onceToken != -1)
  {
    [_UIDICActivityItemProvider _shouldExecuteItemOperationForActivity:];
  }

  if (_shouldExecuteItemOperationForActivity__executeInShareUI == 1)
  {
    v4 = [activityCopy _activitySupportsPromiseURLs] ^ 1;
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
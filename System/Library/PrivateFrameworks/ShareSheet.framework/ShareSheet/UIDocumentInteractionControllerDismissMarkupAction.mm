@interface UIDocumentInteractionControllerDismissMarkupAction
+ (id)actionWithTitle:(id)title handler:(id)handler;
+ (id)actionWithTitle:(id)title image:(id)image handler:(id)handler;
- (UIDocumentInteractionControllerDismissMarkupAction)initWithTitle:(id)title image:(id)image handler:(id)handler;
@end

@implementation UIDocumentInteractionControllerDismissMarkupAction

- (UIDocumentInteractionControllerDismissMarkupAction)initWithTitle:(id)title image:(id)image handler:(id)handler
{
  titleCopy = title;
  imageCopy = image;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = UIDocumentInteractionControllerDismissMarkupAction;
  v11 = [(UIDocumentInteractionControllerDismissMarkupAction *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    objc_storeStrong(&v11->_image, image);
    v14 = [handlerCopy copy];
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;
  }

  return v11;
}

+ (id)actionWithTitle:(id)title handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v7 = [[UIDocumentInteractionControllerDismissMarkupAction alloc] initWithTitle:titleCopy image:0 handler:handlerCopy];

  return v7;
}

+ (id)actionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  v10 = [[UIDocumentInteractionControllerDismissMarkupAction alloc] initWithTitle:titleCopy image:imageCopy handler:handlerCopy];

  return v10;
}

@end
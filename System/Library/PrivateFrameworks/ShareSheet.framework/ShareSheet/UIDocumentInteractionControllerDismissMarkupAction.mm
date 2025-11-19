@interface UIDocumentInteractionControllerDismissMarkupAction
+ (id)actionWithTitle:(id)a3 handler:(id)a4;
+ (id)actionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (UIDocumentInteractionControllerDismissMarkupAction)initWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
@end

@implementation UIDocumentInteractionControllerDismissMarkupAction

- (UIDocumentInteractionControllerDismissMarkupAction)initWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = UIDocumentInteractionControllerDismissMarkupAction;
  v11 = [(UIDocumentInteractionControllerDismissMarkupAction *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    objc_storeStrong(&v11->_image, a4);
    v14 = [v10 copy];
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;
  }

  return v11;
}

+ (id)actionWithTitle:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[UIDocumentInteractionControllerDismissMarkupAction alloc] initWithTitle:v6 image:0 handler:v5];

  return v7;
}

+ (id)actionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[UIDocumentInteractionControllerDismissMarkupAction alloc] initWithTitle:v9 image:v8 handler:v7];

  return v10;
}

@end
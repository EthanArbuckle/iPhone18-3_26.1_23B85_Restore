@interface UIViewController(SKUIContextActionsPresenting)
- (SKUIContextActionsPresentationRegistration)registerForPreviewingFromSourceView:()SKUIContextActionsPresenting handler:;
- (void)unregisterForPreviewing:()SKUIContextActionsPresenting;
@end

@implementation UIViewController(SKUIContextActionsPresenting)

- (SKUIContextActionsPresentationRegistration)registerForPreviewingFromSourceView:()SKUIContextActionsPresenting handler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[SKUIContextActionsPresentationRegistration alloc] initWithViewController:self handler:v6];

  v9 = [objc_alloc(MEMORY[0x277D758D0]) initWithView:v7];
  [v9 setDelegate:v8];
  [(SKUIContextActionsPresentationRegistration *)v8 setPreviewInteraction:v9];
  v10 = objc_alloc_init(MEMORY[0x277D75708]);
  [v10 setAllowableMovement:10.0];
  [v7 addGestureRecognizer:v10];

  [(SKUIContextActionsPresentationRegistration *)v8 setLongPressGestureRecognizer:v10];

  return v8;
}

- (void)unregisterForPreviewing:()SKUIContextActionsPresenting
{
  v3 = a3;
  longPressGestureRecognizer = [v3 longPressGestureRecognizer];
  if (longPressGestureRecognizer)
  {
    view = [longPressGestureRecognizer view];
    [view removeGestureRecognizer:longPressGestureRecognizer];
  }

  previewInteraction = [v3 previewInteraction];
  [previewInteraction cancelInteraction];

  [v3 setPreviewInteraction:0];
}

@end
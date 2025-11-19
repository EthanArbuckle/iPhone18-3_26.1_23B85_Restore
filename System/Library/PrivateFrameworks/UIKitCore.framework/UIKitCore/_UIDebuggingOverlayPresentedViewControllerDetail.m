@interface _UIDebuggingOverlayPresentedViewControllerDetail
- (void)_updateForInspectedViewController:(id)a3;
@end

@implementation _UIDebuggingOverlayPresentedViewControllerDetail

- (void)_updateForInspectedViewController:(id)a3
{
  v10 = a3;
  v4 = [v10 presentedViewController];

  if (v4)
  {
    v5 = objc_alloc_init(UIDebuggingInformationVCDetailViewController);
    v6 = [v10 presentedViewController];
    [(UIDebuggingInformationVCDetailViewController *)v5 inspectVC:v6];

    [(_UIDebuggingOverlayViewControllerDetail *)self setViewController:v5];
    v7 = [v10 presentedViewController];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(_UIDebuggingOverlayDetail *)self setDetail:v9];
  }

  else
  {
    [(_UIDebuggingOverlayDetail *)self setDetail:@"None"];
  }
}

@end
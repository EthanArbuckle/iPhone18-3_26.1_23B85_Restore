@interface UIViewController(PXOneUpPresentation)
+ (uint64_t)_px_prepareClassForOneUpPresentation;
- (PXOneUpPresentation)px_oneUpPresentation;
- (uint64_t)_pxswizzled_oneUpPresentation_viewDidAppear:()PXOneUpPresentation;
- (uint64_t)_pxswizzled_oneUpPresentation_viewIsAppearing:()PXOneUpPresentation;
- (uint64_t)_pxswizzled_oneUpPresentation_viewWillAppear:()PXOneUpPresentation;
- (uint64_t)px_oneUpPresentationStyle;
- (void)_pxswizzled_oneUpPresentation_viewDidDisappear:()PXOneUpPresentation;
- (void)_pxswizzled_oneUpPresentation_viewWillDisappear:()PXOneUpPresentation;
- (void)px_enableOneUpPresentation;
- (void)px_enableOneUpPresentationFromViewController:()PXOneUpPresentation;
- (void)px_setOneUpPresentationProxy:()PXOneUpPresentation;
- (void)px_setOneUpPresentationStyle:()PXOneUpPresentation;
@end

@implementation UIViewController(PXOneUpPresentation)

- (void)px_enableOneUpPresentation
{
  [objc_opt_class() _px_prepareClassForOneUpPresentation];
  v2 = [a1 px_oneUpPresentation];
  [v2 setEnabled:1];
  [v2 _updateImplementationDelegate];
}

+ (uint64_t)_px_prepareClassForOneUpPresentation
{
  v2 = objc_opt_class();
  v3 = PXOneUpPresentationContext;

  return [a1 px_swizzleOnceAsSubclassOfClass:v2 context:v3 usingBlock:&__block_literal_global_174885];
}

- (PXOneUpPresentation)px_oneUpPresentation
{
  v2 = objc_getAssociatedObject(a1, PXOneUpPresentationAssocationKey);
  if (!v2)
  {
    v2 = [[PXOneUpPresentation alloc] initWithPresentingViewController:a1];
    objc_setAssociatedObject(a1, PXOneUpPresentationAssocationKey, v2, 1);
  }

  return v2;
}

- (void)px_setOneUpPresentationProxy:()PXOneUpPresentation
{
  value = a3;
  [objc_opt_class() _px_prepareClassForOneUpPresentation];
  objc_setAssociatedObject(a1, sel_px_oneUpPresentationProxy, value, 1);
}

- (void)_pxswizzled_oneUpPresentation_viewDidDisappear:()PXOneUpPresentation
{
  [a1 _pxswizzled_oneUpPresentation_viewDidDisappear:?];
  v5 = [a1 px_oneUpPresentation];
  [v5 presentingViewControllerViewDidDisappear:a3];

  v6 = [a1 px_oneUpPresentationProxy];
  [v6 presentingViewControllerViewDidDisappear:a3];
}

- (void)_pxswizzled_oneUpPresentation_viewWillDisappear:()PXOneUpPresentation
{
  [a1 _pxswizzled_oneUpPresentation_viewWillDisappear:?];
  v5 = [a1 px_oneUpPresentation];
  [v5 presentingViewControllerViewWillDisappear:a3];

  v6 = [a1 px_oneUpPresentationProxy];
  [v6 presentingViewControllerViewWillDisappear:a3];
}

- (uint64_t)_pxswizzled_oneUpPresentation_viewDidAppear:()PXOneUpPresentation
{
  [a1 _pxswizzled_oneUpPresentation_viewDidAppear:?];
  v5 = [a1 px_oneUpPresentation];
  [v5 presentingViewControllerViewDidAppear:a3];

  v6 = [a1 px_oneUpPresentationProxy];
  [v6 presentingViewControllerViewDidAppear:a3];

  return [a1 px_setOneUpPresentationProxy:0];
}

- (uint64_t)_pxswizzled_oneUpPresentation_viewIsAppearing:()PXOneUpPresentation
{
  v5 = [a1 px_oneUpPresentation];
  [v5 presentingViewControllerViewIsAppearing:a3];

  v6 = [a1 px_oneUpPresentationProxy];
  [v6 presentingViewControllerViewIsAppearing:a3];

  return [a1 _pxswizzled_oneUpPresentation_viewIsAppearing:a3];
}

- (uint64_t)_pxswizzled_oneUpPresentation_viewWillAppear:()PXOneUpPresentation
{
  v5 = [a1 px_oneUpPresentation];
  [v5 presentingViewControllerViewWillAppear:a3];

  v6 = [a1 px_oneUpPresentationProxy];
  [v6 presentingViewControllerViewWillAppear:a3];

  return [a1 _pxswizzled_oneUpPresentation_viewWillAppear:a3];
}

- (void)px_setOneUpPresentationStyle:()PXOneUpPresentation
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, sel_px_oneUpPresentationStyle, v2, 1);
}

- (uint64_t)px_oneUpPresentationStyle
{
  v1 = objc_getAssociatedObject(a1, sel_px_oneUpPresentationStyle);
  v2 = [v1 integerValue];

  return v2;
}

- (void)px_enableOneUpPresentationFromViewController:()PXOneUpPresentation
{
  v13 = a3;
  v5 = objc_getAssociatedObject(a1, PXOneUpPresentationAssocationKey);

  if (v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXOneUpPresentation.m" lineNumber:917 description:{@"-px_enableOneUpPresentationFromViewController: called after one up presentation was already enabled for %@. This is not supported, see <rdar://problem/42023978> for details.", a1}];
  }

  v6 = [v13 px_oneUpPresentation];
  v7 = [v6 isEnabled];

  if ((v7 & 1) == 0)
  {
    [v13 px_enableOneUpPresentation];
  }

  v8 = [v13 px_oneUpPresentation];
  v9 = [v8 originalPresentingViewController];

  if (v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [v8 originalPresentingViewController];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXOneUpPresentation.m" lineNumber:922 description:{@"-px_enableOneUpPresentationFromViewController: called with parameter %@ whose one up presentation was originally enabled for a different presenting view controller that is still alive (%@). This is not supported, see <rdar://problem/42023978> for details.", v13, v12}];
  }

  [v8 setOriginalPresentingViewController:a1];
  objc_setAssociatedObject(a1, PXOneUpPresentationAssocationKey, v8, 1);
}

@end
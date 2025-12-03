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
  px_oneUpPresentation = [self px_oneUpPresentation];
  [px_oneUpPresentation setEnabled:1];
  [px_oneUpPresentation _updateImplementationDelegate];
}

+ (uint64_t)_px_prepareClassForOneUpPresentation
{
  v2 = objc_opt_class();
  v3 = PXOneUpPresentationContext;

  return [self px_swizzleOnceAsSubclassOfClass:v2 context:v3 usingBlock:&__block_literal_global_174885];
}

- (PXOneUpPresentation)px_oneUpPresentation
{
  v2 = objc_getAssociatedObject(self, PXOneUpPresentationAssocationKey);
  if (!v2)
  {
    v2 = [[PXOneUpPresentation alloc] initWithPresentingViewController:self];
    objc_setAssociatedObject(self, PXOneUpPresentationAssocationKey, v2, 1);
  }

  return v2;
}

- (void)px_setOneUpPresentationProxy:()PXOneUpPresentation
{
  value = a3;
  [objc_opt_class() _px_prepareClassForOneUpPresentation];
  objc_setAssociatedObject(self, sel_px_oneUpPresentationProxy, value, 1);
}

- (void)_pxswizzled_oneUpPresentation_viewDidDisappear:()PXOneUpPresentation
{
  [self _pxswizzled_oneUpPresentation_viewDidDisappear:?];
  px_oneUpPresentation = [self px_oneUpPresentation];
  [px_oneUpPresentation presentingViewControllerViewDidDisappear:a3];

  px_oneUpPresentationProxy = [self px_oneUpPresentationProxy];
  [px_oneUpPresentationProxy presentingViewControllerViewDidDisappear:a3];
}

- (void)_pxswizzled_oneUpPresentation_viewWillDisappear:()PXOneUpPresentation
{
  [self _pxswizzled_oneUpPresentation_viewWillDisappear:?];
  px_oneUpPresentation = [self px_oneUpPresentation];
  [px_oneUpPresentation presentingViewControllerViewWillDisappear:a3];

  px_oneUpPresentationProxy = [self px_oneUpPresentationProxy];
  [px_oneUpPresentationProxy presentingViewControllerViewWillDisappear:a3];
}

- (uint64_t)_pxswizzled_oneUpPresentation_viewDidAppear:()PXOneUpPresentation
{
  [self _pxswizzled_oneUpPresentation_viewDidAppear:?];
  px_oneUpPresentation = [self px_oneUpPresentation];
  [px_oneUpPresentation presentingViewControllerViewDidAppear:a3];

  px_oneUpPresentationProxy = [self px_oneUpPresentationProxy];
  [px_oneUpPresentationProxy presentingViewControllerViewDidAppear:a3];

  return [self px_setOneUpPresentationProxy:0];
}

- (uint64_t)_pxswizzled_oneUpPresentation_viewIsAppearing:()PXOneUpPresentation
{
  px_oneUpPresentation = [self px_oneUpPresentation];
  [px_oneUpPresentation presentingViewControllerViewIsAppearing:a3];

  px_oneUpPresentationProxy = [self px_oneUpPresentationProxy];
  [px_oneUpPresentationProxy presentingViewControllerViewIsAppearing:a3];

  return [self _pxswizzled_oneUpPresentation_viewIsAppearing:a3];
}

- (uint64_t)_pxswizzled_oneUpPresentation_viewWillAppear:()PXOneUpPresentation
{
  px_oneUpPresentation = [self px_oneUpPresentation];
  [px_oneUpPresentation presentingViewControllerViewWillAppear:a3];

  px_oneUpPresentationProxy = [self px_oneUpPresentationProxy];
  [px_oneUpPresentationProxy presentingViewControllerViewWillAppear:a3];

  return [self _pxswizzled_oneUpPresentation_viewWillAppear:a3];
}

- (void)px_setOneUpPresentationStyle:()PXOneUpPresentation
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, sel_px_oneUpPresentationStyle, v2, 1);
}

- (uint64_t)px_oneUpPresentationStyle
{
  v1 = objc_getAssociatedObject(self, sel_px_oneUpPresentationStyle);
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)px_enableOneUpPresentationFromViewController:()PXOneUpPresentation
{
  v13 = a3;
  v5 = objc_getAssociatedObject(self, PXOneUpPresentationAssocationKey);

  if (v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:917 description:{@"-px_enableOneUpPresentationFromViewController: called after one up presentation was already enabled for %@. This is not supported, see <rdar://problem/42023978> for details.", self}];
  }

  px_oneUpPresentation = [v13 px_oneUpPresentation];
  isEnabled = [px_oneUpPresentation isEnabled];

  if ((isEnabled & 1) == 0)
  {
    [v13 px_enableOneUpPresentation];
  }

  px_oneUpPresentation2 = [v13 px_oneUpPresentation];
  originalPresentingViewController = [px_oneUpPresentation2 originalPresentingViewController];

  if (originalPresentingViewController)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    originalPresentingViewController2 = [px_oneUpPresentation2 originalPresentingViewController];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:922 description:{@"-px_enableOneUpPresentationFromViewController: called with parameter %@ whose one up presentation was originally enabled for a different presenting view controller that is still alive (%@). This is not supported, see <rdar://problem/42023978> for details.", v13, originalPresentingViewController2}];
  }

  [px_oneUpPresentation2 setOriginalPresentingViewController:self];
  objc_setAssociatedObject(self, PXOneUpPresentationAssocationKey, px_oneUpPresentation2, 1);
}

@end
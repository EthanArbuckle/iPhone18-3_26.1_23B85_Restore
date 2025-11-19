@interface UIViewController(PXDiagnosticsEnvironment)
- (id)px_diagnosticsItemProvidersForPoint:()PXDiagnosticsEnvironment inCoordinateSpace:;
@end

@implementation UIViewController(PXDiagnosticsEnvironment)

- (id)px_diagnosticsItemProvidersForPoint:()PXDiagnosticsEnvironment inCoordinateSpace:
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a1 isViewLoaded])
  {
    PXPointIsNull();
  }

  return v5;
}

@end
@interface UITabBarController(PXDiagnosticsEnvironment)
- (void)px_diagnosticsItemProvidersForPoint:()PXDiagnosticsEnvironment inCoordinateSpace:;
@end

@implementation UITabBarController(PXDiagnosticsEnvironment)

- (void)px_diagnosticsItemProvidersForPoint:()PXDiagnosticsEnvironment inCoordinateSpace:
{
  v8 = a5;
  v9 = [a1 selectedViewController];
  v10 = [v9 px_diagnosticsItemProvidersForPoint:v8 inCoordinateSpace:{a2, a3}];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  return v11;
}

@end
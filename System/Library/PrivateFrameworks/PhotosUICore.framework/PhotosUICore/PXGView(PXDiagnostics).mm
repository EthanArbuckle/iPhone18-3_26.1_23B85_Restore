@interface PXGView(PXDiagnostics)
- (id)px_diagnosticsItemProvidersForPoint:()PXDiagnostics inCoordinateSpace:;
@end

@implementation PXGView(PXDiagnostics)

- (id)px_diagnosticsItemProvidersForPoint:()PXDiagnostics inCoordinateSpace:
{
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  [a1 convertPoint:v9 fromCoordinateSpace:{a2, a3}];
  v12 = v11;
  v14 = v13;

  [a1 bounds];
  v19.x = v12;
  v19.y = v14;
  if (CGRectContainsPoint(v20, v19))
  {
    v15 = objc_alloc_init(PXDiagnosticsItemProvider);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__PXGView_PXDiagnostics__px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
    v17[3] = &unk_1E774BB70;
    v17[4] = a1;
    [(PXDiagnosticsItemProvider *)v15 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierTungstenView" loadHandler:v17];
    [v10 addObject:v15];
    [a1 rootLayout];
    objc_claimAutoreleasedReturnValue();
    PXRectWithOriginAndSize();
  }

  return v10;
}

@end
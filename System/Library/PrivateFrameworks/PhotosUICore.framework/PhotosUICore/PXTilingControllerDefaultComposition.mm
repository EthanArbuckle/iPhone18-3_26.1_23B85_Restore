@interface PXTilingControllerDefaultComposition
- (void)updateComposition;
@end

@implementation PXTilingControllerDefaultComposition

- (void)updateComposition
{
  v26 = *MEMORY[0x1E69E9840];
  input = [(PXTilingControllerComposition *)self input];
  output = [(PXTilingControllerComposition *)self output];
  tilingControllers = [(PXTilingControllerDefaultComposition *)self tilingControllers];
  [input referenceSize];
  v22 = v7;
  v23 = v6;
  [input contentInset];
  v20 = v9;
  v21 = v8;
  v18 = v11;
  v19 = v10;
  v13 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  memset(v24, 0, sizeof(v24));
  v16 = tilingControllers;
  if ([v16 countByEnumeratingWithState:v24 objects:v25 count:16])
  {
    v17 = **(&v24[0] + 1);
    [output setReferenceSize:**(&v24[0] + 1) contentInset:v23 forTilingController:{v22, v21, v20, v19, v18}];
    [input contentBoundsForTilingController:v17];
    [input scrollBoundsForTilingController:v17];
    [input preferredOriginForTilingController:v17];
    PXPointIsNull();
  }

  [output setContentBounds:0 scrollBounds:v13 scrollInfo:{v12, v15, v14, v13, v12, v15, v14}];
}

@end
@interface PXBasicTileAnimator
- (void)animateTile:(id)a3 toGeometry:(PXTileGeometry *)a4 userData:(id)a5 withOptions:(id)a6 completionHandler:(id)a7;
- (void)prepareTile:(id)a3 withGeometry:(PXTileGeometry *)a4 userData:(id)a5;
- (void)resumeAnimationsForTile:(id)a3;
- (void)suspendAnimationsForTile:(id)a3;
@end

@implementation PXBasicTileAnimator

- (void)resumeAnimationsForTile:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:27 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator resumeAnimationsForTile:]", v8}];

  abort();
}

- (void)suspendAnimationsForTile:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:23 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator suspendAnimationsForTile:]", v8}];

  abort();
}

- (void)animateTile:(id)a3 toGeometry:(PXTileGeometry *)a4 userData:(id)a5 withOptions:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [v16 handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:19 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator animateTile:toGeometry:userData:withOptions:completionHandler:]", v18}];

  abort();
}

- (void)prepareTile:(id)a3 withGeometry:(PXTileGeometry *)a4 userData:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:15 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator prepareTile:withGeometry:userData:]", v12}];

  abort();
}

@end
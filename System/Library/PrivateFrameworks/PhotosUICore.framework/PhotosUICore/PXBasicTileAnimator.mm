@interface PXBasicTileAnimator
- (void)animateTile:(id)tile toGeometry:(PXTileGeometry *)geometry userData:(id)data withOptions:(id)options completionHandler:(id)handler;
- (void)prepareTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data;
- (void)resumeAnimationsForTile:(id)tile;
- (void)suspendAnimationsForTile:(id)tile;
@end

@implementation PXBasicTileAnimator

- (void)resumeAnimationsForTile:(id)tile
{
  tileCopy = tile;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:27 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator resumeAnimationsForTile:]", v8}];

  abort();
}

- (void)suspendAnimationsForTile:(id)tile
{
  tileCopy = tile;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:23 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator suspendAnimationsForTile:]", v8}];

  abort();
}

- (void)animateTile:(id)tile toGeometry:(PXTileGeometry *)geometry userData:(id)data withOptions:(id)options completionHandler:(id)handler
{
  tileCopy = tile;
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:19 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator animateTile:toGeometry:userData:withOptions:completionHandler:]", v18}];

  abort();
}

- (void)prepareTile:(id)tile withGeometry:(PXTileGeometry *)geometry userData:(id)data
{
  tileCopy = tile;
  dataCopy = data;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBasicTileAnimator.m" lineNumber:15 description:{@"Method %s is a responsibility of subclass %@", "-[PXBasicTileAnimator prepareTile:withGeometry:userData:]", v12}];

  abort();
}

@end
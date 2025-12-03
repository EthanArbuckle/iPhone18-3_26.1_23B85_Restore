@interface SBDashBoardWallpaperProvider
- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle;
- (CGRect)preferredSalientContentRectangle;
- (id)createCoverSheetWallpaperViewWithTransformOptions:(unint64_t)options;
- (id)createWallpaperFloatingViewForReason:(id)reason ignoreReplica:(BOOL)replica;
- (id)setWallpaperFloatingLayerContainerView:(id)view forReason:(id)reason withAnimationFactory:(id)factory;
- (id)suspendWallpaperAnimationForReason:(id)reason;
- (void)updateSalientContentRectangle:(CGRect)rectangle;
- (void)wallpaperClientDidRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)wallpaperClientWillAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)wallpaperClientWillRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SBDashBoardWallpaperProvider

- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle
{
  v2 = +[SBWallpaperController sharedInstance];
  adaptiveTimeHonorsPreferredSalientContentRectangle = [v2 adaptiveTimeHonorsPreferredSalientContentRectangle];

  return adaptiveTimeHonorsPreferredSalientContentRectangle;
}

- (CGRect)preferredSalientContentRectangle
{
  v2 = +[SBWallpaperController sharedInstance];
  [v2 preferredSalientContentRectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)createCoverSheetWallpaperViewWithTransformOptions:(unint64_t)options
{
  v3 = [[SBDashBoardWallpaperEffectView alloc] initWithWallpaperVariant:0 transformOptions:options];
  [(PBUIWallpaperEffectViewBase *)v3 setStyle:0];
  [(PBUIWallpaperEffectViewBase *)v3 setForcesOpaque:1];
  [(PBUIWallpaperEffectViewBase *)v3 setShouldMatchWallpaperPosition:0];

  return v3;
}

- (id)createWallpaperFloatingViewForReason:(id)reason ignoreReplica:(BOOL)replica
{
  replicaCopy = replica;
  reasonCopy = reason;
  v6 = +[SBWallpaperController sharedInstance];
  v7 = [v6 createWallpaperFloatingViewForReason:reasonCopy ignoreReplica:replicaCopy];

  return v7;
}

- (id)setWallpaperFloatingLayerContainerView:(id)view forReason:(id)reason withAnimationFactory:(id)factory
{
  factoryCopy = factory;
  reasonCopy = reason;
  viewCopy = view;
  v10 = +[SBWallpaperController sharedInstance];
  v11 = [v10 setWallpaperFloatingLayerContainerView:viewCopy forReason:reasonCopy withAnimationFactory:factoryCopy];

  return v11;
}

- (id)suspendWallpaperAnimationForReason:(id)reason
{
  reasonCopy = reason;
  v4 = +[SBWallpaperController sharedInstance];
  v5 = [v4 suspendWallpaperAnimationForReason:reasonCopy];

  return v5;
}

- (void)wallpaperClientWillRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v6 = +[SBWallpaperController sharedInstance];
  [v6 orientationSource:3 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)wallpaperClientWillAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v6 = +[SBWallpaperController sharedInstance];
  [v6 orientationSource:3 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)wallpaperClientDidRotateFromInterfaceOrientation:(int64_t)orientation
{
  v4 = +[SBWallpaperController sharedInstance];
  [v4 orientationSource:3 didRotateFromInterfaceOrientation:orientation];
}

- (void)updateSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v7 = +[SBWallpaperController sharedInstance];
  [v7 updateSalientContentRectangle:{x, y, width, height}];
}

@end
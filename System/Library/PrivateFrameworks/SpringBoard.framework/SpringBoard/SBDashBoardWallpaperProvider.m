@interface SBDashBoardWallpaperProvider
- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle;
- (CGRect)preferredSalientContentRectangle;
- (id)createCoverSheetWallpaperViewWithTransformOptions:(unint64_t)a3;
- (id)createWallpaperFloatingViewForReason:(id)a3 ignoreReplica:(BOOL)a4;
- (id)setWallpaperFloatingLayerContainerView:(id)a3 forReason:(id)a4 withAnimationFactory:(id)a5;
- (id)suspendWallpaperAnimationForReason:(id)a3;
- (void)updateSalientContentRectangle:(CGRect)a3;
- (void)wallpaperClientDidRotateFromInterfaceOrientation:(int64_t)a3;
- (void)wallpaperClientWillAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)wallpaperClientWillRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation SBDashBoardWallpaperProvider

- (BOOL)adaptiveTimeHonorsPreferredSalientContentRectangle
{
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 adaptiveTimeHonorsPreferredSalientContentRectangle];

  return v3;
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

- (id)createCoverSheetWallpaperViewWithTransformOptions:(unint64_t)a3
{
  v3 = [[SBDashBoardWallpaperEffectView alloc] initWithWallpaperVariant:0 transformOptions:a3];
  [(PBUIWallpaperEffectViewBase *)v3 setStyle:0];
  [(PBUIWallpaperEffectViewBase *)v3 setForcesOpaque:1];
  [(PBUIWallpaperEffectViewBase *)v3 setShouldMatchWallpaperPosition:0];

  return v3;
}

- (id)createWallpaperFloatingViewForReason:(id)a3 ignoreReplica:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[SBWallpaperController sharedInstance];
  v7 = [v6 createWallpaperFloatingViewForReason:v5 ignoreReplica:v4];

  return v7;
}

- (id)setWallpaperFloatingLayerContainerView:(id)a3 forReason:(id)a4 withAnimationFactory:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SBWallpaperController sharedInstance];
  v11 = [v10 setWallpaperFloatingLayerContainerView:v9 forReason:v8 withAnimationFactory:v7];

  return v11;
}

- (id)suspendWallpaperAnimationForReason:(id)a3
{
  v3 = a3;
  v4 = +[SBWallpaperController sharedInstance];
  v5 = [v4 suspendWallpaperAnimationForReason:v3];

  return v5;
}

- (void)wallpaperClientWillRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = +[SBWallpaperController sharedInstance];
  [v6 orientationSource:3 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)wallpaperClientWillAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = +[SBWallpaperController sharedInstance];
  [v6 orientationSource:3 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)wallpaperClientDidRotateFromInterfaceOrientation:(int64_t)a3
{
  v4 = +[SBWallpaperController sharedInstance];
  [v4 orientationSource:3 didRotateFromInterfaceOrientation:a3];
}

- (void)updateSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = +[SBWallpaperController sharedInstance];
  [v7 updateSalientContentRectangle:{x, y, width, height}];
}

@end
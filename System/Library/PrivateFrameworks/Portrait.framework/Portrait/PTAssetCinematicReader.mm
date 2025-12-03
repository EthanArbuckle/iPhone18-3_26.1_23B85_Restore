@interface PTAssetCinematicReader
- (id)copyNextFrame;
- (id)globals;
@end

@implementation PTAssetCinematicReader

- (id)globals
{
  v2 = [[PTAssetCinematicGlobals alloc] initWithAssetReader:self];

  return v2;
}

- (id)copyNextFrame
{
  v3 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = PTAssetCinematicReader;
  nextFrame = [(PTAssetReader *)&v13 nextFrame];
  if (nextFrame)
  {
    v5 = [(PTAssetReaderFrame *)[PTAssetCinematicFrame alloc] initWithAssetReaderFrame:nextFrame];
    metadata = [nextFrame metadata];
    v7 = [metadata objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];
    [(PTAssetCinematicFrame *)v5 setRenderingMetadata:v7];

    metadata2 = [nextFrame metadata];
    v9 = [metadata2 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];
    [(PTAssetCinematicFrame *)v5 setStabilizationMetadata:v9];

    metadata3 = [nextFrame metadata];
    v11 = [metadata3 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];
    [(PTAssetCinematicFrame *)v5 setCinematographyFrame:v11];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

@end
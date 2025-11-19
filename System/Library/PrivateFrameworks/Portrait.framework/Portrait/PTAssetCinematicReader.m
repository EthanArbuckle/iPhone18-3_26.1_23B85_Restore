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
  v4 = [(PTAssetReader *)&v13 nextFrame];
  if (v4)
  {
    v5 = [(PTAssetReaderFrame *)[PTAssetCinematicFrame alloc] initWithAssetReaderFrame:v4];
    v6 = [v4 metadata];
    v7 = [v6 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];
    [(PTAssetCinematicFrame *)v5 setRenderingMetadata:v7];

    v8 = [v4 metadata];
    v9 = [v8 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];
    [(PTAssetCinematicFrame *)v5 setStabilizationMetadata:v9];

    v10 = [v4 metadata];
    v11 = [v10 objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];
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
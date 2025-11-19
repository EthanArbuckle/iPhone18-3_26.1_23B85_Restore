@interface PHAsset(ShareBack)
- (double)horizontalAccuracy;
@end

@implementation PHAsset(ShareBack)

- (double)horizontalAccuracy
{
  v1 = [a1 coarseLocationProperties];
  [v1 gpsHorizontalAccuracy];
  v3 = v2;

  return v3;
}

@end
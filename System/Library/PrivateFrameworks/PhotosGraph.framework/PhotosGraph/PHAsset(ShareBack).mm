@interface PHAsset(ShareBack)
- (double)horizontalAccuracy;
@end

@implementation PHAsset(ShareBack)

- (double)horizontalAccuracy
{
  coarseLocationProperties = [self coarseLocationProperties];
  [coarseLocationProperties gpsHorizontalAccuracy];
  v3 = v2;

  return v3;
}

@end
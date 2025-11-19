@interface VUIPlaybackPositionInfo
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VUIPlaybackPositionInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VUIPlaybackPositionInfo);
  v5 = [(VUIPlaybackPositionInfo *)self bookmarkTime];
  [(VUIPlaybackPositionInfo *)v4 setBookmarkTime:v5];

  v6 = [(VUIPlaybackPositionInfo *)self playCount];
  [(VUIPlaybackPositionInfo *)v4 setPlayCount:v6];

  v7 = [(VUIPlaybackPositionInfo *)self hasBeenPlayed];
  [(VUIPlaybackPositionInfo *)v4 setHasBeenPlayed:v7];

  return v4;
}

@end
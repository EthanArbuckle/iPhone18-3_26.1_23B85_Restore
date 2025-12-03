@interface VUIPlaybackPositionInfo
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUIPlaybackPositionInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUIPlaybackPositionInfo);
  bookmarkTime = [(VUIPlaybackPositionInfo *)self bookmarkTime];
  [(VUIPlaybackPositionInfo *)v4 setBookmarkTime:bookmarkTime];

  playCount = [(VUIPlaybackPositionInfo *)self playCount];
  [(VUIPlaybackPositionInfo *)v4 setPlayCount:playCount];

  hasBeenPlayed = [(VUIPlaybackPositionInfo *)self hasBeenPlayed];
  [(VUIPlaybackPositionInfo *)v4 setHasBeenPlayed:hasBeenPlayed];

  return v4;
}

@end
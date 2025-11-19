@interface PUPlayPauseBarItemsControllerChange
- (BOOL)hasChanges;
@end

@implementation PUPlayPauseBarItemsControllerChange

- (BOOL)hasChanges
{
  if ([(PUPlayPauseBarItemsControllerChange *)self playPauseStateDidChange]|| [(PUPlayPauseBarItemsControllerChange *)self currentPlaybackTimeDidChange])
  {
    return 1;
  }

  return [(PUPlayPauseBarItemsControllerChange *)self playbackDurationDidChange];
}

@end
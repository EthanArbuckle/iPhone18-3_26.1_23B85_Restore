@interface PUBrowsingVideoPlayerChange
- (BOOL)hasChanges;
@end

@implementation PUBrowsingVideoPlayerChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUBrowsingVideoPlayerChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUBrowsingVideoPlayerChange *)self playStateDidChange]|| [(PUBrowsingVideoPlayerChange *)self desiredPlayStateDidChange]|| [(PUBrowsingVideoPlayerChange *)self isActivatedDidChange]|| [(PUBrowsingVideoPlayerChange *)self isPlayerLoadingAllowedDidChange]|| [(PUBrowsingVideoPlayerChange *)self avPlayerDidChange]|| [(PUBrowsingVideoPlayerChange *)self playerItemDidChange]|| [(PUBrowsingVideoPlayerChange *)self errorDidChange]|| [(PUBrowsingVideoPlayerChange *)self isAtBeginningDidChange]|| [(PUBrowsingVideoPlayerChange *)self isAtEndDidChange]|| [(PUBrowsingVideoPlayerChange *)self isStalledDidChange]|| [(PUBrowsingVideoPlayerChange *)self isPlayableDidChange]|| [(PUBrowsingVideoPlayerChange *)self audioStatusDidChange]|| [(PUBrowsingVideoPlayerChange *)self audioSessionVolumeIncreaseDidOccur];
}

@end
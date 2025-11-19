@interface PUBrowsingIrisPlayerChange
- (BOOL)hasChanges;
@end

@implementation PUBrowsingIrisPlayerChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUBrowsingIrisPlayerChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUBrowsingIrisPlayerChange *)self isLivePhotoLoadingAllowedDidChange]|| [(PUBrowsingIrisPlayerChange *)self isLivePhotoPlaybackAllowedDidChange]|| [(PUBrowsingIrisPlayerChange *)self playerDidChange]|| [(PUBrowsingIrisPlayerChange *)self playbackStateDidChange]|| [(PUBrowsingIrisPlayerChange *)self livePhotoDidChange]|| [(PUBrowsingIrisPlayerChange *)self activatedDidChange]|| [(PUBrowsingIrisPlayerChange *)self scrubbingPhotoTimeDidChange]|| [(PUBrowsingIrisPlayerChange *)self currentlyDisplayedTimesDidChange]|| [(PUBrowsingIrisPlayerChange *)self playingDidChange]|| [(PUBrowsingIrisPlayerChange *)self vitalityTransformDidChange]|| [(PUBrowsingIrisPlayerChange *)self imageLoadingEnabledDidChange];
}

@end
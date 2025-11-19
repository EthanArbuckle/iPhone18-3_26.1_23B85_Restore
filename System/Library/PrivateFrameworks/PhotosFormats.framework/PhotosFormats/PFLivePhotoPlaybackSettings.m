@interface PFLivePhotoPlaybackSettings
- (PFLivePhotoPlaybackSettings)init;
@end

@implementation PFLivePhotoPlaybackSettings

- (PFLivePhotoPlaybackSettings)init
{
  v3.receiver = self;
  v3.super_class = PFLivePhotoPlaybackSettings;
  result = [(PFLivePhotoPlaybackSettings *)&v3 init];
  result->_audioVolume = 1.0;
  return result;
}

@end
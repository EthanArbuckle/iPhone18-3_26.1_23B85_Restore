@interface VUITimedMetadataAudioSmoothingConfig
- (VUITimedMetadataAudioSmoothingConfig)init;
@end

@implementation VUITimedMetadataAudioSmoothingConfig

- (VUITimedMetadataAudioSmoothingConfig)init
{
  v3.receiver = self;
  v3.super_class = VUITimedMetadataAudioSmoothingConfig;
  result = [(VUITimedMetadataAudioSmoothingConfig *)&v3 init];
  if (result)
  {
    result->_durationToRetainAudioEntity = 60.0;
  }

  return result;
}

@end
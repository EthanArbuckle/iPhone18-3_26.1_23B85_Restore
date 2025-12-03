@interface SWMediaSettings
- (SWMediaSettings)initWithMediaTypesRequiringUserActionForPlayback:(unint64_t)playback fullScreenEnabled:(BOOL)enabled;
@end

@implementation SWMediaSettings

- (SWMediaSettings)initWithMediaTypesRequiringUserActionForPlayback:(unint64_t)playback fullScreenEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = SWMediaSettings;
  result = [(SWMediaSettings *)&v7 init];
  if (result)
  {
    result->_mediaTypesRequiringUserActionForPlayback = playback;
    result->_fullScreenEnabled = enabled;
  }

  return result;
}

@end
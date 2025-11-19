@interface SWMediaSettings
- (SWMediaSettings)initWithMediaTypesRequiringUserActionForPlayback:(unint64_t)a3 fullScreenEnabled:(BOOL)a4;
@end

@implementation SWMediaSettings

- (SWMediaSettings)initWithMediaTypesRequiringUserActionForPlayback:(unint64_t)a3 fullScreenEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SWMediaSettings;
  result = [(SWMediaSettings *)&v7 init];
  if (result)
  {
    result->_mediaTypesRequiringUserActionForPlayback = a3;
    result->_fullScreenEnabled = a4;
  }

  return result;
}

@end
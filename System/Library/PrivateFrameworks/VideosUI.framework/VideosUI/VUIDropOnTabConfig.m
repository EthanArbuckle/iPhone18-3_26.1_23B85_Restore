@interface VUIDropOnTabConfig
- (NSNumber)daysWithoutOpeningThreshold;
- (NSNumber)daysWithoutPlaybackThreshold;
- (VUIDropOnTabConfig)init;
@end

@implementation VUIDropOnTabConfig

- (VUIDropOnTabConfig)init
{
  v8.receiver = self;
  v8.super_class = VUIDropOnTabConfig;
  v2 = [(VUIDropOnTabConfig *)&v8 init];
  v3 = v2;
  if (v2)
  {
    dropOnTabIdentifier = v2->_dropOnTabIdentifier;
    v2->_dropOnTabIdentifier = @"watchnow";

    daysWithoutOpeningThreshold = v3->_daysWithoutOpeningThreshold;
    v3->_daysWithoutOpeningThreshold = &unk_1F5E5D848;

    daysWithoutPlaybackThreshold = v3->_daysWithoutPlaybackThreshold;
    v3->_daysWithoutPlaybackThreshold = &unk_1F5E5D830;
  }

  return v3;
}

- (NSNumber)daysWithoutOpeningThreshold
{
  v3 = [VUIFeaturesConfiguration defaultsNumberValueForKey:@"daysWithoutOpeningThreshold"];
  daysWithoutOpeningThreshold = v3;
  if (!v3)
  {
    daysWithoutOpeningThreshold = self->_daysWithoutOpeningThreshold;
  }

  v5 = daysWithoutOpeningThreshold;

  return v5;
}

- (NSNumber)daysWithoutPlaybackThreshold
{
  v3 = [VUIFeaturesConfiguration defaultsNumberValueForKey:@"daysWithoutPlaybackThreshold"];
  daysWithoutPlaybackThreshold = v3;
  if (!v3)
  {
    daysWithoutPlaybackThreshold = self->_daysWithoutPlaybackThreshold;
  }

  v5 = daysWithoutPlaybackThreshold;

  return v5;
}

@end
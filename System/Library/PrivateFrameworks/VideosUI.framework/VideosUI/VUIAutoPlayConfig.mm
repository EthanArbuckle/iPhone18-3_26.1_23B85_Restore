@interface VUIAutoPlayConfig
- (VUIAutoPlayConfig)init;
@end

@implementation VUIAutoPlayConfig

- (VUIAutoPlayConfig)init
{
  v5.receiver = self;
  v5.super_class = VUIAutoPlayConfig;
  v2 = [(VUIAutoPlayConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_autoPlayDelayInterval = 0.0;
    v2->_autoPlayVideoSound = 0;
    v2->_disableBackgroundMediaPlayback = [VUIFeaturesConfiguration BOOLValueForKey:@"disableBackgroundMediaPlayback" fromDictionary:0 defaultValue:0];
  }

  return v3;
}

@end
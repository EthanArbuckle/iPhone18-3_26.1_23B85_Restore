@interface VUITimedMetadataConfig
- (VUITimedMetadataConfig)init;
@end

@implementation VUITimedMetadataConfig

- (VUITimedMetadataConfig)init
{
  v8.receiver = self;
  v8.super_class = VUITimedMetadataConfig;
  v2 = [(VUITimedMetadataConfig *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    visualSmoothingConfig = v2->_visualSmoothingConfig;
    v2->_visualSmoothingConfig = v3;

    v5 = objc_opt_new();
    audioSmoothingConfig = v2->_audioSmoothingConfig;
    v2->_audioSmoothingConfig = v5;
  }

  return v2;
}

@end
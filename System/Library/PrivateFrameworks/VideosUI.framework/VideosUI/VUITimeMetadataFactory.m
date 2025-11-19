@interface VUITimeMetadataFactory
+ (id)sharedInstance;
- (VUITimeMetadataFactory)init;
- (id)makeViewControllerWithPlaybackInfo:(id)a3;
@end

@implementation VUITimeMetadataFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[VUITimeMetadataFactory sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_4;

  return v3;
}

void __40__VUITimeMetadataFactory_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_4;
  sharedInstance_sharedInstance_4 = v0;
}

- (VUITimeMetadataFactory)init
{
  v4.receiver = self;
  v4.super_class = VUITimeMetadataFactory;
  v2 = [(VUITimeMetadataFactory *)&v4 init];
  if (v2)
  {
    +[_TtC8VideosUI8VideosUI initializeUIFactory];
  }

  return v2;
}

- (id)makeViewControllerWithPlaybackInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = VUITimeMetadataFactory.makeViewController(playbackInfo:)(v4);

  return v6;
}

@end
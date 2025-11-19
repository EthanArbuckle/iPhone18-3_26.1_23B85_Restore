@interface PLURLSessionLaunchEventListener
+ (id)sessionIdentifierFrom:(id)a3;
- (PLPhotoLibraryBundleController)bundleController;
- (void)handleBackgroundResourceUploaderLaunchEvent;
- (void)handleURLSessionLaunchEvent:(id)a3;
- (void)registerForLaunchEvents;
- (void)registerForNoOpURLSessionLaunchEvents;
- (void)registerForSimulatedBackgroundResourceUploaderLaunchEvent;
- (void)registerForURLSessionLaunchEvents;
@end

@implementation PLURLSessionLaunchEventListener

- (PLPhotoLibraryBundleController)bundleController
{
  v2 = sub_19BF42588();

  return v2;
}

- (void)registerForLaunchEvents
{
  v2 = self;
  sub_19BF42604();
}

- (void)registerForNoOpURLSessionLaunchEvents
{
  v2 = self;
  sub_19BF42710();
}

- (void)registerForSimulatedBackgroundResourceUploaderLaunchEvent
{
  v2 = self;
  sub_19BF42A48();
}

- (void)registerForURLSessionLaunchEvents
{
  v2 = self;
  sub_19BF42DF8();
}

- (void)handleURLSessionLaunchEvent:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_19BF42F84(a3);
  swift_unknownObjectRelease();
}

+ (id)sessionIdentifierFrom:(id)a3
{
  swift_getObjCClassMetadata();
  v3 = swift_unknownObjectRetain();
  sub_19BF43334(v3);
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_19C5C45CC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleBackgroundResourceUploaderLaunchEvent
{
  v2 = self;
  sub_19BF434B4();
}

@end
@interface PLURLSessionLaunchEventListener
+ (id)sessionIdentifierFrom:(id)from;
- (PLPhotoLibraryBundleController)bundleController;
- (void)handleBackgroundResourceUploaderLaunchEvent;
- (void)handleURLSessionLaunchEvent:(id)event;
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
  selfCopy = self;
  sub_19BF42604();
}

- (void)registerForNoOpURLSessionLaunchEvents
{
  selfCopy = self;
  sub_19BF42710();
}

- (void)registerForSimulatedBackgroundResourceUploaderLaunchEvent
{
  selfCopy = self;
  sub_19BF42A48();
}

- (void)registerForURLSessionLaunchEvents
{
  selfCopy = self;
  sub_19BF42DF8();
}

- (void)handleURLSessionLaunchEvent:(id)event
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19BF42F84(event);
  swift_unknownObjectRelease();
}

+ (id)sessionIdentifierFrom:(id)from
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
  selfCopy = self;
  sub_19BF434B4();
}

@end
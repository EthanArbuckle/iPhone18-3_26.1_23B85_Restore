@interface PhotosDetailsPhototypeWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore28PhotosDetailsPhototypeWidget)init;
- (void)setContext:(id)context;
@end

@implementation PhotosDetailsPhototypeWidget

- (PXWidgetInteractionDelegate)widgetInteractionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PXPhotosDetailsContext)context
{
  selfCopy = self;
  v3 = sub_1A4110EF8();

  return v3;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1A3E76688(contextCopy);
}

- (NSString)snappableWidgetIdentifier
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  sub_1A524C714();
  v2 = sub_1A524C634();

  return v2;
}

- (_TtC12PhotosUICore28PhotosDetailsPhototypeWidget)init
{
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsPhototypeWidget_contextObservation);
  v4 = type metadata accessor for PhotosDetailsPhototypeWidget();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(PXPhotosDetailsWidget *)&v6 init];
}

@end
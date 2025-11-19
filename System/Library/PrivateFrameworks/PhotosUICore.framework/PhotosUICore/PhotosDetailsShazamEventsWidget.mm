@interface PhotosDetailsShazamEventsWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore31PhotosDetailsShazamEventsWidget)init;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)a3;
@end

@implementation PhotosDetailsShazamEventsWidget

- (PXWidgetInteractionDelegate)widgetInteractionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PXPhotosDetailsContext)context
{
  v2 = self;
  v3 = sub_1A4110EF8();

  return v3;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4038E8C(v4);
}

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x168);
  v4 = self;
  if (v3())
  {

    return 2;
  }

  else
  {
    v6 = (*((*v2 & *v4) + 0x108))();
    v7 = [v6 sizeClass] != 2;

    return 2 * v7;
  }
}

- (_TtC12PhotosUICore31PhotosDetailsShazamEventsWidget)init
{
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsShazamEventsWidget_contextObservation);
  v4 = type metadata accessor for PhotosDetailsShazamEventsWidget();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(PXPhotosDetailsWidget *)&v6 init];
}

@end
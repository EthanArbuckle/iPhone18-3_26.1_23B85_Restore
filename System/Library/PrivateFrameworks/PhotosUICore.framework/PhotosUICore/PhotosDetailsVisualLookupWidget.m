@interface PhotosDetailsVisualLookupWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)a3;
@end

@implementation PhotosDetailsVisualLookupWidget

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
  sub_1A429A2B8(v4);
}

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  v2 = self;
  v3 = sub_1A429AA64();

  return v3;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3
{
  v3 = self;
  v4 = sub_1A429AFF8();

  return v4;
}

- (_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget)init
{
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsVisualLookupWidget_contextObservation);
  v4 = type metadata accessor for PhotosDetailsVisualLookupWidget();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(PXPhotosDetailsWidget *)&v6 init];
}

@end
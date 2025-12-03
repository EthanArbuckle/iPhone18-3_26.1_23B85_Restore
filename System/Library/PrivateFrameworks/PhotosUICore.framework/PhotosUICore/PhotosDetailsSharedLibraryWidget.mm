@interface PhotosDetailsSharedLibraryWidget
- (NSString)snappableWidgetIdentifier;
- (PXPhotosDetailsContext)context;
- (PXWidgetInteractionDelegate)widgetInteractionDelegate;
- (_TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)context;
@end

@implementation PhotosDetailsSharedLibraryWidget

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
  sub_1A47274F8(contextCopy);
}

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  v9 = *((*MEMORY[0x1E69E7D40] & *self) + 0x108);
  selfCopy = self;
  v11 = v9();
  contentSizeCategory = [v11 contentSizeCategory];

  sub_1A412028C(contentSizeCategory, v7);
  v13 = sub_1A4394B64(v7, v8, &off_1EE6D8FE0);

  (*(v5 + 8))(v7, v4);
  return v13;
}

- (int64_t)contentLayoutStyle
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x168);
  selfCopy = self;
  LOBYTE(v2) = v2();

  if (v2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (_TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget)init
{
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget_contextObservation);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetAbove) = 2;
  *(self + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget____lazy_storage___hasSiblingWidgetBelow) = 2;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosDetailsSharedLibraryWidget();
  return [(PXPhotosDetailsWidget *)&v5 init];
}

@end
@interface PhotosDetailsSavedFromAppsWidget
- (NSString)snappableWidgetIdentifier;
- (_TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3;
- (int64_t)contentLayoutStyle;
@end

@implementation PhotosDetailsSavedFromAppsWidget

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x168);
  v3 = self;
  if (v2())
  {

    return 2;
  }

  else
  {
    v5 = sub_1A49899B0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v9 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x108);
  v10 = self;
  v11 = v9();
  v12 = [v11 contentSizeCategory];

  sub_1A412028C(v12, v7);
  v13 = sub_1A4394B64(v7, v8, &off_1EE6D7980);

  (*(v5 + 8))(v7, v4);
  return v13;
}

- (_TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget)init
{
  self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetAbove] = 2;
  self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetBelow] = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsSavedFromAppsWidget();
  return [(PXPhotosDetailsWidget *)&v3 init];
}

@end
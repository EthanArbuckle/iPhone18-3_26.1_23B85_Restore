@interface PhotosDetailsAssetProvenanceWidget
- (NSString)snappableWidgetIdentifier;
- (_TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (int64_t)contentLayoutStyle;
@end

@implementation PhotosDetailsAssetProvenanceWidget

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)contentLayoutStyle
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x168);
  selfCopy = self;
  if (v2())
  {

    return 2;
  }

  else
  {
    v5 = sub_1A4671BAC();

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

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  v9 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x108);
  selfCopy = self;
  v11 = v9();
  contentSizeCategory = [v11 contentSizeCategory];

  sub_1A412028C(contentSizeCategory, v7);
  v13 = sub_1A4394B64(v7, v8, &off_1EE6EE860);

  (*(v5 + 8))(v7, v4);
  return v13;
}

- (_TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget)init
{
  self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetAbove] = 2;
  self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget____lazy_storage___hasSiblingWidgetBelow] = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsAssetProvenanceWidget();
  return [(PXPhotosDetailsWidget *)&v3 init];
}

@end
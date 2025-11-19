@interface PXPhotosDetailsPeopleWidget
- (PXPhotosDetailsPeopleWidget)init;
- (PXPhotosDetailsPeopleWidget)initWithPeopleTileViewControllerProvider:(id)a3;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3;
@end

@implementation PXPhotosDetailsPeopleWidget

- (PXPhotosDetailsPeopleWidget)initWithPeopleTileViewControllerProvider:(id)a3
{
  *&self->PXPhotosDetailsWidget_opaque[OBJC_IVAR___PXPhotosDetailsPeopleWidget_peopleTileViewControllerProvider] = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PhotosDetailsPeopleWidget();
  swift_unknownObjectRetain();
  return [(PXPhotosDetailsWidget *)&v4 init];
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsPeopleWidgetView();
  v9 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x108);
  v10 = self;
  v11 = v9();
  v12 = [v11 contentSizeCategory];

  sub_1A412028C(v12, v7);
  v13 = sub_1A4394B64(v7, v8, &off_1EE6D74B0);

  (*(v5 + 8))(v7, v4);
  return v13;
}

- (PXPhotosDetailsPeopleWidget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
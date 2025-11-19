@interface PhotosDetailsTimeWidget
- (_TtC12PhotosUICore23PhotosDetailsTimeWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3;
@end

@implementation PhotosDetailsTimeWidget

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v9 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x108);
  v10 = self;
  v11 = v9();
  v12 = [v11 contentSizeCategory];

  sub_1A412028C(v12, v7);
  v13 = sub_1A4394B64(v7, v8, &off_1EE6E6C90);

  (*(v5 + 8))(v7, v4);
  return v13;
}

- (_TtC12PhotosUICore23PhotosDetailsTimeWidget)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsTimeWidget();
  return [(PXPhotosDetailsWidget *)&v3 init];
}

@end
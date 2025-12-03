@interface PhotosDetailsEXIFWidget
- (BOOL)hasLoadedContentData;
- (NSString)snappableWidgetIdentifier;
- (_TtC12PhotosUICore23PhotosDetailsEXIFWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (int64_t)contentLayoutStyle;
- (void)loadContentData;
@end

@implementation PhotosDetailsEXIFWidget

- (NSString)snappableWidgetIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (BOOL)hasLoadedContentData
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0xD8);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for PhotosDetailsEXIFWidgetViewModel();
    if (swift_dynamicCastClass())
    {
      v6 = sub_1A46BF300();
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = selfCopy;
      selfCopy = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (int64_t)contentLayoutStyle
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x168);
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

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsEXIFWidgetView();
  v9 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x108);
  selfCopy = self;
  v11 = v9();
  contentSizeCategory = [v11 contentSizeCategory];

  sub_1A412028C(contentSizeCategory, v7);
  v13 = sub_1A4394B64(v7, v8, &off_1EE6D6550);

  (*(v5 + 8))(v7, v4);
  return v13;
}

- (void)loadContentData
{
  selfCopy = self;
  sub_1A3D8E030();
}

- (_TtC12PhotosUICore23PhotosDetailsEXIFWidget)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsEXIFWidget();
  return [(PXPhotosDetailsWidget *)&v3 init];
}

@end
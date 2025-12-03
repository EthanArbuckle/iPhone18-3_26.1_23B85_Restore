@interface PhotosDetailsAssetDescriptionWidget
- (BOOL)hasLoadedContentData;
- (NSString)snappableWidgetIdentifier;
- (_TtC12PhotosUICore35PhotosDetailsAssetDescriptionWidget)init;
@end

@implementation PhotosDetailsAssetDescriptionWidget

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
    type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = (*(**(v6 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content) + 120))();
      v9 = v8;
      v10 = sub_1A45E0F98(v7, v8);

      sub_1A440B338(v7, v9);
    }

    else
    {

      v10 = 0;
    }

    selfCopy = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC12PhotosUICore35PhotosDetailsAssetDescriptionWidget)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsAssetDescriptionWidget();
  return [(PXPhotosDetailsWidget *)&v3 init];
}

@end
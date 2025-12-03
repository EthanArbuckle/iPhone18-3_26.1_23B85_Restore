@interface PhotosDetailsSharedWithYouWidget
- (NSString)snappableWidgetIdentifier;
- (_TtC12PhotosUICore32PhotosDetailsSharedWithYouWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (int64_t)contentLayoutStyle;
@end

@implementation PhotosDetailsSharedWithYouWidget

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
    v5 = sub_1A3DBE7C0();

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
  selfCopy = self;
  v4 = sub_1A3DBEC58();

  return v4;
}

- (_TtC12PhotosUICore32PhotosDetailsSharedWithYouWidget)init
{
  self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedWithYouWidget____lazy_storage___hasSiblingWidgetAbove] = 2;
  self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSharedWithYouWidget____lazy_storage___hasSiblingWidgetBelow] = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsSharedWithYouWidget();
  return [(PXPhotosDetailsWidget *)&v3 init];
}

@end
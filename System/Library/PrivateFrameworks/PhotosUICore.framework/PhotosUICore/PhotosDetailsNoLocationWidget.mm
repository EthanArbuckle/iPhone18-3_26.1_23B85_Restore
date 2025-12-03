@interface PhotosDetailsNoLocationWidget
- (PXPhotosDetailsContext)context;
- (_TtC12PhotosUICore29PhotosDetailsNoLocationWidget)init;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (int64_t)contentLayoutStyle;
- (void)setContext:(id)context;
@end

@implementation PhotosDetailsNoLocationWidget

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
  sub_1A4172318(contextCopy);
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  selfCopy = self;
  sub_1A4172AD8();
  v5 = v4;

  return v5;
}

- (int64_t)contentLayoutStyle
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self->PXPhotosDetailsWidget_opaque) + 0x168);
  selfCopy = self;
  if (v3())
  {

    return 2;
  }

  else
  {
    v6 = (*((*v2 & *selfCopy->PXPhotosDetailsWidget_opaque) + 0x108))();
    v7 = [v6 sizeClass] != 2;

    return 2 * v7;
  }
}

- (_TtC12PhotosUICore29PhotosDetailsNoLocationWidget)init
{
  v3 = &self->PXPhotosDetailsWidget_opaque[OBJC_IVAR____TtC12PhotosUICore29PhotosDetailsNoLocationWidget_contextObservation];
  v4 = type metadata accessor for PhotosDetailsNoLocationWidget();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(PXPhotosDetailsWidget *)&v6 init];
}

@end
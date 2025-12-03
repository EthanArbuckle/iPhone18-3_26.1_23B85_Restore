@interface PhotosPagingLayoutSpec
- (_TtC12PhotosUICore22PhotosPagingLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
@end

@implementation PhotosPagingLayoutSpec

- (_TtC12PhotosUICore22PhotosPagingLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PhotosPagingLayoutSpec_interPageSpacing) = 0x4024000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PhotosPagingLayoutSpec();
  collectionCopy = collection;
  v7 = [(PhotosPagingLayoutSpec *)&v9 initWithExtendedTraitCollection:collectionCopy options:options];

  if (v7)
  {
  }

  return v7;
}

@end
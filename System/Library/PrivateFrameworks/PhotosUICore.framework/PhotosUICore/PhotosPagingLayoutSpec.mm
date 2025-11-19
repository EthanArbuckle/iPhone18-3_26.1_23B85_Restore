@interface PhotosPagingLayoutSpec
- (_TtC12PhotosUICore22PhotosPagingLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
@end

@implementation PhotosPagingLayoutSpec

- (_TtC12PhotosUICore22PhotosPagingLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PhotosPagingLayoutSpec_interPageSpacing) = 0x4024000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PhotosPagingLayoutSpec();
  v6 = a3;
  v7 = [(PhotosPagingLayoutSpec *)&v9 initWithExtendedTraitCollection:v6 options:a4];

  if (v7)
  {
  }

  return v7;
}

@end
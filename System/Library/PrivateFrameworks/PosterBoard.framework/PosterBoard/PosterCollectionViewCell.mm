@interface PosterCollectionViewCell
- (_TtC11PosterBoard24PosterCollectionViewCell)initWithFrame:(CGRect)a3;
- (int64_t)pbf_layoutOrientation;
@end

@implementation PosterCollectionViewCell

- (_TtC11PosterBoard24PosterCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius) = 0;
  v8 = self + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode) = 0x3FF0000000000000;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PosterCollectionViewCell();
  v9 = [(PosterCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
  v10 = *((*MEMORY[0x277D85000] & v9->super.super.super.super.super.isa) + 0xE8);
  v11 = v9;
  v10();

  return v11;
}

- (int64_t)pbf_layoutOrientation
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong layoutOrientationProviderForView_];
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for PosterCollectionViewCell();
    return [(UIView *)&v6 pbf_layoutOrientation];
  }
}

@end
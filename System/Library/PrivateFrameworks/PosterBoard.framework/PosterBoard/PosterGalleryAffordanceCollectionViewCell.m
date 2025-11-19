@interface PosterGalleryAffordanceCollectionViewCell
- (_TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PosterGalleryAffordanceCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_21B637D78();
}

- (_TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_displayDate;
  v9 = sub_21B6C8854();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_prominentDisplayController) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_addButton) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard41PosterGalleryAffordanceCollectionViewCell_glassBackgroundView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for PosterGalleryAffordanceCollectionViewCell();
  return [(PosterCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

@end
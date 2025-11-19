@interface MediumCarouselCollectionViewCell
- (_TtC17PromotedContentUI32MediumCarouselCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation MediumCarouselCollectionViewCell

- (_TtC17PromotedContentUI32MediumCarouselCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MediumCarouselCollectionViewCell();
  v7 = [(CarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C4444();
  sub_1C19F2644();

  return v7;
}

@end
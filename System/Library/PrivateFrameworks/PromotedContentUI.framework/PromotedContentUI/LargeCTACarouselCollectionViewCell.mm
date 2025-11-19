@interface LargeCTACarouselCollectionViewCell
- (_TtC17PromotedContentUI34LargeCTACarouselCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation LargeCTACarouselCollectionViewCell

- (_TtC17PromotedContentUI34LargeCTACarouselCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for LargeCTACarouselCollectionViewCell();
  v7 = [(CTACarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C7654();
  sub_1C19F35FC();

  return v7;
}

@end
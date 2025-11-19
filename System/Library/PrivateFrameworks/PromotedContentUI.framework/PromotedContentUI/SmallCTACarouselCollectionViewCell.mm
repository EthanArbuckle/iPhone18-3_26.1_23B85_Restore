@interface SmallCTACarouselCollectionViewCell
- (_TtC17PromotedContentUI34SmallCTACarouselCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation SmallCTACarouselCollectionViewCell

- (_TtC17PromotedContentUI34SmallCTACarouselCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SmallCTACarouselCollectionViewCell();
  v7 = [(CTACarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C7654();
  sub_1C1A35C3C();

  return v7;
}

@end
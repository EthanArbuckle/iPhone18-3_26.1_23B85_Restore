@interface MediumCTACarouselCollectionViewCell
- (_TtC17PromotedContentUI35MediumCTACarouselCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation MediumCTACarouselCollectionViewCell

- (_TtC17PromotedContentUI35MediumCTACarouselCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MediumCTACarouselCollectionViewCell();
  v7 = [(CTACarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C7654();
  sub_1C19C77C8();

  return v7;
}

@end
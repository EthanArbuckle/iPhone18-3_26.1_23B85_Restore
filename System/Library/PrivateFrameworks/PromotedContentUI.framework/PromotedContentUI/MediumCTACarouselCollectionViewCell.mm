@interface MediumCTACarouselCollectionViewCell
- (_TtC17PromotedContentUI35MediumCTACarouselCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation MediumCTACarouselCollectionViewCell

- (_TtC17PromotedContentUI35MediumCTACarouselCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MediumCTACarouselCollectionViewCell();
  height = [(CTACarouselCollectionViewCell *)&v9 initWithFrame:x, y, width, height];
  sub_1C19C7654();
  sub_1C19C77C8();

  return height;
}

@end
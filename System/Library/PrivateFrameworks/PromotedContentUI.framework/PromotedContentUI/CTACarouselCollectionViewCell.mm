@interface CTACarouselCollectionViewCell
- (_TtC17PromotedContentUI29CTACarouselCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)didTapCTAButtonWithSender:(id)sender;
- (void)prepareForReuse;
@end

@implementation CTACarouselCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1C19B14AC();
}

- (void)didTapCTAButtonWithSender:(id)sender
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint);
    v5 = *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint);
    selfCopy = self;
    sub_1C19F4170(selfCopy, v4, v5);
    swift_unknownObjectRelease();
  }
}

- (_TtC17PromotedContentUI29CTACarouselCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CTACarouselCollectionViewCell();
  return [(CarouselCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end
@interface CarouselSinglePageLayout
- (void)displayScaleDidChange;
- (void)entityManagerDidChange;
- (void)updateIfNeeded;
- (void)updateMaskingEffects;
@end

@implementation CarouselSinglePageLayout

- (void)updateMaskingEffects
{
  v2 = self;
  sub_1A404C278();
}

- (void)displayScaleDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CarouselSinglePageLayout();
  v2 = v4.receiver;
  v3 = [(CarouselSinglePageLayout *)&v4 displayScaleDidChange];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v3);
}

- (void)updateIfNeeded
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICore24CarouselSinglePageLayout_updater);
  if (v2)
  {
    v3 = self;
    [v2 updateIfNeeded];
    v4.receiver = v3;
    v4.super_class = type metadata accessor for CarouselSinglePageLayout();
    [(CarouselSinglePageLayout *)&v4 updateIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

- (void)entityManagerDidChange
{
  v2 = self;
  sub_1A404C528();
}

@end
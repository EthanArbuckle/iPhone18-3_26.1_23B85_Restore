@interface CarouselContentLayout
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (NSIndexSet)axSpriteIndexes;
- (_TtC12PhotosUICore21CarouselContentLayout)init;
- (_TtC12PhotosUICore21CarouselContentLayout)initWithComposition:(id)a3;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (void)update;
- (void)updateContent;
- (void)updateDisplayedPageRange;
- (void)updateDisplayedPages;
- (void)updatePageControl;
@end

@implementation CarouselContentLayout

- (void)updateContent
{
  v2 = self;
  sub_1A3D9F9B0();
}

- (void)updateDisplayedPageRange
{
  v2 = self;
  sub_1A3D9FF28();
}

- (void)updateDisplayedPages
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_pageInfoFetcher);
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageRange);
  v4 = *(&self->super.super.super._updateFlags.needsUpdate + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageRange);
  v7 = self;
  v5 = v2(v3, v4);
  v6 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageInfos);
  *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_displayedPageInfos) = v5;
  sub_1A3D9F240(v6);
}

- (void)updatePageControl
{
  v2 = self;
  sub_1A3DA019C();
}

- (void)update
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore21CarouselContentLayout_updater);
  if (v2)
  {
    v3 = self;
    [v2 updateIfNeeded];
    v4.receiver = v3;
    v4.super_class = type metadata accessor for CarouselContentLayout();
    [(PXGCompositeLayout *)&v4 update];
  }

  else
  {
    __break(1u);
  }
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1A3DA0FBC(a4);

  return v8;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  sub_1A3C52C70(0, &qword_1EB12BFD0);

  return swift_getObjCClassFromMetadata();
}

- (NSIndexSet)axSpriteIndexes
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52414B4();
  v6 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (_TtC12PhotosUICore21CarouselContentLayout)initWithComposition:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore21CarouselContentLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
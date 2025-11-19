@interface TVRootShowcaseCarouselContainerCell
- (NSArray)preferredFocusEnvironments;
- (id)carouselView:(id)a3 cellForItemAtIndex:(int64_t)a4;
- (int64_t)indexForPreferredCenteredViewInCarouselView:(id)a3;
- (void)carouselView:(id)a3 didCenterItemAtIndex:(int64_t)a4;
- (void)carouselView:(id)a3 willDisplayCell:(id)a4 forItemAtIndex:(int64_t)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TVRootShowcaseCarouselContainerCell

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_carouselView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(TVRootShowcaseCarouselContainerCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B806488();
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  v2 = v5.receiver;
  [(TVRootShowcaseCarouselContainerCell *)&v5 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;

    v2 = v4;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements] = MEMORY[0x277D84F90];

    v2[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression] = 0;
  }
}

- (id)carouselView:(id)a3 cellForItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_20B8087DC(a4);

  return v8;
}

- (int64_t)indexForPreferredCenteredViewInCarouselView:(id)a3
{
  if (*(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex) == 1)
  {
    return [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_pageControl) currentPage];
  }

  else
  {
    return *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_preferredCenterIndex);
  }
}

- (void)carouselView:(id)a3 didCenterItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_20B808D50(a4);
}

- (void)carouselView:(id)a3 willDisplayCell:(id)a4 forItemAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_20B809054(a5);
}

@end
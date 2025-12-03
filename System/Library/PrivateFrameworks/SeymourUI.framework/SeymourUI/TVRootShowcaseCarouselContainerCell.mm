@interface TVRootShowcaseCarouselContainerCell
- (NSArray)preferredFocusEnvironments;
- (id)carouselView:(id)view cellForItemAtIndex:(int64_t)index;
- (int64_t)indexForPreferredCenteredViewInCarouselView:(id)view;
- (void)carouselView:(id)view didCenterItemAtIndex:(int64_t)index;
- (void)carouselView:(id)view willDisplayCell:(id)cell forItemAtIndex:(int64_t)index;
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
  selfCopy = self;
  [(TVRootShowcaseCarouselContainerCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B806488();
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  v2 = v5.receiver;
  [(TVRootShowcaseCarouselContainerCell *)&v5 didMoveToWindow];
  window = [v2 window];
  if (window)
  {
    v4 = window;

    v2 = v4;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_impressionElements] = MEMORY[0x277D84F90];

    v2[OBJC_IVAR____TtC9SeymourUI35TVRootShowcaseCarouselContainerCell_isUpdatingImpression] = 0;
  }
}

- (id)carouselView:(id)view cellForItemAtIndex:(int64_t)index
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_20B8087DC(index);

  return v8;
}

- (int64_t)indexForPreferredCenteredViewInCarouselView:(id)view
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

- (void)carouselView:(id)view didCenterItemAtIndex:(int64_t)index
{
  viewCopy = view;
  selfCopy = self;
  sub_20B808D50(index);
}

- (void)carouselView:(id)view willDisplayCell:(id)cell forItemAtIndex:(int64_t)index
{
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_20B809054(index);
}

@end
@interface TVRootShowcaseCarouselItemCell
- (CGSize)intrinsicContentSize;
- (void)didMoveToWindow;
- (void)handleTappedButton:(id)button;
- (void)prepareForReuse;
- (void)restartVideo;
@end

@implementation TVRootShowcaseCarouselItemCell

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.super._viewFlags + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout + 24);
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_layout);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVRootShowcaseCarouselItemCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFocusableCollectionViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_20BBD3004();
}

- (void)handleTappedButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_20BBD46AC(buttonCopy);
}

- (void)restartVideo
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayer;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_avPlayer);
  if (v4)
  {
    v5 = MEMORY[0x277CC08F0];
    v6 = *MEMORY[0x277CC08F0];
    v7 = *(MEMORY[0x277CC08F0] + 16);
    selfCopy = self;
    v11[0] = v6;
    v11[1] = *(v5 + 8);
    v11[2] = v7;
    [v4 seekToTime_];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  [v9 play];
}

@end
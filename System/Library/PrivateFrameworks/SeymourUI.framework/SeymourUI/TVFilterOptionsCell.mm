@interface TVFilterOptionsCell
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TVFilterOptionsCell

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20B8EA1AC(contextCopy, coordinatorCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  if (_UISolariumEnabled())
  {
    v3 = *(&selfCopy->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
    [(TVFilterOptionsCell *)selfCopy bounds];
    [v3 setCornerRadius_];
  }

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for TVFilterOptionsCell();
  [(TVFloatingContentCell *)&v4 layoutSubviews];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVFilterOptionsCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFocusableCollectionViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

@end
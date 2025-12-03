@interface TVFilterResultDetailHeaderCell
- (BOOL)canBecomeFocused;
- (NSArray)preferredFocusEnvironments;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)primaryActionButtonPressed:(id)pressed;
- (void)secondaryActionButtonPressed:(id)pressed;
@end

@implementation TVFilterResultDetailHeaderCell

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v3 = sub_20B8331BC();

  return v3 & 1;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView);
  selfCopy = self;
  arrangedSubviews = [v2 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v5 = sub_20C13CC74();

  sub_20BEF6C24(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVFilterResultDetailHeaderCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFilterResultDetailHeaderCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (void)primaryActionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_20B837780();
}

- (void)secondaryActionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_20B837964();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_20B835248(contextCopy, coordinatorCopy);
}

@end
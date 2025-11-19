@interface TVFilterResultActionsCell
- (NSArray)preferredFocusEnvironments;
- (void)clearButtonTapped;
- (void)prepareForReuse;
- (void)sortButtonTapped;
@end

@implementation TVFilterResultActionsCell

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_sortButton);
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
  v6 = type metadata accessor for TVFilterResultActionsCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(TVFilterResultActionsCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI25TVFilterResultActionsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (void)clearButtonTapped
{
  v2 = self;
  sub_20B5E1D54();
}

- (void)sortButtonTapped
{
  v2 = self;
  sub_20B5E1F80();
}

@end
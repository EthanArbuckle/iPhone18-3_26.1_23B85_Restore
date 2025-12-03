@interface TVWorkoutPlanGalleryBrickCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TVWorkoutPlanGalleryBrickCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVWorkoutPlanGalleryBrickCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFocusableCollectionViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for TVWorkoutPlanGalleryBrickCell();
  v2 = v13.receiver;
  [(TVWorkoutPlanGalleryBrickCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanGalleryBrickCell_floatingView];
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

@end
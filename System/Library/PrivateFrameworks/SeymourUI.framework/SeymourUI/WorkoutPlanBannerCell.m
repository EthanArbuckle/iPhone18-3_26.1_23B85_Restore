@interface WorkoutPlanBannerCell
- (void)prepareForReuse;
@end

@implementation WorkoutPlanBannerCell

- (void)prepareForReuse
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v7 = self;
  [(WorkoutPlanBannerCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI21WorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v6, v7 + v9);
  swift_endAccess();
}

@end
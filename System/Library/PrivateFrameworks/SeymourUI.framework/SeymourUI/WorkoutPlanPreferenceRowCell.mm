@interface WorkoutPlanPreferenceRowCell
- (void)prepareForReuse;
@end

@implementation WorkoutPlanPreferenceRowCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for WorkoutPlanPreferenceRowCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(WorkoutPlanPreferenceRowCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanPreferenceRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

@end
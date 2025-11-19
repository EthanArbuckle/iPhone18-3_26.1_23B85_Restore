@interface TVWorkoutPlanBannerCell
- (void)handleTappedButton:(id)a3;
- (void)prepareForReuse;
@end

@implementation TVWorkoutPlanBannerCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVWorkoutPlanBannerCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(TVWorkoutPlanBannerCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, v7 + v9);
  swift_endAccess();
}

- (void)handleTappedButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BD91C40(v4);
}

@end
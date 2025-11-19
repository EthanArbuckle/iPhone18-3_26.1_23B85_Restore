@interface STAppRatingChangedReviewRestrictionCell
- (_TtC20ScreenTimeSettingsUI39STAppRatingChangedReviewRestrictionCell)initWithCoder:(id)a3;
- (_TtC20ScreenTimeSettingsUI39STAppRatingChangedReviewRestrictionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC20ScreenTimeSettingsUI39STAppRatingChangedReviewRestrictionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STAppRatingChangedReviewRestrictionCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA118);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  v12 = a3;
  v9 = a3;
  v10 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA120);
  sub_264C64918(&qword_27FFAA128, &qword_27FFAA120);
  sub_264CC3DFC();
  sub_264CC3ECC();
  v13[3] = v5;
  v13[4] = sub_264C64918(&qword_27FFAA130, &qword_27FFAA118);
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_264CC3DEC();
  (*(v6 + 8))(v8, v5);
  MEMORY[0x26674B4D0](v13);
}

- (_TtC20ScreenTimeSettingsUI39STAppRatingChangedReviewRestrictionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_264CC45DC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_264C6B490(a3, v7, v9, a5);
}

- (_TtC20ScreenTimeSettingsUI39STAppRatingChangedReviewRestrictionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_264CC45DC();
    a4 = sub_264CC459C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC20ScreenTimeSettingsUI39STAppRatingChangedReviewRestrictionCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(STAppRatingChangedReviewRestrictionCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
@interface STAppRatingChangedTipCell
- (_TtC20ScreenTimeSettingsUI25STAppRatingChangedTipCell)initWithCoder:(id)coder;
- (_TtC20ScreenTimeSettingsUI25STAppRatingChangedTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20ScreenTimeSettingsUI25STAppRatingChangedTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STAppRatingChangedTipCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  specifierCopy = specifier;
  specifierCopy2 = specifier;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9338);
  sub_264C6B724();
  sub_264CC3DFC();
  sub_264CC3ECC();
  v13[3] = v5;
  v13[4] = sub_264C64918(&qword_27FFA9358, &qword_27FFA9330);
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_264CC3DEC();
  (*(v6 + 8))(v8, v5);
  MEMORY[0x26674B4D0](v13);
}

- (_TtC20ScreenTimeSettingsUI25STAppRatingChangedTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_264CC45DC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_264C6B490(style, v7, v9, specifier);
}

- (_TtC20ScreenTimeSettingsUI25STAppRatingChangedTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_264CC45DC();
    identifier = sub_264CC459C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC20ScreenTimeSettingsUI25STAppRatingChangedTipCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(STAppRatingChangedTipCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
@interface PSSpecifierToggleContentConfigurationCell
- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithCoder:(id)a3;
- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)controlValue;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation PSSpecifierToggleContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18B0EC44C(a3);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  v2 = v3.receiver;
  [(PSSwitchTableCell *)&v3 prepareForReuse];
  sub_18B0EDD88();
  *&v2[OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel] = 0;
}

- (void)setValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_18B0EC9B4(v6);

  sub_18B012FDC(v6);
}

- (id)controlValue
{
  v2 = self;
  sub_18B0ECC1C(v10);

  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_18B0F5340();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_18B0F51B0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return PSSpecifierToggleContentConfigurationCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_18B0F51B0();
    *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel) = 0;
    v6 = sub_18B0F5180();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  v7 = [(PSSwitchTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  v4 = a3;
  v5 = [(PSSpecifierToggleContentConfigurationCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
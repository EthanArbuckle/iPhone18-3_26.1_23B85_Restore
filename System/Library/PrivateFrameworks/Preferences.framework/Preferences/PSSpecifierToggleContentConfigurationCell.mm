@interface PSSpecifierToggleContentConfigurationCell
- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithCoder:(id)coder;
- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)controlValue;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation PSSpecifierToggleContentConfigurationCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_18B0EC44C(specifier);
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

- (void)setValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_18B0EC9B4(v6);

  sub_18B012FDC(v6);
}

- (id)controlValue
{
  selfCopy = self;
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

- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_18B0F51B0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return PSSpecifierToggleContentConfigurationCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(PSSwitchTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC11Preferences41PSSpecifierToggleContentConfigurationCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11Preferences41PSSpecifierToggleContentConfigurationCell_toggleContentViewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PSSpecifierToggleContentConfigurationCell();
  coderCopy = coder;
  v5 = [(PSSpecifierToggleContentConfigurationCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
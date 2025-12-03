@interface SHSSilentModeTableCell
- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithCoder:(id)coder;
- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SHSSilentModeTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  SHSSilentModeTableCell.refreshCellContents(with:)(specifier);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SHSSilentModeTableCell();
  v2 = v4.receiver;
  [(PSTableCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel];
  *&v2[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel] = 0;
}

- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_2658B6E38();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return SHSSilentModeTableCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_2658B6E38();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel) = 0;
    v6 = sub_2658B6E28();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for SHSSilentModeTableCell();
  v7 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SHSSilentModeTableCell();
  coderCopy = coder;
  v5 = [(SHSSilentModeTableCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
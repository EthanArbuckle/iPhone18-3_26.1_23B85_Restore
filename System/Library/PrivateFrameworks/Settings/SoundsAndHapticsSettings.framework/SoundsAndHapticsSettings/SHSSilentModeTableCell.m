@interface SHSSilentModeTableCell
- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithCoder:(id)a3;
- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SHSSilentModeTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  SHSSilentModeTableCell.refreshCellContents(with:)(a3);
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

- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_2658B6E38();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return SHSSilentModeTableCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SHSSilentModeTableCell();
  v4 = a3;
  v5 = [(SHSSilentModeTableCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
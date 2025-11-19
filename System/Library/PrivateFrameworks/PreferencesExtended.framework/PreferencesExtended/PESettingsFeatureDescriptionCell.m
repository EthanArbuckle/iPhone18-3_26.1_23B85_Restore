@interface PESettingsFeatureDescriptionCell
- (PESettingsFeatureDescriptionCell)initWithCoder:(id)a3;
- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PESettingsFeatureDescriptionCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  PESettingsFeatureDescriptionCell.refreshCellContents(with:)(a3);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PESettingsFeatureDescriptionCell;
  v2 = self;
  [(PSTableCell *)&v5 prepareForReuse];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  MEMORY[0x21CEF9600](v3);
  [(PESettingsFeatureDescriptionCell *)v2 setAccessibilityIdentifier:0];
}

- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_21B8D3190();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return PESettingsFeatureDescriptionCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v5 = a3;
    sub_21B8D3190();
    v6 = sub_21B8D3180();

    a3 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = PESettingsFeatureDescriptionCell;
  v7 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (PESettingsFeatureDescriptionCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PESettingsFeatureDescriptionCell;
  v3 = a3;
  v4 = [(PESettingsFeatureDescriptionCell *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end
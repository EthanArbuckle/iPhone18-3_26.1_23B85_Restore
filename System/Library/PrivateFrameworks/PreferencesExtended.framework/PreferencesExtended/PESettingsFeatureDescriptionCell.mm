@interface PESettingsFeatureDescriptionCell
- (PESettingsFeatureDescriptionCell)initWithCoder:(id)coder;
- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PESettingsFeatureDescriptionCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  PESettingsFeatureDescriptionCell.refreshCellContents(with:)(specifier);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PESettingsFeatureDescriptionCell;
  selfCopy = self;
  [(PSTableCell *)&v5 prepareForReuse];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  MEMORY[0x21CEF9600](v3);
  [(PESettingsFeatureDescriptionCell *)selfCopy setAccessibilityIdentifier:0];
}

- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_21B8D3190();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return PESettingsFeatureDescriptionCell.init(style:reuseIdentifier:specifier:)(style, v7, v9, specifier);
}

- (PESettingsFeatureDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    styleCopy = style;
    sub_21B8D3190();
    v6 = sub_21B8D3180();

    style = styleCopy;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = PESettingsFeatureDescriptionCell;
  v7 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (PESettingsFeatureDescriptionCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PESettingsFeatureDescriptionCell;
  coderCopy = coder;
  v4 = [(PESettingsFeatureDescriptionCell *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end
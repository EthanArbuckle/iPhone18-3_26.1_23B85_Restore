@interface SettingsCellularUIPlacardCell
- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithCoder:(id)coder;
- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SettingsCellularUIPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_2658E1938();
}

- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_26596A2AC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_2658E10B4(style, v7, v9, specifier);
}

- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_26596A2AC();
    identifier = sub_26596A27C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(SettingsCellularUIPlacardCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
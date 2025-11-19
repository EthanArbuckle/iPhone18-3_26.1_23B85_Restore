@interface SettingsCellularUIPlacardCell
- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithCoder:(id)a3;
- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SettingsCellularUIPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2658E1938();
}

- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_26596A2AC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_2658E10B4(a3, v7, v9, a5);
}

- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_26596A2AC();
    a4 = sub_26596A27C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC18SettingsCellularUI29SettingsCellularUIPlacardCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(SettingsCellularUIPlacardCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
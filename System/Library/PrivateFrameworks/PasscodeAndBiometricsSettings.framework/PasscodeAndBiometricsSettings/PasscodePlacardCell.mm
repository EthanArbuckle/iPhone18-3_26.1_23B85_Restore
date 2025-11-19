@interface PasscodePlacardCell
- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithCoder:(id)a3;
- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PasscodePlacardCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_25E119588();
}

- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v8 = sub_25E11D250();
    a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = a5;
  v11 = sub_25E118B40(a3, v8, a4, a5);

  return v11;
}

- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    sub_25E11D250();
    a4 = sub_25E11D220();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(PasscodePlacardCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end
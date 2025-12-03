@interface PasscodePlacardCell
- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithCoder:(id)coder;
- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PasscodePlacardCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  specifierCopy = specifier;
  selfCopy = self;
  sub_25E119588();
}

- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v8 = sub_25E11D250();
    identifier = v9;
  }

  else
  {
    v8 = 0;
  }

  specifierCopy = specifier;
  v11 = sub_25E118B40(style, v8, identifier, specifier);

  return v11;
}

- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    sub_25E11D250();
    identifier = sub_25E11D220();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC29PasscodeAndBiometricsSettings19PasscodePlacardCell)initWithCoder:(id)coder
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
  coderCopy = coder;
  v7 = [(PasscodePlacardCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end
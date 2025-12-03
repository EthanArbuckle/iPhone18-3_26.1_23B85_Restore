@interface PeopleUserDefaults
- (_TtC6People18PeopleUserDefaults)initWithSuiteName:(id)name;
@end

@implementation PeopleUserDefaults

- (_TtC6People18PeopleUserDefaults)initWithSuiteName:(id)name
{
  if (name)
  {
    sub_22F0D0CAC();
    v4 = sub_22F0D0C7C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for PeopleUserDefaults();
  v5 = [(PeopleUserDefaults *)&v7 initWithSuiteName:v4];

  if (v5)
  {
  }

  return v5;
}

@end
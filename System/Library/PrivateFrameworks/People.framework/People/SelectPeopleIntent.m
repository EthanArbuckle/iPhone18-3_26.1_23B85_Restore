@interface SelectPeopleIntent
- (SelectPeopleIntent)init;
- (SelectPeopleIntent)initWithCoder:(id)a3;
- (SelectPeopleIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (SelectPeopleIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation SelectPeopleIntent

- (SelectPeopleIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SelectPeopleIntent();
  return [(SelectPeopleIntent *)&v3 init];
}

- (SelectPeopleIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SelectPeopleIntent();
  v4 = a3;
  v5 = [(SelectPeopleIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (SelectPeopleIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_22F0D0CAC();
    v6 = a4;
    v7 = sub_22F0D0C7C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SelectPeopleIntent();
  v9 = [(SelectPeopleIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (SelectPeopleIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_22F0D0AFC();
    v8 = a3;
    v9 = a4;
    v10 = sub_22F0D0AEC();
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SelectPeopleIntent();
  v13 = [(SelectPeopleIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end
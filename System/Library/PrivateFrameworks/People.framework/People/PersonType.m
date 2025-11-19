@interface PersonType
- (PersonType)initWithCoder:(id)a3;
- (PersonType)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation PersonType

- (PersonType)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    v6 = sub_22F0D0CAC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_22F0D0CAC();
  v11 = v10;
  if (a5)
  {
    v12 = sub_22F0D0CAC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return PersonType.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (PersonType)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PersonType();
  v4 = a3;
  v5 = [(PersonType *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
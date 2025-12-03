@interface PersonType
- (PersonType)initWithCoder:(id)coder;
- (PersonType)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation PersonType

- (PersonType)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
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
  if (hint)
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

- (PersonType)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PersonType();
  coderCopy = coder;
  v5 = [(PersonType *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
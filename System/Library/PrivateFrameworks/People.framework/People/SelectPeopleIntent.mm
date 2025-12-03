@interface SelectPeopleIntent
- (SelectPeopleIntent)init;
- (SelectPeopleIntent)initWithCoder:(id)coder;
- (SelectPeopleIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (SelectPeopleIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation SelectPeopleIntent

- (SelectPeopleIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SelectPeopleIntent();
  return [(SelectPeopleIntent *)&v3 init];
}

- (SelectPeopleIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SelectPeopleIntent();
  coderCopy = coder;
  v5 = [(SelectPeopleIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (SelectPeopleIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_22F0D0CAC();
    storeCopy = store;
    v7 = sub_22F0D0C7C();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SelectPeopleIntent();
  v9 = [(SelectPeopleIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (SelectPeopleIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_22F0D0AFC();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_22F0D0AEC();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SelectPeopleIntent();
  v13 = [(SelectPeopleIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
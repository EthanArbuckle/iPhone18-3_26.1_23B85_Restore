@interface UpdateAlarmIntent
- (UpdateAlarmIntent)init;
- (UpdateAlarmIntent)initWithCoder:(id)coder;
- (UpdateAlarmIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (UpdateAlarmIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation UpdateAlarmIntent

- (UpdateAlarmIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateAlarmIntent();
  return [(UpdateAlarmIntent *)&v3 init];
}

- (UpdateAlarmIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UpdateAlarmIntent();
  coderCopy = coder;
  v5 = [(UpdateAlarmIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (UpdateAlarmIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_2692C7830();
    storeCopy = store;
    v7 = sub_2692C7820();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for UpdateAlarmIntent();
  v9 = [(UpdateAlarmIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (UpdateAlarmIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_2692C77E0();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_2692C77D0();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for UpdateAlarmIntent();
  v13 = [(UpdateAlarmIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
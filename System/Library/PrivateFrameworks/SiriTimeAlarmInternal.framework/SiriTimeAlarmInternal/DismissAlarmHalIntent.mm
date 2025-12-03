@interface DismissAlarmHalIntent
- (DismissAlarmHalIntent)init;
- (DismissAlarmHalIntent)initWithCoder:(id)coder;
- (DismissAlarmHalIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (DismissAlarmHalIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation DismissAlarmHalIntent

- (DismissAlarmHalIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DismissAlarmHalIntent();
  return [(DismissAlarmHalIntent *)&v3 init];
}

- (DismissAlarmHalIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DismissAlarmHalIntent();
  coderCopy = coder;
  v5 = [(DismissAlarmHalIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (DismissAlarmHalIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for DismissAlarmHalIntent();
  v9 = [(DismissAlarmHalIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (DismissAlarmHalIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for DismissAlarmHalIntent();
  v13 = [(DismissAlarmHalIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
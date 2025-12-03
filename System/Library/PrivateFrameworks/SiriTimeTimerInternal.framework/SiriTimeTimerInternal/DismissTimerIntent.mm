@interface DismissTimerIntent
- (DismissTimerIntent)init;
- (DismissTimerIntent)initWithCoder:(id)coder;
- (DismissTimerIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (DismissTimerIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation DismissTimerIntent

- (DismissTimerIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DismissTimerIntent();
  return [(DismissTimerIntent *)&v3 init];
}

- (DismissTimerIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DismissTimerIntent();
  coderCopy = coder;
  v5 = [(DismissTimerIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (DismissTimerIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_2693B3750();
    storeCopy = store;
    v7 = sub_2693B3740();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DismissTimerIntent();
  v9 = [(DismissTimerIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (DismissTimerIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_2693B3720();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_2693B3710();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for DismissTimerIntent();
  v13 = [(DismissTimerIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
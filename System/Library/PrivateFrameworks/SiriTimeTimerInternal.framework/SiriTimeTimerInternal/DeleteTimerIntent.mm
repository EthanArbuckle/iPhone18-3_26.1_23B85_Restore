@interface DeleteTimerIntent
- (DeleteTimerIntent)init;
- (DeleteTimerIntent)initWithCoder:(id)coder;
- (DeleteTimerIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (DeleteTimerIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation DeleteTimerIntent

- (DeleteTimerIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeleteTimerIntent();
  return [(DeleteTimerIntent *)&v3 init];
}

- (DeleteTimerIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeleteTimerIntent();
  coderCopy = coder;
  v5 = [(DeleteTimerIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (DeleteTimerIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for DeleteTimerIntent();
  v9 = [(DeleteTimerIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (DeleteTimerIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for DeleteTimerIntent();
  v13 = [(DeleteTimerIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
@interface CreateTimerIntent
- (CreateTimerIntent)init;
- (CreateTimerIntent)initWithCoder:(id)coder;
- (CreateTimerIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (CreateTimerIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation CreateTimerIntent

- (CreateTimerIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CreateTimerIntent();
  return [(CreateTimerIntent *)&v3 init];
}

- (CreateTimerIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CreateTimerIntent();
  coderCopy = coder;
  v5 = [(CreateTimerIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (CreateTimerIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for CreateTimerIntent();
  v9 = [(CreateTimerIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (CreateTimerIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for CreateTimerIntent();
  v13 = [(CreateTimerIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
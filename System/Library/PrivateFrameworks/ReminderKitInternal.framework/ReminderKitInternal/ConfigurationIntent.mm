@interface ConfigurationIntent
- (ConfigurationIntent)init;
- (ConfigurationIntent)initWithCoder:(id)coder;
- (ConfigurationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (ConfigurationIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation ConfigurationIntent

- (ConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfigurationIntent();
  return [(ConfigurationIntent *)&v3 init];
}

- (ConfigurationIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ConfigurationIntent();
  coderCopy = coder;
  v5 = [(ConfigurationIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (ConfigurationIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    storeCopy = store;
    v7 = sub_23030F8B8();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ConfigurationIntent();
  v9 = [(ConfigurationIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (ConfigurationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_23030F658();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_23030F638();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ConfigurationIntent();
  v13 = [(ConfigurationIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end
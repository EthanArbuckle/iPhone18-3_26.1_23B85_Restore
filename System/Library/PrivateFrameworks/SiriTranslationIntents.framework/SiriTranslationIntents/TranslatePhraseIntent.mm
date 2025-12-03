@interface TranslatePhraseIntent
- (TranslatePhraseIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (TranslatePhraseIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation TranslatePhraseIntent

- (TranslatePhraseIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_269424118();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return TranslatePhraseIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (TranslatePhraseIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_269424118();
  sub_269424118();
  if (name)
  {
    sub_2694240A8();
  }

  return TranslatePhraseIntent.init(domain:verb:parametersByName:)();
}

@end
@interface GetSupportedLanguagesIntent
- (GetSupportedLanguagesIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (GetSupportedLanguagesIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation GetSupportedLanguagesIntent

- (GetSupportedLanguagesIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = sub_269424118();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return GetSupportedLanguagesIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (GetSupportedLanguagesIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  sub_269424118();
  sub_269424118();
  if (a5)
  {
    sub_2694240A8();
  }

  return GetSupportedLanguagesIntent.init(domain:verb:parametersByName:)();
}

@end
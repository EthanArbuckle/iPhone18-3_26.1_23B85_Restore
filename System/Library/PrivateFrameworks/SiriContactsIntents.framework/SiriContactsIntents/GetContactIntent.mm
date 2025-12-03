@interface GetContactIntent
- (GetContactIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (GetContactIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation GetContactIntent

- (GetContactIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return GetContactIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (GetContactIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (name)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return GetContactIntent.init(domain:verb:parametersByName:)();
}

@end
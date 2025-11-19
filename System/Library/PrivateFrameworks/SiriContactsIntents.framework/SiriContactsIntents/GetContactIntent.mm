@interface GetContactIntent
- (GetContactIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (GetContactIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation GetContactIntent

- (GetContactIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return GetContactIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (GetContactIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return GetContactIntent.init(domain:verb:parametersByName:)();
}

@end
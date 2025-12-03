@interface ModifyContactAttributeIntent
- (ModifyContactAttributeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (ModifyContactAttributeIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation ModifyContactAttributeIntent

- (ModifyContactAttributeIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  return ModifyContactAttributeIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (ModifyContactAttributeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (name)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return ModifyContactAttributeIntent.init(domain:verb:parametersByName:)();
}

@end
@interface ModifyContactAttributeIntent
- (ModifyContactAttributeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (ModifyContactAttributeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation ModifyContactAttributeIntent

- (ModifyContactAttributeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  return ModifyContactAttributeIntent.init(identifier:backingStore:)(v5, v7, a4);
}

- (ModifyContactAttributeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return ModifyContactAttributeIntent.init(domain:verb:parametersByName:)();
}

@end
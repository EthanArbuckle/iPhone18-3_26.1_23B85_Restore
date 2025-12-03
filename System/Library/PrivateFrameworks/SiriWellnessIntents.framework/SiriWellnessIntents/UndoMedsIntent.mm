@interface UndoMedsIntent
- (UndoMedsIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (UndoMedsIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation UndoMedsIntent

- (UndoMedsIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](store);
  if (identifier)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
    MEMORY[0x277D82BD8](identifier);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return UndoMedsIntent.init(identifier:backingStore:)(v8, v9, store);
}

- (UndoMedsIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  MEMORY[0x277D82BE0](domain);
  MEMORY[0x277D82BE0](verb);
  MEMORY[0x277D82BE0](name);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v5;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v6;
  if (name)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](name);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = UndoMedsIntent.init(domain:verb:parametersByName:)(v13, v14, v16, v17, v10);
  MEMORY[0x277D82BD8](verb);
  MEMORY[0x277D82BD8](domain);
  return v8;
}

@end
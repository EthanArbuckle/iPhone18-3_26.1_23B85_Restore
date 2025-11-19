@interface LogSpecificMedicationsIntent
- (LogSpecificMedicationsIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (LogSpecificMedicationsIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation LogSpecificMedicationsIntent

- (LogSpecificMedicationsIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
    MEMORY[0x277D82BD8](a3);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return LogSpecificMedicationsIntent.init(identifier:backingStore:)(v8, v9, a4);
}

- (LogSpecificMedicationsIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v5;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v6;
  if (a5)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a5);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = LogSpecificMedicationsIntent.init(domain:verb:parametersByName:)(v13, v14, v16, v17, v10);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

@end
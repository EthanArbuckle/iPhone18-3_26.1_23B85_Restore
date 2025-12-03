@interface MatchedMedName
+ (BOOL)supportsSecureCoding;
- (MatchedMedName)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation MatchedMedName

+ (BOOL)supportsSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MatchedMedName.supportsSecureCoding.getter();
  return _convertBoolToObjCBool(_:)() & 1;
}

- (MatchedMedName)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](string);
  MEMORY[0x277D82BE0](hint);
  if (identifier)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v5;
    MEMORY[0x277D82BD8](identifier);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v6;
  if (hint)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v7;
    MEMORY[0x277D82BD8](hint);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v9 = MatchedMedName.init(identifier:display:pronunciationHint:)(v18, v19, v14, v15, v12, v13);
  MEMORY[0x277D82BD8](string);
  return v9;
}

@end
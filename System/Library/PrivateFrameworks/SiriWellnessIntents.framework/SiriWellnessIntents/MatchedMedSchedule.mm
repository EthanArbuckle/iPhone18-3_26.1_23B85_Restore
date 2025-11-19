@interface MatchedMedSchedule
+ (BOOL)supportsSecureCoding;
- (MatchedMedSchedule)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation MatchedMedSchedule

+ (BOOL)supportsSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MatchedMedSchedule.supportsSecureCoding.getter();
  return _convertBoolToObjCBool(_:)() & 1;
}

- (MatchedMedSchedule)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  if (a3)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v5;
    MEMORY[0x277D82BD8](a3);
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
  if (a5)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v7;
    MEMORY[0x277D82BD8](a5);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v9 = MatchedMedSchedule.init(identifier:display:pronunciationHint:)(v18, v19, v14, v15, v12, v13);
  MEMORY[0x277D82BD8](a4);
  return v9;
}

@end
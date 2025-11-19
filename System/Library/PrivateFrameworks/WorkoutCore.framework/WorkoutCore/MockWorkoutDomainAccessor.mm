@interface MockWorkoutDomainAccessor
- (BOOL)BOOLForKey:(id)a3;
- (id)dataForPerGizmoDomainAndKey:(id)a3;
- (void)writeBoolPerGizmoDomainAndKey:(id)a3 value:(BOOL)a4;
- (void)writeDataPerGizmoDomainAndKey:(id)a3 data:(id)a4;
@end

@implementation MockWorkoutDomainAccessor

- (BOOL)BOOLForKey:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  LOBYTE(v3) = MockWorkoutDomainAccessor.BOOL(forKey:)(v6);

  return v3 & 1;
}

- (id)dataForPerGizmoDomainAndKey:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = MockWorkoutDomainAccessor.data(forPerGizmoDomainAndKey:)(v3, v5);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v6, v8);
    v9 = isa;
  }

  return v9;
}

- (void)writeDataPerGizmoDomainAndKey:(id)a3 data:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  swift_beginAccess();
  outlined copy of Data._Representation(v10, v12);
  v13 = *&self->dataDictionary[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *&self->dataDictionary[4];
  *&self->dataDictionary[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v12, v6, v8, isUniquelyReferenced_nonNull_native);

  *&self->dataDictionary[4] = v15;
  swift_endAccess();

  outlined consume of Data._Representation(v10, v12);
}

- (void)writeBoolPerGizmoDomainAndKey:(id)a3 value:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_beginAccess();

  v9 = *&self->BOOLDictionary[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *&self->BOOLDictionary[4];
  *&self->BOOLDictionary[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, v6, v8, isUniquelyReferenced_nonNull_native);
  *&self->BOOLDictionary[4] = v11;
  swift_endAccess();
}

@end
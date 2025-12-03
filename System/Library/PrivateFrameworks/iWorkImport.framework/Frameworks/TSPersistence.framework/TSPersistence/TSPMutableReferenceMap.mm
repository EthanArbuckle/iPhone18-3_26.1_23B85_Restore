@interface TSPMutableReferenceMap
- (_TtC13TSPersistence22TSPMutableReferenceMap)initWithCapacity:(int64_t)capacity;
- (id)allReferencesFromIdentifier:(int64_t)identifier;
- (id)makeReferenceMap;
- (int64_t)count;
- (int64_t)hash;
- (unint64_t)incrementReferenceFromIdentifier:(uint64_t)identifier toIdentifier:(uint64_t)toIdentifier increment:(uint64_t)increment;
- (void)enumerateReferencesUsingBlock:(id)block;
- (void)mergeWithReferenceMap:(id)map;
- (void)replaceReferencesFromIdentifier:(int64_t)identifier withIdentifierSet:(id)set;
@end

@implementation TSPMutableReferenceMap

- (_TtC13TSPersistence22TSPMutableReferenceMap)initWithCapacity:(int64_t)capacity
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap) = MEMORY[0x277C9ED00](capacity, MEMORY[0x277D84A28], &type metadata for TSPIdentifierSetStruct, MEMORY[0x277D84A38]);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TSPMutableReferenceMap *)&v7 init];
}

- (int64_t)count
{
  v3 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

- (id)allReferencesFromIdentifier:(int64_t)identifier
{
  selfCopy = self;
  v5 = TSPMutableReferenceMap.allReferences(from:)(identifier);

  return v5;
}

- (void)enumerateReferencesUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  _Block_copy(v4);
  selfCopy = self;

  sub_276B0762C(v8, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (unint64_t)incrementReferenceFromIdentifier:(uint64_t)identifier toIdentifier:(uint64_t)toIdentifier increment:(uint64_t)increment
{
  swift_beginAccess();
  selfCopy = self;
  v10 = sub_276B05E64(identifier, toIdentifier, increment);
  swift_endAccess();

  return v10;
}

- (void)replaceReferencesFromIdentifier:(int64_t)identifier withIdentifierSet:(id)set
{
  v7 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v8 = *(set + v7);
  v9 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  setCopy = set;
  selfCopy = self;
  v12 = *(&self->super.isa + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(&self->super.isa + v9);
  *(&self->super.isa + v9) = 0x8000000000000000;
  sub_276B04D78(v8, identifier, isUniquelyReferenced_nonNull_native);
  *(&self->super.isa + v9) = v14;
  swift_endAccess();
}

- (void)mergeWithReferenceMap:(id)map
{
  v5 = *(map + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  swift_beginAccess();
  mapCopy = map;
  selfCopy = self;
  sub_276B05FBC(v5);
  swift_endAccess();
}

- (id)makeReferenceMap
{
  v3 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = type metadata accessor for TSPReferenceMap();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap] = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  v7 = [(TSPMutableReferenceMap *)&v9 init];

  return v7;
}

- (int64_t)hash
{
  v3 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  sub_276BDAF74();
  selfCopy = self;

  sub_276B057D4(v8, v4);

  v6 = sub_276BDAFA4();

  return v6;
}

@end
@interface TSPMutableReferenceMap
- (_TtC13TSPersistence22TSPMutableReferenceMap)initWithCapacity:(int64_t)a3;
- (id)allReferencesFromIdentifier:(int64_t)a3;
- (id)makeReferenceMap;
- (int64_t)count;
- (int64_t)hash;
- (unint64_t)incrementReferenceFromIdentifier:(uint64_t)a3 toIdentifier:(uint64_t)a4 increment:(uint64_t)a5;
- (void)enumerateReferencesUsingBlock:(id)a3;
- (void)mergeWithReferenceMap:(id)a3;
- (void)replaceReferencesFromIdentifier:(int64_t)a3 withIdentifierSet:(id)a4;
@end

@implementation TSPMutableReferenceMap

- (_TtC13TSPersistence22TSPMutableReferenceMap)initWithCapacity:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap) = MEMORY[0x277C9ED00](a3, MEMORY[0x277D84A28], &type metadata for TSPIdentifierSetStruct, MEMORY[0x277D84A38]);
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

- (id)allReferencesFromIdentifier:(int64_t)a3
{
  v4 = self;
  v5 = TSPMutableReferenceMap.allReferences(from:)(a3);

  return v5;
}

- (void)enumerateReferencesUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  _Block_copy(v4);
  v7 = self;

  sub_276B0762C(v8, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (unint64_t)incrementReferenceFromIdentifier:(uint64_t)a3 toIdentifier:(uint64_t)a4 increment:(uint64_t)a5
{
  swift_beginAccess();
  v9 = a1;
  v10 = sub_276B05E64(a3, a4, a5);
  swift_endAccess();

  return v10;
}

- (void)replaceReferencesFromIdentifier:(int64_t)a3 withIdentifierSet:(id)a4
{
  v7 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v8 = *(a4 + v7);
  v9 = OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v10 = a4;
  v11 = self;
  v12 = *(&self->super.isa + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(&self->super.isa + v9);
  *(&self->super.isa + v9) = 0x8000000000000000;
  sub_276B04D78(v8, a3, isUniquelyReferenced_nonNull_native);
  *(&self->super.isa + v9) = v14;
  swift_endAccess();
}

- (void)mergeWithReferenceMap:(id)a3
{
  v5 = *(a3 + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  swift_beginAccess();
  v6 = a3;
  v7 = self;
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
  v5 = self;

  sub_276B057D4(v8, v4);

  v6 = sub_276BDAFA4();

  return v6;
}

@end
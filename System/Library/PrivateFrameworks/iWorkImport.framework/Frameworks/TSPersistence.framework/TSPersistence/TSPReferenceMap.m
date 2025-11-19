@interface TSPReferenceMap
- (id)allReferencesFromIdentifier:(int64_t)a3;
- (id)makeMutableReferenceMap;
- (int64_t)hash;
- (void)enumerateReferencesUsingBlock:(id)a3;
@end

@implementation TSPReferenceMap

- (id)allReferencesFromIdentifier:(int64_t)a3
{
  v4 = self;
  v5 = TSPReferenceMap.allReferences(from:)(a3);

  return v5;
}

- (void)enumerateReferencesUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  _Block_copy(v4);
  v6 = self;
  sub_276B0762C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)makeMutableReferenceMap
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  v3 = type metadata accessor for TSPMutableReferenceMap();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13TSPersistence22TSPMutableReferenceMap_referenceMap] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(TSPReferenceMap *)&v7 init];

  return v5;
}

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence15TSPReferenceMap_referenceMap);
  sub_276BDAF74();
  v4 = self;
  sub_276B057D4(v7, v3);
  v5 = sub_276BDAFA4();

  return v5;
}

@end
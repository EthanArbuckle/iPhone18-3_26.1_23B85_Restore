@interface TSPIdentifierSet
- (BOOL)intersectsIndexSet:(id)a3;
- (id)formMergeWithIdentifierSet:(id)a3;
- (id)initFrom:(id)a3;
- (id)makeMutableIdentifierSet;
- (int64_t)countForIdentifier:(int64_t)a3 default:(int64_t)a4;
- (int64_t)hash;
- (void)enumerateIdentifiersUsingBlock:(id)a3;
@end

@implementation TSPIdentifierSet

- (id)initFrom:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = sub_276BDAF14();
  v6 = sub_276B05A90(v5);

  *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(TSPIdentifierSet *)&v8 init];
}

- (int64_t)countForIdentifier:(int64_t)a3 default:(int64_t)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  if (*(v5 + 16))
  {
    v6 = sub_276B04718(a3);
    if (v7)
    {
      if (*(*(v5 + 56) + 8 * v6))
      {
        return *(*(v5 + 56) + 8 * v6);
      }
    }
  }

  return a4;
}

- (void)enumerateIdentifiersUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  _Block_copy(v4);
  v6 = self;
  sub_276B05C10(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)intersectsIndexSet:(id)a3
{
  v4 = sub_276BDAEF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_276BDAED4();
  v9 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  v10 = self;
  LOBYTE(v9) = sub_276B02F00(v8, v9);
  (*(v5 + 8))(v8, v4);

  return v9 & 1;
}

- (id)formMergeWithIdentifierSet:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  v7 = *(a3 + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  v8 = a3;
  v9 = self;
  v10 = sub_276B0308C(v7, v6);
  v11 = objc_allocWithZone(ObjectType);
  *&v11[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v10;
  v14.receiver = v11;
  v14.super_class = ObjectType;
  v12 = [(TSPIdentifierSet *)&v14 init];

  return v12;
}

- (id)makeMutableIdentifierSet
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  v3 = type metadata accessor for TSPMutableIdentifierSet();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(TSPIdentifierSet *)&v7 init];

  return v5;
}

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet);
  sub_276BDAF74();
  v4 = self;
  sub_276B05590(v7, v3);
  v5 = sub_276BDAFA4();

  return v5;
}

@end
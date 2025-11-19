@interface TSPMutableIdentifierSet
- (_TtC13TSPersistence23TSPMutableIdentifierSet)initWithCapacity:(int64_t)a3;
- (id)makeIdentifierSet;
- (int64_t)count;
- (int64_t)countForIdentifier:(int64_t)a3 default:(int64_t)a4;
- (int64_t)hash;
- (int64_t)incrementCountBy:(int64_t)a3 forIdentifier:(int64_t)a4;
- (int64_t)setCount:(int64_t)a3 forIdentifier:(int64_t)a4;
- (void)enumerateIdentifiersUsingBlock:(id)a3;
- (void)mergeWithIdentifierSet:(id)a3;
@end

@implementation TSPMutableIdentifierSet

- (_TtC13TSPersistence23TSPMutableIdentifierSet)initWithCapacity:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet) = MEMORY[0x277C9ED00](a3, MEMORY[0x277D84A28], MEMORY[0x277D83B88], MEMORY[0x277D84A38]);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TSPMutableIdentifierSet *)&v7 init];
}

- (int64_t)count
{
  v3 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

- (int64_t)countForIdentifier:(int64_t)a3 default:(int64_t)a4
{
  v7 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  if (*(v8 + 16))
  {
    v9 = sub_276B04718(a3);
    if (v10)
    {
      if (*(*(v8 + 56) + 8 * v9))
      {
        return *(*(v8 + 56) + 8 * v9);
      }
    }
  }

  return a4;
}

- (void)enumerateIdentifiersUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  _Block_copy(v4);
  v7 = self;

  sub_276B05C10(v8, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (int64_t)incrementCountBy:(int64_t)a3 forIdentifier:(int64_t)a4
{
  v6 = self;
  v7 = TSPMutableIdentifierSet.incrementCount(by:for:)(a3, a4);

  return v7;
}

- (int64_t)setCount:(int64_t)a3 forIdentifier:(int64_t)a4
{
  swift_beginAccess();
  v7 = self;
  v8 = sub_276BDAEC4();
  v9 = sub_276B0521C(a3, a4);
  if (v10 & 1 | (v9 == 0))
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  swift_endAccess();

  return v11;
}

- (void)mergeWithIdentifierSet:(id)a3
{
  v4 = a3;
  v5 = self;
  TSPMutableIdentifierSet.merge(_:)(v4);
}

- (id)makeIdentifierSet
{
  v3 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = type metadata accessor for TSPIdentifierSet();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC13TSPersistence16TSPIdentifierSet_identifierSet] = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  v7 = [(TSPMutableIdentifierSet *)&v9 init];

  return v7;
}

- (int64_t)hash
{
  v3 = OBJC_IVAR____TtC13TSPersistence23TSPMutableIdentifierSet_identifierSet;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  sub_276BDAF74();
  v5 = self;

  sub_276B05590(&v8, v4);

  v6 = sub_276BDAFA4();

  return v6;
}

@end
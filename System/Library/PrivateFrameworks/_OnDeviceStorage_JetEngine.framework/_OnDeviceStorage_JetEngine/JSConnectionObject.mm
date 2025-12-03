@interface JSConnectionObject
- (_TtC26_OnDeviceStorage_JetEngine18JSConnectionObject)init;
- (id)delete:(id)delete;
- (id)exists:(id)exists;
- (id)insert:(id)insert;
- (id)pluck:(id)pluck;
- (id)scalar:(id)scalar;
- (id)select:(id)select;
- (id)selectPaginated:(id)paginated :(id)a4;
- (id)triggerDataDeletion:(id)deletion;
- (id)update:(id)update;
- (id)upsert:(id)upsert;
@end

@implementation JSConnectionObject

- (id)select:(id)select
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5DA60;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  selectCopy = select;

  v10 = sub_29EC3AA5C("select", 6, 2, selectCopy, &unk_29EC5DA70, v7, &unk_2A25538D0, sub_29EC3D244, &block_descriptor_276);

  return v10;
}

- (id)selectPaginated:(id)paginated :(id)a4
{
  paginatedCopy = paginated;
  v7 = a4;
  selfCopy = self;
  v9 = sub_29EC3342C(paginatedCopy, v7);

  return v9;
}

- (id)pluck:(id)pluck
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D9C0;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  pluckCopy = pluck;

  v10 = sub_29EC3AA5C("pluck", 5, 2, pluckCopy, &unk_29EC5D9D0, v7, &unk_2A25536C8, sub_29EC3C29C, &block_descriptor_226);

  return v10;
}

- (id)scalar:(id)scalar
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D960;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  scalarCopy = scalar;

  v10 = sub_29EC3AA5C("scalar", 6, 2, scalarCopy, &unk_29EC5D970, v7, &unk_2A2553588, sub_29EC3BEF0, &block_descriptor_191);

  return v10;
}

- (id)exists:(id)exists
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D910;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  existsCopy = exists;

  v10 = sub_29EC3AA5C("exists", 6, 2, existsCopy, &unk_29EC5D920, v7, &unk_2A2553448, sub_29EC3BB4C, &block_descriptor_156);

  return v10;
}

- (id)insert:(id)insert
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D8F0;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  insertCopy = insert;

  v10 = sub_29EC3AA5C("insert", 6, 2, insertCopy, &unk_29EC5D900, v7, &unk_2A2553240, sub_29EC3B3EC, &block_descriptor_102);

  return v10;
}

- (id)upsert:(id)upsert
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  upsertCopy = upsert;
  v8 = sub_29EC3AA5C("upsert", 6, 2, upsertCopy, &unk_29EC5D8A0, v5, &unk_2A2553240, sub_29EC3B3EC, &block_descriptor_102);

  return v8;
}

- (id)update:(id)update
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D888;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  updateCopy = update;

  v10 = sub_29EC3AA5C("update", 6, 2, updateCopy, &unk_29EC5D890, v7, &unk_2A2552FE8, sub_29EC3AC14, &block_descriptor_38);

  return v10;
}

- (id)delete:(id)delete
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D870;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  deleteCopy = delete;

  v10 = sub_29EC3AA5C("delete", 6, 2, deleteCopy, &unk_29EC5D878, v7, &unk_2A2552FE8, sub_29EC3AC14, &block_descriptor_38);

  return v10;
}

- (id)triggerDataDeletion:(id)deletion
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D828;
  v7[3] = v6;
  v7[4] = ObjectType;
  selfCopy = self;
  deletionCopy = deletion;

  v10 = sub_29EC3AA5C("triggerDataDeletion", 19, 2, deletionCopy, &unk_29EC5D838, v7, &unk_2A2552FE8, sub_29EC3AC14, &block_descriptor_38);

  return v10;
}

- (_TtC26_OnDeviceStorage_JetEngine18JSConnectionObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
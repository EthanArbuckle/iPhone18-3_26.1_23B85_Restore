@interface JSConnectionObject
- (_TtC26_OnDeviceStorage_JetEngine18JSConnectionObject)init;
- (id)delete:(id)a3;
- (id)exists:(id)a3;
- (id)insert:(id)a3;
- (id)pluck:(id)a3;
- (id)scalar:(id)a3;
- (id)select:(id)a3;
- (id)selectPaginated:(id)a3 :(id)a4;
- (id)triggerDataDeletion:(id)a3;
- (id)update:(id)a3;
- (id)upsert:(id)a3;
@end

@implementation JSConnectionObject

- (id)select:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5DA60;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("select", 6, 2, v9, &unk_29EC5DA70, v7, &unk_2A25538D0, sub_29EC3D244, &block_descriptor_276);

  return v10;
}

- (id)selectPaginated:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_29EC3342C(v6, v7);

  return v9;
}

- (id)pluck:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D9C0;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("pluck", 5, 2, v9, &unk_29EC5D9D0, v7, &unk_2A25536C8, sub_29EC3C29C, &block_descriptor_226);

  return v10;
}

- (id)scalar:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D960;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("scalar", 6, 2, v9, &unk_29EC5D970, v7, &unk_2A2553588, sub_29EC3BEF0, &block_descriptor_191);

  return v10;
}

- (id)exists:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D910;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("exists", 6, 2, v9, &unk_29EC5D920, v7, &unk_2A2553448, sub_29EC3BB4C, &block_descriptor_156);

  return v10;
}

- (id)insert:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D8F0;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("insert", 6, 2, v9, &unk_29EC5D900, v7, &unk_2A2553240, sub_29EC3B3EC, &block_descriptor_102);

  return v10;
}

- (id)upsert:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v6 = self;
  v7 = a3;
  v8 = sub_29EC3AA5C("upsert", 6, 2, v7, &unk_29EC5D8A0, v5, &unk_2A2553240, sub_29EC3B3EC, &block_descriptor_102);

  return v8;
}

- (id)update:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D888;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("update", 6, 2, v9, &unk_29EC5D890, v7, &unk_2A2552FE8, sub_29EC3AC14, &block_descriptor_38);

  return v10;
}

- (id)delete:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D870;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("delete", 6, 2, v9, &unk_29EC5D878, v7, &unk_2A2552FE8, sub_29EC3AC14, &block_descriptor_38);

  return v10;
}

- (id)triggerDataDeletion:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = swift_allocObject();
  v7[2] = &unk_29EC5D828;
  v7[3] = v6;
  v7[4] = ObjectType;
  v8 = self;
  v9 = a3;

  v10 = sub_29EC3AA5C("triggerDataDeletion", 19, 2, v9, &unk_29EC5D838, v7, &unk_2A2552FE8, sub_29EC3AC14, &block_descriptor_38);

  return v10;
}

- (_TtC26_OnDeviceStorage_JetEngine18JSConnectionObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
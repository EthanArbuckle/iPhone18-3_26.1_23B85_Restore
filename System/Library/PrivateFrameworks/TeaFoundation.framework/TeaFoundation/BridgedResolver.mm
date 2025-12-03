@interface BridgedResolver
- (id)resolveClass:(Class)class;
- (id)resolveClass:(Class)class contextBlock:(id)block;
- (id)resolveClass:(Class)class name:(id)name;
- (id)resolveClass:(Class)class name:(id)name contextBlock:(id)block;
- (id)resolveOptionalClass:(Class)class;
- (id)resolveOptionalClass:(Class)class contextBlock:(id)block;
- (id)resolveOptionalClass:(Class)class name:(id)name;
- (id)resolveOptionalClass:(Class)class name:(id)name contextBlock:(id)block;
- (id)resolveOptionalProtocol:(id)protocol;
- (id)resolveOptionalProtocol:(id)protocol contextBlock:(id)block;
- (id)resolveOptionalProtocol:(id)protocol name:(id)name;
- (id)resolveOptionalProtocol:(id)protocol name:(id)name contextBlock:(id)block;
- (id)resolveProtocol:(id)protocol;
- (id)resolveProtocol:(id)protocol contextBlock:(id)block;
- (id)resolveProtocol:(id)protocol name:(id)name;
- (id)resolveProtocol:(id)protocol name:(id)name contextBlock:(id)block;
@end

@implementation BridgedResolver

- (id)resolveClass:(Class)class
{
  swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1BEFF7D3C(sub_1BEFF8168, &v7);

  __swift_project_boxed_opaque_existential_1(&v7, v8);
  v5 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v7);

  return v5;
}

- (id)resolveProtocol:(id)protocol
{
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BEFF7D3C(sub_1BEFFD08C, &v8);

  __swift_project_boxed_opaque_existential_1(&v8, v9);
  v6 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v8);

  return v6;
}

- (id)resolveClass:(Class)class name:(id)name
{
  if (name)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1BF023920(sub_1BF023868, &v8);

  __swift_project_boxed_opaque_existential_1(&v8, v9);
  v6 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v8);

  return v6;
}

- (id)resolveProtocol:(id)protocol name:(id)name
{
  if (name)
  {
    sub_1BF17A0AC();
  }

  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF023920(sub_1BF023A44, &v10);

  __swift_project_boxed_opaque_existential_1(&v10, v11);
  v8 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v10);

  return v8;
}

- (id)resolveOptionalClass:(Class)class
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1BEFF8168(ObjCClassMetadata);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1BF17B84C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)resolveOptionalClass:(Class)class name:(id)name
{
  if (name)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  selfCopy = self;
  sub_1BF023868();

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1BF17B84C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)resolveClass:(Class)class contextBlock:(id)block
{
  v5 = _Block_copy(block);
  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1BF023920(sub_1BF0E86DC, &v9);

  __swift_project_boxed_opaque_existential_1(&v9, v10);
  v7 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v9);

  return v7;
}

- (id)resolveOptionalClass:(Class)class contextBlock:(id)block
{
  v5 = _Block_copy(block);
  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1BF0E86DC();

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_1BF17B84C();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)resolveClass:(Class)class name:(id)name contextBlock:(id)block
{
  v7 = _Block_copy(block);
  if (name)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v7;
  selfCopy = self;
  sub_1BF0E9528(sub_1BF0E8A58, &v11);

  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v9 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v11);

  return v9;
}

- (id)resolveOptionalClass:(Class)class name:(id)name contextBlock:(id)block
{
  v7 = _Block_copy(block);
  if (name)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v7;
  selfCopy = self;
  sub_1BF0E8A58();

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1BF17B84C();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)resolveOptionalProtocol:(id)protocol
{
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BEFFD08C(protocolCopy);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1BF17B84C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)resolveProtocol:(id)protocol contextBlock:(id)block
{
  v6 = _Block_copy(block);
  *(swift_allocObject() + 16) = v6;
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF023920(sub_1BF0E9020, &v11);

  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v9 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v11);

  return v9;
}

- (id)resolveOptionalProtocol:(id)protocol contextBlock:(id)block
{
  v6 = _Block_copy(block);
  *(swift_allocObject() + 16) = v6;
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF0E9020();

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1BF17B84C();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)resolveOptionalProtocol:(id)protocol name:(id)name
{
  if (name)
  {
    sub_1BF17A0AC();
  }

  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF023A44();

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1BF17B84C();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)resolveProtocol:(id)protocol name:(id)name contextBlock:(id)block
{
  v8 = _Block_copy(block);
  if (name)
  {
    sub_1BF17A0AC();
  }

  *(swift_allocObject() + 16) = v8;
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF0E9528(sub_1BF0E9574, &v13);

  __swift_project_boxed_opaque_existential_1(&v13, v14);
  v11 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v13);

  return v11;
}

- (id)resolveOptionalProtocol:(id)protocol name:(id)name contextBlock:(id)block
{
  v8 = _Block_copy(block);
  if (name)
  {
    sub_1BF17A0AC();
  }

  *(swift_allocObject() + 16) = v8;
  protocolCopy = protocol;
  selfCopy = self;
  sub_1BF0E9574();

  v11 = v20;
  if (v20)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_1BF17B84C();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
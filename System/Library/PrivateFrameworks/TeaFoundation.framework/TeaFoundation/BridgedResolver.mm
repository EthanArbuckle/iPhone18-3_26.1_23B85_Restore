@interface BridgedResolver
- (id)resolveClass:(Class)a3;
- (id)resolveClass:(Class)a3 contextBlock:(id)a4;
- (id)resolveClass:(Class)a3 name:(id)a4;
- (id)resolveClass:(Class)a3 name:(id)a4 contextBlock:(id)a5;
- (id)resolveOptionalClass:(Class)a3;
- (id)resolveOptionalClass:(Class)a3 contextBlock:(id)a4;
- (id)resolveOptionalClass:(Class)a3 name:(id)a4;
- (id)resolveOptionalClass:(Class)a3 name:(id)a4 contextBlock:(id)a5;
- (id)resolveOptionalProtocol:(id)a3;
- (id)resolveOptionalProtocol:(id)a3 contextBlock:(id)a4;
- (id)resolveOptionalProtocol:(id)a3 name:(id)a4;
- (id)resolveOptionalProtocol:(id)a3 name:(id)a4 contextBlock:(id)a5;
- (id)resolveProtocol:(id)a3;
- (id)resolveProtocol:(id)a3 contextBlock:(id)a4;
- (id)resolveProtocol:(id)a3 name:(id)a4;
- (id)resolveProtocol:(id)a3 name:(id)a4 contextBlock:(id)a5;
@end

@implementation BridgedResolver

- (id)resolveClass:(Class)a3
{
  swift_getObjCClassMetadata();
  v4 = self;
  sub_1BEFF7D3C(sub_1BEFF8168, &v7);

  __swift_project_boxed_opaque_existential_1(&v7, v8);
  v5 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v7);

  return v5;
}

- (id)resolveProtocol:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEFF7D3C(sub_1BEFFD08C, &v8);

  __swift_project_boxed_opaque_existential_1(&v8, v9);
  v6 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v8);

  return v6;
}

- (id)resolveClass:(Class)a3 name:(id)a4
{
  if (a4)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  v5 = self;
  sub_1BF023920(sub_1BF023868, &v8);

  __swift_project_boxed_opaque_existential_1(&v8, v9);
  v6 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v8);

  return v6;
}

- (id)resolveProtocol:(id)a3 name:(id)a4
{
  if (a4)
  {
    sub_1BF17A0AC();
  }

  v6 = a3;
  v7 = self;
  sub_1BF023920(sub_1BF023A44, &v10);

  __swift_project_boxed_opaque_existential_1(&v10, v11);
  v8 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v10);

  return v8;
}

- (id)resolveOptionalClass:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = self;
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

- (id)resolveOptionalClass:(Class)a3 name:(id)a4
{
  if (a4)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  v5 = self;
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

- (id)resolveClass:(Class)a3 contextBlock:(id)a4
{
  v5 = _Block_copy(a4);
  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1BF023920(sub_1BF0E86DC, &v9);

  __swift_project_boxed_opaque_existential_1(&v9, v10);
  v7 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v9);

  return v7;
}

- (id)resolveOptionalClass:(Class)a3 contextBlock:(id)a4
{
  v5 = _Block_copy(a4);
  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
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

- (id)resolveClass:(Class)a3 name:(id)a4 contextBlock:(id)a5
{
  v7 = _Block_copy(a5);
  if (a4)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v7;
  v8 = self;
  sub_1BF0E9528(sub_1BF0E8A58, &v11);

  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v9 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v11);

  return v9;
}

- (id)resolveOptionalClass:(Class)a3 name:(id)a4 contextBlock:(id)a5
{
  v7 = _Block_copy(a5);
  if (a4)
  {
    sub_1BF17A0AC();
  }

  swift_getObjCClassMetadata();
  *(swift_allocObject() + 16) = v7;
  v8 = self;
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

- (id)resolveOptionalProtocol:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEFFD08C(v4);

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

- (id)resolveProtocol:(id)a3 contextBlock:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_1BF023920(sub_1BF0E9020, &v11);

  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v9 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v11);

  return v9;
}

- (id)resolveOptionalProtocol:(id)a3 contextBlock:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
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

- (id)resolveOptionalProtocol:(id)a3 name:(id)a4
{
  if (a4)
  {
    sub_1BF17A0AC();
  }

  v6 = a3;
  v7 = self;
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

- (id)resolveProtocol:(id)a3 name:(id)a4 contextBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    sub_1BF17A0AC();
  }

  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = self;
  sub_1BF0E9528(sub_1BF0E9574, &v13);

  __swift_project_boxed_opaque_existential_1(&v13, v14);
  v11 = sub_1BF17B84C();
  __swift_destroy_boxed_opaque_existential_1(&v13);

  return v11;
}

- (id)resolveOptionalProtocol:(id)a3 name:(id)a4 contextBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    sub_1BF17A0AC();
  }

  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = self;
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
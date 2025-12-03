@interface VCUserDefaults
- (_TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults)initWithSuiteName:(id)name;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation VCUserDefaults

- (_TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults)initWithSuiteName:(id)name
{
  if (name)
  {
    v3 = sub_2723FE5B4();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_2723E80E0(v3, v4);
}

- (id)objectForKey:(id)key
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for VCUserDefaults();
  v4 = v15.receiver;
  if ([(VCUserDefaults *)&v15 objectForKey:key])
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v16 = v13;
  v17 = v14;
  v5 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v7 = *(*(&v14 + 1) - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_2723FEC34();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_2723FE5B4();

  sub_2723E8A40(v10);

  sub_2723EF760(v10);
}

@end
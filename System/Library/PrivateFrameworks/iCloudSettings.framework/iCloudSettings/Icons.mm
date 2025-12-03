@interface Icons
- (NSArray)bundleIdentifiers;
- (_TtC14iCloudSettings5Icons)init;
- (id)iconURL;
@end

@implementation Icons

- (id)iconURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_275875E60(v6);

  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2759B84B8();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (NSArray)bundleIdentifiers
{
  if (*(self + OBJC_IVAR____TtC14iCloudSettings5Icons_bundleIdentifiers))
  {
    v2 = *(self + OBJC_IVAR____TtC14iCloudSettings5Icons_bundleIdentifiers);

    v3 = sub_2759BA3D8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_TtC14iCloudSettings5Icons)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
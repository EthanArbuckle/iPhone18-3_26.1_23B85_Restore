@interface InlineTip
- (NSURL)iconURL;
- (_TtC14iCloudSettings9InlineTip)init;
@end

@implementation InlineTip

- (NSURL)iconURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_2758BB4AC(self + OBJC_IVAR____TtC14iCloudSettings9InlineTip_iconURL, &v13 - v5);
  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2759B84B8();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtC14iCloudSettings9InlineTip)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
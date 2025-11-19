@interface _UVServiceHubServiceFactory
+ (id)makeAgentPipeServiceAndReturnError:(id *)a3 messageHandler:(id)a4;
+ (id)makePreviewServiceAndReturnError:(id *)a3;
+ (id)makeShellPipeServiceAndReturnError:(id *)a3 messageHandler:(id)a4;
- (_TtC17PreviewsOSSupport27_UVServiceHubServiceFactory)init;
@end

@implementation _UVServiceHubServiceFactory

+ (id)makeAgentPipeServiceAndReturnError:(id *)a3 messageHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A08, &qword_25F5049B0);
  v7 = objc_allocWithZone(v6);
  v8 = qword_27FD90760;
  v9 = sub_25F502448();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v17 = 2;
  *&v7[v8] = sub_25F502438();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A10, &qword_25F5049B8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  *&v7[qword_27FD90768] = sub_25F4E66D8(sub_25F4E7968, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A18, &qword_25F5049C0);
  *&v7[qword_27FD90770] = sub_25F501ED8();
  v18.receiver = v7;
  v18.super_class = v6;
  v15 = objc_msgSendSuper2(&v18, sel_init, v17, 0, 0);

  return v15;
}

+ (id)makeShellPipeServiceAndReturnError:(id *)a3 messageHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A20, &qword_25F5049D0);
  v7 = objc_allocWithZone(v6);
  v8 = qword_27FD90760;
  v9 = sub_25F502448();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v17 = 2;
  *&v7[v8] = sub_25F502438();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A28, &qword_25F5049D8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  *&v7[qword_27FD90768] = sub_25F4E6A08(sub_25F4E787C, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A30, &qword_25F5049E0);
  *&v7[qword_27FD90770] = sub_25F501ED8();
  v18.receiver = v7;
  v18.super_class = v6;
  v15 = objc_msgSendSuper2(&v18, sel_init, v17, 0, 0);

  return v15;
}

+ (id)makePreviewServiceAndReturnError:(id *)a3
{
  v3 = sub_25F4F5A7C();

  return v3;
}

- (_TtC17PreviewsOSSupport27_UVServiceHubServiceFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_UVServiceHubServiceFactory *)&v3 init];
}

@end
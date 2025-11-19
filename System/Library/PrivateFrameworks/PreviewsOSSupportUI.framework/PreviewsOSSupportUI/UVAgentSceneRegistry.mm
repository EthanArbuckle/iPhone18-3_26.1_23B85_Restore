@interface UVAgentSceneRegistry
+ (void)deliverScene:(id)a3 forIdentifier:(id)a4;
- (_TtC19PreviewsOSSupportUI20UVAgentSceneRegistry)init;
@end

@implementation UVAgentSceneRegistry

+ (void)deliverScene:(id)a3 forIdentifier:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_25F52A460();
  v11 = v10;
  v12 = sub_25F52A550();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_25F52A530();
  v13 = a3;
  v14 = sub_25F52A520();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = v9;
  v15[6] = v11;
  sub_25F526DF8(0, 0, v8, &unk_25F52D278, v15);
}

- (_TtC19PreviewsOSSupportUI20UVAgentSceneRegistry)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UVAgentSceneRegistry();
  return [(UVAgentSceneRegistry *)&v3 init];
}

@end
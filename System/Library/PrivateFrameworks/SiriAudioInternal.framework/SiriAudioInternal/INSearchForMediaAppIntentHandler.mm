@interface INSearchForMediaAppIntentHandler
- (_TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler)init;
- (void)handleSearchForMedia:(INSearchForMediaIntent *)a3 completion:(id)a4;
- (void)resolveMediaItemsForSearchForMedia:(INSearchForMediaIntent *)a3 withCompletion:(id)a4;
@end

@implementation INSearchForMediaAppIntentHandler

- (void)resolveMediaItemsForSearchForMedia:(INSearchForMediaIntent *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_266266C58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2662683D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2662683D8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_266232CDC(0, 0, v10, &unk_2662683E0, v15);
}

- (void)handleSearchForMedia:(INSearchForMediaIntent *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_266266C58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_266268388;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_266268398;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_266232CDC(0, 0, v10, &unk_2662683A8, v15);
}

- (_TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
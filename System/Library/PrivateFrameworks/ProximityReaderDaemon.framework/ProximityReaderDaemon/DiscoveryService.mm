@interface DiscoveryService
- (_TtC21ProximityReaderDaemon16DiscoveryService)init;
- (void)cancelRequestWithCompletionHandler:(id)a3;
- (void)contentListWithCompletionHandler:(id)a3;
- (void)contentWithTopic:(NSString *)a3 subtopic:(NSString *)a4 completionHandler:(id)a5;
- (void)layoutBundleWithContentId:(NSString *)a3 completionHandler:(id)a4;
- (void)sendAnalyticsWithAnalyticsData:(id)a3;
@end

@implementation DiscoveryService

- (_TtC21ProximityReaderDaemon16DiscoveryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contentWithTopic:(NSString *)a3 subtopic:(NSString *)a4 completionHandler:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2613A1C1C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2613A4800;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2613A4808;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_261262B98(0, 0, v11, &unk_2613A4810, v16);
}

- (void)contentListWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2613A47E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2613A47E8;
  v12[5] = v11;
  v13 = self;
  sub_261262B98(0, 0, v7, &unk_2613A47F0, v12);
}

- (void)layoutBundleWithContentId:(NSString *)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613A47C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2613A47C8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_261262B98(0, 0, v9, &unk_2613A47D0, v14);
}

- (void)cancelRequestWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2613A4778;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2613A4788;
  v12[5] = v11;
  v13 = self;
  sub_261262B98(0, 0, v7, &unk_2613A4798, v12);
}

- (void)sendAnalyticsWithAnalyticsData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_26139F01C();
  v7 = v6;

  sub_261261748(v5, v7);
  sub_26124C6C4(v5, v7);
}

@end
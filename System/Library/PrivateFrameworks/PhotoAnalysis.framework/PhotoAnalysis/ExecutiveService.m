@interface ExecutiveService
- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4;
- (void)keepPADActiveWithOperationID:(NSString *)a3 reply:(id)a4;
- (void)performOnDemandTaskWithName:(NSString *)a3 reply:(id)a4;
- (void)performOnDemandTasksForScenario:(NSString *)a3 reply:(id)a4;
- (void)requestActivityStatusWithReply:(id)a3;
- (void)requestAnalysisStatusWithReply:(id)a3;
@end

@implementation ExecutiveService

- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a4);
  v10 = sub_22FCC8C44();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22FA7F81C;
  *(v12 + 24) = v11;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v10;
  v14[6] = sub_22FA7F824;
  v14[7] = v12;

  sub_22FC3EE08(0, 0, v8, &unk_22FCDC118, v14);
}

- (void)performOnDemandTaskWithName:(NSString *)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDC100;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDC108;
  v14[5] = v13;
  v15 = a3;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDC110, v14);
}

- (void)performOnDemandTasksForScenario:(NSString *)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDC0E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDC0E8;
  v14[5] = v13;
  v15 = a3;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDC0F0, v14);
}

- (void)requestActivityStatusWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCDC0C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDC0C8;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCDC0D0, v12);
}

- (void)requestAnalysisStatusWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCDC098;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDC0A0;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCDC0A8, v12);
}

- (void)keepPADActiveWithOperationID:(NSString *)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDC088;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCD2CA0;
  v14[5] = v13;
  v15 = a3;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA590, v14);
}

@end
@interface PASUIGuardianViewPresenter
- (PASUIGuardianViewPresenter)init;
- (PASUIGuardianViewPresenter)initWithSharingViewController:(id)a3;
- (PASUIGuardianViewPresenterDelegate)delegate;
- (void)activateWithTemplateMessageSession:(CUMessageSession *)a3 completion:(id)a4;
- (void)setTemplateMessageSession:(CUMessageSession *)a3 completion:(id)a4;
@end

@implementation PASUIGuardianViewPresenter

- (PASUIGuardianViewPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PASUIGuardianViewPresenter)initWithSharingViewController:(id)a3
{
  v3 = a3;
  v4 = sub_26113F8E8(v3);

  return v4;
}

- (void)activateWithTemplateMessageSession:(CUMessageSession *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_26115B7D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2611608F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2611608F8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_26113F5EC(0, 0, v10, &unk_261160900, v15);
}

- (void)setTemplateMessageSession:(CUMessageSession *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_26115B7D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2611608A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26115E1A8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_26113F5EC(0, 0, v10, &unk_26115E1B0, v15);
}

- (PASUIGuardianViewPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
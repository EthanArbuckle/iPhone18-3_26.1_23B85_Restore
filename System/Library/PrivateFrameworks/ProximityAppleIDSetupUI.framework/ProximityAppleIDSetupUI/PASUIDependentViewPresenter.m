@interface PASUIDependentViewPresenter
- (BOOL)shouldSignInForSelf;
- (PASUIDependentViewPresenterDelegate)delegate;
- (void)activateWithTemplateMessageSession:(CUMessageSession *)a3 completion:(id)a4;
- (void)activateWithTemplateMessageSession:(CUMessageSession *)a3 completionHandler:(id)a4;
- (void)setShouldSignInForSelf:(BOOL)a3;
- (void)setTemplateMessageSession:(CUMessageSession *)a3 completion:(id)a4;
- (void)startFlowWithContainerViewController:(id)a3;
- (void)startFlowWithNavigationController:(id)a3;
@end

@implementation PASUIDependentViewPresenter

- (PASUIDependentViewPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)shouldSignInForSelf
{
  v3 = *(self + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v4 = *(self + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v5 = self;
  LOBYTE(v3) = sub_26115AC14();

  return v3 & 1;
}

- (void)setShouldSignInForSelf:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v5 = *(self + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v6 = self;
  sub_26115AC24();
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
  v14[4] = &unk_26115E1E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26115E1E8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_26113F5EC(0, 0, v10, &unk_26115E1F0, v15);
}

- (void)activateWithTemplateMessageSession:(CUMessageSession *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_26115E1C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26115E1C8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_26113F5EC(0, 0, v10, &unk_26115E1D0, v15);
}

- (void)startFlowWithNavigationController:(id)a3
{
  type metadata accessor for PASViewControllerPresentationHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  sub_26111C840(v5, v6);

  swift_unknownObjectRelease();
}

- (void)startFlowWithContainerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  PASUITargetViewPresenter.startFlow(withContainerViewController:)(v4);
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
  v14[4] = &unk_26115E1A0;
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

@end
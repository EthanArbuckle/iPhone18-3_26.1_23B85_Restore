@interface DeleteTimerIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle)init;
- (void)confirmDeleteTimer:(DeleteTimerIntent *)a3 completion:(id)a4;
- (void)handleDeleteTimer:(id)a3 completion:(id)a4;
- (void)resolveAllAvailableTargetsForDeleteTimer:(DeleteTimerIntent *)a3 withCompletion:(id)a4;
- (void)resolveAssociatedDeviceTargetForDeleteTimer:(DeleteTimerIntent *)a3 withCompletion:(id)a4;
- (void)resolveTargetTimerForDeleteTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation DeleteTimerIntentHandlerSingle

- (void)resolveTargetTimerForDeleteTimer:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_269345EC4(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveAssociatedDeviceTargetForDeleteTimer:(DeleteTimerIntent *)a3 withCompletion:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5738;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5740;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5748, v14);
}

- (void)resolveAllAvailableTargetsForDeleteTimer:(DeleteTimerIntent *)a3 withCompletion:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5718;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5720;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5728, v14);
}

- (void)confirmDeleteTimer:(DeleteTimerIntent *)a3 completion:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B56F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

- (void)handleDeleteTimer:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2693461C0(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface DeleteTimerIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle)init;
- (void)confirmDeleteTimer:(DeleteTimerIntent *)timer completion:(id)completion;
- (void)handleDeleteTimer:(id)timer completion:(id)completion;
- (void)resolveAllAvailableTargetsForDeleteTimer:(DeleteTimerIntent *)timer withCompletion:(id)completion;
- (void)resolveAssociatedDeviceTargetForDeleteTimer:(DeleteTimerIntent *)timer withCompletion:(id)completion;
- (void)resolveTargetTimerForDeleteTimer:(id)timer withCompletion:(id)completion;
@end

@implementation DeleteTimerIntentHandlerSingle

- (void)resolveTargetTimerForDeleteTimer:(id)timer withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  timerCopy = timer;
  selfCopy = self;
  sub_269345EC4(timerCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveAssociatedDeviceTargetForDeleteTimer:(DeleteTimerIntent *)timer withCompletion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = timer;
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
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5748, v14);
}

- (void)resolveAllAvailableTargetsForDeleteTimer:(DeleteTimerIntent *)timer withCompletion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = timer;
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
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5728, v14);
}

- (void)confirmDeleteTimer:(DeleteTimerIntent *)timer completion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = timer;
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
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

- (void)handleDeleteTimer:(id)timer completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  timerCopy = timer;
  selfCopy = self;
  sub_2693461C0(selfCopy, v6);
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
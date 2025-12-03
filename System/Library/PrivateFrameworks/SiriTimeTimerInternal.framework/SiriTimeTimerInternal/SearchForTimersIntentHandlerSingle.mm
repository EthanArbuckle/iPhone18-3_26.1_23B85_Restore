@interface SearchForTimersIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal34SearchForTimersIntentHandlerSingle)init;
- (void)confirmSearchTimer:(id)timer completion:(id)completion;
- (void)handleSearchTimer:(id)timer completion:(id)completion;
- (void)resolveAllAvailableTargetsForSearchTimer:(SearchTimerIntent *)timer withCompletion:(id)completion;
- (void)resolveAssociatedDeviceTargetForSearchTimer:(SearchTimerIntent *)timer withCompletion:(id)completion;
@end

@implementation SearchForTimersIntentHandlerSingle

- (_TtC21SiriTimeTimerInternal34SearchForTimersIntentHandlerSingle)init
{
  v7[3] = type metadata accessor for SiriTimerManagerImpl();
  v7[4] = &protocol witness table for SiriTimerManagerImpl;
  v7[0] = swift_allocObject();
  v2 = type metadata accessor for SearchForTimersIntentHandlerSingle();
  v3 = objc_allocWithZone(v2);
  sub_26934489C(v7, v3 + OBJC_IVAR____TtC21SiriTimeTimerInternal34SearchForTimersIntentHandlerSingle_siriTimerManager);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(SearchForTimersIntentHandlerSingle *)&v6 init];
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)confirmSearchTimer:(id)timer completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v6 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 4;
  [v5 setUserActivity_];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (void)resolveAssociatedDeviceTargetForSearchTimer:(SearchTimerIntent *)timer withCompletion:(id)completion
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
  v13[4] = &unk_2693B5540;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5548;
  v14[5] = v13;
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5550, v14);
}

- (void)resolveAllAvailableTargetsForSearchTimer:(SearchTimerIntent *)timer withCompletion:(id)completion
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
  v13[4] = &unk_2693B5520;
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

- (void)handleSearchTimer:(id)timer completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  timerCopy = timer;
  selfCopy = self;
  sub_269343EB8(timerCopy, sub_269344A48, v7);
}

@end
@interface CreateTimerIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle)init;
- (void)confirmCreateTimer:(id)a3 completion:(id)a4;
- (void)handleCreateTimer:(id)a3 completion:(id)a4;
- (void)resolveAllAvailableTargetsForCreateTimer:(CreateTimerIntent *)a3 withCompletion:(id)a4;
- (void)resolveAssociatedDeviceTargetForCreateTimer:(CreateTimerIntent *)a3 withCompletion:(id)a4;
- (void)resolveDurationNumberForCreateTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveLabelForCreateTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveTypeForCreateTimer:(id)a3 withCompletion:(id)a4;
@end

@implementation CreateTimerIntentHandlerSingle

- (_TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle)init
{
  v7[3] = type metadata accessor for SiriTimerManagerImpl();
  v7[4] = &protocol witness table for SiriTimerManagerImpl;
  v7[0] = swift_allocObject();
  TimerIntentHandlerSingle = type metadata accessor for CreateTimerIntentHandlerSingle();
  v3 = objc_allocWithZone(TimerIntentHandlerSingle);
  sub_26934489C(v7, v3 + OBJC_IVAR____TtC21SiriTimeTimerInternal30CreateTimerIntentHandlerSingle_siriTimerManager);
  v6.receiver = v3;
  v6.super_class = TimerIntentHandlerSingle;
  v4 = [(CreateTimerIntentHandlerSingle *)&v6 init];
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)handleCreateTimer:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_269379E98(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveDurationNumberForCreateTimer:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_26937A4A4(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveLabelForCreateTimer:(id)a3 withCompletion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_2693608D8(0, &qword_280E261C8, 0x277CD4190);
  v5 = [swift_getObjCClassFromMetadata() notRequired];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (void)resolveTypeForCreateTimer:(id)a3 withCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for SiriTimerTypeResolutionResult();
  v6 = a3;
  v7 = sub_2693B0080([v6 type]);
  v5[2](v5, v7);

  _Block_release(v5);
}

- (void)resolveAssociatedDeviceTargetForCreateTimer:(CreateTimerIntent *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6528;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6530;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6538, v15);
}

- (void)resolveAllAvailableTargetsForCreateTimer:(CreateTimerIntent *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6510;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

- (void)confirmCreateTimer:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_26937A678(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end
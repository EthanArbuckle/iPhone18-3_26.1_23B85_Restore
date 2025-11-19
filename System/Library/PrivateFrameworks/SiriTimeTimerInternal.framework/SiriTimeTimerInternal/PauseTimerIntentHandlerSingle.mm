@interface PauseTimerIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle)init;
- (void)confirmPauseTimer:(PauseTimerIntent *)a3 completion:(id)a4;
- (void)resolveAllAvailableTargetsForPauseTimer:(PauseTimerIntent *)a3 withCompletion:(id)a4;
- (void)resolveAssociatedDeviceTargetForPauseTimer:(PauseTimerIntent *)a3 withCompletion:(id)a4;
@end

@implementation PauseTimerIntentHandlerSingle

- (_TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle)init
{
  v7[3] = type metadata accessor for SiriTimerManagerImpl();
  v7[4] = &protocol witness table for SiriTimerManagerImpl;
  v7[0] = swift_allocObject();
  v2 = type metadata accessor for PauseTimerIntentHandlerSingle();
  v3 = objc_allocWithZone(v2);
  sub_26934489C(v7, v3 + OBJC_IVAR____TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle_siriTimerManager);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(PauseTimerIntentHandlerSingle *)&v6 init];
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)confirmPauseTimer:(PauseTimerIntent *)a3 completion:(id)a4
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
  v14[4] = &unk_2693B5B68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5740;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5748, v15);
}

- (void)resolveAssociatedDeviceTargetForPauseTimer:(PauseTimerIntent *)a3 withCompletion:(id)a4
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
  v14[4] = &unk_2693B5B58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5720;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5728, v15);
}

- (void)resolveAllAvailableTargetsForPauseTimer:(PauseTimerIntent *)a3 withCompletion:(id)a4
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
  v14[4] = &unk_2693B5B48;
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

@end
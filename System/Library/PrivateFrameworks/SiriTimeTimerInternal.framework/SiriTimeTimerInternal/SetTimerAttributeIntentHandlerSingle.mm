@interface SetTimerAttributeIntentHandlerSingle
- (_TtC21SiriTimeTimerInternal36SetTimerAttributeIntentHandlerSingle)init;
- (void)confirmSetTimerAttribute:(SetTimerAttributeIntent *)attribute completion:(id)completion;
- (void)resolveAllAvailableTargetsForSetTimerAttribute:(SetTimerAttributeIntent *)attribute withCompletion:(id)completion;
- (void)resolveAssociatedDeviceTargetForSetTimerAttribute:(SetTimerAttributeIntent *)attribute withCompletion:(id)completion;
- (void)resolveToDurationForSetTimerAttribute:(id)attribute withCompletion:(id)completion;
@end

@implementation SetTimerAttributeIntentHandlerSingle

- (_TtC21SiriTimeTimerInternal36SetTimerAttributeIntentHandlerSingle)init
{
  v7[3] = type metadata accessor for SiriTimerManagerImpl();
  v7[4] = &protocol witness table for SiriTimerManagerImpl;
  v7[0] = swift_allocObject();
  v2 = type metadata accessor for SetTimerAttributeIntentHandlerSingle();
  v3 = objc_allocWithZone(v2);
  sub_26934489C(v7, v3 + OBJC_IVAR____TtC21SiriTimeTimerInternal36SetTimerAttributeIntentHandlerSingle_siriTimerManager);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(SetTimerAttributeIntentHandlerSingle *)&v6 init];
  __swift_destroy_boxed_opaque_existential_1(v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)confirmSetTimerAttribute:(SetTimerAttributeIntent *)attribute completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = attribute;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6DA8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6DB0;
  v15[5] = v14;
  attributeCopy = attribute;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6DB8, v15);
}

- (void)resolveToDurationForSetTimerAttribute:(id)attribute withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  attributeCopy = attribute;
  selfCopy = self;
  sub_2693A58E4(attributeCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)resolveAssociatedDeviceTargetForSetTimerAttribute:(SetTimerAttributeIntent *)attribute withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = attribute;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6D80;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B6D88;
  v15[5] = v14;
  attributeCopy = attribute;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B6D90, v15);
}

- (void)resolveAllAvailableTargetsForSetTimerAttribute:(SetTimerAttributeIntent *)attribute withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = attribute;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6D68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  attributeCopy = attribute;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

@end
@interface DismissAlarmHalIntentHandler
- (_TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler)init;
- (void)confirmDismissAlarmHal:(id)hal completion:(id)completion;
- (void)handleDismissAlarmHal:(DismissAlarmHalIntent *)hal completion:(id)completion;
@end

@implementation DismissAlarmHalIntentHandler

- (void)confirmDismissAlarmHal:(id)hal completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  halCopy = hal;
  selfCopy = self;
  sub_2692ABB10(halCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleDismissAlarmHal:(DismissAlarmHalIntent *)hal completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD8, &qword_2692C9868);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = hal;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_2692C79C0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2692CAB18;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2692C9880;
  v16[5] = v15;
  halCopy = hal;
  selfCopy = self;
  sub_2692AB004(0, 0, v11, &unk_2692C9888, v16);
}

- (_TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
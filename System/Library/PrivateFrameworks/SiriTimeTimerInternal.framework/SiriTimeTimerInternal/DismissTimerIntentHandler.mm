@interface DismissTimerIntentHandler
- (_TtC21SiriTimeTimerInternal25DismissTimerIntentHandler)init;
- (void)confirmDismissTimer:(id)timer completion:(id)completion;
- (void)handleDismissTimer:(DismissTimerIntent *)timer completion:(id)completion;
@end

@implementation DismissTimerIntentHandler

- (void)confirmDismissTimer:(id)timer completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  timerCopy = timer;
  selfCopy = self;
  sub_269360620(timerCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleDismissTimer:(DismissTimerIntent *)timer completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = timer;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5F90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  timerCopy = timer;
  selfCopy = self;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

- (_TtC21SiriTimeTimerInternal25DismissTimerIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
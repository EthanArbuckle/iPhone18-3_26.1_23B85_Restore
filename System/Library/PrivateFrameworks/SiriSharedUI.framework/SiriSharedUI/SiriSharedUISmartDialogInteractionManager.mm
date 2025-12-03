@interface SiriSharedUISmartDialogInteractionManager
- (_TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager)init;
- (id)presentingViewController;
- (void)didEndEditing;
- (void)emitInstrumentationEvent:(id)event;
- (void)emitInstrumentationEvent:(id)event viewId:(id)id;
- (void)informHostOfViewResize:(CGSize)resize;
- (void)navigateWithPluginModelData:(id)data bundleName:(id)name;
- (void)performAceCommand:(id)command;
- (void)performSFCommand:(id)command;
- (void)requestDeviceUnlock:(id)unlock;
- (void)willBeginEditing;
@end

@implementation SiriSharedUISmartDialogInteractionManager

- (void)performAceCommand:(id)command
{
  swift_getObjectType();
  commandCopy = command;
  selfCopy = self;
  sub_21E4A6EF0(commandCopy);
}

- (void)performSFCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_21E4A4214(commandCopy);
}

- (void)navigateWithPluginModelData:(id)data bundleName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  selfCopy = self;
  v8 = sub_21E4DB5B8();
  v10 = v9;

  sub_21E4DCF78();
  sub_21E4A5E40();

  sub_21E424920(v8, v10);
}

- (void)informHostOfViewResize:(CGSize)resize
{
  height = resize.height;
  width = resize.width;
  selfCopy = self;
  sub_21E4A6074(width, height);
}

- (void)willBeginEditing
{
  selfCopy = self;
  sub_21E4A638C();
}

- (void)didEndEditing
{
  selfCopy = self;
  sub_21E4A63E4();
}

- (id)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }

  return Strong;
}

- (void)requestDeviceUnlock:(id)unlock
{
  v4 = _Block_copy(unlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_21E4A653C(sub_21E4A7BF8, v5);
}

- (void)emitInstrumentationEvent:(id)event viewId:(id)id
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21E4DB698();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E4DB678();
  (*(v10 + 16))(v8, v12, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  eventCopy = event;
  selfCopy = self;
  sub_21E4A6FD0(eventCopy, v8);

  sub_21E424BC0(v8, &qword_27CEC5278);
  (*(v10 + 8))(v12, v9);
}

- (void)emitInstrumentationEvent:(id)event
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_21E4DB698();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  eventCopy = event;
  selfCopy = self;
  sub_21E4A6FD0(eventCopy, v7);

  sub_21E424BC0(v7, &qword_27CEC5278);
}

- (_TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager)init
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_isLoadingCard) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager_previousCard) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SiriSharedUISmartDialogInteractionManager();
  return [(SiriSharedUISmartDialogInteractionManager *)&v4 init];
}

@end
@interface SiriSharedUISmartDialogInteractionManager
- (_TtC12SiriSharedUI41SiriSharedUISmartDialogInteractionManager)init;
- (id)presentingViewController;
- (void)didEndEditing;
- (void)emitInstrumentationEvent:(id)a3;
- (void)emitInstrumentationEvent:(id)a3 viewId:(id)a4;
- (void)informHostOfViewResize:(CGSize)a3;
- (void)navigateWithPluginModelData:(id)a3 bundleName:(id)a4;
- (void)performAceCommand:(id)a3;
- (void)performSFCommand:(id)a3;
- (void)requestDeviceUnlock:(id)a3;
- (void)willBeginEditing;
@end

@implementation SiriSharedUISmartDialogInteractionManager

- (void)performAceCommand:(id)a3
{
  swift_getObjectType();
  v5 = a3;
  v6 = self;
  sub_21E4A6EF0(v5);
}

- (void)performSFCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E4A4214(v4);
}

- (void)navigateWithPluginModelData:(id)a3 bundleName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = sub_21E4DB5B8();
  v10 = v9;

  sub_21E4DCF78();
  sub_21E4A5E40();

  sub_21E424920(v8, v10);
}

- (void)informHostOfViewResize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_21E4A6074(width, height);
}

- (void)willBeginEditing
{
  v2 = self;
  sub_21E4A638C();
}

- (void)didEndEditing
{
  v2 = self;
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

- (void)requestDeviceUnlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_21E4A653C(sub_21E4A7BF8, v5);
}

- (void)emitInstrumentationEvent:(id)a3 viewId:(id)a4
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
  v13 = a3;
  v14 = self;
  sub_21E4A6FD0(v13, v8);

  sub_21E424BC0(v8, &qword_27CEC5278);
  (*(v10 + 8))(v12, v9);
}

- (void)emitInstrumentationEvent:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_21E4DB698();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = a3;
  v10 = self;
  sub_21E4A6FD0(v9, v7);

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
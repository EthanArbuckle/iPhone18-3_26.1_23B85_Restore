@interface _RemoteView.Coordinator
- (_TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator)init;
- (void)configureRemoteViewWith:(id)with;
- (void)handleInterventionActionWith:(id)with;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
@end

@implementation _RemoteView.Coordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1BC6DA558(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_1BC6DC6F4();
}

- (void)configureRemoteViewWith:(id)with
{
  withCopy = with;
  v4 = sub_1BC759870();
  sub_1BC6AE140(v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC761600;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 32) = 0xD000000000000015;
  *(v6 + 40) = 0x80000001BC773180;
  sub_1BC75C6F0();
}

- (void)handleInterventionActionWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v5 = sub_1BC759870();
  v7 = v6;

  sub_1BC6DB458();
  sub_1BC6AE140(v5, v7);
}

- (_TtCV26SensitiveContentAnalysisUI11_RemoteView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
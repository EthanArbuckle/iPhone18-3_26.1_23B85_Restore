@interface PASUICDPEnrollmentObserver
- (_TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver)init;
- (uint64_t)uiController:didPresentRootViewController:;
- (void)dealloc;
- (void)uiController:(id)a3 prepareAlertContext:(id)a4;
- (void)uiController:(id)a3 preparePresentationContext:(id)a4;
@end

@implementation PASUICDPEnrollmentObserver

- (void)dealloc
{
  v2 = self;
  sub_261155CD4();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for PASUICDPEnrollmentObserver();
  [(PASUICDPEnrollmentObserver *)&v3 dealloc];
}

- (_TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)uiController:(id)a3 prepareAlertContext:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_26115626C(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)uiController:(id)a3 preparePresentationContext:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2611563BC(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (uint64_t)uiController:didPresentRootViewController:
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v5 = sub_26115AD54();
  v6 = sub_26115B834();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261107000, v5, v6, "PASUICDPEnrollmentObserver uiController(_:didPresentRootViewController:)", v7, 2u);
    MEMORY[0x2666FA930](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

@end
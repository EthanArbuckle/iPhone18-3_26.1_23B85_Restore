@interface WFSetupServerInternal
- (BOOL)resume;
- (WFSetupServerInternal)init;
- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)anisetteDataProvider;
- (void)activateWith:(int64_t)a3;
- (void)invalidate;
- (void)prepareToRun;
- (void)sendSetupWithAction:(unsigned int)a3 info:(id)a4 responseHandler:(id)a5;
- (void)setAnisetteDataProvider:(id)a3;
- (void)setWithDelegate:(id)a3;
- (void)tryPin:(id)a3;
@end

@implementation WFSetupServerInternal

- (_TtC10TDGSharing33WFSetupServerAnisetteDataProvider)anisetteDataProvider
{
  v3 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAnisetteDataProvider:(id)a3
{
  v5 = OBJC_IVAR___WFSetupServerInternal_anisetteDataProvider;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)setWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_26C68BDEC(a3);
  swift_unknownObjectRelease();
}

- (WFSetupServerInternal)init
{
  v2 = type metadata accessor for SFServiceAgent();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_26C66D2E0();
  v6 = objc_allocWithZone(type metadata accessor for WFSetupServer());
  v7 = sub_26C6981B8(v5, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)prepareToRun
{
  v2 = self;
  sub_26C690860();
}

- (BOOL)resume
{
  v2 = self;
  v3 = sub_26C690A24();

  return v3 & 1;
}

- (void)activateWith:(int64_t)a3
{
  v4 = self;
  sub_26C690F78(a3);
}

- (void)invalidate
{
  v2 = self;
  sub_26C6920E4();
}

- (void)sendSetupWithAction:(unsigned int)a3 info:(id)a4 responseHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_26C69A2D4;
  }

  v8 = self;
  sub_26C699700(a3);
  sub_26C676904(v7);
}

- (void)tryPin:(id)a3
{
  v4 = sub_26C6D8A08();
  v6 = v5;
  v7 = self;
  sub_26C692D64(v4, v6);
}

@end
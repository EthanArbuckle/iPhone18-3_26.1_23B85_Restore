@interface SRUIFLatencyStateManager
- (_TtC16SiriUIFoundation24SRUIFLatencyStateManager)init;
- (id)getLatestLatencyInformation;
- (void)processLatencyProgressUpdate:(id)a3;
- (void)processTaskReceivedWithIdentifier:(id)a3;
@end

@implementation SRUIFLatencyStateManager

- (_TtC16SiriUIFoundation24SRUIFLatencyStateManager)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentTaskIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummary);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencyProgress) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16SiriUIFoundation24SRUIFLatencyStateManager_currentLatencySummaryType) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SRUIFLatencyStateManager();
  return [(SRUIFLatencyStateManager *)&v5 init];
}

- (id)getLatestLatencyInformation
{
  v2 = self;
  v3 = sub_2695542F4();

  return v3;
}

- (void)processTaskReceivedWithIdentifier:(id)a3
{
  v4 = sub_269562BB0();
  v6 = v5;
  v7 = self;
  sub_26955443C(v4, v6);
}

- (void)processLatencyProgressUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26955455C(v4);
}

@end
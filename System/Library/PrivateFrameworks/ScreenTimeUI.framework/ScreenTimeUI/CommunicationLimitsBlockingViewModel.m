@interface CommunicationLimitsBlockingViewModel
- (_TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel)init;
- (int64_t)blockingViewType;
- (void)setBlockingViewType:(int64_t)a3;
@end

@implementation CommunicationLimitsBlockingViewModel

- (int64_t)blockingViewType
{
  swift_getKeyPath();
  sub_21DDB85A8(&qword_27CE902D8, type metadata accessor for CommunicationLimitsBlockingViewModel);
  v3 = self;
  sub_21DDBD5C0();

  v4 = OBJC_IVAR____TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel__blockingViewType;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);

  return v5;
}

- (void)setBlockingViewType:(int64_t)a3
{
  v4 = self;
  sub_21DDB56D4(a3);
}

- (_TtC12ScreenTimeUI36CommunicationLimitsBlockingViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
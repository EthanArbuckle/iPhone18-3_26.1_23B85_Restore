@interface ATDispatchConnector
- (_TtC15ScreenTimeAgent19ATDispatchConnector)init;
- (void)tellAskToAboutAskForTimeResponseWithAnswer:(int64_t)a3 timeApproved:(NSNumber *)a4 requestIdentifier:(NSString *)a5 responderDSID:(NSNumber *)a6 completionHandler:(id)a7;
@end

@implementation ATDispatchConnector

- (void)tellAskToAboutAskForTimeResponseWithAnswer:(int64_t)a3 timeApproved:(NSNumber *)a4 requestIdentifier:(NSString *)a5 responderDSID:(NSNumber *)a6 completionHandler:(id)a7
{
  v13 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100141920;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_100140550;
  v21[5] = v20;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = self;
  sub_10010D4C0(0, 0, v16, &unk_100140230, v21);
}

- (_TtC15ScreenTimeAgent19ATDispatchConnector)init
{
  v3 = OBJC_IVAR____TtC15ScreenTimeAgent19ATDispatchConnector____lazy_storage___logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ATDispatchConnector();
  return [(ATDispatchConnector *)&v6 init];
}

@end
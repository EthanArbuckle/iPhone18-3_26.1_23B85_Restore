@interface CSDAnsweringMachineController
- (BOOL)hasCustomGreetingFor:(id)a3;
- (BOOL)isAvailable;
- (CSDAnsweringMachineController)initWith:(id)a3 speechAssetManager:(id)a4;
- (NSURL)defaultGreeting;
- (id)customGreetingFor:(id)a3;
- (int64_t)liveVoicemailUnavailableReason;
- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4;
- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5;
- (void)captionsServerDidDie:(id)a3;
- (void)deleteCustomGreetingFor:(id)a3;
- (void)saveCustomGreeting:(id)a3 for:(id)a4;
- (void)serverDidDisconnectForAnsweringMachine:(id)a3;
- (void)setCustomReply:(id)a3;
- (void)startReceptionistReply;
@end

@implementation CSDAnsweringMachineController

- (BOOL)isAvailable
{
  v2 = self;
  v3 = sub_100308500();

  return v3 & 1;
}

- (int64_t)liveVoicemailUnavailableReason
{
  v2 = self;
  v3 = sub_100308588();

  return v3;
}

- (CSDAnsweringMachineController)initWith:(id)a3 speechAssetManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_100309760();
  return result;
}

- (void)setCustomReply:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1003099D8();
}

- (void)startReceptionistReply
{
  v2 = self;
  sub_10030A004();
}

- (void)saveCustomGreeting:(id)a3 for:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = self;
  sub_10030B314();

  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
}

- (void)deleteCustomGreetingFor:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_10030B500();

  (*(v5 + 8))(v9, v4);
}

- (id)customGreetingFor:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v21 - v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = self;
  sub_10030B628();

  (*(v5 + 8))(v9, v4);
  v16 = type metadata accessor for URL();
  v18 = 0;
  if (sub_100015468(v14, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v18 = v19;
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  return v18;
}

- (NSURL)defaultGreeting
{
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = self;
  sub_10030B92C();

  v9 = type metadata accessor for URL();
  v11 = 0;
  if (sub_100015468(v7, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  return v11;
}

- (BOOL)hasCustomGreetingFor:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_10030B96C();

  return v5 & 1;
}

- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_10030C284();
}

- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_100312234();
}

- (void)serverDidDisconnectForAnsweringMachine:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100313FA0();
}

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_100314378();
}

- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_100314874();
}

- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  sub_100314DE4();
}

- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  sub_100314DE4();
}

- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100315280();
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1003155D4();
}

- (void)captionsServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100315F8C();
}

@end
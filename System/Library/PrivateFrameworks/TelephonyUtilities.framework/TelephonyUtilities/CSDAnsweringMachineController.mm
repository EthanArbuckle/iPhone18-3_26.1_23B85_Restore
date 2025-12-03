@interface CSDAnsweringMachineController
- (BOOL)hasCustomGreetingFor:(id)for;
- (BOOL)isAvailable;
- (CSDAnsweringMachineController)initWith:(id)with speechAssetManager:(id)manager;
- (NSURL)defaultGreeting;
- (id)customGreetingFor:(id)for;
- (int64_t)liveVoicemailUnavailableReason;
- (void)answeringMachine:(id)machine didFinishAnnouncement:(BOOL)announcement error:(id)error;
- (void)answeringMachine:(id)machine didStart:(BOOL)start error:(id)error;
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
- (void)deleteCustomGreetingFor:(id)for;
- (void)saveCustomGreeting:(id)greeting for:(id)for;
- (void)serverDidDisconnectForAnsweringMachine:(id)machine;
- (void)setCustomReply:(id)reply;
- (void)startReceptionistReply;
@end

@implementation CSDAnsweringMachineController

- (BOOL)isAvailable
{
  selfCopy = self;
  v3 = sub_100308500();

  return v3 & 1;
}

- (int64_t)liveVoicemailUnavailableReason
{
  selfCopy = self;
  v3 = sub_100308588();

  return v3;
}

- (CSDAnsweringMachineController)initWith:(id)with speechAssetManager:(id)manager
{
  withCopy = with;
  managerCopy = manager;
  sub_100309760();
  return result;
}

- (void)setCustomReply:(id)reply
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003099D8();
}

- (void)startReceptionistReply
{
  selfCopy = self;
  sub_10030A004();
}

- (void)saveCustomGreeting:(id)greeting for:(id)for
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
  selfCopy = self;
  sub_10030B314();

  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
}

- (void)deleteCustomGreetingFor:(id)for
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10030B500();

  (*(v5 + 8))(v9, v4);
}

- (id)customGreetingFor:(id)for
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
  selfCopy = self;
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
  selfCopy = self;
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

- (BOOL)hasCustomGreetingFor:(id)for
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = sub_10030B96C();

  return v5 & 1;
}

- (void)answeringMachine:(id)machine didStart:(BOOL)start error:(id)error
{
  machineCopy = machine;
  selfCopy = self;
  errorCopy = error;
  sub_10030C284();
}

- (void)answeringMachine:(id)machine didFinishAnnouncement:(BOOL)announcement error:(id)error
{
  machineCopy = machine;
  selfCopy = self;
  errorCopy = error;
  sub_100312234();
}

- (void)serverDidDisconnectForAnsweringMachine:(id)machine
{
  machineCopy = machine;
  selfCopy = self;
  sub_100313FA0();
}

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100314378();
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100314874();
}

- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_100314DE4();
}

- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_100314DE4();
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  clientCopy = client;
  selfCopy = self;
  sub_100315280();
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  sub_1003155D4();
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_100315F8C();
}

@end
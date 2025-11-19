@interface HoldMusicAnsweringMachine
- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStop:(BOOL)a4 messageRecordingURL:(id)a5 error:(id)a6;
- (void)serverDidDisconnectForAnsweringMachine:(id)a3;
@end

@implementation HoldMusicAnsweringMachine

- (void)serverDidDisconnectForAnsweringMachine:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10042F46C();
}

- (void)answeringMachine:(id)a3 didStop:(BOOL)a4 messageRecordingURL:(id)a5 error:(id)a6
{
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v20 - v13;
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for URL();
    v16 = 0;
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = 1;
  }

  sub_10000AF74(v14, v16, 1, v15);
  v17 = a3;
  v18 = a6;
  v19 = self;
  sub_10042F574();

  sub_100009A04(v14, &unk_1006A52C0, &unk_10057D930);
}

- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_10042F734();
}

- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_10042F868(v10, a4, a5);
}

@end
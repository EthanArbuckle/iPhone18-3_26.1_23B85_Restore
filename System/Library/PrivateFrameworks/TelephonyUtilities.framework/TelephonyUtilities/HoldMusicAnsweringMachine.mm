@interface HoldMusicAnsweringMachine
- (void)answeringMachine:(id)machine didFinishAnnouncement:(BOOL)announcement error:(id)error;
- (void)answeringMachine:(id)machine didStart:(BOOL)start error:(id)error;
- (void)answeringMachine:(id)machine didStop:(BOOL)stop messageRecordingURL:(id)l error:(id)error;
- (void)serverDidDisconnectForAnsweringMachine:(id)machine;
@end

@implementation HoldMusicAnsweringMachine

- (void)serverDidDisconnectForAnsweringMachine:(id)machine
{
  machineCopy = machine;
  selfCopy = self;
  sub_10042F46C();
}

- (void)answeringMachine:(id)machine didStop:(BOOL)stop messageRecordingURL:(id)l error:(id)error
{
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v20 - v13;
  if (l)
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
  machineCopy = machine;
  errorCopy = error;
  selfCopy = self;
  sub_10042F574();

  sub_100009A04(v14, &unk_1006A52C0, &unk_10057D930);
}

- (void)answeringMachine:(id)machine didFinishAnnouncement:(BOOL)announcement error:(id)error
{
  machineCopy = machine;
  selfCopy = self;
  errorCopy = error;
  sub_10042F734();
}

- (void)answeringMachine:(id)machine didStart:(BOOL)start error:(id)error
{
  machineCopy = machine;
  selfCopy = self;
  errorCopy = error;
  sub_10042F868(errorCopy, start, error);
}

@end
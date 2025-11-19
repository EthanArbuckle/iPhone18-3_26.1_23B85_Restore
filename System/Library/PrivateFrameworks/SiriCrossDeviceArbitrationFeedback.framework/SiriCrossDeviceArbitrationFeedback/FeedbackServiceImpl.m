@interface FeedbackServiceImpl
+ (NSURL)receivedArbitrationsDirectoryURL;
+ (_TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl)sharedService;
- (_TtP34SiriCrossDeviceArbitrationFeedback23FeedbackServiceDelegate_)delegate;
- (_TtP34SiriCrossDeviceArbitrationFeedback7Globals_)globals;
- (void)add:(id)a3;
- (void)addWithParticipation:(id)a3 directoryPath:(id)a4;
- (void)handleAssistantDismissed;
- (void)handleWithResponse:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setGlobals:(id)a3;
@end

@implementation FeedbackServiceImpl

- (void)add:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_266A6E2B4(v4);
}

+ (_TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl)sharedService
{
  v2 = static FeedbackServiceImpl.sharedService.getter();

  return v2;
}

- (_TtP34SiriCrossDeviceArbitrationFeedback23FeedbackServiceDelegate_)delegate
{
  v2 = sub_266A9D310();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_266A9D3B8(a3);
}

- (_TtP34SiriCrossDeviceArbitrationFeedback7Globals_)globals
{
  v2 = self;
  v3 = sub_266A9D630();

  return v3;
}

- (void)setGlobals:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_266A9D720(a3);
}

+ (NSURL)receivedArbitrationsDirectoryURL
{
  v2 = sub_266ABD634();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter();
  v7 = sub_266ABD5F4();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (void)addWithParticipation:(id)a3 directoryPath:(id)a4
{
  v6 = sub_266ABDA84();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_266A66EF8(v9, v6, v8);
}

- (void)handleAssistantDismissed
{
  v2 = self;
  sub_266A9D88C();
}

- (void)handleWithResponse:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_266A9DB40(v7, v8, v6);
  _Block_release(v6);
}

@end
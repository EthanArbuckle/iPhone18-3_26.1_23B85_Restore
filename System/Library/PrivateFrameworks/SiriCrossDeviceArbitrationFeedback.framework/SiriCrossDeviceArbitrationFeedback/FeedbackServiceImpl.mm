@interface FeedbackServiceImpl
+ (NSURL)receivedArbitrationsDirectoryURL;
+ (_TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl)sharedService;
- (_TtP34SiriCrossDeviceArbitrationFeedback23FeedbackServiceDelegate_)delegate;
- (_TtP34SiriCrossDeviceArbitrationFeedback7Globals_)globals;
- (void)add:(id)add;
- (void)addWithParticipation:(id)participation directoryPath:(id)path;
- (void)handleAssistantDismissed;
- (void)handleWithResponse:(id)response completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setGlobals:(id)globals;
@end

@implementation FeedbackServiceImpl

- (void)add:(id)add
{
  addCopy = add;
  selfCopy = self;
  sub_266A6E2B4(addCopy);
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

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_266A9D3B8(delegate);
}

- (_TtP34SiriCrossDeviceArbitrationFeedback7Globals_)globals
{
  selfCopy = self;
  v3 = sub_266A9D630();

  return v3;
}

- (void)setGlobals:(id)globals
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_266A9D720(globals);
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

- (void)addWithParticipation:(id)participation directoryPath:(id)path
{
  v6 = sub_266ABDA84();
  v8 = v7;
  participationCopy = participation;
  selfCopy = self;
  sub_266A66EF8(participationCopy, v6, v8);
}

- (void)handleAssistantDismissed
{
  selfCopy = self;
  sub_266A9D88C();
}

- (void)handleWithResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  responseCopy = response;
  selfCopy = self;
  sub_266A9DB40(responseCopy, selfCopy, v6);
  _Block_release(v6);
}

@end
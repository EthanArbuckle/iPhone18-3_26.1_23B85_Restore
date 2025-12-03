@interface AnswerCallIntentHandler
- (void)handleAnswerCall:(INAnswerCallIntent *)call completion:(id)completion;
@end

@implementation AnswerCallIntentHandler

- (void)handleAnswerCall:(INAnswerCallIntent *)call completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = call;
  v7[3] = v6;
  v7[4] = self;
  callCopy = call;
  selfCopy = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in AnswerCallIntentHandler.handle(intent:), v7);
}

@end
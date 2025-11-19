@interface AnswerCallIntentHandler
- (void)handleAnswerCall:(INAnswerCallIntent *)a3 completion:(id)a4;
@end

@implementation AnswerCallIntentHandler

- (void)handleAnswerCall:(INAnswerCallIntent *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in AnswerCallIntentHandler.handle(intent:), v7);
}

@end
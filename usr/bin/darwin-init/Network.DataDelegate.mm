@interface Network.DataDelegate
- (_TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate)init;
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation Network.DataDelegate

- (void)URLSession:(id)session didCreateTask:(id)task
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1001AF0B8(taskCopy);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1001AF258(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
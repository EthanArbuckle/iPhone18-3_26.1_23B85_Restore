@interface CSDCallRecordingControllerFacade
- (void)performRequest:(id)request forCall:(id)call completion:(id)completion;
@end

@implementation CSDCallRecordingControllerFacade

- (void)performRequest:(id)request forCall:(id)call completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  requestCopy = request;
  callCopy = call;
  selfCopy = self;
  sub_10039DD80(requestCopy, callCopy, selfCopy, v8);
  _Block_release(v8);
}

@end
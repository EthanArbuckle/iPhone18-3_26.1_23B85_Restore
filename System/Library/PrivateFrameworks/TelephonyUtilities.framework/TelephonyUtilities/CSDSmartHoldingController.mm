@interface CSDSmartHoldingController
- (BOOL)_performRequest:(id)request call:(id)call error:(id *)error;
- (void)performRequest:(TUSmartHoldingRequest *)request call:(CSDCall *)call completion:(id)completion;
@end

@implementation CSDSmartHoldingController

- (BOOL)_performRequest:(id)request call:(id)call error:(id *)error
{
  requestCopy = request;
  callCopy = call;
  selfCopy = self;
  SmartHoldingController.performRequest(_:for:)(requestCopy, callCopy);

  return 1;
}

- (void)performRequest:(TUSmartHoldingRequest *)request call:(CSDCall *)call completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = request;
  v9[3] = call;
  v9[4] = v8;
  v9[5] = self;
  requestCopy = request;
  callCopy = call;
  selfCopy = self;

  sub_10044D610(&unk_100580550, v9);
}

@end
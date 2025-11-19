@interface CSDSmartHoldingController
- (BOOL)_performRequest:(id)a3 call:(id)a4 error:(id *)a5;
- (void)performRequest:(TUSmartHoldingRequest *)a3 call:(CSDCall *)a4 completion:(id)a5;
@end

@implementation CSDSmartHoldingController

- (BOOL)_performRequest:(id)a3 call:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  SmartHoldingController.performRequest(_:for:)(v7, v8);

  return 1;
}

- (void)performRequest:(TUSmartHoldingRequest *)a3 call:(CSDCall *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_10044D610(&unk_100580550, v9);
}

@end
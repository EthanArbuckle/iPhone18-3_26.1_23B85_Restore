@interface CSDCallRecordingControllerFacade
- (void)performRequest:(id)a3 forCall:(id)a4 completion:(id)a5;
@end

@implementation CSDCallRecordingControllerFacade

- (void)performRequest:(id)a3 forCall:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10039DD80(v9, v10, v11, v8);
  _Block_release(v8);
}

@end
@interface ASScreenContinuityServicesHelper
- (void)loadScreenMirroringStatusWithCompletionHandler:(id)a3;
@end

@implementation ASScreenContinuityServicesHelper

- (void)loadScreenMirroringStatusWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1000CAD58(&unk_1005CC9D8, v5);
}

@end
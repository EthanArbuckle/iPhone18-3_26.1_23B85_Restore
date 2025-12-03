@interface ASScreenContinuityServicesHelper
- (void)loadScreenMirroringStatusWithCompletionHandler:(id)handler;
@end

@implementation ASScreenContinuityServicesHelper

- (void)loadScreenMirroringStatusWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1000CAD58(&unk_1005CC9D8, v5);
}

@end
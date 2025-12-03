@interface VUIActionAppStoreOffer
- (void)performWithTargetResponder:(UIResponder *)responder completionHandler:(id)handler;
@end

@implementation VUIActionAppStoreOffer

- (void)performWithTargetResponder:(UIResponder *)responder completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = responder;
  v7[3] = v6;
  v7[4] = self;
  responderCopy = responder;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42AD5D0, v7);
}

@end
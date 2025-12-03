@interface TVAppInstallerViewController
- (id)presentingViewControllerForLockupView:(id)view;
- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block;
@end

@implementation TVAppInstallerViewController

- (id)presentingViewControllerForLockupView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E3B6831C();

  return v6;
}

- (void)lockupView:(id)view preprocessOffer:(id)offer inState:(id)state completionBlock:(id)block
{
  v10 = _Block_copy(block);
  _Block_copy(v10);
  viewCopy = view;
  swift_unknownObjectRetain();
  stateCopy = state;
  selfCopy = self;
  sub_1E3B685EC(viewCopy, offer, stateCopy, selfCopy, v10);
  _Block_release(v10);

  swift_unknownObjectRelease();
}

@end
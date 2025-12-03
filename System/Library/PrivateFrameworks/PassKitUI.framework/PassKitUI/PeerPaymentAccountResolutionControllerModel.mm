@interface PeerPaymentAccountResolutionControllerModel
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation PeerPaymentAccountResolutionControllerModel

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  if (viewController)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    selfCopy = self;
    viewControllerCopy = viewController;
    sub_1BE04D8C4();
  }

  else
  {
    __break(1u);
  }
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD4EC7F8();
}

@end
@interface PeerPaymentAccountResolutionControllerModel
- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation PeerPaymentAccountResolutionControllerModel

- (void)peerPaymentAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5
{
  if (a4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = self;
    v8 = a4;
    sub_1BE04D8C4();
  }

  else
  {
    __break(1u);
  }
}

- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1BD4EC7F8();
}

@end
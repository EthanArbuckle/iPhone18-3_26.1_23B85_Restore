@interface ICQRemoteExtensionHost
- (ICQRemoteExtensionHost)init;
- (void)dismissViewControllerWithError:(id)error;
- (void)presentRemoteViewControllerWithContext:(id)context presentingViewController:(id)controller completion:(id)completion;
@end

@implementation ICQRemoteExtensionHost

- (void)presentRemoteViewControllerWithContext:(id)context presentingViewController:(id)controller completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_275797EB0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  controllerCopy = controller;
  selfCopy = self;
  sub_2756F0698(v8, controllerCopy, sub_2756F1784, v9);
}

- (void)dismissViewControllerWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_2756F0D1C(error);
}

- (ICQRemoteExtensionHost)init
{
  *(&self->super.isa + OBJC_IVAR___ICQRemoteExtensionHost_presentingVC) = 0;
  v3 = (&self->super.isa + OBJC_IVAR___ICQRemoteExtensionHost_flowCompletion);
  v4 = type metadata accessor for RemoteExtensionHost();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ICQRemoteExtensionHost *)&v6 init];
}

@end
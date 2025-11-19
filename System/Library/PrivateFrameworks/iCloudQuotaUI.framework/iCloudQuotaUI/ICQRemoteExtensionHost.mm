@interface ICQRemoteExtensionHost
- (ICQRemoteExtensionHost)init;
- (void)dismissViewControllerWithError:(id)a3;
- (void)presentRemoteViewControllerWithContext:(id)a3 presentingViewController:(id)a4 completion:(id)a5;
@end

@implementation ICQRemoteExtensionHost

- (void)presentRemoteViewControllerWithContext:(id)a3 presentingViewController:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_275797EB0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = self;
  sub_2756F0698(v8, v10, sub_2756F1784, v9);
}

- (void)dismissViewControllerWithError:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2756F0D1C(a3);
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
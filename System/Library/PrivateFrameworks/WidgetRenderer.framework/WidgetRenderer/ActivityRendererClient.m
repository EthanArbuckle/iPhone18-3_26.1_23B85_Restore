@interface ActivityRendererClient
- (void)currentRemoteSubscriptionTypeDidChange:(id)a3;
- (void)extensionsDidChange:(id)a3;
@end

@implementation ActivityRendererClient

- (void)extensionsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE85914(v4);
}

- (void)currentRemoteSubscriptionTypeDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAE862F8(v4);
}

@end
@interface ActivityRendererClient
- (void)currentRemoteSubscriptionTypeDidChange:(id)change;
- (void)extensionsDidChange:(id)change;
@end

@implementation ActivityRendererClient

- (void)extensionsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1DAE85914(changeCopy);
}

- (void)currentRemoteSubscriptionTypeDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1DAE862F8(changeCopy);
}

@end
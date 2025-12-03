@interface JSAppleMusicSubscription
- (void)musicSubscriptionStatusHasChanged;
- (void)refreshAppleMusicSubscriptionStatusWithJsCallback:(id)callback;
@end

@implementation JSAppleMusicSubscription

- (void)refreshAppleMusicSubscriptionStatusWithJsCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  sub_1E3E97EAC(callbackCopy);
}

- (void)musicSubscriptionStatusHasChanged
{
  selfCopy = self;
  sub_1E3E98620();
}

@end
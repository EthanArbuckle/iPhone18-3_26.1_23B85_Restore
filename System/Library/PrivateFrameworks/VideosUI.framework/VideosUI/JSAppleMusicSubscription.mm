@interface JSAppleMusicSubscription
- (void)musicSubscriptionStatusHasChanged;
- (void)refreshAppleMusicSubscriptionStatusWithJsCallback:(id)a3;
@end

@implementation JSAppleMusicSubscription

- (void)refreshAppleMusicSubscriptionStatusWithJsCallback:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3E97EAC(v4);
}

- (void)musicSubscriptionStatusHasChanged
{
  v2 = self;
  sub_1E3E98620();
}

@end
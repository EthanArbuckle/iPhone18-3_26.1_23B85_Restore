@interface SiriRemembersService
- (void)donateToInteractionStoreWithDonationData:(id)a3 completionHandler:(id)a4;
@end

@implementation SiriRemembersService

- (void)donateToInteractionStoreWithDonationData:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100002CD4(v7, v8, v6);
  _Block_release(v6);
}

@end
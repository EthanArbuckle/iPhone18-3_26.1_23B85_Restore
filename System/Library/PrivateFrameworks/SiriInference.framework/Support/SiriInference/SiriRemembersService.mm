@interface SiriRemembersService
- (void)donateToInteractionStoreWithDonationData:(id)data completionHandler:(id)handler;
@end

@implementation SiriRemembersService

- (void)donateToInteractionStoreWithDonationData:(id)data completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  dataCopy = data;
  selfCopy = self;
  sub_100002CD4(dataCopy, selfCopy, v6);
  _Block_release(v6);
}

@end
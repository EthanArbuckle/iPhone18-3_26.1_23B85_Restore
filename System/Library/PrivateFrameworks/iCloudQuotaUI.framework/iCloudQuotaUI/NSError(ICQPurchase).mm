@interface NSError(ICQPurchase)
- (uint64_t)icq_isPSD2StepUpError;
@end

@implementation NSError(ICQPurchase)

- (uint64_t)icq_isPSD2StepUpError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CEE1A0]];

  v3 = [v2 objectForKeyedSubscript:@"metrics"];
  v4 = [v3 objectForKeyedSubscript:@"dialogId"];
  v5 = [v4 isEqualToString:@"MZCommerce.Secure3dV2StepUp"];

  return v5;
}

@end
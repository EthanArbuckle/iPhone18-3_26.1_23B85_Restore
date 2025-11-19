@interface AMAuthInstallSsoCopyTicketUsingSUSSO
@end

@implementation AMAuthInstallSsoCopyTicketUsingSUSSO

CFTypeRef ___AMAuthInstallSsoCopyTicketUsingSUSSO_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = _AMAuthInstallSsoSUSSOCopyToken(a1[7], *(a1[5] + 8) + 24);
  SafeRetain(*(*(a1[4] + 8) + 24));
  result = SafeRetain(*(*(a1[5] + 8) + 24));
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

@end
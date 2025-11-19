@interface CFErrorHasDomainAndCode
@end

@implementation CFErrorHasDomainAndCode

uint64_t ___CFErrorHasDomainAndCode_block_invoke(uint64_t a1, CFErrorRef err)
{
  Domain = CFErrorGetDomain(err);
  if (!CFEqual(Domain, *(a1 + 40)))
  {
    return 1;
  }

  Code = CFErrorGetCode(err);
  result = 1;
  if (Code == *(a1 + 48))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

@end
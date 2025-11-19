@interface MAPreferencesSync
@end

@implementation MAPreferencesSync

BOOL ___MAPreferencesSync_block_invoke(uint64_t a1)
{
  result = syncPreferences(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end
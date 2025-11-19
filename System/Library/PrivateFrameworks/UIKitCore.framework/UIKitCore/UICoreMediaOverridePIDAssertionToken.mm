@interface UICoreMediaOverridePIDAssertionToken
@end

@implementation UICoreMediaOverridePIDAssertionToken

uint64_t __67___UICoreMediaOverridePIDAssertionToken_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 8) withName:@"pid"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return [v3 appendString:v4 withName:@"reason"];
}

@end
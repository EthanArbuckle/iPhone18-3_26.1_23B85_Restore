@interface SBDisplayIdentityRecord
@end

@implementation SBDisplayIdentityRecord

id __57___SBDisplayIdentityRecord_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:0];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"connectedAtInit"];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isValid"), @"isValid"}];
}

@end
@interface SetMockRowAction
@end

@implementation SetMockRowAction

uint64_t ___SetMockRowAction_block_invoke(uint64_t a1)
{
  v2 = PXSharedUserDefaults();
  [v2 setObject:*(a1 + 32) forKey:@"CPLStatusProviderMock"];

  return 1;
}

@end
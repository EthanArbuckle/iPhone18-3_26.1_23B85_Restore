@interface PSKNNZKWATXDelegateWrapper
@end

@implementation PSKNNZKWATXDelegateWrapper

BOOL __79___PSKNNZKWATXDelegateWrapper__getInteractionFilterForPrimaryInteractionsModel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recipients];
  v4 = [v3 count];

  v5 = v4 >= 2 && [v2 mechanism] == 4;
  return v5;
}

@end
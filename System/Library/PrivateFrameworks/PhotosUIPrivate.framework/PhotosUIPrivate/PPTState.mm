@interface PPTState
@end

@implementation PPTState

void __31___PPTState_leaveDispatchGroup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24) >= 1)
  {
    dispatch_group_leave(*(v1 + 16));
    --*(*(a1 + 32) + 24);
  }
}

@end
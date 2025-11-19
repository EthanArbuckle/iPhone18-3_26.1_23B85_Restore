@interface IsOwner
@end

@implementation IsOwner

void ___IsOwner_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 role];
  v7 = v8;
  if (v6 == 1)
  {
    if ([v8 isCurrentUser])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    *a4 = 1;
    v7 = v8;
  }
}

@end
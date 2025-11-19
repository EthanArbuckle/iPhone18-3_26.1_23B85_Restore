@interface AcceptInvitation
@end

@implementation AcceptInvitation

void ___AcceptInvitation_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v6 = [*(a1 + 40) assetLocalIdentifiers];
    _MoveAssetsIfNecessary(v4, v3, v6, *(a1 + 48));
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

@end
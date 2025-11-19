@interface GetUserVersion
@end

@implementation GetUserVersion

void ____GetUserVersion_block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) = [a2 firstInt64Value];
  }

  else
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
  }
}

@end
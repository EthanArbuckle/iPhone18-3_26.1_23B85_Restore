@interface PCSIdentityAddFromExternalForm
@end

@implementation PCSIdentityAddFromExternalForm

uint64_t ___PCSIdentityAddFromExternalForm_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (!*(v3 + 24))
  {
    v4 = *(a3 + 16);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        if (*v5 == **(result + 40))
        {
          *(v3 + 24) = a3;
        }
      }
    }
  }

  return result;
}

@end
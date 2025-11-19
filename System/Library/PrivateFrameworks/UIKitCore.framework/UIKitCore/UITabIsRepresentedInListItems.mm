@interface UITabIsRepresentedInListItems
@end

@implementation UITabIsRepresentedInListItems

uint64_t ___UITabIsRepresentedInListItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabForSelection];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }
  }

  return v9;
}

@end
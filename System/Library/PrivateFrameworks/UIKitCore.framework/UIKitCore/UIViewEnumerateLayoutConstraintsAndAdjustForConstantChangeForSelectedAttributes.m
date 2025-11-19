@interface UIViewEnumerateLayoutConstraintsAndAdjustForConstantChangeForSelectedAttributes
@end

@implementation UIViewEnumerateLayoutConstraintsAndAdjustForConstantChangeForSelectedAttributes

uint64_t ___UIViewEnumerateLayoutConstraintsAndAdjustForConstantChangeForSelectedAttributes_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 11)
  {
    v5 = [a2 viewForLastBaselineLayout];
  }

  else
  {
    if (a3 != 12)
    {
      goto LABEL_6;
    }

    v5 = [a2 viewForFirstBaselineLayout];
  }

  a2 = v5;
LABEL_6:
  if (a2 != *(a1 + 32))
  {
    return 0;
  }

  v7 = *(a1 + 40);

  return v7(a3);
}

@end
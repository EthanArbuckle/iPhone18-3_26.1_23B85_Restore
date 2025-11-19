@interface UILabelContent
@end

@implementation UILabelContent

void __34___UILabelContent__fullRangeFont___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
  }

  v11 = a3 == a1[6] && a4 == a1[7];
  *(*(a1[5] + 8) + 24) = v11;
  *a5 = 1;
}

@end
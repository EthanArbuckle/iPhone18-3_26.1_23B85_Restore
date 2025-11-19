@interface DUIPreview
@end

@implementation DUIPreview

double __26___DUIPreview_scaleFactor__block_invoke(uint64_t a1)
{
  [*(a1 + 32) boundingSize];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = v4 / v2;
  v7 = v6 / v3;
  if (v5 >= v7)
  {
    v5 = v7;
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 56) / v2;
  if (v9 < v8 / v3)
  {
    v9 = v8 / v3;
  }

  return fmax(v9, fmin(v5, 1.0));
}

@end
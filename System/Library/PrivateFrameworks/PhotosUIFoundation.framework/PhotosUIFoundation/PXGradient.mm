@interface PXGradient
+ (id)colorValuesForSmoothDescendingGradientWithBaseColor:(id)a3;
@end

@implementation PXGradient

+ (id)colorValuesForSmoothDescendingGradientWithBaseColor:(id)a3
{
  v3 = a3;
  v4 = +[PXGradient opacityValuesForSmoothDescendingGradient];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXGradient_colorValuesForSmoothDescendingGradientWithBaseColor___block_invoke;
  v8[3] = &unk_1E7BB5790;
  v9 = v3;
  v5 = v3;
  v6 = PXMap(v4, v8);

  return v6;
}

id __66__PXGradient_colorValuesForSmoothDescendingGradientWithBaseColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];
  v3 = [v2 colorWithAlphaComponent:?];
  v4 = [v3 CGColor];

  return v4;
}

@end
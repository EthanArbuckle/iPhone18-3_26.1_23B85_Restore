@interface UICircleProgressIndicator
@end

@implementation UICircleProgressIndicator

uint64_t __58___UICircleProgressIndicator__startIndeterminateAnimation__block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E9820];
  do
  {
    v5[0] = v3;
    v5[1] = 3221225472;
    v5[2] = __58___UICircleProgressIndicator__startIndeterminateAnimation__block_invoke_2;
    v5[3] = &unk_1E70F32F0;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    result = [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:vcvtd_n_f64_u64(v2++ animations:2uLL), 0.25];
  }

  while (v2 != 4);
  return result;
}

uint64_t __58___UICircleProgressIndicator__startIndeterminateAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 512);
  CGAffineTransformMakeRotation(&v3, *(a1 + 40) * 1.57079633);
  return [v1 setTransform:&v3];
}

@end
@interface SBDisplayItemFixedAspectGrid
@end

@implementation SBDisplayItemFixedAspectGrid

void __64___SBDisplayItemFixedAspectGrid__buildFixedGridWithScreenScale___block_invoke(uint64_t a1, int a2, float64_t a3, float64x2_t a4)
{
  a4.f64[1] = a3;
  if (a2)
  {
    v4 = vaddq_f64(a4, a4);
    __asm { FMOV            V1.2D, #0.5 }

    v10 = vrndmq_f64(vmulq_f64(v4, _Q1));
    a4 = vmulq_f64(vaddq_f64(v10, v10), _Q1);
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = [MEMORY[0x277CCAE60] valueWithCGSize:a4.f64[1]];
  [v11 addObject:v12];
}

uint64_t __64___SBDisplayItemFixedAspectGrid__buildFixedGridWithScreenScale___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGSizeValue];
  v6 = v5;
  v8 = v7;
  [v4 CGSizeValue];
  v10 = v9;
  v12 = v11;

  v13.n128_f64[0] = v6 * v8;
  v14.n128_f64[0] = v10 * v12;
  return MEMORY[0x282143748](v13, v14);
}

@end
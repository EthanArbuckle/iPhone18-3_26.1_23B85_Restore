@interface UIBuiltinTraitStorageHash
@end

@implementation UIBuiltinTraitStorageHash

uint64_t ___UIBuiltinTraitStorageHash_block_invoke(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    v2 = -v2;
  }

  *(*(*(result + 32) + 8) + 24) += 2654435761 * v2;
  return result;
}

double ___UIBuiltinTraitStorageHash_block_invoke_3(uint64_t a1, double *a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *a2;
  if (*a2 < 0.0)
  {
    v5 = -*a2;
  }

  *a4.i64 = floor(v5 + 0.5);
  *a5.i64 = *a4.i64 - trunc(*a4.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  result = v5 - *a4.i64;
  *(*(*(a1 + 32) + 8) + 24) += vcvtd_n_u64_f64(result, 0x40uLL) + 2654435761u * *vbslq_s8(vnegq_f64(v6), a5, a4).i64;
  return result;
}

uint64_t ___UIBuiltinTraitStorageHash_block_invoke_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    v2 = -v2;
  }

  *(*(*(result + 32) + 8) + 24) += 2654435761 * v2;
  return result;
}

@end
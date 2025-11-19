@interface PLPositionalImageTableEntries
- (void)enumerateImageIndexes:(id)a3 formatSideLength:(int)a4;
@end

@implementation PLPositionalImageTableEntries

- (void)enumerateImageIndexes:(id)a3 formatSideLength:(int)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PLPositionalImageTableEntries_enumerateImageIndexes_formatSideLength___block_invoke;
  v9[3] = &unk_1E792F9B8;
  v11 = a4;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = PLPositionalImageTableEntries;
  v7 = v6;
  [(PLPositionalTableEntries *)&v8 enumerateIndexes:v9];
}

uint64_t __72__PLPositionalImageTableEntries_enumerateImageIndexes_formatSideLength___block_invoke(uint64_t a1, double a2, float64x2_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = *(a5 + [*(a1 + 32) entryLength] - 12);
    v7.i64[0] = v6;
    v7.i64[1] = HIDWORD(v6);
    a3 = vcvtq_f64_u64(v7);
    v8 = vdupq_lane_s64(COERCE__INT64(*(a1 + 48)), 0);
    v9 = vbslq_s8(vcgtq_f64(a3, v8), v8, a3);
  }

  else
  {
    v9 = *MEMORY[0x1E695F060];
  }

  v10 = *(*(a1 + 40) + 16);
  *&a3.f64[0] = v9.n128_u64[1];

  return v10(v9, a3);
}

@end
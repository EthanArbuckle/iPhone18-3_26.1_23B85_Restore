@interface PXEnumerateCropVariants
@end

@implementation PXEnumerateCropVariants

uint64_t ___PXEnumerateCropVariants_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 cropType];
  [v6 cropRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 cropScore];
  v17 = v16;

  v18 = *(v5 + 16);
  v19.n128_u64[0] = v9;
  v20.n128_u64[0] = v11;
  v21.n128_u64[0] = v13;
  v22.n128_u64[0] = v15;
  v23.n128_u64[0] = v17;

  return v18(v5, v7, a4, v19, v20, v21, v22, v23);
}

@end
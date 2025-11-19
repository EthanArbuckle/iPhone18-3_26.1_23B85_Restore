@interface PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey
@end

@implementation PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey

void ___PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v14 = a5;
  v8 = a6;
  v9 = 32;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v9 = 40;
    v10 = v14;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

void ___PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey_block_invoke_2(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v22 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v15)
  {
    v17 = 4;
    v18 = v15;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
    v17 = 8;
    v18 = v14;
  }

  v19 = *(a1[v17] + 8);
  v20 = v18;
  v21 = *(v19 + 40);
  *(v19 + 40) = v20;

  dispatch_semaphore_signal(*(*(a1[9] + 8) + 40));
}

@end
@interface PCSBackupGuitarfishEncodeOuterRecord
@end

@implementation PCSBackupGuitarfishEncodeOuterRecord

void ___PCSBackupGuitarfishEncodeOuterRecord_block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v27 = a6;
  if (v27)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a6);
  }

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
  v17 = v11;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v12;
  v20 = v12;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v13;
  v23 = v13;

  v24 = *(a1[8] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v14;
  v26 = v14;

  dispatch_semaphore_signal(*(*(a1[9] + 8) + 40));
}

@end
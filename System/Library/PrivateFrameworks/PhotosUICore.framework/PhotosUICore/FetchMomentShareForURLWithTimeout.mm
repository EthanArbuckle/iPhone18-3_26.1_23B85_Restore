@interface FetchMomentShareForURLWithTimeout
@end

@implementation FetchMomentShareForURLWithTimeout

void ___FetchMomentShareForURLWithTimeout_block_invoke(void *a1)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v2 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1011 debugDescription:@"Fetch timed out"];
    (*(a1[4] + 16))();
  }

  v3 = (*(a1[5] + 8) + 32);

  os_unfair_lock_unlock(v3);
}

void ___FetchMomentShareForURLWithTimeout_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___FetchMomentShareForURLWithTimeout_block_invoke_3;
    block[3] = &unk_1E774A0E0;
    v10 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
}

@end
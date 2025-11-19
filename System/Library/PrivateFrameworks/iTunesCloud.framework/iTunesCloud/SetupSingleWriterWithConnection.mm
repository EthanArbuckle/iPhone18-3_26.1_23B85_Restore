@interface SetupSingleWriterWithConnection
@end

@implementation SetupSingleWriterWithConnection

BOOL ____SetupSingleWriterWithConnection_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  v4 = [ICDelegateAccountStoreSchema setupWithConnection:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [[ICDelegateAccountStoreReader alloc] initWithConnection:a1[4]];
    v6 = [(ICDelegateAccountStoreReader *)v5 lastExpirationPruningDate];
    v7 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v8 = v7;
    if (!v6 || ([v7 timeIntervalSinceDate:v6], v9 >= 43200.0))
    {
      v10 = [[ICDelegateAccountStoreSQLWriter alloc] initWithConnection:a1[4]];
      [(ICDelegateAccountStoreSQLWriter *)v10 removeTokensExpiringBeforeDate:v8 completionHandler:0];
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  return v4;
}

@end
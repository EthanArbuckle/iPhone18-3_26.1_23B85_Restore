@interface PBFSQLiteDeferredPreparedSimpleStatement
@end

@implementation PBFSQLiteDeferredPreparedSimpleStatement

void __88___PBFSQLiteDeferredPreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v3 = *(*(a1 + 32) + 32);
  if (v3)
  {
    v5 = [v3 UTF8String];
    v10 = 0;
    ppStmt = 0;
    v6 = strlen(v5);
    *(*(*(a1 + 40) + 8) + 24) = sqlite3_prepare_v2(a2, v5, v6, &ppStmt, &v10);
    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      *(*(a1 + 32) + 24) = ppStmt;
      v7 = *(a1 + 32);
      v8 = *(v7 + 32);
      *(v7 + 32) = 0;

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      [WeakRetained addObserver:{*(a1 + 32), v10}];
    }
  }
}

@end
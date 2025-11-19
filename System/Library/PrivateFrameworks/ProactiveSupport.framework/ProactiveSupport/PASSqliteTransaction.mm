@interface PASSqliteTransaction
@end

@implementation PASSqliteTransaction

uint64_t __66___PASSqliteTransaction_writeTransactionWithHandle_failableBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[_PASSqlWriteTransaction alloc] initWithHandle:*(a1 + 32)];
  v3 = (*(v1 + 16))(v1, v2);

  return v3;
}

uint64_t __65___PASSqliteTransaction_readTransactionWithHandle_failableBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[_PASSqlReadTransaction alloc] initWithHandle:*(a1 + 32)];
  v3 = (*(v1 + 16))(v1, v2);

  return v3;
}

void __58___PASSqliteTransaction_writeTransactionWithHandle_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[_PASSqlWriteTransaction alloc] initWithHandle:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __57___PASSqliteTransaction_readTransactionWithHandle_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[_PASSqlReadTransaction alloc] initWithHandle:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

@end
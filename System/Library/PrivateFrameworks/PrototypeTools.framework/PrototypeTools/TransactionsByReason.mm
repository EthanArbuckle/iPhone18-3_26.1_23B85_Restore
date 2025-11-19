@interface TransactionsByReason
@end

@implementation TransactionsByReason

uint64_t ___TransactionsByReason_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _TransactionsByReason___transactions;
  _TransactionsByReason___transactions = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
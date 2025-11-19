@interface WRTaskingDictAddSignposts
@end

@implementation WRTaskingDictAddSignposts

void ___WRTaskingDictAddSignposts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:@"diagnostics"])
  {
    _WRTaskingDictAddDiagnostics(*(a1 + 32), v5, *(a1 + 40), *(a1 + 48));
  }

  else if (![v7 isEqualToString:@"name"] || (objc_msgSend(v5, "isEqualToString:", *(a1 + 48)) & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", *(a1 + 56), v7];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

@end
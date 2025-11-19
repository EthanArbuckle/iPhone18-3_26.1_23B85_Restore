@interface WRTaskingDictAddDiagnostics
@end

@implementation WRTaskingDictAddDiagnostics

void ___WRTaskingDictAddDiagnostics_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([v7 isEqualToString:@"is_new"] & 1) == 0 && (!objc_msgSend(v7, "isEqualToString:", @"name") || (objc_msgSend(v5, "isEqualToString:", *(a1 + 32)) & 1) == 0))
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", *(a1 + 40), v7];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }
}

@end
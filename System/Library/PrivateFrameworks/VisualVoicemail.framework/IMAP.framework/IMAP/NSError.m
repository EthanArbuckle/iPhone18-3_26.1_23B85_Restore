@interface NSError
@end

@implementation NSError

void __63__NSError_EFPubliclyDescribableAdditions__vf_publicDescription__block_invoke(uint64_t a1)
{
  v2 = sErrorDecoders;
  v3 = [*(a1 + 32) domain];
  v7 = [v2 objectForKeyedSubscript:v3];

  if (v7)
  {
    v4 = v7[2](v7, [*(a1 + 32) code]);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __67__NSError_EFPubliclyDescribableAdditions__vf_setDecoder_forDomain___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2743C3100](*(a1 + 40));
  [sErrorDecoders setObject:v2 forKeyedSubscript:*(a1 + 32)];
}

__CFString *__79__NSError_IMAPError__errorWithDomain_code_localizedDescription_title_userInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1028) >= 0x20)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Error Code %d", a2];
  }

  else
  {
    v3 = off_279E362F8[(a2 - 1028)];
  }

  return v3;
}

@end
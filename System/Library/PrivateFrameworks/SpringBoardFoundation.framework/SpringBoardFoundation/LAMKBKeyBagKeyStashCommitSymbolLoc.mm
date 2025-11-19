@interface LAMKBKeyBagKeyStashCommitSymbolLoc
@end

@implementation LAMKBKeyBagKeyStashCommitSymbolLoc

void *__get_LAMKBKeyBagKeyStashCommitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBKeyBagKeyStashCommit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBKeyBagKeyStashCommitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end
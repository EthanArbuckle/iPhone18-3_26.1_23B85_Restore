@interface LAMKBKeyBagKeyStashVerifySymbolLoc
@end

@implementation LAMKBKeyBagKeyStashVerifySymbolLoc

void *__get_LAMKBKeyBagKeyStashVerifySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "_LAMKBKeyBagKeyStashVerify");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_LAMKBKeyBagKeyStashVerifySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end
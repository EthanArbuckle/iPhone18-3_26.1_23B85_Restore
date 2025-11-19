@interface ACAccount
@end

@implementation ACAccount

void __75__ACAccount_ICAccountAdditions__ic_setPrivateListeningEnabledForHomeUsers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 UUIDString];
  [v4 setObject:v5 forKey:v6];
}

void __71__ACAccount_ICAccountAdditions__ic_privateListeningEnabledForHomeUsers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSNumber())
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    if (v6)
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

@end
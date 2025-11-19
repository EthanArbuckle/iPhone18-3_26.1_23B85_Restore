@interface SFSymmetricKey
@end

@implementation SFSymmetricKey

void __52___SFSymmetricKey_initRandomKeyWithSpecifier_error___block_invoke(uint64_t a1, void *__s, rsize_t __n)
{
  memset_s(__s, *(a1 + 32), 0, __n);

  free(__s);
}

void __48___SFSymmetricKey_initWithData_specifier_error___block_invoke(uint64_t a1, void *__s, rsize_t __n)
{
  memset_s(__s, *(a1 + 32), 0, __n);

  free(__s);
}

@end
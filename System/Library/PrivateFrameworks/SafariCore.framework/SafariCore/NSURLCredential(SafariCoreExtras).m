@interface NSURLCredential(SafariCoreExtras)
+ (uint64_t)safari_credentialWithUser:()SafariCoreExtras password:persistence:;
@end

@implementation NSURLCredential(SafariCoreExtras)

+ (uint64_t)safari_credentialWithUser:()SafariCoreExtras password:persistence:
{
  if (!a3)
  {
    a3 = &stru_1F3064D08;
  }

  return [MEMORY[0x1E695AC48] credentialWithUser:a3 password:? persistence:?];
}

@end
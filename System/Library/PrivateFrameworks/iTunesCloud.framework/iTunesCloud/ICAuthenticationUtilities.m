@interface ICAuthenticationUtilities
+ (AKAppleIDSession)sharedAuthKitSession;
@end

@implementation ICAuthenticationUtilities

+ (AKAppleIDSession)sharedAuthKitSession
{
  if (sharedAuthKitSession_sOnceToken != -1)
  {
    dispatch_once(&sharedAuthKitSession_sOnceToken, &__block_literal_global_807);
  }

  v3 = sharedAuthKitSession_sSharedAuthKitSession;

  return v3;
}

uint64_t __49__ICAuthenticationUtilities_sharedAuthKitSession__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698DCC8]);
  v1 = sharedAuthKitSession_sSharedAuthKitSession;
  sharedAuthKitSession_sSharedAuthKitSession = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
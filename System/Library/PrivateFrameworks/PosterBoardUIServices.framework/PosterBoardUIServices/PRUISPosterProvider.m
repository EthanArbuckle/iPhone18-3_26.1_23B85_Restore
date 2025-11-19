@interface PRUISPosterProvider
@end

@implementation PRUISPosterProvider

id __57___PRUISPosterProvider_initWithProviderBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:*(a1 + 32) error:a2];

  return v2;
}

@end
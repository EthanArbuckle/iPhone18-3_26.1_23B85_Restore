@interface NSURL
@end

@implementation NSURL

uint64_t __55__NSURL_SSExtensions___ss_URLByRemovingQueryParameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __45__NSURL_SSExtensions___ss_hasQueryParameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __50__NSURL_SSExtensions___ss_valueForQueryParameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end
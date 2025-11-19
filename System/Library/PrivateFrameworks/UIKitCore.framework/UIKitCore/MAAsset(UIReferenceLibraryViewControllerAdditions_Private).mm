@interface MAAsset(UIReferenceLibraryViewControllerAdditions_Private)
- (uint64_t)_contentVersion;
- (uint64_t)_formatVersion;
@end

@implementation MAAsset(UIReferenceLibraryViewControllerAdditions_Private)

- (uint64_t)_formatVersion
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"_CompatibilityVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (uint64_t)_contentVersion
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"_ContentVersion"];
  v3 = [v2 integerValue];

  return v3;
}

@end
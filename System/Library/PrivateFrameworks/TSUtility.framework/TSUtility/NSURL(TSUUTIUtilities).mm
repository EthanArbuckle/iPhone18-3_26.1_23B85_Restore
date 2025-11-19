@interface NSURL(TSUUTIUtilities)
- (uint64_t)tsu_UTI;
- (uint64_t)tsu_conformsToUTI:()TSUUTIUtilities;
@end

@implementation NSURL(TSUUTIUtilities)

- (uint64_t)tsu_UTI
{
  v1 = [a1 path];

  return [v1 tsu_pathUTI];
}

- (uint64_t)tsu_conformsToUTI:()TSUUTIUtilities
{
  v4 = [a1 pathExtension];

  return [v4 tsu_pathExtensionConformsToUTI:a3];
}

@end
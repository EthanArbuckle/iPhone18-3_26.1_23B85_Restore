@interface NSURL(TSUUTIUtilities)
- (uint64_t)tsu_UTI;
- (uint64_t)tsu_conformsToUTI:()TSUUTIUtilities;
@end

@implementation NSURL(TSUUTIUtilities)

- (uint64_t)tsu_UTI
{
  path = [self path];

  return [path tsu_pathUTI];
}

- (uint64_t)tsu_conformsToUTI:()TSUUTIUtilities
{
  pathExtension = [self pathExtension];

  return [pathExtension tsu_pathExtensionConformsToUTI:a3];
}

@end
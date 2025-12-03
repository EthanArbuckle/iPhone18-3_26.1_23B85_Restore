@interface NSOrderedSet(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSOrderedSet(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  if ([self count])
  {
    pl_result_with_autoreleasepool();
  }

  else
  {
    PLEmptyContainerDescription();
  }
  v1 = ;

  return v1;
}

@end
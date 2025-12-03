@interface PFStoryRecipeLibraryFactory
+ (id)createLibraryWithKind:(int64_t)kind url:(id)url;
@end

@implementation PFStoryRecipeLibraryFactory

+ (id)createLibraryWithKind:(int64_t)kind url:(id)url
{
  urlCopy = url;
  v6 = [[PFStoryConcreteRecipeLibrary alloc] initWithKind:kind url:urlCopy];

  return v6;
}

@end
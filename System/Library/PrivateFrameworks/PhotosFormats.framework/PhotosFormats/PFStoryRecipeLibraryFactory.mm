@interface PFStoryRecipeLibraryFactory
+ (id)createLibraryWithKind:(int64_t)a3 url:(id)a4;
@end

@implementation PFStoryRecipeLibraryFactory

+ (id)createLibraryWithKind:(int64_t)a3 url:(id)a4
{
  v5 = a4;
  v6 = [[PFStoryConcreteRecipeLibrary alloc] initWithKind:a3 url:v5];

  return v6;
}

@end
@interface _PXStoryRecipePhotoKitLibraryReference
- (_PXStoryRecipePhotoKitLibraryReference)initWithKind:(int64_t)a3 url:(id)a4;
- (_PXStoryRecipePhotoKitLibraryReference)initWithPhotoLibrary:(id)a3;
@end

@implementation _PXStoryRecipePhotoKitLibraryReference

- (_PXStoryRecipePhotoKitLibraryReference)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v6 = [v5 photoLibraryURL];
  v9.receiver = self;
  v9.super_class = _PXStoryRecipePhotoKitLibraryReference;
  v7 = [(PFStoryConcreteRecipeLibrary *)&v9 initWithKind:1 url:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
  }

  return v7;
}

- (_PXStoryRecipePhotoKitLibraryReference)initWithKind:(int64_t)a3 url:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:313 description:{@"%s is not available as initializer", "-[_PXStoryRecipePhotoKitLibraryReference initWithKind:url:]"}];

  abort();
}

@end
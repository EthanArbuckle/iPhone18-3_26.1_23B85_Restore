@interface _PXStoryRecipePhotoKitLibraryReference
- (_PXStoryRecipePhotoKitLibraryReference)initWithKind:(int64_t)kind url:(id)url;
- (_PXStoryRecipePhotoKitLibraryReference)initWithPhotoLibrary:(id)library;
@end

@implementation _PXStoryRecipePhotoKitLibraryReference

- (_PXStoryRecipePhotoKitLibraryReference)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  v9.receiver = self;
  v9.super_class = _PXStoryRecipePhotoKitLibraryReference;
  v7 = [(PFStoryConcreteRecipeLibrary *)&v9 initWithKind:1 url:photoLibraryURL];

  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
  }

  return v7;
}

- (_PXStoryRecipePhotoKitLibraryReference)initWithKind:(int64_t)kind url:(id)url
{
  urlCopy = url;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:313 description:{@"%s is not available as initializer", "-[_PXStoryRecipePhotoKitLibraryReference initWithKind:url:]"}];

  abort();
}

@end
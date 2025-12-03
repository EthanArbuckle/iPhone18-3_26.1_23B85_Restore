@interface VUILibraryMediaCollectionViewModel
- (BOOL)hasContent;
@end

@implementation VUILibraryMediaCollectionViewModel

- (BOOL)hasContent
{
  seasonViewModels = [(VUILibraryMediaCollectionViewModel *)self seasonViewModels];
  v3 = [seasonViewModels count] != 0;

  return v3;
}

@end
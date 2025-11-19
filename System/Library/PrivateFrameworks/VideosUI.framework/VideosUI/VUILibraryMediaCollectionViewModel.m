@interface VUILibraryMediaCollectionViewModel
- (BOOL)hasContent;
@end

@implementation VUILibraryMediaCollectionViewModel

- (BOOL)hasContent
{
  v2 = [(VUILibraryMediaCollectionViewModel *)self seasonViewModels];
  v3 = [v2 count] != 0;

  return v3;
}

@end
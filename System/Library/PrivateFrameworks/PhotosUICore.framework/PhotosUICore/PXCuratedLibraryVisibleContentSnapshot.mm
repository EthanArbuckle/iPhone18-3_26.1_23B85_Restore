@interface PXCuratedLibraryVisibleContentSnapshot
- (NSString)localizedPlaceholderText;
- (PXCuratedLibraryVisibleContentSnapshot)init;
- (PXCuratedLibraryVisibleContentSnapshot)initWithLibraryLayout:(id)a3 dateType:(unint64_t)a4;
@end

@implementation PXCuratedLibraryVisibleContentSnapshot

- (NSString)localizedPlaceholderText
{
  if (self->_isFiltering)
  {
    v3 = PXLocalizedStringFromTable(@"PXBrowserSummaryNoFilteringResultsPlaceholderText", @"PhotosUICore");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXCuratedLibraryVisibleContentSnapshot)initWithLibraryLayout:(id)a3 dateType:(unint64_t)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryVisibleContentSnapshot;
  if ([(PXCuratedLibraryVisibleContentSnapshot *)&v7 init])
  {
    [v5 visibleRect];
    [v5 safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

- (PXCuratedLibraryVisibleContentSnapshot)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryVisibleContentSnapshot.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXCuratedLibraryVisibleContentSnapshot init]"}];

  abort();
}

@end
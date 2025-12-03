@interface PXCuratedLibraryVisibleContentSnapshot
- (NSString)localizedPlaceholderText;
- (PXCuratedLibraryVisibleContentSnapshot)init;
- (PXCuratedLibraryVisibleContentSnapshot)initWithLibraryLayout:(id)layout dateType:(unint64_t)type;
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

- (PXCuratedLibraryVisibleContentSnapshot)initWithLibraryLayout:(id)layout dateType:(unint64_t)type
{
  layoutCopy = layout;
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryVisibleContentSnapshot;
  if ([(PXCuratedLibraryVisibleContentSnapshot *)&v7 init])
  {
    [layoutCopy visibleRect];
    [layoutCopy safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

- (PXCuratedLibraryVisibleContentSnapshot)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryVisibleContentSnapshot.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXCuratedLibraryVisibleContentSnapshot init]"}];

  abort();
}

@end
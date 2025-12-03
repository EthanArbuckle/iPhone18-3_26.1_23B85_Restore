@interface PXCuratedLibraryChapterHeaderLayoutSpec
- (CGSize)contentInset;
- (PXCuratedLibraryChapterHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
@end

@implementation PXCuratedLibraryChapterHeaderLayoutSpec

- (CGSize)contentInset
{
  width = self->_contentInset.width;
  height = self->_contentInset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXCuratedLibraryChapterHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v10 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryChapterHeaderLayoutSpec;
  v7 = [(PXCuratedLibraryChapterHeaderLayoutSpec *)&v9 initWithExtendedTraitCollection:collectionCopy options:options];
  if (v7)
  {
    +[PXCuratedLibrarySettings sharedInstance];
    objc_claimAutoreleasedReturnValue();
    if ([(PXCuratedLibraryChapterHeaderLayoutSpec *)v7 sizeClass]== 1)
    {
      [(PXCuratedLibraryChapterHeaderLayoutSpec *)v7 layoutOrientation];
      [collectionCopy curatedLibraryLayoutStyle];
    }

    else
    {
      [collectionCopy curatedLibraryLayoutStyle];
    }

    [(PXCuratedLibraryChapterHeaderLayoutSpec *)v7 contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  return 0;
}

@end
@interface PXCuratedLibraryChapterHeaderLayoutSpec
- (CGSize)contentInset;
- (PXCuratedLibraryChapterHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
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

- (PXCuratedLibraryChapterHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryChapterHeaderLayoutSpec;
  v7 = [(PXCuratedLibraryChapterHeaderLayoutSpec *)&v9 initWithExtendedTraitCollection:v6 options:a4];
  if (v7)
  {
    +[PXCuratedLibrarySettings sharedInstance];
    objc_claimAutoreleasedReturnValue();
    if ([(PXCuratedLibraryChapterHeaderLayoutSpec *)v7 sizeClass]== 1)
    {
      [(PXCuratedLibraryChapterHeaderLayoutSpec *)v7 layoutOrientation];
      [v6 curatedLibraryLayoutStyle];
    }

    else
    {
      [v6 curatedLibraryLayoutStyle];
    }

    [(PXCuratedLibraryChapterHeaderLayoutSpec *)v7 contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  return 0;
}

@end
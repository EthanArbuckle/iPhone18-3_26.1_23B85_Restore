@interface PXCuratedLibraryDaysTopHeaderSpec
- (PXCuratedLibraryDaysTopHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
@end

@implementation PXCuratedLibraryDaysTopHeaderSpec

- (PXCuratedLibraryDaysTopHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryDaysTopHeaderSpec;
  v6 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v8 initWithExtendedTraitCollection:a3 options:a4 variant:?];
  if (v6)
  {
    +[PXCuratedLibrarySettings sharedInstance];
    objc_claimAutoreleasedReturnValue();
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setIsFloating:1];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setEllipsisButtonSpecialTreatment:a5 != 0];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 curatedLibraryEdgeToEdgeContentDefaultPadding];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setPadding:?];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 padding];
    sub_1A524D1D4();
  }

  return 0;
}

@end
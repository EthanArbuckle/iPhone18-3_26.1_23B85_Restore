@interface PXCuratedLibraryYearsTopHeaderSpec
- (PXCuratedLibraryYearsTopHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
@end

@implementation PXCuratedLibraryYearsTopHeaderSpec

- (PXCuratedLibraryYearsTopHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryYearsTopHeaderSpec;
  v6 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v9 initWithExtendedTraitCollection:a3 options:a4 variant:?];
  v7 = v6;
  if (v6)
  {
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setIsFloating:1];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 setEllipsisButtonSpecialTreatment:a5 != 0];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 curatedLibraryEdgeToEdgeContentDefaultPadding];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 setPadding:?];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 padding];
    sub_1A524D1D4();
  }

  return 0;
}

@end
@interface PXCuratedLibraryYearsTopHeaderSpec
- (PXCuratedLibraryYearsTopHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant;
@end

@implementation PXCuratedLibraryYearsTopHeaderSpec

- (PXCuratedLibraryYearsTopHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryYearsTopHeaderSpec;
  v6 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v9 initWithExtendedTraitCollection:collection options:options variant:?];
  v7 = v6;
  if (v6)
  {
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v6 setIsFloating:1];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 setEllipsisButtonSpecialTreatment:variant != 0];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 curatedLibraryEdgeToEdgeContentDefaultPadding];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 setPadding:?];
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)v7 padding];
    sub_1A524D1D4();
  }

  return 0;
}

@end
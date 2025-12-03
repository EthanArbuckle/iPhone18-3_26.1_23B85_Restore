@interface PXCuratedLibraryMonthsTopHeaderSpec
- (PXCuratedLibraryMonthsTopHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant;
- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)padding;
@end

@implementation PXCuratedLibraryMonthsTopHeaderSpec

- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)padding
{
  v18.receiver = self;
  v18.super_class = PXCuratedLibraryMonthsTopHeaderSpec;
  [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v18 adjustedContentPadding:padding.top, padding.left, padding.bottom, padding.right];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)self ellipsisButtonSpecialTreatment])
  {
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    if ([v12 alignActionButtonsTrailingEdges])
    {
    }

    else
    {
      layoutOrientation = [(PXCuratedLibraryMonthsTopHeaderSpec *)self layoutOrientation];

      if (layoutOrientation == 1)
      {
        v11 = v11 + 14.0;
      }
    }
  }

  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (PXCuratedLibraryMonthsTopHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryMonthsTopHeaderSpec;
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
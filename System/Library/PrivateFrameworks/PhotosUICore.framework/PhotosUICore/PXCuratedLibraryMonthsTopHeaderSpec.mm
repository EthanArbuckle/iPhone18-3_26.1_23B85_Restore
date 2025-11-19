@interface PXCuratedLibraryMonthsTopHeaderSpec
- (PXCuratedLibraryMonthsTopHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)a3;
@end

@implementation PXCuratedLibraryMonthsTopHeaderSpec

- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)a3
{
  v18.receiver = self;
  v18.super_class = PXCuratedLibraryMonthsTopHeaderSpec;
  [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v18 adjustedContentPadding:a3.top, a3.left, a3.bottom, a3.right];
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
      v13 = [(PXCuratedLibraryMonthsTopHeaderSpec *)self layoutOrientation];

      if (v13 == 1)
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

- (PXCuratedLibraryMonthsTopHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryMonthsTopHeaderSpec;
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
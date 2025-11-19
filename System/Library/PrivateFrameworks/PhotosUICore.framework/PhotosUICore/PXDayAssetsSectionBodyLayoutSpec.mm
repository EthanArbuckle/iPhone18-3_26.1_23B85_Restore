@interface PXDayAssetsSectionBodyLayoutSpec
- ($7A74DE1ADD4D9428579EDAA94466197A)bodyCornerRadius;
- (PXDayAssetsSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
@end

@implementation PXDayAssetsSectionBodyLayoutSpec

- ($7A74DE1ADD4D9428579EDAA94466197A)bodyCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (PXDayAssetsSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = PXDayAssetsSectionBodyLayoutSpec;
  v4 = [(PXDayAssetsSectionBodyLayoutSpec *)&v9 initWithExtendedTraitCollection:a3 options:a4];
  if (v4)
  {
    v5 = +[PXCuratedLibrarySettings sharedInstance];
    [v5 interitemSpacingForDays];
    v4->_interitemSpacing = v6;
    v7 = +[PXLemonadeSettings sharedInstance];
    v4->_numberOfColumns = [v7 aggregatedHighlightColumns];

    v4->_allowsVideoPlaybackAtAnySize = 0;
  }

  return v4;
}

@end
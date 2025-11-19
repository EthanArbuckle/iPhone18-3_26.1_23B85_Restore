@interface PXCuratedLibraryCardSectionBodyLayoutSpec
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius;
- (PXCuratedLibraryCardSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (UIEdgeInsets)horizontalInsets;
- (UIEdgeInsets)padding;
- (void)setCornerRadius:(id)a3;
@end

@implementation PXCuratedLibraryCardSectionBodyLayoutSpec

- (UIEdgeInsets)horizontalInsets
{
  top = self->_horizontalInsets.top;
  left = self->_horizontalInsets.left;
  bottom = self->_horizontalInsets.bottom;
  right = self->_horizontalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setCornerRadius:(id)a3
{
  self->_cornerRadius.var0.var0.topLeft = v3;
  self->_cornerRadius.var0.var0.topRight = v4;
  self->_cornerRadius.var0.var0.bottomLeft = v5;
  self->_cornerRadius.var0.var0.bottomRight = v6;
}

- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (PXCuratedLibraryCardSectionBodyLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v17.receiver = self;
  v17.super_class = PXCuratedLibraryCardSectionBodyLayoutSpec;
  v4 = [(PXCuratedLibraryCardSectionBodyLayoutSpec *)&v17 initWithExtendedTraitCollection:a3 options:a4];
  if (v4)
  {
    v5 = +[PXCuratedLibrarySettings sharedInstance];
    v4->_aspectRatio = 1.0;
    v6 = *(off_1E7721FA8 + 1);
    *&v4->_padding.top = *off_1E7721FA8;
    *&v4->_padding.bottom = v6;
    if ([(PXCuratedLibraryCardSectionBodyLayoutSpec *)v4 userInterfaceIdiom]== 4)
    {
      PXEdgeInsetsMake();
    }

    [(PXCuratedLibraryCardSectionBodyLayoutSpec *)v4 contentGuideInsetsForScrollAxis:1];
    v4->_horizontalInsets.top = v7;
    v4->_horizontalInsets.left = v8;
    v4->_horizontalInsets.bottom = v9;
    v4->_horizontalInsets.right = v10;
    if ([v5 exaggerateContrast])
    {
      [MEMORY[0x1E69DC888] orangeColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    }
    v11 = ;
    v12 = [off_1E77215F8 alloc];
    v13 = [v11 colorWithAlphaComponent:0.0];
    v14 = [v12 initWithStartingColor:v13 endingColor:v11 direction:0];
    skimmingHintGradient = v4->_skimmingHintGradient;
    v4->_skimmingHintGradient = v14;

    v4->_allowsVideoPlaybackAtAnySize = 0;
  }

  return v4;
}

@end
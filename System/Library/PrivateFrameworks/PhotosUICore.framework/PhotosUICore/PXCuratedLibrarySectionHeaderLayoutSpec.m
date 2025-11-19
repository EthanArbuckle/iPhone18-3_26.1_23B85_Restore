@interface PXCuratedLibrarySectionHeaderLayoutSpec
- ($7A74DE1ADD4D9428579EDAA94466197A)cornerRadius;
- (PXCuratedLibrarySectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)a3;
- (UIEdgeInsets)contentPadding;
- (UIEdgeInsets)curatedLibraryEdgeToEdgeContentDefaultPadding;
- (UIEdgeInsets)padding;
- (UIEdgeInsets)titlePadding;
- (double)maximumTitleSubtitleHeight;
- (void)setCornerRadius:(id)a3;
@end

@implementation PXCuratedLibrarySectionHeaderLayoutSpec

- (UIEdgeInsets)curatedLibraryEdgeToEdgeContentDefaultPadding
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibrarySectionHeaderLayoutSpec;
  [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v7 curatedLibraryEdgeToEdgeContentDefaultPadding];
  [(PXCuratedLibrarySectionHeaderLayoutSpec *)self adjustedContentPadding:?];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
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

- (double)maximumTitleSubtitleHeight
{
  v2 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)self titleSubtitleLabelSpec];
  [v2 maximumTitleSubtitleHeight];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)titlePadding
{
  top = self->_titlePadding.top;
  left = self->_titlePadding.left;
  bottom = self->_titlePadding.bottom;
  right = self->_titlePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentPadding
{
  top = self->_contentPadding.top;
  left = self->_contentPadding.left;
  bottom = self->_contentPadding.bottom;
  right = self->_contentPadding.right;
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

- (UIEdgeInsets)adjustedContentPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)self ellipsisButtonSpecialTreatment]&& [(PXCuratedLibrarySectionHeaderLayoutSpec *)self isFloating]&& [(PXCuratedLibrarySectionHeaderLayoutSpec *)self sizeClass]== 1 && [(PXCuratedLibrarySectionHeaderLayoutSpec *)self layoutOrientation]== 2)
  {
    [(PXCuratedLibrarySectionHeaderLayoutSpec *)self safeAreaInsets];
    top = top + v8;
  }

  v9 = top;
  v10 = left;
  v11 = bottom;
  v12 = right;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (PXCuratedLibrarySectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = PXCuratedLibrarySectionHeaderLayoutSpec;
  v9 = [(PXCuratedLibrarySectionHeaderLayoutSpec *)&v11 initWithExtendedTraitCollection:v8 options:a4];
  if (v9)
  {
    v9->_variant = a5;
    [v8 contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  return 0;
}

@end
@interface PXWidgetSpec
- (CGSize)interWidgetSpacing;
- (PXWidgetSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5;
- (UIEdgeInsets)contentGuideInsets;
@end

@implementation PXWidgetSpec

- (CGSize)interWidgetSpacing
{
  width = self->_interWidgetSpacing.width;
  height = self->_interWidgetSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentGuideInsets
{
  top = self->_contentGuideInsets.top;
  left = self->_contentGuideInsets.left;
  bottom = self->_contentGuideInsets.bottom;
  right = self->_contentGuideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXWidgetSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = PXWidgetSpec;
  v6 = [(PXWidgetSpec *)&v8 initWithExtendedTraitCollection:a3 options:a4];
  if (v6)
  {
    v6->_detailsOptions = a5;
    PXFontScaleForTextStyle();
  }

  return 0;
}

@end
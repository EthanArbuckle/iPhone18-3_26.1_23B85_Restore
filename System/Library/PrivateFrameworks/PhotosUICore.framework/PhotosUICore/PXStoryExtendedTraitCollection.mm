@interface PXStoryExtendedTraitCollection
- (CGSize)layoutReferenceSize;
- (PXStoryExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)a3 displayScale:(double)a4;
- (int64_t)layoutOrientation;
- (void)performChanges:(id)a3;
- (void)setDisplayScale:(double)a3;
- (void)setLayoutReferenceSize:(CGSize)a3;
@end

@implementation PXStoryExtendedTraitCollection

- (CGSize)layoutReferenceSize
{
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 performChanges:a3];
}

- (void)setDisplayScale:(double)a3
{
  self->_displayScale = a3;
  v3.receiver = self;
  v3.super_class = PXStoryExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 setDisplayScale:?];
}

- (void)setLayoutReferenceSize:(CGSize)a3
{
  self->_layoutReferenceSize = a3;
  v3.receiver = self;
  v3.super_class = PXStoryExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 setLayoutReferenceSize:?];
}

- (int64_t)layoutOrientation
{
  if (self->_layoutReferenceSize.width <= self->_layoutReferenceSize.height)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (PXStoryExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)a3 displayScale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = PXStoryExtendedTraitCollection;
  result = [(PXStoryExtendedTraitCollection *)&v8 _initForSubclassWithUserInterfaceFeature:0];
  if (result)
  {
    result->_layoutReferenceSize.width = width;
    result->_layoutReferenceSize.height = height;
    result->_displayScale = a4;
  }

  return result;
}

@end
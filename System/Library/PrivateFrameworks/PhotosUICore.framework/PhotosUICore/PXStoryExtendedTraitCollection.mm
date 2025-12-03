@interface PXStoryExtendedTraitCollection
- (CGSize)layoutReferenceSize;
- (PXStoryExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)size displayScale:(double)scale;
- (int64_t)layoutOrientation;
- (void)performChanges:(id)changes;
- (void)setDisplayScale:(double)scale;
- (void)setLayoutReferenceSize:(CGSize)size;
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

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStoryExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 performChanges:changes];
}

- (void)setDisplayScale:(double)scale
{
  self->_displayScale = scale;
  v3.receiver = self;
  v3.super_class = PXStoryExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 setDisplayScale:?];
}

- (void)setLayoutReferenceSize:(CGSize)size
{
  self->_layoutReferenceSize = size;
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

- (PXStoryExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = PXStoryExtendedTraitCollection;
  result = [(PXStoryExtendedTraitCollection *)&v8 _initForSubclassWithUserInterfaceFeature:0];
  if (result)
  {
    result->_layoutReferenceSize.width = width;
    result->_layoutReferenceSize.height = height;
    result->_displayScale = scale;
  }

  return result;
}

@end
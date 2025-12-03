@interface PXStoryExportExtendedTraitCollection
- (CGRect)fullScreenReferenceRect;
- (CGRect)overrideFullScreenReferenceRect;
- (PXStoryExportExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)size displayScale:(double)scale overrideFullScreenReferenceRect:(CGRect)rect;
- (void)performChanges:(id)changes;
@end

@implementation PXStoryExportExtendedTraitCollection

- (CGRect)overrideFullScreenReferenceRect
{
  x = self->_overrideFullScreenReferenceRect.origin.x;
  y = self->_overrideFullScreenReferenceRect.origin.y;
  width = self->_overrideFullScreenReferenceRect.size.width;
  height = self->_overrideFullScreenReferenceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStoryExportExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 performChanges:changes];
}

- (CGRect)fullScreenReferenceRect
{
  p_overrideFullScreenReferenceRect = &self->_overrideFullScreenReferenceRect;
  if (CGRectIsEmpty(self->_overrideFullScreenReferenceRect))
  {
    [(PXStoryExtendedTraitCollection *)self layoutReferenceSize];
    width = v4;
    [(PXStoryExtendedTraitCollection *)self layoutReferenceSize];
    height = v6;
    x = 0.0;
    y = 0.0;
  }

  else
  {
    x = p_overrideFullScreenReferenceRect->origin.x;
    y = p_overrideFullScreenReferenceRect->origin.y;
    width = p_overrideFullScreenReferenceRect->size.width;
    height = p_overrideFullScreenReferenceRect->size.height;
  }

  v10 = width;
  result.size.height = height;
  result.size.width = v10;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXStoryExportExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)size displayScale:(double)scale overrideFullScreenReferenceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.receiver = self;
  v10.super_class = PXStoryExportExtendedTraitCollection;
  result = [(PXStoryExtendedTraitCollection *)&v10 initWithLayoutReferenceSize:size.width displayScale:size.height, scale];
  if (result)
  {
    result->_overrideFullScreenReferenceRect.origin.x = x;
    result->_overrideFullScreenReferenceRect.origin.y = y;
    result->_overrideFullScreenReferenceRect.size.width = width;
    result->_overrideFullScreenReferenceRect.size.height = height;
  }

  return result;
}

@end
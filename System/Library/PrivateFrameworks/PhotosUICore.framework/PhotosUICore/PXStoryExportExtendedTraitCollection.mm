@interface PXStoryExportExtendedTraitCollection
- (CGRect)fullScreenReferenceRect;
- (CGRect)overrideFullScreenReferenceRect;
- (PXStoryExportExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)a3 displayScale:(double)a4 overrideFullScreenReferenceRect:(CGRect)a5;
- (void)performChanges:(id)a3;
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryExportExtendedTraitCollection;
  [(PXStoryExtendedTraitCollection *)&v3 performChanges:a3];
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

- (PXStoryExportExtendedTraitCollection)initWithLayoutReferenceSize:(CGSize)a3 displayScale:(double)a4 overrideFullScreenReferenceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10.receiver = self;
  v10.super_class = PXStoryExportExtendedTraitCollection;
  result = [(PXStoryExtendedTraitCollection *)&v10 initWithLayoutReferenceSize:a3.width displayScale:a3.height, a4];
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
@interface PXStoryConcreteTimelineSpec
- (BOOL)isEqual:(id)equal;
- (CGSize)viewportSize;
- (PXStoryConcreteTimelineSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (UIEdgeInsets)safeAreaInsets;
- (unint64_t)hash;
- (void)setFixedSegmentDuration:(id *)duration;
@end

@implementation PXStoryConcreteTimelineSpec

- (void)setFixedSegmentDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_fixedSegmentDuration.value = *&duration->var0;
  self->_fixedSegmentDuration.epoch = var3;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  [(PXStoryConcreteTimelineSpec *)self viewportSize];
  v5 = v3 ^ (2 * v4);
  [(PXStoryConcreteTimelineSpec *)self fixedSegmentDuration];
  v6 = v5 ^ (4 * v11);
  allowedTransitionKinds = [(PXStoryConcreteTimelineSpec *)self allowedTransitionKinds];
  v8 = v6 ^ (8 * [allowedTransitionKinds hash]);

  v9 = v8 ^ (16 * [(PXStoryConcreteTimelineSpec *)self fallbackTransitionKind]);
  return v9 ^ (32 * [(PXStoryConcreteTimelineSpec *)self storyTransitionCurveType]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(PXStoryConcreteTimelineSpec *)self viewportSize];
      v7 = v6;
      v9 = v8;
      [(PXStoryConcreteTimelineSpec *)v5 viewportSize];
      if (v7 == v11 && v9 == v10)
      {
        [(PXStoryConcreteTimelineSpec *)self safeAreaInsets];
        [(PXStoryConcreteTimelineSpec *)v5 safeAreaInsets];
        PXEdgeInsetsEqualToEdgeInsets();
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (PXStoryConcreteTimelineSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v17.receiver = self;
  v17.super_class = PXStoryConcreteTimelineSpec;
  v7 = [(PXStoryConcreteTimelineSpec *)&v17 initWithExtendedTraitCollection:collectionCopy options:options];
  v8 = v7;
  if (v7)
  {
    p_viewportSize = &v7->_viewportSize;
    [collectionCopy layoutReferenceSize];
    *&p_viewportSize->width = v10;
    v8->_viewportSize.height = v11;
    [collectionCopy peripheryInsets];
    v8->_safeAreaInsets.top = v12;
    v8->_safeAreaInsets.left = v13;
    v8->_safeAreaInsets.bottom = v14;
    v8->_safeAreaInsets.right = v15;
    PXSizeIsValid();
  }

  return 0;
}

@end
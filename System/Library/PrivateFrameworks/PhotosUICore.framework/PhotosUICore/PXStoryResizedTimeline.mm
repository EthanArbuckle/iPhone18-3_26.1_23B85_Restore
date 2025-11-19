@interface PXStoryResizedTimeline
- (CGRect)transformedRectForOriginalClipInfo:(id *)a3 originalRect:(CGRect)a4;
- (CGSize)originalSize;
- (CGSize)targetSize;
- (PXStoryResizedTimeline)initWithOriginalTimeline:(id)a3 targetSize:(CGSize)a4 options:(unint64_t)a5;
- (id)description;
@end

@implementation PXStoryResizedTimeline

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)transformedRectForOriginalClipInfo:(id *)a3 originalRect:(CGRect)a4
{
  v10.receiver = self;
  v10.super_class = PXStoryResizedTimeline;
  [PXStoryTransformedTimeline transformedRectForOriginalClipInfo:sel_transformedRectForOriginalClipInfo_originalRect_ originalRect:?];
  if ((a3->var3 & 4) != 0)
  {
    if (([(PXStoryResizedTimeline *)self options]& 1) == 0)
    {
      [(PXStoryResizedTimeline *)self originalSize];
      PXSizeGetAspectRatio();
    }

    [(PXStoryResizedTimeline *)self targetSize];
    PXRectWithOriginAndSize();
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)originalSize
{
  v2 = [(PXStoryDerivedTimeline *)self originalTimeline];
  [v2 originalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXStoryResizedTimeline *)self originalSize];
  v6 = NSStringFromCGSize(v13);
  [(PXStoryResizedTimeline *)self targetSize];
  v7 = NSStringFromCGSize(v14);
  v8 = [(PXStoryResizedTimeline *)self options];
  v9 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [v3 initWithFormat:@"<%@ %p; %@ => %@; options: %lx; Original Timeline:\n\t%@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (PXStoryResizedTimeline)initWithOriginalTimeline:(id)a3 targetSize:(CGSize)a4 options:(unint64_t)a5
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  [a3 originalSize];
  PXAffineTransformMakeFromRects();
}

@end
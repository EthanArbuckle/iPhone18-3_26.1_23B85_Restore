@interface _PXStoryAspectFittingTimeline_DisplayAssetClip
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)clipTimeRange;
- (CGRect)clipFrame;
- (CGRect)transformedFrame;
- (int64_t)compareByClipFrameOriginX:(id)x;
- (int64_t)compareByClipFrameOriginY:(id)y;
- (unint64_t)orientation;
- (void)setClipTimeRange:(id *)range;
@end

@implementation _PXStoryAspectFittingTimeline_DisplayAssetClip

- (CGRect)transformedFrame
{
  x = self->_transformedFrame.origin.x;
  y = self->_transformedFrame.origin.y;
  width = self->_transformedFrame.size.width;
  height = self->_transformedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)clipFrame
{
  x = self->_clipFrame.origin.x;
  y = self->_clipFrame.origin.y;
  width = self->_clipFrame.size.width;
  height = self->_clipFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setClipTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_clipTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_clipTimeRange.start.epoch = v4;
  *&self->_clipTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)clipTimeRange
{
  v3 = *&self[2].var0.var1;
  *&retstr->var0.var0 = *&self[1].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var0;
  return self;
}

- (int64_t)compareByClipFrameOriginY:(id)y
{
  yCopy = y;
  [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)self clipFrame];
  v6 = v5;
  [yCopy clipFrame];
  if (v6 >= v7)
  {
    [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)self clipFrame];
    v10 = v9;
    [yCopy clipFrame];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int64_t)compareByClipFrameOriginX:(id)x
{
  xCopy = x;
  [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)self clipFrame];
  v6 = v5;
  [xCopy clipFrame];
  if (v6 >= v7)
  {
    [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)self clipFrame];
    v10 = v9;
    [xCopy clipFrame];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (unint64_t)orientation
{
  displayAsset = [(_PXStoryAspectFittingTimeline_DisplayAssetClip *)self displayAsset];
  [displayAsset aspectRatio];
  v4 = 3;
  if (v3 < 1.0)
  {
    v4 = 1;
  }

  if (v3 <= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

@end
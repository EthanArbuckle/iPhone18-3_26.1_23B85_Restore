@interface PXStoryTransitionClip
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)duration;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange;
- (BOOL)isEqualToClip:(id)clip;
- (BOOL)isVisuallyEqualToClip:(id)clip;
- (PFStoryRecipeDisplayAssetNormalization)colorNormalization;
- (PXStoryResource)resource;
- (PXStoryTransitionClip)initWithClipInfo:(id *)info originalClip:(id)clip;
- (id)copyWithInfo:(id *)info;
@end

@implementation PXStoryTransitionClip

- (id)copyWithInfo:(id *)info
{
  v5 = [PXStoryTransitionClip alloc];
  originalClip = [(PXStoryTransitionClip *)self originalClip];
  memcpy(v9, info, sizeof(v9));
  v7 = [(PXStoryTransitionClip *)v5 initWithClipInfo:v9 originalClip:originalClip];

  return v7;
}

- (BOOL)isVisuallyEqualToClip:(id)clip
{
  clipCopy = clip;
  if (clipCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = clipCopy;
      if ([(PXStoryTransitionClip *)self isEqualToClip:v5])
      {
        originalClip = [(PXStoryTransitionClip *)self originalClip];
        originalClip2 = [(PXStoryTransitionClip *)v5 originalClip];
        v8 = [originalClip isVisuallyEqualToClip:originalClip2];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isEqualToClip:(id)clip
{
  clipCopy = clip;
  if (clipCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = clipCopy;
      originalClip = [(PXStoryTransitionClip *)self originalClip];
      originalClip2 = [(PXStoryTransitionClip *)v5 originalClip];

      v8 = [originalClip isEqualToClip:originalClip2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)duration
{
  originalClip = [(PXStoryTransitionClip *)self originalClip];
  if (originalClip)
  {
    v8 = originalClip;
    [originalClip playbackTimeRangeForClipDuration:a4];
    originalClip = v8;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (PFStoryRecipeDisplayAssetNormalization)colorNormalization
{
  originalClip = [(PXStoryTransitionClip *)self originalClip];
  colorNormalization = [originalClip colorNormalization];

  return colorNormalization;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange
{
  originalClip = [(PXStoryTransitionClip *)self originalClip];
  if (originalClip)
  {
    v6 = originalClip;
    [originalClip videoTimeRange];
    originalClip = v6;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (PXStoryResource)resource
{
  originalClip = [(PXStoryTransitionClip *)self originalClip];
  resource = [originalClip resource];

  return resource;
}

- (PXStoryTransitionClip)initWithClipInfo:(id *)info originalClip:(id)clip
{
  clipCopy = clip;
  v11.receiver = self;
  v11.super_class = PXStoryTransitionClip;
  v8 = [(PXStoryTransitionClip *)&v11 init];
  v9 = v8;
  if (v8)
  {
    memcpy(&v8->_clipInfo, info, 0x300uLL);
    objc_storeStrong(&v9->_originalClip, clip);
  }

  return v9;
}

@end
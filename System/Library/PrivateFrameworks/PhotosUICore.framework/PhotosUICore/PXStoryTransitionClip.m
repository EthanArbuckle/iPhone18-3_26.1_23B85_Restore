@interface PXStoryTransitionClip
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange;
- (BOOL)isEqualToClip:(id)a3;
- (BOOL)isVisuallyEqualToClip:(id)a3;
- (PFStoryRecipeDisplayAssetNormalization)colorNormalization;
- (PXStoryResource)resource;
- (PXStoryTransitionClip)initWithClipInfo:(id *)a3 originalClip:(id)a4;
- (id)copyWithInfo:(id *)a3;
@end

@implementation PXStoryTransitionClip

- (id)copyWithInfo:(id *)a3
{
  v5 = [PXStoryTransitionClip alloc];
  v6 = [(PXStoryTransitionClip *)self originalClip];
  memcpy(v9, a3, sizeof(v9));
  v7 = [(PXStoryTransitionClip *)v5 initWithClipInfo:v9 originalClip:v6];

  return v7;
}

- (BOOL)isVisuallyEqualToClip:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(PXStoryTransitionClip *)self isEqualToClip:v5])
      {
        v6 = [(PXStoryTransitionClip *)self originalClip];
        v7 = [(PXStoryTransitionClip *)v5 originalClip];
        v8 = [v6 isVisuallyEqualToClip:v7];
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

- (BOOL)isEqualToClip:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryTransitionClip *)self originalClip];
      v7 = [(PXStoryTransitionClip *)v5 originalClip];

      v8 = [v6 isEqualToClip:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)a3
{
  v6 = [(PXStoryTransitionClip *)self originalClip];
  if (v6)
  {
    v8 = v6;
    [v6 playbackTimeRangeForClipDuration:a4];
    v6 = v8;
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
  v2 = [(PXStoryTransitionClip *)self originalClip];
  v3 = [v2 colorNormalization];

  return v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange
{
  v4 = [(PXStoryTransitionClip *)self originalClip];
  if (v4)
  {
    v6 = v4;
    [v4 videoTimeRange];
    v4 = v6;
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
  v2 = [(PXStoryTransitionClip *)self originalClip];
  v3 = [v2 resource];

  return v3;
}

- (PXStoryTransitionClip)initWithClipInfo:(id *)a3 originalClip:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXStoryTransitionClip;
  v8 = [(PXStoryTransitionClip *)&v11 init];
  v9 = v8;
  if (v8)
  {
    memcpy(&v8->_clipInfo, a3, 0x300uLL);
    objc_storeStrong(&v9->_originalClip, a4);
  }

  return v9;
}

@end
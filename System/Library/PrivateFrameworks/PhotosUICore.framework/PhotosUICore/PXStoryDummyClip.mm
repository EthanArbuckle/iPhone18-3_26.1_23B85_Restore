@interface PXStoryDummyClip
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)duration;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange;
- (BOOL)isEqualToClip:(id)clip;
- (BOOL)isVisuallyEqualToClip:(id)clip;
- (PXStoryDummyClip)init;
- (PXStoryDummyClip)initWithInfo:(id *)info resource:(id)resource resourceOccurrenceIndex:(int64_t)index;
- (id)copyWithInfo:(id *)info;
- (unint64_t)hash;
@end

@implementation PXStoryDummyClip

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange
{
  v3 = *&self[1].var0.var3;
  *&retstr->var0.var0 = *&self[1].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var1;
  return self;
}

- (id)copyWithInfo:(id *)info
{
  v5 = [PXStoryDummyClip alloc];
  resource = [(PXStoryDummyClip *)self resource];
  resourceOccurrenceIndex = [(PXStoryDummyClip *)self resourceOccurrenceIndex];
  memcpy(v10, info, sizeof(v10));
  v8 = [(PXStoryDummyClip *)v5 initWithInfo:v10 resource:resource resourceOccurrenceIndex:resourceOccurrenceIndex];

  return v8;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)duration
{
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return self;
}

- (BOOL)isVisuallyEqualToClip:(id)clip
{
  clipCopy = clip;
  if (clipCopy == self)
  {
    v7 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v5 = clipCopy;
  if ([(PXStoryDummyClip *)self isEqualToClip:v5]&& self->_info.playbackStyle == v5->_info.playbackStyle)
  {
    v6 = self->_info.clipSize.width == v5->_info.clipSize.width && self->_info.clipSize.height == v5->_info.clipSize.height;
    if (v6 && ((LODWORD(v5->_info.options) ^ LODWORD(self->_info.options)) & 0xDLL) == 0)
    {
      v7 = 0;
      if (self->_info.assetContentInfo.size.width != v5->_info.assetContentInfo.size.width || self->_info.assetContentInfo.size.height != v5->_info.assetContentInfo.size.height)
      {
        goto LABEL_12;
      }

      x = self->_info.assetContentInfo.acceptableCropRect.origin.x;
      y = self->_info.assetContentInfo.acceptableCropRect.origin.y;
      width = self->_info.assetContentInfo.acceptableCropRect.size.width;
      height = self->_info.assetContentInfo.acceptableCropRect.size.height;
      v31 = self->_info.assetContentInfo.faceAreaRect.origin.y;
      v32 = self->_info.assetContentInfo.faceAreaRect.origin.x;
      v29 = self->_info.assetContentInfo.faceAreaRect.size.height;
      v30 = self->_info.assetContentInfo.faceAreaRect.size.width;
      v23 = self->_info.assetContentInfo.bestPlaybackRect.origin.y;
      v24 = self->_info.assetContentInfo.bestPlaybackRect.origin.x;
      v21 = self->_info.assetContentInfo.bestPlaybackRect.size.height;
      v22 = self->_info.assetContentInfo.bestPlaybackRect.size.width;
      v13 = v5->_info.assetContentInfo.acceptableCropRect.origin.x;
      v14 = v5->_info.assetContentInfo.acceptableCropRect.origin.y;
      v15 = v5->_info.assetContentInfo.acceptableCropRect.size.width;
      v16 = v5->_info.assetContentInfo.acceptableCropRect.size.height;
      v27 = v5->_info.assetContentInfo.faceAreaRect.origin.y;
      v28 = v5->_info.assetContentInfo.faceAreaRect.origin.x;
      v25 = v5->_info.assetContentInfo.faceAreaRect.size.height;
      v26 = v5->_info.assetContentInfo.faceAreaRect.size.width;
      v19 = v5->_info.assetContentInfo.bestPlaybackRect.origin.y;
      v20 = v5->_info.assetContentInfo.bestPlaybackRect.origin.x;
      v17 = v5->_info.assetContentInfo.bestPlaybackRect.size.height;
      v18 = v5->_info.assetContentInfo.bestPlaybackRect.size.width;
      if (CGRectEqualToRect(self->_info.assetContentInfo.preferredCropRect, v5->_info.assetContentInfo.preferredCropRect))
      {
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v36.origin.x = v13;
        v36.origin.y = v14;
        v36.size.width = v15;
        v36.size.height = v16;
        if (CGRectEqualToRect(v33, v36))
        {
          v34.origin.y = v31;
          v34.origin.x = v32;
          v34.size.height = v29;
          v34.size.width = v30;
          v37.origin.y = v27;
          v37.origin.x = v28;
          v37.size.height = v25;
          v37.size.width = v26;
          if (CGRectEqualToRect(v34, v37))
          {
            v35.origin.y = v23;
            v35.origin.x = v24;
            v35.size.height = v21;
            v35.size.width = v22;
            v38.origin.y = v19;
            v38.origin.x = v20;
            v38.size.height = v17;
            v38.size.width = v18;
            if (CGRectEqualToRect(v35, v38))
            {
              PXEdgeInsetsEqualToEdgeInsets();
            }
          }
        }
      }
    }
  }

  v7 = 0;
LABEL_12:

LABEL_15:
  return v7;
}

- (unint64_t)hash
{
  resourceIdentifier = [(PXStoryDummyClip *)self resourceIdentifier];
  v3 = [resourceIdentifier hash];

  return v3;
}

- (BOOL)isEqualToClip:(id)clip
{
  clipCopy = clip;
  if (clipCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = clipCopy;
      resourceIdentifier = [(PXStoryDummyClip *)self resourceIdentifier];
      resourceIdentifier2 = [(PXStoryDummyClip *)v5 resourceIdentifier];
      if ([resourceIdentifier isEqual:resourceIdentifier2])
      {
        resourceOccurrenceIndex = [(PXStoryDummyClip *)self resourceOccurrenceIndex];
        v9 = resourceOccurrenceIndex == [(PXStoryDummyClip *)v5 resourceOccurrenceIndex];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (PXStoryDummyClip)initWithInfo:(id *)info resource:(id)resource resourceOccurrenceIndex:(int64_t)index
{
  resourceCopy = resource;
  v16.receiver = self;
  v16.super_class = PXStoryDummyClip;
  v10 = [(PXStoryDummyClip *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_identifier = info->var0;
    memcpy(&v10->_info, info, 0x300uLL);
    objc_storeStrong(&v11->_resource, resource);
    px_storyResourceIdentifier = [(PXStoryResource *)v11->_resource px_storyResourceIdentifier];
    resourceIdentifier = v11->_resourceIdentifier;
    v11->_resourceIdentifier = px_storyResourceIdentifier;

    v11->_resourceOccurrenceIndex = index;
    *&v11->_videoTimeRange.start.value = 0u;
    *&v11->_videoTimeRange.start.epoch = 0u;
    *&v11->_videoTimeRange.duration.timescale = 0u;
    colorNormalization = v11->_colorNormalization;
    v11->_colorNormalization = 0;
  }

  return v11;
}

- (PXStoryDummyClip)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyClip.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXStoryDummyClip init]"}];

  abort();
}

@end
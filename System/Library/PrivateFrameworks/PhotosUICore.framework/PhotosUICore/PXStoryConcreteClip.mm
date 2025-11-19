@interface PXStoryConcreteClip
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_videoTimeRangeForTargetDuration:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)a3;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange;
- (BOOL)isEqualToClip:(id)a3;
- (BOOL)isVisuallyEqualToClip:(id)a3;
- (NSString)description;
- (PFStoryRecipeDisplayAssetNormalization)colorNormalization;
- (PXStoryConcreteClip)init;
- (PXStoryConcreteClip)initWithInfo:(id *)a3 resourceKind:(int64_t)a4 resourceIndex:(int64_t)a5 resourceOccurrenceIndex:(int64_t)a6 resourcesDataSource:(id)a7;
- (id)copyWithInfo:(id *)a3;
- (id)videoHighlight;
@end

@implementation PXStoryConcreteClip

- (id)copyWithInfo:(id *)a3
{
  v5 = [PXStoryConcreteClip alloc];
  v6 = [(PXStoryConcreteClip *)self resourceKind];
  v7 = [(PXStoryConcreteClip *)self resourceIndex];
  v8 = [(PXStoryConcreteClip *)self resourceOccurrenceIndex];
  v9 = [(PXStoryConcreteClip *)self resourcesDataSource];
  memcpy(v12, a3, sizeof(v12));
  v10 = [(PXStoryConcreteClip *)v5 initWithInfo:v12 resourceKind:v6 resourceIndex:v7 resourceOccurrenceIndex:v8 resourcesDataSource:v9];

  return v10;
}

- (BOOL)isVisuallyEqualToClip:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

  v5 = v4;
  if ([(PXStoryConcreteClip *)self isEqualToClip:v5]&& self->_info.playbackStyle == v5->_info.playbackStyle)
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

- (BOOL)isEqualToClip:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryConcreteClip *)self resourceKind];
      if (v6 == [(PXStoryConcreteClip *)v5 resourceKind]&& (v7 = [(PXStoryConcreteClip *)self resourceIndex], v7 == [(PXStoryConcreteClip *)v5 resourceIndex]) && (v8 = [(PXStoryConcreteClip *)self resourceOccurrenceIndex], v8 == [(PXStoryConcreteClip *)v5 resourceOccurrenceIndex]))
      {
        v9 = [(PXStoryConcreteClip *)self resourcesDataSource];
        v10 = [(PXStoryConcreteClip *)v5 resourcesDataSource];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (PFStoryRecipeDisplayAssetNormalization)colorNormalization
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource displayAssetResourceAtIndex:self->_resourceIndex];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 px_storyResourceDisplayAsset];
    v5 = [v4 uuid];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "resource px_storyResourceDisplayAsset uuid is %@", &v11, 0xCu);
  }

  if ([(PXStoryConcreteClip *)self resourceKind]== 1 || [(PXStoryConcreteClip *)self resourceKind]== 5)
  {
    v6 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource movieHighlightsForDisplayAssetAtIndex:self->_resourceIndex];
    v7 = [v6 bestHighlight];
    v8 = [v7 normalizationData];

    if (v8)
    {

LABEL_8:
      v9 = [objc_alloc(MEMORY[0x1E69C08C0]) initWithAnalysisData:v8];
      goto LABEL_11;
    }

    v8 = [v3 px_storyResourceFetchNormalizationData];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRangeForClipDuration:(SEL)a3
{
  result = [(PXStoryConcreteClip *)self resourceKind];
  if (result == 1)
  {
    memset(&v13, 0, sizeof(v13));
    [(PXStoryConcreteClip *)self videoTimeRange];
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
    CMTimeMakeWithSeconds(&time1.start, a4, 600);
    result = [(PXStoryConcreteClip *)self _videoTimeRangeForTargetDuration:&time1];
    if ((v13.start.flags & 1) != 0 && (v13.duration.flags & 1) != 0 && !v13.duration.epoch && (v13.duration.value & 0x8000000000000000) == 0)
    {
      [(PXStoryConcreteClip *)self info];
      v11 = v12;
      time1.start = v12;
      *&time2.start.value = PXStoryTimeZero;
      time2.start.epoch = 0;
      result = CMTimeCompare(&time1.start, &time2.start);
      if (result >= 1)
      {
        *&time2.start.value = *&retstr->var0.var0;
        time2.start.epoch = retstr->var0.var3;
        memset(&time2.duration, 0, sizeof(time2.duration));
        *&time1.start.value = *&retstr->var1.var0;
        time1.start.epoch = retstr->var1.var3;
        rhs = v11;
        CMTimeAdd(&time2.duration, &time1.start, &rhs);
        time1 = time2;
        CMTimeRangeGetEnd(&v9, &time1);
        time1 = v13;
        CMTimeRangeGetEnd(&v8, &time1);
        time1.start = v9;
        rhs = v8;
        result = CMTimeCompare(&time1.start, &rhs);
        if (result >= 1)
        {
          time1 = v13;
          CMTimeRangeGetEnd(&v8, &time1);
          rhs = time2.duration;
          time1.start = v8;
          CMTimeSubtract(&v9, &time1.start, &rhs);
          time2.start = v9;
          time1.start = v9;
          rhs = v13.start;
          result = CMTimeCompare(&time1.start, &rhs);
          if ((result & 0x80000000) != 0)
          {
            time2 = v13;
          }

          *&retstr->var0.var0 = *&time2.start.value;
          retstr->var0.var3 = time2.start.epoch;
        }
      }
    }
  }

  else
  {
    *&retstr->var0.var3 = 0uLL;
    *&retstr->var1.var1 = 0uLL;
    *&retstr->var0.var0 = 0uLL;
  }

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)_videoTimeRangeForTargetDuration:(SEL)a3
{
  v27 = *MEMORY[0x1E69E9840];
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v7 = [(PXStoryConcreteClip *)self videoHighlight];
  if (v7)
  {
    [(PXStoryConcreteClip *)self info];
    time[0] = v25;
    Seconds = CMTimeGetSeconds(time);
    memset(time, 0, sizeof(time));
    [v7 bestTimeRangeForTargetDuration:Seconds];
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    [v7 timeRange];
    *time2 = *&time[0].value;
    *&time2[16] = *&time[0].epoch;
    v20 = *&time[1].timescale;
    *lhs = v23;
    *&lhs[16] = v24[0];
    v18 = v24[1];
    PXStoryTimeRangeIntersection(time2, lhs, time1);
    *&time[0].epoch = *&time1[16];
    *&time[1].timescale = v22;
    *&time[0].value = *time1;
    *time1 = *&a4->var0;
    *&time1[16] = a4->var3;
    *time2 = *&time[1].value;
    *&time2[16] = *(&v22 + 1);
    if (CMTimeCompare(time1, time2) <= 0)
    {
      memset(time1, 0, 24);
      *lhs = time[1];
      rhs = *a4;
      CMTimeSubtract(time2, lhs, &rhs);
      CMTimeMultiplyByRatio(time1, time2, 1, 2);
      *time2 = time[0];
      *lhs = *time1;
      *&lhs[16] = *&time1[16];
      CMTimeAdd(retstr, time2, lhs);
    }

    else
    {
      *time1 = *&a4->var0;
      *&time1[16] = a4->var3;
      *time2 = *(v24 + 8);
      *&time2[16] = *(&v24[1] + 1);
      if ((CMTimeCompare(time1, time2) & 0x80000000) == 0)
      {
        v9 = v24[0];
        *&retstr->var0.var0 = v23;
        *&retstr->var0.var3 = v9;
        *&retstr->var1.var1 = v24[1];
        goto LABEL_12;
      }

      memset(time1, 0, 24);
      *lhs = time[0];
      *&rhs.value = v23;
      rhs.epoch = *&v24[0];
      CMTimeSubtract(time2, lhs, &rhs);
      rhs = *a4;
      v15 = time[1];
      CMTimeSubtract(lhs, &rhs, &v15);
      v15 = *(v24 + 8);
      v14 = time[1];
      CMTimeSubtract(&rhs, &v15, &v14);
      CMTimeMultiplyTimeByTimeRatio();
      *time2 = time[0];
      rhs = *time1;
      CMTimeSubtract(lhs, time2, &rhs);
      CMTimeConvertScale(time2, lhs, 600, kCMTimeRoundingMethod_RoundAwayFromZero);
      *lhs = v23;
      *&lhs[16] = *&v24[0];
      CMTimeMaximum(retstr, time2, lhs);
    }

    *&retstr->var1.var0 = *&a4->var0;
    retstr->var1.var3 = a4->var3;
    goto LABEL_12;
  }

  [(PXStoryConcreteClip *)self info];
  if (v13 == 4)
  {
    v10 = PLStoryGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(PXStoryConcreteClip *)self resource];
      LODWORD(time[0].value) = 138412290;
      *(&time[0].value + 4) = v11;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Video clip is missing movie highlight! %@", time, 0xCu);
    }
  }

LABEL_12:

  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange
{
  [(PXStoryConcreteClip *)self info];
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v19 = v12;
  *v20 = v13;
  *&v20[16] = v14;
  v21 = v15;
  memset(&v11, 0, sizeof(v11));
  v5 = +[PXStorySettings sharedInstance];
  v6 = [(PXStoryConcreteClip *)self resourcesDataSource];
  if (![v6 shouldOptimizeForInlinePlayback])
  {

    goto LABEL_5;
  }

  v7 = [v5 reduceVideoDurationForInlinePlayback];

  if (!v7)
  {
LABEL_5:
    *&v11.value = v21;
    v11.epoch = v22;
    goto LABEL_6;
  }

  memset(&v10, 0, sizeof(v10));
  CMTimeMakeWithSeconds(&v10, 1.0, 600);
  memset(&v9, 0, sizeof(v9));
  lhs = *&v20[8];
  rhs = v10;
  CMTimeAdd(&v9, &lhs, &rhs);
  lhs = v9;
  *&rhs.value = v21;
  rhs.epoch = v22;
  CMTimeMinimum(&v11, &lhs, &rhs);
LABEL_6:
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  lhs = v11;
  [(PXStoryConcreteClip *)self _videoTimeRangeForTargetDuration:&lhs];

  return result;
}

- (id)videoHighlight
{
  if ([(PXStoryConcreteClip *)self resourceKind]== 1)
  {
    v3 = [(PXStoryResourcesDataSource *)self->_resourcesDataSource movieHighlightsForDisplayAssetAtIndex:self->_resourceIndex];
    if (v3)
    {
      [(PXStoryConcreteClip *)self info];
      v4 = PXStoryMovieHighlightForPlaybackStyle(v3, v9);
      v5 = v4;
      if ((v9 - 3) > 2 || v4 != 0)
      {
        goto LABEL_12;
      }

      v7 = PLStoryGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(PXStoryConcreteClip *)self resource];
        objc_claimAutoreleasedReturnValue();
        PXDisplayAssetPlaybackStyleDescription();
      }
    }

    v5 = 0;
LABEL_12:

    goto LABEL_14;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXStoryConcreteClip identifier](self, "identifier")}];
  v7 = [(PXStoryConcreteClip *)self resourceKind];
  if (v7 > 5)
  {
    v8 = @"??";
  }

  else
  {
    v8 = off_1E77400B0[v7];
  }

  v9 = v8;
  v10 = [(PXStoryConcreteClip *)self resource];
  v11 = [(PXStoryConcreteClip *)self resourceIndex];
  v12 = [(PXStoryConcreteClip *)self resourceOccurrenceIndex];
  v13 = [(PXStoryConcreteClip *)self resourcesDataSource];
  v14 = [v3 initWithFormat:@"<%@; %p; ID: %@; Resource Kind: %@; Resource:%@ resourceIndex:%ld resourceOccurenceIndex:%ld resourcesDataSource:%@>", v5, self, v6, v9, v10, v11, v12, v13];

  return v14;
}

- (PXStoryConcreteClip)initWithInfo:(id *)a3 resourceKind:(int64_t)a4 resourceIndex:(int64_t)a5 resourceOccurrenceIndex:(int64_t)a6 resourcesDataSource:(id)a7
{
  v14 = a7;
  v21.receiver = self;
  v21.super_class = PXStoryConcreteClip;
  v15 = [(PXStoryConcreteClip *)&v21 init];
  v16 = v15;
  if (v15)
  {
    v15->_identifier = a3->var0;
    memcpy(&v15->_info, a3, 0x300uLL);
    v16->_resourceKind = a4;
    v16->_resourceIndex = a5;
    v16->_resourceOccurrenceIndex = a6;
    objc_storeStrong(&v16->_resourcesDataSource, a7);
    v17 = 0;
    if (a4 <= 2)
    {
      switch(a4)
      {
        case 1:
          v17 = [v14 displayAssetResourceAtIndex:a5];
          break;
        case 2:
          v17 = [v14 songResourceAtIndex:a5];
          break;
        case 0:
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:a2 object:v16 file:@"PXStoryConcreteClip.m" lineNumber:49 description:@"Code which should be unreachable has been reached"];

          abort();
      }
    }

    else
    {
      switch(a4)
      {
        case 3:
          v17 = [v14 textResourceAtIndex:a5];
          break;
        case 4:
          v17 = [v14 colorResourceAtIndex:a5];
          break;
        case 5:
          v17 = [v14 frameFillingEffectResourceAtIndex:a5];
          break;
      }
    }

    resource = v16->_resource;
    v16->_resource = v17;
  }

  return v16;
}

- (PXStoryConcreteClip)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteClip.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStoryConcreteClip init]"}];

  abort();
}

@end
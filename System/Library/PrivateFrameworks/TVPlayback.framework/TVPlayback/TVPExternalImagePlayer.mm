@interface TVPExternalImagePlayer
- (TVPExternalImagePlayer)initWithMediaItem:(id)a3 referenceTime:(id *)a4 forDate:(id)a5;
- (double)_timeAfterRemovingInterstitials:(double)a3;
- (void)_cancelAllImageLoads;
- (void)_cancelStaleImageLoadsForTime:(double)a3;
- (void)_displayLinkTimerFired:(id)a3;
- (void)_loadImagesIfNecessary;
- (void)_updateImageIntervalWithRate:(double)a3;
- (void)setElapsedTime:(id *)a3;
- (void)setRate:(double)a3;
- (void)setReferenceTime:(id *)a3;
@end

@implementation TVPExternalImagePlayer

- (TVPExternalImagePlayer)initWithMediaItem:(id)a3 referenceTime:(id *)a4 forDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = TVPExternalImagePlayer;
  v11 = [(TVPExternalImagePlayer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaItem, a3);
    v13 = MEMORY[0x277CC08F0];
    *&v12->_elapsedTime.value = *MEMORY[0x277CC08F0];
    v12->_elapsedTime.epoch = *(v13 + 16);
    var3 = a4->var3;
    *&v12->_referenceTime.value = *&a4->var0;
    v12->_referenceTime.epoch = var3;
    objc_storeStrong(&v12->_referenceDate, a5);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    imageInfosBeingLoaded = v12->_imageInfosBeingLoaded;
    v12->_imageInfosBeingLoaded = v15;
  }

  return v12;
}

- (void)setRate:(double)a3
{
  if (self->_rate != a3)
  {
    self->_rate = a3;
    if (a3 == 0.0)
    {
      v4 = [(TVPExternalImagePlayer *)self displayLink];
      [v4 invalidate];

      [(TVPExternalImagePlayer *)self setDisplayLink:0];
      [(TVPExternalImagePlayer *)self setPreviousTimestamp:0.0];
      v5 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
      [v5 removeAllObjects];

      v6 = [(TVPExternalImagePlayer *)self imageLoader];
      [v6 invalidate];

      [(TVPExternalImagePlayer *)self setImageLoader:0];

      [(TVPExternalImagePlayer *)self setCurrentImage:0];
    }

    else
    {
      v7 = [(TVPExternalImagePlayer *)self imageLoader];

      if (!v7)
      {
        v8 = [(TVPExternalImagePlayer *)self mediaItem];
        v9 = [v8 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExternalImageConfig"];

        if (v9)
        {
          v10 = [[TVPExternalImageLoader alloc] initWithConfig:v9];
          [(TVPExternalImagePlayer *)self setImageLoader:v10];
        }
      }

      [(TVPExternalImagePlayer *)self _cancelAllImageLoads];
      [(TVPExternalImagePlayer *)self _updateImageIntervalWithRate:self->_rate];
      [(TVPExternalImagePlayer *)self _loadImagesIfNecessary];
      v11 = [(TVPExternalImagePlayer *)self displayLink];

      if (!v11)
      {
        v13 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkTimerFired_];
        [v13 setPreferredFramesPerSecond:30];
        [(TVPExternalImagePlayer *)self setDisplayLink:v13];
        v12 = [MEMORY[0x277CBEB88] mainRunLoop];
        [v13 addToRunLoop:v12 forMode:*MEMORY[0x277CBE738]];
      }
    }
  }
}

- (void)setElapsedTime:(id *)a3
{
  if ((a3->var2 & 0x1D) == 1)
  {
    v3 = *&a3->var0;
    self->_elapsedTime.epoch = a3->var3;
    *&self->_elapsedTime.value = v3;
  }
}

- (void)_displayLinkTimerFired:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  v6 = v5;
  [(TVPExternalImagePlayer *)self previousTimestamp];
  if (v7 == 0.0)
  {
    v8 = v6 + -1.0 / [v4 preferredFramesPerSecond];
  }

  else
  {
    v8 = v7;
  }

  memset(&v32, 0, sizeof(v32));
  [(TVPExternalImagePlayer *)self elapsedTime];
  time = v32;
  Seconds = CMTimeGetSeconds(&time);
  [(TVPExternalImagePlayer *)self rate];
  v11 = Seconds + (v6 - v8) * v10;
  memset(&time, 0, sizeof(time));
  CMTimeMakeWithSeconds(&time, v11, 1000000);
  v12 = [(TVPExternalImagePlayer *)self referenceDate];
  if (v12)
  {
    memset(&v30, 0, sizeof(v30));
    [(TVPExternalImagePlayer *)self referenceTime];
    v28 = time;
    CMTimeSubtract(&v30, &v28, &rhs);
    rhs = v30;
    v13 = [v12 dateByAddingTimeInterval:CMTimeGetSeconds(&rhs)];
  }

  else
  {
    v13 = 0;
  }

  v30 = time;
  [(TVPExternalImagePlayer *)self setElapsedTime:&v30];
  [(TVPExternalImagePlayer *)self setPlaybackDate:v13];
  [(TVPExternalImagePlayer *)self setPreviousTimestamp:v6];
  [(TVPExternalImagePlayer *)self _timeAfterRemovingInterstitials:Seconds];
  v15 = v14;
  [(TVPExternalImagePlayer *)self _timeAfterRemovingInterstitials:v11];
  v17 = v16;
  if (floor(v16) != floor(v15))
  {
    [(TVPExternalImagePlayer *)self _cancelStaleImageLoadsForTime:v16];
    v18 = [(TVPExternalImagePlayer *)self imageLoader];
    [(TVPExternalImagePlayer *)self imageInterval];
    [v18 closestImageTimeForTime:v17 imageInterval:v19];
    v21 = v20;
    [(TVPExternalImagePlayer *)self currentImageTime];
    if (v22 != v21 && [v18 imageIsLoadedForTime:v21])
    {
      v23 = [v18 loadedImageForTime:v21];
      if (v23)
      {
        [(TVPExternalImagePlayer *)self setCurrentImage:v23];
        v24 = [(TVPExternalImagePlayer *)self imageUpdateBlock];

        if (v24)
        {
          v25 = [(TVPExternalImagePlayer *)self imageUpdateBlock];
          (v25)[2](v25, v23);
        }

        [(TVPExternalImagePlayer *)self setCurrentImageTime:v21];
      }
    }
  }

  v26 = [(TVPExternalImagePlayer *)self elapsedTimeUpdateBlock];
  if (v26)
  {
    [(TVPExternalImagePlayer *)self rate];
    v27 = v26[2];
    v30 = time;
    rhs = v32;
    v27(v26, &v30, &rhs, v13);
  }
}

- (void)_loadImagesIfNecessary
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = [(TVPExternalImagePlayer *)self imageLoader];
  if (v32)
  {
    [(TVPExternalImagePlayer *)self rate];
    v4 = v3;
    memset(&v42, 0, sizeof(v42));
    [(TVPExternalImagePlayer *)self elapsedTime];
    time = v42;
    [(TVPExternalImagePlayer *)self _timeAfterRemovingInterstitials:CMTimeGetSeconds(&time)];
    v6 = v5;
    [(TVPExternalImagePlayer *)self imageInterval];
    [v32 closestImageTimeForTime:v4 + v6 imageInterval:v7];
    v9 = v8;
    [(TVPExternalImagePlayer *)self imageInterval];
    v11 = v10;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v4 <= 0.0)
    {
      [v32 firstImageTime];
      for (i = v15; v9 >= i; v9 = v9 - v11)
      {
        if (([v32 imageIsLoadedForTime:{v9, v31}] & 1) == 0)
        {
          v17 = objc_alloc_init(TVPPlaybackImageLoadInfo);
          [(TVPPlaybackImageLoadInfo *)v17 setRequestedTime:v9];
          [v31 addObject:v17];
        }
      }
    }

    else
    {
      [v32 lastImageTime];
      for (j = v12; v9 <= j; v9 = v11 + v9)
      {
        if (([v32 imageIsLoadedForTime:{v9, v31}] & 1) == 0)
        {
          v14 = objc_alloc_init(TVPPlaybackImageLoadInfo);
          [(TVPPlaybackImageLoadInfo *)v14 setRequestedTime:v9];
          [v31 addObject:v14];
        }
      }
    }

    v18 = v31;
    if (v31)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v31;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v20)
      {
        v21 = *v38;
        do
        {
          v22 = 0;
          do
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v37 + 1) + 8 * v22);
            v24 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
            v25 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
            v26 = [v24 indexOfObject:v23 inSortedRange:0 options:objc_msgSend(v25 usingComparator:{"count"), 1024, &__block_literal_global_7}];

            v27 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
            [v27 insertObject:v23 atIndex:v26];

            ++v22;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v20);
      }

      objc_initWeak(&time, self);
      v28 = [v19 valueForKey:@"requestedTime"];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke_2;
      v35[3] = &unk_279D7BD50;
      objc_copyWeak(&v36, &time);
      v29 = [v32 loadImagesForTimes:v28 maxSize:v35 withHandler:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke_2_11;
      v33[3] = &unk_279D7BD78;
      v34 = v19;
      [v29 enumerateObjectsUsingBlock:v33];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&time);
      v18 = v31;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 requestedTime];
  v7 = v6;
  [v5 requestedTime];
  if (v7 >= v8)
  {
    [v4 requestedTime];
    v11 = v10;
    [v5 requestedTime];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained imageInfosBeingLoaded];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke_8;
  v13[3] = &unk_279D7BD28;
  v9 = v5;
  v14 = v9;
  v15 = &v23;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];

  v10 = v18[5];
  if (v10)
  {
    [v10 setIdentifier:0];
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 imageInfosBeingLoaded];
    [v12 removeObjectAtIndex:v24[3]];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke_8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 identifier];
  v9 = [v8 isEqual:a1[4]];

  if (v9)
  {
    *(*(a1[5] + 8) + 24) = a3;
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

void __48__TVPExternalImagePlayer__loadImagesIfNecessary__block_invoke_2_11(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 setIdentifier:v5];
}

- (void)_cancelAllImageLoads
{
  v5 = [(TVPExternalImagePlayer *)self imageLoader];
  v3 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
  v4 = [v3 valueForKey:@"identifier"];
  [v5 cancelImageLoadingForIdentifiers:v4];
}

- (void)_cancelStaleImageLoadsForTime:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(TVPExternalImagePlayer *)self rate];
  v7 = v6;
  v8 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
  if (v7 <= 0.0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__TVPExternalImagePlayer__cancelStaleImageLoadsForTime___block_invoke_2;
    v11[3] = &unk_279D7BDA0;
    *&v12[1] = a3;
    v9 = v12;
    v12[0] = v5;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v11];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__TVPExternalImagePlayer__cancelStaleImageLoadsForTime___block_invoke;
    v13[3] = &unk_279D7BDA0;
    *&v14[1] = a3;
    v9 = v14;
    v14[0] = v5;
    [v8 enumerateObjectsUsingBlock:v13];
  }

  v10 = [(TVPExternalImagePlayer *)self imageInfosBeingLoaded];
  [v10 removeObjectsAtIndexes:v5];
}

uint64_t __56__TVPExternalImagePlayer__cancelStaleImageLoadsForTime___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 requestedTime];
  if (v8 >= *(a1 + 40))
  {
    *a4 = 1;
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 addIndex:a3];
  }

  return result;
}

uint64_t __56__TVPExternalImagePlayer__cancelStaleImageLoadsForTime___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 requestedTime];
  if (v8 <= *(a1 + 40))
  {
    *a4 = 1;
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 addIndex:a3];
  }

  return result;
}

- (void)_updateImageIntervalWithRate:(double)a3
{
  v5 = [(TVPExternalImagePlayer *)self mediaItem];
  v7 = [v5 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExternalImageConfig"];

  [v7 imageInterval];
  [(TVPExternalImagePlayer *)self setImageInterval:(vcvtpd_s64_f64(fabs(a3) * 0.25 / v6) * v6)];
}

- (double)_timeAfterRemovingInterstitials:(double)a3
{
  v4 = [(TVPExternalImagePlayer *)self mediaItem];
  v5 = [v4 mediaItemMetadataForProperty:@"TVPMediaItemMetadataInterstitialCollection"];

  if (v5)
  {
    [v5 timeAdjustedByRemovingInterstitials:a3];
    a3 = v6;
  }

  return a3;
}

- (void)setReferenceTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_referenceTime.epoch = a3->var3;
  *&self->_referenceTime.value = v3;
}

@end
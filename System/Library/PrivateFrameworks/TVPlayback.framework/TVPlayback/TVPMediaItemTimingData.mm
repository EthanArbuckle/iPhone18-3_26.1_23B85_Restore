@interface TVPMediaItemTimingData
- (void)setInitialLoadingComplete:(BOOL)complete;
@end

@implementation TVPMediaItemTimingData

- (void)setInitialLoadingComplete:(BOOL)complete
{
  if (self->_initialLoadingComplete != complete)
  {
    self->_initialLoadingComplete = complete;
    v5 = 0.0;
    if (complete)
    {
      [(TVPMediaItemTimingData *)self endTimeForPreparingForLoading];
      v7 = v6;
      [(TVPMediaItemTimingData *)self startTimeForPreparingForLoading];
      v9 = v7 - v8;
      [(TVPMediaItemTimingData *)self endTimeForLoadingAVAssetKeys];
      v11 = v10;
      [(TVPMediaItemTimingData *)self startTimeForLoadingAVAssetKeys];
      v13 = v9 + v11 - v12;
      [(TVPMediaItemTimingData *)self endTimeForPreparingForPlaybackInitiation];
      v15 = v14;
      [(TVPMediaItemTimingData *)self startTimeForPreparingForPlaybackInitiation];
      v17 = v13 + v15 - v16;
      [(TVPMediaItemTimingData *)self endTimeForAVPlayerItemLoading];
      v19 = v18;
      [(TVPMediaItemTimingData *)self startTimeForAVPlayerItemLoading];
      v21 = v17 + v19 - v20;
      [(TVPMediaItemTimingData *)self endTimeForBuffering];
      v23 = v22;
      [(TVPMediaItemTimingData *)self startTimeForBuffering];
      v5 = v21 + v23 - v24;
    }

    [(TVPMediaItemTimingData *)self setTotalInitialLoadingTime:v5];
  }
}

@end
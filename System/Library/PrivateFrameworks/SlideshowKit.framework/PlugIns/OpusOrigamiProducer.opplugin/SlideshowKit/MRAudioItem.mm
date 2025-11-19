@interface MRAudioItem
- (MRAudioItem)initWithURL:(id)a3 startTime:(double)a4 andDuration:(double)a5;
- (float)volumeAtTime:(double)a3;
- (void)dealloc;
- (void)gotoTime:(double)a3;
- (void)syncVolumeToSong:(id)a3;
@end

@implementation MRAudioItem

- (MRAudioItem)initWithURL:(id)a3 startTime:(double)a4 andDuration:(double)a5
{
  v8 = [(MRAudioItem *)self init];
  if (v8)
  {
    v9 = [AVPlayerItem playerItemWithURL:a3];
    v8->_avPlayerItem = v9;
    v8->_startTime = a4;
    v8->_duration = a5;
    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [(AVPlayerItem *)v9 tracks];
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * i);
            if (([objc_msgSend(objc_msgSend(v15 "assetTrack")] & 1) == 0)
            {
              [v15 setEnabled:0];
            }
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      [(MRAudioItem *)v8 gotoTime:0.0];
    }
  }

  return v8;
}

- (void)dealloc
{
  self->_avPlayerItem = 0;
  v3.receiver = self;
  v3.super_class = MRAudioItem;
  [(MRAudioItem *)&v3 dealloc];
}

- (float)volumeAtTime:(double)a3
{
  fadeInDuration = self->_fadeInDuration;
  v4 = 1.0;
  v5 = 1.0;
  if (fadeInDuration > 0.0)
  {
    v5 = a3 / fadeInDuration;
  }

  fadeOutDuration = self->_fadeOutDuration;
  if (fadeOutDuration > 0.0)
  {
    v4 = (self->_duration - a3) / fadeOutDuration;
  }

  if (v5 >= self->_volume)
  {
    result = self->_volume;
  }

  else
  {
    result = v5;
  }

  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)gotoTime:(double)a3
{
  avPlayerItem = self->_avPlayerItem;
  CMTimeMake(&v8, (a3 * 1000000.0), 1000000);
  v6 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  v4 = v6;
  v5 = epoch;
  [(AVPlayerItem *)avPlayerItem seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4];
}

- (void)syncVolumeToSong:(id)a3
{
  [a3 volume];
  self->_volume = v5;
  [a3 fadeInDuration];
  self->_fadeInDuration = v6;
  [a3 fadeOutDuration];
  self->_fadeOutDuration = v7;
}

@end
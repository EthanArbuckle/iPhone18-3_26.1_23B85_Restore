@interface MRAudioItem
- (MRAudioItem)initWithURL:(id)l startTime:(double)time andDuration:(double)duration;
- (float)volumeAtTime:(double)time;
- (void)dealloc;
- (void)gotoTime:(double)time;
- (void)syncVolumeToSong:(id)song;
@end

@implementation MRAudioItem

- (MRAudioItem)initWithURL:(id)l startTime:(double)time andDuration:(double)duration
{
  v8 = [(MRAudioItem *)self init];
  if (v8)
  {
    v9 = [AVPlayerItem playerItemWithURL:l];
    v8->_avPlayerItem = v9;
    v8->_startTime = time;
    v8->_duration = duration;
    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      tracks = [(AVPlayerItem *)v9 tracks];
      v11 = [(NSArray *)tracks countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(tracks);
            }

            v15 = *(*(&v17 + 1) + 8 * i);
            if (([objc_msgSend(objc_msgSend(v15 "assetTrack")] & 1) == 0)
            {
              [v15 setEnabled:0];
            }
          }

          v12 = [(NSArray *)tracks countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (float)volumeAtTime:(double)time
{
  fadeInDuration = self->_fadeInDuration;
  v4 = 1.0;
  v5 = 1.0;
  if (fadeInDuration > 0.0)
  {
    v5 = time / fadeInDuration;
  }

  fadeOutDuration = self->_fadeOutDuration;
  if (fadeOutDuration > 0.0)
  {
    v4 = (self->_duration - time) / fadeOutDuration;
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

- (void)gotoTime:(double)time
{
  avPlayerItem = self->_avPlayerItem;
  CMTimeMake(&v8, (time * 1000000.0), 1000000);
  v6 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  v4 = v6;
  v5 = epoch;
  [(AVPlayerItem *)avPlayerItem seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4];
}

- (void)syncVolumeToSong:(id)song
{
  [song volume];
  self->_volume = v5;
  [song fadeInDuration];
  self->_fadeInDuration = v6;
  [song fadeOutDuration];
  self->_fadeOutDuration = v7;
}

@end
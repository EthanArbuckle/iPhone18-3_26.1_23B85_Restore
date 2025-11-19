@interface MRAudioPlayer
- (MRAudioPlayer)initWithAudioItems:(id)a3 andAudioPlaylist:(id)a4;
- (double)currentDuckLevel;
- (void)dealloc;
- (void)processWithDuckLevel:(double)a3;
- (void)resyncAudioItem;
- (void)setShouldBePlaying:(BOOL)a3;
- (void)syncVolumeToAudioPlaylist:(id)a3;
@end

@implementation MRAudioPlayer

- (MRAudioPlayer)initWithAudioItems:(id)a3 andAudioPlaylist:(id)a4
{
  v6 = [(MRAudioPlayer *)self init];
  if (v6)
  {
    v6->_avPlayer = objc_alloc_init(AVPlayer);
    v7 = a3;
    v6->_audioItems = v7;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11) duration];
          v6->_duration = v12 + v6->_duration;
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(MRAudioPlayer *)v6 syncVolumeToAudioPlaylist:a4];
  }

  return v6;
}

- (void)dealloc
{
  self->_avPlayer = 0;

  self->_audioItems = 0;
  v3.receiver = self;
  v3.super_class = MRAudioPlayer;
  [(MRAudioPlayer *)&v3 dealloc];
}

- (void)syncVolumeToAudioPlaylist:(id)a3
{
  [a3 volume];
  self->_volume = v5;
  [a3 fadeInDuration];
  self->_fadeInDuration = v6;
  [a3 fadeOutDuration];
  self->_fadeOutDuration = v7;
  [a3 duckLevel];
  self->_duckLevel = v8;
  [a3 duckInDuration];
  self->_duckInDuration = v9;
  [a3 duckOutDuration];
  self->_duckOutDuration = v10;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [a3 songs];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [-[NSArray objectAtIndex:](self->_audioItems objectAtIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * v15), "index")), "syncVolumeToSong:", *(*(&v16 + 1) + 8 * v15)}];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (double)currentDuckLevel
{
  parentDuration = self->_parentDuration;
  localTime = self->_localTime;
  if (localTime < 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  duckInDuration = self->_duckInDuration;
  if (duckInDuration > 0.0)
  {
    v4 = (duckInDuration + localTime) / duckInDuration;
  }

  duckOutDuration = self->_duckOutDuration;
  v7 = localTime < parentDuration;
  v8 = duckOutDuration + parentDuration - localTime;
  if (v7)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = v8 / duckOutDuration;
  if (duckOutDuration <= 0.0)
  {
    v10 = v9;
  }

  v11 = fmin(v4, 1.0);
  if (v10 >= v11)
  {
    v10 = v11;
  }

  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  return 1.0 - (1.0 - self->_duckLevel) * v10;
}

- (void)setShouldBePlaying:(BOOL)a3
{
  self->_shouldBePlaying = a3;
  if (!a3)
  {
    [(AVPlayer *)self->_avPlayer rate];
    if (v4 > 0.0)
    {
      avPlayer = self->_avPlayer;

      [(AVPlayer *)avPlayer pause];
    }
  }
}

- (void)processWithDuckLevel:(double)a3
{
  fadeInDuration = self->_fadeInDuration;
  v6 = 1.0;
  v7 = 1.0;
  if (fadeInDuration > 0.0)
  {
    v7 = fmod(self->_localTime, self->_duration) / fadeInDuration;
  }

  fadeOutDuration = self->_fadeOutDuration;
  if (fadeOutDuration > 0.0)
  {
    localTime = self->_localTime;
    v10 = fmin((self->_duration - fmod(localTime, self->_duration)) / fadeOutDuration, 1.0);
    if (v10 >= (self->_parentDuration - localTime) / fadeOutDuration)
    {
      v6 = (self->_parentDuration - localTime) / fadeOutDuration;
    }

    else
    {
      v6 = v10;
    }
  }

  v11 = fmin(v7, 1.0);
  if (v6 >= v11)
  {
    v6 = v11;
  }

  volume = self->_volume;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  audioItems = self->_audioItems;
  v14 = [(NSArray *)audioItems countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    v17 = 0.0;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(audioItems);
      }

      v19 = *(*(&v30 + 1) + 8 * v18);
      v20 = self->_localTime;
      [v19 duration];
      if (v20 < v17 + v21)
      {
        break;
      }

      [v19 duration];
      v17 = v17 + v22;
      if (v15 == ++v18)
      {
        v15 = [(NSArray *)audioItems countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          goto LABEL_11;
        }

        v19 = 0;
        break;
      }
    }
  }

  else
  {
    v19 = 0;
    v17 = 0.0;
  }

  v23 = volume * a3;
  v24 = [v19 avPlayerItem];
  if (v24 != [(AVPlayer *)self->_avPlayer currentItem])
  {
    v25 = self->_localTime - v17;
    [v19 startTime];
    [v19 gotoTime:v25 + v26];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_12B8D4;
    v29[3] = &unk_1AAB08;
    v29[4] = v24;
    v29[5] = self;
    dispatch_async(&_dispatch_main_q, v29);
  }

  v27 = v6 * v23;
  if (v19)
  {
    [v19 volumeAtTime:self->_localTime - v17];
    v27 = v27 * v28;
  }

  self->_currentVolume = v27;
}

- (void)resyncAudioItem
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  audioItems = self->_audioItems;
  v4 = [(NSArray *)audioItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = 0.0;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(audioItems);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      localTime = self->_localTime;
      [v9 duration];
      if (localTime < v7 + v11)
      {
        break;
      }

      [v9 duration];
      v7 = v7 + v12;
      if (v5 == ++v8)
      {
        v5 = [(NSArray *)audioItems countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        v9 = 0;
        break;
      }
    }
  }

  else
  {
    v9 = 0;
    v7 = 0.0;
  }

  v13 = self->_localTime - v7;
  [v9 startTime];
  [v9 gotoTime:v13 + v14];
  v15 = [v9 avPlayerItem];
  if (v15 != [(AVPlayer *)self->_avPlayer currentItem])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_12BAE8;
    v16[3] = &unk_1AAB08;
    v16[4] = v15;
    v16[5] = self;
    dispatch_async(&_dispatch_main_q, v16);
  }
}

@end
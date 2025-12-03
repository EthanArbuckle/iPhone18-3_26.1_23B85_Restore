@interface MRAssetPlayerMovie
- (BOOL)newImageIsAvailable;
- (MRAssetPlayerMovie)initWithPath:(id)path size:(CGSize)size master:(id)master andOptions:(id)options;
- (id)_posterImage:(BOOL)image;
- (id)retainedByUserImageAtTime:(double)time displayLinkTimestamp:(double)timestamp;
- (void)_finishLoadingAsset:(id)asset andVideoTrack:(id)track forTime:(double)time;
- (void)_finishLoadingAsset:(id)asset forTime:(double)time completion:(id)completion;
- (void)dealloc;
- (void)loadForTime:(double)time;
- (void)outputMediaDataWillChange:(id)change;
- (void)setIsPlaying:(BOOL)playing;
- (void)setTime:(double)time;
@end

@implementation MRAssetPlayerMovie

- (MRAssetPlayerMovie)initWithPath:(id)path size:(CGSize)size master:(id)master andOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = MRAssetPlayerMovie;
  v6 = [(MRAssetPlayer *)&v8 initWithPath:path size:master master:options andOptions:size.width, size.height];
  if (v6)
  {
    v6->_semaphore = [[NSConditionLock alloc] initWithCondition:0];
    v6->_dispatchQueue = dispatch_queue_create("MRAssetPlayerMovie", 0);
  }

  return v6;
}

- (void)dealloc
{
  [(MRImage *)self->super._image releaseByUser];
  self->super._image = 0;
  cvTextureCache = self->_cvTextureCache;
  if (cvTextureCache)
  {
    CVOpenGLESTextureCacheFlush(cvTextureCache, 0);
  }

  [(AVPlayerItemVideoOutput *)self->_videoOutput setDelegate:0 queue:0];
  avPlayer = self->_avPlayer;
  playerItem = self->_playerItem;
  videoOutput = self->_videoOutput;
  v7 = self->_cvTextureCache;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DB624;
  block[3] = &unk_1AB5C8;
  block[4] = avPlayer;
  block[5] = playerItem;
  block[6] = videoOutput;
  block[7] = v7;
  dispatch_async(dispatchQueue, block);
  self->_cvTextureCache = 0;
  self->_videoOutput = 0;
  self->_playerItem = 0;
  self->_avPlayer = 0;
  dispatch_release(self->_dispatchQueue);
  self->_dispatchQueue = 0;

  self->_semaphore = 0;
  v9.receiver = self;
  v9.super_class = MRAssetPlayerMovie;
  [(MRAssetPlayer *)&v9 dealloc];
}

- (void)setTime:(double)time
{
  [(AVPlayerItem *)self->_playerItem cancelPendingSeeks];
  if (self->super._time != time)
  {
    [(AVPlayer *)self->_avPlayer cancelPendingPrerolls];
  }

  self->super._time = time;
  v5 = time >= 0.0 && self->_movieDuration > time;
  self->_isPlaying &= v5;
  if (self->_movieIsReadyToPlay)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_DB7BC;
    v7[3] = &unk_1AA670;
    v7[4] = self;
    *&v7[5] = time;
    dispatch_sync(dispatchQueue, v7);
  }
}

- (void)setIsPlaying:(BOOL)playing
{
  if (self->_isPlaying != playing)
  {
    self->_isPlaying = playing;
    if (self->_movieIsReadyToPlay)
    {
      block[5] = v3;
      block[6] = v4;
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_DB934;
      block[3] = &unk_1AA700;
      block[4] = self;
      dispatch_sync(dispatchQueue, block);
    }
  }
}

- (BOOL)newImageIsAvailable
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self->_movieIsReadyToPlay)
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_DBACC;
    v6[3] = &unk_1AB5F0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(dispatchQueue, v6);
  }

  if (self->_newImageIsAvailable)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

- (void)loadForTime:(double)time
{
  if (!self->_avPlayer)
  {
    v17[8] = v6;
    v17[9] = v5;
    v17[14] = v3;
    v17[15] = v4;
    imageManager = [(MRAssetMaster *)self->super._master imageManager];
    isEmbeddedAsset = [(MRAssetMaster *)self->super._master isEmbeddedAsset];
    if (isEmbeddedAsset)
    {
      assetManager = 0;
    }

    else
    {
      assetManager = [(MRContext *)[(MRImageManager *)imageManager baseContext] assetManager];
    }

    v12 = [(MZMediaManagement *)assetManager avAssetForAssetAtPath:[(MRAssetMaster *)self->super._master path]];
    if (!v12)
    {
      path = [(MRAssetMaster *)self->super._master path];
      if ((isEmbeddedAsset & 1) == 0)
      {
        path = [(MZMediaManagement *)assetManager absolutePathForAssetAtPath:path andSize:self->super._size.width, self->super._size.height];
      }

      if ([(NSString *)path isAbsolutePath])
      {
        v14 = [NSURL fileURLWithPath:path];
      }

      else
      {
        v14 = [NSURL URLWithString:path];
      }

      v12 = [AVURLAsset URLAssetWithURL:v14 options:0];
    }

    v15 = dispatch_semaphore_create(0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_DBD00;
    v17[3] = &unk_1AB5C8;
    v17[4] = self;
    v17[5] = v12;
    *&v17[7] = time;
    v17[6] = v15;
    [(AVURLAsset *)v12 loadValuesAsynchronouslyForKeys:&off_1BC018 completionHandler:v17];
    v16 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v15, v16);
    dispatch_release(v15);
  }
}

- (void)_finishLoadingAsset:(id)asset forTime:(double)time completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DBE40;
  v5[3] = &unk_1AB618;
  v5[4] = self;
  v5[5] = asset;
  *&v5[8] = time;
  v5[7] = completion;
  [objc_msgSend(objc_msgSend(asset tracksWithMediaType:{AVMediaTypeVideo), "lastObject"), "loadValuesAsynchronouslyForKeys:completionHandler:", &off_1BC030, v5}];
}

- (void)_finishLoadingAsset:(id)asset andVideoTrack:(id)track forTime:(double)time
{
  trackCopy = track;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (track)
  {
    [track preferredTransform];
  }

  if (self->_startTime <= 0.0)
  {
    assetCopy = asset;
  }

  else
  {
    naturalTimeScale = [trackCopy naturalTimeScale];
    assetCopy = objc_alloc_init(AVMutableComposition);
    startTime = self->_startTime;
    v22 = 0;
    CMTimeMake(&start, (startTime * naturalTimeScale), naturalTimeScale);
    CMTimeMake(&duration, (self->_duration * naturalTimeScale), naturalTimeScale);
    CMTimeRangeMake(&v21, &start, &duration);
    start = kCMTimeZero;
    if (([assetCopy insertTimeRange:&v21 ofAsset:asset atTime:&start error:&v22] & 1) == 0)
    {
      NSLog(@"%@", v22);
    }

    trackCopy = [objc_msgSend(assetCopy tracksWithMediaType:{AVMediaTypeVideo), "lastObject"}];
  }

  memset(&v21, 0, 24);
  if (assetCopy)
  {
    [assetCopy duration];
  }

  v12 = [AVPlayerItem playerItemWithAsset:assetCopy];
  self->_playerItem = v12;
  if (v12)
  {
    memset(&start, 0, sizeof(start));
    [(AVPlayerItem *)v12 duration];
    if ((start.flags & 1) != 0 && (start.flags & 0x1C) == 0 && start.value >= 1)
    {
      v21.start = start;
    }
  }

  self->_avPlayer = [[AVPlayer alloc] initWithPlayerItem:self->_playerItem];
  start = v21.start;
  self->_movieDuration = CMTimeGetSeconds(&start);
  v28 = kCVOpenGLESTextureCacheMaximumTextureAgeKey;
  v29 = &off_1BC098;
  v13 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v14 = [[EAGLContext alloc] initWithAPI:2 sharegroup:{-[EAGLContext sharegroup](-[MRImageManager imageGLContext](-[MRAssetMaster imageManager](self->super._master, "imageManager"), "imageGLContext"), "sharegroup")}];
  self->_textureCacheContext = v14;
  CVOpenGLESTextureCacheCreate(kCFAllocatorDefault, v13, v14, 0, &self->_cvTextureCache);

  v27[0] = &__kCFBooleanTrue;
  v26[0] = kCVPixelFormatOpenGLESCompatibility;
  v26[1] = kCVPixelBufferPixelFormatTypeKey;
  v27[1] = [NSNumber numberWithUnsignedInteger:1111970369];
  v26[2] = kCVPixelBufferWidthKey;
  v27[2] = [NSNumber numberWithUnsignedInteger:self->super._size.width];
  v26[3] = kCVPixelBufferHeightKey;
  v27[3] = [NSNumber numberWithUnsignedInteger:self->super._size.height];
  v15 = [[AVPlayerItemVideoOutput alloc] initWithPixelBufferAttributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v27, v26, 4)}];
  self->_videoOutput = v15;
  [(AVPlayerItemVideoOutput *)v15 setDelegate:self queue:self->_dispatchQueue];
  [(AVPlayerItemVideoOutput *)self->_videoOutput requestNotificationOfMediaDataChangeWithAdvanceInterval:0.0];
  [(AVPlayerItem *)self->_playerItem addOutput:self->_videoOutput];
  if (trackCopy)
  {
    if (*&v23 == 1.0)
    {
      if (*(&v24 + 1) == 1.0)
      {
        v16 = 1;
      }

      else
      {
        v16 = 4;
      }

LABEL_28:
      self->_orientation = v16;
      goto LABEL_29;
    }

    if (*&v23 == -1.0)
    {
      v17 = *(&v24 + 1) == 1.0;
      v16 = 3;
      v18 = 2;
      goto LABEL_26;
    }

    if (*(&v23 + 1) == 1.0)
    {
      v17 = *&v24 == 1.0;
      v16 = 6;
      v18 = 5;
      goto LABEL_26;
    }

    if (*(&v23 + 1) == -1.0)
    {
      v17 = *&v24 == 1.0;
      v16 = 7;
      v18 = 8;
LABEL_26:
      if (v17)
      {
        v16 = v18;
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  self->super._time = time;
}

- (id)retainedByUserImageAtTime:(double)time displayLinkTimestamp:(double)timestamp
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_DC660;
  v27 = sub_DC670;
  v28 = 0;
  semaphore = self->_semaphore;
  if (!semaphore)
  {
    goto LABEL_13;
  }

  if ((!self->super._image || self->_imageIsThumbnail) && !self->super._thumbnailIsOK)
  {
    if ([(NSConditionLock *)semaphore lockWhenCondition:1 beforeDate:[NSDate dateWithTimeIntervalSinceNow:1.0]])
    {
LABEL_8:
      [(NSConditionLock *)self->_semaphore unlock];

      self->_semaphore = 0;
LABEL_13:
      if (timestamp < 0.0 || (videoOutput = self->_videoOutput) == 0 || ([(AVPlayerItemVideoOutput *)videoOutput itemTimeForHostTime:timestamp], epoch = v22.epoch, value = v22.value, flags = v22.flags, timescale = v22.timescale, (v22.flags & 1) == 0))
      {
        CMTimeMake(&v22, (time * 1000000.0), 1000000);
        value = v22.value;
        flags = v22.flags;
        timescale = v22.timescale;
        epoch = v22.epoch;
      }

      dispatchQueue = self->_dispatchQueue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_DC67C;
      v18[3] = &unk_1AB640;
      *&v18[6] = time;
      v18[7] = value;
      v19 = timescale;
      v20 = flags;
      v21 = epoch;
      v18[4] = self;
      v18[5] = &v23;
      dispatch_sync(dispatchQueue, v18);
      goto LABEL_18;
    }

    semaphore = self->_semaphore;
  }

  if ([(NSConditionLock *)semaphore tryLockWhenCondition:1])
  {
    goto LABEL_8;
  }

  if ([(AVPlayer *)self->_avPlayer status]== &dword_0 + 1 && self->_isPlaying)
  {
    LODWORD(v8) = 1.0;
    [(AVPlayer *)self->_avPlayer setRate:v8];
  }

  if (!self->_semaphore)
  {
    goto LABEL_13;
  }

LABEL_18:
  if (v24[5])
  {
    v13 = 0;
  }

  else
  {
    if (self->super._image || (v16 = [-[MRAssetMaster thumbnailForFlagsMonochromatic:mipmap:powerOfTwo:](self->super._master thumbnailForFlagsMonochromatic:self->super._isMonochromatic mipmap:self->super._generatesMipmap powerOfTwo:{self->super._usesPowerOfTwo), "retainByUser"}], (v24[5] = v16) == 0) && (v17 = -[MRContext retainedByUserBlackImage](-[MRImageManager baseContext](-[MRAssetMaster imageManager](self->super._master, "imageManager"), "baseContext"), "retainedByUserBlackImage"), (v24[5] = v17) == 0))
    {
      retainByUser = [(MRImage *)self->super._image retainByUser];
      v24[5] = retainByUser;
      goto LABEL_23;
    }

    v13 = 1;
  }

  objc_sync_enter(self);
  [(MRImage *)self->super._image releaseByUser];
  self->super._image = [v24[5] retainByUser];
  self->_imageIsThumbnail = v13;
  objc_sync_exit(self);
  retainByUser = v24[5];
LABEL_23:
  _Block_object_dispose(&v23, 8);
  return retainByUser;
}

- (void)outputMediaDataWillChange:(id)change
{
  self->_newImageIsAvailable = 1;
  if (self->_movieIsReadyToPlay)
  {
    goto LABEL_7;
  }

  self->_movieIsReadyToPlay = 1;
  time = self->super._time;
  if (time > 0.001)
  {
    avPlayer = self->_avPlayer;
    CMTimeMake(&v8, (time * 1000000.0), 1000000);
    [(AVPlayer *)avPlayer seekToTime:&v8];
    [(AVPlayerItemVideoOutput *)self->_videoOutput requestNotificationOfMediaDataChangeWithAdvanceInterval:0.0];
    self->_newImageIsAvailable = 0;
  }

  [(AVPlayerItem *)self->_playerItem setAudioTimePitchAlgorithm:AVAudioTimePitchAlgorithmVarispeed];
  if (self->_isPlaying)
  {
    LODWORD(v6) = 1.0;
    [(AVPlayer *)self->_avPlayer setRate:v6];
  }

  [(NSConditionLock *)self->_semaphore lock];
  [(NSConditionLock *)self->_semaphore unlockWithCondition:1];
  if (self->_newImageIsAvailable)
  {
LABEL_7:
    [(MRAssetPlayerDelegate *)self->super._delegate imageIsAvailableFromAssetPlayer:self];
    if (!self->_isPlaying)
    {
      LODWORD(v7) = 1.0;
      [(AVPlayer *)self->_avPlayer prerollAtRate:0 completionHandler:v7];
    }
  }
}

- (id)_posterImage:(BOOL)image
{
  imageCopy = image;
  imageManager = [(MRAssetMaster *)self->super._master imageManager];
  if ([(MRAssetMaster *)self->super._master isEmbeddedAsset])
  {
    assetManager = 0;
  }

  else
  {
    assetManager = [(MRContext *)[(MRImageManager *)imageManager baseContext] assetManager];
  }

  path = [(MRAssetMaster *)self->super._master path];
  v8 = imageCopy || !self->super._thumbnailIsOK;
  result = [(MZMediaManagement *)assetManager CGImageForAssetAtPath:path andSize:&self->_orientation orientation:imageCopy thumbnailIfPossible:v8 now:self->super._size.width, self->super._size.height];
  if (result)
  {
    v10 = [[MRTextureSource alloc] initWithCGImage:result textureSize:self->super._size.width | (self->super._size.height << 32) orientation:0 imageManager:imageManager monochromatic:self->super._isMonochromatic];
    v11 = [[MRImage alloc] initWithTextureSource:v10 andSize:self->super._size.width, self->super._size.height];

    return v11;
  }

  return result;
}

@end
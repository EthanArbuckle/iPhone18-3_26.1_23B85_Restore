@interface MRAssetPlayerMovieForExport
- (MRAssetPlayerMovieForExport)initWithPath:(id)path size:(CGSize)size master:(id)master andOptions:(id)options;
- (id)_posterImage:(BOOL)image;
- (id)retainedByUserImageAtTime:(double)time displayLinkTimestamp:(double)timestamp;
- (void)_finishLoadingAsset:(id)asset andVideoTrack:(id)track forTime:(double)time;
- (void)_finishLoadingAsset:(id)asset forTime:(double)time completion:(id)completion;
- (void)dealloc;
- (void)loadForTime:(double)time;
@end

@implementation MRAssetPlayerMovieForExport

- (MRAssetPlayerMovieForExport)initWithPath:(id)path size:(CGSize)size master:(id)master andOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = MRAssetPlayerMovieForExport;
  v6 = [(MRAssetPlayer *)&v8 initWithPath:path size:master master:options andOptions:size.width, size.height];
  if (v6)
  {
    v6->_loadingSemaphore = dispatch_semaphore_create(0);
    v6->_nextSampleBufferTimestamp = -1.0;
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
    CFRelease(self->_cvTextureCache);
    self->_cvTextureCache = 0;
  }

  trackOutput = self->_trackOutput;
  objc_sync_enter(trackOutput);

  self->_trackOutput = 0;
  nextSampleBuffer = self->_nextSampleBuffer;
  if (nextSampleBuffer)
  {
    CFRelease(nextSampleBuffer);
    self->_nextSampleBuffer = 0;
  }

  objc_sync_exit(trackOutput);

  self->_assetReader = 0;
  loadingSemaphore = self->_loadingSemaphore;
  if (loadingSemaphore)
  {
    dispatch_release(loadingSemaphore);
    self->_loadingSemaphore = 0;
  }

  v7.receiver = self;
  v7.super_class = MRAssetPlayerMovieForExport;
  [(MRAssetPlayer *)&v7 dealloc];
}

- (void)loadForTime:(double)time
{
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

  v8 = [(MZMediaManagement *)assetManager avAssetForAssetAtPath:[(MRAssetMaster *)self->super._master path]];
  if (!v8)
  {
    path = [(MRAssetMaster *)self->super._master path];
    if ((isEmbeddedAsset & 1) == 0)
    {
      path = [(MZMediaManagement *)assetManager absolutePathForAssetAtPath:path andSize:self->super._size.width, self->super._size.height];
    }

    if ([(NSString *)path isAbsolutePath])
    {
      v10 = [NSURL fileURLWithPath:path];
    }

    else
    {
      v10 = [NSURL URLWithString:path];
    }

    v8 = [AVURLAsset URLAssetWithURL:v10 options:0];
  }

  v11 = dispatch_semaphore_create(0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_DCFB8;
  v13[3] = &unk_1AB5C8;
  v13[4] = self;
  v13[5] = v8;
  *&v13[7] = time;
  v13[6] = v11;
  [(AVURLAsset *)v8 loadValuesAsynchronouslyForKeys:&off_1BC048 completionHandler:v13];
  v12 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v11, v12);
  dispatch_release(v11);
}

- (void)_finishLoadingAsset:(id)asset forTime:(double)time completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DD0F8;
  v5[3] = &unk_1AB618;
  v5[4] = self;
  v5[5] = asset;
  *&v5[8] = time;
  v5[7] = completion;
  [objc_msgSend(objc_msgSend(asset tracksWithMediaType:{AVMediaTypeVideo), "lastObject"), "loadValuesAsynchronouslyForKeys:completionHandler:", &off_1BC060, v5}];
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

  v28 = kCVOpenGLESTextureCacheMaximumTextureAgeKey;
  v29 = &off_1BC098;
  v11 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v12 = [[EAGLContext alloc] initWithAPI:2 sharegroup:{-[EAGLContext sharegroup](-[MRImageManager imageGLContext](-[MRAssetMaster imageManager](self->super._master, "imageManager"), "imageGLContext"), "sharegroup")}];
  self->_textureCacheContext = v12;
  CVOpenGLESTextureCacheCreate(kCFAllocatorDefault, v11, v12, 0, &self->_cvTextureCache);

  v27[0] = &__kCFBooleanTrue;
  v26[0] = kCVPixelFormatOpenGLESCompatibility;
  v26[1] = kCVPixelBufferPixelFormatTypeKey;
  v27[1] = [NSNumber numberWithUnsignedInteger:1111970369];
  v26[2] = kCVPixelBufferWidthKey;
  v27[2] = [NSNumber numberWithUnsignedInteger:self->super._size.width];
  v26[3] = kCVPixelBufferHeightKey;
  v27[3] = [NSNumber numberWithUnsignedInteger:self->super._size.height];
  v13 = [[AVAssetReaderTrackOutput alloc] initWithTrack:trackCopy outputSettings:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v27, v26, 4)}];
  self->_trackOutput = v13;
  [(AVAssetReaderTrackOutput *)v13 setAlwaysCopiesSampleData:0];
  v14 = [[AVAssetReader alloc] initWithAsset:assetCopy error:0];
  self->_assetReader = v14;
  [(AVAssetReader *)v14 addOutput:self->_trackOutput];
  [(AVAssetReader *)self->_assetReader startReading];
  if (trackCopy)
  {
    if (*&v23 == 1.0)
    {
      v15 = *(&v24 + 1) == 1.0;
      v16 = 4;
    }

    else
    {
      if (*&v23 != -1.0)
      {
        if (*(&v23 + 1) == 1.0)
        {
          v17 = *&v24 == 1.0;
          v16 = 6;
          v18 = 5;
        }

        else
        {
          if (*(&v23 + 1) != -1.0)
          {
            goto LABEL_17;
          }

          v17 = *&v24 == 1.0;
          v16 = 7;
          v18 = 8;
        }

        if (v17)
        {
          v16 = v18;
        }

        goto LABEL_16;
      }

      v15 = *(&v24 + 1) == 2.0;
      v16 = 3;
    }

    if (v15)
    {
      v16 = 1;
    }

LABEL_16:
    self->_orientation = v16;
  }

LABEL_17:
  dispatch_semaphore_signal(self->_loadingSemaphore);
}

- (id)retainedByUserImageAtTime:(double)time displayLinkTimestamp:(double)timestamp
{
  loadingSemaphore = self->_loadingSemaphore;
  if (loadingSemaphore)
  {
    dispatch_semaphore_wait(loadingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(self->_loadingSemaphore);
    self->_loadingSemaphore = 0;
  }

  if ([(AVAssetReader *)self->_assetReader status:time]== &dword_0 + 1)
  {
    trackOutput = self->_trackOutput;
    objc_sync_enter(trackOutput);
    if (self->_nextSampleBufferTimestamp <= time)
    {
      nextSampleBuffer = 0;
      while (1)
      {
        if (nextSampleBuffer)
        {
          CFRelease(nextSampleBuffer);
        }

        nextSampleBuffer = self->_nextSampleBuffer;
        if ([(AVAssetReader *)self->_assetReader status]!= &dword_0 + 1)
        {
          break;
        }

        copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)self->_trackOutput copyNextSampleBuffer];
        self->_nextSampleBuffer = copyNextSampleBuffer;
        if (!copyNextSampleBuffer)
        {
          goto LABEL_18;
        }

        memset(&timingInfoOut, 0, sizeof(timingInfoOut));
        SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(copyNextSampleBuffer, 0, &timingInfoOut);
        if (SampleTimingInfo || timingInfoOut.presentationTimeStamp.timescale < 1)
        {
          NSLog(@"CMSampleBufferGetSampleTimingInfo() returned error %d for valid sample %@", SampleTimingInfo, self->_nextSampleBuffer);
          v11 = 1.0e100;
        }

        else
        {
          v11 = timingInfoOut.presentationTimeStamp.value / timingInfoOut.presentationTimeStamp.timescale;
        }

        self->_nextSampleBufferTimestamp = v11;
        if (v11 > time)
        {
          goto LABEL_19;
        }
      }

      self->_nextSampleBuffer = 0;
LABEL_18:
      self->_nextSampleBufferTimestamp = 1.0e100;
LABEL_19:
      objc_sync_exit(trackOutput);
      if (nextSampleBuffer)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(nextSampleBuffer);
        if (ImageBuffer)
        {
          v13 = ImageBuffer;
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(v13);
          CVOpenGLESTextureCacheFlush(self->_cvTextureCache, 0);
          timingInfoOut.duration.value = 0;
          CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_cvTextureCache, v13, 0, 0xDE1u, 6408, Width, Height, 0x80E1u, 0x1401u, 0, &timingInfoOut);
          v16 = [MRTextureSource alloc];
          v17 = [(MRTextureSource *)v16 initWithCVTexture:timingInfoOut.duration.value size:Width | (Height << 32) orientation:self->_orientation imageManager:[(MRAssetMaster *)self->super._master imageManager] monochromatic:0];
          CVBufferRelease(timingInfoOut.duration.value);
          v18 = [[MRImage alloc] initWithTextureSource:v17 andSize:self->super._size.width, self->super._size.height];

          CFRelease(nextSampleBuffer);
          if (v18)
          {
            goto LABEL_29;
          }
        }

        else
        {
          CFRelease(nextSampleBuffer);
        }
      }
    }

    else
    {
      objc_sync_exit(trackOutput);
    }
  }

  image = self->super._image;
  if (!image)
  {
    retainedByUserBlackImage = [-[MRAssetMaster thumbnailForFlagsMonochromatic:mipmap:powerOfTwo:](self->super._master thumbnailForFlagsMonochromatic:self->super._isMonochromatic mipmap:self->super._generatesMipmap powerOfTwo:{self->super._usesPowerOfTwo), "retainByUser"}];
    if (!retainedByUserBlackImage)
    {
      retainedByUserBlackImage = [(MRContext *)[(MRImageManager *)[(MRAssetMaster *)self->super._master imageManager] baseContext] retainedByUserBlackImage];
      if (!retainedByUserBlackImage)
      {
        image = self->super._image;
        return [(MRImage *)image retainByUser];
      }
    }

    v18 = retainedByUserBlackImage;
LABEL_29:
    objc_sync_enter(self);
    [(MRImage *)self->super._image releaseByUser];
    self->super._image = [(MRImage *)v18 retainByUser];
    objc_sync_exit(self);
    return v18;
  }

  return [(MRImage *)image retainByUser];
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
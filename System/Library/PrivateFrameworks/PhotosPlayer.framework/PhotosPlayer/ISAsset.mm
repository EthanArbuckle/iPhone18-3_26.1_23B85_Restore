@interface ISAsset
+ (id)assetForURL:(id)l error:(id *)error;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoCMTime;
- (ISAsset)initWithVideoAsset:(id)asset photo:(CGImage *)photo photoTime:(double)time photoEXIFOrientation:(int)orientation options:(unint64_t)options;
- (id)description;
- (void)dealloc;
- (void)resetAVObjects;
@end

@implementation ISAsset

- (void)resetAVObjects
{
  videoAsset = [(ISAsset *)self videoAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [videoAsset URL];
    v4 = [MEMORY[0x277CE6650] assetWithURL:v3];
    videoAsset = self->_videoAsset;
    self->_videoAsset = v4;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoCMTime
{
  [(ISAsset *)self photoTime];

  return CMTimeMakeWithSeconds(retstr, v4, 1000);
}

- (ISAsset)initWithVideoAsset:(id)asset photo:(CGImage *)photo photoTime:(double)time photoEXIFOrientation:(int)orientation options:(unint64_t)options
{
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = ISAsset;
  v13 = [(ISAsset *)&v17 init];
  if (v13)
  {
    v14 = [assetCopy copy];
    videoAsset = v13->_videoAsset;
    v13->_videoAsset = v14;

    v13->_photo = CGImageRetain(photo);
    v13->_photoTime = time;
    v13->_photoEXIFOrientation = orientation;
    v13->_options = options;
  }

  return v13;
}

- (void)dealloc
{
  CGImageRelease(self->_photo);
  v3 = +[ISDeferredDealloc sharedInstance];
  [v3 _performDeferredDealloc:self->_videoAsset];

  v4.receiver = self;
  v4.super_class = ISAsset;
  [(ISAsset *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = ISAsset;
  v4 = [(ISAsset *)&v9 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@"\n\tPhoto: %@", -[ISAsset photo](self, "photo")];
  videoAsset = [(ISAsset *)self videoAsset];
  [v5 appendFormat:@"\n\tVideo: %@", videoAsset];

  v7 = [v5 copy];

  return v7;
}

+ (id)assetForURL:(id)l error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  if (l)
  {
    v6 = MEMORY[0x277D3B520];
    lCopy = l;
    v8 = [[v6 alloc] initWithBundleAtURL:lCopy];

    imagePath = [v8 imagePath];
    videoPath = [v8 videoPath];
    if (v8)
    {
      [v8 imageDisplayTime];
      flags = v24.flags;
      epoch = v24.epoch;
    }

    else
    {
      epoch = 0;
      flags = 0;
      memset(&v24, 0, sizeof(v24));
    }

    value = v24.value;
    timescale = v24.timescale;
    if (imagePath)
    {
      v14 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:imagePath];
      cGImage = [v14 CGImage];
      if (cGImage)
      {
        v16 = cGImage;
        if (videoPath)
        {
          v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:videoPath];
          v18 = [MEMORY[0x277CE6650] assetWithURL:v17];
          Seconds = 0.0;
          if (flags)
          {
            v24.value = value;
            v24.timescale = timescale;
            v24.flags = flags;
            v24.epoch = epoch;
            Seconds = CMTimeGetSeconds(&v24);
          }
        }

        else
        {
          v18 = 0;
          Seconds = 0.0;
        }

        imageOrientation = [v14 imageOrientation];
        if ((imageOrientation - 1) > 6)
        {
          v21 = 1;
        }

        else
        {
          v21 = qword_25E6986A8[imageOrientation - 1];
        }

        v13 = [[self alloc] initWithVideoAsset:v18 photo:v16 photoTime:v21 photoEXIFOrientation:Seconds];
      }

      else
      {
        v13 = 0;
        if (error)
        {
          *error = 0;
        }
      }
    }

    else
    {
      v13 = 0;
      if (error)
      {
        *error = 0;
      }
    }
  }

  else
  {
    v13 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

@end
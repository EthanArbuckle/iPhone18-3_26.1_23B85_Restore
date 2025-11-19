@interface ISAsset
+ (id)assetForURL:(id)a3 error:(id *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)photoCMTime;
- (ISAsset)initWithVideoAsset:(id)a3 photo:(CGImage *)a4 photoTime:(double)a5 photoEXIFOrientation:(int)a6 options:(unint64_t)a7;
- (id)description;
- (void)dealloc;
- (void)resetAVObjects;
@end

@implementation ISAsset

- (void)resetAVObjects
{
  v6 = [(ISAsset *)self videoAsset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 URL];
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

- (ISAsset)initWithVideoAsset:(id)a3 photo:(CGImage *)a4 photoTime:(double)a5 photoEXIFOrientation:(int)a6 options:(unint64_t)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = ISAsset;
  v13 = [(ISAsset *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    videoAsset = v13->_videoAsset;
    v13->_videoAsset = v14;

    v13->_photo = CGImageRetain(a4);
    v13->_photoTime = a5;
    v13->_photoEXIFOrientation = a6;
    v13->_options = a7;
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
  v6 = [(ISAsset *)self videoAsset];
  [v5 appendFormat:@"\n\tVideo: %@", v6];

  v7 = [v5 copy];

  return v7;
}

+ (id)assetForURL:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = MEMORY[0x277D3B520];
    v7 = a3;
    v8 = [[v6 alloc] initWithBundleAtURL:v7];

    v9 = [v8 imagePath];
    v10 = [v8 videoPath];
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
    if (v9)
    {
      v14 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v9];
      v15 = [v14 CGImage];
      if (v15)
      {
        v16 = v15;
        if (v10)
        {
          v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
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

        v20 = [v14 imageOrientation];
        if ((v20 - 1) > 6)
        {
          v21 = 1;
        }

        else
        {
          v21 = qword_25E6986A8[v20 - 1];
        }

        v13 = [[a1 alloc] initWithVideoAsset:v18 photo:v16 photoTime:v21 photoEXIFOrientation:Seconds];
      }

      else
      {
        v13 = 0;
        if (a4)
        {
          *a4 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
      if (a4)
      {
        *a4 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

@end
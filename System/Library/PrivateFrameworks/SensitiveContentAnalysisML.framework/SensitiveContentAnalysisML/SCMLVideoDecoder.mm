@interface SCMLVideoDecoder
- (BOOL)startDecodingVideoURL:(id)l error:(id *)error;
- (BOOL)useKeyFrame;
- (SCMLVideoDecoder)initWithConfig:(id)config;
- (id)nextFrameWithError:(id *)error;
- (unint64_t)maxNumFrames;
- (void)reset;
@end

@implementation SCMLVideoDecoder

- (SCMLVideoDecoder)initWithConfig:(id)config
{
  configCopy = config;
  v10.receiver = self;
  v10.super_class = SCMLVideoDecoder;
  v6 = [(SCMLVideoDecoder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    frameLimit = [configCopy frameLimit];
    v7->_frameLimit = [frameLimit unsignedIntValue];

    v7->_framesPerSync = [configCopy framesPerSync];
  }

  return v7;
}

- (void)reset
{
  [(SCMLVideoDecoder *)self setAssetReader:0];
  [(SCMLVideoDecoder *)self setAssetReaderTrack:0];
  [(SCMLVideoDecoder *)self setCurrentFrameIndex:0];
  [(SCMLVideoDecoder *)self setDurationInSeconds:0.0];

  [(SCMLVideoDecoder *)self setTotalFrames:0.0];
}

- (unint64_t)maxNumFrames
{
  if ([(SCMLVideoDecoder *)self frameLimit]&& (v3 = [(SCMLVideoDecoder *)self frameLimit], [(SCMLVideoDecoder *)self totalFrames], v4 >= v3))
  {

    return [(SCMLVideoDecoder *)self frameLimit];
  }

  else
  {
    [(SCMLVideoDecoder *)self totalFrames];
    return v5;
  }
}

- (BOOL)useKeyFrame
{
  config = [(SCMLVideoDecoder *)self config];
  v3 = [config framesPerSync] != 0;

  return v3;
}

- (BOOL)startDecodingVideoURL:(id)l error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  [(SCMLVideoDecoder *)self reset];
  v7 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:lCopy options:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 tracksWithMediaType:*MEMORY[0x1E6987608]];
    if ([v9 count])
    {
      memset(&preferredTimescale, 0, sizeof(preferredTimescale));
      [v8 duration];
      time = preferredTimescale;
      [(SCMLVideoDecoder *)self setDurationInSeconds:CMTimeGetSeconds(&time)];
      v51 = 0;
      v10 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v8 error:&v51];
      lCopy = v51;
      if (lCopy)
      {
        if (!error)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      [(SCMLVideoDecoder *)self setAssetReader:v10];
      v16 = [v9 objectAtIndexedSubscript:0];
      [v16 nominalFrameRate];
      v18 = v17;
      [(SCMLVideoDecoder *)self durationInSeconds];
      [(SCMLVideoDecoder *)self setTotalFrames:floor(v19 * v18)];
      time = preferredTimescale;
      if ([(SCMLVideoDecoder *)self frameLimit])
      {
        if ([(SCMLVideoDecoder *)self frameLimit]>= 2)
        {
          maxNumFrames = [(SCMLVideoDecoder *)self maxNumFrames];
          if ([(SCMLVideoDecoder *)self framesPerSync]>= 2)
          {
            maxNumFrames = vcvtpd_u64_f64(maxNumFrames / [(SCMLVideoDecoder *)self framesPerSync]);
          }

          [(SCMLVideoDecoder *)self durationInSeconds];
          CMTimeMakeWithSeconds(&time, v21 / ((maxNumFrames - 1) + 0.1), preferredTimescale.timescale);
        }
      }

      else
      {
        CMTimeMake(&time, 1, preferredTimescale.timescale);
      }

      v22 = *MEMORY[0x1E695E480];
      v50 = time;
      v23 = CMTimeCopyAsDictionary(&v50, v22);
      v24 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{&unk_1F37519A8, *MEMORY[0x1E6966130], &unk_1F37519C0, *MEMORY[0x1E6966208], &unk_1F37519C0, *MEMORY[0x1E69660B8], 0}];
      v49 = v24;
      if ([(SCMLVideoDecoder *)self useKeyFrame])
      {
        v25 = MEMORY[0x1E696AD98];
        config = [(SCMLVideoDecoder *)self config];
        v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(config, "framesPerSync")}];
        [v49 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6987D38]];

        v24 = v49;
        v28 = MEMORY[0x1E6987C68];
      }

      else
      {
        if (![(SCMLVideoDecoder *)self frameLimit])
        {
          goto LABEL_22;
        }

        frameLimit = [(SCMLVideoDecoder *)self frameLimit];
        [(SCMLVideoDecoder *)self totalFrames];
        if (v30 <= frameLimit)
        {
          goto LABEL_22;
        }

        [v24 setObject:*MEMORY[0x1E6987D50] forKeyedSubscript:*MEMORY[0x1E6987D48]];
        v28 = MEMORY[0x1E6987D88];
      }

      [v24 setObject:v23 forKeyedSubscript:*v28];
LABEL_22:
      v31 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v16 outputSettings:v24];
      [(SCMLVideoDecoder *)self setAssetReaderTrack:v31];

      assetReaderTrack = [(SCMLVideoDecoder *)self assetReaderTrack];
      [assetReaderTrack setAlwaysCopiesSampleData:0];

      assetReaderTrack2 = [(SCMLVideoDecoder *)self assetReaderTrack];
      [assetReaderTrack2 setAppliesPreferredTrackTransform:1];

      assetReader = [(SCMLVideoDecoder *)self assetReader];
      assetReaderTrack3 = [(SCMLVideoDecoder *)self assetReaderTrack];
      [assetReader addOutput:assetReaderTrack3];

      assetReader2 = [(SCMLVideoDecoder *)self assetReader];
      LOBYTE(assetReaderTrack3) = [assetReader2 startReading];

      if (assetReaderTrack3)
      {
        lCopy = 0;
      }

      else
      {
        v46 = MEMORY[0x1E696ABC0];
        v37 = SCMLErrorDomain;
        [(SCMLVideoDecoder *)self assetReader];
        v38 = v47 = v16;
        [v38 error];
        v39 = v48 = v10;
        [v39 userInfo];
        v41 = v40 = v23;
        lCopy = [v46 errorWithDomain:v37 code:13 userInfo:v41];

        v23 = v40;
        v10 = v48;

        v16 = v47;
      }

      if (!error)
      {
        goto LABEL_28;
      }

LABEL_26:
      if (lCopy)
      {
        v42 = lCopy;
        v15 = 0;
        *error = lCopy;
LABEL_31:

        goto LABEL_32;
      }

LABEL_28:
      if (lCopy)
      {
        v15 = 0;
      }

      else
      {
        assetReader3 = [(SCMLVideoDecoder *)self assetReader];
        v15 = assetReader3 != 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v9 = 0;
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = SCMLErrorDomain;
    v54 = *MEMORY[0x1E696A578];
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load video at %@", lCopy];
    v55[0] = lCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    *error = [v12 errorWithDomain:v13 code:13 userInfo:v14];

    v15 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v15 = 0;
LABEL_33:

  v44 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)nextFrameWithError:(id *)error
{
  maxNumFrames = [(SCMLVideoDecoder *)self maxNumFrames];
  if ([(SCMLVideoDecoder *)self currentFrameIndex]== maxNumFrames)
  {
    goto LABEL_11;
  }

  assetReaderTrack = [(SCMLVideoDecoder *)self assetReaderTrack];
  copyNextSampleBuffer = [assetReaderTrack copyNextSampleBuffer];

  if (!copyNextSampleBuffer)
  {
    assetReader = [(SCMLVideoDecoder *)self assetReader];
    status = [assetReader status];

    v8 = 0;
    if (status == 2 || !error)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = SCMLErrorDomain;
    assetReader2 = [(SCMLVideoDecoder *)self assetReader];
    error = [assetReader2 error];
    userInfo = [error userInfo];
    *error = [v11 errorWithDomain:v12 code:13 userInfo:userInfo];

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (!CMSampleBufferGetNumSamples(copyNextSampleBuffer) || !CMSampleBufferGetImageBuffer(copyNextSampleBuffer))
  {
    CFRelease(copyNextSampleBuffer);
    goto LABEL_11;
  }

  v8 = [[SCMLVideoFrame alloc] initWithFrameBuffer:copyNextSampleBuffer frameIndex:[(SCMLVideoDecoder *)self currentFrameIndex]];
  CFRelease(copyNextSampleBuffer);
  if (v8)
  {
    [(SCMLVideoDecoder *)self setCurrentFrameIndex:[(SCMLVideoDecoder *)self currentFrameIndex]+ 1];
  }

LABEL_12:

  return v8;
}

@end
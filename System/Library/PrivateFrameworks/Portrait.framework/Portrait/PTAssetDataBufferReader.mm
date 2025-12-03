@interface PTAssetDataBufferReader
- (BOOL)_startReadingMovieWithError:(id *)error;
- (BOOL)_startReadingSequenceWithError:(id *)error;
- (BOOL)startReadingWithError:(id *)error;
- (PTAssetDataBufferReader)initWithURL:(id)l;
- (__CVBuffer)_copyPixelBufferFromURL:(id)l;
- (id)_copyNextFrame_movie;
- (id)_copyNextFrame_sequence;
- (id)_frameInstance;
- (id)copyNextFrame;
- (void)_frameInstance;
@end

@implementation PTAssetDataBufferReader

- (PTAssetDataBufferReader)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PTAssetDataBufferReader;
  v5 = [(PTAssetDataBufferReader *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    dataURL = v5->_dataURL;
    v5->_dataURL = v6;
  }

  return v5;
}

- (BOOL)startReadingWithError:(id *)error
{
  pathExtension = [(NSURL *)self->_dataURL pathExtension];
  _movieExtension = [objc_opt_class() _movieExtension];
  v7 = [pathExtension isEqualToString:_movieExtension];

  dataURL = self->_dataURL;
  if (v7)
  {
    v9 = [(NSURL *)dataURL copy];
    movieURL = self->_movieURL;
    self->_movieURL = v9;

    return [(PTAssetDataBufferReader *)self _startReadingMovieWithError:error];
  }

  else
  {
    pathExtension2 = [(NSURL *)dataURL pathExtension];
    _sequenceExtension = [objc_opt_class() _sequenceExtension];
    v14 = [pathExtension2 isEqualToString:_sequenceExtension];

    v15 = self->_dataURL;
    if (v14)
    {
      v16 = [(NSURL *)self->_dataURL copy];
      sequenceURL = self->_sequenceURL;
      self->_sequenceURL = v16;

      return [(PTAssetDataBufferReader *)self _startReadingSequenceWithError:error];
    }

    else
    {
      _movieFilename = [objc_opt_class() _movieFilename];
      v19 = [(NSURL *)v15 URLByAppendingPathComponent:_movieFilename];

      if ([v19 checkResourceIsReachableAndReturnError:0])
      {
        objc_storeStrong(&self->_movieURL, v19);
        v20 = [(PTAssetDataBufferReader *)self _startReadingMovieWithError:error];
      }

      else
      {
        v21 = self->_dataURL;
        _sequenceDirectoryName = [objc_opt_class() _sequenceDirectoryName];
        v23 = [(NSURL *)v21 URLByAppendingPathComponent:_sequenceDirectoryName];

        if ([v23 checkResourceIsReachableAndReturnError:0])
        {
          objc_storeStrong(&self->_sequenceURL, v23);
          v20 = [(PTAssetDataBufferReader *)self _startReadingSequenceWithError:error];
        }

        else
        {
          _ErrorForDataBufferNotFoundAtURL(self->_dataURL);
          *error = v20 = 0;
        }
      }

      return v20;
    }
  }
}

- (BOOL)_startReadingSequenceWithError:(id *)error
{
  sequenceURL = self->_sequenceURL;
  if (!sequenceURL)
  {
    goto LABEL_11;
  }

  v6 = sequenceURL;
  v34 = 0;
  if (!-[NSURL getResourceValue:forKey:error:](v6, "getResourceValue:forKey:error:", &v34, *MEMORY[0x277CBE868], 0) || ([v34 BOOLValue] & 1) == 0)
  {
    *error = _ErrorForDataBufferNotFoundAtURL(v6);

    dataURL = self->_sequenceURL;
    if (dataURL)
    {
LABEL_12:
      v23 = _ErrorForDataBufferNotFoundAtURL(dataURL);
      v24 = v23;
      result = 0;
      *error = v23;
      return result;
    }

LABEL_11:
    dataURL = self->_dataURL;
    goto LABEL_12;
  }

  v7 = self->_sequenceURL;
  _sequenceInfoFilename = [objc_opt_class() _sequenceInfoFilename];
  v9 = [(NSURL *)v7 URLByAppendingPathComponent:_sequenceInfoFilename];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v10];
  [v11 open];
  v34 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v11 options:0 error:&v34];
  v13 = v34;
  if (v13)
  {
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(PTAssetDataBufferReader *)v10 _startReadingSequenceWithError:v13, v14];
    }
  }

  v15 = [v12 objectForKeyedSubscript:@"filename-format"];
  filenameFormat = self->_filenameFormat;
  self->_filenameFormat = v15;

  v17 = [v12 objectForKeyedSubscript:@"vector3-format"];
  self->_isVector3Format = [v17 BOOLValue];

  v18 = [v12 objectForKeyedSubscript:@"pixel-format"];

  if (v18)
  {
    v19 = [v12 objectForKeyedSubscript:@"pixel-format"];
    v20 = [v19 dataUsingEncoding:4 allowLossyConversion:1];
    LODWORD(v34) = 0;
    [v20 getBytes:&v34 length:4];
    v21 = bswap32(v34);

    self->_pixelFormat = v21;
  }

  else
  {
    pathExtension = [(NSString *)self->_filenameFormat pathExtension];
    v27 = [&unk_2837F3A28 objectForKeyedSubscript:pathExtension];
    unsignedIntegerValue = [v27 unsignedIntegerValue];

    self->_pixelFormat = unsignedIntegerValue;
  }

  v29 = [v12 objectForKeyedSubscript:@"width"];
  self->_width = [v29 unsignedIntegerValue];

  v30 = [v12 objectForKeyedSubscript:@"height"];
  self->_height = [v30 unsignedIntegerValue];

  v31 = [v12 objectForKeyedSubscript:@"frames-per-second"];
  [v31 floatValue];
  if (v32 == 0.0)
  {
    v32 = 30.0;
  }

  self->_framesPerSecond = v32;

  v33 = [v12 objectForKeyedSubscript:@"frame-start"];
  self->_nextIndex = [v33 unsignedIntegerValue];

  return 1;
}

- (BOOL)_startReadingMovieWithError:(id *)error
{
  if (self->_movieURL)
  {
    v5 = [MEMORY[0x277CE63D8] assetWithURL:?];
    v17 = 0;
    v6 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v5 error:&v17];
    v7 = v17;
    assetReader = self->_assetReader;
    self->_assetReader = v6;

    if (self->_assetReader)
    {
      v9 = objc_alloc(MEMORY[0x277CE6430]);
      tracks = [v5 tracks];
      firstObject = [tracks firstObject];
      v12 = [v9 initWithTrack:firstObject outputSettings:0];
      disparityTrackOutput = self->_disparityTrackOutput;
      self->_disparityTrackOutput = v12;

      [(AVAssetReaderTrackOutput *)self->_disparityTrackOutput setAlwaysCopiesSampleData:1];
      [(AVAssetReader *)self->_assetReader addOutput:self->_disparityTrackOutput];
      if ([(AVAssetReader *)self->_assetReader startReading])
      {
        self->_nextIndex = 0;
        v14 = 1;
LABEL_8:

        return v14;
      }

      v15 = self->_assetReader;
      self->_assetReader = 0;
    }

    v14 = 0;
    goto LABEL_8;
  }

  _ErrorForDataBufferNotFoundAtURL(self->_dataURL);
  *error = v14 = 0;
  return v14;
}

- (__CVBuffer)_copyPixelBufferFromURL:(id)l
{
  v41[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  pixelBufferOut = 0;
  v5 = *MEMORY[0x277CBECE8];
  width = self->_width;
  height = self->_height;
  pixelFormat = self->_pixelFormat;
  v40 = *MEMORY[0x277CC4DE8];
  v41[0] = MEMORY[0x277CBEC10];
  CVPixelBufferCreate(v5, width, height, pixelFormat, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1], &pixelBufferOut);
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    goto LABEL_37;
  }

  v10 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    goto LABEL_37;
  }

  v11 = fileSystemRepresentation;
  isVector3Format = self->_isVector3Format;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
  v14 = CVPixelBufferGetWidth(v10);
  v15 = CVPixelBufferGetHeight(v10);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v10);
  CVPixelBufferLockBaseAddress(v10, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v10);
  v18 = BaseAddress;
  if (PixelFormatType <= 1380410944)
  {
    if (PixelFormatType == 1278226534)
    {
      v19 = 4;
      goto LABEL_20;
    }

    if (PixelFormatType == 1278226536)
    {
      v19 = 2;
LABEL_20:
      v27 = BytesPerRow;
      v28 = v14;
      v29 = v15;
      v30 = 1;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (PixelFormatType == 1380410945)
  {
    if (!isVector3Format)
    {
      DataVec = LoadDataVec(BaseAddress, 4uLL, BytesPerRow, v14, v15, 4, v11);
      CVPixelBufferUnlockBaseAddress(v10, 1uLL);
      if (DataVec)
      {
        goto LABEL_34;
      }

LABEL_37:
      CVPixelBufferRelease(pixelBufferOut);
      v37 = 0;
      goto LABEL_38;
    }

    v20 = fopen(v11, "r");
    if (v20)
    {
      v21 = v20;
      v22 = malloc_type_calloc(3 * v14, 4uLL, 0x100004052888210uLL);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          fread(v22, 4uLL, 3 * v14, v21);
          if (v14)
          {
            v33 = &v18[i * BytesPerRow];
            v34 = v14;
            v35 = v22;
            do
            {
              *v33 = *v35;
              *(v33 + 1) = v35[1];
              *(v33 + 2) = v35[2];
              *(v33 + 3) = 0;
              v33 += 16;
              v35 += 3;
              --v34;
            }

            while (v34);
          }
        }
      }

      goto LABEL_31;
    }

LABEL_35:
    fclose(v20);
    goto LABEL_36;
  }

  if (PixelFormatType != 1380411457)
  {
LABEL_18:
    fprintf(*MEMORY[0x277D85DF8], "Unknown data buffer pixel format: 0x%08x\n", PixelFormatType);
LABEL_36:
    CVPixelBufferUnlockBaseAddress(v10, 1uLL);
    goto LABEL_37;
  }

  if (isVector3Format)
  {
    v20 = fopen(v11, "r");
    if (v20)
    {
      v21 = v20;
      v22 = malloc_type_calloc(3 * v14, 2uLL, 0x1000040BDFB0063uLL);
      if (v15)
      {
        for (j = 0; j != v15; ++j)
        {
          fread(v22, 2uLL, 3 * v14, v21);
          if (v14)
          {
            v24 = &v18[j * BytesPerRow];
            v25 = v14;
            v26 = v22;
            do
            {
              *v24 = *v26;
              *(v24 + 1) = v26[1];
              *(v24 + 2) = v26[2];
              *(v24 + 3) = 0;
              v24 += 8;
              v26 += 3;
              --v25;
            }

            while (v25);
          }
        }
      }

LABEL_31:
      free(v22);
      fclose(v21);
      CVPixelBufferUnlockBaseAddress(v10, 1uLL);
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v19 = 2;
  v27 = BytesPerRow;
  v28 = v14;
  v29 = v15;
  v30 = 4;
LABEL_21:
  v31 = LoadDataVec(BaseAddress, v19, v27, v28, v29, v30, v11);
  CVPixelBufferUnlockBaseAddress(v10, 1uLL);
  if (!v31)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = pixelBufferOut;
LABEL_38:

  return v37;
}

- (id)_frameInstance
{
  v3 = objc_alloc_init([objc_opt_class() frameClass]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PTAssetDataBufferReader *)self _frameInstance];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_copyNextFrame_sequence
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:self->_filenameFormat, self->_nextIndex];
  v4 = [(NSURL *)self->_sequenceURL URLByAppendingPathComponent:v3];
  _frameInstance = [(PTAssetDataBufferReader *)self _frameInstance];
  [_frameInstance setIndex:self->_nextIndex];
  CMTimeMake(&v9, self->_nextIndex, self->_framesPerSecond);
  v8 = v9;
  [_frameInstance setTime:&v8];
  [_frameInstance setDataBuffer:{-[PTAssetDataBufferReader _copyPixelBufferFromURL:](self, "_copyPixelBufferFromURL:", v4)}];
  if ([_frameInstance dataBuffer])
  {
    ++self->_nextIndex;
    v6 = _frameInstance;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_copyNextFrame_movie
{
  copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)self->_disparityTrackOutput copyNextSampleBuffer];
  ImageBuffer = CMSampleBufferGetImageBuffer(copyNextSampleBuffer);
  if (!copyNextSampleBuffer)
  {
    return 0;
  }

  v5 = ImageBuffer;
  if (!ImageBuffer)
  {
    if (self->_nextIndex || (CFRelease(copyNextSampleBuffer), copyNextSampleBuffer = [(AVAssetReaderTrackOutput *)self->_disparityTrackOutput copyNextSampleBuffer], (v5 = CMSampleBufferGetImageBuffer(copyNextSampleBuffer)) == 0))
    {
      CFRelease(copyNextSampleBuffer);
      return 0;
    }
  }

  v6 = objc_alloc_init([objc_opt_class() frameClass]);
  ++self->_nextIndex;
  [v6 setIndex:?];
  CMSampleBufferGetPresentationTimeStamp(&v9, copyNextSampleBuffer);
  v8 = v9;
  [v6 setTime:&v8];
  [v6 setDataBuffer:CVPixelBufferRetain(v5)];
  CFRelease(copyNextSampleBuffer);
  return v6;
}

- (id)copyNextFrame
{
  v3 = objc_autoreleasePoolPush();
  if (self->_sequenceURL)
  {
    _copyNextFrame_sequence = [(PTAssetDataBufferReader *)self _copyNextFrame_sequence];
LABEL_5:
    v5 = _copyNextFrame_sequence;
    goto LABEL_6;
  }

  if (self->_assetReader)
  {
    _copyNextFrame_sequence = [(PTAssetDataBufferReader *)self _copyNextFrame_movie];
    goto LABEL_5;
  }

  v7 = _PTLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(PTAssetDataBufferReader *)v7 copyNextFrame];
  }

  v5 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)_startReadingSequenceWithError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "error reading %@: %@", &v3, 0x16u);
}

- (void)_frameInstance
{
  v11 = *MEMORY[0x277D85DE8];
  frameClass = [objc_opt_class() frameClass];
  v4 = NSStringFromClass(frameClass);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "frameClass %@ is not a subclass of %@", &v7, 0x16u);
}

@end
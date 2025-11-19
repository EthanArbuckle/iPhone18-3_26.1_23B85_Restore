@interface BasicMOVReader
- (BasicMOVReader)initWithFileURL:(id)a3 error:(id *)a4;
- (__CVBuffer)getNextFrameTimestamp:(id *)a3 error:(id *)a4;
@end

@implementation BasicMOVReader

- (BasicMOVReader)initWithFileURL:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = BasicMOVReader;
  v6 = [(BasicMOVReader *)&v12 init];
  if (v6)
  {
    v7 = [AVAsset assetWithURL:a3];
    v8 = [AVAssetReader assetReaderWithAsset:v7 error:a4];
    v6->_reader = v8;
    if (v8)
    {
      v9 = [(NSArray *)[(AVAsset *)v7 tracksWithMediaType:AVMediaTypeVideo] objectAtIndex:0];
      v13 = kCVPixelBufferPixelFormatTypeKey;
      v14 = [NSNumber numberWithInt:875704422];
      v10 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:v9 outputSettings:[NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]];
      v6->_output = v10;
      if ([(AVAssetReader *)v6->_reader canAddOutput:v10])
      {
        [(AVAssetReader *)v6->_reader addOutput:v6->_output];
      }

      [(AVAssetReader *)v6->_reader startReading];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (__CVBuffer)getNextFrameTimestamp:(id *)a3 error:(id *)a4
{
  v7 = [(AVAssetReaderTrackOutput *)self->_output copyNextSampleBuffer];
  if (!v7)
  {
    if ([(AVAssetReader *)self->_reader status]!= 3)
    {
      v10 = 0;
      self->_hasReachedEndOfStream = 1;
      return v10;
    }

    if (a4)
    {
      v11 = [(NSError *)[(AVAssetReader *)self->_reader error] copy];
LABEL_11:
      v10 = 0;
      *a4 = v11;
      return v10;
    }

    return 0;
  }

  v8 = v7;
  ImageBuffer = CMSampleBufferGetImageBuffer(v7);
  if (!ImageBuffer)
  {
    if (a4)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Sample buffer does not contain pixel data.";
      v11 = [NSError errorWithDomain:@"com.apple.videoeng.basicmovreader" code:1 userInfo:[NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1]];
      goto LABEL_11;
    }

    return 0;
  }

  v10 = ImageBuffer;
  if (a3)
  {
    CMSampleBufferGetPresentationTimeStamp(&v13, v8);
    *a3 = v13;
  }

  CVPixelBufferRetain(v10);
  CFRelease(v8);
  return v10;
}

@end
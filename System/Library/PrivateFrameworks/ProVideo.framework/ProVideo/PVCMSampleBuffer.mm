@interface PVCMSampleBuffer
+ (id)sampleBufferWithPVImageBuffer:(id)buffer timestamp:(id *)timestamp frameDuration:(id *)duration;
+ (id)sampleBufferWithPVImageBuffer:(id)buffer timestamp:(id *)timestamp frameDuration:(id *)duration error:(id *)error;
+ (opaqueCMSampleBuffer)createCMSampleBufferForPVImageBuffer:(id)buffer timingInfo:(id *)info error:(id *)error;
- (PVCMSampleBuffer)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (void)dealloc;
@end

@implementation PVCMSampleBuffer

+ (opaqueCMSampleBuffer)createCMSampleBufferForPVImageBuffer:(id)buffer timingInfo:(id *)info error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  cvPixelBuffer = [bufferCopy cvPixelBuffer];
  if (cvPixelBuffer)
  {
    formatDescriptionOut = 0;
    v9 = CMVideoFormatDescriptionCreateForImageBuffer(0, cvPixelBuffer, &formatDescriptionOut);
    v10 = v9;
    if (error && v9)
    {
      switch(v9)
      {
        case -12718:
          v11 = @"Value Not Available";
          break;
        case -12711:
          v11 = @"Allocation Failed";
          break;
        case -12710:
          v11 = @"Invalid Parameter";
          break;
        default:
          v11 = &stru_2872E16E0;
          break;
      }

      v14 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create video format description: %@", v11];
      v28 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *error = [v14 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:v10 userInfo:v16];
    }

    sampleBufferOut = 0;
    if (!v10)
    {
      v17 = CMSampleBufferCreateReadyWithImageBuffer(0, cvPixelBuffer, formatDescriptionOut, info, &sampleBufferOut);
      v10 = v17;
      if (error)
      {
        if (v17)
        {
          v18 = @"Allocation Failed";
          switch(v17)
          {
            case -12744:
              v18 = @"Invalidated";
              break;
            case -12743:
              v18 = @"Invalid Media Format";
              break;
            case -12742:
              v18 = @"Invalid Sample Data";
              break;
            case -12741:
              v18 = @"Invalid Media Type For Operation";
              break;
            case -12740:
              v18 = @"Sample Timing Info Invalid";
              break;
            case -12739:
              v18 = @"Cannot Subdivide";
              break;
            case -12738:
              v18 = @"Invalid Entry Count";
              break;
            case -12737:
              v18 = @"Array Too Small";
              break;
            case -12736:
              v18 = @"Buffer Has No Sample Timing Info";
              break;
            case -12735:
              v18 = @"Buffer Has No Sample Sizes";
              break;
            case -12734:
              v18 = @"Sample Index Out Of Range";
              break;
            case -12733:
              v18 = @"Buffer Not Ready";
              break;
            case -12732:
              v18 = @"Already Has Data Buffer";
              break;
            case -12731:
              v18 = @"Required Parameter Missing";
              break;
            case -12730:
              break;
            default:
              if (v17 == -16751)
              {
                v18 = @"Data Cancelled";
              }

              else if (v17 == -16750)
              {
                v18 = @"Data Failed";
              }

              else
              {
                v18 = &stru_2872E16E0;
              }

              break;
          }

          v19 = MEMORY[0x277CCA9B8];
          v25 = *MEMORY[0x277CCA450];
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create sample buffer: %@", v18];
          v26 = v20;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v19 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:v10 userInfo:v21];

          v10 = 1;
        }
      }
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (v10)
    {
      error = 0;
    }

    else
    {
      error = sampleBufferOut;
    }
  }

  else if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Failed to create sample buffer: CVPixelBuffer is nil.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *error = [v12 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:3 userInfo:v13];

    error = 0;
  }

  return error;
}

+ (id)sampleBufferWithPVImageBuffer:(id)buffer timestamp:(id *)timestamp frameDuration:(id *)duration
{
  v8 = *timestamp;
  v7 = *duration;
  v5 = [self sampleBufferWithPVImageBuffer:buffer timestamp:&v8 frameDuration:&v7 error:0];

  return v5;
}

+ (id)sampleBufferWithPVImageBuffer:(id)buffer timestamp:(id *)timestamp frameDuration:(id *)duration error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if (!bufferCopy)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Image must not be nil.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v14 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:1 userInfo:v15];

    goto LABEL_8;
  }

  v19 = *&duration->var0;
  *v20 = duration->var3;
  *&v20[8] = *&timestamp->var0;
  *&v20[24] = timestamp->var3;
  v21 = *&v20[8];
  v22 = *&v20[24];
  v17[2] = *&v20[16];
  v17[3] = *&v20[8];
  v18 = *&v20[24];
  v17[0] = v19;
  v17[1] = *v20;
  v12 = [self createCMSampleBufferForPVImageBuffer:bufferCopy timingInfo:v17 error:error];
  if (!v12)
  {
LABEL_8:
    error = 0;
    goto LABEL_9;
  }

  error = [[PVCMSampleBuffer alloc] initWithSampleBuffer:v12 error:error];
  CFRelease(v12);
  if (error)
  {
    objc_storeStrong(error + 2, buffer);
    errorCopy = error;
  }

LABEL_9:

  return error;
}

- (PVCMSampleBuffer)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!buffer)
  {

    if (!error)
    {
      return 0;
    }

    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Sample buffer must not be nil.";
    backingPVImageBuffer = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v8 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:2 userInfo:backingPVImageBuffer];
    *error = v5 = 0;
    goto LABEL_6;
  }

  v10.receiver = self;
  v10.super_class = PVCMSampleBuffer;
  v5 = [(PVCMSampleBuffer *)&v10 init:buffer];
  if (v5)
  {
    CFRetain(buffer);
    backingPVImageBuffer = v5->_backingPVImageBuffer;
    v5->_sampleBufferRef = buffer;
    v5->_backingPVImageBuffer = 0;
LABEL_6:
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_sampleBufferRef);
  backingPVImageBuffer = self->_backingPVImageBuffer;
  self->_backingPVImageBuffer = 0;

  v4.receiver = self;
  v4.super_class = PVCMSampleBuffer;
  [(PVCMSampleBuffer *)&v4 dealloc];
}

@end
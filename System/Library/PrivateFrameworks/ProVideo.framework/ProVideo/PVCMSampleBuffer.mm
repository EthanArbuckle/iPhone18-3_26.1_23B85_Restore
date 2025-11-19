@interface PVCMSampleBuffer
+ (id)sampleBufferWithPVImageBuffer:(id)a3 timestamp:(id *)a4 frameDuration:(id *)a5;
+ (id)sampleBufferWithPVImageBuffer:(id)a3 timestamp:(id *)a4 frameDuration:(id *)a5 error:(id *)a6;
+ (opaqueCMSampleBuffer)createCMSampleBufferForPVImageBuffer:(id)a3 timingInfo:(id *)a4 error:(id *)a5;
- (PVCMSampleBuffer)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation PVCMSampleBuffer

+ (opaqueCMSampleBuffer)createCMSampleBufferForPVImageBuffer:(id)a3 timingInfo:(id *)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 cvPixelBuffer];
  if (v8)
  {
    formatDescriptionOut = 0;
    v9 = CMVideoFormatDescriptionCreateForImageBuffer(0, v8, &formatDescriptionOut);
    v10 = v9;
    if (a5 && v9)
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
      *a5 = [v14 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:v10 userInfo:v16];
    }

    sampleBufferOut = 0;
    if (!v10)
    {
      v17 = CMSampleBufferCreateReadyWithImageBuffer(0, v8, formatDescriptionOut, a4, &sampleBufferOut);
      v10 = v17;
      if (a5)
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
          *a5 = [v19 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:v10 userInfo:v21];

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
      a5 = 0;
    }

    else
    {
      a5 = sampleBufferOut;
    }
  }

  else if (a5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Failed to create sample buffer: CVPixelBuffer is nil.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a5 = [v12 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:3 userInfo:v13];

    a5 = 0;
  }

  return a5;
}

+ (id)sampleBufferWithPVImageBuffer:(id)a3 timestamp:(id *)a4 frameDuration:(id *)a5
{
  v8 = *a4;
  v7 = *a5;
  v5 = [a1 sampleBufferWithPVImageBuffer:a3 timestamp:&v8 frameDuration:&v7 error:0];

  return v5;
}

+ (id)sampleBufferWithPVImageBuffer:(id)a3 timestamp:(id *)a4 frameDuration:(id *)a5 error:(id *)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (!v11)
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Image must not be nil.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a6 = [v14 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:1 userInfo:v15];

    goto LABEL_8;
  }

  v19 = *&a5->var0;
  *v20 = a5->var3;
  *&v20[8] = *&a4->var0;
  *&v20[24] = a4->var3;
  v21 = *&v20[8];
  v22 = *&v20[24];
  v17[2] = *&v20[16];
  v17[3] = *&v20[8];
  v18 = *&v20[24];
  v17[0] = v19;
  v17[1] = *v20;
  v12 = [a1 createCMSampleBufferForPVImageBuffer:v11 timingInfo:v17 error:a6];
  if (!v12)
  {
LABEL_8:
    a6 = 0;
    goto LABEL_9;
  }

  a6 = [[PVCMSampleBuffer alloc] initWithSampleBuffer:v12 error:a6];
  CFRelease(v12);
  if (a6)
  {
    objc_storeStrong(a6 + 2, a3);
    v13 = a6;
  }

LABEL_9:

  return a6;
}

- (PVCMSampleBuffer)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {

    if (!a4)
    {
      return 0;
    }

    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Sample buffer must not be nil.";
    backingPVImageBuffer = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v8 errorWithDomain:@"com.apple.provideo.PVFrameSet" code:2 userInfo:backingPVImageBuffer];
    *a4 = v5 = 0;
    goto LABEL_6;
  }

  v10.receiver = self;
  v10.super_class = PVCMSampleBuffer;
  v5 = [(PVCMSampleBuffer *)&v10 init:a3];
  if (v5)
  {
    CFRetain(a3);
    backingPVImageBuffer = v5->_backingPVImageBuffer;
    v5->_sampleBufferRef = a3;
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
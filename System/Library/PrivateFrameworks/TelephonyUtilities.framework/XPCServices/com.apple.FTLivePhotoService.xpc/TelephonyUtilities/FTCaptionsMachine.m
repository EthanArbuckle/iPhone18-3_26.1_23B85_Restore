@interface FTCaptionsMachine
+ (double)machTimeScale;
+ (int)createWebVTTTextSampleBuffer:(__CFString *)a3 startTime:(id *)a4 duration:(id *)a5 sampleBufferOut:(opaqueCMSampleBuffer *)a6;
@end

@implementation FTCaptionsMachine

+ (double)machTimeScale
{
  if (qword_100059C40 != -1)
  {
    sub_1000391C4();
  }

  return *&qword_100059C48;
}

+ (int)createWebVTTTextSampleBuffer:(__CFString *)a3 startTime:(id *)a4 duration:(id *)a5 sampleBufferOut:(opaqueCMSampleBuffer *)a6
{
  formatDescriptionOut = 0;
  v29 = 0;
  CMFormatDescriptionCreate(kCFAllocatorDefault, 0x74657874u, 0x77767474u, 0, &formatDescriptionOut);
  sampleTimingArray.duration = *a5;
  sampleTimingArray.presentationTimeStamp = *a4;
  sampleTimingArray.decodeTimeStamp = kCMTimeInvalid;
  blockBufferOut = 0;
  sampleSizeArray = 0;
  if (a3)
  {
    Length = CFStringGetLength(a3);
    *time = 0;
    v31.location = 0;
    v31.length = Length;
    CFStringGetBytes(a3, v31, 0x8000100u, 0, 0, 0, 0, time);
    v11 = malloc_type_malloc(*time, 0x4F46AA9BuLL);
    v32.location = 0;
    v32.length = Length;
    CFStringGetBytes(a3, v32, 0x8000100u, 0, 0, v11, *time, time);
    v12 = *time + 16;
    v13 = bswap32(*time + 8);
    v14 = malloc_type_malloc(v12, 0x78B79547uLL);
    *v14 = bswap32(v12);
    v14[1] = 1668576374;
    v14[2] = v13;
    v14[3] = 1819894128;
    memcpy(v14 + 4, v11, *time);
  }

  else
  {
    v12 = 8;
    v14 = malloc_type_malloc(8uLL, 0x65B94A13uLL);
    v11 = 0;
    *v14 = 0x6574747608000000;
  }

  v15 = CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, v14, v12, kCFAllocatorDefault, 0, 0, v12, 0, &blockBufferOut);
  if (v15)
  {
    v16 = v15;
    *time = *&a4->var0;
    *&time[16] = a4->var3;
    v17 = CMTimeCopyDescription(kCFAllocatorDefault, time);
    *time = *&a4->var0;
    *&time[16] = a4->var3;
    v18 = CMTimeCopyDescription(kCFAllocatorDefault, time);
    v19 = FTDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *time = 67109634;
      *&time[4] = v16;
      *&time[8] = 2112;
      *&time[10] = v17;
      *&time[18] = 2112;
      *&time[20] = v18;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error %d creating buffer with memory block start time %@ duration %@", time, 0x1Cu);
    }

    CFRelease(v17);
    v20 = v18;
LABEL_8:
    CFRelease(v20);
    goto LABEL_9;
  }

  sampleSizeArray = v12;
  v16 = CMSampleBufferCreate(kCFAllocatorDefault, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v29);
  if (v16)
  {
    *time = *&a4->var0;
    *&time[16] = a4->var3;
    v22 = CMTimeCopyDescription(kCFAllocatorDefault, time);
    *time = *&a4->var0;
    *&time[16] = a4->var3;
    v23 = CMTimeCopyDescription(kCFAllocatorDefault, time);
    v24 = FTDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *time = 67109634;
      *&time[4] = v16;
      *&time[8] = 2112;
      *&time[10] = v22;
      *&time[18] = 2112;
      *&time[20] = v23;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error %d creating buffer with memory block start time %@ duration %@", time, 0x1Cu);
    }

    CFRelease(v22);
    CFRelease(v23);
    v20 = v29;
    if (v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a6 = v29;
    v29 = 0;
  }

LABEL_9:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  free(v11);
  return v16;
}

@end
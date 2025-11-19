@interface FTCaptionsMachine
+ (double)machTimeScale;
+ (int)createWebVTTTextSampleBuffer:(__CFString *)a3 startTime:(id *)a4 duration:(id *)a5 sampleBufferOut:(opaqueCMSampleBuffer *)a6;
@end

@implementation FTCaptionsMachine

+ (double)machTimeScale
{
  if (machTimeScale_onceToken != -1)
  {
    +[FTCaptionsMachine machTimeScale];
  }

  return *&machTimeScale_timeScale;
}

double __34__FTCaptionsMachine_machTimeScale__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  machTimeScale_timeScale = *&result;
  return result;
}

+ (int)createWebVTTTextSampleBuffer:(__CFString *)a3 startTime:(id *)a4 duration:(id *)a5 sampleBufferOut:(opaqueCMSampleBuffer *)a6
{
  formatDescriptionOut = 0;
  v29 = 0;
  v10 = *MEMORY[0x1E695E480];
  CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x74657874u, 0x77767474u, 0, &formatDescriptionOut);
  sampleTimingArray.duration = *a5;
  sampleTimingArray.presentationTimeStamp = *a4;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  blockBufferOut = 0;
  sampleSizeArray = 0;
  if (a3)
  {
    Length = CFStringGetLength(a3);
    maxBufLen.var0 = 0;
    v30.location = 0;
    v30.length = Length;
    CFStringGetBytes(a3, v30, 0x8000100u, 0, 0, 0, 0, &maxBufLen.var0);
    v12 = malloc_type_malloc(maxBufLen.var0, 0x22C93461uLL);
    v31.location = 0;
    v31.length = Length;
    CFStringGetBytes(a3, v31, 0x8000100u, 0, 0, v12, maxBufLen.var0, &maxBufLen.var0);
    v13 = LODWORD(maxBufLen.var0) + 16;
    v14 = bswap32(LODWORD(maxBufLen.var0) + 8);
    v15 = malloc_type_malloc(v13, 0x58F69FF0uLL);
    *v15 = bswap32(v13);
    v15[1] = 1668576374;
    v15[2] = v14;
    v15[3] = 1819894128;
    memcpy(v15 + 4, v12, maxBufLen.var0);
  }

  else
  {
    v13 = 8;
    v15 = malloc_type_malloc(8uLL, 0xD990D949uLL);
    v12 = 0;
    *v15 = 0x6574747608000000;
  }

  v16 = CMBlockBufferCreateWithMemoryBlock(v10, v15, v13, v10, 0, 0, v13, 0, &blockBufferOut);
  if (v16)
  {
    v17 = v16;
    maxBufLen = *a4;
    v18 = CMTimeCopyDescription(v10, &maxBufLen);
    maxBufLen = *a4;
    v19 = CMTimeCopyDescription(v10, &maxBufLen);
    CFRelease(v18);
    v20 = v19;
LABEL_6:
    CFRelease(v20);
    goto LABEL_7;
  }

  sampleSizeArray = v13;
  v17 = CMSampleBufferCreate(v10, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v29);
  if (v17)
  {
    maxBufLen = *a4;
    v22 = CMTimeCopyDescription(v10, &maxBufLen);
    maxBufLen = *a4;
    v23 = CMTimeCopyDescription(v10, &maxBufLen);
    CFRelease(v22);
    CFRelease(v23);
    v20 = v29;
    if (v29)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *a6 = v29;
    v29 = 0;
  }

LABEL_7:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  free(v12);
  return v17;
}

@end
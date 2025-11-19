id _VEError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a2)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 errorWithDomain:@"VEVideoEffectErrorDomain" code:a1 userInfo:v6];
  }

  else
  {
    v6 = 0;
    v7 = [v3 errorWithDomain:@"VEVideoEffectErrorDomain" code:a1 userInfo:0];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id errorMessage(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _VEError(a1, 0);
  if ((global_logLevel & 0x10) != 0)
  {
    v5 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      errorMessage_cold_1(v3, v5);
    }
  }

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270C6C6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_270C6D168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_270C6D61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t DebugAssertPrint(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v11 = MEMORY[0x277D85DF8];
  fputc(10, *MEMORY[0x277D85DF8]);
  fwrite("ERROR", 5uLL, 1uLL, *v11);
  if (a4)
  {
    fprintf(*v11, ": %s", a4);
  }

  if (a5)
  {
    fprintf(*v11, " - file: %s", a5);
  }

  if (a6)
  {
    fprintf(*v11, " - line: %ld", a6);
  }

  if (a7)
  {
    fprintf(*v11, " - error: %ld", a7);
  }

  v12 = *v11;

  return fputc(10, v12);
}

id dvpVSAConfigFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045D0];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 frameWidth];
    v6 = [v3 frameHeight];
    v7 = [v3 usePrecomputedFlow];
    v8 = [v3 qualityPrioritization];
    v9 = [v3 revision];

    a1 = [v4 initWithFrameWidth:v5 frameHeight:v6 usePrecomputedFlow:v7 qualityPrioritization:v8 revision:v9];
    v1 = vars8;
  }

  return a1;
}

id dvpOpticalFlowConfigFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045E0];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 frameWidth];
    v6 = [v3 frameHeight];
    v7 = [v3 qualityPrioritization];
    v8 = [v3 revision];

    a1 = [v4 initWithFrameWidth:v5 frameHeight:v6 qualityPrioritization:v7 revision:v8];
    v1 = vars8;
  }

  return a1;
}

id dvpFRCConfigFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045B0];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 frameWidth];
    v6 = [v3 frameHeight];
    v7 = [v3 usePrecomputedFlow];
    v8 = [v3 qualityPrioritization];
    v9 = [v3 revision];

    a1 = [v4 initWithFrameWidth:v5 frameHeight:v6 usePrecomputedFlow:v7 qualityPrioritization:v8 revision:v9];
    v1 = vars8;
  }

  return a1;
}

id dvpVSRConfigFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045F0];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 frameWidth];
    v6 = [v3 frameHeight];
    v7 = [v3 scaleFactor];
    v8 = [v3 inputType];
    v9 = [v3 usePrecomputedFlow];
    v10 = [v3 qualityPrioritization];
    v11 = [v3 revision];

    a1 = [v4 initWithFrameWidth:v5 frameHeight:v6 scaleFactor:v7 inputType:v8 usePrecomputedFlow:v9 qualityPrioritization:v10 revision:v11];
    v1 = vars8;
  }

  return a1;
}

id dvpVDGConfigFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045C0];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 frameWidth];
    v6 = [v3 frameHeight];
    v7 = [v3 usePrecomputedFlow];
    v8 = [v3 qualityPrioritization];
    v9 = [v3 revision];

    a1 = [v4 initWithFrameWidth:v5 frameHeight:v6 usePrecomputedFlow:v7 qualityPrioritization:v8 revision:v9];
    v1 = vars8;
  }

  return a1;
}

id dvpFrameFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045A0];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 buffer];
    [v3 presentationTimeStamp];

    a1 = [v4 initWithBuffer:v5 presentationTimeStamp:v7];
    v1 = vars8;
  }

  return a1;
}

id dvpFrameOpticalFlowFromVE(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277D045A8];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 forwardFlow];
    v6 = [v3 backwardFlow];

    a1 = [v4 initWithForwardFlow:v5 backwardFlow:v6];
    v1 = vars8;
  }

  return a1;
}

id dvpVSAParamsFromVE(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277D045D8];
    v2 = a1;
    v16 = [v1 alloc];
    v19 = [v2 sourceFrame];
    v15 = dvpFrameFromVE(v19);
    v18 = [v2 nextFrame];
    v3 = dvpFrameFromVE(v18);
    v17 = [v2 previousFrame];
    v4 = dvpFrameFromVE(v17);
    v5 = [v2 nextOpticalFlow];
    v6 = dvpFrameOpticalFlowFromVE(v5);
    v7 = [v2 previousOpticalFlow];
    v8 = dvpFrameOpticalFlowFromVE(v7);
    v9 = [v2 motionBlurStrength];
    v10 = [v2 submissionMode];
    v11 = [v2 destinationFrame];

    v12 = dvpFrameFromVE(v11);
    v13 = [v16 initWithSourceFrame:v15 nextFrame:v3 previousFrame:v4 nextOpticalFlow:v6 previousOpticalFlow:v8 motionBlurStrength:v9 submissionMode:v10 destinationFrame:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id dvpOpticalFlowParamsFromVE(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277D045E8];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = [v2 sourceFrame];
    v5 = dvpFrameFromVE(v4);
    v6 = [v2 nextFrame];
    v7 = dvpFrameFromVE(v6);
    v8 = [v2 submissionMode];
    v9 = [v2 opticalFlow];

    v10 = dvpFrameOpticalFlowFromVE(v9);
    v11 = [v3 initWithSourceFrame:v5 nextFrame:v7 submissionMode:v8 opticalFlow:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id dvpFRCParamsFromVE(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = [v1 destinationFrames];
    v4 = [v3 count];

    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = [v1 destinationFrames];
        v7 = [v6 objectAtIndexedSubscript:v5];
        v8 = dvpFrameFromVE(v7);
        [v2 addObject:v8];

        ++v5;
        v9 = [v1 destinationFrames];
        v10 = [v9 count];
      }

      while (v10 > v5);
    }

    v11 = objc_alloc(MEMORY[0x277D045B8]);
    v12 = [v1 sourceFrame];
    v13 = dvpFrameFromVE(v12);
    v14 = [v1 nextFrame];
    v15 = dvpFrameFromVE(v14);
    v16 = [v1 opticalFlow];
    v17 = dvpFrameOpticalFlowFromVE(v16);
    v18 = [v1 interpolationPhase];
    v19 = [v11 initWithSourceFrame:v13 nextFrame:v15 opticalFlow:v17 interpolationPhase:v18 submissionMode:objc_msgSend(v1 destinationFrames:{"submissionMode"), v2}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

id dvpVSRParamsFromVE(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277D045F8];
    v2 = a1;
    v3 = [v1 alloc];
    v18 = [v2 sourceFrame];
    v4 = dvpFrameFromVE(v18);
    v17 = [v2 previousFrame];
    v5 = dvpFrameFromVE(v17);
    v6 = [v2 previousOutputFrame];
    v7 = dvpFrameFromVE(v6);
    v8 = [v2 opticalFlow];
    v9 = dvpFrameOpticalFlowFromVE(v8);
    v10 = [v2 submissionMode];
    v11 = [v2 destinationFrame];

    v12 = dvpFrameFromVE(v11);
    v13 = v3;
    v14 = v4;
    v15 = [v13 initWithSourceFrame:v4 previousFrame:v5 previousOutputFrame:v7 opticalFlow:v9 submissionMode:v10 destinationFrame:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id dvpVDGParamsFromVE(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277D045C8];
    v2 = a1;
    v3 = [v1 alloc];
    v28 = [v2 sourceFrame];
    v4 = dvpFrameFromVE(v28);
    v27 = [v2 nextFrame];
    v5 = dvpFrameFromVE(v27);
    v26 = [v2 opticalFlow];
    v24 = dvpFrameOpticalFlowFromVE(v26);
    [v2 sourceFrameOpticalCenter];
    v7 = v6;
    v9 = v8;
    [v2 nextFrameOpticalCenter];
    v11 = v10;
    v13 = v12;
    [v2 opticalCenterShift];
    v15 = v14;
    v25 = [v2 previousOutputFrame];
    v16 = dvpFrameFromVE(v25);
    v17 = [v2 previousPreviousOutputFrame];
    v18 = dvpFrameFromVE(v17);
    v19 = [v2 submissionMode];
    v20 = [v2 destinationFrame];

    v21 = dvpFrameFromVE(v20);
    v22 = [v3 initWithSourceFrame:v4 nextFrame:v5 opticalFlow:v24 sourceFrameOpticalCenter:v16 nextFrameOpticalCenter:v18 opticalCenterShift:v19 previousOutputFrame:v7 previousPreviousOutputFrame:v9 submissionMode:v11 destinationFrame:{v13, v15, v21}];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

unint64_t queryMemoryFootprint()
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *task_info_out = 0u;
  v3 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return v11 >> 20;
  }
}

unint64_t getPhysicalMemorySize()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 8;
  v3 = 0;
  *v4 = 0x1800000006;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0))
  {
    result = v3;
  }

  else
  {
    result = v3 >> 20;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

vm_size_t OUTLINED_FUNCTION_0_0()
{

  return getUsableMemorySize();
}

uint64_t OUTLINED_FUNCTION_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, mach_msg_type_number_t host_info64_outCnt, uint64_t a11, integer_t host_info64_out)
{
  host_info64_outCnt = 40;

  return host_statistics64(v12, 4, &host_info64_out, &host_info64_outCnt);
}

void VELoggerInit(uint64_t a1, int a2)
{
  keyExistsAndHasValidFormat = 1;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ve_logLevel", @"com.apple.dvp", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    a1 = AppIntegerValue;
    NSLog(&cfstr_LogLevelIsForc.isa, AppIntegerValue);
  }

  global_logLevel = a1;
  if (a2)
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = os_log_create("com.apple.dvp", "videoeffect");
  }

  v7 = global_logger;
  global_logger = v5;
}

CVPixelBufferRef CreatePixelBufferExtended(size_t a1, size_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
  if (a4 >= 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CC4D60]];
  }

  if (a5 >= 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:((a5 + a2 - 1) & -a5) - a2];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277CC4DA0]];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x277CC4E30]];

  pixelBufferOut = 0;
  if (CVPixelBufferCreate(0, a1, a2, a3, v10, &pixelBufferOut))
  {
    v16 = 0;
  }

  else
  {
    v16 = pixelBufferOut;
  }

  return v16;
}

CVPixelBufferRef createPixelBuffer(size_t a1, size_t a2, OSType a3, int a4)
{
  valuePtr = a4;
  v14 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFDictionaryCreateMutable(v7, 0, v8, v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v11);
  CFRelease(v11);
  v12 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v12);
  CFRelease(v12);
  CVPixelBufferCreate(v7, a1, a2, a3, Mutable, &v14);
  CFRelease(Mutable);
  return v14;
}

uint64_t loadTexture(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = 1;
    do
    {
      memset(v12, 0, 24);
      v12[3] = a3;
      v12[4] = a4;
      v12[5] = 1;
      result = [a2 replaceRegion:v12 mipmapLevel:0 slice:? withBytes:? bytesPerRow:? bytesPerImage:?];
      v11 = v9++;
    }

    while (v11 < a5);
  }

  return result;
}

uint64_t readData(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (2 * a3 * a4 == fread(__ptr, 1uLL, 2 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeData32(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (4 * a3 * a4 == fwrite(__ptr, 1uLL, 4 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeData(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (2 * a3 * a4 == fwrite(__ptr, 1uLL, 2 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t isPackedRGBA(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t isBufferYUV(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t equivalentUncompressedPixelFormat(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  if (CVPixelBufferGetPlaneCount(a1))
  {
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
    v5 = [v4 objectAtIndexedSubscript:0];

    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
    v7 = [v6 intValue];

    if (v7)
    {
      v8 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
      PixelFormatType = [v8 intValue];
    }
  }

  return PixelFormatType;
}

CFMutableDictionaryRef createPixelBufferPoolWithExtendedPixels(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v24 = a2;
  v25 = a1;
  v22 = a4;
  valuePtr = a3;
  v20 = a6;
  v21 = a5;
  poolOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v8 = result;
    v9 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    CFDictionarySetValue(v8, *MEMORY[0x277CC4E30], v9);
    CFRelease(v10);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(v8, *MEMORY[0x277CC4DE8], Mutable);
    CFRelease(Mutable);
    v12 = CFNumberCreate(v6, kCFNumberLongType, &v25);
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    CFDictionarySetValue(v8, *MEMORY[0x277CC4EC8], v12);
    CFRelease(v13);
    v14 = CFNumberCreate(v6, kCFNumberLongType, &v24);
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DD8], v14);
      CFRelease(v15);
      v16 = CFNumberCreate(v6, kCFNumberIntType, &v22);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4D60], v16);
      CFRelease(v16);
      v17 = CFNumberCreate(v6, kCFNumberIntType, &v21);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DB8], v17);
      CFRelease(v17);
      v18 = CFNumberCreate(v6, kCFNumberIntType, &v20);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DA0], v18);
      CFRelease(v18);
      CVPixelBufferPoolCreate(v6, 0, v8, &poolOut);
      CFRelease(v8);
      return poolOut;
    }

    else
    {
LABEL_6:
      CFRelease(v8);
      return 0;
    }
  }

  return result;
}

id createTexturesFromCVPixelBufferWithCommandBuffer(__CVBuffer *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_11;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (a5 > 0x80 || Width < 0x80 || (v14 = Height / a5, v14 <= 0x7F))
  {
    v20 = v9;
    v21 = v10;
    v22 = CVPixelBufferGetWidth(a1);
    v23 = CVPixelBufferGetHeight(a1);
    v24 = v23 / a5;
    v19 = createTextures(v20, v22, v23 / a5, a4, a5);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v26 = BytesPerRow * v24;
    if (v21)
    {
      copyBufferToTextureWithBlit(a1, v19, v20, v21, BytesPerRow, v26);
      if (v19)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      copyBufferToTextureWithCPU(a1, v19, BytesPerRow, v26);
      if (v19)
      {
        goto LABEL_10;
      }
    }

    createTexturesFromCVPixelBufferWithCommandBuffer_cold_2();
  }

  v15 = PixelFormatType;
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v28 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v28);
  v16 = CVPixelBufferGetBytesPerRow(a1);
  v17 = createTextureDescriptor(Width, v14, a4, a5, v15);
  v18 = [v9 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a1)];
  v19 = [v18 newLinearTextureWithDescriptor:v17 offset:0 bytesPerRow:v16 bytesPerImage:0];

  if (!v19)
  {
    createTexturesFromCVPixelBufferWithCommandBuffer_cold_1();
  }

LABEL_11:

  return v19;
}

id createFlowTexturesFromCVPixelBufferWithCommandBuffer(__CVBuffer *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;
  v10 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 843264104)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  v13 = createTexturesFromCVPixelBufferWithCommandBuffer(a1, v10, v9, v12, a5 >> (PixelFormatType == 843264104));

  return v13;
}

id createRGBATextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = equivalentUncompressedPixelFormat(a1);
  v5 = 90;
  if (v4 == 1380411457)
  {
    v5 = 115;
  }

  if (v4 == 1111970369)
  {
    v6 = 70;
  }

  else
  {
    v6 = v5;
  }

  v7 = MEMORY[0x277CD7058];
  Width = CVPixelBufferGetWidth(a1);
  v9 = [v7 texture2DDescriptorWithPixelFormat:v6 width:Width height:CVPixelBufferGetHeight(a1) mipmapped:0];
  [v9 setUsage:3];
  v10 = [v3 newTextureWithDescriptor:v9 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v10;
}

id createYUV420TextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = equivalentUncompressedPixelFormat(a1);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], v4);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v7 = [v6 intValue];

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = v4 == 1885745712 || v4 == 1882468912;
  v11 = 505;
  if (v10)
  {
    v11 = 508;
  }

  if (v7 == 8)
  {
    v12 = 500;
  }

  else
  {
    v12 = v11;
  }

  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v12 width:Width height:Height mipmapped:0];
  [v13 setUsage:1];
  v14 = [v3 newTextureWithDescriptor:v13 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v14;
}

id createRenderTargetTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v6 = objc_opt_new();
  [v6 setTextureType:2];
  [v6 setWidth:extraColumnsOnRight + Width];
  [v6 setHeight:extraRowsOnBottom + Height];
  v7 = equivalentUncompressedPixelFormat(a1);
  if ((v7 & 0xFFFFFFEF) == 0x34323066)
  {
    v8 = 500;
    goto LABEL_13;
  }

  if (v7 <= 1885745711)
  {
    if (v7 == 1111970369)
    {
      v8 = 70;
      goto LABEL_13;
    }

    v9 = 1882468912;
    goto LABEL_9;
  }

  v8 = 505;
  if (v7 != 2019963440 && v7 != 2016686640)
  {
    v9 = 1885745712;
LABEL_9:
    if (v7 == v9)
    {
      v8 = 508;
    }

    else
    {
      v8 = 115;
    }
  }

LABEL_13:
  [v6 setPixelFormat:v8];
  [v6 setUsage:5];
  if (![v6 textureType])
  {
    NSLog(&cfstr_FailedToCretae.isa);
  }

  v10 = [v3 newTextureWithDescriptor:v6 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  if (!v10)
  {
    v11 = CVPixelBufferGetWidth(a1);
    v12 = CVPixelBufferGetHeight(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    NSLog(&cfstr_ErrorFaildToCr.isa, v11, v12, PixelFormatType);
  }

  return v10;
}

unsigned __int16 *interleave4(unsigned __int16 *result, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = (a5 >> 1) * a4;
    v8 = 2 * v7;
    v9 = 3 * v7;
    do
    {
      if (a3)
      {
        v10 = 1;
        v11 = result;
        v12 = a2;
        do
        {
          *v12++ = *v11 | (v11[a4 * (a5 >> 1)] << 16) | (v11[v8] << 32) | (v11[v9] << 48);
          v13 = v10;
          ++v11;
          ++v10;
        }

        while (v13 < a3);
      }

      a2 = (a2 + a6);
      v6 = (v6 + 1);
      result += a5 >> 1;
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t *deinterleave4(uint64_t *result, _WORD *a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = (a6 >> 1) * a4;
    v8 = 2 * v7;
    v9 = 3 * v7;
    do
    {
      if (a3)
      {
        v10 = 1;
        v11 = result;
        v12 = a2;
        do
        {
          v13 = *v11++;
          *v12 = v13;
          v12[a4 * (a6 >> 1)] = WORD1(v13);
          v12[v8] = WORD2(v13);
          v12[v9] = HIWORD(v13);
          v14 = v10;
          ++v12;
          ++v10;
        }

        while (v14 < a3);
      }

      v6 = (v6 + 1);
      a2 += a6 >> 1;
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t deinterleave3(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    do
    {
      if (a3)
      {
        v7 = 0;
        do
        {
          v8 = *(result + 4 * v7);
          *(a2 + v7) = v8;
          *(a2 + a6 * a4 + v7) = BYTE1(v8);
          *(a2 + 2 * a6 * a4 + v7++) = BYTE2(v8);
        }

        while (a3 > v7);
      }

      result += a5;
      a2 += a6;
      v6 = (v6 + 1);
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t interleave2(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = result + 2 * a4 * (a5 >> 1);
    v8 = 2 * (a5 >> 1);
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          *(a2 + 4 * v9) = *(result + 2 * v9) | (*(v7 + 2 * v9) << 16);
          ++v9;
        }

        while (a3 > v9);
      }

      v6 = (v6 + 1);
      a2 += 4 * (a6 >> 2);
      v7 += v8;
      result += v8;
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t deinterleave2(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = a2 + 2 * a4 * (a6 >> 1);
    v8 = 2 * (a6 >> 1);
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          v10 = *(result + 4 * v9);
          *(a2 + 2 * v9) = v10;
          *(v7 + 2 * v9++) = HIWORD(v10);
        }

        while (a3 > v9);
      }

      v6 = (v6 + 1);
      v7 += v8;
      a2 += v8;
      result += 4 * (a5 >> 2);
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t convertOneComponet16HalfToTwoComponent16Half(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226536)
  {
    convertOneComponet16HalfToTwoComponent16Half_cold_1();
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 843264104)
  {
    convertOneComponet16HalfToTwoComponent16Half_cold_2();
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  if (Height >= 2)
  {
    LODWORD(v10) = 0;
    v11 = &BaseAddress[2 * (BytesPerRow >> 1) * (Height >> 1)];
    v12 = 2 * (BytesPerRow >> 1);
    do
    {
      if (Width)
      {
        v13 = 0;
        do
        {
          *&v8[4 * v13] = *&BaseAddress[2 * v13] | (*&v11[2 * v13] << 16);
          ++v13;
        }

        while (Width > v13);
      }

      v10 = (v10 + 1);
      v8 += 4 * (v9 >> 2);
      v11 += v12;
      BaseAddress += v12;
    }

    while (Height >> 1 > v10);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}

uint64_t convertTwoComponet16HalfToOneComponent16Half(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 843264104)
  {
    convertTwoComponet16HalfToOneComponent16Half_cold_1();
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1278226536)
  {
    convertTwoComponet16HalfToOneComponent16Half_cold_2();
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  if (Height)
  {
    LODWORD(v10) = 0;
    v11 = &v8[2 * Height * (v9 >> 1)];
    v12 = 2 * (v9 >> 1);
    do
    {
      if (Width)
      {
        v13 = 0;
        do
        {
          v14 = *&BaseAddress[4 * v13];
          *&v8[2 * v13] = v14;
          *&v11[2 * v13++] = HIWORD(v14);
        }

        while (Width > v13);
      }

      v10 = (v10 + 1);
      v11 += v12;
      v8 += v12;
      BaseAddress += 4 * (BytesPerRow >> 2);
    }

    while (Height > v10);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}

id createTextureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = 115;
  v7 = 25;
  if (a5 == 1278226488)
  {
    v7 = 12;
  }

  if (a3 == 1)
  {
    v6 = v7;
  }

  if (a3 == 2)
  {
    v8 = 65;
  }

  else
  {
    v8 = v6;
  }

  v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v8 width:a1 height:a2 mipmapped:0];
  [v9 setUsage:3];
  [v9 setStorageMode:0];
  if (a4 >= 2)
  {
    [v9 setTextureType:3];
    [v9 setArrayLength:a4];
  }

  return v9;
}

id createTexturesFromCVPixelBufferFlow2C(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v6 = createTextures(v3, Width, Height, 1, 2uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = [MEMORY[0x277CBEB28] dataWithLength:4 * Height * Width];
  v9 = [v8 mutableBytes];
  v10 = v9;
  if (Height * Width)
  {
    v11 = (BaseAddress + 2);
    v12 = v9;
    v13 = Height * Width;
    do
    {
      v14 = *v11;
      *v12 = *(v11 - 1);
      v12[Width * Height] = v14;
      ++v12;
      v11 += 2;
      --v13;
    }

    while (v13);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = Width;
  v20 = Height;
  v21 = 1;
  [v6 replaceRegion:&v16 mipmapLevel:0 slice:0 withBytes:v9 bytesPerRow:2 * Width bytesPerImage:2 * Width * Height];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = Width;
  v20 = Height;
  v21 = 1;
  [v6 replaceRegion:&v16 mipmapLevel:0 slice:1 withBytes:v10 + 2 * Height * Width bytesPerRow:2 * Width bytesPerImage:2 * Width * Height];
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (!v6)
  {
    createTexturesFromCVPixelBufferFlow2C_cold_1();
  }

  return v6;
}

id createTextures(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  v10 = createTextureDescriptor(a2, a3, a4, a5, 1278226536);
  v11 = [v9 newTextureWithDescriptor:v10];

  return v11;
}

void copyTextureToBufferWithBlit(void *a1, __CVBuffer *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 width];
  v11 = [v7 height];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v13 = [v8 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a2)];
  v19 = v9;
  v14 = [v9 blitCommandEncoder];
  if ([v7 arrayLength])
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
    do
    {
      memset(v21, 0, sizeof(v21));
      v20[0] = v10;
      v20[1] = v11;
      v20[2] = 1;
      [v14 copyFromTexture:v7 sourceSlice:v15 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toBuffer:v13 destinationOffset:v16 destinationBytesPerRow:BytesPerRow destinationBytesPerImage:BytesPerRow * v11];
      v16 += BytesPerRow * v11;
      v15 = v17;
    }

    while ([v7 arrayLength] > v17++);
  }

  [v14 endEncoding];
}

void copyBufferToTextureWithBlit(__CVBuffer *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = [a4 blitCommandEncoder];
  v21 = v12;
  v14 = [v12 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a1)];
  v15 = [v11 width];
  v16 = [v11 height];
  if ([v11 arrayLength])
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      memset(v23, 0, sizeof(v23));
      v22[0] = v15;
      v22[1] = v16;
      v22[2] = 1;
      [v13 copyFromBuffer:v14 sourceOffset:v18 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:v22 toTexture:v11 destinationSlice:v17 destinationLevel:0 destinationOrigin:v23];
      v18 += a6;
      v17 = v19;
    }

    while ([v11 arrayLength] > v19++);
  }

  [v13 endEncoding];
}

void copyBufferToTextureWithCPU(__CVBuffer *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v9 = [v7 width];
  v10 = [v7 height];
  if ([v7 arrayLength])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      memset(v14, 0, 24);
      v14[3] = v9;
      v14[4] = v10;
      v14[5] = 1;
      [v7 replaceRegion:v14 mipmapLevel:0 slice:v11 withBytes:&BaseAddress[v11 * a4] bytesPerRow:a3 bytesPerImage:a4];
      v11 = v12;
    }

    while ([v7 arrayLength] > v12++);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

uint64_t isPixelFormatSupported(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v2 = [&unk_2880ADAA8 containsObject:v1];

  return v2;
}

float compareBuffersFP16(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, float a8)
{
  v8 = a4;
  if (a5)
  {
    v13 = 0;
    v14 = 0;
    v15 = a8;
    v46 = a4 * a3;
    v47 = (a4 * a3);
    v16 = 0.0;
    do
    {
      if (v8)
      {
        v49 = v16;
        v17 = 0;
        v18 = 0;
        v51 = v13 * v8;
        v19 = 0.0;
        v20 = 3.4028e38;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 3.4028e38;
        do
        {
          if (a3)
          {
            v24 = 0;
            v25 = 0;
            v26 = (v17 + v51) * a6;
            do
            {
              v27 = v24 + v26;
              if (a2)
              {
                _H0 = *(a2 + 2 * v27);
                __asm { FCVT            S0, H0 }
              }

              else
              {
                _S0 = 0.0;
              }

              _H1 = *(a1 + 2 * v27);
              __asm { FCVT            S10, H1 }

              v36 = _S10 - _S0;
              if (a7)
              {
                __asm { FCVT            D1, H1 }

                if (fabs(v36) <= v15)
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\n");
                }

                else
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\t****\n");
                }
              }

              v38 = fabsf(v36);
              v19 = fmaxf(v19, v38);
              v23 = fminf(v23, v38);
              v22 = fmaxf(v22, _S10);
              v20 = fminf(v20, _S10);
              v21 = v21 + (v36 * v36);
              v24 = ++v25;
            }

            while (v25 < a3);
          }

          v17 = ++v18;
          v8 = a4;
        }

        while (v18 < a4);
        v39 = v20;
        v40 = v22;
        v41 = v19;
        v42 = v23;
        v16 = v49;
      }

      else
      {
        v40 = 0.0;
        v39 = 3.40282347e38;
        v42 = 3.40282347e38;
        v21 = 0.0;
        v41 = 0.0;
      }

      v16 = v16 + v21;
      printf("[%3d]\t", v14);
      printf("Dynamic Range [%6.3f, %6.3f]", v39, v40);
      printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v41, v42, (v21 / v47));
      v13 = ++v14;
    }

    while (v14 < a5);
    v43 = v46;
  }

  else
  {
    v43 = a4 * a3;
    v16 = 0.0;
  }

  v44 = v16 / (v43 * a5);
  printf("[Total] MSE = %6.6f\n", v44);
  return v44;
}

float compareYUV420PixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v5 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v13 = 0.0;
  v14 = 0.0;
  v15 = 3.40282347e38;
  v16 = 3.40282347e38;
  v17 = 0.0;
  v18 = 3.40282347e38;
  v19 = 0.0;
  v20 = 0.0;
  if (HeightOfPlane)
  {
    LODWORD(v21) = 0;
    v22 = 3.4028e38;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 3.4028e38;
    do
    {
      if (WidthOfPlane)
      {
        v26 = 0;
        do
        {
          LOBYTE(v11) = BaseAddressOfPlane[v26];
          v11 = *&v11 / 255.0;
          *&v11 = v11;
          LOBYTE(v12) = v6[v26];
          v12 = *&v12 / 255.0;
          *&v12 = v12;
          v27 = *&v11 - *&v12;
          *&v12 = vabds_f32(*&v11, *&v12);
          v23 = fmaxf(v23, *&v12);
          v22 = fminf(v22, *&v12);
          v24 = fmaxf(v24, *&v11);
          v25 = fminf(v25, *&v11);
          v20 = v20 + (v27 * v27);
          ++v26;
        }

        while (WidthOfPlane > v26);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      v6 += BytesPerRowOfPlane;
      v21 = (v21 + 1);
    }

    while (HeightOfPlane > v21);
    v16 = v25;
    v17 = v24;
    v19 = v23;
    v18 = v22;
  }

  v28 = v20 / (HeightOfPlane * WidthOfPlane);
  printf("[Y]\tDynamic Range [%6.3f, %6.3f]", v16, v17);
  v62 = v28;
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v19, v18, v28);
  v29 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v30 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v31 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 3.40282347e38;
  v37 = 0.0;
  v38 = 3.40282347e38;
  v39 = 0.0;
  v40 = 3.40282347e38;
  if (v30)
  {
    LODWORD(v41) = 0;
    v42 = 0.0;
    v43 = 3.4028e38;
    v44 = 3.4028e38;
    v45 = 0.0;
    v46 = 3.4028e38;
    v47 = 0.0;
    v48 = 3.4028e38;
    v49 = 0.0;
    v13 = 0.0;
    do
    {
      if (v29)
      {
        v50 = 1;
        v51 = 1;
        do
        {
          LOBYTE(v34) = v5[v50 - 1];
          LOBYTE(v32) = v7[v50 - 1];
          v34 = *&v34 / 255.0;
          *&v52 = *&v32;
          v53 = *&v52 / 255.0;
          LOBYTE(v52) = v5[v50];
          *&v34 = v34;
          v32 = v52 / 255.0;
          *&v32 = v32;
          LOBYTE(v33) = v7[v50];
          v54 = v53;
          v33 = *&v33 / 255.0;
          *&v33 = v33;
          v55 = vabds_f32(*&v34, v54);
          v56 = vabds_f32(*&v32, *&v33);
          v45 = fmax(v45, v56);
          v44 = fmin(v44, v56);
          v47 = fmax(v47, *&v34);
          v49 = fmax(v49, v55);
          v42 = fmax(v42, *&v32);
          v46 = fmin(v46, *&v34);
          v48 = fmin(v48, v55);
          v43 = fmin(v43, *&v32);
          v57 = v29 > v51++;
          v50 += 2;
        }

        while (v57);
        *&v32 = *&v32 - *&v33;
        v13 = (*&v34 - v54) * (*&v34 - v54);
        *&v34 = *&v32 * *&v32;
      }

      v5 += v31;
      v7 += v31;
      v41 = (v41 + 1);
    }

    while (v30 > v41);
    v36 = v46;
    v35 = v47;
    v14 = v49;
    v15 = v48;
    v40 = v43;
    v39 = v42;
    v37 = v45;
    v38 = v44;
  }

  v58 = (v30 * v29);
  v59 = v13 / v58;
  v60 = *&v34 / v58;
  printf("[U]\tDynamic Range [%6.3f, %6.3f]", v36, v35);
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v14, v15, v59);
  printf("[V]\tDynamic Range [%6.3f, %6.3f]", v40, v39);
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v37, v38, v60);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return (v62 + v59) + v60;
}

float compareCVPixelBuffers(__CVBuffer *a1, __CVBuffer *a2, unint64_t a3, int a4, float a5)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (CVPixelBufferGetPixelFormatType(a1) == 1380411457)
  {
    Width *= 4;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v14 = CVPixelBufferGetBaseAddress(a2);
  v15 = compareBuffersFP16(BaseAddress, v14, Width, Height / a3, a3, BytesPerRow >> 1, a4, a5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v15;
}

float compareBGRAPixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 2139095039;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 2139095039;
  if (Height)
  {
    LODWORD(v11) = 0;
    v12 = 4 * (BytesPerRow >> 2);
    do
    {
      if (Width)
      {
        v13 = 0;
        v14 = v8;
        v15 = BaseAddress;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            LOBYTE(v9) = v15[i];
            v9 = *&v9 / 255.0;
            LOBYTE(v10) = v14[i];
            *&v9 = v9;
            v10 = *&v10 / 255.0;
            *&v10 = v10;
            *(&v30 + i) = *(&v30 + i) + ((*&v9 - *&v10) * (*&v9 - *&v10));
            *&v10 = vabds_f32(*&v9, *&v10);
            *(&v26 + i) = fminf(*&v10, *(&v26 + i));
            *(&v28 + i) = fmaxf(*&v10, *(&v28 + i));
            *(&v22 + i) = fminf(*&v9, *(&v22 + i));
            LODWORD(v10) = *(&v24 + i);
            *&v9 = fmaxf(*&v9, *&v10);
            *(&v24 + i) = LODWORD(v9);
          }

          ++v13;
          v15 += 4;
          v14 += 4;
        }

        while (Width > v13);
      }

      v11 = (v11 + 1);
      BaseAddress += v12;
      v8 += v12;
    }

    while (Height > v11);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  for (j = 0; j != 3; ++j)
  {
    v18 = *(&v30 + j) / (Height * Width);
    v21[j] = v18;
    printf("[%d]\tDynamic Range [%6.3f, %6.3f]", j, *(&v22 + j), *(&v24 + j));
    printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", *(&v28 + j), *(&v26 + j), v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return ((v21[0] + v21[1]) + v21[2]) / 3.0;
}

uint64_t checkMemoryLeaks()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = getpid();
  snprintf(__str, 0x1F3uLL, "/usr/bin/leaks %d", v0);
  result = system(__str);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void checkMemoryFootPrint()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = NSUserName();
  if ([v0 isEqualToString:@"root"])
  {
    v1 = getpid();
    snprintf(__str, 0x1F3uLL, "/usr/local/bin/jetsam_priority -p %d", v1);
    system(__str);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t readBuffer(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226536)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v9 = BaseAddress;
    v10 = Width << v7;
    v11 = 1;
    while (fread(v9, 1uLL, v10, a1) == v10)
    {
      v9 += BytesPerRow;
      if (Height <= v11++)
      {
        goto LABEL_8;
      }
    }

    v13 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v13;
}

uint64_t writeBuffer(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Height = CVPixelBufferGetHeight(pixelBuffer);

  return writeBufferWithVerticalOffset(a1, pixelBuffer, 0, Height);
}

uint64_t writeBufferWithVerticalOffset(FILE *a1, CVPixelBufferRef pixelBuffer, unint64_t a3, uint64_t a4)
{
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1380411457)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a4 + a3 <= a3)
  {
    a4 = 0;
  }

  else
  {
    v12 = Width << v10;
    v13 = &BaseAddress[BytesPerRow * a3];
    while (fwrite(v13, 1uLL, v12, a1) == v12)
    {
      v13 += BytesPerRow;
      if (!--a4)
      {
        goto LABEL_13;
      }
    }

    a4 = 0xFFFFFFFFLL;
  }

LABEL_13:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return a4;
}

uint64_t write64RGBAHalf(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 8 * Width;
    v10 = 1;
    do
    {
      fwrite(v8, 1uLL, v9, a1);
      v8 += BytesPerRow;
    }

    while (Height > v10++);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

uint64_t readBGRA(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 4 * Width;
    v10 = 1;
    while (1)
    {
      v11 = 1;
      if (fread(v8, 1uLL, v9, a1) != v9)
      {
        break;
      }

      v8 += BytesPerRow;
      if (Height <= v10++)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v11;
}

uint64_t writeBGRA(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 4 * Width;
    v10 = 1;
    do
    {
      fwrite(v8, 1uLL, v9, a1);
      v8 += BytesPerRow;
    }

    while (Height > v10++);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

CVPixelBufferRef readPNG(uint64_t a1)
{
  v62[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = MEMORY[0x277CBEBC0];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    v4 = [v2 fileURLWithPath:v3];

    v61 = *MEMORY[0x277CBFA30];
    v62[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v6 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v4 options:v5];
    v7 = v6;
    if (!v6)
    {
      NSLog(&cfstr_ReadpngErrorIn.isa);
      PixelBufferExtended = 0;
LABEL_23:

      goto LABEL_24;
    }

    v8 = [v6 properties];
    v9 = [v7 colorSpace];
    v10 = [v8 objectForKeyedSubscript:@"PixelWidth"];
    v11 = [v10 integerValue];

    v12 = [v8 objectForKeyedSubscript:@"PixelHeight"];
    v13 = [v12 integerValue];

    v14 = [v8 objectForKeyedSubscript:@"Depth"];
    v15 = [v14 integerValue];

    if (v15 == 8)
    {
      v16 = 1111970369;
    }

    else
    {
      v16 = 1380411457;
    }

    PixelBufferExtended = CreatePixelBufferExtended(v11, v13, v16, 0, 0);
    if (!PixelBufferExtended)
    {
LABEL_22:

      goto LABEL_23;
    }

    v45 = v8;
    v46 = v5;
    v47 = v4;
    v18 = *MEMORY[0x277CC4C00];
    v19 = *MEMORY[0x277CC4C20];
    v20 = *MEMORY[0x277CC4CC0];
    v59[0] = *MEMORY[0x277CC4C00];
    v59[1] = v20;
    v21 = *MEMORY[0x277CC4CD8];
    v41 = v19;
    v60[0] = v19;
    v60[1] = v21;
    v39 = v21;
    v22 = *MEMORY[0x277CC4D10];
    v59[2] = *MEMORY[0x277CC4D10];
    v40 = *MEMORY[0x277CC4D28];
    v60[2] = *MEMORY[0x277CC4D28];
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v44);
    cf = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    v23 = *MEMORY[0x277CBF478];
    v42 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
    v49 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF470]);
    v48 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF488]);
    Name = CGColorSpaceGetName(v9);
    v25 = v9;
    if (Name && CFEqual(Name, *MEMORY[0x277CBF4B8]))
    {
      v57[0] = v18;
      v57[1] = v20;
      v26 = *MEMORY[0x277CC4D08];
      v58[0] = v41;
      v58[1] = v26;
      v57[2] = v22;
      v58[2] = v40;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
    }

    else
    {
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      v29 = [v28 pathExtension];
      if ([v29 isEqual:@"png"])
      {
        v30 = CGColorSpaceEqualToColorSpace();

        if ((v30 & 1) == 0)
        {
          v25 = v9;
          v31 = ColorSpaceFromAttachments;
          if (CGColorSpaceGetName(v9) == v23 || CGColorSpaceEqualToColorSpace())
          {
            v32 = *MEMORY[0x277CC4C18];
            v53[0] = v18;
            v53[1] = v20;
            v33 = *MEMORY[0x277CC4CD0];
            v54[0] = v32;
            v54[1] = v33;
            v53[2] = v22;
            v54[2] = *MEMORY[0x277CC4D18];
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
          }

          else
          {
            if ((CGColorSpaceEqualToColorSpace() & 1) == 0 && !CGColorSpaceEqualToColorSpace())
            {
              goto LABEL_21;
            }

            v51[0] = v18;
            v51[1] = v20;
            v52[0] = v41;
            v52[1] = v39;
            v51[2] = v22;
            v52[2] = v40;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
            v25 = ColorSpaceFromAttachments;
          }

LABEL_20:
          CMSetAttachments(PixelBufferExtended, v27, 1u);

LABEL_21:
          v36 = [MEMORY[0x277CBF740] context];
          [v7 extent];
          [v36 render:v7 toCVPixelBuffer:PixelBufferExtended bounds:v25 colorSpace:?];
          CFRelease(cf);
          CFRelease(v42);
          CFRelease(v49);
          CFRelease(v48);
          CFRelease(v31);

          v5 = v46;
          v4 = v47;
          v8 = v45;
          goto LABEL_22;
        }
      }

      else
      {
      }

      v34 = *MEMORY[0x277CC4C30];
      v55[0] = v18;
      v55[1] = v20;
      v35 = *MEMORY[0x277CC4D08];
      v56[0] = v34;
      v56[1] = v35;
      v55[2] = v22;
      v56[2] = *MEMORY[0x277CC4D20];
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
      v25 = v9;
    }

    v31 = ColorSpaceFromAttachments;
    goto LABEL_20;
  }

  NSLog(&cfstr_ReadpngErrorFi.isa);
  PixelBufferExtended = 0;
LABEL_24:
  v37 = *MEMORY[0x277D85DE8];
  return PixelBufferExtended;
}

void writePNG(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v18 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v5 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v6 = [v5 intValue];

  v7 = CMGetAttachment(pixelBuffer, *MEMORY[0x277CC4CC0], 0);
  v8 = CMGetAttachment(pixelBuffer, *MEMORY[0x277CC4C00], 0);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (CFStringCompare(v8, *MEMORY[0x277CC0260], 0) == kCFCompareEqualTo)
  {
    v10 = MEMORY[0x277CBF3E0];
LABEL_9:
    DeviceRGB = CGColorSpaceCreateWithName(*v10);
    goto LABEL_10;
  }

  if (CFStringCompare(v7, *MEMORY[0x277CC04D0], 0) == kCFCompareEqualTo)
  {
    v10 = MEMORY[0x277CBF478];
    goto LABEL_9;
  }

  if (CFStringCompare(v7, *MEMORY[0x277CC4CD8], 0) == kCFCompareEqualTo)
  {
    v10 = MEMORY[0x277CBF488];
    goto LABEL_9;
  }

LABEL_5:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
LABEL_10:
  v11 = DeviceRGB;
  v12 = MEMORY[0x277CBF9C8];
  if (v6 != 8 && CGColorSpaceGetName(DeviceRGB) != *MEMORY[0x277CBF488])
  {
    v12 = MEMORY[0x277CBF9C0];
  }

  v13 = *v12;
  v14 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:pixelBuffer options:0];
  v15 = [MEMORY[0x277CBF740] context];
  v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v17 = [v15 PNGRepresentationOfImage:v14 format:v13 colorSpace:v11 options:v16];
  CFRelease(v11);
  fwrite([v17 bytes], 1uLL, objc_msgSend(v17, "length"), a1);
}

uint64_t readData32(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (4 * a3 * a4 == fread(__ptr, 1uLL, 4 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL isSameFormat(__CVBuffer *a1, __CVBuffer *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
      {
        return 0;
      }
    }
  }

  return result;
}

void writeGrayscaledTiff(FILE *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v5 = *MEMORY[0x277CBF988];
  v12 = *MEMORY[0x277CBFA40];
  v13[0] = DeviceGray;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a2 options:v6];
  v8 = [MEMORY[0x277CBF740] context];
  v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v10 = [v8 TIFFRepresentationOfImage:v7 format:v5 colorSpace:DeviceGray options:v9];
  CFRelease(DeviceGray);
  fwrite([v10 bytes], 1uLL, objc_msgSend(v10, "length"), a1);

  v11 = *MEMORY[0x277D85DE8];
}

size_t OUTLINED_FUNCTION_3(void *a1)
{

  return fread(a1, 4uLL, 1uLL, v1);
}

void VEFrameRateConversionParameters.init(sourceFrame:nextFrame:opticalFlow:interpolationPhase:submissionMode:destinationFrames:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_270C7304C(a4);
  sub_270C730F4(0, &qword_2808549F8, 0x277CCABB0);
  v11 = sub_270C7506C();

  sub_270C730F4(0, &qword_280854A00, off_279E16E08);
  v12 = sub_270C7506C();
  v13 = [v10 initWithSourceFrame:a1 nextFrame:a2 opticalFlow:a3 interpolationPhase:v11 submissionMode:a5 destinationFrames:v12];

  if (v13)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_270C7304C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_270C750CC();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_270C7508C();
      sub_270C750AC();
      v6 = *(v7 + 16);
      sub_270C750DC();
      sub_270C750EC();
      sub_270C750BC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_270C730F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *VEFrameRateConversionParameters.interpolationPhase.getter()
{
  v1 = [v0 interpolationPhase];
  sub_270C730F4(0, &qword_2808549F8, 0x277CCABB0);
  v2 = sub_270C7507C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_270C750FC();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_270C732D0(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743B3AD0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 floatValue];
      v10 = v9;

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_270C732D0((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v12 + 1;
      *(v13 + 4 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

char *sub_270C732D0(char *a1, int64_t a2, char a3)
{
  result = sub_270C732F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_270C732F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280854A08, &qword_270C762E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void errorMessage_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270C6A000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

vm_size_t getUsedMemorySize()
{
  bzero(v11, 0xA0uLL);
  v10 = 0;
  v0 = MEMORY[0x2743B3ED0]();
  if (host_page_size(v0, &v10) || OUTLINED_FUNCTION_2(0, v1, v2, v3, v4, v5, v6, v7, v9, HIDWORD(v9), v10, v11[0]))
  {
    return 0;
  }

  else
  {
    return (v10 * (v11[3] + v11[35] + v11[32])) >> 20;
  }
}

vm_size_t getUsableMemorySize()
{
  bzero(v11, 0xA0uLL);
  v10 = 0;
  v0 = MEMORY[0x2743B3ED0]();
  if (host_page_size(v0, &v10) || OUTLINED_FUNCTION_2(0, v1, v2, v3, v4, v5, v6, v7, v9, HIDWORD(v9), v10, v11[0]))
  {
    return 0;
  }

  else
  {
    return (v10 * (v11[2] + v11[0])) >> 20;
  }
}

BOOL isMemoryAvailableForVSA(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = memoryUsageTabVSA[3 * a3 - 1 + a4];
  v6 = OUTLINED_FUNCTION_0_0();
  return OUTLINED_FUNCTION_1_0(v6);
}

BOOL isMemoryAvailableForFRC(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = memoryUsageTabFRC[3 * a3 - 1 + a4];
  v6 = OUTLINED_FUNCTION_0_0();
  return OUTLINED_FUNCTION_1_0(v6);
}

BOOL isMemoryAvailableForOpticalFlow(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = a4 - 4;
  if (a3 != -1)
  {
    if (a3 != 1 || v4 < 0xFFFFFFFD)
    {
      return 0;
    }

    v6 = &memoryUsageTabOpticalFlow + 8 * a4 + 16;
LABEL_10:
    v7 = *v6;
    v8 = OUTLINED_FUNCTION_0_0();
    return OUTLINED_FUNCTION_1_0(v8);
  }

  if (v4 >= 0xFFFFFFFD)
  {
    v6 = &memoryUsageTabOpticalFlow + 8 * a4 - 8;
    goto LABEL_10;
  }

  return 0;
}

BOOL isMemoryAvailableForVSR(unsigned int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = &dword_270C76264;
  v6 = 11;
  while (1)
  {
    v7 = *(v5 - 1);
    if (v7 >= a1 && *v5 >= a2)
    {
      break;
    }

    v5 += 2;
    if (!--v6)
    {
      v8 = 57600.0;
      goto LABEL_12;
    }
  }

  v8 = (*v5 * v7);
LABEL_12:
  v9 = (((v8 / 1440.0) / 1080.0) * memoryUsageTabVSR[3 * a3 - 1 + a4]) * 1.1;
  UsableMemorySize = getUsableMemorySize();
  return OUTLINED_FUNCTION_1_0(UsableMemorySize);
}

BOOL isMemoryAvailableForISR(unsigned int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = &dword_270C76264;
  v6 = 11;
  do
  {
    if (*(v5 - 1) >= a1 && *v5 >= a2)
    {
      break;
    }

    v5 += 2;
    --v6;
  }

  while (v6);
  UsableMemorySize = getUsableMemorySize();
  return OUTLINED_FUNCTION_1_0(UsableMemorySize);
}

void loadTextureArray(FILE *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = a2;
  v9 = malloc_type_malloc(2 * a3 * a4 * a5, 0x1000040BDFB0063uLL);
  if (v9)
  {
    v10 = v9;
    fread(v9, 1uLL, 2 * a3 * a4 * a5, a1);
    loadTexture(v10, v11, a3, a4, a5);
    free(v10);
  }
}

void saveTextureArray(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 width];
  v5 = [v3 height];
  v6 = [v3 arrayLength];
  v7 = [v3 width];
  v8 = [v3 height] * v7;
  if ([v3 pixelFormat] == 55)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = v8 << v9;
  OUTLINED_FUNCTION_2_0();
  v21 = malloc_type_malloc(v11, v12);
  if (v21)
  {
    v19 = a1;
    if (v6)
    {
      v13 = 0;
      v14 = 1;
      v15 = v21;
      do
      {
        memset(v22, 0, 24);
        v22[3] = v4;
        v22[4] = v5;
        v22[5] = 1;
        [v3 getBytes:v15 bytesPerRow:v4 << v9 bytesPerImage:(v5 * v4) << v9 fromRegion:v22 mipmapLevel:0 slice:{v13, v19}];
        v15 += v10;
        v13 = v14;
      }

      while (v6 > v14++);
    }

    v17 = [v3 pixelFormat];
    v18 = 1;
    if (v17 == 55)
    {
      v18 = 2;
    }

    fwrite(v21, 1uLL, ((v6 * v5) << v18) * v4, v20);
    free(v21);
  }
}

CVPixelBufferRef create420vBufferFromFile(void *a1, FILE *a2, size_t a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (v5)
  {
    PixelBufferExtended = CreatePixelBufferExtended(a2, a3, 875704422, 0, 0);
    if (PixelBufferExtended && fopen([v5 UTF8String], "rb"))
    {
      OUTLINED_FUNCTION_7();
      readYUVPlanar(v7, v8);
      fclose(a2);
      v9 = *MEMORY[0x277CC4C20];
      v10 = *MEMORY[0x277CC4CC0];
      v15[0] = *MEMORY[0x277CC4C00];
      v15[1] = v10;
      v11 = *MEMORY[0x277CC4CD8];
      v16[0] = v9;
      v16[1] = v11;
      v15[2] = *MEMORY[0x277CC4D10];
      v16[2] = *MEMORY[0x277CC4D28];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
      CMSetAttachments(PixelBufferExtended, v12, 1u);
    }
  }

  else
  {
    PixelBufferExtended = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return PixelBufferExtended;
}

uint64_t readYUVPlanar(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = OUTLINED_FUNCTION_0_1();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, v7);
  v9 = OUTLINED_FUNCTION_4();
  v11 = CVPixelBufferGetBytesPerRowOfPlane(v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = malloc_type_malloc((Height * Width) >> 1, v12);
  if (!v13)
  {
    return 1;
  }

  v35 = v13;
  v14 = OUTLINED_FUNCTION_0_1();
  CVPixelBufferLockBaseAddress(v14, v15);
  v16 = OUTLINED_FUNCTION_0_1();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v16, v17);
  v19 = OUTLINED_FUNCTION_4();
  v21 = CVPixelBufferGetBaseAddressOfPlane(v19, v20);
  if (Height)
  {
    v22 = 1;
    while (1)
    {
      v23 = 1;
      if (fread(BaseAddressOfPlane, 1uLL, Width, a1) != Width)
      {
        break;
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      if (Height <= v22++)
      {
        goto LABEL_6;
      }
    }

    v25 = v35;
  }

  else
  {
LABEL_6:
    v23 = 1;
    v25 = v35;
    if (fread(v35, 1uLL, (Height * Width) >> 1, a1) == (Height * Width) >> 1)
    {
      if (Height >= 2)
      {
        LODWORD(v26) = 0;
        v27 = Width >> 1;
        v28 = v35;
        v29 = &v35[(Height * Width) >> 2];
        do
        {
          if (Width >= 2)
          {
            v30 = 0;
            v31 = 1;
            do
            {
              v21[v31 - 1] = v28[v30];
              v21[v31] = v29[v30++];
              v31 += 2;
            }

            while (v27 > v30);
          }

          v28 += v27;
          v29 += v27;
          v21 += v11;
          v26 = (v26 + 1);
        }

        while (Height >> 1 > v26);
      }

      v23 = 0;
    }
  }

  v32 = OUTLINED_FUNCTION_0_1();
  CVPixelBufferUnlockBaseAddress(v32, v33);
  free(v25);
  return v23;
}

CVPixelBufferRef createOpticalFlowFromFile(void *a1, FILE *a2)
{
  v3 = a1;
  OUTLINED_FUNCTION_5();
  PixelBufferExtended = CreatePixelBufferExtended(v4, v5, v6, v7, 0);
  if (PixelBufferExtended && fopen([v3 UTF8String], "rb"))
  {
    OUTLINED_FUNCTION_7();
    readBuffer(v9, v10);
    fclose(a2);
  }

  return PixelBufferExtended;
}

CVPixelBufferRef createOpticalFlowTwoComponentFromFile(void *a1, FILE *a2, size_t a3)
{
  v5 = a1;
  PixelBuffer = createPixelBuffer(a2, a3, 0x32433068u, 0);
  if (PixelBuffer && fopen([v5 UTF8String], "rb"))
  {
    OUTLINED_FUNCTION_7();
    readBufferInterleaved(v7, v8, 2u);
    fclose(a2);
  }

  return PixelBuffer;
}

uint64_t readBufferInterleaved(FILE *a1, CVPixelBufferRef pixelBuffer, unsigned int a3)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v9 = malloc_type_malloc(2 * a3 * Width * Height, 0x7CA828DEuLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fread(v9, 1uLL, 2 * a3 * Width * Height, a1) > 2 * a3 * Width * Height)
  {
    free(v10);
    return 0xFFFFFFFFLL;
  }

  v12 = OUTLINED_FUNCTION_0_1();
  CVPixelBufferLockBaseAddress(v12, v13);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3 == 2)
  {
    if (Height)
    {
      LODWORD(v15) = 0;
      v16 = &v10[2 * Height * (Width & 0x7FFFFFFFFFFFFFFFLL)];
      v17 = 2 * Width;
      v18 = v10;
      do
      {
        if (Width)
        {
          v19 = 0;
          do
          {
            *(BaseAddress + v19) = *&v18[2 * v19] | (*&v16[2 * v19] << 16);
            ++v19;
          }

          while (Width > v19);
        }

        v15 = (v15 + 1);
        BaseAddress = (BaseAddress + 4 * (BytesPerRow >> 2));
        v16 += v17;
        v18 += v17;
      }

      while (Height > v15);
    }
  }

  else
  {
    interleave4(v10, BaseAddress, Width, Height, 2 * Width, BytesPerRow);
  }

  v20 = OUTLINED_FUNCTION_0_1();
  CVPixelBufferUnlockBaseAddress(v20, v21);
  free(v10);
  return 0;
}

uint64_t writeBufferFlt32(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v7 = OUTLINED_FUNCTION_0_1();
  CVPixelBufferLockBaseAddress(v7, v8);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  OUTLINED_FUNCTION_1_1();
  v11 = malloc_type_malloc(4 * Width, v10);
  if (v11)
  {
    v12 = v11;
    if (!Height)
    {
LABEL_10:
      free(v12);
      v21 = OUTLINED_FUNCTION_0_1();
      CVPixelBufferUnlockBaseAddress(v21, v22);
      return 0;
    }

    LODWORD(v13) = 0;
    while (1)
    {
      if (Width)
      {
        for (i = 0; i != Width; ++i)
        {
          _H0 = *&BaseAddress[2 * i];
          __asm { FCVT            S0, H0 }

          *(v12 + i) = _S0;
        }
      }

      if (fwrite(v12, 1uLL, 4 * Width, a1) != 4 * Width)
      {
        break;
      }

      BaseAddress += BytesPerRow;
      v13 = (v13 + 1);
      if (Height <= v13)
      {
        goto LABEL_10;
      }
    }

    v24 = OUTLINED_FUNCTION_0_1();
    CVPixelBufferUnlockBaseAddress(v24, v25);
    free(v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t writeBufferInterleaved(FILE *a1, CVPixelBufferRef pixelBuffer, unsigned int a3, unsigned int a4)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v31 = a3;
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v8 = Height / a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v10 = v8 * Width;
  v34 = (v8 * Width * a4) << (a4 != 3);
  __ptr = malloc_type_malloc(v34, 0x24314AE8uLL);
  if (!__ptr)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = OUTLINED_FUNCTION_6();
  CVPixelBufferLockBaseAddress(v11, v12);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3)
  {
    v33 = a3;
    v15 = 0;
    while (1)
    {
      v37 = BaseAddress;
      if (a4 == 2)
      {
        if (Height >= v31)
        {
          LODWORD(v16) = 0;
          v17 = __ptr;
          v18 = BaseAddress;
          do
          {
            if (Width)
            {
              v19 = 0;
              do
              {
                v20 = *(v18 + v19);
                v17[v19] = v20;
                v17[v19 + v8 * (Width & 0x7FFFFFFFFFFFFFFFLL)] = HIWORD(v20);
                ++v19;
              }

              while (Width > v19);
            }

            v18 = (v18 + 4 * (BytesPerRow >> 2));
            v17 += Width;
            v16 = (v16 + 1);
          }

          while (v8 > v16);
        }
      }

      else if (a4 == 3)
      {
        if (Height >= v31)
        {
          LODWORD(v21) = 0;
          v22 = __ptr;
          v23 = BaseAddress;
          do
          {
            if (Width)
            {
              v24 = 0;
              do
              {
                v25 = *(v23 + v24);
                v26 = v22 + v24;
                *v26 = v25;
                v26[v10] = BYTE1(v25);
                v26[2 * v10] = BYTE2(v25);
                ++v24;
              }

              while (Width > v24);
            }

            v23 = (v23 + BytesPerRow);
            v22 = (v22 + Width);
            v21 = (v21 + 1);
          }

          while (v8 > v21);
        }
      }

      else
      {
        deinterleave4(BaseAddress, __ptr, Width, v8, v14, 2 * Width);
      }

      if (fwrite(__ptr, 1uLL, v34, a1) != v34)
      {
        break;
      }

      BaseAddress = (v37 + BytesPerRow * v8);
      if (++v15 == v33)
      {
        v27 = 0;
        goto LABEL_25;
      }
    }

    v27 = 0xFFFFFFFFLL;
  }

  else
  {
    v27 = 0;
  }

LABEL_25:
  v28 = OUTLINED_FUNCTION_6();
  CVPixelBufferUnlockBaseAddress(v28, v29);
  free(__ptr);
  return v27;
}

BOOL writeYUVPlanar(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = (Height * Width) >> 1;
  OUTLINED_FUNCTION_2_0();
  v8 = malloc_type_malloc(v6, v7);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = OUTLINED_FUNCTION_0_1();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v10, v11);
  v13 = OUTLINED_FUNCTION_4();
  v15 = CVPixelBufferGetBytesPerRowOfPlane(v13, v14);
  v16 = OUTLINED_FUNCTION_4();
  CVPixelBufferLockBaseAddress(v16, v17);
  v18 = OUTLINED_FUNCTION_0_1();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v18, v19);
  v21 = OUTLINED_FUNCTION_4();
  v23 = CVPixelBufferGetBaseAddressOfPlane(v21, v22);
  if (Height)
  {
    v24 = v23;
    v25 = 0;
    v26 = 1;
    do
    {
      if (fwrite(&BaseAddressOfPlane[v25 * BytesPerRowOfPlane], 1uLL, Width, a1) != Width)
      {
        v34 = 1;
        goto LABEL_14;
      }

      v25 = v26;
    }

    while (Height > v26++);
    v6 = (Height * Width) >> 1;
    if (Height != 1)
    {
      LODWORD(v28) = 0;
      v29 = Width >> 1;
      v30 = v9;
      v31 = &v9[(Height * Width) >> 2];
      do
      {
        if (Width >= 2)
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v30[v32] = v24[v33 - 1];
            v31[v32++] = v24[v33];
            v33 += 2;
          }

          while (v29 > v32);
        }

        v30 += v29;
        v31 += v29;
        v24 += v15;
        v28 = (v28 + 1);
      }

      while (Height >> 1 > v28);
    }
  }

  v34 = fwrite(v9, 1uLL, v6, a1) != v6;
LABEL_14:
  v35 = OUTLINED_FUNCTION_4();
  CVPixelBufferUnlockBaseAddress(v35, v36);
  free(v9);
  return v34;
}

CVPixelBufferRef createTensorBufferFlowFromFile(void *a1, uint64_t a2, FILE *a3)
{
  v4 = a1;
  OUTLINED_FUNCTION_5();
  PixelBuffer = createPixelBuffer(v5, v6, v7, v8);
  if (PixelBuffer && fopen([v4 UTF8String], "rb"))
  {
    OUTLINED_FUNCTION_7();
    readBuffer(v10, v11);
    fclose(a3);
  }

  return PixelBuffer;
}

__CVBuffer *readFlo(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v39 = 0.0;
  v37 = 0;
  v38 = 0;
  if (!OUTLINED_FUNCTION_3(&v39))
  {
    goto LABEL_22;
  }

  if (v39 != 202020.0)
  {
    printf("Invalid .flo file");
  }

  if (OUTLINED_FUNCTION_3(&v38) && OUTLINED_FUNCTION_3(&v37))
  {
    v4 = v37;
    v3 = v38;
    v5 = 2 * v37;
    OUTLINED_FUNCTION_5();
    PixelBuffer = createPixelBuffer(v6, v7, v8, v9);
    v11 = PixelBuffer;
    if (PixelBuffer)
    {
      v12 = CVPixelBufferGetBytesPerRow(PixelBuffer) >> 1;
      v13 = v5 * v12;
      __src = malloc_type_malloc(v13, 0x1000040BDFB0063uLL);
      if (__src)
      {
        v35 = malloc_type_malloc(v13, 0x1000040BDFB0063uLL);
        if (v35)
        {
          __n = v13;
          v34 = v11;
          if (v4)
          {
            v14 = 0;
            v15 = 2 * v12;
            v17 = v35;
            v16 = __src;
            while (!v3)
            {
LABEL_17:
              ++v14;
              v17 = (v17 + v15);
              v16 = (v16 + v15);
              if (v14 == v4)
              {
                goto LABEL_18;
              }
            }

            v18 = v3;
            v19 = v16;
            v20 = v17;
            while (OUTLINED_FUNCTION_3(&v39))
            {
              _S0 = v39;
              __asm { FCVT            H0, S0 }

              *v19 = LOWORD(_S0);
              if (!OUTLINED_FUNCTION_3(&v39))
              {
                break;
              }

              _S0 = v39;
              __asm { FCVT            H0, S0 }

              *v20++ = LOWORD(_S0);
              ++v19;
              if (!--v18)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_18:
            v27 = OUTLINED_FUNCTION_6();
            CVPixelBufferLockBaseAddress(v27, v28);
            BaseAddress = CVPixelBufferGetBaseAddress(v34);
            memcpy(BaseAddress, __src, __n);
            memcpy(&BaseAddress[__n], v35, __n);
            v30 = OUTLINED_FUNCTION_6();
            CVPixelBufferUnlockBaseAddress(v30, v31);
          }

          free(__src);
          v11 = v34;
          free(v35);
        }

        else
        {
          free(__src);
        }
      }
    }
  }

  else
  {
LABEL_22:
    v11 = 0;
  }

  fclose(v2);
  return v11;
}

_DWORD *writeFlo(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v29 = CVPixelBufferGetHeight(pixelBuffer) >> 1;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  __ptr = 1212500304;
  fwrite(&__ptr, 1uLL, 4uLL, a1);
  fwrite(&Width, 4uLL, 1uLL, a1);
  fwrite(&v29, 4uLL, 1uLL, a1);
  v5 = OUTLINED_FUNCTION_0_1();
  CVPixelBufferLockBaseAddress(v5, v6);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v8 = v29;
  OUTLINED_FUNCTION_1_1();
  result = malloc_type_malloc(v9, v10);
  if (result)
  {
    v12 = result;
    if (v29)
    {
      v13 = 0;
      v14 = &BaseAddress[v8 * BytesPerRow];
      do
      {
        v15 = Width;
        if (Width)
        {
          v16 = 0;
          v17 = v12 + 1;
          do
          {
            _H0 = *&BaseAddress[2 * v16];
            __asm { FCVT            S0, H0 }

            _H1 = *&v14[2 * v16];
            __asm { FCVT            S1, H1 }

            *(v17 - 1) = _S0;
            *v17 = _S1;
            ++v16;
            v17 += 2;
          }

          while (v15 != v16);
        }

        fwrite(v12, 1uLL, 8 * v15, a1);
        BaseAddress += BytesPerRow;
        v14 += BytesPerRow;
        ++v13;
      }

      while (v29 > v13);
    }

    free(v12);
    v26 = OUTLINED_FUNCTION_0_1();
    return CVPixelBufferUnlockBaseAddress(v26, v27);
  }

  return result;
}

void saveTextureBufferFlt32(FILE *a1, void *a2, uint64_t a3, unint64_t a4, float a5)
{
  v16 = a2;
  v9 = [v16 contents];
  v10 = 4 * a3;
  OUTLINED_FUNCTION_1_1();
  v12 = malloc_type_malloc(4 * a3, v11);
  if (v12)
  {
    v13 = v12;
    if (a4)
    {
      LODWORD(v14) = 0;
      while (1)
      {
        if (a3)
        {
          v15 = 0;
          do
          {
            v13[v15] = *(v9 + 4 * v15) * a5;
            ++v15;
          }

          while (a3 != v15);
        }

        if (fwrite(v13, 1uLL, 4 * a3, a1) != v10)
        {
          break;
        }

        v9 += v10;
        v14 = (v14 + 1);
        if (v14 >= a4)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      free(v13);
    }
  }
}
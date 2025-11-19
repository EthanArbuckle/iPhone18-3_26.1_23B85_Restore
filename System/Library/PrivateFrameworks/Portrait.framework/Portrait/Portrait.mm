void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void SetEspressoArray(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[11] * a1[10];
  if (v5 == [v3 count])
  {
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [v3 objectAtIndexedSubscript:i];
        [v7 floatValue];
        *(v4 + 4 * i) = v8;
      }
    }
  }

  else
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetEspressoArray_cold_1(v3, v5);
    }
  }
}

id CopyEspressoArray(int **a1)
{
  v1 = *a1;
  v2 = a1[11] * a1[10];
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  {
    v5 = *v1++;
    LODWORD(v4) = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [i addObject:v6];
  }

  v7 = [i copy];

  return v7;
}

void _DebugLogEspressoBufferRow(void *a1, unint64_t a2)
{
  if (a1[11] <= a2)
  {
    _DebugLogEspressoBufferRow_cold_1();
  }

  v2 = _CSVStringForFloats(*a1 + 4 * a1[10] * a2, 1, a1[10]);
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    _DebugLogEspressoBufferRow_cold_2();
  }
}

id _CSVStringForFloats(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = objc_opt_new();
  if (a3)
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        [v6 appendString:{@", "}];
      }

      [v6 appendFormat:@"%g", *(a1 + 4 * v7)];
      v7 += a2;
    }

    while (v7 < a3);
  }

  return v6;
}

void purgeMetalDevice(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();
  v3 = _PTLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      purgeMetalDevice_cold_2(v4);
    }

    [v1 _purgeDevice];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      purgeMetalDevice_cold_1(v4, v5, v6);
    }
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1, void *a2)
{

  return [a2 length];
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

double std::normal_distribution<double>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v8 = (v7 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v9 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v10 = (v9 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v11 = v10 * v10 + v8 * v8;
      }

      while (v11 > 1.0);
    }

    while (v11 == 0.0);
    v12 = sqrt(log(v10 * v10 + v8 * v8) * -2.0 / v11);
    *(a1 + 16) = v10 * v12;
    *(a1 + 24) = 1;
    v5 = v8 * v12;
  }

  return *a3 + v5 * a3[1];
}

uint64_t std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(int a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t PTThreadTimeGet()
{
  v5 = 0;
  *thread_info_out = 0u;
  v4 = 0u;
  thread_info_outCnt = 10;
  v0 = MEMORY[0x22AA4FD30]();
  if (thread_info(v0, 3u, thread_info_out, &thread_info_outCnt))
  {
    return -1;
  }

  else
  {
    return thread_info_out[1] + 1000000 * thread_info_out[0];
  }
}

id AssetReaderError(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = a1;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v1 errorWithDomain:@"com.apple.Portrait.AssetReader" code:-1 userInfo:v4];

  return v5;
}

id loadTracksWithMediaType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __loadTracksWithMediaType_block_invoke;
  v9[3] = &unk_278522F00;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [v3 loadTracksWithMediaType:v4 completionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void sub_22440FD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *StringFromTimeRange(_OWORD *a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = a1[1];
  *&v5.start.value = *a1;
  *&v5.start.epoch = v2;
  *&v5.duration.timescale = a1[2];
  v3 = CMTimeRangeCopyDescription(v1, &v5);

  return v3;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __loadTracksWithMediaType_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __loadTracksWithMediaType_block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __loadMetadataForFormat_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __loadMetadataForFormat_block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t PTParameterPairSerialization_GetParameter(uint64_t a1, unsigned int a2, int a3, int a4, float *a5)
{
  v5 = a3;
  if (a2)
  {
    v7 = a2;
    v8 = (a1 + 4);
    while (a3 != bswap32(*(v8 - 2)) >> 16)
    {
      v8 += 2;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    if (a4 == 1)
    {
      Float = _PTSwapBigGetFloat(v8);
    }

    else
    {
      Float = COERCE_FLOAT(bswap32(*v8));
    }

    *a5 = Float;
    return 1;
  }

  else
  {
LABEL_5:
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      PTParameterPairSerialization_GetParameter_cold_1(v5, v9);
    }

    return 0;
  }
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t PTGroupIDFromFTTrack(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 objectForKeyedSubscript:@"GroupID"];

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

void OUTLINED_FUNCTION_3_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id _PTLogSystem()
{
  if (_PTLogSystem_onceToken != -1)
  {
    _PTLogSystem_cold_1();
  }

  v1 = _PTLogSystem_log;

  return v1;
}

uint64_t CanTriggerTwoHandReaction(void *a1, void *a2, float a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 type];
  if (v7 != [v5 type])
  {
    goto LABEL_4;
  }

  v8 = [v5 confidence];
  [v8 floatValue];
  if (v9 >= a3)
  {
  }

  else
  {
    v10 = [v6 confidence];
    [v10 floatValue];
    v12 = v11;

    if (v12 < a3)
    {
LABEL_4:
      LOBYTE(v13) = 0;
      goto LABEL_16;
    }
  }

  v14 = [v5 confidence];
  [v14 floatValue];
  if (v15 < a3 && (v16 = [v5 fpMitigation], v16 < 8) && ((0xD9u >> v16) & 1) != 0)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v17 = [v6 confidence];
    [v17 floatValue];
    if (v18 >= a3 || (v19 = [v6 fpMitigation], v19 > 7))
    {
      LOBYTE(v13) = 1;
    }

    else
    {
      v13 = 0x26u >> v19;
    }
  }

LABEL_16:
  return v13 & 1;
}

float GetDurationMilliseconds(CMTime *a1, CMTime *a2)
{
  lhs = *a2;
  v3 = *a1;
  CMTimeSubtract(&time, &lhs, &v3);
  return CMTimeGetSeconds(&time) * 1000.0;
}

CFDictionaryRef PTCinematographyDictionaryFromCMTime(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v7 = v1;
    v8 = v2;
    v5 = *MEMORY[0x277CBECE8];
    v6 = *a1;
    v3 = CMTimeCopyAsDictionary(&v6, v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PTCinematographyDictionaryFromCGRect(double a1, double a2, double a3, double a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"x";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v14[0] = v7;
  v13[1] = @"y";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v14[1] = v8;
  v13[2] = @"w";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v14[2] = v9;
  v13[3] = @"h";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

double CGRectFromPTCinematographyDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"x"];
  [v2 doubleValue];
  v4 = v3;

  v5 = [v1 objectForKeyedSubscript:@"y"];
  [v5 doubleValue];

  v6 = [v1 objectForKeyedSubscript:@"w"];
  [v6 doubleValue];

  v7 = [v1 objectForKeyedSubscript:@"h"];

  [v7 doubleValue];
  return v4;
}

CMTime *OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CMTimeMake(&a9, 1, 3);
}

__n128 OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12, unint64_t a13)
{
  result = a12;
  v13[1].n128_u64[0] = a13;
  *v13 = a12;
  return result;
}

__CFString *NSStringFromCMTime(CMTime *a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v4 = *a1;
  v2 = CMTimeCopyDescription(v1, &v4);

  return v2;
}

float __vfx_script_balloons_graph_159(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_balloons_graph_160(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

uint64_t __vfx_script_balloons_graph_163(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(result + 24);
  v3 = *(result + 40);
  v4 = *(result + 72);
  v5 = *(result + 96);
  v6 = **(result + 16);
  v7 = **(result + 32);
  v8 = **(result + 64);
  v9 = **(result + 80);
  v10 = **(result + 88);
  LOBYTE(v11) = **(result + 56);
  **(result + 8) = **result;
  *v2 = v6;
  *v3 = v7;
  *v4 = vdup_n_s32((v11 * v8));
  v12 = 0.0;
  if (((HIDWORD(v9) & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E)
  {
    v12 = (*&v9 / *(&v9 + 1)) * 0.25;
  }

  v13 = *&v9 <= *(&v9 + 1);
  v14 = 0.25;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = *v5;
  *&v15 = v14;
  *(v5 + 2) = v10;
  *v5 = v15;
  return result;
}

_DWORD **__vfx_script_balloons_graph_166(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  *result[1] = **result;
  return result;
}

int32x2_t __vfx_script_balloons_graph_169(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v3 = *arguments_buffer_delayInitStub;
  v2 = *(arguments_buffer_delayInitStub + 8);
  v4 = *(arguments_buffer_delayInitStub + 16);
  v5 = *(arguments_buffer_delayInitStub + 24);
  v6 = *(arguments_buffer_delayInitStub + 32);
  v7 = *(arguments_buffer_delayInitStub + 40);
  v8 = *(arguments_buffer_delayInitStub + 48);
  v9 = *(arguments_buffer_delayInitStub + 56);
  v10 = *(arguments_buffer_delayInitStub + 64);
  v11 = *(arguments_buffer_delayInitStub + 72);
  v12 = *(arguments_buffer_delayInitStub + 80);
  v13 = *(arguments_buffer_delayInitStub + 88);
  v14 = *(arguments_buffer_delayInitStub + 96);
  v15 = *v4;
  v16 = *v6;
  v17 = *v8;
  v18 = *v11;
  v19 = *v12;
  v20 = *v13;
  LODWORD(v3) = 277803737 * (((747796405 * *v3 + 673953854) >> (((747796405 * *v3 + 673953854) >> 28) + 4)) ^ (747796405 * *v3 + 673953854));
  v21 = (((COERCE_FLOAT((v3 >> 31) ^ (v3 >> 9) | 0x3F800000) + -1.0) * 6.0) + 0.0);
  v22 = *&v17 / *(&v17 + 1);
  if (((HIDWORD(v17) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F)
  {
    v22 = 0.0;
  }

  v23 = *&v17 <= *(&v17 + 1);
  v24 = 1.0;
  if (!v23)
  {
    v24 = v22;
  }

  __asm { FMOV            V3.4S, #1.0 }

  *&_Q3 = v24;
  DWORD2(_Q3) = *v9;
  *v2 = v21;
  *v5 = v15;
  *v7 = v16;
  *v10 = _Q3;
  if (v18)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0.0;
  }

  result = vdup_n_s32((v30 * v20));
  *v14 = result;
  return result;
}

double __vfx_script_balloons_graph_170(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = 0.00000133972957;
  **arguments_buffer_delayInitStub = xmmword_2244A56B0;
  return result;
}

_BYTE **__vfx_script_balloons_graph_171(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1;
  return result;
}

float __vfx_script_balloons_graph_172(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 2000.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_balloons_graph_173(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 300.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_balloons_graph_177(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = **(arguments_buffer_delayInitStub + 8);
  inited = vfx_script_clock_simulation_index_delayInitStub(v5);
  v7 = 277803737 * (((747796405 * (v4 + inited) - 1377591464) >> (((747796405 * (v4 + inited) - 1377591464) >> 28) + 4)) ^ (747796405 * (v4 + inited) - 1377591464));
  result = ((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.5) + -0.25;
  *v2 = result;
  *v3 = 0;
  return result;
}

uint64_t __vfx_script_balloons_particleInit_161(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_balloons_particleInit_164(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_balloons_particleInit_167(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_balloons_particleInit_174(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_balloons_particleInit_175(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_balloons_particleUpdate_162(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

__n128 __vfx_script_balloons_particleUpdate_165(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

void __vfx_script_balloons_particleUpdate_168(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_balloons_particleUpdate_176(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_balloons_graph_159_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke()
{
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimation_forKey_ = sel_registerName("addAnimation:forKey:");
  _vfx_objc_sel_removeAllAnimationsWithBlendOutDuration_ = sel_registerName("removeAllAnimationsWithBlendOutDuration:");
  _vfx_objc_sel_removeAnimationForKey_blendOutDuration_ = sel_registerName("removeAnimationForKey:blendOutDuration:");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_insertChildNode_ = sel_registerName("insertChildNode:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_setState_ = sel_registerName("setState:");
  _vfx_objc_sel_setStateNamed_ = sel_registerName("setStateNamed:");
  _vfx_objc_sel_geometryIndex = sel_registerName("geometryIndex");
  _vfx_objc_sel_faceIndex = sel_registerName("faceIndex");
  _vfx_objc_sel_localCoordinates = sel_registerName("localCoordinates");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  _vfx_objc_sel_localNormal = sel_registerName("localNormal");
  _vfx_objc_sel_worldNormal = sel_registerName("worldNormal");
  _vfx_objc_sel_modelTransform = sel_registerName("modelTransform");
  _vfx_objc_sel_boneNode = sel_registerName("boneNode");
  result = sel_registerName("uv0");
  _vfx_objc_sel_uv0 = result;
  return result;
}

void sub_22442F00C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22442FEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PTEffect;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t isExpectedSize(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = *a2;
  if (v7 == [v5 width] && (v8 = a2[1], v8 == objc_msgSend(v5, "height")))
  {
    v9 = 1;
  }

  else
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      isExpectedSize_cold_1();
    }

    v9 = 0;
  }

  return v9;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return [v0 height];
}

uint64_t MediaAnalysisLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = MediaAnalysisLibraryCore_frameworkLibrary;
  v5 = MediaAnalysisLibraryCore_frameworkLibrary;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278523228;
    v7 = *off_278523238;
    v8 = 0;
    v3[3] = _sl_dlopen();
    MediaAnalysisLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_2244379B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MediaAnalysisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaAnalysisLibrary()
{
  v0 = MediaAnalysisLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getVCPHandGestureImageRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPHandGestureImageRequestClass_softClass;
  v7 = getVCPHandGestureImageRequestClass_softClass;
  if (!getVCPHandGestureImageRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVCPHandGestureImageRequestClass_block_invoke;
    v3[3] = &unk_278523280;
    v3[4] = &v4;
    __getVCPHandGestureImageRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_224437B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPHandGestureImageRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPHandGestureImageRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPHandGestureImageRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVCPHandGestureImageRequestClass_block_invoke_cold_1();
    return getVCPHandGestureVideoRequestClass(v3);
  }

  return result;
}

id getVCPHandGestureVideoRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPHandGestureVideoRequestClass_softClass;
  v7 = getVCPHandGestureVideoRequestClass_softClass;
  if (!getVCPHandGestureVideoRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVCPHandGestureVideoRequestClass_block_invoke;
    v3[3] = &unk_278523280;
    v3[4] = &v4;
    __getVCPHandGestureVideoRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_224437CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPHandGestureVideoRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPHandGestureVideoRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPHandGestureVideoRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getVCPHandGestureVideoRequestClass_block_invoke_cold_1();
    return getVCPHandObjectClass(v3);
  }

  return result;
}

id getVCPHandObjectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPHandObjectClass_softClass;
  v7 = getVCPHandObjectClass_softClass;
  if (!getVCPHandObjectClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVCPHandObjectClass_block_invoke;
    v3[3] = &unk_278523280;
    v3[4] = &v4;
    __getVCPHandObjectClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_224437DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPHandObjectClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPHandObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPHandObjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVCPHandObjectClass_block_invoke_cold_1();
    return getVCPRequestFrameWidthPropertyKeySymbolLoc();
  }

  return result;
}

uint64_t getVCPRequestFrameWidthPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestFrameWidthPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestFrameWidthPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestFrameWidthPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestFrameWidthPropertyKey");
    getVCPRequestFrameWidthPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_224437F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestFrameWidthPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestFrameWidthPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFrameWidthPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestFrameWidthPropertyKey()
{
  VCPRequestFrameWidthPropertyKeySymbolLoc = getVCPRequestFrameWidthPropertyKeySymbolLoc();
  if (VCPRequestFrameWidthPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestFrameWidthPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestFrameHeightPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestFrameHeightPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestFrameHeightPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestFrameHeightPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestFrameHeightPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestFrameHeightPropertyKey");
    getVCPRequestFrameHeightPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2244380AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestFrameHeightPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestFrameHeightPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFrameHeightPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestFrameHeightPropertyKey()
{
  VCPRequestFrameHeightPropertyKeySymbolLoc = getVCPRequestFrameHeightPropertyKeySymbolLoc();
  if (VCPRequestFrameHeightPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestFrameHeightPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestEnableANSTHandDetectionPropertyKey");
    getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22443821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestEnableANSTHandDetectionPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestEnableANSTHandDetectionPropertyKey()
{
  VCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc = getVCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc();
  if (VCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestEnableANSTHandDetectionPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestRotationInDegreesPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestRotationInDegreesPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestRotationInDegreesPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestRotationInDegreesPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestRotationInDegreesPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestRotationInDegreesPropertyKey");
    getVCPRequestRotationInDegreesPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22443838C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestRotationInDegreesPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestRotationInDegreesPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestRotationInDegreesPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestRotationInDegreesPropertyKey()
{
  VCPRequestRotationInDegreesPropertyKeySymbolLoc = getVCPRequestRotationInDegreesPropertyKeySymbolLoc();
  if (VCPRequestRotationInDegreesPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestRotationInDegreesPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestDisableHandDetectionPropertyKeySymbolLoc();
  }
}

uint64_t getVCPRequestDisableHandDetectionPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestDisableHandDetectionPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestDisableHandDetectionPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestDisableHandDetectionPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestDisableHandDetectionPropertyKey");
    getVCPRequestDisableHandDetectionPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2244384FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestDisableHandDetectionPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestDisableHandDetectionPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestDisableHandDetectionPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestDisableHandDetectionPropertyKey()
{
  VCPRequestDisableHandDetectionPropertyKeySymbolLoc = getVCPRequestDisableHandDetectionPropertyKeySymbolLoc();
  if (VCPRequestDisableHandDetectionPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestDisableHandDetectionPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestHandObjectsPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestHandObjectsPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestHandObjectsPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestHandObjectsPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestHandObjectsPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestHandObjectsPropertyKey");
    getVCPRequestHandObjectsPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22443866C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestHandObjectsPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestHandObjectsPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestHandObjectsPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestHandObjectsPropertyKey()
{
  VCPRequestHandObjectsPropertyKeySymbolLoc = getVCPRequestHandObjectsPropertyKeySymbolLoc();
  if (VCPRequestHandObjectsPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestHandObjectsPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestFaceRectsPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestFaceRectsPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestFaceRectsPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestFaceRectsPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestFaceRectsPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestFaceRectsPropertyKey");
    getVCPRequestFaceRectsPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2244387DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestFaceRectsPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestFaceRectsPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFaceRectsPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestFaceRectsPropertyKey()
{
  VCPRequestFaceRectsPropertyKeySymbolLoc = getVCPRequestFaceRectsPropertyKeySymbolLoc();
  if (VCPRequestFaceRectsPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestFaceRectsPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestFaceYawsPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestFaceYawsPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestFaceYawsPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestFaceYawsPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestFaceYawsPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestFaceYawsPropertyKey");
    getVCPRequestFaceYawsPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22443894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestFaceYawsPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestFaceYawsPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFaceYawsPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestFaceYawsPropertyKey()
{
  VCPRequestFaceYawsPropertyKeySymbolLoc = getVCPRequestFaceYawsPropertyKeySymbolLoc();
  if (VCPRequestFaceYawsPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestFaceYawsPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc();
  }
}

uint64_t getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestMaxNumOfPersonsPropertyKey");
    getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_224438ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestMaxNumOfPersonsPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestMaxNumOfPersonsPropertyKey()
{
  VCPRequestMaxNumOfPersonsPropertyKeySymbolLoc = getVCPRequestMaxNumOfPersonsPropertyKeySymbolLoc();
  if (VCPRequestMaxNumOfPersonsPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestMaxNumOfPersonsPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestUseAsyncPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestUseAsyncPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestUseAsyncPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestUseAsyncPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestUseAsyncPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestUseAsyncPropertyKey");
    getVCPRequestUseAsyncPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_224438C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestUseAsyncPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestUseAsyncPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestUseAsyncPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestUseAsyncPropertyKey()
{
  VCPRequestUseAsyncPropertyKeySymbolLoc = getVCPRequestUseAsyncPropertyKeySymbolLoc();
  if (VCPRequestUseAsyncPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestUseAsyncPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestCoreMLANEPriorityPropertyKey");
    getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_224438D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestCoreMLANEPriorityPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPRequestCoreMLANEPriorityPropertyKey()
{
  VCPRequestCoreMLANEPriorityPropertyKeySymbolLoc = getVCPRequestCoreMLANEPriorityPropertyKeySymbolLoc();
  if (VCPRequestCoreMLANEPriorityPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestCoreMLANEPriorityPropertyKeySymbolLoc;

    return v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc(VCPRequestFrameWidthPropertyKey_cold_1);
  }
}

uint64_t getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc_ptr;
  v6 = getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc_ptr;
  if (!getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPRequestEspressoPlanPriorityPropertyKey");
    getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_224438F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestEspressoPlanPriorityPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float getVCPRequestEspressoPlanPriorityPropertyKey()
{
  VCPRequestEspressoPlanPriorityPropertyKeySymbolLoc = getVCPRequestEspressoPlanPriorityPropertyKeySymbolLoc();
  if (VCPRequestEspressoPlanPriorityPropertyKeySymbolLoc)
  {
    v1 = *VCPRequestEspressoPlanPriorityPropertyKeySymbolLoc;

    v2 = v1;
  }

  else
  {
    VCPRequestFrameWidthPropertyKey_cold_1 = getVCPRequestFrameWidthPropertyKey_cold_1();
    return _PTSwapBigGetFloat(VCPRequestFrameWidthPropertyKey_cold_1);
  }

  return result;
}

CMTimeValue PTNanosecondsFromCMTime(CMTime *a1)
{
  memset(&v3, 0, sizeof(v3));
  v2 = *a1;
  CMTimeConvertScale(&v3, &v2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return v3.value;
}

CMTime *PTNanosecondsToCMTime@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return CMTimeMake(a2, a1, 1000000000);
}

double __vfx_script_rain_graph_216(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 8);
  v3 = **arguments_buffer_delayInitStub;
  v4 = vextq_s8(v3, v3, 8uLL);
  *v4.i8 = vadd_f32(vext_s8(*v3.i8, *v4.i8, 4uLL), 0xBF0000003D4CCCCDLL);
  *&result = vzip1q_s32(v3, v4).u64[0];
  *(v2 + 8) = v4.i32[1];
  *v2 = result;
  return result;
}

_DWORD **__vfx_script_rain_graph_219(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 0;
  return result;
}

_DWORD **__vfx_script_rain_graph_222(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1143111680;
  return result;
}

float __vfx_script_rain_graph_223(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

__n128 __vfx_script_rain_graph_226(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 40);
  v4 = *(arguments_buffer_delayInitStub + 56);
  v5 = *(arguments_buffer_delayInitStub + 64);
  v6 = *(arguments_buffer_delayInitStub + 72);
  v7 = *(arguments_buffer_delayInitStub + 88);
  v8 = *(arguments_buffer_delayInitStub + 96);
  v9 = *(arguments_buffer_delayInitStub + 104);
  v10 = **arguments_buffer_delayInitStub;
  v11 = **(arguments_buffer_delayInitStub + 32);
  v12 = **(arguments_buffer_delayInitStub + 48);
  *&v13 = **(arguments_buffer_delayInitStub + 16) / 3.0;
  v14 = vld1q_dup_f32(v8);
  v23 = **(arguments_buffer_delayInitStub + 80);
  v24 = v14;
  vfx_script_texture_sample1d_delayInitStub(v13);
  *v2 = (v10 * v15) * 66.0;
  *v3 = v11;
  *v4 = v12;
  __asm { FMOV            V0.4S, #-1.0 }

  *v5 = _Q0;
  __asm { FMOV            V0.4S, #1.0 }

  *v6 = _Q0;
  *(v7 + 8) = *(&v23 + 2) + -0.65;
  *v7 = v23;
  result = v24;
  *v9 = v24;
  return result;
}

float __vfx_script_rain_graph_229(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 48);
  v6 = *(arguments_buffer_delayInitStub + 56);
  v7 = *(arguments_buffer_delayInitStub + 88);
  v8 = *(arguments_buffer_delayInitStub + 104);
  v9 = **(arguments_buffer_delayInitStub + 32);
  v10 = **(arguments_buffer_delayInitStub + 64);
  v11 = **(arguments_buffer_delayInitStub + 80);
  v12 = **(arguments_buffer_delayInitStub + 96);
  v13 = vld1q_dup_f32(v5);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = vdupq_n_s32(0xC2C80000);
  *v3 = vdupq_n_s32(0x42C80000u);
  *(v4 + 8) = *(&v9 + 2) + -0.85;
  *v4 = v9;
  *v6 = v13;
  *&v9 = v11 / 3.5;
  vfx_script_texture_sample1d_delayInitStub(*&v9);
  result = (v10 * v14) * 2500.0;
  *v7 = result;
  *v8 = v12;
  return result;
}

__n64 __vfx_script_rain_graph_232(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  result.n64_f32[0] = 1.5 * COERCE_FLOAT(**arguments_buffer_delayInitStub);
  result.n64_f32[1] = (*(*(arguments_buffer_delayInitStub + 8) + 4) * -6.0) + 0.0;
  v2[1].n64_f32[0] = COERCE_FLOAT(*(*arguments_buffer_delayInitStub + 8)) + 0.5;
  v2->n64_u64[0] = result.n64_u64[0];
  return result;
}

uint64_t __vfx_script_rain_graph_233(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = **(arguments_buffer_delayInitStub + 8);
  vfx_script_curve_create_delayInitStub(5.23869004e-11);
  *&v4 = v3 / 3.0;
  vfx_script_curve_evaluate_delayInitStub(v4);
  *v2 = LODWORD(v5);
  return vfx_script_curve_destroy_delayInitStub(v5);
}

uint64_t __vfx_script_rain_particleInit_213(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_rain_particleInit_220(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_rain_particleInit_230(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_rain_particleUpdate_214(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_rain_particleUpdate_215(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

__n128 __vfx_script_rain_particleUpdate_221(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

uint64_t __vfx_script_rain_particleUpdate_231(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_rain_graph_216_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_0()
{
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimation_forKey_ = sel_registerName("addAnimation:forKey:");
  _vfx_objc_sel_removeAllAnimationsWithBlendOutDuration_ = sel_registerName("removeAllAnimationsWithBlendOutDuration:");
  _vfx_objc_sel_removeAnimationForKey_blendOutDuration_ = sel_registerName("removeAnimationForKey:blendOutDuration:");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_insertChildNode_ = sel_registerName("insertChildNode:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  result = sel_registerName("worldNormal");
  _vfx_objc_sel_worldNormal = result;
  return result;
}

void PTIOSurfaceSetColorSpace(__IOSurface *a1, CGColorSpaceRef space)
{
  if (space)
  {
    v3 = CGColorSpaceCopyPropertyList(space);
    if (v3)
    {
      v4 = v3;
      IOSurfaceSetValue(a1, *MEMORY[0x277CD29C0], v3);

      CFRelease(v4);
    }
  }
}

void sub_22443CD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PTSyntheticLight;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22443D500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v38 + 48));
  objc_destroyWeak(&location);

  _Block_object_dispose((v39 - 224), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  v3 = *(a2 + 80);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = result;
  *(a1 + 80) = v3;
  return result;
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

float __vfx_script_lasers_graph_134(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 2000.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_lasers_graph_135(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 300.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_lasers_graph_136(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  v1 = *(vfx_script_get_arguments_buffer_delayInitStub(a1) + 8);
  vfx_script_clock_time_delayInitStub(v2);
  *&v3 = v3;
  result = (fminf(fmaxf((sinf(*&v3 * 75.0) + 1.0) * 0.5, 0.0), 1.0) * 0.75) + 0.5;
  *v1 = result;
  return result;
}

uint64_t __vfx_script_lasers_graph_138(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = **(arguments_buffer_delayInitStub + 8);
  vfx_script_curve_create_delayInitStub(5.23869004e-11);
  vfx_script_clock_time_delayInitStub(v5);
  *&v6 = v6;
  *&v6 = *&v6 / 5.0;
  if (*&v6 >= 1.0)
  {
    *&v6 = 0.0;
  }

  vfx_script_curve_evaluate_delayInitStub(v6);
  *v3 = LODWORD(v7);
  *v2 = v4;
  return vfx_script_curve_destroy_delayInitStub(v7);
}

__n128 __vfx_script_lasers_graph_140(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  result = **(arguments_buffer_delayInitStub + 8);
  **(arguments_buffer_delayInitStub + 24) = **arguments_buffer_delayInitStub;
  *v2 = result;
  return result;
}

uint64_t __vfx_script_lasers_graph_141(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 8);
  v3 = *(arguments_buffer_delayInitStub + 16);
  vfx_script_curve_create_delayInitStub(5.23869004e-11);
  vfx_script_clock_time_delayInitStub(v4);
  *&v5 = v5;
  *&v5 = *&v5 / 5.0;
  if (*&v5 >= 1.0)
  {
    *&v5 = 0.0;
  }

  vfx_script_curve_evaluate_delayInitStub(v5);
  *v3 = v6;
  *v2 = xmmword_2244A56B0;
  return vfx_script_curve_destroy_delayInitStub(0.00000133972957);
}

float32x4_t __vfx_script_lasers_graph_142(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = **(arguments_buffer_delayInitStub + 8);
  **(arguments_buffer_delayInitStub + 24) = **arguments_buffer_delayInitStub;
  result = vaddq_f32(v3, xmmword_2244A5960);
  *v2 = result;
  return result;
}

__n128 __vfx_script_lasers_graph_146(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *arguments_buffer_delayInitStub;
  __asm { FMOV            V0.4S, #1.0 }

  **(arguments_buffer_delayInitStub + 8) = _Q0;
  __asm { FMOV            V0.4S, #-1.0 }

  *v2 = result;
  return result;
}

int32x2_t __vfx_script_lasers_graph_150(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 8);
  v3 = **arguments_buffer_delayInitStub;
  result = vdup_n_s32(**(arguments_buffer_delayInitStub + 16));
  **(arguments_buffer_delayInitStub + 24) = result;
  *v2 = v3;
  return result;
}

_DWORD **__vfx_script_lasers_graph_151(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  *result[1] = **result;
  return result;
}

_BYTE **__vfx_script_lasers_graph_154(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1;
  return result;
}

__n128 __vfx_script_lasers_graph_156(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  result = **(arguments_buffer_delayInitStub + 8);
  **(arguments_buffer_delayInitStub + 24) = **arguments_buffer_delayInitStub;
  *v2 = result;
  return result;
}

uint64_t __vfx_script_lasers_particleInit_137(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleInit_143(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleInit_145(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleInit_148(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleInit_152(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleInit_155(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

__n128 particle_update_lasers_particleUpdate_4(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a2;
  *a3 = *a2;
  return result;
}

double __vfx_script_lasers_particleUpdate_4(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

void __vfx_script_lasers_particleUpdate_139(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
}

__n128 __vfx_script_lasers_particleUpdate_144(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

__n128 __vfx_script_lasers_particleUpdate_147(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

uint64_t __vfx_script_lasers_particleUpdate_149(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleUpdate_153(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_lasers_particleUpdate_157(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lasers_graph_134_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_1()
{
  _vfx_objc_sel_setValue_forKeyPath_ = sel_registerName("setValue:forKeyPath:");
  _vfx_objc_sel_valueForKeyPath_ = sel_registerName("valueForKeyPath:");
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_VFXTransaction = objc_lookUpClass("VFXTransaction");
  _vfx_objc_sel_begin = sel_registerName("begin");
  _vfx_objc_sel_setAnimationDurationAsFloat_ = sel_registerName("setAnimationDurationAsFloat:");
  _vfx_objc_sel_commit = sel_registerName("commit");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSValue = objc_lookUpClass("NSValue");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithFloat_ = sel_registerName("numberWithFloat:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimationAsset_forKey_ = sel_registerName("addAnimationAsset:forKey:");
  _vfx_objc_sel_removeAllAnimations = sel_registerName("removeAllAnimations");
  _vfx_objc_sel_removeAnimationForKey_ = sel_registerName("removeAnimationForKey:");
  _vfx_objc_sel_script_rootNode = sel_registerName("script_rootNode");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_childNodes = sel_registerName("childNodes");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_convertPosition_toNode_ = sel_registerName("convertPosition:toNode:");
  _vfx_objc_sel_convertVector_toNode_ = sel_registerName("convertVector:toNode:");
  _vfx_objc_sel_convertTransform_toNode_ = sel_registerName("convertTransform:toNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_projectPoint_ = sel_registerName("projectPoint:");
  _vfx_objc_sel_unprojectPoint_ = sel_registerName("unprojectPoint:");
  _vfx_objc_sel_script_hitTest_options_ = sel_registerName("script_hitTest:options:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_setState_ = sel_registerName("setState:");
  _vfx_objc_sel_setStateNamed_ = sel_registerName("setStateNamed:");
  _vfx_objc_sel__contentsScaleFactor = sel_registerName("_contentsScaleFactor");
  _vfx_objc_sel__screenSize = sel_registerName("_screenSize");
  _vfx_objc_sel_physicsBody = sel_registerName("physicsBody");
  _vfx_objc_sel_script_instantiate_ = sel_registerName("script_instantiate:");
  _vfx_objc_sel_geometryIndex = sel_registerName("geometryIndex");
  _vfx_objc_sel_faceIndex = sel_registerName("faceIndex");
  _vfx_objc_sel_localCoordinates = sel_registerName("localCoordinates");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  _vfx_objc_sel_localNormal = sel_registerName("localNormal");
  _vfx_objc_sel_worldNormal = sel_registerName("worldNormal");
  _vfx_objc_sel_modelTransform = sel_registerName("modelTransform");
  _vfx_objc_sel_boneNode = sel_registerName("boneNode");
  _vfx_objc_sel_uv0 = sel_registerName("uv0");
  _vfx_objc_sel_presentationBoneNode = sel_registerName("presentationBoneNode");
  _vfx_objc_sel_presentationNode = sel_registerName("presentationNode");
  _vfx_objc_sel_applyForce_impulse_ = sel_registerName("applyForce:impulse:");
  _vfx_objc_sel_applyForce_atPosition_impulse_ = sel_registerName("applyForce:atPosition:impulse:");
  _vfx_objc_sel_applyTorque_impulse_ = sel_registerName("applyTorque:impulse:");
  result = sel_registerName("presentationObject");
  _vfx_objc_sel_presentationObject = result;
  return result;
}

double CGRectGetArea(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

double CGRectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t PTSerializationDebugIsEnabled()
{
  if (PTSerializationDebugIsEnabled_onceToken != -1)
  {
    PTSerializationDebugIsEnabled_cold_1();
  }

  return 0;
}

id NSStringFromBytes(unsigned __int8 *a1, uint64_t a2)
{
  for (i = objc_opt_new(); a2; --a2)
  {
    v5 = *a1++;
    [i appendFormat:@"%02X ", v5];
  }

  if ([i length])
  {
    [i deleteCharactersInRange:{objc_msgSend(i, "length") - 1, 1}];
  }

  v6 = [i copy];

  return v6;
}

id NSStringFromData(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  return NSStringFromBytes(v2, v3);
}

uint64_t PTTrackIDFromNumber(void *a1)
{
  if (a1)
  {
    return [a1 integerValue];
  }

  else
  {
    return -1;
  }
}

id NSNumberFromPTTrackID(uint64_t a1)
{
  if (a1 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{a1, v1}];
  }

  return v3;
}

BOOL PTDetectionTypeIsBetter(uint64_t a1, uint64_t a2)
{
  if (PTDetectionTypeIsBetter_onceToken != -1)
  {
    PTDetectionTypeIsBetter_cold_1();
  }

  v4 = PTDetectionTypeIsBetter_sOrderMap;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(&unk_2837F3970, "count")}];
  }

  v9 = v8;

  v10 = PTDetectionTypeIsBetter_sOrderMap;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(&unk_2837F3988, "count")}];
  }

  v15 = v14;

  v16 = [v9 intValue];
  v17 = v16 < [v15 intValue];

  return v17;
}

unint64_t __PTDetectionTypeIsBetter_block_invoke()
{
  v0 = objc_opt_new();
  v1 = PTDetectionTypeIsBetter_sOrderMap;
  PTDetectionTypeIsBetter_sOrderMap = v0;

  result = [&unk_2837F3940 count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v5 = PTDetectionTypeIsBetter_sOrderMap;
      v6 = [&unk_2837F3958 objectAtIndexedSubscript:i];
      [v5 setObject:v4 forKeyedSubscript:v6];

      result = [&unk_2837F3940 count];
    }
  }

  return result;
}

uint64_t PTDetectionTypeParent(uint64_t result)
{
  v1 = result - 1;
  if (result - 1) <= 9 && ((0x31Fu >> v1))
  {
    return qword_2244A5A68[v1];
  }

  return result;
}

id PTDetectionTypeAccessibilityLabel(unint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (a1 > 0xB)
  {
    goto LABEL_11;
  }

  if (((1 << a1) & 0x630) != 0)
  {
    v4 = @"PTCinematographyDetectionTypePet";
    v5 = @"pet";
    goto LABEL_6;
  }

  if (((1 << a1) & 0xE) != 0)
  {
    v4 = @"PTCinematographyDetectionTypeHuman";
    v5 = @"person";
    goto LABEL_6;
  }

  if (a1 == 11)
  {
    v4 = @"PTCinematographyDetectionTypeSportsBall";
    v5 = @"sports ball";
  }

  else
  {
LABEL_11:
    v4 = @"PTCinematographyDetectionTypeDefault";
    v5 = @"object";
  }

LABEL_6:
  v6 = [v2 localizedStringForKey:v4 value:v5 table:0];

  return v6;
}

id PTDefaultsPublicGetDictionary()
{
  os_unfair_lock_lock(&sPortraitDefaultsLock);
  if ((sCachedPortraitDefaultsLoaded & 1) == 0)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coremedia"];
    v1 = [v0 dictionaryRepresentation];
    v2 = PTDefaultsPublicGetDictionary_sCachedPortraitDefaults;
    PTDefaultsPublicGetDictionary_sCachedPortraitDefaults = v1;

    sCachedPortraitDefaultsLoaded = 1;
  }

  v3 = PTDefaultsPublicGetDictionary_sCachedPortraitDefaults;
  os_unfair_lock_unlock(&sPortraitDefaultsLock);

  return v3;
}

uint64_t PTDefaultsPublicGetBool(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = PTDefaultsPublicGetDictionary();
  v5 = [v4 objectForKeyedSubscript:v3];

  if (objc_opt_respondsToSelector())
  {
    a2 = [v5 BOOLValue];
  }

  return a2;
}

id _ErrorForDataBufferNotFoundAtURL(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _ErrorForDataBufferNotFoundAtURL_cold_1(v1, v2);
  }

  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = *MEMORY[0x277CCA760];
  v9[0] = *MEMORY[0x277CCA450];
  v9[1] = v5;
  v10[0] = @"data buffer not found at url";
  v10[1] = v1;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v3 errorWithDomain:v4 code:4 userInfo:v6];

  return v7;
}

BOOL LoadDataVec(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__filename)
{
  v13 = fopen(__filename, "r");
  v14 = v13;
  if (v13)
  {
    if (a5)
    {
      v15 = a6 * a4;
      do
      {
        fread(a1, a2, v15, v14);
        a1 += a3;
        --a5;
      }

      while (a5);
    }

    v13 = v14;
  }

  fclose(v13);
  return v14 != 0;
}

float __vfx_script_hearts_graph_222(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

int32x2_t __vfx_script_hearts_graph_226(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 32);
  v4 = **(arguments_buffer_delayInitStub + 8);
  v5 = **(arguments_buffer_delayInitStub + 24);
  inited = vfx_script_clock_simulation_index_delayInitStub(v6);
  v8 = 277803737 * (((747796405 * (v4 + inited) + 432355790) >> (((747796405 * (v4 + inited) + 432355790) >> 28) + 4)) ^ (747796405 * (v4 + inited) + 432355790));
  v9.i32[0] = -4.0;
  if ((COERCE_FLOAT((v8 >> 31) ^ (v8 >> 9) | 0x3F800000) + -1.0) > 0.5)
  {
    *v9.i32 = 4.0;
  }

  result = vdup_lane_s32(v9, 0);
  *v2 = result;
  *v3 = v5;
  return result;
}

float __vfx_script_hearts_graph_227(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 300.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_hearts_graph_228(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 2000.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

_DWORD *__vfx_script_hearts_graph_231(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *arguments_buffer_delayInitStub;
  v3 = *(arguments_buffer_delayInitStub + 8);
  v4 = *(arguments_buffer_delayInitStub + 16);
  v5 = *(arguments_buffer_delayInitStub + 24);
  v6 = *(arguments_buffer_delayInitStub + 32);
  v7 = *(arguments_buffer_delayInitStub + 40);
  v8 = *(arguments_buffer_delayInitStub + 48);
  v9 = *(arguments_buffer_delayInitStub + 56);
  v10 = *(arguments_buffer_delayInitStub + 64);
  v11 = *(arguments_buffer_delayInitStub + 72);
  v12 = *(arguments_buffer_delayInitStub + 80);
  v13 = *(arguments_buffer_delayInitStub + 88);
  v15 = *(arguments_buffer_delayInitStub + 96);
  result = *(arguments_buffer_delayInitStub + 104);
  v16 = *v5;
  v17 = *v7;
  v18 = *v9;
  v19 = *v11;
  v20 = *v12;
  v21 = *v15;
  v22 = *v2 == 0;
  v23.i32[0] = 1008981770;
  if (*v2)
  {
    *v23.i32 = 0.03;
  }

  *v3 = vdup_lane_s32(v23, 0);
  *v4 = 0u;
  v24 = v16 + 0.5;
  if (!v22)
  {
    v24 = 0.0;
  }

  *v6 = v24;
  *v8 = v17;
  *v10 = vaddq_f32(v18, xmmword_2244A5AE0);
  v25 = v20 * 9.0;
  if (!v19)
  {
    v25 = 0.0;
  }

  *v13 = v25;
  *result = v21;
  return result;
}

float __vfx_script_hearts_graph_232(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  result = **(arguments_buffer_delayInitStub + 8);
  **arguments_buffer_delayInitStub = xmmword_2244A5AF0;
  *v2 = result;
  *v3 = 1065353216;
  return result;
}

_DWORD **__vfx_script_hearts_graph_233(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1053609165;
  return result;
}

double __vfx_script_hearts_graph_234(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = 0.00000133972957;
  **arguments_buffer_delayInitStub = xmmword_2244A56B0;
  return result;
}

_BYTE **__vfx_script_hearts_graph_235(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1;
  return result;
}

uint64_t __vfx_script_hearts_particleInit_223(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_hearts_particleInit_224(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_hearts_particleInit_229(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t particle_update_hearts_particleUpdate_6(double a1, uint64_t a2, double *a3, _DWORD *a4, float *a5, float *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  vfx_script_clock_delta_time_delayInitStub(a1);
  v28 = v10;
  result = vfx_script_particle_find_nearest_neighbors_delayInitStub(*a3);
  if (result)
  {
    v12 = result;
    v13 = &v29;
    __asm { FMOV            V0.4S, #0.25 }

    v27 = _Q0;
    do
    {
      v13 += 8;
      result = vfx_script_particle_get_id_delayInitStub(*_Q0.i64);
      if (*a4 != result)
      {
        vfx_script_particle_get_size1d_delayInitStub(*_Q0.i64);
        v20 = *&v19;
        result = vfx_script_particle_get_position_delayInitStub(v19);
        _Q0 = vsubq_f32(v21, *a3);
        v22 = vmulq_f32(_Q0, _Q0);
        v23 = v22.f32[2] + vaddv_f32(*v22.f32);
        v24 = v20 + *a6;
        if (v23 < ((v24 * 0.6) * (v24 * 0.6)) && v23 > 1.0e-10)
        {
          v25 = vrsqrte_f32(LODWORD(v23));
          v26 = vmul_f32(v25, vrsqrts_f32(LODWORD(v23), vmul_f32(v25, v25)));
          _Q0 = vmulq_n_f32(vmulq_f32(vmulq_n_f32(vmulq_n_f32(_Q0, vmul_f32(v26, vrsqrts_f32(LODWORD(v23), vmul_f32(v26, v26))).f32[0]), sqrtf(v23) - v24), v27), v28);
          *a3 = vmlaq_n_f32(*a3, _Q0, fminf(*a5 * 10.0, 1.0));
        }
      }

      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t __vfx_script_hearts_particleUpdate_6(double a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_hearts_particleUpdate_225(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_hearts_particleUpdate_230(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_hearts_graph_222_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_2()
{
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimation_forKey_ = sel_registerName("addAnimation:forKey:");
  _vfx_objc_sel_removeAllAnimationsWithBlendOutDuration_ = sel_registerName("removeAllAnimationsWithBlendOutDuration:");
  _vfx_objc_sel_removeAnimationForKey_blendOutDuration_ = sel_registerName("removeAnimationForKey:blendOutDuration:");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_insertChildNode_ = sel_registerName("insertChildNode:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  result = sel_registerName("worldNormal");
  _vfx_objc_sel_worldNormal = result;
  return result;
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void memsetE5Buffer()
{
  if (e5rt_buffer_object_get_data_ptr())
  {
    v0 = _PTLogSystem();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (e5rt_buffer_object_get_size())
  {
    v0 = _PTLogSystem();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
    }

LABEL_7:

    return;
  }

  bzero(0, 0);
}

uint64_t dataPtrFromE5Buffer()
{
  if (!e5rt_buffer_object_get_data_ptr())
  {
    return 0;
  }

  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    [PTEffectPersonSegmentationViSegHQVisionCoreE5 initWithMetalContext:colorSize:];
  }

  return 0;
}

uint64_t __vfx_script_fireworks_graph_353(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 48);
  v4 = **(arguments_buffer_delayInitStub + 32);
  v5 = **(arguments_buffer_delayInitStub + 40);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = 0xC0600000C0933333;
  *&v6 = fminf(fmaxf((v5 - v4) / ((v4 + 1.0) - v4), 0.0), 1.0);
  result = vfx_script_texture_sample1d_delayInitStub(v6);
  *v3 = v8;
  return result;
}

int32x2_t __vfx_script_fireworks_graph_356(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 32);
  v4 = *(arguments_buffer_delayInitStub + 48);
  v5 = *(arguments_buffer_delayInitStub + 64);
  v6 = **(arguments_buffer_delayInitStub + 24);
  v7 = **(arguments_buffer_delayInitStub + 40);
  v8 = **(arguments_buffer_delayInitStub + 56);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = 0x3CC49BA63C89A027;
  *v3 = v6;
  *v4 = v7;
  result = vdup_n_s32((v8 * 250.0));
  *v5 = result;
  return result;
}

float __vfx_script_fireworks_graph_357(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

__n128 __vfx_script_fireworks_graph_359(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 40);
  v4 = *(arguments_buffer_delayInitStub + 48);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = **(arguments_buffer_delayInitStub + 16);
  result = **(arguments_buffer_delayInitStub + 32);
  v8 = 277803737 * (((747796405 * **arguments_buffer_delayInitStub + 1102377755) >> (((747796405 * **arguments_buffer_delayInitStub + 1102377755) >> 28) + 4)) ^ (747796405 * **arguments_buffer_delayInitStub + 1102377755));
  **(arguments_buffer_delayInitStub + 8) = (((COERCE_FLOAT((v8 >> 31) ^ (v8 >> 9) | 0x3F800000) + -1.0) * 6.0) + 0.0);
  *v2 = v6;
  v9 = vld1q_dup_f32(v4);
  *v3 = result;
  *v5 = v9;
  return result;
}

__n128 __vfx_script_fireworks_graph_361(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v4 = *(arguments_buffer_delayInitStub + 64);
  v6 = *(arguments_buffer_delayInitStub + 72);
  LODWORD(v7) = **(arguments_buffer_delayInitStub + 8);
  v8 = **(arguments_buffer_delayInitStub + 32);
  v9 = vld1q_dup_f32(v4);
  v21 = v9;
  v22 = **(arguments_buffer_delayInitStub + 48);
  **(arguments_buffer_delayInitStub + 16) = LODWORD(v7);
  is_first_frame_delayInitStub = vfx_script_clock_is_first_frame_delayInitStub(v7);
  vfx_script_clock_delta_time_delayInitStub(v11);
  v13 = vmulq_n_f32(*v2, 1.0 - (v12 + v12));
  if (is_first_frame_delayInitStub)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  __asm { FMOV            V2.4S, #1.0 }

  *v2 = vbslq_s8(vdupq_n_s32(v14), _Q2, v13);
  *v3 = v8;
  result = v21;
  *v5 = v22;
  *v6 = v21;
  return result;
}

int32x4_t __vfx_script_fireworks_graph_364(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = **(arguments_buffer_delayInitStub + 32);
  v7 = **(arguments_buffer_delayInitStub + 48);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub * 8000.0;
  *v2 = 0x3C9D49523B81C2E4;
  result = vdupq_n_s32(0x3DCCCCCDu);
  *v3 = result;
  *v4 = v6;
  *v5 = v7;
  return result;
}

int32x4_t __vfx_script_fireworks_graph_367(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = **(arguments_buffer_delayInitStub + 32);
  v7 = **(arguments_buffer_delayInitStub + 48);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub * 7000.0;
  *v2 = 0x3C83126F3B5844D0;
  result = vdupq_n_s32(0x3CF5C28Fu);
  *v3 = result;
  *v4 = v6;
  *v5 = v7;
  return result;
}

float __vfx_script_fireworks_graph_370(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 32);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = **(arguments_buffer_delayInitStub + 16);
  v7 = **(arguments_buffer_delayInitStub + 48);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = v6;
  *v3 = 0x3CAA64C33C378035;
  *v4 = vdupq_n_s32(0x3DCCCCCDu);
  result = v7 * 12000.0;
  *v5 = v7 * 12000.0;
  return result;
}

int32x4_t __vfx_script_fireworks_graph_373(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 32);
  v4 = *(arguments_buffer_delayInitStub + 48);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = *(arguments_buffer_delayInitStub + 64);
  v7 = **arguments_buffer_delayInitStub;
  v8 = **(arguments_buffer_delayInitStub + 24);
  v9 = **(arguments_buffer_delayInitStub + 40);
  **(arguments_buffer_delayInitStub + 8) = v7;
  *v2 = v7;
  *v3 = v8;
  *v4 = v9 * 10000.0;
  *v5 = 0x3C51B7183B2D03DBLL;
  result = vdupq_n_s32(0x3D4CCCCDu);
  *v6 = result;
  return result;
}

int32x4_t __vfx_script_fireworks_graph_376(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 32);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 48);
  v6 = **(arguments_buffer_delayInitStub + 16);
  **(arguments_buffer_delayInitStub + 8) = vdup_n_s32((**arguments_buffer_delayInitStub * 50.0));
  *v2 = v6;
  *v3 = 0x40ABAE1540023D71;
  *v4 = 0x3F68F5C23EEC8B44;
  result = vdupq_n_s32(0x3E99999Au);
  *v5 = result;
  return result;
}

float __vfx_script_fireworks_graph_379(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 8);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = **(arguments_buffer_delayInitStub + 16);
  v7 = **(arguments_buffer_delayInitStub + 32);
  v8 = **(arguments_buffer_delayInitStub + 48);
  **arguments_buffer_delayInitStub = 0x3C83126F3B5844D0;
  *v2 = vdupq_n_s32(0x3D75C28Fu);
  *v3 = v6;
  result = v7 * 10000.0;
  *v4 = result;
  *v5 = v8;
  return result;
}

float32x4_t __vfx_script_fireworks_graph_382(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = **(arguments_buffer_delayInitStub + 32);
  v7 = **(arguments_buffer_delayInitStub + 48);
  **(arguments_buffer_delayInitStub + 8) = vdup_n_s32((**arguments_buffer_delayInitStub * 30.0));
  *v2 = 0x3F3A5E353EBD3C37;
  *v3 = vdupq_n_s32(0x3E4CCCCDu);
  result = vmulq_f32(v6, vdupq_n_s32(0x3F19999Au));
  *v4 = result;
  *v5 = v7;
  return result;
}

float __vfx_script_fireworks_graph_385(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 32);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = *(arguments_buffer_delayInitStub + 72);
  v7 = **(arguments_buffer_delayInitStub + 16);
  v8 = **(arguments_buffer_delayInitStub + 48);
  v9 = **(arguments_buffer_delayInitStub + 64);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = v7;
  *v3 = 0x3C5844D13C449BA6;
  *v4 = vdupq_n_s32(0x3B83126Fu);
  *v5 = v8;
  result = v9 * 140.0;
  *v6 = v9 * 140.0;
  return result;
}

int32x2_t __vfx_script_fireworks_graph_388(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 32);
  v5 = *(arguments_buffer_delayInitStub + 48);
  v6 = **(arguments_buffer_delayInitStub + 40);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = 0x40E8000040300000;
  *v3 = 0x3F3A5E353EBD3C37;
  *v4 = vdupq_n_s32(0x3E75C28Fu);
  result = vdup_n_s32((v6 * 30.0));
  *v5 = result;
  return result;
}

float __vfx_script_fireworks_graph_391(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 40);
  v5 = *(arguments_buffer_delayInitStub + 56);
  v6 = *(arguments_buffer_delayInitStub + 64);
  v7 = **(arguments_buffer_delayInitStub + 32);
  v8 = **(arguments_buffer_delayInitStub + 48);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = 0x3CBFB15A3C42A455;
  *v3 = vdupq_n_s32(0x3DCCCCCDu);
  result = v7 * 5000.0;
  *v4 = result;
  *v5 = v8;
  *v6 = v8;
  return result;
}

uint64_t __vfx_script_fireworks_graph_394(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 32);
  v3 = *(arguments_buffer_delayInitStub + 48);
  v4 = **(arguments_buffer_delayInitStub + 16);
  v5 = **(arguments_buffer_delayInitStub + 24);
  v6 = **(arguments_buffer_delayInitStub + 40);
  **arguments_buffer_delayInitStub = 0xC0600000C0933333;
  *&v7 = fminf(fmaxf((v5 - v4) / ((v4 + 1.0) - v4), 0.0), 1.0);
  result = vfx_script_texture_sample1d_delayInitStub(v7);
  *v2 = v9;
  *v3 = v6;
  return result;
}

float __vfx_script_fireworks_graph_395(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 2000.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_fireworks_graph_396(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 2000.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

int32x4_t __vfx_script_fireworks_graph_397(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  *v2.i32 = **arguments_buffer_delayInitStub * 1.12;
  result = vdupq_lane_s32(v2, 0);
  **(arguments_buffer_delayInitStub + 8) = result;
  return result;
}

int32x4_t __vfx_script_fireworks_graph_398(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  *v2.i32 = **arguments_buffer_delayInitStub * 0.8;
  result = vdupq_lane_s32(v2, 0);
  **(arguments_buffer_delayInitStub + 8) = result;
  return result;
}

_BYTE **__vfx_script_fireworks_graph_399(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1;
  return result;
}

float32x4_t __vfx_script_fireworks_graph_401(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  **(arguments_buffer_delayInitStub + 8) = xmmword_2244A56B0;
  is_first_frame_delayInitStub = vfx_script_clock_is_first_frame_delayInitStub(0.00000133972957);
  vfx_script_clock_delta_time_delayInitStub(v4);
  v6 = vmulq_n_f32(*v2, 1.0 - v5);
  if (is_first_frame_delayInitStub)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  __asm { FMOV            V2.4S, #1.0 }

  result = vbslq_s8(vdupq_n_s32(v7), _Q2, v6);
  *v2 = result;
  return result;
}

uint64_t __vfx_script_fireworks_particleInit_351(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_354(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

__n128 __vfx_script_fireworks_particleInit_358(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

uint64_t __vfx_script_fireworks_particleInit_360(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

double __vfx_script_fireworks_particleInit_362(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
  return result;
}

uint64_t __vfx_script_fireworks_particleInit_368(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_371(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_374(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_380(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_386(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_392(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleInit_400(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

double particle_update_fireworks_particleUpdate_268(uint64_t a1, float *a2, float *a3, _OWORD *a4)
{
  if (*a2 > 0.0 && *a3 > 0.0)
  {
    *a3 = 0.0;
  }

  *&result = 1065353216;
  *a4 = xmmword_2244A58E0;
  return result;
}

uint64_t __vfx_script_fireworks_particleUpdate_268(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

float32x4_t particle_update_fireworks_particleUpdate_292(uint64_t a1, __int32 *a2, float32x4_t *a3, __int32 *a4, float32x4_t *a5)
{
  result.i32[0] = *a2;
  if (*a2 > 0.0)
  {
    result.i32[0] = *a4;
    if (*a4 > 0.0)
    {
      v6.i64[0] = 0x3F0000003F000000;
      v6.i64[1] = 0x3F0000003F000000;
      __asm { FMOV            V1.4S, #1.0 }

      result = vminnmq_f32(vmlaq_f32(*a5, v6, *a3), _Q1);
      *a5 = result;
      *a4 = 0;
    }
  }

  return result;
}

uint64_t __vfx_script_fireworks_particleUpdate_292(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_352(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_355(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_363(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_369(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_372(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_375(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_381(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_387(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_fireworks_particleUpdate_393(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_fireworks_graph_353_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_3()
{
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimation_forKey_ = sel_registerName("addAnimation:forKey:");
  _vfx_objc_sel_removeAllAnimationsWithBlendOutDuration_ = sel_registerName("removeAllAnimationsWithBlendOutDuration:");
  _vfx_objc_sel_removeAnimationForKey_blendOutDuration_ = sel_registerName("removeAnimationForKey:blendOutDuration:");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_insertChildNode_ = sel_registerName("insertChildNode:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  result = sel_registerName("worldNormal");
  _vfx_objc_sel_worldNormal = result;
  return result;
}

double __vfx_script_confetti_graph_233(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = 0.00000133972957;
  **arguments_buffer_delayInitStub = xmmword_2244A56B0;
  return result;
}

float __vfx_script_confetti_graph_236(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 16);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = **(arguments_buffer_delayInitStub + 8);
  inited = vfx_script_clock_simulation_index_delayInitStub(v5);
  v7 = 277803737 * (((747796405 * (v4 + inited) + 1798203370) >> (((747796405 * (v4 + inited) + 1798203370) >> 28) + 4)) ^ (747796405 * (v4 + inited) + 1798203370));
  result = ((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.5) + -0.25;
  *v2 = result;
  *v3 = 0;
  return result;
}

float32x4_t __vfx_script_confetti_graph_239(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 48);
  v3 = *(arguments_buffer_delayInitStub + 64);
  v4 = *(arguments_buffer_delayInitStub + 80);
  v5 = *(arguments_buffer_delayInitStub + 96);
  v6 = **(arguments_buffer_delayInitStub + 56);
  v7 = **(arguments_buffer_delayInitStub + 72);
  v8 = **(arguments_buffer_delayInitStub + 16) * 0.5;
  v9 = v8 - **(arguments_buffer_delayInitStub + 24);
  v10.i64[0] = 0;
  v10.i32[3] = 0;
  v10.f32[2] = v8;
  v11 = v9 / v8;
  if ((COERCE_INT(fabs(v8)) - 0x800000) >> 24 >= 0x7F)
  {
    v11 = 0.0;
  }

  v12 = (**(arguments_buffer_delayInitStub + 8) * 10.0) * v11;
  if (**arguments_buffer_delayInitStub)
  {
    LOBYTE(v11) = **(arguments_buffer_delayInitStub + 32);
    v13 = ((v12 * LODWORD(v11)) + 0.0);
  }

  else
  {
    v13 = 0;
  }

  v14 = vdup_n_s32(v13);
  v15 = **(arguments_buffer_delayInitStub + 88);
  **(arguments_buffer_delayInitStub + 40) = v14;
  *v2 = v14;
  *v3 = v6;
  *v4 = v7;
  *v14.i32 = v9 * 0.5;
  v16.i64[0] = 0;
  v16.i64[1] = v14.u32[0];
  result = vsubq_f32(vaddq_f32(v10, v15), v16);
  *v5 = result;
  return result;
}

int32x2_t __vfx_script_confetti_graph_242(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 8);
  v3 = *(arguments_buffer_delayInitStub + 24);
  v4 = *(arguments_buffer_delayInitStub + 32);
  v5 = *(arguments_buffer_delayInitStub + 40);
  v6 = *(arguments_buffer_delayInitStub + 48);
  v7 = *(arguments_buffer_delayInitStub + 56);
  v9 = *(arguments_buffer_delayInitStub + 64);
  v8 = *(arguments_buffer_delayInitStub + 72);
  v10 = *(arguments_buffer_delayInitStub + 80);
  v11 = *(arguments_buffer_delayInitStub + 88);
  v13 = *(arguments_buffer_delayInitStub + 96);
  v12 = *(arguments_buffer_delayInitStub + 104);
  v14 = *(arguments_buffer_delayInitStub + 112);
  v15 = **arguments_buffer_delayInitStub;
  LODWORD(arguments_buffer_delayInitStub) = **(arguments_buffer_delayInitStub + 16);
  v16 = *v4;
  *&v17 = -*v5;
  v18 = *v5 - *v6;
  v19 = v18 / *v5;
  v20 = *v5;
  v21 = *v9;
  v22 = *v10;
  v23 = *v11;
  LOBYTE(v24) = *v13;
  *v2 = v15;
  *v3 = arguments_buffer_delayInitStub;
  v25.i64[0] = 0;
  v25.i32[3] = 0;
  v26.i64[0] = 0;
  v26.i64[1] = v17;
  v25.f32[2] = v18 * 0.5;
  v27 = vaddq_f32(vaddq_f32(vaddq_f32(v16, v26), v25), xmmword_2244C5F00);
  *v7 = v27;
  v28 = *&v21 / *(&v21 + 1);
  if (((HIDWORD(v21) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F)
  {
    v28 = 0.0;
  }

  v29 = *(&v21 + 1) / *&v21;
  if (((v21 & 0x7FFFFFFF) - 0x800000) >> 24 >= 0x7F)
  {
    v29 = 0.0;
  }

  if (*&v21 <= *(&v21 + 1))
  {
    v27.f32[0] = v29;
  }

  else
  {
    v27.f32[0] = v28;
  }

  *v8 = vbsl_s8(vdup_lane_s32(vcgt_f32(*v27.f32, 0), 0), 0x40A0000040900000, 0x40E0000040C00000);
  if (((LODWORD(v20) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v19;
  }

  v31 = (((v30 * (v23 * 30.0)) * v24) + 0.0);
  if (!v22)
  {
    v31 = 0;
  }

  result = vdup_n_s32(v31);
  *v12 = result;
  *v14 = result;
  return result;
}

_BYTE **__vfx_script_confetti_graph_243(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 1;
  return result;
}

int32x2_t __vfx_script_confetti_graph_246(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *(arguments_buffer_delayInitStub + 24);
  v3 = *(arguments_buffer_delayInitStub + 40);
  v4 = *(arguments_buffer_delayInitStub + 56);
  v5 = *(arguments_buffer_delayInitStub + 88);
  v6 = *(arguments_buffer_delayInitStub + 104);
  v7 = *(arguments_buffer_delayInitStub + 112);
  v8 = **(arguments_buffer_delayInitStub + 16);
  v9 = **(arguments_buffer_delayInitStub + 32);
  v10 = **(arguments_buffer_delayInitStub + 48);
  v11 = **(arguments_buffer_delayInitStub + 64);
  v12 = **(arguments_buffer_delayInitStub + 72);
  v15 = *v5;
  v13 = **(arguments_buffer_delayInitStub + 80) / *v5;
  v14 = *v5;
  LOBYTE(v15) = **(arguments_buffer_delayInitStub + 96);
  **(arguments_buffer_delayInitStub + 8) = **arguments_buffer_delayInitStub;
  *v2 = v8;
  *v3 = v9;
  *v4 = vbsl_s8(vdup_lane_s32(vcgt_f32(v10, vdup_lane_s32(v10, 1)), 0), 0x4040000040200000, 0x40D0000040C00000);
  v16 = 0.0;
  if (((v14 & 0x7FFFFFFF) - 0x800000) >> 24 < 0x7F)
  {
    v16 = v13;
  }

  v17 = (((v12 * 150.0) * v16) + (((((v12 * 150.0) * v16) * 0.5) - ((v12 * 150.0) * v16)) * v15));
  if (!v11)
  {
    v17 = 0;
  }

  result = vdup_n_s32(v17);
  *v6 = result;
  *v7 = result;
  return result;
}

float __vfx_script_confetti_graph_247(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

uint64_t __vfx_script_confetti_particleInit_234(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleInit_237(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleInit_240(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleInit_244(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleInit_248(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleUpdate_235(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleUpdate_238(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_confetti_particleUpdate_241(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

void __vfx_script_confetti_particleUpdate_245(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_confetti_graph_233_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_4()
{
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimation_forKey_ = sel_registerName("addAnimation:forKey:");
  _vfx_objc_sel_removeAllAnimationsWithBlendOutDuration_ = sel_registerName("removeAllAnimationsWithBlendOutDuration:");
  _vfx_objc_sel_removeAnimationForKey_blendOutDuration_ = sel_registerName("removeAnimationForKey:blendOutDuration:");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_insertChildNode_ = sel_registerName("insertChildNode:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  result = sel_registerName("worldNormal");
  _vfx_objc_sel_worldNormal = result;
  return result;
}

float __vfx_script_lighting_graph_6(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lighting_graph_6_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_lighting_graph_7(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lighting_graph_6_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 300.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

float __vfx_script_lighting_graph_8(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_lighting_graph_6_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  result = **arguments_buffer_delayInitStub * 1000.0;
  *arguments_buffer_delayInitStub[1] = result;
  return result;
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_5()
{
  _vfx_objc_sel_setValue_forKeyPath_ = sel_registerName("setValue:forKeyPath:");
  _vfx_objc_sel_valueForKeyPath_ = sel_registerName("valueForKeyPath:");
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_VFXTransaction = objc_lookUpClass("VFXTransaction");
  _vfx_objc_sel_begin = sel_registerName("begin");
  _vfx_objc_sel_setAnimationDurationAsFloat_ = sel_registerName("setAnimationDurationAsFloat:");
  _vfx_objc_sel_commit = sel_registerName("commit");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSValue = objc_lookUpClass("NSValue");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithFloat_ = sel_registerName("numberWithFloat:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimationAsset_forKey_ = sel_registerName("addAnimationAsset:forKey:");
  _vfx_objc_sel_removeAllAnimations = sel_registerName("removeAllAnimations");
  _vfx_objc_sel_removeAnimationForKey_ = sel_registerName("removeAnimationForKey:");
  _vfx_objc_sel_script_rootNode = sel_registerName("script_rootNode");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_childNodes = sel_registerName("childNodes");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_convertPosition_toNode_ = sel_registerName("convertPosition:toNode:");
  _vfx_objc_sel_convertVector_toNode_ = sel_registerName("convertVector:toNode:");
  _vfx_objc_sel_convertTransform_toNode_ = sel_registerName("convertTransform:toNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_projectPoint_ = sel_registerName("projectPoint:");
  _vfx_objc_sel_unprojectPoint_ = sel_registerName("unprojectPoint:");
  _vfx_objc_sel_script_hitTest_options_ = sel_registerName("script_hitTest:options:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_setState_ = sel_registerName("setState:");
  _vfx_objc_sel_setStateNamed_ = sel_registerName("setStateNamed:");
  _vfx_objc_sel__contentsScaleFactor = sel_registerName("_contentsScaleFactor");
  _vfx_objc_sel__screenSize = sel_registerName("_screenSize");
  _vfx_objc_sel_physicsBody = sel_registerName("physicsBody");
  _vfx_objc_sel_script_instantiate_ = sel_registerName("script_instantiate:");
  _vfx_objc_sel_geometryIndex = sel_registerName("geometryIndex");
  _vfx_objc_sel_faceIndex = sel_registerName("faceIndex");
  _vfx_objc_sel_localCoordinates = sel_registerName("localCoordinates");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  _vfx_objc_sel_localNormal = sel_registerName("localNormal");
  _vfx_objc_sel_worldNormal = sel_registerName("worldNormal");
  _vfx_objc_sel_modelTransform = sel_registerName("modelTransform");
  _vfx_objc_sel_boneNode = sel_registerName("boneNode");
  _vfx_objc_sel_uv0 = sel_registerName("uv0");
  _vfx_objc_sel_presentationBoneNode = sel_registerName("presentationBoneNode");
  _vfx_objc_sel_presentationNode = sel_registerName("presentationNode");
  _vfx_objc_sel_applyForce_impulse_ = sel_registerName("applyForce:impulse:");
  _vfx_objc_sel_applyForce_atPosition_impulse_ = sel_registerName("applyForce:atPosition:impulse:");
  _vfx_objc_sel_applyTorque_impulse_ = sel_registerName("applyTorque:impulse:");
  result = sel_registerName("presentationObject");
  _vfx_objc_sel_presentationObject = result;
  return result;
}

void sub_22445F4E0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22445FF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id _PTFocusIdentifierMake(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0x7FFFFFFF00000000;
  if ((a2 & 0x7FFFFFFF00000000uLL) <= 0x10FFFFFFFFLL)
  {
    if (!v4)
    {
      v5 = @"A";
      goto LABEL_18;
    }

    if (v4 != 0x100000000)
    {
      if (v4 == 0x1000000000)
      {
        v5 = @"B";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v5 = @"F";
  }

  else if ((a2 & 0x7FFFFFFF00000000uLL) > 0x12FFFFFFFFLL)
  {
    if (v4 != 0x1300000000)
    {
      if (v4 == 0xFF00000000)
      {
        v5 = @"!";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v5 = @"R";
  }

  else
  {
    if (v4 != 0x1100000000)
    {
      if (v4 == 0x1200000000)
      {
        v5 = @"E";
        goto LABEL_18;
      }

LABEL_14:
      v5 = @"?";
      goto LABEL_18;
    }

    v5 = @"C";
  }

LABEL_18:
  v6 = @"_";
  if (a2 >= 0)
  {
    v6 = &stru_2837D16E8;
  }

  v7 = v6;
  v8 = [PTCinematographyDetection _prefixForDetectionType:a1];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@-%lu", v7, v5, v8, v2];

  return v9;
}

float32x2_t PTFilterRect(int8x16_t a1, int8x16_t a2, int32x2_t a3, int32x2_t a4)
{
  v4 = vextq_s8(a1, a1, 8uLL).u64[0];
  *v5.f32 = vmla_f32(*a1.i8, 0x3F0000003F000000, v4);
  *&v5.u32[2] = v4;
  v6 = vextq_s8(a2, a2, 8uLL).u64[0];
  *v7.f32 = vmla_f32(*a2.i8, 0x3F0000003F000000, v6);
  *&v7.u32[2] = v6;
  *v8.f32 = vdup_lane_s32(a3, 0);
  *&v8.u32[2] = vdup_lane_s32(a4, 0);
  v9 = vmlaq_f32(v5, vsubq_f32(v7, v5), v8);
  return vmls_f32(*v9.i8, 0x3F0000003F000000, *&vextq_s8(v9, v9, 8uLL));
}

float32x2_t PTFilterRectDEMA(float32x4_t *a1, float32x4_t *a2, int8x16_t a3, int32x2_t a4, int32x2_t a5)
{
  v5 = vextq_s8(a3, a3, 8uLL).u64[0];
  *v6.f32 = vmla_f32(*a3.i8, 0x3F0000003F000000, v5);
  *&v6.u32[2] = v5;
  *v7.f32 = vdup_lane_s32(a4, 0);
  *&v7.u32[2] = vdup_lane_s32(a5, 0);
  v8 = vmlaq_f32(*a1, vsubq_f32(v6, *a1), v7);
  *a1 = v8;
  v9 = vmlaq_f32(*a2, vsubq_f32(v8, *a2), v7);
  *a2 = v9;
  v10.i64[0] = 0x4000000040000000;
  v10.i64[1] = 0x4000000040000000;
  v11 = vmlaq_f32(vnegq_f32(v9), v10, *a1);
  return vmls_f32(*v11.i8, 0x3F0000003F000000, *&vextq_s8(v11, v11, 8uLL));
}

float PeakInNormalizedRectFromLockedPixelBufferInfo(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, float *a7, void *a8, float64_t a9, float64_t a10, double a11, double a12)
{
  v105 = *MEMORY[0x277D85DE8];
  v23 = a8;
  v26 = v23;
  if (v23)
  {
    v27 = v23;
    if (a6 == 1717856627)
    {
      v28 = a9;
      v29 = a10;
      v30 = a11;
      v32 = a2;
      v33 = a3;
      v31 = a12;
      v34 = a4;
      v35 = a5;
      v36 = v27;
      v37 = 0;
      goto LABEL_9;
    }

    if (a6 == 1751411059)
    {
      v28 = a9;
      v29 = a10;
      v30 = a11;
      v31 = a12;
      v32 = a2;
      v33 = a3;
      v34 = a4;
      v35 = a5;
      v36 = v27;
      v37 = 1;
LABEL_9:
      HistogramInNormalizedRectFromLockedPixelBufferInfo_Mask(v104, v32, v33, v34, v35, v36, v37, v28, v29, v30, v31);
LABEL_16:

      goto LABEL_17;
    }

    v46 = _PTLogSystem();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v75 = NSStringFromFourCharCode(a6);
      *v97 = 138412802;
      v98 = v75;
      v99 = 2048;
      v100 = a3;
      v101 = 2048;
      v102 = a4;
      _os_log_error_impl(&dword_2243FB000, v46, OS_LOG_TYPE_ERROR, "error: histogram - unexpected pixel format type '%@' (%zdx%zd) - must be DisparityFloat16 or DisparityFloat32", v97, 0x20u);
    }

LABEL_12:

    goto LABEL_16;
  }

  if (a6 == 1717856627)
  {
    v24.f64[0] = a9;
    v38 = a10;
    v39 = a11;
    v41 = a2;
    v42 = a3;
    v40 = a12;
    v43 = a4;
    v44 = a5;
    v45 = 0;
  }

  else
  {
    if (a6 != 1751411059)
    {
      v27 = _PTLogSystem();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v46 = NSStringFromFourCharCode(a6);
      *v97 = 138412802;
      v98 = v46;
      v99 = 2048;
      v100 = a3;
      v101 = 2048;
      v102 = a4;
      _os_log_error_impl(&dword_2243FB000, v27, OS_LOG_TYPE_ERROR, "error: histogram - unexpected pixel format type '%@' (%zdx%zd) - must be DisparityFloat16 or DisparityFloat32", v97, 0x20u);
      goto LABEL_12;
    }

    v24.f64[0] = a9;
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a2;
    v42 = a3;
    v43 = a4;
    v44 = a5;
    v45 = 1;
  }

  HistogramInNormalizedRectFromLockedPixelBufferInfo_FloatSize(v104, v41, v42, v43, v44, v45, v24, v38, v39, v40, v25);
LABEL_17:
  v47 = 0;
  v48 = 0;
  v49 = 0;
  do
  {
    v50 = v104[v47];
    if (v50 < 1)
    {
      goto LABEL_24;
    }

    if (v47 * 4)
    {
      if (*&v103[v47 * 4] > v50)
      {
        goto LABEL_24;
      }

      if (v47 == 191)
      {
        goto LABEL_23;
      }
    }

    if (v50 > v104[v47 + 1])
    {
LABEL_23:
      *&v97[4 * v49++] = v48;
    }

LABEL_24:
    ++v48;
    ++v47;
  }

  while (v47 != 192);
  do
  {
    v51 = v49;
    if (v49 < 3)
    {
      break;
    }

    v52 = 0;
    v49 = 0;
    v53 = (v51 - 1);
    v54 = v97;
    do
    {
      if (!v52 || v104[*(v54 - 1)] <= v104[*v54])
      {
        if (v53 == v52)
        {
          LODWORD(v55) = *&v97[4 * v53];
        }

        else
        {
          v55 = *v54;
          if (v104[v55] <= v104[*(v54 + 1)])
          {
            goto LABEL_33;
          }
        }

        *&v97[4 * v49++] = v55;
      }

LABEL_33:
      ++v52;
      v54 += 4;
    }

    while (v51 != v52);
  }

  while (v49 < v51);
  if (v51)
  {
    if (v51 <= 0)
    {
      PeakInNormalizedRectFromLockedPixelBufferInfo_cold_1();
    }

    v56 = (v51 - 1);
    v57 = (((*&v97[4 * v56] + 0.5) * 7.65) / 192.0) + 0.0;
    if (a7 && v51 != 1)
    {
      v58 = v56 + 1;
      v59 = &v97[4 * v56];
      v60 = INFINITY;
      do
      {
        v61 = *v59;
        v59 -= 4;
        v62 = ((v61 + 0.5) * 7.65) / 192.0;
        if (v62 > 0.0)
        {
          v63 = fabsf((*a7 / v62) + -1.0);
          if (v60 > v63)
          {
            v57 = v62;
            v60 = v63;
          }
        }
      }

      while (v58-- > 1);
    }

    v65 = _PTLogSystem();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219264;
      v78 = a1;
      v79 = 2048;
      v80 = a9;
      v81 = 2048;
      v82 = a10;
      v83 = 2048;
      v84 = a11;
      v85 = 2048;
      v86 = a12;
      v87 = 2048;
      v88 = v57;
      v66 = "detection type: %ld rect: { %.3f, %.3f, %.3f, %.3f } disparity: %.3f";
      v67 = v65;
      v68 = 62;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v69 = _PTLogSystem();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2243FB000, v69, OS_LOG_TYPE_INFO, "Failed to find peaks in disparity buffer, using prior or default disparity value", buf, 2u);
  }

  if (a7)
  {
    v57 = *a7;
  }

  else
  {
    v57 = 3.8449;
  }

  v70 = _PTLogSystem();
  v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG);

  if (v71)
  {
    v72 = 0;
    v73 = 0uLL;
    do
    {
      v73 = vaddq_s32(*&v104[v72], v73);
      v72 += 4;
    }

    while (v72 != 192);
    v76 = v73;
    v65 = _PTLogSystem();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134220288;
      v78 = a1;
      v79 = 2048;
      v80 = a9;
      v81 = 2048;
      v82 = a10;
      v83 = 2048;
      v84 = a11;
      v85 = 2048;
      v86 = a12;
      v87 = 2048;
      v88 = *&a3;
      v89 = 2048;
      v90 = a4;
      v91 = 1024;
      v92 = vaddvq_s32(v76);
      v93 = 1024;
      v94 = a7 != 0;
      v95 = 2048;
      v96 = v57;
      v66 = "detection type: %ld rect: { %.3f, %.3f, %.3f, %.3f } buffer size: (%zu,%zu) hist samples:%u prior:%u disparity: unknown (returning %.3f)";
      v67 = v65;
      v68 = 94;
LABEL_57:
      _os_log_debug_impl(&dword_2243FB000, v67, OS_LOG_TYPE_DEBUG, v66, buf, v68);
    }

LABEL_58:
  }

  return v57;
}

float PTDisparityInNormalizedRectFromPixelBufferWithPrior(uint64_t a1, CVPixelBufferRef pixelBuffer, float *a3, float64_t a4, float64_t a5, double a6, double a7)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  LODWORD(a7) = PeakInNormalizedRectFromLockedPixelBufferInfo(a1, BaseAddress, Width, Height, BytesPerRow, PixelFormatType, a3, 0, a4, a5, a6, a7);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return *&a7;
}

float _PTDisparityInNormalizedRectFromPixelBufferWithMask(uint64_t a1, __CVBuffer *a2, float *a3, void *a4, float64_t a5, float64_t a6, double a7, double a8)
{
  v15 = a4;
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  LODWORD(a8) = PeakInNormalizedRectFromLockedPixelBufferInfo(a1, BaseAddress, Width, Height, BytesPerRow, PixelFormatType, a3, v15, a5, a6, a7, a8);

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return *&a8;
}

void HistogramInNormalizedRectFromLockedPixelBufferInfo_Mask(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, int a7, float64_t a8, float64_t a9, double a10, double a11)
{
  v37 = a6;
  v21.f64[0] = a3;
  v22.f64[0] = a8;
  [v37 setPlacement:{_PTDenormalizeRect(v22, a9, a10, a11, v21, a4)}];
  bzero(a1, 0x300uLL);
  v23 = [v37 scanlineIter];
  v24 = [v23 nextRangeY];
  if (v25)
  {
    v26 = v24;
    do
    {
      v27 = v26 + v25;
      if (v26 < v26 + v25)
      {
        v28 = a2 + a5 * v26;
        do
        {
          [v23 resetX];
          while (1)
          {
            v29 = [v23 nextRangeX];
            if (!v30)
            {
              break;
            }

            if (v29 < v29 + v30)
            {
              do
              {
                if (a7)
                {
                  _H0 = *(v28 + 2 * v29);
                  __asm { FCVT            S0, H0 }
                }

                else
                {
                  _S0 = *(v28 + 4 * v29);
                }

                if (_S0 >= 0.0 && _S0 < 7.65)
                {
                  ++*(a1 + ((_S0 * 192.0) / 7.65));
                }

                ++v29;
                --v30;
              }

              while (v30);
            }
          }

          ++v26;
          v28 += a5;
        }

        while (v26 != v27);
      }

      v26 = [v23 nextRangeY];
    }

    while (v25);
  }
}

double _PTDenormalizeRect(float64x2_t a1, float64_t a2, double a3, double a4, float64x2_t a5, float64_t a6)
{
  a1.f64[1] = a2;
  a5.f64[1] = a6;
  __asm { FMOV            V1.2D, #0.5 }

  v11 = vrndmq_f64(vmlaq_f64(_Q1, a5, a1));
  __asm { FMOV            V1.2D, #-2.0 }

  v13 = vaddq_f64(a5, _Q1);
  v14 = vbslq_s8(vcgtq_f64(v13, v11), v11, v13);
  *&result = vbicq_s8(v14, vcltzq_f64(v14)).u64[0];
  __asm { FMOV            V2.2D, #2.0 }

  return result;
}

void HistogramInNormalizedRectFromLockedPixelBufferInfo_FloatSize(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, float64x2_t a7, float64_t a8, double a9, double a10, float64x2_t a11)
{
  a11.f64[0] = a3;
  v15 = _PTDenormalizeRect(a7, a8, a9, a10, a11, a4);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (PTDepthInRectSensitivity_onceToken != -1)
  {
    HistogramInNormalizedRectFromLockedPixelBufferInfo_FloatSize_cold_1();
  }

  v22 = *&PTDepthInRectSensitivity_sDepthInRectSensitivity;
  v23 = *&PTDepthInRectSensitivity_sDepthInRectSensitivity * v21;
  if ((*&PTDepthInRectSensitivity_sDepthInRectSensitivity * v21) < 3.0)
  {
    v23 = 3.0;
  }

  v24 = (fmaxf((v21 - v23) * 0.5, 0.0) + v19);
  v25 = (v23 + v21) * 0.5;
  if (v25 > v21)
  {
    v25 = v21;
  }

  v26 = (v25 + v19);
  bzero(a1, 0x300uLL);
  if (v24 < v26)
  {
    v27 = v15;
    v28 = v17;
    v29 = a2 + v24 * a5;
    do
    {
      v30 = (((v24 - v19) + (v24 - v19)) / v21) + -1.0;
      v31 = (v22 * v22) - (v30 * v30);
      v32 = sqrtf(v31) * v28;
      if (v31 <= 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v32;
      }

      if (v33 < 3.0)
      {
        v33 = 3.0;
      }

      v34 = (fmaxf((v28 - v33) * 0.5, 0.0) + v27);
      v35 = (v33 + v28) * 0.5;
      if (v35 > v28)
      {
        v35 = v17;
      }

      v36 = (v35 + v27);
      if (v34 < v36)
      {
        do
        {
          if (a6)
          {
            _H5 = *(v29 + 2 * v34);
            __asm { FCVT            S5, H5 }
          }

          else
          {
            _S5 = *(v29 + 4 * v34);
          }

          if (_S5 >= 0.0 && _S5 < 7.65)
          {
            ++*(a1 + ((_S5 * 192.0) / 7.65));
          }

          ++v34;
        }

        while (v36 != v34);
      }

      ++v24;
      v29 += a5;
    }

    while (v24 != v26);
  }
}

void sub_22446DF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double CGRectFromRectDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"X"];
  [v2 floatValue];
  v4 = v3;
  v5 = [v1 objectForKeyedSubscript:@"Y"];
  [v5 floatValue];
  v6 = [v1 objectForKeyedSubscript:@"Width"];
  [v6 floatValue];
  v7 = [v1 objectForKeyedSubscript:@"Height"];

  [v7 floatValue];
  return v4;
}

_DWORD **__vfx_script_thumbsup_graph_127(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 0;
  return result;
}

_DWORD **__vfx_script_thumbsup_graph_128(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  **result = 0;
  return result;
}

float32_t __vfx_script_thumbsup_graph_130(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = arguments_buffer_delayInitStub[1];
  v3 = arguments_buffer_delayInitStub[2];
  v4 = arguments_buffer_delayInitStub[5];
  v5 = **arguments_buffer_delayInitStub;
  v6 = *arguments_buffer_delayInitStub[4];
  v7 = -1.0;
  if (*arguments_buffer_delayInitStub[3])
  {
    v7 = 1.0;
  }

  *(arguments_buffer_delayInitStub[6] + 1) = v7;
  *v4 = v6;
  *v3 = vdup_n_s32(0x3BB0F27Cu);
  v8 = v5 == 0;
  result = 0.1;
  v10 = &unk_2244C5FF8;
  v11 = vld1q_dup_f32(v10);
  if (!v8)
  {
    result = -0.1;
  }

  v11.f32[0] = result;
  *(v2 + 2) = -1090519040;
  *v2 = v11.i64[0];
  return result;
}

unsigned __int8 **__vfx_script_thumbsup_graph_132(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  result = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = result[1];
  v3 = result[4];
  v4 = **result;
  v5 = *result[3];
  if (*result[2])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = -1.0;
  }

  *result[5] = v6;
  *v3 = v5;
  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = -1.0;
  }

  *v2 = v7;
  return result;
}

int32x4_t __vfx_script_thumbsup_graph_134(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *arguments_buffer_delayInitStub;
  v3 = *(arguments_buffer_delayInitStub + 8);
  v4 = *(arguments_buffer_delayInitStub + 24);
  v5 = **(arguments_buffer_delayInitStub + 16);
  *(*(arguments_buffer_delayInitStub + 32) + 4) = -1082130432;
  *v4 = v5;
  *(v3 + 8) = 1008981770;
  result = vdupq_n_s32(0x3CA3D70Au);
  *v3 = result.i64[0];
  *v2 = result;
  return result;
}

int32x4_t __vfx_script_thumbsup_graph_136(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  arguments_buffer_delayInitStub = vfx_script_get_arguments_buffer_delayInitStub(a1);
  v2 = *arguments_buffer_delayInitStub;
  v3 = *(arguments_buffer_delayInitStub + 8);
  v4 = *(arguments_buffer_delayInitStub + 24);
  v5 = **(arguments_buffer_delayInitStub + 16);
  *(*(arguments_buffer_delayInitStub + 32) + 4) = -1082130432;
  *v4 = v5;
  *(v3 + 8) = 1008981770;
  result = vdupq_n_s32(0x3CA3D70Au);
  *v3 = result.i64[0];
  *v2 = result;
  return result;
}

uint64_t __vfx_script_thumbsup_particleInit_129(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_thumbsup_particleInit_133(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_thumbsup_particleInit_138(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_thumbsup_particleUpdate_131(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_thumbsup_particleUpdate_135(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

uint64_t __vfx_script_thumbsup_particleUpdate_137(double a1)
{
  if (vfx_script_initialize_objc_helpers(void)::once != -1)
  {
    __vfx_script_thumbsup_graph_127_cold_1();
  }

  vfx_script_get_iteration_range_delayInitStub(a1);
  return vfx_script_get_arguments_buffer_delayInitStub(v1);
}

SEL ___ZL34vfx_script_initialize_objc_helpersv_block_invoke_6()
{
  _vfx_objc_sel_setValue_forKeyPath_ = sel_registerName("setValue:forKeyPath:");
  _vfx_objc_sel_valueForKeyPath_ = sel_registerName("valueForKeyPath:");
  _vfx_objc_cls_NSString = objc_lookUpClass("NSString");
  _vfx_objc_sel_stringWithUTF8String_ = sel_registerName("stringWithUTF8String:");
  _vfx_objc_cls_VFXTransaction = objc_lookUpClass("VFXTransaction");
  _vfx_objc_sel_begin = sel_registerName("begin");
  _vfx_objc_sel_setAnimationDurationAsFloat_ = sel_registerName("setAnimationDurationAsFloat:");
  _vfx_objc_sel_commit = sel_registerName("commit");
  _vfx_objc_cls_NSDictionary = objc_lookUpClass("NSDictionary");
  _vfx_objc_cls_NSMutableDictionary = objc_lookUpClass("NSMutableDictionary");
  _vfx_objc_sel_dictionary = sel_registerName("dictionary");
  _vfx_objc_sel_setValue_forKey_ = sel_registerName("setValue:forKey:");
  _vfx_objc_sel_setObject_forKey_ = sel_registerName("setObject:forKey:");
  _vfx_objc_cls_NSValue = objc_lookUpClass("NSValue");
  _vfx_objc_cls_NSNumber = objc_lookUpClass("NSNumber");
  _vfx_objc_sel_numberWithBool_ = sel_registerName("numberWithBool:");
  _vfx_objc_sel_numberWithFloat_ = sel_registerName("numberWithFloat:");
  _vfx_objc_sel_numberWithUnsignedInteger_ = sel_registerName("numberWithUnsignedInteger:");
  _vfx_objc_sel_firstObject = sel_registerName("firstObject");
  _vfx_objc_sel_count = sel_registerName("count");
  _vfx_objc_cls_VFXNode = objc_lookUpClass("VFXNode");
  _vfx_objc_sel_addAnimationAsset_forKey_ = sel_registerName("addAnimationAsset:forKey:");
  _vfx_objc_sel_removeAllAnimations = sel_registerName("removeAllAnimations");
  _vfx_objc_sel_removeAnimationForKey_ = sel_registerName("removeAnimationForKey:");
  _vfx_objc_sel_script_rootNode = sel_registerName("script_rootNode");
  _vfx_objc_sel_clone = sel_registerName("clone");
  _vfx_objc_sel_parentNode = sel_registerName("parentNode");
  _vfx_objc_sel_addChildNode_ = sel_registerName("addChildNode:");
  _vfx_objc_sel_childNodes = sel_registerName("childNodes");
  _vfx_objc_sel_deepClone = sel_registerName("deepClone");
  _vfx_objc_sel_insertChildNode_atIndex_ = sel_registerName("insertChildNode:atIndex:");
  _vfx_objc_sel_removeFromParentNode = sel_registerName("removeFromParentNode");
  _vfx_objc_sel_childNodeWithName_ = sel_registerName("childNodeWithName:");
  _vfx_objc_sel_convertPosition_fromNode_ = sel_registerName("convertPosition:fromNode:");
  _vfx_objc_sel_convertVector_fromNode_ = sel_registerName("convertVector:fromNode:");
  _vfx_objc_sel_convertTransform_fromNode_ = sel_registerName("convertTransform:fromNode:");
  _vfx_objc_sel_convertPosition_toNode_ = sel_registerName("convertPosition:toNode:");
  _vfx_objc_sel_convertVector_toNode_ = sel_registerName("convertVector:toNode:");
  _vfx_objc_sel_convertTransform_toNode_ = sel_registerName("convertTransform:toNode:");
  _vfx_objc_sel_localTranslateBy_ = sel_registerName("localTranslateBy:");
  _vfx_objc_sel_localRotateBy_ = sel_registerName("localRotateBy:");
  _vfx_objc_sel_rotateBy_aroundTarget_ = sel_registerName("rotateBy:aroundTarget:");
  _vfx_objc_sel_projectPoint_ = sel_registerName("projectPoint:");
  _vfx_objc_sel_unprojectPoint_ = sel_registerName("unprojectPoint:");
  _vfx_objc_sel_script_hitTest_options_ = sel_registerName("script_hitTest:options:");
  _vfx_objc_sel_hitTestWithSegmentFromPoint_toPoint_options_ = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  _vfx_objc_sel_node = sel_registerName("node");
  _vfx_objc_sel_setState_ = sel_registerName("setState:");
  _vfx_objc_sel_setStateNamed_ = sel_registerName("setStateNamed:");
  _vfx_objc_sel__contentsScaleFactor = sel_registerName("_contentsScaleFactor");
  _vfx_objc_sel__screenSize = sel_registerName("_screenSize");
  _vfx_objc_sel_physicsBody = sel_registerName("physicsBody");
  _vfx_objc_sel_script_instantiate_ = sel_registerName("script_instantiate:");
  _vfx_objc_sel_geometryIndex = sel_registerName("geometryIndex");
  _vfx_objc_sel_faceIndex = sel_registerName("faceIndex");
  _vfx_objc_sel_localCoordinates = sel_registerName("localCoordinates");
  _vfx_objc_sel_worldCoordinates = sel_registerName("worldCoordinates");
  _vfx_objc_sel_localNormal = sel_registerName("localNormal");
  _vfx_objc_sel_worldNormal = sel_registerName("worldNormal");
  _vfx_objc_sel_modelTransform = sel_registerName("modelTransform");
  _vfx_objc_sel_boneNode = sel_registerName("boneNode");
  _vfx_objc_sel_uv0 = sel_registerName("uv0");
  _vfx_objc_sel_presentationBoneNode = sel_registerName("presentationBoneNode");
  _vfx_objc_sel_presentationNode = sel_registerName("presentationNode");
  _vfx_objc_sel_applyForce_impulse_ = sel_registerName("applyForce:impulse:");
  _vfx_objc_sel_applyForce_atPosition_impulse_ = sel_registerName("applyForce:atPosition:impulse:");
  _vfx_objc_sel_applyTorque_impulse_ = sel_registerName("applyTorque:impulse:");
  result = sel_registerName("presentationObject");
  _vfx_objc_sel_presentationObject = result;
  return result;
}

void sub_224473874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PTKTraceInit()
{
  if (initializeOnceToken != -1)
  {
    PTKTraceInit_cold_1();
  }
}

void ptKTraceInitialize()
{
  if (kdebug_is_enabled())
  {
    v0 = _PTLogSystem();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_2243FB000, v0, OS_LOG_TYPE_INFO, "Tracing enabled", v1, 2u);
    }
  }
}

void computeGaussianKernel2D(uint64_t a1)
{
  v2 = 0.0;
  v3 = -1;
  v4 = a1;
  do
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v7 = pow(2.71828183, (((v6 * v6) + (v3 * v3)) * -0.5)) * 0.159154943;
      v2 = v2 + v7;
      *(v4 + v5) = v7;
      v5 += 12;
      ++v6;
    }

    while (v5 != 36);
    ++v3;
    v4 += 4;
  }

  while (v3 != 2);
  for (i = 0; i != 36; i += 4)
  {
    *(a1 + i) = *(a1 + i) / v2;
  }
}

uint64_t orientationForTransform(double *a1)
{
  v1 = 0;
  for (i = &qword_2244C61B8; vabdd_f64(*a1, *(i - 2)) >= 0.00999999978 || vabdd_f64(a1[1], *(i - 1)) >= 0.00999999978 || vabdd_f64(a1[2], *i) >= 0.00999999978 || vabdd_f64(a1[3], i[1]) >= 0.00999999978; i += 6)
  {
    if (++v1 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return orientationForTransform_kDegreeMapping[v1];
}

id PTVersionToStringWithComponents(uint64_t a1, uint64_t a2, id a3)
{
  if (a2 == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%d.%d", (a1 >> 20), (a1 >> 10) & 0x3FF, a1 & 0x3FF];
  }

  else if (a2 == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%d", (a1 >> 20), (a1 >> 10) & 0x3FF, v5];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (a1 >> 20), v4, v5];
  }
  a3 = ;
LABEL_8:

  return a3;
}

id PTVersionStringWithComponents(void *a1, uint64_t a2)
{
  v3 = PTVersionFromString(a1);

  return PTVersionToStringWithComponents(v3, a2, v4);
}

uint64_t PTVersionFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count];
  v3 = 0;
  if (v2 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v4 = [v1 objectAtIndexedSubscript:2];
      v5 = [v4 integerValue];

      v3 = v5 & 0x3FF;
    }

    v6 = v3;
    v7 = [v1 objectAtIndexedSubscript:1];
    v8 = [v7 integerValue];

    v3 = (v8 & 0x3FF) << 10;
  }

  v9 = [v1 objectAtIndexedSubscript:0];
  v10 = [v9 integerValue];

  v11 = (v3 | (v10 << 20)) + v6;
LABEL_9:

  return v11;
}

void SetEspressoArray_cold_1(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);
}

void _DebugLogEspressoBufferRow_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __loadMetadataForFormat_block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_2243FB000, v1, OS_LOG_TYPE_ERROR, "Error loadMetadataForFormat %@ format %@", v2, 0x16u);
}

void PTParameterPairSerialization_GetParameter_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Couldn't find parameter %d in parameter pair list.", v2, 8u);
}

id getVCPRequestFrameWidthPropertyKey_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [(PTSerialization *)v0 objectFromData:v1 error:v2, v3];
}

void _ErrorForDataBufferNotFoundAtURL_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"data buffer not found at url";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "%@: %@", &v2, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

uint64_t vfx_script_clock_delta_time_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF318]();
}

uint64_t vfx_script_clock_is_first_frame_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF328]();
}

uint64_t vfx_script_clock_simulation_index_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF338]();
}

uint64_t vfx_script_clock_time_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF340]();
}

uint64_t vfx_script_color_ramp_create_setting_color_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF360]();
}

uint64_t vfx_script_color_ramp_destroy_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF370]();
}

uint64_t vfx_script_color_ramp_evaluate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF378]();
}

uint64_t vfx_script_curve_create_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF380]();
}

uint64_t vfx_script_curve_destroy_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF390]();
}

uint64_t vfx_script_curve_evaluate_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3A8]();
}

uint64_t vfx_script_get_arguments_buffer_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3B8]();
}

uint64_t vfx_script_get_iteration_range_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3C8]();
}

uint64_t vfx_script_particle_find_nearest_neighbors_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3D0]();
}

uint64_t vfx_script_particle_get_id_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3D8]();
}

uint64_t vfx_script_particle_get_position_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3E0]();
}

uint64_t vfx_script_particle_get_size1d_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3E8]();
}

uint64_t vfx_script_texture_sample1d_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }

  return MEMORY[0x2821DF3F0]();
}

double gotLoadHelper_x8__OBJC_CLASS___VFXAssetNode(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

void gotLoadHelper_x27__OBJC_CLASS___VFXClientTextureAsset(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    dlopenHelper_VFX(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___VFXNode(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VFXRenderOptions(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VFXRenderer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VFXTextureAttachmentDescriptor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VFXTransaction(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___VFXWorld(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double gotLoadHelper_x8__VFXWorldLoaderOptionMetalLibraryURL(double result)
{
  if (!atomic_load(&dlopenHelperFlag_VFX))
  {
    return dlopenHelper_VFX(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_VFX(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/VFX.framework/VFX", 0);
  atomic_store(1u, &dlopenHelperFlag_VFX);
  return a1;
}
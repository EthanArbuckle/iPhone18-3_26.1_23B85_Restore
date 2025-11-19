@interface PTParameterPairSerialization
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)getCMTimeParameter:(SEL)a3 scale:(unsigned __int16)a4 fromPairs:(int)a5 numPairs:(id *)a6 withDefault:(unsigned int)a7;
+ (float)getFloatParameter:(unsigned __int16)a3 fromPairs:(id *)a4 numPairs:(unsigned int)a5 didFindValue:(BOOL *)a6;
+ (float)getFloatParameter:(unsigned __int16)a3 fromPairs:(id *)a4 numPairs:(unsigned int)a5 withDefault:(float)a6;
+ (unsigned)getUIntParameter:(unsigned __int16)a3 fromPairs:(id *)a4 numPairs:(unsigned int)a5 withDefault:(unsigned int)a6 didFindValue:(BOOL *)a7;
+ (void)appendCMTimeParameter:(unsigned __int16)a3 value:(id *)a4 scale:(int)a5 toOutput:(id *)a6;
+ (void)appendFloatParameter:(unsigned __int16)a3 value:(float)a4 toOutput:(id *)a5;
+ (void)appendUIntParameter:(unsigned __int16)a3 value:(unsigned int)a4 toOutput:(id *)a5;
@end

@implementation PTParameterPairSerialization

+ (void)appendFloatParameter:(unsigned __int16)a3 value:(float)a4 toOutput:(id *)a5
{
  v6 = *a5;
  *v6 = __rev16(a3);
  *(v6 + 1) = 256;
  _PTSwapBigAssignFloat(v6 + 1, a4);
  *a5 = (*a5 + 8);
}

+ (void)appendUIntParameter:(unsigned __int16)a3 value:(unsigned int)a4 toOutput:(id *)a5
{
  v5 = *a5;
  *v5 = __rev16(a3);
  *(v5 + 1) = 512;
  *(v5 + 1) = bswap32(a4);
  *a5 = (*a5 + 8);
}

+ (void)appendCMTimeParameter:(unsigned __int16)a3 value:(id *)a4 scale:(int)a5 toOutput:(id *)a6
{
  v7 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if ((a4->var2 & 0x1D) == 1)
  {
    memset(&v16, 0, sizeof(v16));
    time = *a4;
    CMTimeMultiply(&v16, &time, 90000);
    time = v16;
    v10 = llround(CMTimeGetSeconds(&time));
    if (v10 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (v11 >> 31)
    {
      time = *a4;
      v12 = CMTimeCopyDescription(0, &time);
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(time.value) = 67109634;
        HIDWORD(time.value) = v7;
        LOWORD(time.timescale) = 2112;
        *(&time.timescale + 2) = v12;
        WORD1(time.epoch) = 1024;
        HIDWORD(time.epoch) = a5;
        _os_log_error_impl(&dword_2243FB000, v13, OS_LOG_TYPE_ERROR, "Failed to set parameter %d to CMTime value %@ using scale %d", &time, 0x18u);
      }
    }

    else
    {
      [a1 appendUIntParameter:v7 value:? toOutput:?];
    }
  }

  else
  {
    v16 = *a4;
    v14 = CMTimeCopyDescription(0, &v16);
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTParameterPairSerialization appendCMTimeParameter:v7 value:v14 scale:v15 toOutput:?];
    }
  }
}

+ (float)getFloatParameter:(unsigned __int16)a3 fromPairs:(id *)a4 numPairs:(unsigned int)a5 didFindValue:(BOOL *)a6
{
  v9 = NAN;
  Parameter = PTParameterPairSerialization_GetParameter(a4, a5, a3, 1, &v9);
  if (a6)
  {
    *a6 = Parameter;
  }

  return v9;
}

+ (float)getFloatParameter:(unsigned __int16)a3 fromPairs:(id *)a4 numPairs:(unsigned int)a5 withDefault:(float)a6
{
  v7 = a6;
  PTParameterPairSerialization_GetParameter(a4, a5, a3, 1, &v7);
  return v7;
}

+ (unsigned)getUIntParameter:(unsigned __int16)a3 fromPairs:(id *)a4 numPairs:(unsigned int)a5 withDefault:(unsigned int)a6 didFindValue:(BOOL *)a7
{
  v10 = a6;
  Parameter = PTParameterPairSerialization_GetParameter(a4, a5, a3, 2, &v10);
  if (a7)
  {
    *a7 = Parameter;
  }

  return v10;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)getCMTimeParameter:(SEL)a3 scale:(unsigned __int16)a4 fromPairs:(int)a5 numPairs:(id *)a6 withDefault:(unsigned int)a7
{
  LODWORD(value) = 0;
  result = PTParameterPairSerialization_GetParameter(a6, a7, a4, 2, &value);
  if (result)
  {
    v12 = value;

    return CMTimeMake(retstr, v12, a5);
  }

  else
  {
    *&retstr->var0 = *&a8->var0;
    retstr->var3 = a8->var3;
  }

  return result;
}

+ (void)appendCMTimeParameter:(os_log_t)log value:scale:toOutput:.cold.1(unsigned __int16 a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Failed to set parameter %d to non-numeric CMTime value %@", v3, 0x12u);
}

@end
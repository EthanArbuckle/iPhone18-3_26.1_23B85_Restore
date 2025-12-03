@interface PTParameterPairSerialization
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)getCMTimeParameter:(SEL)parameter scale:(unsigned __int16)scale fromPairs:(int)pairs numPairs:(id *)numPairs withDefault:(unsigned int)default;
+ (float)getFloatParameter:(unsigned __int16)parameter fromPairs:(id *)pairs numPairs:(unsigned int)numPairs didFindValue:(BOOL *)value;
+ (float)getFloatParameter:(unsigned __int16)parameter fromPairs:(id *)pairs numPairs:(unsigned int)numPairs withDefault:(float)default;
+ (unsigned)getUIntParameter:(unsigned __int16)parameter fromPairs:(id *)pairs numPairs:(unsigned int)numPairs withDefault:(unsigned int)default didFindValue:(BOOL *)value;
+ (void)appendCMTimeParameter:(unsigned __int16)parameter value:(id *)value scale:(int)scale toOutput:(id *)output;
+ (void)appendFloatParameter:(unsigned __int16)parameter value:(float)value toOutput:(id *)output;
+ (void)appendUIntParameter:(unsigned __int16)parameter value:(unsigned int)value toOutput:(id *)output;
@end

@implementation PTParameterPairSerialization

+ (void)appendFloatParameter:(unsigned __int16)parameter value:(float)value toOutput:(id *)output
{
  v6 = *output;
  *v6 = __rev16(parameter);
  *(v6 + 1) = 256;
  _PTSwapBigAssignFloat(v6 + 1, value);
  *output = (*output + 8);
}

+ (void)appendUIntParameter:(unsigned __int16)parameter value:(unsigned int)value toOutput:(id *)output
{
  v5 = *output;
  *v5 = __rev16(parameter);
  *(v5 + 1) = 512;
  *(v5 + 1) = bswap32(value);
  *output = (*output + 8);
}

+ (void)appendCMTimeParameter:(unsigned __int16)parameter value:(id *)value scale:(int)scale toOutput:(id *)output
{
  parameterCopy = parameter;
  v18 = *MEMORY[0x277D85DE8];
  if ((value->var2 & 0x1D) == 1)
  {
    memset(&v16, 0, sizeof(v16));
    time = *value;
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
      time = *value;
      v12 = CMTimeCopyDescription(0, &time);
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(time.value) = 67109634;
        HIDWORD(time.value) = parameterCopy;
        LOWORD(time.timescale) = 2112;
        *(&time.timescale + 2) = v12;
        WORD1(time.epoch) = 1024;
        HIDWORD(time.epoch) = scale;
        _os_log_error_impl(&dword_2243FB000, v13, OS_LOG_TYPE_ERROR, "Failed to set parameter %d to CMTime value %@ using scale %d", &time, 0x18u);
      }
    }

    else
    {
      [self appendUIntParameter:parameterCopy value:? toOutput:?];
    }
  }

  else
  {
    v16 = *value;
    v14 = CMTimeCopyDescription(0, &v16);
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTParameterPairSerialization appendCMTimeParameter:parameterCopy value:v14 scale:v15 toOutput:?];
    }
  }
}

+ (float)getFloatParameter:(unsigned __int16)parameter fromPairs:(id *)pairs numPairs:(unsigned int)numPairs didFindValue:(BOOL *)value
{
  v9 = NAN;
  Parameter = PTParameterPairSerialization_GetParameter(pairs, numPairs, parameter, 1, &v9);
  if (value)
  {
    *value = Parameter;
  }

  return v9;
}

+ (float)getFloatParameter:(unsigned __int16)parameter fromPairs:(id *)pairs numPairs:(unsigned int)numPairs withDefault:(float)default
{
  defaultCopy = default;
  PTParameterPairSerialization_GetParameter(pairs, numPairs, parameter, 1, &defaultCopy);
  return defaultCopy;
}

+ (unsigned)getUIntParameter:(unsigned __int16)parameter fromPairs:(id *)pairs numPairs:(unsigned int)numPairs withDefault:(unsigned int)default didFindValue:(BOOL *)value
{
  defaultCopy = default;
  Parameter = PTParameterPairSerialization_GetParameter(pairs, numPairs, parameter, 2, &defaultCopy);
  if (value)
  {
    *value = Parameter;
  }

  return defaultCopy;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)getCMTimeParameter:(SEL)parameter scale:(unsigned __int16)scale fromPairs:(int)pairs numPairs:(id *)numPairs withDefault:(unsigned int)default
{
  LODWORD(value) = 0;
  result = PTParameterPairSerialization_GetParameter(numPairs, default, scale, 2, &value);
  if (result)
  {
    v12 = value;

    return CMTimeMake(retstr, v12, pairs);
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
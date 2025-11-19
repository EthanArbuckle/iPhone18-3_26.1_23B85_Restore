@interface WK_RTCRtpEncodingParameters
+ (int)nativePriorityFromPriority:(int64_t)a3;
+ (int64_t)priorityFromNativePriority:(int)a3;
- (RtpEncodingParameters)nativeParameters;
- (WK_RTCRtpEncodingParameters)init;
- (WK_RTCRtpEncodingParameters)initWithNativeParameters:(const void *)a3;
@end

@implementation WK_RTCRtpEncodingParameters

- (WK_RTCRtpEncodingParameters)init
{
  v3.receiver = self;
  v3.super_class = WK_RTCRtpEncodingParameters;
  return [(WK_RTCRtpEncodingParameters *)&v3 init];
}

- (WK_RTCRtpEncodingParameters)initWithNativeParameters:(const void *)a3
{
  v4 = [(WK_RTCRtpEncodingParameters *)self init];
  if (v4)
  {
    v5 = *(a3 + 151);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a3 + 17);
    }

    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] rtcStringForStdString:a3 + 128];
      rid = v4->_rid;
      v4->_rid = v6;
    }

    v4->_isActive = *(a3 + 124);
    if (*(a3 + 24) == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 5)];
      maxBitrateBps = v4->_maxBitrateBps;
      v4->_maxBitrateBps = v8;
    }

    if (*(a3 + 32) == 1)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 7)];
      minBitrateBps = v4->_minBitrateBps;
      v4->_minBitrateBps = v10;
    }

    if (*(a3 + 48) == 1)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 5)];
      maxFramerate = v4->_maxFramerate;
      v4->_maxFramerate = v12;
    }

    if (*(a3 + 60) == 1)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 14)];
      numTemporalLayers = v4->_numTemporalLayers;
      v4->_numTemporalLayers = v14;
    }

    if (*(a3 + 72) == 1)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 8)];
      scaleResolutionDownBy = v4->_scaleResolutionDownBy;
      v4->_scaleResolutionDownBy = v16;
    }

    if (*(a3 + 4) == 1)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a3];
      ssrc = v4->_ssrc;
      v4->_ssrc = v18;
    }

    v4->_networkPriority = [WK_RTCRtpEncodingParameters priorityFromNativePriority:*(a3 + 4)];
  }

  return v4;
}

- (RtpEncodingParameters)nativeParameters
{
  retstr->var0.var0.__null_state_ = 0;
  retstr->var0.__engaged_ = 0;
  retstr->var1 = 1.0;
  retstr->var2 = 1;
  retstr->var3.var0.__null_state_ = 0;
  retstr->var3.__engaged_ = 0;
  retstr->var4.var0.__null_state_ = 0;
  retstr->var4.__engaged_ = 0;
  retstr->var5.var0.var0 = 0;
  retstr->var5.var1 = 0;
  retstr->var6.var0.__null_state_ = 0;
  retstr->var6.__engaged_ = 0;
  retstr->var7.var0.var0 = 0;
  retstr->var7.var1 = 0;
  retstr->var8.var0.var0 = 0;
  LOBYTE(retstr[1].var1) = 0;
  LOBYTE(retstr[1].var2) = 0;
  retstr[1].var3.__engaged_ = 0;
  retstr[1].var4.var0.__null_state_ = 1;
  retstr[1].var7.var0.var0 = 0;
  retstr[2].var7.var1 = 0;
  *&retstr[1].var4.__engaged_ = 0;
  p_engaged = &retstr[1].var4.__engaged_;
  *&retstr[1].var6.var0.__null_state_ = 0;
  retstr[1].var5.var0.var1 = 0.0;
  *&retstr[1].var5.var1 = 0;
  if (self->_rid)
  {
    [MEMORY[0x277CCACA8] rtcStdStringForString:?];
    *p_engaged = v13;
    *&retstr[1].var5.var1 = v14;
  }

  retstr[1].var4.var0.__null_state_ = self->_isActive;
  maxBitrateBps = self->_maxBitrateBps;
  if (maxBitrateBps)
  {
    retstr->var3.var0.__val_ = [(NSNumber *)maxBitrateBps intValue];
    retstr->var3.__engaged_ = 1;
  }

  minBitrateBps = self->_minBitrateBps;
  if (minBitrateBps)
  {
    retstr->var4.var0.__val_ = [(NSNumber *)minBitrateBps intValue];
    retstr->var4.__engaged_ = 1;
  }

  maxFramerate = self->_maxFramerate;
  if (maxFramerate)
  {
    retstr->var5.var0.var1 = [(NSNumber *)maxFramerate intValue];
    retstr->var5.var1 = 1;
  }

  numTemporalLayers = self->_numTemporalLayers;
  if (numTemporalLayers)
  {
    retstr->var6.var0.__val_ = [(NSNumber *)numTemporalLayers intValue];
    retstr->var6.__engaged_ = 1;
  }

  scaleResolutionDownBy = self->_scaleResolutionDownBy;
  if (scaleResolutionDownBy)
  {
    [(NSNumber *)scaleResolutionDownBy doubleValue];
    retstr->var7.var0.var1 = v10;
    retstr->var7.var1 = 1;
  }

  ssrc = self->_ssrc;
  if (ssrc)
  {
    retstr->var0.var0.__val_ = [(NSNumber *)ssrc unsignedLongValue];
    retstr->var0.__engaged_ = 1;
  }

  result = [WK_RTCRtpEncodingParameters nativePriorityFromPriority:self->_networkPriority];
  retstr->var2 = result;
  return result;
}

+ (int)nativePriorityFromPriority:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)priorityFromNativePriority:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

@end
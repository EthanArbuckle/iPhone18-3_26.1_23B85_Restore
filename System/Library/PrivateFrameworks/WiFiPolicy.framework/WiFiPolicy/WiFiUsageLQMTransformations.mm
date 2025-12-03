@interface WiFiUsageLQMTransformations
+ ($06626BA963112C91E7E52BBD3AECAE4D)ctrlFrmsPercentagesWithRxCtrlUcast:(SEL)ucast RTS:(unint64_t)s CTS:(unint64_t)tS BACK:(unint64_t)k ACK:(unint64_t)cK;
+ ($3CC19D079FD0B010EE84973AA846B91B)decodingAttemptsWithRxCrsGlitch:(SEL)glitch rxBadPLCP:(unint64_t)p RxBphyCrsGlitch:(unint64_t)crsGlitch rxBphyBadPLCP:(unint64_t)cP rxStart:(unint64_t)start;
+ ($3CC19D079FD0B010EE84973AA846B91B)rxUcastPercentagesWithRxData:(SEL)data rxMgmt:(unint64_t)mgmt rxCtrl:(unint64_t)ctrl;
+ ($50828A08DC8D0425568E958C1030530A)ratePercentagesWithTxRate:(SEL)rate rxRate:(unint64_t)rxRate txFallbackRate:(unint64_t)fallbackRate txFrames:(unint64_t)frames rxFrames:(unint64_t)rxFrames nss:(unint64_t)nss bw:(unint64_t)bw phyMode:(unint64_t)self0 band:(int)self1 deviceMaxRate:(int)self2;
+ ($9D2DAF67E984336BD89D1161AD44CF98)txErrorsPercentagesWithtxSuccess:(SEL)success txDropped:(unint64_t)dropped txNoBuff:(unint64_t)buff txNoRes:(unint64_t)res txNoAck:(unint64_t)ack txChipModeErr:(unint64_t)err txExpired:(unint64_t)expired txFail:(unint64_t)self0 txFwFree:(unint64_t)self1 txMaxRetries:(unint64_t)self2 txForceExpire:(unint64_t)self3;
+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)rxDecodingErrorsPercentagesWithRxFrmTooLong:(SEL)long rxFrmTooShrt:(unint64_t)shrt rxBadFCS:(unint64_t)s rxResponseTimeout:(unint64_t)timeout rxNoDelim:(unint64_t)delim rxAnyErr:(unint64_t)err rxFifo0Ovfl:(unint64_t)ovfl rxFifo1Ovfl:(unint64_t)self0;
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)ccaStatsWithDuration:(SEL)duration ccaSelf:(unint64_t)self ccaOther:(unint64_t)other interference:(unint64_t)interference;
+ (id)getBinEvery10thOverRatioScale:(unint64_t)scale As:(unint64_t)as;
+ (id)getBinForDouble:(double)double In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as;
+ (id)getLabelPingPongStats:(id)stats;
+ (id)getLabelTrafficState:(unint64_t)state;
+ (id)numberForKeyPath:(id)path ofObject:(id)object;
+ (id)ofdmDesenseReason:(unint64_t)reason;
+ (id)scanClient:(unint64_t)client;
+ (int)maxPhyModeFrom:(int)from;
+ (unint64_t)rateFromRatePercentage:(int64_t)percentage linkMaxRate:(unint64_t)rate;
+ (unint64_t)ratioWithValue:(unint64_t)value Over:(unint64_t)over WithScale:(unint64_t)scale;
+ (unint64_t)validateRate:(unint64_t)rate frames:(unint64_t)frames;
+ (void)initialize;
+ (void)updateConfig;
@end

@implementation WiFiUsageLQMTransformations

+ (void)initialize
{
  _ratioScale = 100;
  _byteScale = 1;
  _decimalsScale = 10;
  _minFramesForRates = 50;
  _minDurationCCAms = 100;
  NSLog(&cfstr_SRatioscaleSet.isa, a2, "+[WiFiUsageLQMTransformations initialize]", 100, 10, 50, 100);
}

+ (void)updateConfig
{
  v6 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMTransformation"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v6 objectForKey:@"ratioScale"];
      if (v2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _ratioScale = [v2 unsignedLongValue];
        }
      }

      v3 = [v6 objectForKey:@"decimalsScale"];

      if (v3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _decimalsScale = [v3 unsignedLongValue];
        }
      }

      v4 = [v6 objectForKey:@"minFramesForRates"];

      if (v4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _minFramesForRates = [v4 unsignedLongValue];
        }
      }

      v5 = [v6 objectForKey:@"minDurationForCCAms"];

      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _minDurationCCAms = [v5 unsignedLongValue];
        }
      }
    }
  }

  NSLog(&cfstr_SRatioscaleSet_0.isa, "+[WiFiUsageLQMTransformations updateConfig]", _ratioScale, _minFramesForRates, _minDurationCCAms);
}

+ (id)numberForKeyPath:(id)path ofObject:(id)object
{
  v4 = [object valueForKeyPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 unsignedLongValue] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ ($3CC19D079FD0B010EE84973AA846B91B)decodingAttemptsWithRxCrsGlitch:(SEL)glitch rxBadPLCP:(unint64_t)p RxBphyCrsGlitch:(unint64_t)crsGlitch rxBphyBadPLCP:(unint64_t)cP rxStart:(unint64_t)start
{
  v8 = cP + p + crsGlitch + start + a8;
  v9 = ((_ratioScale * (cP + p)) / v8);
  v10 = ((_ratioScale * (start + crsGlitch)) / v8);
  v11 = (_ratioScale * a8);
  retstr->var0 = v8;
  retstr->var1 = v9;
  retstr->var2 = v10;
  retstr->var3 = (v11 / v8);
  return result;
}

+ (unint64_t)validateRate:(unint64_t)rate frames:(unint64_t)frames
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (rate && rate != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (_minFramesForRates <= frames)
    {
      return rate;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

+ ($50828A08DC8D0425568E958C1030530A)ratePercentagesWithTxRate:(SEL)rate rxRate:(unint64_t)rxRate txFallbackRate:(unint64_t)fallbackRate txFrames:(unint64_t)frames rxFrames:(unint64_t)rxFrames nss:(unint64_t)nss bw:(unint64_t)bw phyMode:(unint64_t)self0 band:(int)self1 deviceMaxRate:(int)self2
{
  if (maxRate)
  {
    v19 = 0;
  }

  else
  {
    v19 = band == 256;
  }

  if (v19)
  {
    bandCopy = 128;
  }

  else
  {
    bandCopy = band;
  }

  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  v22 = vnegq_f64(v21);
  *&retstr->var0 = v22;
  *&retstr->var2 = v22;
  *&retstr->var4 = v22;
  if (bw != 0x7FFFFFFFFFFFFFFFLL && mode != 0x7FFFFFFFFFFFFFFFLL && bandCopy != 0)
  {
    result = [WiFiUsageLQMTransformations getMaxPhyrateWithNss:"getMaxPhyrateWithNss:Bw:Phy:" Bw:bw Phy:?];
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    if (result && result != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (result >= a13)
      {
        v26 = a13;
      }

      else
      {
        v26 = result;
      }

      if (rxRate != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = _ratioScale * rxRate / v26;
      }

      retstr->var0 = v24;
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      if (fallbackRate != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = _ratioScale * fallbackRate / v26;
      }

      retstr->var1 = v27;
      if (_minFramesForRates <= rxFrames)
      {
        v28 = _ratioScale * frames / v26;
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      retstr->var4 = v28;
      retstr->var5 = v26;
    }
  }

  if (a13)
  {
    v29 = a13 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = _minFramesForRates;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    if (rxRate != 0x7FFFFFFFFFFFFFFFLL && _minFramesForRates <= rxFrames)
    {
      v32 = _ratioScale * rxRate / a13;
    }

    retstr->var2 = v32;
    if (fallbackRate != 0x7FFFFFFFFFFFFFFFLL && v30 <= nss)
    {
      v31 = _ratioScale * fallbackRate / a13;
    }

    retstr->var3 = v31;
  }

  return result;
}

+ (unint64_t)rateFromRatePercentage:(int64_t)percentage linkMaxRate:(unint64_t)rate
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (percentage != 0x7FFFFFFFFFFFFFFFLL && rate == 0x7FFFFFFFFFFFFFFFLL)
  {
    return percentage;
  }

  if (percentage != 0x7FFFFFFFFFFFFFFFLL && rate != 0x7FFFFFFFFFFFFFFFLL)
  {
    return (percentage / _ratioScale * rate);
  }

  return result;
}

+ (unint64_t)ratioWithValue:(unint64_t)value Over:(unint64_t)over WithScale:(unint64_t)scale
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (value != 0x7FFFFFFFFFFFFFFFLL && over && over != 0x7FFFFFFFFFFFFFFFLL)
  {
    return scale * value / over;
  }

  return result;
}

+ ($06626BA963112C91E7E52BBD3AECAE4D)ctrlFrmsPercentagesWithRxCtrlUcast:(SEL)ucast RTS:(unint64_t)s CTS:(unint64_t)tS BACK:(unint64_t)k ACK:(unint64_t)cK
{
  retstr->var0 = s;
  if (s)
  {
    v8 = _ratioScale * tS / s;
    v9 = _ratioScale * k / s;
    v10 = _ratioScale * cK / s;
    v11 = _ratioScale * a8 / s;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  retstr->var1 = v8;
  retstr->var2 = v9;
  retstr->var3 = v10;
  retstr->var4 = v11;
  return result;
}

+ ($3CC19D079FD0B010EE84973AA846B91B)rxUcastPercentagesWithRxData:(SEL)data rxMgmt:(unint64_t)mgmt rxCtrl:(unint64_t)ctrl
{
  v6 = ctrl + mgmt + a6;
  retstr->var0 = v6;
  if (v6)
  {
    v7 = _ratioScale * mgmt / v6;
    v8 = _ratioScale * ctrl / v6;
    v9 = _ratioScale * a6 / v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  retstr->var1 = v7;
  retstr->var2 = v8;
  retstr->var3 = v9;
  return result;
}

+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)rxDecodingErrorsPercentagesWithRxFrmTooLong:(SEL)long rxFrmTooShrt:(unint64_t)shrt rxBadFCS:(unint64_t)s rxResponseTimeout:(unint64_t)timeout rxNoDelim:(unint64_t)delim rxAnyErr:(unint64_t)err rxFifo0Ovfl:(unint64_t)ovfl rxFifo1Ovfl:(unint64_t)self0
{
  v11 = s + shrt + timeout + delim + err + ovfl + fifo1Ovfl + a11;
  retstr->var0 = v11;
  if (v11)
  {
    result = _ratioScale;
    v12 = _ratioScale * shrt / v11;
    v13 = _ratioScale * s / v11;
    v14 = _ratioScale * timeout / v11;
    v15 = _ratioScale * delim / v11;
    v16 = _ratioScale * err / v11;
    v17 = _ratioScale * ovfl / v11;
    v18 = _ratioScale * fifo1Ovfl / v11;
    v19 = _ratioScale * a11 / v11;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  retstr->var1 = v12;
  retstr->var2 = v13;
  retstr->var3 = v14;
  retstr->var4 = v15;
  retstr->var5 = v16;
  retstr->var6 = v18;
  retstr->var7 = v19;
  retstr->var8 = v17;
  return result;
}

+ ($9D2DAF67E984336BD89D1161AD44CF98)txErrorsPercentagesWithtxSuccess:(SEL)success txDropped:(unint64_t)dropped txNoBuff:(unint64_t)buff txNoRes:(unint64_t)res txNoAck:(unint64_t)ack txChipModeErr:(unint64_t)err txExpired:(unint64_t)expired txFail:(unint64_t)self0 txFwFree:(unint64_t)self1 txMaxRetries:(unint64_t)self2 txForceExpire:(unint64_t)self3
{
  retstr->var7 = 0;
  *&retstr->var5 = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var1 = 0u;
  v14 = buff + dropped + res + ack + err + expired + fail + free + retries + expire + a14;
  retstr->var0 = v14;
  if (v14)
  {
    result = _ratioScale;
    v15 = _ratioScale * (res + buff + ack + err + expired + fail + free + retries + expire + a14) / v14;
    retstr->var1 = _ratioScale * dropped / v14;
    retstr->var2 = v15;
    retstr->var3 = result * buff / v14;
    retstr->var4 = result * res / v14;
    retstr->var5 = result * ack / v14;
    retstr->var6 = result * err / v14;
    retstr->var7 = result * expired / v14;
    v16 = result * fail / v14;
    v17 = result * free / v14;
    v18 = result * retries / v14;
    v19 = result * expire / v14;
    v20 = result * a14 / v14;
  }

  else
  {
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v22 = vnegq_f64(v21);
    *&retstr->var1 = v22;
    *&retstr->var3 = v22;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    *&retstr->var5 = v22;
    retstr->var7 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  retstr->var8 = v16;
  retstr->var9 = v17;
  retstr->var10 = v18;
  retstr->var11 = v19;
  retstr->var12 = v20;
  return result;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)ccaStatsWithDuration:(SEL)duration ccaSelf:(unint64_t)self ccaOther:(unint64_t)other interference:(unint64_t)interference
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (_minDurationCCAms <= self)
  {
    otherCopy = other;
  }

  else
  {
    otherCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (_minDurationCCAms <= self)
  {
    interferenceCopy = interference;
  }

  else
  {
    interferenceCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (_minDurationCCAms <= self)
  {
    v7 = a7;
  }

  retstr->var0 = otherCopy;
  retstr->var1 = interferenceCopy;
  retstr->var2 = v7;
  return result;
}

+ (id)ofdmDesenseReason:(unint64_t)reason
{
  v25[8] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_2848B9B90;
  v24[1] = &unk_2848B9BA8;
  v25[0] = @"GDB(bPhy)";
  v25[1] = @"GDB(ofdm)";
  v24[2] = &unk_2848B9BC0;
  v24[3] = &unk_2848B9BD8;
  v25[2] = @"BTCoex(bPhy)";
  v25[3] = @"BTCoex(ofdm)";
  v24[4] = &unk_2848B9BF0;
  v24[5] = &unk_2848B9C08;
  v25[4] = @"LTECoex(bPhy)";
  v25[5] = @"LTECoex(ofdm)";
  v24[6] = &unk_2848B9C20;
  v24[7] = &unk_2848B9C38;
  v25[6] = @"InitGainOrCRS(bPhy)";
  v25[7] = @"initGainOrCRS(ofdm)";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v5 = objc_opt_new();
  if (reason)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
    v11 = [v4 objectForKeyedSubscript:v10];
    [v5 appendFormat:@"%@&", v11];

    if ((reason & 2) == 0)
    {
LABEL_3:
      if ((reason & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((reason & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
  v13 = [v4 objectForKeyedSubscript:v12];
  [v5 appendFormat:@"%@&", v13];

  if ((reason & 4) == 0)
  {
LABEL_4:
    if ((reason & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
  v15 = [v4 objectForKeyedSubscript:v14];
  [v5 appendFormat:@"%@&", v15];

  if ((reason & 8) == 0)
  {
LABEL_5:
    if ((reason & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
  v17 = [v4 objectForKeyedSubscript:v16];
  [v5 appendFormat:@"%@&", v17];

  if ((reason & 0x10) == 0)
  {
LABEL_6:
    if ((reason & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
  v19 = [v4 objectForKeyedSubscript:v18];
  [v5 appendFormat:@"%@&", v19];

  if ((reason & 0x20) == 0)
  {
LABEL_7:
    if ((reason & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
  v21 = [v4 objectForKeyedSubscript:v20];
  [v5 appendFormat:@"%@&", v21];

  if ((reason & 0x40) == 0)
  {
LABEL_8:
    if ((reason & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
  v23 = [v4 objectForKeyedSubscript:v22];
  [v5 appendFormat:@"%@&", v23];

  if ((reason & 0x80) != 0)
  {
LABEL_9:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:reason];
    v7 = [v4 objectForKeyedSubscript:v6];
    [v5 appendFormat:@"%@&", v7];
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)scanClient:(unint64_t)client
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_2848B9C50;
  v9[1] = &unk_2848B9B90;
  v10[0] = @"AWDL";
  v10[1] = @"NAN";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:client];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getBinForDouble:(double)double In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as
{
  inCopy = in;
  edgeCopy = edge;
  if ([inCopy count])
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = [inCopy objectAtIndexedSubscript:v11];
      [v13 doubleValue];
      v15 = v14;

      if (v15 >= double)
      {
        break;
      }

      v16 = [inCopy objectAtIndexedSubscript:v11];

      ++v11;
      v12 = v16;
      if ([inCopy count] <= v11)
      {
        goto LABEL_8;
      }
    }

    v16 = v12;
  }

  else
  {
    v16 = 0;
    v11 = 0;
  }

LABEL_8:
  v17 = v16;
  v18 = v17;
  if ([inCopy count] > v11)
  {
    v19 = [inCopy objectAtIndexedSubscript:v11];
    [v19 doubleValue];
    v21 = v20;

    v18 = v17;
    if (v21 >= double)
    {
      v18 = [inCopy objectAtIndexedSubscript:v11];
    }
  }

  if ([inCopy count] == v11)
  {
    [(__CFString *)v18 doubleValue];
    if (v22 < double)
    {

      v18 = 0;
    }
  }

  if (as == 2)
  {
    v25 = v18;
LABEL_23:
    v26 = v25;
    goto LABEL_25;
  }

  if (!as)
  {
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = edgeCopy;
    }

    v24 = @"+inf";
    if (v18)
    {
      v24 = v18;
    }

    v25 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@:%@]"), v23, v24;
    goto LABEL_23;
  }

  v26 = 0;
LABEL_25:

  return v26;
}

+ (id)getBinEvery10thOverRatioScale:(unint64_t)scale As:(unint64_t)as
{
  v20[11] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_2848B9C50;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.1];
  v20[1] = v17;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.2];
  v20[2] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.3];
  v20[3] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.4];
  v20[4] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.5];
  v20[5] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.6];
  v20[6] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.7];
  v20[7] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.8];
  v20[8] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:_ratioScale * 0.9];
  v20[9] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_ratioScale];
  v20[10] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:11];

  v14 = [WiFiUsagePrivacyFilter getBinFor:scale In:v13 WithLowestEdge:@"0" As:as];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getLabelTrafficState:(unint64_t)state
{
  if (state == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v7 = @"VO|";
    v8 = &stru_28487EF20;
    if ((state & 8) == 0)
    {
      v7 = &stru_28487EF20;
    }

    v9 = @"VI|";
    if ((state & 4) == 0)
    {
      v9 = &stru_28487EF20;
    }

    v10 = @"BE|";
    if ((state & 1) == 0)
    {
      v10 = &stru_28487EF20;
    }

    if ((state & 2) != 0)
    {
      v8 = @"BK";
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@", v7, v9, v10, v8, v3];
  }

  return v5;
}

+ (id)getLabelPingPongStats:(id)stats
{
  v18 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if (statsCopy)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    sequence = [statsCopy sequence];
    v6 = [sequence countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(sequence);
          }

          [v4 appendFormat:@"%@|", *(*(&v13 + 1) + 8 * i)];
        }

        v7 = [sequence countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    if ([v4 isEqualToString:&stru_28487EF20])
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithString:v4];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (int)maxPhyModeFrom:(int)from
{
  v3 = from & 4;
  if ((from & 0x22) != 0)
  {
    v3 = 2;
  }

  if ((from & 0x48) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if ((from & 0x10) != 0)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4;
  }

  if ((from & 0x80) != 0)
  {
    v6 = 128;
  }

  else
  {
    v6 = v5;
  }

  if ((from & 0x100) != 0)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  if ((from & 0x200) != 0)
  {
    return 512;
  }

  else
  {
    return v7;
  }
}

@end
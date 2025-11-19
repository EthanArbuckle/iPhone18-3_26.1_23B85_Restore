@interface WiFiUsageLQMTransformations
+ ($06626BA963112C91E7E52BBD3AECAE4D)ctrlFrmsPercentagesWithRxCtrlUcast:(SEL)a3 RTS:(unint64_t)a4 CTS:(unint64_t)a5 BACK:(unint64_t)a6 ACK:(unint64_t)a7;
+ ($3CC19D079FD0B010EE84973AA846B91B)decodingAttemptsWithRxCrsGlitch:(SEL)a3 rxBadPLCP:(unint64_t)a4 RxBphyCrsGlitch:(unint64_t)a5 rxBphyBadPLCP:(unint64_t)a6 rxStart:(unint64_t)a7;
+ ($3CC19D079FD0B010EE84973AA846B91B)rxUcastPercentagesWithRxData:(SEL)a3 rxMgmt:(unint64_t)a4 rxCtrl:(unint64_t)a5;
+ ($50828A08DC8D0425568E958C1030530A)ratePercentagesWithTxRate:(SEL)a3 rxRate:(unint64_t)a4 txFallbackRate:(unint64_t)a5 txFrames:(unint64_t)a6 rxFrames:(unint64_t)a7 nss:(unint64_t)a8 bw:(unint64_t)a9 phyMode:(unint64_t)a10 band:(int)a11 deviceMaxRate:(int)a12;
+ ($9D2DAF67E984336BD89D1161AD44CF98)txErrorsPercentagesWithtxSuccess:(SEL)a3 txDropped:(unint64_t)a4 txNoBuff:(unint64_t)a5 txNoRes:(unint64_t)a6 txNoAck:(unint64_t)a7 txChipModeErr:(unint64_t)a8 txExpired:(unint64_t)a9 txFail:(unint64_t)a10 txFwFree:(unint64_t)a11 txMaxRetries:(unint64_t)a12 txForceExpire:(unint64_t)a13;
+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)rxDecodingErrorsPercentagesWithRxFrmTooLong:(SEL)a3 rxFrmTooShrt:(unint64_t)a4 rxBadFCS:(unint64_t)a5 rxResponseTimeout:(unint64_t)a6 rxNoDelim:(unint64_t)a7 rxAnyErr:(unint64_t)a8 rxFifo0Ovfl:(unint64_t)a9 rxFifo1Ovfl:(unint64_t)a10;
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)ccaStatsWithDuration:(SEL)a3 ccaSelf:(unint64_t)a4 ccaOther:(unint64_t)a5 interference:(unint64_t)a6;
+ (id)getBinEvery10thOverRatioScale:(unint64_t)a3 As:(unint64_t)a4;
+ (id)getBinForDouble:(double)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6;
+ (id)getLabelPingPongStats:(id)a3;
+ (id)getLabelTrafficState:(unint64_t)a3;
+ (id)numberForKeyPath:(id)a3 ofObject:(id)a4;
+ (id)ofdmDesenseReason:(unint64_t)a3;
+ (id)scanClient:(unint64_t)a3;
+ (int)maxPhyModeFrom:(int)a3;
+ (unint64_t)rateFromRatePercentage:(int64_t)a3 linkMaxRate:(unint64_t)a4;
+ (unint64_t)ratioWithValue:(unint64_t)a3 Over:(unint64_t)a4 WithScale:(unint64_t)a5;
+ (unint64_t)validateRate:(unint64_t)a3 frames:(unint64_t)a4;
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

+ (id)numberForKeyPath:(id)a3 ofObject:(id)a4
{
  v4 = [a4 valueForKeyPath:a3];
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

+ ($3CC19D079FD0B010EE84973AA846B91B)decodingAttemptsWithRxCrsGlitch:(SEL)a3 rxBadPLCP:(unint64_t)a4 RxBphyCrsGlitch:(unint64_t)a5 rxBphyBadPLCP:(unint64_t)a6 rxStart:(unint64_t)a7
{
  v8 = a6 + a4 + a5 + a7 + a8;
  v9 = ((_ratioScale * (a6 + a4)) / v8);
  v10 = ((_ratioScale * (a7 + a5)) / v8);
  v11 = (_ratioScale * a8);
  retstr->var0 = v8;
  retstr->var1 = v9;
  retstr->var2 = v10;
  retstr->var3 = (v11 / v8);
  return result;
}

+ (unint64_t)validateRate:(unint64_t)a3 frames:(unint64_t)a4
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (_minFramesForRates <= a4)
    {
      return a3;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

+ ($50828A08DC8D0425568E958C1030530A)ratePercentagesWithTxRate:(SEL)a3 rxRate:(unint64_t)a4 txFallbackRate:(unint64_t)a5 txFrames:(unint64_t)a6 rxFrames:(unint64_t)a7 nss:(unint64_t)a8 bw:(unint64_t)a9 phyMode:(unint64_t)a10 band:(int)a11 deviceMaxRate:(int)a12
{
  if (a12)
  {
    v19 = 0;
  }

  else
  {
    v19 = a11 == 256;
  }

  if (v19)
  {
    v20 = 128;
  }

  else
  {
    v20 = a11;
  }

  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  v22 = vnegq_f64(v21);
  *&retstr->var0 = v22;
  *&retstr->var2 = v22;
  *&retstr->var4 = v22;
  if (a9 != 0x7FFFFFFFFFFFFFFFLL && a10 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0)
  {
    result = [WiFiUsageLQMTransformations getMaxPhyrateWithNss:"getMaxPhyrateWithNss:Bw:Phy:" Bw:a9 Phy:?];
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

      if (a4 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = _ratioScale * a4 / v26;
      }

      retstr->var0 = v24;
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      if (a5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = _ratioScale * a5 / v26;
      }

      retstr->var1 = v27;
      if (_minFramesForRates <= a7)
      {
        v28 = _ratioScale * a6 / v26;
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
    if (a4 != 0x7FFFFFFFFFFFFFFFLL && _minFramesForRates <= a7)
    {
      v32 = _ratioScale * a4 / a13;
    }

    retstr->var2 = v32;
    if (a5 != 0x7FFFFFFFFFFFFFFFLL && v30 <= a8)
    {
      v31 = _ratioScale * a5 / a13;
    }

    retstr->var3 = v31;
  }

  return result;
}

+ (unint64_t)rateFromRatePercentage:(int64_t)a3 linkMaxRate:(unint64_t)a4
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return (a3 / _ratioScale * a4);
  }

  return result;
}

+ (unint64_t)ratioWithValue:(unint64_t)a3 Over:(unint64_t)a4 WithScale:(unint64_t)a5
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 && a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return a5 * a3 / a4;
  }

  return result;
}

+ ($06626BA963112C91E7E52BBD3AECAE4D)ctrlFrmsPercentagesWithRxCtrlUcast:(SEL)a3 RTS:(unint64_t)a4 CTS:(unint64_t)a5 BACK:(unint64_t)a6 ACK:(unint64_t)a7
{
  retstr->var0 = a4;
  if (a4)
  {
    v8 = _ratioScale * a5 / a4;
    v9 = _ratioScale * a6 / a4;
    v10 = _ratioScale * a7 / a4;
    v11 = _ratioScale * a8 / a4;
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

+ ($3CC19D079FD0B010EE84973AA846B91B)rxUcastPercentagesWithRxData:(SEL)a3 rxMgmt:(unint64_t)a4 rxCtrl:(unint64_t)a5
{
  v6 = a5 + a4 + a6;
  retstr->var0 = v6;
  if (v6)
  {
    v7 = _ratioScale * a4 / v6;
    v8 = _ratioScale * a5 / v6;
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

+ ($AA6A45B2DFCED8527C3A0E9A46B0D48F)rxDecodingErrorsPercentagesWithRxFrmTooLong:(SEL)a3 rxFrmTooShrt:(unint64_t)a4 rxBadFCS:(unint64_t)a5 rxResponseTimeout:(unint64_t)a6 rxNoDelim:(unint64_t)a7 rxAnyErr:(unint64_t)a8 rxFifo0Ovfl:(unint64_t)a9 rxFifo1Ovfl:(unint64_t)a10
{
  v11 = a5 + a4 + a6 + a7 + a8 + a9 + a10 + a11;
  retstr->var0 = v11;
  if (v11)
  {
    result = _ratioScale;
    v12 = _ratioScale * a4 / v11;
    v13 = _ratioScale * a5 / v11;
    v14 = _ratioScale * a6 / v11;
    v15 = _ratioScale * a7 / v11;
    v16 = _ratioScale * a8 / v11;
    v17 = _ratioScale * a9 / v11;
    v18 = _ratioScale * a10 / v11;
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

+ ($9D2DAF67E984336BD89D1161AD44CF98)txErrorsPercentagesWithtxSuccess:(SEL)a3 txDropped:(unint64_t)a4 txNoBuff:(unint64_t)a5 txNoRes:(unint64_t)a6 txNoAck:(unint64_t)a7 txChipModeErr:(unint64_t)a8 txExpired:(unint64_t)a9 txFail:(unint64_t)a10 txFwFree:(unint64_t)a11 txMaxRetries:(unint64_t)a12 txForceExpire:(unint64_t)a13
{
  retstr->var7 = 0;
  *&retstr->var5 = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var1 = 0u;
  v14 = a5 + a4 + a6 + a7 + a8 + a9 + a10 + a11 + a12 + a13 + a14;
  retstr->var0 = v14;
  if (v14)
  {
    result = _ratioScale;
    v15 = _ratioScale * (a6 + a5 + a7 + a8 + a9 + a10 + a11 + a12 + a13 + a14) / v14;
    retstr->var1 = _ratioScale * a4 / v14;
    retstr->var2 = v15;
    retstr->var3 = result * a5 / v14;
    retstr->var4 = result * a6 / v14;
    retstr->var5 = result * a7 / v14;
    retstr->var6 = result * a8 / v14;
    retstr->var7 = result * a9 / v14;
    v16 = result * a10 / v14;
    v17 = result * a11 / v14;
    v18 = result * a12 / v14;
    v19 = result * a13 / v14;
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

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)ccaStatsWithDuration:(SEL)a3 ccaSelf:(unint64_t)a4 ccaOther:(unint64_t)a5 interference:(unint64_t)a6
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (_minDurationCCAms <= a4)
  {
    v8 = a5;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (_minDurationCCAms <= a4)
  {
    v9 = a6;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (_minDurationCCAms <= a4)
  {
    v7 = a7;
  }

  retstr->var0 = v8;
  retstr->var1 = v9;
  retstr->var2 = v7;
  return result;
}

+ (id)ofdmDesenseReason:(unint64_t)a3
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
  if (a3)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    v11 = [v4 objectForKeyedSubscript:v10];
    [v5 appendFormat:@"%@&", v11];

    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v13 = [v4 objectForKeyedSubscript:v12];
  [v5 appendFormat:@"%@&", v13];

  if ((a3 & 4) == 0)
  {
LABEL_4:
    if ((a3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v15 = [v4 objectForKeyedSubscript:v14];
  [v5 appendFormat:@"%@&", v15];

  if ((a3 & 8) == 0)
  {
LABEL_5:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v17 = [v4 objectForKeyedSubscript:v16];
  [v5 appendFormat:@"%@&", v17];

  if ((a3 & 0x10) == 0)
  {
LABEL_6:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v19 = [v4 objectForKeyedSubscript:v18];
  [v5 appendFormat:@"%@&", v19];

  if ((a3 & 0x20) == 0)
  {
LABEL_7:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v21 = [v4 objectForKeyedSubscript:v20];
  [v5 appendFormat:@"%@&", v21];

  if ((a3 & 0x40) == 0)
  {
LABEL_8:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v23 = [v4 objectForKeyedSubscript:v22];
  [v5 appendFormat:@"%@&", v23];

  if ((a3 & 0x80) != 0)
  {
LABEL_9:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    v7 = [v4 objectForKeyedSubscript:v6];
    [v5 appendFormat:@"%@&", v7];
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)scanClient:(unint64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_2848B9C50;
  v9[1] = &unk_2848B9B90;
  v10[0] = @"AWDL";
  v10[1] = @"NAN";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getBinForDouble:(double)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6
{
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = [v9 objectAtIndexedSubscript:v11];
      [v13 doubleValue];
      v15 = v14;

      if (v15 >= a3)
      {
        break;
      }

      v16 = [v9 objectAtIndexedSubscript:v11];

      ++v11;
      v12 = v16;
      if ([v9 count] <= v11)
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
  if ([v9 count] > v11)
  {
    v19 = [v9 objectAtIndexedSubscript:v11];
    [v19 doubleValue];
    v21 = v20;

    v18 = v17;
    if (v21 >= a3)
    {
      v18 = [v9 objectAtIndexedSubscript:v11];
    }
  }

  if ([v9 count] == v11)
  {
    [(__CFString *)v18 doubleValue];
    if (v22 < a3)
    {

      v18 = 0;
    }
  }

  if (a6 == 2)
  {
    v25 = v18;
LABEL_23:
    v26 = v25;
    goto LABEL_25;
  }

  if (!a6)
  {
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v10;
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

+ (id)getBinEvery10thOverRatioScale:(unint64_t)a3 As:(unint64_t)a4
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

  v14 = [WiFiUsagePrivacyFilter getBinFor:a3 In:v13 WithLowestEdge:@"0" As:a4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getLabelTrafficState:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v7 = @"VO|";
    v8 = &stru_28487EF20;
    if ((a3 & 8) == 0)
    {
      v7 = &stru_28487EF20;
    }

    v9 = @"VI|";
    if ((a3 & 4) == 0)
    {
      v9 = &stru_28487EF20;
    }

    v10 = @"BE|";
    if ((a3 & 1) == 0)
    {
      v10 = &stru_28487EF20;
    }

    if ((a3 & 2) != 0)
    {
      v8 = @"BK";
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@", v7, v9, v10, v8, v3];
  }

  return v5;
}

+ (id)getLabelPingPongStats:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v3 sequence];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          [v4 appendFormat:@"%@|", *(*(&v13 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (int)maxPhyModeFrom:(int)a3
{
  v3 = a3 & 4;
  if ((a3 & 0x22) != 0)
  {
    v3 = 2;
  }

  if ((a3 & 0x48) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 & 0x10) != 0)
  {
    v5 = 16;
  }

  else
  {
    v5 = v4;
  }

  if ((a3 & 0x80) != 0)
  {
    v6 = 128;
  }

  else
  {
    v6 = v5;
  }

  if ((a3 & 0x100) != 0)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  if ((a3 & 0x200) != 0)
  {
    return 512;
  }

  else
  {
    return v7;
  }
}

@end
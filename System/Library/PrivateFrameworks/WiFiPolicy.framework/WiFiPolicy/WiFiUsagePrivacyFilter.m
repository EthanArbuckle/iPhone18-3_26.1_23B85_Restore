@interface WiFiUsagePrivacyFilter
+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getModeCountersByCandidatesByBand:(SEL)a3;
+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForFloatByBand:(SEL)a3 Over:(id *)a4;
+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForIntegerByBand:(SEL)a3 Over:(id *)a4;
+ (BOOL)canPerformActionWithSampleRate:(unint64_t)a3;
+ (BOOL)isLocallyAdministeredBitSetInBSSData:(id)a3;
+ (BOOL)isLocallyAdministeredBitSetInBSSString:(id)a3;
+ (double)timeSinceBootInSeconds;
+ (id)bandAsString:(int)a3;
+ (id)describeSampleRate:(unint64_t)a3;
+ (id)getBinFor:(int64_t)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6;
+ (id)getHumanSecondsFromObject:(id)a3;
+ (id)getHumanSecondsFromTimeInterval:(double)a3;
+ (id)getLabelForBandUsageDuration:(id *)a3 overTotalDuration:(double)a4 binned:(BOOL)a5;
+ (id)getLabelForCoreRssiMode:(unint64_t)a3;
+ (id)getLabelForIntegerByBand:(id *)a3;
+ (id)getLabelForIntegerByBand:(id *)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6;
+ (id)getLabelForIntegerByBand:(id *)a3 withCap:(BOOL)a4;
+ (id)getLabelForIntegerByBandTransition:(id *)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6;
+ (id)getLabelForNeighborsByBand:(id)a3;
+ (id)getLabelForPercIntegerByBand:(id *)a3;
+ (id)getLabelForPhyModes:(int)a3;
+ (id)getLabelForRTCoexType:(unint64_t)a3;
+ (id)getLabelForRssiByBand:(id *)a3;
+ (id)getLabelForRssiDeltaByBand:(id *)a3;
+ (id)getLabelForRssiDeltaByBandTransition:(id *)a3;
+ (id)getLabelForSteeringRequest:(unint64_t)a3;
+ (id)getLabelForTDMode:(int)a3;
+ (id)getLabelForTDTrigger:(int)a3;
+ (id)getLabelForUsbVendor:(unint64_t)a3;
+ (id)getLabelsForNetworkProperties:(id)a3;
+ (id)getSumArrayCountAllBand:(id)a3;
+ (id)localTimestamp:(id)a3;
+ (id)macAddressData:(id)a3;
+ (id)numberWithDuration:(double)a3;
+ (id)oui:(id)a3;
+ (id)reformatMACAddress:(id)a3;
+ (id)sanitizedOUI:(id)a3;
+ (id)timePercentage:(double)a3 overTotalDuration:(double)a4;
+ (id)toBinString:(id)a3;
+ (id)toHEXString:(char *)a3 length:(unint64_t)a4;
+ (id)twoSigFig:(unint64_t)a3;
+ (int)bandFromAppleChannelSpec:(int)a3;
+ (int)bandFromChanInfo:(id)a3;
+ (int)bandFromChannel:(unint64_t)a3;
+ (int)bandFromFlags:(id)a3 OrChannel:(id)a4;
+ (int)bandFromFlags:(unint64_t)a3;
+ (int64_t)getSumAllBands:(id *)a3;
+ (signed)waBandFromBand:(int)a3;
+ (unint64_t)channelWidthAppleChannelSpec:(int)a3;
+ (unint64_t)channelWidthFromFlags:(unint64_t)a3;
@end

@implementation WiFiUsagePrivacyFilter

+ (id)numberWithDuration:(double)a3
{
  if (a3 >= 0.0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)timePercentage:(double)a3 overTotalDuration:(double)a4
{
  if (a4 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    if (a3 > a4)
    {
      a3 = a4;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{(a3 * 100.0 / a4 + 0.5), v4}];
  }

  return v6;
}

+ (id)twoSigFig:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = log10(a3);
    v6 = __exp10(floor(v5) + -1.0);
    a3 = (v6 * (v4 / v6));
    v3 = vars8;
  }

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithUnsignedInteger:a3];
}

+ (id)localTimestamp:(id)a3
{
  v3 = MEMORY[0x277CBEBB0];
  v4 = a3;
  v5 = [v3 defaultTimeZone];
  v6 = [v5 secondsFromGMTForDate:v4];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v4 sinceDate:v6];

  return v7;
}

+ (id)describeSampleRate:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2789C85F8[a3];
  }
}

+ (BOOL)canPerformActionWithSampleRate:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
LABEL_10:
      v10 = a3;
      goto LABEL_11;
    }

    if (a3 == 2)
    {
      a3 = 5;
      goto LABEL_10;
    }

LABEL_8:
    a3 = 49;
    goto LABEL_10;
  }

  if (a3 == 3)
  {
    a3 = 10;
    goto LABEL_10;
  }

  if (a3 != 4)
  {
    goto LABEL_8;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WiFiUsagePrivacyFilter_canPerformActionWithSampleRate___block_invoke;
  v6[3] = &unk_2789C85D8;
  v6[4] = &v7;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v6];
  a3 = v8[3];
LABEL_11:
  v4 = [a1 canPerformActionWithRawSampleRate:a3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __57__WiFiUsagePrivacyFilter_canPerformActionWithSampleRate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 jtrnDefaults];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 valueForKey:@"kWiFiUsagePrivacySampleRateNetworkName"];
    *(*(*(a1 + 32) + 8) + 24) = [v4 intValue];

    v3 = v5;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

+ (double)timeSinceBootInSeconds
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  *v9 = 0x1500000001;
  v6 = 16;
  v7 = 0;
  v2 = sysctl(v9, 2u, &v7, &v6, 0, 0);
  result = 0.0;
  if (!v2)
  {
    v4 = v8 / 1000000.0 + v7 - *MEMORY[0x277CBECD0];
    result = CFAbsoluteTimeGetCurrent() - v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)getBinFor:(int64_t)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  if ([v10 count])
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = [v10 objectAtIndexedSubscript:v12];
      v15 = [v14 integerValue];

      if (v15 >= a3)
      {
        break;
      }

      v16 = [v10 objectAtIndexedSubscript:v12];

      ++v12;
      v13 = v16;
      if ([v10 count] <= v12)
      {
        goto LABEL_8;
      }
    }

    v16 = v13;
  }

  else
  {
    v16 = 0;
    v12 = 0;
  }

LABEL_8:
  v17 = v16;
  v18 = v17;
  if ([v10 count] > v12)
  {
    v19 = [v10 objectAtIndexedSubscript:v12];
    v20 = [v19 integerValue];

    v18 = v17;
    if (v20 >= a3)
    {
      v18 = [v10 objectAtIndexedSubscript:v12];
    }
  }

  if ([v10 count] == v12 && -[__CFString integerValue](v18, "integerValue") < a3)
  {

    v18 = 0;
  }

  switch(a6)
  {
    case 2uLL:
      v23 = v18;
LABEL_31:
      v29 = v23;
      goto LABEL_33;
    case 1uLL:
      v24 = MEMORY[0x277CCACA8];
      if (v17)
      {
        v25 = v17;
      }

      else
      {
        v25 = v11;
      }

      v26 = [a1 getHumanSecondsFromObject:v25];
      if (v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = @"+inf";
      }

      v28 = [a1 getHumanSecondsFromObject:v27];
      v29 = objc_msgSend(v24, "stringWithFormat:", @"(%@:%@]"), v26, v28;

      goto LABEL_33;
    case 0uLL:
      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v11;
      }

      v22 = @"+inf";
      if (v18)
      {
        v22 = v18;
      }

      v23 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@:%@]"), v21, v22;
      goto LABEL_31;
  }

  v29 = 0;
LABEL_33:

  return v29;
}

+ (id)getHumanSecondsFromObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 getHumanSecondsFromTimeInterval:{objc_msgSend(v4, "unsignedIntegerValue")}];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)getHumanSecondsFromTimeInterval:(double)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  if (a3 >= 86400.0)
  {
    [v4 appendFormat:@"%lud", (a3 / 86400.0)];
    a3 = a3 - (86400 * (a3 / 86400.0));
  }

  if (a3 >= 3600.0)
  {
    [v5 appendFormat:@"%luh", (a3 / 3600.0)];
    a3 = a3 - (3600 * (a3 / 3600.0));
  }

  if (a3 >= 60.0)
  {
    [v5 appendFormat:@"%lum", (a3 / 60.0)];
    a3 = a3 - (60 * (a3 / 60.0));
  }

  if (a3 > 0.0)
  {
    [v5 appendFormat:@"%lus", a3];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithString:v5];

  return v6;
}

+ (id)toHEXString:(char *)a3 length:(unint64_t)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = malloc_type_malloc((2 * a4) | 1, 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      do
      {
        v9 = *a3++;
        *v8 = a0123456789abcd[v9 >> 4];
        v8[1] = a0123456789abcd[v9 & 0xF];
        v8 += 2;
        v4 = (v4 - 1);
      }

      while (v4);
      *v8 = 0;
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      free(v7);
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = &stru_28487EF20;
  }

  v11 = v10;

  return v10;
}

+ (id)macAddressData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 UTF8String] && (v5 = ether_aton(objc_msgSend(v4, "UTF8String"))) != 0)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)toBinString:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if (![v3 length] && objc_msgSend(v3, "length") != 6)
  {
    NSLog(&cfstr_SIsNotAMacAddr.isa, "+[WiFiUsagePrivacyFilter toBinString:]", v3);
    goto LABEL_11;
  }

  v5 = malloc_type_malloc((8 * [v3 length]) | 1, 0x100004077774924uLL);
  if (!v5)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = v5;
  if ([v3 length])
  {
    v8 = 0;
    v7 = v6;
    do
    {
      v9 = *v4;
      v10 = 8;
      do
      {
        *v7++ = v9 & 1 | 0x30;
        v9 >>= 1;
        --v10;
      }

      while (v10);
      ++v4;
      ++v8;
    }

    while ([v3 length] > v8);
  }

  *v7 = 0;
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  free(v6);
LABEL_12:
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_28487EF20;
  }

  v13 = v12;

  return v12;
}

+ (BOOL)isLocallyAdministeredBitSetInBSSData:(id)a3
{
  v3 = [a1 toBinString:a3];
  v4 = v3;
  v5 = v3 && [v3 length] >= 2 && objc_msgSend(v4, "characterAtIndex:", 1) == 49;

  return v5;
}

+ (BOOL)isLocallyAdministeredBitSetInBSSString:(id)a3
{
  v3 = a1;
  v4 = [a1 macAddressData:a3];
  LOBYTE(v3) = [v3 isLocallyAdministeredBitSetInBSSData:v4];

  return v3;
}

+ (id)reformatMACAddress:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 UTF8String] && (v4 = ether_aton(objc_msgSend(v3, "UTF8String"))) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v4->octet[0], v4->octet[1], v4->octet[2], v4->octet[3], v4->octet[4], v4->octet[5]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)oui:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 UTF8String] && (v4 = ether_aton(objc_msgSend(v3, "UTF8String"))) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x", v4->octet[0], v4->octet[1], v4->octet[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sanitizedOUI:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 UTF8String] && (v4 = ether_aton(objc_msgSend(v3, "UTF8String"))) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x", v4->octet[0] & 0xFC, v4->octet[1], v4->octet[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)getSumAllBands:(id *)a3
{
  v3 = 0;
  result = 0;
  do
  {
    if (a3->var1[v3])
    {
      result += a3->var0[v3];
    }

    ++v3;
  }

  while (v3 != 3);
  return result;
}

+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForIntegerByBand:(SEL)a3 Over:(id *)a4
{
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *&a4->var0[2];
    v9[0] = *a4->var0;
    v9[1] = v7;
    result = [($FEE1510A43A03BFC9F45CB2D5A0A197D *)result getSumAllBands:v9];
    a5 = result;
  }

  for (i = 0; i != 3; ++i)
  {
    if (a4->var1[i])
    {
      retstr->var0[i] = (a4->var0[i] * 100.0 / a5 + 0.5);
      retstr->var1[i] = 1;
    }
  }

  return result;
}

+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForFloatByBand:(SEL)a3 Over:(id *)a4
{
  v5 = 0;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  do
  {
    if (a4->var1[v5])
    {
      retstr->var0[v5] = (a4->var0[v5] * 100.0 / a5 + 0.5);
      retstr->var1[v5] = 1;
    }

    ++v5;
  }

  while (v5 != 3);
  return result;
}

+ (id)getSumArrayCountAllBand:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [a3 allValues];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v12 + 1) + 8 * i) count];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getModeCountersByCandidatesByBand:(SEL)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v18, v19}];
        v14 = [v13 count];

        if (v14 > v9)
        {
          v15 = [v5 objectForKeyedSubscript:v12];
          v9 = [v15 count];

          if (v12)
          {
            [v12 candidateSet];
          }

          else
          {
            v18 = 0u;
            v19 = 0u;
          }

          *retstr->var0 = v18;
          *&retstr->var0[2] = v19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)getLabelForIntegerByBand:(id *)a3 withCap:(BOOL)a4
{
  v4 = a4;
  v6 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    if (a3->var1[i])
    {
      if (v4 && a3->var0[i] > 5)
      {
        v8 = [WiFiUsagePrivacyFilter bandAsString:i];
        [v6 appendFormat:@"%@GHz>%d ", v8, 5];
      }

      else
      {
        v8 = [WiFiUsagePrivacyFilter bandAsString:i];
        [v6 appendFormat:@"%@GHz:%lu ", v8, a3->var0[i]];
      }
    }
  }

  if ([v6 isEqualToString:&stru_28487EF20])
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithString:v6];
  }

  return v9;
}

+ (id)getLabelForIntegerByBand:(id *)a3
{
  v3 = *&a3->var0[2];
  v6[0] = *a3->var0;
  v6[1] = v3;
  v4 = [a1 getLabelForIntegerByBand:v6 withCap:0];

  return v4;
}

+ (id)getLabelForIntegerByBand:(id *)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  v13 = 0;
  if (a6 == 2)
  {
    v14 = @"<=";
  }

  else
  {
    v14 = @":";
  }

  do
  {
    if (a3->var1[v13])
    {
      v15 = [a1 bandAsString:v13];
      v16 = [a1 getBinFor:a3->var0[v13] In:v10 WithLowestEdge:v11 As:a6];
      [v12 appendFormat:@"%@GHz%@%@ ", v15, v14, v16];
    }

    ++v13;
  }

  while (v13 != 3);
  v17 = [MEMORY[0x277CCACA8] stringWithString:v12];

  return v17;
}

+ (id)getLabelForIntegerByBandTransition:(id *)a3 In:(id)a4 WithLowestEdge:(id)a5 As:(unint64_t)a6
{
  v22 = a4;
  v21 = a5;
  v20 = objc_opt_new();
  v10 = 0;
  var1 = a3->var1;
  v12 = a6;
  if (a6 == 2)
  {
    v13 = @"<=";
  }

  else
  {
    v13 = @":";
  }

  do
  {
    for (i = 0; i != 3; ++i)
    {
      if ((*var1)[i])
      {
        v15 = [a1 bandAsString:v10];
        v16 = [a1 bandAsString:i];
        v17 = [a1 getBinFor:a3->var0[0][i] In:v22 WithLowestEdge:v21 As:v12];
        [v20 appendFormat:@"%@GHz->%@GHz%@%@ ", v15, v16, v13, v17];
      }
    }

    ++v10;
    ++var1;
    a3 = (a3 + 24);
  }

  while (v10 != 3);
  v18 = [MEMORY[0x277CCACA8] stringWithString:v20];

  return v18;
}

+ (id)getLabelForPercIntegerByBand:(id *)a3
{
  v4 = *&a3->var0[2];
  v7[0] = *a3->var0;
  v7[1] = v4;
  [a1 getPercForIntegerByBand:v7 Over:0x7FFFFFFFFFFFFFFFLL];
  v5 = [a1 getLabelForIntegerByBand:v8 In:&unk_2848BAFD0 WithLowestEdge:@"0" As:2];

  return v5;
}

+ (id)getLabelForNeighborsByBand:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v3 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v3 objectForKeyedSubscript:v10];
          v12 = [v11 count];

          v13 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [v10 unsignedIntValue]);
          v14 = v13;
          if (v12 > 5)
          {
            [v4 appendFormat:@"%@GHz>%d ", v13, 5];
          }

          else
          {
            [v4 appendFormat:@"%@GHz:%lu ", v13, v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    if ([v4 isEqualToString:&stru_28487EF20])
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithString:v4];
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)getLabelForBandUsageDuration:(id *)a3 overTotalDuration:(double)a4 binned:(BOOL)a5
{
  v27 = 0u;
  v28 = 0u;
  v9 = *&a3->var0[2];
  v25 = *a3->var0;
  v26 = v9;
  [a1 getPercForFloatByBand:&v25 Over:a4];
  if (a5)
  {
    if (a4 == 0.0)
    {
      v10 = 0;
    }

    else
    {
      v25 = v27;
      v26 = v28;
      v10 = [a1 getLabelForIntegerByBand:&v25 In:&unk_2848BAFE8 WithLowestEdge:@"0" As:2];
    }
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [WiFiUsagePrivacyFilter bandAsString:0];
    v13 = 0.0;
    v14 = 0.0;
    if (a3->var1[0])
    {
      v14 = a3->var0[0];
    }

    if (BYTE8(v28))
    {
      v15 = v27;
    }

    else
    {
      v15 = 0;
    }

    v16 = [WiFiUsagePrivacyFilter bandAsString:1];
    if (a3->var1[1])
    {
      v13 = a3->var0[1];
    }

    if (BYTE9(v28))
    {
      v17 = *(&v27 + 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [WiFiUsagePrivacyFilter bandAsString:2];
    v20 = v19;
    v21 = 0.0;
    if (a3->var1[2])
    {
      v21 = a3->var0[2];
    }

    if (BYTE10(v28))
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v18 stringWithFormat:@"%@:%fs/%fs(%lu%%)", v19, *&v21, *&a4, v22];
    v10 = [v11 stringWithFormat:@"%@:%fs/%fs(%ld%%) %@:%fs/%fs(%lu%%) %@", v12, *&v14, *&a4, v15, v16, *&v13, *&a4, v17, v23];
  }

  return v10;
}

+ (id)getLabelForRssiByBand:(id *)a3
{
  v3 = *&a3->var0[2];
  v6[0] = *a3->var0;
  v6[1] = v3;
  v4 = [a1 getLabelForIntegerByBand:v6 In:&unk_2848BB000 WithLowestEdge:@"-inf" As:0];

  return v4;
}

+ (id)getLabelForRssiDeltaByBand:(id *)a3
{
  v3 = *&a3->var0[2];
  v6[0] = *a3->var0;
  v6[1] = v3;
  v4 = [a1 getLabelForIntegerByBand:v6 In:&unk_2848BB018 WithLowestEdge:@"-inf" As:0];

  return v4;
}

+ (id)getLabelForRssiDeltaByBandTransition:(id *)a3
{
  v3 = *&a3->var0[2][0];
  v7[2] = *&a3->var0[1][1];
  v7[3] = v3;
  v7[4] = *&a3->var0[2][2];
  v8 = *&a3->var1[2][2];
  v4 = *&a3->var0[0][2];
  v7[0] = *&a3->var0[0][0];
  v7[1] = v4;
  v5 = [a1 getLabelForIntegerByBandTransition:v7 In:&unk_2848BB030 WithLowestEdge:@"-inf" As:0];

  return v5;
}

+ (id)getLabelForRTCoexType:(unint64_t)a3
{
  if (a3)
  {
    return @"Unknown";
  }

  else
  {
    return @"AWDL RealTime";
  }
}

+ (id)getLabelForSteeringRequest:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8620[a3];
  }
}

+ (id)getLabelForTDMode:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8640[a3 - 1];
  }
}

+ (id)getLabelForTDTrigger:(int)a3
{
  if (a3 > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8658[a3];
  }
}

+ (id)getLabelForCoreRssiMode:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C86D0[a3];
  }
}

+ (id)getLabelForUsbVendor:(unint64_t)a3
{
  if (a3 <= 1920)
  {
    if (a3 > 1438)
    {
      switch(a3)
      {
        case 0x59FuLL:
          return @"LaCie";
        case 0x5ACuLL:
          return @"Apple";
        case 0x5DCuLL:
          return @"Lexar";
      }
    }

    else
    {
      switch(a3)
      {
        case 0uLL:
          return @"DeviceMode";
        case 0x477uLL:
          return @"Seagate";
        case 0x4E8uLL:
          return @"Samsung";
      }
    }
  }

  else if (a3 <= 5420)
  {
    switch(a3)
    {
      case 0x781uLL:
        return @"SanDisk";
      case 0x951uLL:
        return @"Kingston";
      case 0x1058uLL:
        return @"Western Digital";
    }
  }

  else if (a3 > 18320)
  {
    if (a3 == 18321)
    {
      return @"G-Technology";
    }

    if (a3 == 0xFFFF)
    {
      return @"DisplayPort";
    }
  }

  else
  {
    if (a3 == 5421)
    {
      return @"Sabrent";
    }

    if (a3 == 8201)
    {
      return @"iStorage";
    }
  }

  return @"Other";
}

+ (id)getLabelForPhyModes:(int)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if ((v3 & 0x400) != 0)
  {
    [v4 addObject:@"6Ghz"];
    if ((v3 & 0x200) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"11BE"];
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v5 addObject:@"11AX"];
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  [v5 addObject:@"11AC"];
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    [v5 addObject:@"11N"];
  }

LABEL_7:
  if ((v3 & 0x48) != 0)
  {
    [v5 addObject:@"11G"];
  }

  if ((v3 & 0x22) != 0)
  {
    [v5 addObject:@"11A"];
  }

  if ((v3 & 4) != 0)
  {
    [v5 addObject:@"11B"];
  }

  v6 = [v5 componentsJoinedByString:@"|"];

  return v6;
}

+ (id)getLabelsForNetworkProperties:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [MEMORY[0x277CCAB68] stringWithString:&stru_28487EF20];
  v18 = [MEMORY[0x277CCAB68] stringWithString:&stru_28487EF20];
  outCount = 0;
  v4 = objc_opt_class();
  v5 = class_copyPropertyList(v4, &outCount);
  v6 = v5;
  if (outCount)
  {
    v7 = 0;
    v8 = MEMORY[0x277CBEC38];
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:property_getName(v6[v7]) encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      if ([v9 hasPrefix:@"is"])
      {
        v10 = [v3 valueForKey:v9];
        if ([v10 isEqual:v8] && !objc_msgSend(v9, "isEqualToString:", @"isWork"))
        {
          v13 = [v9 isEqualToString:@"isHome"];

          if ((v13 & 1) == 0)
          {
            [v17 appendFormat:@"%@&", v9];
          }
        }

        else
        {
        }
      }

      if (([v9 hasPrefix:@"has"] & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"requires"))
      {
        v11 = [v3 valueForKey:v9];
        v12 = [v11 isEqual:v8];

        if (v12)
        {
          [v18 appendFormat:@"%@&", v9];
        }
      }

      ++v7;
    }

    while (v7 < outCount);
  }

  else if (!v5)
  {
    goto LABEL_17;
  }

  free(v6);
LABEL_17:
  if ([v3 captiveStatus] == 2)
  {
    [v17 appendFormat:@"%@&", @"isCaptive"];
  }

  v20[0] = @"networkType";
  v20[1] = @"networkProperties";
  v21[0] = v17;
  v21[1] = v18;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)bandAsString:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_2789C86E8[a3];
  }
}

+ (int)bandFromFlags:(id)a3 OrChannel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 integerValue] >= 1)
  {
    v8 = [a1 bandFromFlags:{objc_msgSend(v6, "integerValue")}];
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 3;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v8 == 3)
  {
    if ([v7 unsignedIntegerValue])
    {
      v8 = [a1 bandFromChannel:{objc_msgSend(v7, "unsignedIntegerValue")}];
    }

    else
    {
      v8 = 3;
    }
  }

LABEL_10:

  return v8;
}

+ (unint64_t)channelWidthFromFlags:(unint64_t)a3
{
  v3 = 80;
  v4 = 40;
  if ((a3 & 4) == 0)
  {
    v4 = 20;
  }

  if ((a3 & 0x400) == 0)
  {
    v3 = v4;
  }

  if ((a3 & 0x800) != 0)
  {
    return 160;
  }

  else
  {
    return v3;
  }
}

+ (int)bandFromFlags:(unint64_t)a3
{
  if ((a3 & 0x2000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if ((a3 & 0x10) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 & 8) != 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (int)bandFromChannel:(unint64_t)a3
{
  if (a3 - 36 < 0x86)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  if (a3 >= 0xF)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int)bandFromChanInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"CHANNELINFO_BAND_NUM"];
  v4 = v3;
  if (v3 && (v5 = [v3 integerValue], v5 <= 3))
  {
    v6 = dword_2333AB5E0[v5];
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

+ (int)bandFromAppleChannelSpec:(int)a3
{
  if (a3 > 3)
  {
    return 3;
  }

  else
  {
    return dword_2333AB5E0[a3];
  }
}

+ (unint64_t)channelWidthAppleChannelSpec:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2333AB5F0[a3 - 1];
  }
}

+ (signed)waBandFromBand:(int)a3
{
  if (a3 >= 3)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

@end
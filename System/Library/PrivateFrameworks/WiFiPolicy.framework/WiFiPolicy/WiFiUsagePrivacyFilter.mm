@interface WiFiUsagePrivacyFilter
+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getModeCountersByCandidatesByBand:(SEL)band;
+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForFloatByBand:(SEL)band Over:(id *)over;
+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForIntegerByBand:(SEL)band Over:(id *)over;
+ (BOOL)canPerformActionWithSampleRate:(unint64_t)rate;
+ (BOOL)isLocallyAdministeredBitSetInBSSData:(id)data;
+ (BOOL)isLocallyAdministeredBitSetInBSSString:(id)string;
+ (double)timeSinceBootInSeconds;
+ (id)bandAsString:(int)string;
+ (id)describeSampleRate:(unint64_t)rate;
+ (id)getBinFor:(int64_t)for In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as;
+ (id)getHumanSecondsFromObject:(id)object;
+ (id)getHumanSecondsFromTimeInterval:(double)interval;
+ (id)getLabelForBandUsageDuration:(id *)duration overTotalDuration:(double)totalDuration binned:(BOOL)binned;
+ (id)getLabelForCoreRssiMode:(unint64_t)mode;
+ (id)getLabelForIntegerByBand:(id *)band;
+ (id)getLabelForIntegerByBand:(id *)band In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as;
+ (id)getLabelForIntegerByBand:(id *)band withCap:(BOOL)cap;
+ (id)getLabelForIntegerByBandTransition:(id *)transition In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as;
+ (id)getLabelForNeighborsByBand:(id)band;
+ (id)getLabelForPercIntegerByBand:(id *)band;
+ (id)getLabelForPhyModes:(int)modes;
+ (id)getLabelForRTCoexType:(unint64_t)type;
+ (id)getLabelForRssiByBand:(id *)band;
+ (id)getLabelForRssiDeltaByBand:(id *)band;
+ (id)getLabelForRssiDeltaByBandTransition:(id *)transition;
+ (id)getLabelForSteeringRequest:(unint64_t)request;
+ (id)getLabelForTDMode:(int)mode;
+ (id)getLabelForTDTrigger:(int)trigger;
+ (id)getLabelForUsbVendor:(unint64_t)vendor;
+ (id)getLabelsForNetworkProperties:(id)properties;
+ (id)getSumArrayCountAllBand:(id)band;
+ (id)localTimestamp:(id)timestamp;
+ (id)macAddressData:(id)data;
+ (id)numberWithDuration:(double)duration;
+ (id)oui:(id)oui;
+ (id)reformatMACAddress:(id)address;
+ (id)sanitizedOUI:(id)i;
+ (id)timePercentage:(double)percentage overTotalDuration:(double)duration;
+ (id)toBinString:(id)string;
+ (id)toHEXString:(char *)string length:(unint64_t)length;
+ (id)twoSigFig:(unint64_t)fig;
+ (int)bandFromAppleChannelSpec:(int)spec;
+ (int)bandFromChanInfo:(id)info;
+ (int)bandFromChannel:(unint64_t)channel;
+ (int)bandFromFlags:(id)flags OrChannel:(id)channel;
+ (int)bandFromFlags:(unint64_t)flags;
+ (int64_t)getSumAllBands:(id *)bands;
+ (signed)waBandFromBand:(int)band;
+ (unint64_t)channelWidthAppleChannelSpec:(int)spec;
+ (unint64_t)channelWidthFromFlags:(unint64_t)flags;
@end

@implementation WiFiUsagePrivacyFilter

+ (id)numberWithDuration:(double)duration
{
  if (duration >= 0.0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)timePercentage:(double)percentage overTotalDuration:(double)duration
{
  if (duration <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    if (percentage > duration)
    {
      percentage = duration;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{(percentage * 100.0 / duration + 0.5), v4}];
  }

  return v6;
}

+ (id)twoSigFig:(unint64_t)fig
{
  if (fig)
  {
    figCopy = fig;
    v5 = log10(fig);
    v6 = __exp10(floor(v5) + -1.0);
    fig = (v6 * (figCopy / v6));
    v3 = vars8;
  }

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithUnsignedInteger:fig];
}

+ (id)localTimestamp:(id)timestamp
{
  v3 = MEMORY[0x277CBEBB0];
  timestampCopy = timestamp;
  defaultTimeZone = [v3 defaultTimeZone];
  v6 = [defaultTimeZone secondsFromGMTForDate:timestampCopy];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:timestampCopy sinceDate:v6];

  return v7;
}

+ (id)describeSampleRate:(unint64_t)rate
{
  if (rate > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2789C85F8[rate];
  }
}

+ (BOOL)canPerformActionWithSampleRate:(unint64_t)rate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  rateCopy = 0;
  if (rate <= 2)
  {
    if (rate == 1)
    {
LABEL_10:
      rateCopy = rate;
      goto LABEL_11;
    }

    if (rate == 2)
    {
      rate = 5;
      goto LABEL_10;
    }

LABEL_8:
    rate = 49;
    goto LABEL_10;
  }

  if (rate == 3)
  {
    rate = 10;
    goto LABEL_10;
  }

  if (rate != 4)
  {
    goto LABEL_8;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WiFiUsagePrivacyFilter_canPerformActionWithSampleRate___block_invoke;
  v6[3] = &unk_2789C85D8;
  v6[4] = &v7;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v6];
  rate = v8[3];
LABEL_11:
  v4 = [self canPerformActionWithRawSampleRate:rate];
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

+ (id)getBinFor:(int64_t)for In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as
{
  inCopy = in;
  edgeCopy = edge;
  if ([inCopy count])
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = [inCopy objectAtIndexedSubscript:v12];
      integerValue = [v14 integerValue];

      if (integerValue >= for)
      {
        break;
      }

      v16 = [inCopy objectAtIndexedSubscript:v12];

      ++v12;
      v13 = v16;
      if ([inCopy count] <= v12)
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
  if ([inCopy count] > v12)
  {
    v19 = [inCopy objectAtIndexedSubscript:v12];
    integerValue2 = [v19 integerValue];

    v18 = v17;
    if (integerValue2 >= for)
    {
      v18 = [inCopy objectAtIndexedSubscript:v12];
    }
  }

  if ([inCopy count] == v12 && -[__CFString integerValue](v18, "integerValue") < for)
  {

    v18 = 0;
  }

  switch(as)
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
        v25 = edgeCopy;
      }

      v26 = [self getHumanSecondsFromObject:v25];
      if (v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = @"+inf";
      }

      v28 = [self getHumanSecondsFromObject:v27];
      v29 = objc_msgSend(v24, "stringWithFormat:", @"(%@:%@]"), v26, v28;

      goto LABEL_33;
    case 0uLL:
      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = edgeCopy;
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

+ (id)getHumanSecondsFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self getHumanSecondsFromTimeInterval:{objc_msgSend(objectCopy, "unsignedIntegerValue")}];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)getHumanSecondsFromTimeInterval:(double)interval
{
  v4 = objc_opt_new();
  v5 = v4;
  if (interval >= 86400.0)
  {
    [v4 appendFormat:@"%lud", (interval / 86400.0)];
    interval = interval - (86400 * (interval / 86400.0));
  }

  if (interval >= 3600.0)
  {
    [v5 appendFormat:@"%luh", (interval / 3600.0)];
    interval = interval - (3600 * (interval / 3600.0));
  }

  if (interval >= 60.0)
  {
    [v5 appendFormat:@"%lum", (interval / 60.0)];
    interval = interval - (60 * (interval / 60.0));
  }

  if (interval > 0.0)
  {
    [v5 appendFormat:@"%lus", interval];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithString:v5];

  return v6;
}

+ (id)toHEXString:(char *)string length:(unint64_t)length
{
  lengthCopy = length;
  if (length)
  {
    v6 = malloc_type_malloc((2 * length) | 1, 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      do
      {
        v9 = *string++;
        *v8 = a0123456789abcd[v9 >> 4];
        v8[1] = a0123456789abcd[v9 & 0xF];
        v8 += 2;
        lengthCopy = (lengthCopy - 1);
      }

      while (lengthCopy);
      *v8 = 0;
      lengthCopy = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      free(v7);
    }

    else
    {
      lengthCopy = 0;
    }
  }

  if (lengthCopy)
  {
    v10 = lengthCopy;
  }

  else
  {
    v10 = &stru_28487EF20;
  }

  v11 = v10;

  return v10;
}

+ (id)macAddressData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy && [dataCopy UTF8String] && (v5 = ether_aton(objc_msgSend(v4, "UTF8String"))) != 0)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)toBinString:(id)string
{
  stringCopy = string;
  bytes = [stringCopy bytes];
  if (![stringCopy length] && objc_msgSend(stringCopy, "length") != 6)
  {
    NSLog(&cfstr_SIsNotAMacAddr.isa, "+[WiFiUsagePrivacyFilter toBinString:]", stringCopy);
    goto LABEL_11;
  }

  v5 = malloc_type_malloc((8 * [stringCopy length]) | 1, 0x100004077774924uLL);
  if (!v5)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = v5;
  if ([stringCopy length])
  {
    v8 = 0;
    v7 = v6;
    do
    {
      v9 = *bytes;
      v10 = 8;
      do
      {
        *v7++ = v9 & 1 | 0x30;
        v9 >>= 1;
        --v10;
      }

      while (v10);
      ++bytes;
      ++v8;
    }

    while ([stringCopy length] > v8);
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

+ (BOOL)isLocallyAdministeredBitSetInBSSData:(id)data
{
  v3 = [self toBinString:data];
  v4 = v3;
  v5 = v3 && [v3 length] >= 2 && objc_msgSend(v4, "characterAtIndex:", 1) == 49;

  return v5;
}

+ (BOOL)isLocallyAdministeredBitSetInBSSString:(id)string
{
  selfCopy = self;
  v4 = [self macAddressData:string];
  LOBYTE(selfCopy) = [selfCopy isLocallyAdministeredBitSetInBSSData:v4];

  return selfCopy;
}

+ (id)reformatMACAddress:(id)address
{
  addressCopy = address;
  if (addressCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [addressCopy UTF8String] && (v4 = ether_aton(objc_msgSend(addressCopy, "UTF8String"))) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v4->octet[0], v4->octet[1], v4->octet[2], v4->octet[3], v4->octet[4], v4->octet[5]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)oui:(id)oui
{
  ouiCopy = oui;
  if (ouiCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [ouiCopy UTF8String] && (v4 = ether_aton(objc_msgSend(ouiCopy, "UTF8String"))) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x", v4->octet[0], v4->octet[1], v4->octet[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sanitizedOUI:(id)i
{
  iCopy = i;
  if (iCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [iCopy UTF8String] && (v4 = ether_aton(objc_msgSend(iCopy, "UTF8String"))) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x", v4->octet[0] & 0xFC, v4->octet[1], v4->octet[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)getSumAllBands:(id *)bands
{
  v3 = 0;
  result = 0;
  do
  {
    if (bands->var1[v3])
    {
      result += bands->var0[v3];
    }

    ++v3;
  }

  while (v3 != 3);
  return result;
}

+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForIntegerByBand:(SEL)band Over:(id *)over
{
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *&over->var0[2];
    v9[0] = *over->var0;
    v9[1] = v7;
    result = [($FEE1510A43A03BFC9F45CB2D5A0A197D *)result getSumAllBands:v9];
    a5 = result;
  }

  for (i = 0; i != 3; ++i)
  {
    if (over->var1[i])
    {
      retstr->var0[i] = (over->var0[i] * 100.0 / a5 + 0.5);
      retstr->var1[i] = 1;
    }
  }

  return result;
}

+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getPercForFloatByBand:(SEL)band Over:(id *)over
{
  v5 = 0;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  do
  {
    if (over->var1[v5])
    {
      retstr->var0[v5] = (over->var0[v5] * 100.0 / a5 + 0.5);
      retstr->var1[v5] = 1;
    }

    ++v5;
  }

  while (v5 != 3);
  return result;
}

+ (id)getSumArrayCountAllBand:(id)band
{
  v17 = *MEMORY[0x277D85DE8];
  if (band)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [band allValues];
    v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v6 += [*(*(&v12 + 1) + 8 * i) count];
        }

        v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ ($FEE1510A43A03BFC9F45CB2D5A0A197D)getModeCountersByCandidatesByBand:(SEL)band
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [v5 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)getLabelForIntegerByBand:(id *)band withCap:(BOOL)cap
{
  capCopy = cap;
  v6 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    if (band->var1[i])
    {
      if (capCopy && band->var0[i] > 5)
      {
        v8 = [WiFiUsagePrivacyFilter bandAsString:i];
        [v6 appendFormat:@"%@GHz>%d ", v8, 5];
      }

      else
      {
        v8 = [WiFiUsagePrivacyFilter bandAsString:i];
        [v6 appendFormat:@"%@GHz:%lu ", v8, band->var0[i]];
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

+ (id)getLabelForIntegerByBand:(id *)band
{
  v3 = *&band->var0[2];
  v6[0] = *band->var0;
  v6[1] = v3;
  v4 = [self getLabelForIntegerByBand:v6 withCap:0];

  return v4;
}

+ (id)getLabelForIntegerByBand:(id *)band In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as
{
  inCopy = in;
  edgeCopy = edge;
  v12 = objc_opt_new();
  v13 = 0;
  if (as == 2)
  {
    v14 = @"<=";
  }

  else
  {
    v14 = @":";
  }

  do
  {
    if (band->var1[v13])
    {
      v15 = [self bandAsString:v13];
      v16 = [self getBinFor:band->var0[v13] In:inCopy WithLowestEdge:edgeCopy As:as];
      [v12 appendFormat:@"%@GHz%@%@ ", v15, v14, v16];
    }

    ++v13;
  }

  while (v13 != 3);
  v17 = [MEMORY[0x277CCACA8] stringWithString:v12];

  return v17;
}

+ (id)getLabelForIntegerByBandTransition:(id *)transition In:(id)in WithLowestEdge:(id)edge As:(unint64_t)as
{
  inCopy = in;
  edgeCopy = edge;
  v20 = objc_opt_new();
  v10 = 0;
  var1 = transition->var1;
  asCopy = as;
  if (as == 2)
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
        v15 = [self bandAsString:v10];
        v16 = [self bandAsString:i];
        v17 = [self getBinFor:transition->var0[0][i] In:inCopy WithLowestEdge:edgeCopy As:asCopy];
        [v20 appendFormat:@"%@GHz->%@GHz%@%@ ", v15, v16, v13, v17];
      }
    }

    ++v10;
    ++var1;
    transition = (transition + 24);
  }

  while (v10 != 3);
  v18 = [MEMORY[0x277CCACA8] stringWithString:v20];

  return v18;
}

+ (id)getLabelForPercIntegerByBand:(id *)band
{
  v4 = *&band->var0[2];
  v7[0] = *band->var0;
  v7[1] = v4;
  [self getPercForIntegerByBand:v7 Over:0x7FFFFFFFFFFFFFFFLL];
  v5 = [self getLabelForIntegerByBand:v8 In:&unk_2848BAFD0 WithLowestEdge:@"0" As:2];

  return v5;
}

+ (id)getLabelForNeighborsByBand:(id)band
{
  v23 = *MEMORY[0x277D85DE8];
  bandCopy = band;
  if (bandCopy)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [bandCopy allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [bandCopy objectForKeyedSubscript:v10];
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

        v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (id)getLabelForBandUsageDuration:(id *)duration overTotalDuration:(double)totalDuration binned:(BOOL)binned
{
  v27 = 0u;
  v28 = 0u;
  v9 = *&duration->var0[2];
  v25 = *duration->var0;
  v26 = v9;
  [self getPercForFloatByBand:&v25 Over:totalDuration];
  if (binned)
  {
    if (totalDuration == 0.0)
    {
      v10 = 0;
    }

    else
    {
      v25 = v27;
      v26 = v28;
      v10 = [self getLabelForIntegerByBand:&v25 In:&unk_2848BAFE8 WithLowestEdge:@"0" As:2];
    }
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [WiFiUsagePrivacyFilter bandAsString:0];
    v13 = 0.0;
    v14 = 0.0;
    if (duration->var1[0])
    {
      v14 = duration->var0[0];
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
    if (duration->var1[1])
    {
      v13 = duration->var0[1];
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
    if (duration->var1[2])
    {
      v21 = duration->var0[2];
    }

    if (BYTE10(v28))
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

    v23 = [v18 stringWithFormat:@"%@:%fs/%fs(%lu%%)", v19, *&v21, *&totalDuration, v22];
    v10 = [v11 stringWithFormat:@"%@:%fs/%fs(%ld%%) %@:%fs/%fs(%lu%%) %@", v12, *&v14, *&totalDuration, v15, v16, *&v13, *&totalDuration, v17, v23];
  }

  return v10;
}

+ (id)getLabelForRssiByBand:(id *)band
{
  v3 = *&band->var0[2];
  v6[0] = *band->var0;
  v6[1] = v3;
  v4 = [self getLabelForIntegerByBand:v6 In:&unk_2848BB000 WithLowestEdge:@"-inf" As:0];

  return v4;
}

+ (id)getLabelForRssiDeltaByBand:(id *)band
{
  v3 = *&band->var0[2];
  v6[0] = *band->var0;
  v6[1] = v3;
  v4 = [self getLabelForIntegerByBand:v6 In:&unk_2848BB018 WithLowestEdge:@"-inf" As:0];

  return v4;
}

+ (id)getLabelForRssiDeltaByBandTransition:(id *)transition
{
  v3 = *&transition->var0[2][0];
  v7[2] = *&transition->var0[1][1];
  v7[3] = v3;
  v7[4] = *&transition->var0[2][2];
  v8 = *&transition->var1[2][2];
  v4 = *&transition->var0[0][2];
  v7[0] = *&transition->var0[0][0];
  v7[1] = v4;
  v5 = [self getLabelForIntegerByBandTransition:v7 In:&unk_2848BB030 WithLowestEdge:@"-inf" As:0];

  return v5;
}

+ (id)getLabelForRTCoexType:(unint64_t)type
{
  if (type)
  {
    return @"Unknown";
  }

  else
  {
    return @"AWDL RealTime";
  }
}

+ (id)getLabelForSteeringRequest:(unint64_t)request
{
  if (request > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8620[request];
  }
}

+ (id)getLabelForTDMode:(int)mode
{
  if ((mode - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8640[mode - 1];
  }
}

+ (id)getLabelForTDTrigger:(int)trigger
{
  if (trigger > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C8658[trigger];
  }
}

+ (id)getLabelForCoreRssiMode:(unint64_t)mode
{
  if (mode > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C86D0[mode];
  }
}

+ (id)getLabelForUsbVendor:(unint64_t)vendor
{
  if (vendor <= 1920)
  {
    if (vendor > 1438)
    {
      switch(vendor)
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
      switch(vendor)
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

  else if (vendor <= 5420)
  {
    switch(vendor)
    {
      case 0x781uLL:
        return @"SanDisk";
      case 0x951uLL:
        return @"Kingston";
      case 0x1058uLL:
        return @"Western Digital";
    }
  }

  else if (vendor > 18320)
  {
    if (vendor == 18321)
    {
      return @"G-Technology";
    }

    if (vendor == 0xFFFF)
    {
      return @"DisplayPort";
    }
  }

  else
  {
    if (vendor == 5421)
    {
      return @"Sabrent";
    }

    if (vendor == 8201)
    {
      return @"iStorage";
    }
  }

  return @"Other";
}

+ (id)getLabelForPhyModes:(int)modes
{
  modesCopy = modes;
  v4 = objc_opt_new();
  v5 = v4;
  if ((modesCopy & 0x400) != 0)
  {
    [v4 addObject:@"6Ghz"];
    if ((modesCopy & 0x200) == 0)
    {
LABEL_3:
      if ((modesCopy & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((modesCopy & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"11BE"];
  if ((modesCopy & 0x100) == 0)
  {
LABEL_4:
    if ((modesCopy & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v5 addObject:@"11AX"];
  if ((modesCopy & 0x80) == 0)
  {
LABEL_5:
    if ((modesCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  [v5 addObject:@"11AC"];
  if ((modesCopy & 0x10) != 0)
  {
LABEL_6:
    [v5 addObject:@"11N"];
  }

LABEL_7:
  if ((modesCopy & 0x48) != 0)
  {
    [v5 addObject:@"11G"];
  }

  if ((modesCopy & 0x22) != 0)
  {
    [v5 addObject:@"11A"];
  }

  if ((modesCopy & 4) != 0)
  {
    [v5 addObject:@"11B"];
  }

  v6 = [v5 componentsJoinedByString:@"|"];

  return v6;
}

+ (id)getLabelsForNetworkProperties:(id)properties
{
  v21[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
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
        v10 = [propertiesCopy valueForKey:v9];
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
        v11 = [propertiesCopy valueForKey:v9];
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
  if ([propertiesCopy captiveStatus] == 2)
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

+ (id)bandAsString:(int)string
{
  if (string > 2)
  {
    return 0;
  }

  else
  {
    return off_2789C86E8[string];
  }
}

+ (int)bandFromFlags:(id)flags OrChannel:(id)channel
{
  flagsCopy = flags;
  channelCopy = channel;
  if (flagsCopy && [flagsCopy integerValue] >= 1)
  {
    v8 = [self bandFromFlags:{objc_msgSend(flagsCopy, "integerValue")}];
    if (!channelCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 3;
    if (!channelCopy)
    {
      goto LABEL_10;
    }
  }

  if (v8 == 3)
  {
    if ([channelCopy unsignedIntegerValue])
    {
      v8 = [self bandFromChannel:{objc_msgSend(channelCopy, "unsignedIntegerValue")}];
    }

    else
    {
      v8 = 3;
    }
  }

LABEL_10:

  return v8;
}

+ (unint64_t)channelWidthFromFlags:(unint64_t)flags
{
  v3 = 80;
  v4 = 40;
  if ((flags & 4) == 0)
  {
    v4 = 20;
  }

  if ((flags & 0x400) == 0)
  {
    v3 = v4;
  }

  if ((flags & 0x800) != 0)
  {
    return 160;
  }

  else
  {
    return v3;
  }
}

+ (int)bandFromFlags:(unint64_t)flags
{
  if ((flags & 0x2000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if ((flags & 0x10) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((flags & 8) != 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (int)bandFromChannel:(unint64_t)channel
{
  if (channel - 36 < 0x86)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  if (channel >= 0xF)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int)bandFromChanInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:@"CHANNELINFO_BAND_NUM"];
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

+ (int)bandFromAppleChannelSpec:(int)spec
{
  if (spec > 3)
  {
    return 3;
  }

  else
  {
    return dword_2333AB5E0[spec];
  }
}

+ (unint64_t)channelWidthAppleChannelSpec:(int)spec
{
  if ((spec - 1) > 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_2333AB5F0[spec - 1];
  }
}

+ (signed)waBandFromBand:(int)band
{
  if (band >= 3)
  {
    return -1;
  }

  else
  {
    return band;
  }
}

@end
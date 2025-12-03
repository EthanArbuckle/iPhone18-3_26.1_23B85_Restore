@interface WFMeasureResult
+ (void)initialize;
- (WFMeasureResult)initWithType:(unint64_t)type;
- (id)allPrimitiveProperties;
- (id)binnedProperty:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)statusForAcFailure;
- (id)statusForDNS;
- (id)statusForInternet;
- (id)statusForLocal;
- (id)statusForSiriTCP;
- (id)statusForSiriTLS;
- (id)typeAsString;
- (unint64_t)numAcAttempted;
- (unint64_t)numAcFailed;
@end

@implementation WFMeasureResult

- (WFMeasureResult)initWithType:(unint64_t)type
{
  v6.receiver = self;
  v6.super_class = WFMeasureResult;
  v4 = [(WFMeasureResult *)&v6 init];
  [(WFMeasureResult *)v4 setType:type];
  [(WFMeasureResult *)v4 setBackhaulResultsValid:0];
  [(WFMeasureResult *)v4 setGatewayResultsValid:0];
  [(WFMeasureResult *)v4 setLocalResultsValid:0];
  [(WFMeasureResult *)v4 setPublicResultsValid:0];
  [(WFMeasureResult *)v4 setDnsResultsValid:0];
  [(WFMeasureResult *)v4 setSiriTCPResultsValid:0];
  [(WFMeasureResult *)v4 setSiriTLSResultsValid:0];
  [(WFMeasureResult *)v4 setSeenSpecificAcFailure:0];
  [(WFMeasureResult *)v4 setTrafficClassBEAttemptedSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassBKAttemptedSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassVOAttemptedSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassVIAttemptedSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassBESucceededSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassBKSucceededSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassVOSucceededSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassVISucceededSmall:0];
  [(WFMeasureResult *)v4 setTrafficClassBEAttemptedLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassBKAttemptedLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassVOAttemptedLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassVIAttemptedLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassBESucceededLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassBKSucceededLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassVOSucceededLarge:0];
  [(WFMeasureResult *)v4 setTrafficClassVISucceededLarge:0];
  return v4;
}

- (id)statusForLocal
{
  if (self->_gatewayResultsValid)
  {
    gatewayPacketLoss = self->_gatewayPacketLoss;
    if (gatewayPacketLoss == 100)
    {
      v4 = &kWFMeasureStatusBroken;
    }

    else
    {
      v7 = self->_gatewayMaxRTT < 100 && gatewayPacketLoss < 50;
      v4 = &kWFMeasureStatusSlow;
      if (v7)
      {
        v4 = &kWFMeasureStatusOK;
      }
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)statusForInternet
{
  if (self->_dnsResultsValid && self->_gatewayResultsValid && self->_publicResultsValid)
  {
    if (self->_dnsSuccess)
    {
      if (self->_gatewayMaxRTT <= 100)
      {
        v3 = &kWFMeasureStatusOK;
      }

      else
      {
        v3 = &kWFMeasureStatusSlow;
      }
    }

    else
    {
      v3 = &kWFMeasureStatusLimited;
      if (self->_publicDNSPacketLoss >= 50 && self->_gatewayPacketLoss >= 50)
      {
        v3 = &kWFMeasureStatusBroken;
      }
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)statusForDNS
{
  if (self->_dnsResultsValid)
  {
    v3 = &kWFMeasureStatusOK;
    if (!self->_dnsSuccess)
    {
      v3 = &kWFMeasureStatusBroken;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)statusForSiriTCP
{
  if (self->_siriTCPResultsValid)
  {
    v3 = &kWFMeasureStatusOK;
    if (!self->_siriTCPSuccess)
    {
      v3 = &kWFMeasureStatusBroken;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)statusForSiriTLS
{
  if (self->_siriTLSResultsValid)
  {
    v3 = &kWFMeasureStatusOK;
    if (!self->_siriTLSSuccess)
    {
      v3 = &kWFMeasureStatusBroken;
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numAcAttempted
{
  v2 = self->_trafficClassBEAttemptedSmall > 0 || self->_trafficClassBEAttemptedLarge > 0;
  v3 = self->_trafficClassBKAttemptedSmall > 0 || self->_trafficClassBKAttemptedLarge > 0;
  v4 = self->_trafficClassVOAttemptedSmall > 0 || self->_trafficClassVOAttemptedLarge > 0;
  if (self->_trafficClassVIAttemptedSmall >= 1)
  {
    if (v2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (v3)
    {
      v2 = v5;
    }

    v6 = v4 + v2;
    return ++v6;
  }

  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v3)
  {
    v2 = v7;
  }

  v6 = v4 + v2;
  if (self->_trafficClassVIAttemptedLarge >= 1)
  {
    return ++v6;
  }

  return v6;
}

- (unint64_t)numAcFailed
{
  v2 = self->_trafficClassBEAttemptedSmall > 0 || self->_trafficClassBEAttemptedLarge > 0;
  if (self->_trafficClassBESucceededSmall)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_trafficClassBESucceededLarge == 0;
  }

  v4 = self->_trafficClassBKAttemptedSmall > 0 || self->_trafficClassBKAttemptedLarge > 0;
  if (self->_trafficClassBKSucceededSmall)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_trafficClassBKSucceededLarge == 0;
  }

  v6 = self->_trafficClassVOAttemptedSmall > 0 || self->_trafficClassVOAttemptedLarge > 0;
  if (self->_trafficClassVOSucceededSmall)
  {
    v7 = 0;
  }

  else
  {
    v7 = self->_trafficClassVOSucceededLarge == 0;
  }

  v8 = self->_trafficClassVIAttemptedSmall > 0 || self->_trafficClassVIAttemptedLarge > 0;
  if (self->_trafficClassVISucceededSmall)
  {
    v9 = 0;
  }

  else
  {
    v9 = self->_trafficClassVISucceededLarge == 0;
  }

  v10 = v2 && v3;
  v11 = v4 && v5;
  v12 = v11 + v10;
  v13 = v6 && v7;
  v14 = v8 && v9;
  return v12 + v13 + v14;
}

- (id)statusForAcFailure
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = self->_trafficClassBEAttemptedSmall > 0 || self->_trafficClassBEAttemptedLarge > 0;
  v5 = self->_trafficClassBKAttemptedSmall > 0 || self->_trafficClassBKAttemptedLarge > 0;
  v6 = self->_trafficClassVOAttemptedSmall > 0 || self->_trafficClassVOAttemptedLarge > 0;
  v7 = self->_trafficClassVIAttemptedSmall > 0 || self->_trafficClassVIAttemptedLarge > 0;
  numAcAttempted = [(WFMeasureResult *)self numAcAttempted];
  numAcFailed = [(WFMeasureResult *)self numAcFailed];
  if (self->_seenSpecificAcFailure)
  {
    if (numAcAttempted < 2)
    {
      if (!v4)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }

    if (numAcAttempted == numAcFailed)
    {
      v13 = @"_All";
    }

    else
    {
      v20 = numAcFailed;
      v21 = numAcAttempted - numAcFailed;
      v13 = @"_%luACF_%luP";
    }
  }

  else
  {
    v13 = @"_OK";
  }

  [string appendFormat:v13, v20, v21];
  if (!v4)
  {
LABEL_16:
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  trafficClassBESucceededLarge = self->_trafficClassBESucceededLarge;
  trafficClassBESucceededSmall = self->_trafficClassBESucceededSmall;
  [string appendFormat:@"_BEL%d:%d_S%d:%d", trafficClassBESucceededLarge, self->_trafficClassBEAttemptedLarge, trafficClassBESucceededSmall, self->_trafficClassBEAttemptedSmall];
  if (!v5)
  {
LABEL_17:
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  trafficClassBKSucceededLarge = self->_trafficClassBKSucceededLarge;
  trafficClassBKSucceededSmall = self->_trafficClassBKSucceededSmall;
  [string appendFormat:@"_BKL%d:%d_S%d:%d", trafficClassBKSucceededLarge, self->_trafficClassBKAttemptedLarge, trafficClassBKSucceededSmall, self->_trafficClassBKAttemptedSmall];
  if (!v6)
  {
LABEL_18:
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  trafficClassVOSucceededLarge = self->_trafficClassVOSucceededLarge;
  trafficClassVOSucceededSmall = self->_trafficClassVOSucceededSmall;
  [string appendFormat:@"_VOL%d:%d_S%d:%d", trafficClassVOSucceededLarge, self->_trafficClassVOAttemptedLarge, trafficClassVOSucceededSmall, self->_trafficClassVOAttemptedSmall];
  if (v7)
  {
LABEL_19:
    trafficClassVISucceededLarge = self->_trafficClassVISucceededLarge;
    trafficClassVISucceededSmall = self->_trafficClassVISucceededSmall;
    [string appendFormat:@"_VIL%d:%d_S%d:%d", trafficClassVISucceededLarge, self->_trafficClassVIAttemptedLarge, trafficClassVISucceededSmall, self->_trafficClassVIAttemptedSmall];
  }

LABEL_20:

  return string;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_backhaulResultsValid)
  {
    [string appendFormat:@"Backhaul:DL-Tput:(%d)mbps Error:(%@) ", self->_backhaulThroughput, self->_downloadError];
    [v4 appendFormat:@"Backhaul:UL-Tput:(%d)mbps Error:(%@) ", self->_backhaulULThroughput, self->_uploadError];
  }

  if (self->_gatewayResultsValid)
  {
    [v4 appendFormat:@"Gateway:RTT:(%d-%d)ms PER:(%d)%% ", self->_gatewayMinRTT, self->_gatewayMaxRTT, self->_gatewayPacketLoss];
  }

  if (self->_localResultsValid)
  {
    [v4 appendFormat:@"LocalDNS:RTT(%d-%d)ms PER:(%d)%% ", self->_localDNSMinRTT, self->_localDNSMaxRTT, self->_localDNSPacketLoss];
  }

  if (self->_publicResultsValid)
  {
    [v4 appendFormat:@"PublicDNS:RTT(%d-%d)ms PER:(%d)%% ", self->_publicDNSMinRTT, self->_publicDNSMaxRTT, self->_publicDNSPacketLoss];
  }

  if (self->_seenSpecificAcFailure)
  {
    [v4 appendFormat:@"SeenSpecificAcFailure %d ", 1];
  }

  if (self->_siriTCPResultsValid)
  {
    statusForSiriTCP = [(WFMeasureResult *)self statusForSiriTCP];
    [v4 appendFormat:@"SiriTCP: %@ (TrafficClass %ld) ", statusForSiriTCP, self->_siriTrafficClass];
  }

  if (self->_siriTLSResultsValid)
  {
    statusForSiriTLS = [(WFMeasureResult *)self statusForSiriTLS];
    [v4 appendFormat:@"SiriTLS: %@ (TrafficClass %ld) ", statusForSiriTLS, self->_siriTrafficClass];
  }

  statusForLocal = [(WFMeasureResult *)self statusForLocal];
  statusForInternet = [(WFMeasureResult *)self statusForInternet];
  statusForDNS = [(WFMeasureResult *)self statusForDNS];
  statusForAcFailure = [(WFMeasureResult *)self statusForAcFailure];
  [v4 appendFormat:@"Status:Local:%@ Internet:%@ DNS:%@ PerAC:%@ ", statusForLocal, statusForInternet, statusForDNS, statusForAcFailure];

  return v4;
}

- (id)allPrimitiveProperties
{
  outCount = 0;
  v27 = objc_opt_new();
  v3 = objc_opt_class();
  v4 = class_copyPropertyList(v3, &outCount);
  v5 = v4;
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Attributes = property_getAttributes(v5[i]);
      if (!Attributes)
      {
        goto LABEL_7;
      }

      v8 = Attributes;
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:Attributes];
      v10 = [v9 hasPrefix:@"T@"];

      if ((v10 & 1) == 0)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
        v12 = [v11 hasPrefix:@"T#"];

        if ((v12 & 1) == 0)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
          v14 = [v13 hasPrefix:@"T:"];

          if ((v14 & 1) == 0)
          {
LABEL_7:
            v15 = [MEMORY[0x277CCACA8] stringWithCString:property_getName(v5[i]) encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
            uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
            v17 = [v15 rangeOfCharacterFromSet:uppercaseLetterCharacterSet];
            v19 = v18;

            if (([v15 hasSuffix:@"ResultsValid"] & 1) == 0 && (v17 != 0x7FFFFFFFFFFFFFFFLL || v19 != 0))
            {
              v21 = [v15 substringToIndex:v17];
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ResultsValid", v21];
              v23 = objc_opt_class();
              if (class_getProperty(v23, [v22 UTF8String]))
              {
                v24 = [(WFMeasureResult *)self valueForKey:v22];
                if (v24)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([v24 BOOLValue])
                    {
                      [v27 addObject:v15];
                    }
                  }
                }
              }

              else
              {
                v24 = 0;
              }
            }
          }
        }
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_24;
  }

  free(v5);
LABEL_24:
  v25 = [v27 copy];

  return v25;
}

- (id)binnedProperty:(id)property
{
  propertyCopy = property;
  v5 = [(WFMeasureResult *)self valueForKey:propertyCopy];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_15;
  }

  v6 = [WFMeasureResult_PropertyToBinMethod objectForKeyedSubscript:propertyCopy];
  integerValue = [v6 integerValue];

  v8 = 0;
  if (integerValue <= 1)
  {
    if (integerValue)
    {
      if (integerValue != 1)
      {
        goto LABEL_15;
      }

      v9 = +[WiFiUsageLQMTransformations getBinThroughput:As:](WiFiUsageLQMTransformations, "getBinThroughput:As:", [v5 unsignedIntegerValue], 0);
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    switch(integerValue)
    {
      case 2:
        v9 = [v5 description];
        break;
      case 3:
        v9 = +[WiFiUsageLQMTransformations getBinRTT:As:](WiFiUsageLQMTransformations, "getBinRTT:As:", [v5 unsignedIntegerValue], 0);
        break;
      case 4:
        v9 = +[WiFiUsagePrivacyFilter getBinEvery10Over100:As:](WiFiUsagePrivacyFilter, "getBinEvery10Over100:As:", [v5 unsignedIntegerValue], 0);
        break;
      default:
        goto LABEL_15;
    }
  }

  v8 = v9;
LABEL_15:

  return v8;
}

+ (void)initialize
{
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v10 = [v14 initWithObjectsAndKeys:{v17, @"backhaulThroughput", v13, @"downloadError", v16, @"backhaulULThroughput", v15, @"uploadError", v2, @"gatewayMinRTT", v3, @"gatewayMaxRTT", v4, @"localDNSMinRTT", v5, @"localDNSMaxRTT", v12, @"publicDNSMinRTT", v6, @"publicDNSMaxRTT", v7, @"gatewayPacketLoss", v8, @"localDNSPacketLoss", v9, @"publicDNSPacketLoss", 0}];
  v11 = WFMeasureResult_PropertyToBinMethod;
  WFMeasureResult_PropertyToBinMethod = v10;
}

- (id)typeAsString
{
  type = self->_type;
  v3 = @"Unknown Test";
  if (type == 2)
  {
    v3 = @"Link Test";
  }

  if (type == 1)
  {
    return @"Throughput Test";
  }

  else
  {
    return v3;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[4] = self->_type;
  v4[5] = self->_options;
  v4[6] = *&self->_backhaulThroughput;
  v5 = [(NSError *)self->_downloadError copy];
  v6 = v4[8];
  v4[8] = v5;

  v4[7] = *&self->_backhaulULThroughput;
  v7 = [(NSError *)self->_uploadError copy];
  v8 = v4[9];
  v4[9] = v7;

  v4[10] = self->_gatewayMinRTT;
  v4[11] = self->_gatewayMaxRTT;
  v4[12] = self->_gatewayPacketLoss;
  v4[13] = self->_localDNSMinRTT;
  v4[14] = self->_localDNSMaxRTT;
  v4[15] = self->_localDNSPacketLoss;
  v4[16] = self->_publicDNSMinRTT;
  v4[17] = self->_publicDNSMaxRTT;
  v4[18] = self->_publicDNSPacketLoss;
  *(v4 + 8) = self->_dnsSuccess;
  *(v4 + 9) = self->_backhaulResultsValid;
  *(v4 + 10) = self->_gatewayResultsValid;
  *(v4 + 11) = self->_localResultsValid;
  *(v4 + 12) = self->_publicResultsValid;
  *(v4 + 13) = self->_dnsResultsValid;
  *(v4 + 15) = self->_siriTCPResultsValid;
  *(v4 + 16) = self->_siriTLSResultsValid;
  *(v4 + 14) = self->_seenSpecificAcFailure;
  v4[19] = self->_trafficClassBEAttemptedSmall;
  v4[20] = self->_trafficClassBKAttemptedSmall;
  v4[21] = self->_trafficClassVOAttemptedSmall;
  v4[22] = self->_trafficClassVIAttemptedSmall;
  v4[23] = self->_trafficClassBESucceededSmall;
  v4[24] = self->_trafficClassBKSucceededSmall;
  v4[25] = self->_trafficClassVOSucceededSmall;
  v4[26] = self->_trafficClassVISucceededSmall;
  v4[27] = self->_trafficClassBEAttemptedLarge;
  v4[28] = self->_trafficClassBKAttemptedLarge;
  v4[29] = self->_trafficClassVOAttemptedLarge;
  v4[30] = self->_trafficClassVIAttemptedLarge;
  v4[31] = self->_trafficClassBESucceededLarge;
  v4[32] = self->_trafficClassBKSucceededLarge;
  v4[33] = self->_trafficClassVOSucceededLarge;
  v4[34] = self->_trafficClassVISucceededLarge;
  *(v4 + 6) = self->_siriTrafficClass;
  *(v4 + 17) = self->_siriTCPSuccess;
  *(v4 + 18) = self->_siriTLSSuccess;
  v9 = [(NSString *)self->_gatewayAddress copy];
  v10 = v4[35];
  v4[35] = v9;

  v11 = [(NSMutableSet *)self->_dnsServers copy];
  v12 = v4[36];
  v4[36] = v11;

  return v4;
}

@end
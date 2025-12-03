@interface WiFiUsageSessionLQM
- (WiFiUsageSessionLQM)initWithLQMSample:(id)sample forInterface:(id)interface;
- (id)copyWithZone:(_NSZone *)zone;
- (id)eventDictionary:(BOOL)dictionary;
- (void)reset;
- (void)updateAverageOf:(id)of with:(int64_t)with forSession:(unint64_t)session;
- (void)updateLinkQuality:(id)quality forSession:(unint64_t)session;
@end

@implementation WiFiUsageSessionLQM

- (void)reset
{
  self->_minRssi = 0x7FFFFFFFFFFFFFFFLL;
  *&self->_avgRssi = 0u;
  *&self->_rssiGt40 = 0u;
  *&self->_rssi50to60 = 0u;
  *&self->_rssi65to70 = 0u;
  *&self->_rssi75to80 = 0u;
  *&self->_rssi85to90 = 0u;
  *&self->_count_of_LQMsamples = xmmword_2333AB370;
  self->_sum_of_RSSI = 0;
  *&self->_sum_of_core0rssiDiff = 0u;
  *&self->_maxNoise = xmmword_2333AB380;
  *&self->_avgNoise = 0u;
  *&self->_minSnr = xmmword_2333AB390;
  *&self->_maxBeaconPer = xmmword_2333AB3A0;
  *&self->_avgBeaconPer = 0u;
  *&self->_minTxRate = xmmword_2333AB3B0;
  self->_maxRxRate = 0;
  *&self->_minRxRate = xmmword_2333AB3B0;
  *&self->_maxSelfCca = xmmword_2333AB3A0;
  *&self->_selfCca60to70 = 0u;
  *&self->_selfCca75to80 = 0u;
  *&self->_avgSelfCca = 0u;
  *&self->_selfCca40to50 = 0u;
  *&self->_selfCca85to90 = 0u;
  *&self->_maxOtherCca = xmmword_2333AB3A0;
  *&self->_otherCca60to70 = 0u;
  *&self->_otherCca75to80 = 0u;
  *&self->_avgOtherCca = 0u;
  *&self->_otherCca40to50 = 0u;
  *&self->_otherCca85to90 = 0u;
  *&self->_maxInterference = xmmword_2333AB3A0;
  *&self->_interference60to70 = 0u;
  *&self->_interference75to80 = 0u;
  *&self->_avgInterference = 0u;
  *&self->_interference40to50 = 0u;
  *&self->_interference85to90 = 0u;
  *&self->_maxTotalCca = xmmword_2333AB3A0;
  *&self->_totalCca60to70 = 0u;
  *&self->_totalCca75to80 = 0u;
  *&self->_avgTotalCca = 0u;
  *&self->_totalCca40to50 = 0u;
  *&self->_totalCca85to90 = 0u;
  *&self->_avgTxBytesOverTxFrames = xmmword_2333AB3C0;
  *&self->_maxTxBytesOverTxFrames = 0u;
  *&self->_minRxBytesOverRxFrames = xmmword_2333AB3B0;
  *&self->_totalTxFrames = 0u;
  *&self->_minTxFramesPerSecond = xmmword_2333AB3B0;
  *&self->_totalRxFrames = 0u;
  *&self->_minRxFramesPerSecond = xmmword_2333AB3B0;
  *&self->_avgTxFailsOverTxFrames = xmmword_2333AB3C0;
  *&self->_maxTxFailsOverTxFrames = 0u;
  *&self->_minTxRetriesOverTxFrames = xmmword_2333AB3B0;
  *&self->_avgRxRetriesOverRxFrames = xmmword_2333AB3C0;
  self->_maxRxRetriesOverRxFrames = 0;
  self->_minDecodingAttemptsPerSecond = -1;
  self->_maxDecodingAttemptsPerSecond = 0;
  *&self->_totalDecodingAttempts = 0u;
  self->_minRxBadFcsPerSecond = -1;
  self->_maxRxBadFcsPerSecond = 0;
  *&self->_totalRxBadFcs = 0u;
  self->_minRxStartPortion = -1;
  self->_maxRxStartPortion = 0;
  *&self->_totalRxStartPortion = 0u;
  lastUpdatedTime = self->_lastUpdatedTime;
  self->_lastUpdatedTime = 0;

  initializationTime = self->_initializationTime;
  self->_initializationTime = 0;
}

- (WiFiUsageSessionLQM)initWithLQMSample:(id)sample forInterface:(id)interface
{
  sampleCopy = sample;
  if (interface)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v10.receiver = self;
    v10.super_class = WiFiUsageSessionLQM;
    v8 = [(WiFiUsageSessionLQM *)&v10 init];
    [(WiFiUsageSessionLQM *)v8 reset];
    [(WiFiUsageSessionLQM *)v8 setInitializationTime:date];
    [(WiFiUsageSessionLQM *)v8 updateLinkQuality:sampleCopy forSession:1];
    self = v8;

    interface = self;
  }

  else
  {
    NSLog(&cfstr_SCannotCreateS.isa, "[WiFiUsageSessionLQM initWithLQMSample:forInterface:]", 0);
  }

  return interface;
}

- (void)updateAverageOf:(id)of with:(int64_t)with forSession:(unint64_t)session
{
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"avg%@", of];
  v8 = [(WiFiUsageSessionLQM *)self valueForKey:?];
  integerValue = [v8 integerValue];

  if (integerValue)
  {
    count_of_LQMsamples = self->_count_of_LQMsamples;
    if (count_of_LQMsamples >= 2)
    {
      if (session <= 9)
      {
        if (((1 << session) & 0x2C2) != 0)
        {
          v11 = (with + (count_of_LQMsamples - 1) * integerValue) / count_of_LQMsamples;
LABEL_8:
          with = v11;
          goto LABEL_9;
        }

        if (((1 << session) & 0x38) != 0)
        {
          v11 = vcvtd_n_f64_s64(integerValue + with, 1uLL);
          goto LABEL_8;
        }
      }

      NSLog(&cfstr_SUnexpectedWeD.isa, "[WiFiUsageSessionLQM updateAverageOf:with:forSession:]", session);
      with = 0;
    }
  }

LABEL_9:
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:with];
  [(WiFiUsageSessionLQM *)self setValue:v12 forKey:v13];
}

- (void)updateLinkQuality:(id)quality forSession:(unint64_t)session
{
  qualityCopy = quality;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = date;
  lastUpdatedTime = self->_lastUpdatedTime;
  if (!lastUpdatedTime)
  {
    lastUpdatedTime = self->_initializationTime;
  }

  [date timeIntervalSinceDate:lastUpdatedTime];
  v10 = v9;
  if (!self->_initializationTime)
  {
    [(WiFiUsageSessionLQM *)self setInitializationTime:v7];
  }

  if (!self->_lastUpdatedTime || v10 >= 1.0)
  {
    [(WiFiUsageSessionLQM *)self setLastUpdatedTime:v7];
    ++self->_count_of_LQMsamples;
    rssi = [qualityCopy rssi];
    if (rssi != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = rssi;
      if (rssi <= -41)
      {
        if (rssi <= 0xFFFFFFFFFFFFFFCDLL)
        {
          if (rssi <= 0xFFFFFFFFFFFFFFC3)
          {
            if (rssi <= 0xFFFFFFFFFFFFFFBELL)
            {
              if (rssi <= 0xFFFFFFFFFFFFFFB9)
              {
                if (rssi <= 0xFFFFFFFFFFFFFFB4)
                {
                  if (rssi <= 0xFFFFFFFFFFFFFFAFLL)
                  {
                    if (rssi <= 0xFFFFFFFFFFFFFFAALL)
                    {
                      v13 = 120;
                      if (rssi > 0xFFFFFFFFFFFFFFA5)
                      {
                        v13 = 112;
                      }
                    }

                    else
                    {
                      v13 = 104;
                    }
                  }

                  else
                  {
                    v13 = 96;
                  }
                }

                else
                {
                  v13 = 88;
                }
              }

              else
              {
                v13 = 80;
              }
            }

            else
            {
              v13 = 72;
            }
          }

          else
          {
            v13 = 64;
          }
        }

        else
        {
          v13 = 56;
        }
      }

      else
      {
        v13 = 48;
      }

      *(&self->super.isa + v13) = (v10 + *(&self->super.isa + v13));
      if (rssi > self->_maxRssi)
      {
        self->_maxRssi = rssi;
      }

      if (rssi < self->_minRssi)
      {
        self->_minRssi = rssi;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Rssi" with:rssi forSession:session];
      self->_lastRssi = v12;
      self->_sum_of_RSSI += v12;
      if ([qualityCopy rssi_core0] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++self->_count_of_core0Samples;
        self->_sum_of_core0rssiDiff += v12 - [qualityCopy rssi_core0];
      }

      if ([qualityCopy rssi_core1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++self->_count_of_core1Samples;
        self->_sum_of_core1rssiDiff += v12 - [qualityCopy rssi_core1];
      }
    }

    noise = [qualityCopy noise];
    if (noise != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (noise > self->_maxNoise)
      {
        self->_maxNoise = noise;
      }

      if (noise < self->_minNoise)
      {
        self->_minNoise = noise;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Noise" with:noise forSession:session];
    }

    v15 = [qualityCopy snr];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v15 > self->_maxSnr)
      {
        self->_maxSnr = v15;
      }

      if (v15 < self->_minSnr)
      {
        self->_minSnr = v15;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Snr" with:v15 forSession:session];
    }

    beaconPer = [qualityCopy beaconPer];
    if (beaconPer != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (beaconPer > self->_maxBeaconPer)
      {
        self->_maxBeaconPer = beaconPer;
      }

      if (beaconPer < self->_minBeaconPer)
      {
        self->_minBeaconPer = beaconPer;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"BeaconPer" with:beaconPer forSession:session];
    }

    selfCca = [qualityCopy selfCca];
    if (selfCca != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (selfCca >= 40)
      {
        if (selfCca >= 0x32)
        {
          if (selfCca >= 0x3C)
          {
            if (selfCca >= 0x46)
            {
              if (selfCca >= 0x4B)
              {
                if (selfCca >= 0x50)
                {
                  if (selfCca >= 0x55)
                  {
                    v18 = 376;
                    if (selfCca < 0x5A)
                    {
                      v18 = 368;
                    }
                  }

                  else
                  {
                    v18 = 360;
                  }
                }

                else
                {
                  v18 = 352;
                }
              }

              else
              {
                v18 = 344;
              }
            }

            else
            {
              v18 = 336;
            }
          }

          else
          {
            v18 = 328;
          }
        }

        else
        {
          v18 = 320;
        }
      }

      else
      {
        v18 = 312;
      }

      *(&self->super.isa + v18) = (v10 + *(&self->super.isa + v18));
      if (selfCca > self->_maxSelfCca)
      {
        self->_maxSelfCca = selfCca;
      }

      if (selfCca < self->_minSelfCca)
      {
        self->_minSelfCca = selfCca;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"SelfCca" with:selfCca forSession:session];
    }

    otherCca = [qualityCopy otherCca];
    if (otherCca != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (otherCca >= 40)
      {
        if (otherCca >= 0x32)
        {
          if (otherCca >= 0x3C)
          {
            if (otherCca >= 0x46)
            {
              if (otherCca >= 0x4B)
              {
                if (otherCca >= 0x50)
                {
                  if (otherCca >= 0x55)
                  {
                    v20 = 472;
                    if (otherCca < 0x5A)
                    {
                      v20 = 464;
                    }
                  }

                  else
                  {
                    v20 = 456;
                  }
                }

                else
                {
                  v20 = 448;
                }
              }

              else
              {
                v20 = 440;
              }
            }

            else
            {
              v20 = 432;
            }
          }

          else
          {
            v20 = 424;
          }
        }

        else
        {
          v20 = 416;
        }
      }

      else
      {
        v20 = 408;
      }

      *(&self->super.isa + v20) = (v10 + *(&self->super.isa + v20));
      if (otherCca > self->_maxOtherCca)
      {
        self->_maxOtherCca = otherCca;
      }

      if (otherCca < self->_minOtherCca)
      {
        self->_minOtherCca = otherCca;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"OtherCca" with:otherCca forSession:session];
    }

    interference = [qualityCopy interference];
    if (interference != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (interference >= 40)
      {
        if (interference >= 0x32)
        {
          if (interference >= 0x3C)
          {
            if (interference >= 0x46)
            {
              if (interference >= 0x4B)
              {
                if (interference >= 0x50)
                {
                  if (interference >= 0x55)
                  {
                    v22 = 568;
                    if (interference < 0x5A)
                    {
                      v22 = 560;
                    }
                  }

                  else
                  {
                    v22 = 552;
                  }
                }

                else
                {
                  v22 = 544;
                }
              }

              else
              {
                v22 = 536;
              }
            }

            else
            {
              v22 = 528;
            }
          }

          else
          {
            v22 = 520;
          }
        }

        else
        {
          v22 = 512;
        }
      }

      else
      {
        v22 = 504;
      }

      *(&self->super.isa + v22) = (v10 + *(&self->super.isa + v22));
      if (interference > self->_maxInterference)
      {
        self->_maxInterference = interference;
      }

      if (interference < self->_minInterference)
      {
        self->_minInterference = interference;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Interference" with:interference forSession:session];
    }

    totalReportedCca = [qualityCopy totalReportedCca];
    if (totalReportedCca != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (totalReportedCca >= 40)
      {
        if (totalReportedCca >= 0x32)
        {
          if (totalReportedCca >= 0x3C)
          {
            if (totalReportedCca >= 0x46)
            {
              if (totalReportedCca >= 0x4B)
              {
                if (totalReportedCca >= 0x50)
                {
                  if (totalReportedCca >= 0x55)
                  {
                    v24 = 664;
                    if (totalReportedCca < 0x5A)
                    {
                      v24 = 656;
                    }
                  }

                  else
                  {
                    v24 = 648;
                  }
                }

                else
                {
                  v24 = 640;
                }
              }

              else
              {
                v24 = 632;
              }
            }

            else
            {
              v24 = 624;
            }
          }

          else
          {
            v24 = 616;
          }
        }

        else
        {
          v24 = 608;
        }
      }

      else
      {
        v24 = 600;
      }

      *(&self->super.isa + v24) = (v10 + *(&self->super.isa + v24));
      if (totalReportedCca > self->_maxTotalCca)
      {
        self->_maxTotalCca = totalReportedCca;
      }

      if (totalReportedCca < self->_minTotalCca)
      {
        self->_minTotalCca = totalReportedCca;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TotalCca" with:totalReportedCca forSession:session];
    }

    txBytesOverTxFrames = [qualityCopy txBytesOverTxFrames];
    v26 = txBytesOverTxFrames;
    if (txBytesOverTxFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (txBytesOverTxFrames < self->_minTxBytesOverTxFrames)
      {
        self->_minTxBytesOverTxFrames = txBytesOverTxFrames;
      }

      if (txBytesOverTxFrames > self->_maxTxBytesOverTxFrames)
      {
        self->_maxTxBytesOverTxFrames = txBytesOverTxFrames;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxBytesOverTxFrames" with:txBytesOverTxFrames forSession:session];
    }

    rxBytesOverRxFrames = [qualityCopy rxBytesOverRxFrames];
    if (rxBytesOverRxFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (rxBytesOverRxFrames < self->_minRxBytesOverRxFrames)
      {
        self->_minRxBytesOverRxFrames = rxBytesOverRxFrames;
      }

      if (rxBytesOverRxFrames > self->_maxRxBytesOverRxFrames)
      {
        self->_maxRxBytesOverRxFrames = rxBytesOverRxFrames;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxBytesOverRxFrames" with:v26 forSession:session];
    }

    txFrames = [qualityCopy txFrames];
    if (txFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = txFrames;
      v30 = (txFrames / v10);
      if (self->_minTxFramesPerSecond > v30)
      {
        self->_minTxFramesPerSecond = v30;
      }

      if (self->_maxTxFramesPerSecond < v30)
      {
        self->_maxTxFramesPerSecond = v30;
      }

      [WiFiUsageSessionLQM updateAverageOf:"updateAverageOf:with:forSession:" with:@"TxFramesPerSecond" forSession:?];
      self->_totalTxFrames += v29;
    }

    rxFrames = [qualityCopy rxFrames];
    if (rxFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = rxFrames;
      v33 = (rxFrames / v10);
      if (self->_minRxFramesPerSecond > v33)
      {
        self->_minRxFramesPerSecond = v33;
      }

      if (self->_maxRxFramesPerSecond < v33)
      {
        self->_maxRxFramesPerSecond = v33;
      }

      [WiFiUsageSessionLQM updateAverageOf:"updateAverageOf:with:forSession:" with:@"RxFramesPerSecond" forSession:?];
      self->_totalRxFrames += v32;
    }

    txFailsOverTxFrames = [qualityCopy txFailsOverTxFrames];
    if (txFailsOverTxFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (txFailsOverTxFrames < self->_minTxFailsOverTxFrames)
      {
        self->_minTxFailsOverTxFrames = txFailsOverTxFrames;
      }

      if (txFailsOverTxFrames > self->_maxTxFailsOverTxFrames)
      {
        self->_maxTxFailsOverTxFrames = txFailsOverTxFrames;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxFailsOverTxFrames" with:txFailsOverTxFrames forSession:session];
    }

    txRetriesOverTxFrames = [qualityCopy txRetriesOverTxFrames];
    if (txRetriesOverTxFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (txRetriesOverTxFrames < self->_minTxRetriesOverTxFrames)
      {
        self->_minTxRetriesOverTxFrames = txRetriesOverTxFrames;
      }

      if (txRetriesOverTxFrames > self->_maxTxRetriesOverTxFrames)
      {
        self->_maxTxRetriesOverTxFrames = txRetriesOverTxFrames;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxRetriesOverTxFrames" with:txRetriesOverTxFrames forSession:session];
    }

    rxRetriesOverRxFrames = [qualityCopy rxRetriesOverRxFrames];
    if (rxRetriesOverRxFrames != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (rxRetriesOverRxFrames < self->_minRxRetriesOverRxFrames)
      {
        self->_minRxRetriesOverRxFrames = rxRetriesOverRxFrames;
      }

      if (rxRetriesOverRxFrames > self->_maxRxRetriesOverRxFrames)
      {
        self->_maxRxRetriesOverRxFrames = rxRetriesOverRxFrames;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxRetriesOverRxFrames" with:rxRetriesOverRxFrames forSession:session];
    }

    decodingAttempts = [qualityCopy decodingAttempts];
    if (decodingAttempts != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = decodingAttempts;
      v39 = (decodingAttempts / v10);
      if (self->_minDecodingAttemptsPerSecond > v39)
      {
        self->_minDecodingAttemptsPerSecond = v39;
      }

      if (self->_maxDecodingAttemptsPerSecond < v39)
      {
        self->_maxDecodingAttemptsPerSecond = v39;
      }

      [WiFiUsageSessionLQM updateAverageOf:"updateAverageOf:with:forSession:" with:@"DecodingAttemptsPerSecond" forSession:?];
      self->_totalDecodingAttempts += v38;
    }

    rxStartOverDecodingAttemptsPercentage = [qualityCopy rxStartOverDecodingAttemptsPercentage];
    if (rxStartOverDecodingAttemptsPercentage != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = rxStartOverDecodingAttemptsPercentage;
      if (rxStartOverDecodingAttemptsPercentage < self->_minRxStartPortion)
      {
        self->_minRxStartPortion = rxStartOverDecodingAttemptsPercentage;
      }

      if (rxStartOverDecodingAttemptsPercentage > self->_maxRxStartPortion)
      {
        self->_maxRxStartPortion = rxStartOverDecodingAttemptsPercentage;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxStartPortion" with:rxStartOverDecodingAttemptsPercentage forSession:session];
      self->_totalRxStartPortion += v41;
    }

    txRate = [qualityCopy txRate];
    if (txRate && txRate != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (txRate > self->_maxTxRate)
      {
        self->_maxTxRate = txRate;
      }

      if (txRate < self->_minTxRate)
      {
        self->_minTxRate = txRate;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxRate" with:txRate forSession:session];
    }

    rxRate = [qualityCopy rxRate];
    if (rxRate && rxRate != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (rxRate > self->_maxRxRate)
      {
        self->_maxRxRate = rxRate;
      }

      if (rxRate < self->_minRxRate)
      {
        self->_minRxRate = rxRate;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxRate" with:rxRate forSession:session];
    }
  }
}

- (id)eventDictionary:(BOOL)dictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (!dictionary)
  {
    v6 = [WiFiUsagePrivacyFilter localTimestamp:self->_initializationTime];
    [dictionary setObject:v6 forKeyedSubscript:@"LqmSessionStartTime"];

    v7 = [WiFiUsagePrivacyFilter localTimestamp:self->_lastUpdatedTime];
    [dictionary setObject:v7 forKeyedSubscript:@"LqmSessionLastUpdatedTime"];
  }

  [(NSDate *)self->_lastUpdatedTime timeIntervalSinceDate:self->_initializationTime];
  v9 = v8;
  NSLog(&cfstr_STotalduration.isa, "[WiFiUsageSessionLQM eventDictionary:]", *&v8);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRssi];
  [dictionary setObject:v10 forKeyedSubscript:@"LqmRssiMax"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRssi];
  [dictionary setObject:v11 forKeyedSubscript:@"LqmRssiMin"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRssi];
  [dictionary setObject:v12 forKeyedSubscript:@"LqmRssiAvg"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastRssi];
  [dictionary setObject:v13 forKeyedSubscript:@"LqmRssiLast"];

  v14 = [WiFiUsagePrivacyFilter timePercentage:self->_rssiGt40 overTotalDuration:v9];
  [dictionary setObject:v14 forKeyedSubscript:@"LqmRssiGt40Duration"];

  v15 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi40to50 overTotalDuration:v9];
  [dictionary setObject:v15 forKeyedSubscript:@"LqmRssi40to50Duration"];

  v16 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi50to60 overTotalDuration:v9];
  [dictionary setObject:v16 forKeyedSubscript:@"LqmRssi50to60Duration"];

  v17 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi60to65 overTotalDuration:v9];
  [dictionary setObject:v17 forKeyedSubscript:@"LqmRssi60to65Duration"];

  v18 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi65to70 overTotalDuration:v9];
  [dictionary setObject:v18 forKeyedSubscript:@"LqmRssi65to70Duration"];

  v19 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi70to75 overTotalDuration:v9];
  [dictionary setObject:v19 forKeyedSubscript:@"LqmRssi70to75Duration"];

  v20 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi75to80 overTotalDuration:v9];
  [dictionary setObject:v20 forKeyedSubscript:@"LqmRssi75to80Duration"];

  v21 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi80to85 overTotalDuration:v9];
  [dictionary setObject:v21 forKeyedSubscript:@"LqmRssi80to85Duration"];

  v22 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi85to90 overTotalDuration:v9];
  [dictionary setObject:v22 forKeyedSubscript:@"LqmRssi85to90Duration"];

  v23 = [WiFiUsagePrivacyFilter timePercentage:self->_rssiLt90 overTotalDuration:v9];
  [dictionary setObject:v23 forKeyedSubscript:@"LqmRssiLt90Duration"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count_of_LQMsamples];
  [dictionary setObject:v24 forKeyedSubscript:@"LqmCount"];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sum_of_RSSI];
  [dictionary setObject:v25 forKeyedSubscript:@"LqmRssi_SumOf"];

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count_of_core0Samples];
  [dictionary setObject:v26 forKeyedSubscript:@"LqmRssiCore0Count"];

  if (self->_count_of_core0Samples >= 1)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sum_of_core0rssiDiff];
    [dictionary setObject:v27 forKeyedSubscript:@"LqmRssiCore0Diff_SumOf"];
  }

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count_of_core1Samples];
  [dictionary setObject:v28 forKeyedSubscript:@"LqmRssiCore1Count"];

  if (self->_count_of_core1Samples >= 1)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sum_of_core1rssiDiff];
    [dictionary setObject:v29 forKeyedSubscript:@"LqmRssiCore1Diff_SumOf"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxNoise];
  [dictionary setObject:v30 forKeyedSubscript:@"LqmNoiseMax"];

  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minNoise];
  [dictionary setObject:v31 forKeyedSubscript:@"LqmNoiseMin"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgNoise];
  [dictionary setObject:v32 forKeyedSubscript:@"LqmNoiseAvg"];

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxSnr];
  [dictionary setObject:v33 forKeyedSubscript:@"LqmSnrMax"];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minSnr];
  [dictionary setObject:v34 forKeyedSubscript:@"LqmSnrMin"];

  v35 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgSnr];
  [dictionary setObject:v35 forKeyedSubscript:@"LqmSnrAvg"];

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxSelfCca];
  [dictionary setObject:v36 forKeyedSubscript:@"LqmCcaSelfMax"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minSelfCca];
  [dictionary setObject:v37 forKeyedSubscript:@"LqmCcaSelfMin"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgSelfCca];
  [dictionary setObject:v38 forKeyedSubscript:@"LqmCcaSelfAvg"];

  v39 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCcaLt40 overTotalDuration:v9];
  [dictionary setObject:v39 forKeyedSubscript:@"LqmCcaSelfLt40Duration"];

  v40 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca40to50 overTotalDuration:v9];
  [dictionary setObject:v40 forKeyedSubscript:@"LqmCcaSelf40to50Duration"];

  v41 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca50to60 overTotalDuration:v9];
  [dictionary setObject:v41 forKeyedSubscript:@"LqmCcaSelf50to60Duration"];

  v42 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca60to70 overTotalDuration:v9];
  [dictionary setObject:v42 forKeyedSubscript:@"LqmCcaSelf60to70Duration"];

  v43 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca70to75 overTotalDuration:v9];
  [dictionary setObject:v43 forKeyedSubscript:@"LqmCcaSelf70to75Duration"];

  v44 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca75to80 overTotalDuration:v9];
  [dictionary setObject:v44 forKeyedSubscript:@"LqmCcaSelf75to80Duration"];

  v45 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca80to85 overTotalDuration:v9];
  [dictionary setObject:v45 forKeyedSubscript:@"LqmCcaSelf80to85Duration"];

  v46 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca85to90 overTotalDuration:v9];
  [dictionary setObject:v46 forKeyedSubscript:@"LqmCcaSelf85to90Duration"];

  v47 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCcaGt90 overTotalDuration:v9];
  [dictionary setObject:v47 forKeyedSubscript:@"LqmCcaSelfGt90Duration"];

  v48 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxOtherCca];
  [dictionary setObject:v48 forKeyedSubscript:@"LqmCcaOtherMax"];

  v49 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minOtherCca];
  [dictionary setObject:v49 forKeyedSubscript:@"LqmCcaOtherMin"];

  v50 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgOtherCca];
  [dictionary setObject:v50 forKeyedSubscript:@"LqmCcaOtherAvg"];

  v51 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCcaLt40 overTotalDuration:v9];
  [dictionary setObject:v51 forKeyedSubscript:@"LqmCcaOtherLt40Duration"];

  v52 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca40to50 overTotalDuration:v9];
  [dictionary setObject:v52 forKeyedSubscript:@"LqmCcaOther40to50Duration"];

  v53 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca50to60 overTotalDuration:v9];
  [dictionary setObject:v53 forKeyedSubscript:@"LqmCcaOther50to60Duration"];

  v54 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca60to70 overTotalDuration:v9];
  [dictionary setObject:v54 forKeyedSubscript:@"LqmCcaOther60to70Duration"];

  v55 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca70to75 overTotalDuration:v9];
  [dictionary setObject:v55 forKeyedSubscript:@"LqmCcaOther70to75Duration"];

  v56 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca75to80 overTotalDuration:v9];
  [dictionary setObject:v56 forKeyedSubscript:@"LqmCcaOther75to80Duration"];

  v57 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca80to85 overTotalDuration:v9];
  [dictionary setObject:v57 forKeyedSubscript:@"LqmCcaOther80to85Duration"];

  v58 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca85to90 overTotalDuration:v9];
  [dictionary setObject:v58 forKeyedSubscript:@"LqmCcaOther85to90Duration"];

  v59 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCcaGt90 overTotalDuration:v9];
  [dictionary setObject:v59 forKeyedSubscript:@"LqmCcaOtherGt90Duration"];

  v60 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxInterference];
  [dictionary setObject:v60 forKeyedSubscript:@"LqmInterferenceMax"];

  v61 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minInterference];
  [dictionary setObject:v61 forKeyedSubscript:@"LqmInterferenceMin"];

  v62 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgInterference];
  [dictionary setObject:v62 forKeyedSubscript:@"LqmInterferenceAvg"];

  v63 = [WiFiUsagePrivacyFilter timePercentage:self->_interferenceLt40 overTotalDuration:v9];
  [dictionary setObject:v63 forKeyedSubscript:@"LqmInterferenceLt40Duration"];

  v64 = [WiFiUsagePrivacyFilter timePercentage:self->_interference40to50 overTotalDuration:v9];
  [dictionary setObject:v64 forKeyedSubscript:@"LqmInterference40to50Duration"];

  v65 = [WiFiUsagePrivacyFilter timePercentage:self->_interference50to60 overTotalDuration:v9];
  [dictionary setObject:v65 forKeyedSubscript:@"LqmInterference50to60Duration"];

  v66 = [WiFiUsagePrivacyFilter timePercentage:self->_interference60to70 overTotalDuration:v9];
  [dictionary setObject:v66 forKeyedSubscript:@"LqmInterference60to70Duration"];

  v67 = [WiFiUsagePrivacyFilter timePercentage:self->_interference70to75 overTotalDuration:v9];
  [dictionary setObject:v67 forKeyedSubscript:@"LqmInterference70to75Duration"];

  v68 = [WiFiUsagePrivacyFilter timePercentage:self->_interference75to80 overTotalDuration:v9];
  [dictionary setObject:v68 forKeyedSubscript:@"LqmInterference75to80Duration"];

  v69 = [WiFiUsagePrivacyFilter timePercentage:self->_interference80to85 overTotalDuration:v9];
  [dictionary setObject:v69 forKeyedSubscript:@"LqmInterference80to85Duration"];

  v70 = [WiFiUsagePrivacyFilter timePercentage:self->_interference85to90 overTotalDuration:v9];
  [dictionary setObject:v70 forKeyedSubscript:@"LqmInterference85to90Duration"];

  v71 = [WiFiUsagePrivacyFilter timePercentage:self->_interferenceGt90 overTotalDuration:v9];
  [dictionary setObject:v71 forKeyedSubscript:@"LqmInterferenceGt90Duration"];

  v72 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTotalCca];
  [dictionary setObject:v72 forKeyedSubscript:@"LqmCcaTotalMax"];

  v73 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTotalCca];
  [dictionary setObject:v73 forKeyedSubscript:@"LqmCcaTotalMin"];

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTotalCca];
  [dictionary setObject:v74 forKeyedSubscript:@"LqmCcaTotalAvg"];

  v75 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCcaLt40 overTotalDuration:v9];
  [dictionary setObject:v75 forKeyedSubscript:@"LqmCcaTotalLt40Duration"];

  v76 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca40to50 overTotalDuration:v9];
  [dictionary setObject:v76 forKeyedSubscript:@"LqmCcaTotal40to50Duration"];

  v77 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca50to60 overTotalDuration:v9];
  [dictionary setObject:v77 forKeyedSubscript:@"LqmCcaTotal50to60Duration"];

  v78 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca60to70 overTotalDuration:v9];
  [dictionary setObject:v78 forKeyedSubscript:@"LqmCcaTotal60to70Duration"];

  v79 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca70to75 overTotalDuration:v9];
  [dictionary setObject:v79 forKeyedSubscript:@"LqmCcaTotal70to75Duration"];

  v80 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca75to80 overTotalDuration:v9];
  [dictionary setObject:v80 forKeyedSubscript:@"LqmCcaTotal75to80Duration"];

  v81 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca80to85 overTotalDuration:v9];
  [dictionary setObject:v81 forKeyedSubscript:@"LqmCcaTotal80to85Duration"];

  v82 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca85to90 overTotalDuration:v9];
  [dictionary setObject:v82 forKeyedSubscript:@"LqmCcaTotal85to90Duration"];

  v83 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCcaGt90 overTotalDuration:v9];
  [dictionary setObject:v83 forKeyedSubscript:@"LqmCcaTotalGt90Duration"];

  v84 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_avgTxBytesOverTxFrames];
  [dictionary setObject:v84 forKeyedSubscript:@"LqmTxBytesOverTxFramesAvg"];

  v85 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_minTxBytesOverTxFrames];
  [dictionary setObject:v85 forKeyedSubscript:@"LqmTxBytesOverTxFramesMin"];

  v86 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_maxTxBytesOverTxFrames];
  [dictionary setObject:v86 forKeyedSubscript:@"LqmTxBytesOverTxFramesMax"];

  v87 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_avgRxBytesOverRxFrames];
  [dictionary setObject:v87 forKeyedSubscript:@"LqmRxBytesOverRxFramesAvg"];

  v88 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_minRxBytesOverRxFrames];
  [dictionary setObject:v88 forKeyedSubscript:@"LqmRxBytesOverRxFramesMin"];

  v89 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_maxRxBytesOverRxFrames];
  [dictionary setObject:v89 forKeyedSubscript:@"LqmRxBytesOverRxFramesMax"];

  v90 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalTxFrames];
  [dictionary setObject:v90 forKeyedSubscript:@"LqmTxFramesTotal"];

  v91 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgTxFramesPerSecond];
  [dictionary setObject:v91 forKeyedSubscript:@"LqmTxFramesPerSecondAvg"];

  v92 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minTxFramesPerSecond];
  [dictionary setObject:v92 forKeyedSubscript:@"LqmTxFramesPerSecondMin"];

  v93 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxTxFramesPerSecond];
  [dictionary setObject:v93 forKeyedSubscript:@"LqmTxFramesPerSecondMax"];

  v94 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalRxFrames];
  [dictionary setObject:v94 forKeyedSubscript:@"LqmRxFramesTotal"];

  v95 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgRxFramesPerSecond];
  [dictionary setObject:v95 forKeyedSubscript:@"LqmRxFramesPerSecondAvg"];

  v96 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minRxFramesPerSecond];
  [dictionary setObject:v96 forKeyedSubscript:@"LqmRxFramesPerSecondMin"];

  v97 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxRxFramesPerSecond];
  [dictionary setObject:v97 forKeyedSubscript:@"LqmRxFramesPerSecondMax"];

  v98 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTxFailsOverTxFrames];
  [dictionary setObject:v98 forKeyedSubscript:@"LqmcurrentTxFailsOverTxFramesAvg"];

  v99 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTxFailsOverTxFrames];
  [dictionary setObject:v99 forKeyedSubscript:@"LqmcurrentTxFailsOverTxFramesMin"];

  v100 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTxFailsOverTxFrames];
  [dictionary setObject:v100 forKeyedSubscript:@"LqmcurrentTxFailsOverTxFramesMax"];

  v101 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTxRetriesOverTxFrames];
  [dictionary setObject:v101 forKeyedSubscript:@"LqmcurrentTxRetriesOverTxFramesAvg"];

  v102 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTxRetriesOverTxFrames];
  [dictionary setObject:v102 forKeyedSubscript:@"LqmcurrentTxRetriesOverTxFramesMin"];

  v103 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTxRetriesOverTxFrames];
  [dictionary setObject:v103 forKeyedSubscript:@"LqmcurrentTxRetriesOverTxFramesMax"];

  v104 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRxRetriesOverRxFrames];
  [dictionary setObject:v104 forKeyedSubscript:@"LqmRxRetriesOverRxFramesAvg"];

  v105 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRxRetriesOverRxFrames];
  [dictionary setObject:v105 forKeyedSubscript:@"LqmRxRetriesOverRxFramesMin"];

  v106 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRxRetriesOverRxFrames];
  [dictionary setObject:v106 forKeyedSubscript:@"LqmRxRetriesOverRxFramesMax"];

  v107 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalDecodingAttempts];
  [dictionary setObject:v107 forKeyedSubscript:@"LqmDecodingAttemptsTotal"];

  v108 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgDecodingAttemptsPerSecond];
  [dictionary setObject:v108 forKeyedSubscript:@"LqmDecodingAttemptsPerSecondAvg"];

  v109 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minDecodingAttemptsPerSecond];
  [dictionary setObject:v109 forKeyedSubscript:@"LqmDecodingAttemptsPerSecondMin"];

  v110 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxDecodingAttemptsPerSecond];
  [dictionary setObject:v110 forKeyedSubscript:@"LqmDecodingAttemptsPerSecondMax"];

  v111 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalRxBadFcs];
  [dictionary setObject:v111 forKeyedSubscript:@"LqmRxBadFcsTotal"];

  v112 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgRxBadFcsPerSecond];
  [dictionary setObject:v112 forKeyedSubscript:@"LqmRxBadFcsPerSecondAvg"];

  v113 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minRxBadFcsPerSecond];
  [dictionary setObject:v113 forKeyedSubscript:@"LqmRxBadFcsPerSecondMin"];

  v114 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxRxBadFcsPerSecond];
  [dictionary setObject:v114 forKeyedSubscript:@"LqmRxBadFcsPerSecondMax"];

  v115 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalRxStartPortion];
  [dictionary setObject:v115 forKeyedSubscript:@"LqmRxStartPortionTotal"];

  v116 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRxStartPortion];
  [dictionary setObject:v116 forKeyedSubscript:@"LqmRxStartPortionAvg"];

  v117 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRxStartPortion];
  [dictionary setObject:v117 forKeyedSubscript:@"LqmRxStartPortionMin"];

  v118 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRxStartPortion];
  [dictionary setObject:v118 forKeyedSubscript:@"LqmRxStartPortionMax"];

  v119 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTxRate];
  [dictionary setObject:v119 forKeyedSubscript:@"LqmTxRateMax"];

  v120 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTxRate];
  [dictionary setObject:v120 forKeyedSubscript:@"LqmTxRateMin"];

  v121 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTxRate];
  [dictionary setObject:v121 forKeyedSubscript:@"LqmTxRateAvg"];

  v122 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRxRate];
  [dictionary setObject:v122 forKeyedSubscript:@"LqmRxRateMax"];

  v123 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRxRate];
  [dictionary setObject:v123 forKeyedSubscript:@"LqmRxRateMin"];

  v124 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRxRate];
  [dictionary setObject:v124 forKeyedSubscript:@"LqmRxRateAvg"];

  v125 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxBeaconPer];
  [dictionary setObject:v125 forKeyedSubscript:@"LqmBeaconPerMax"];

  v126 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minBeaconPer];
  [dictionary setObject:v126 forKeyedSubscript:@"LqmBeaconPerMin"];

  v127 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgBeaconPer];
  [dictionary setObject:v127 forKeyedSubscript:@"LqmBeaconPerAvg"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setInitializationTime:self->_initializationTime];
  [v4 setLastUpdatedTime:self->_lastUpdatedTime];
  [v4 setMaxRssi:self->_maxRssi];
  [v4 setMinRssi:self->_minRssi];
  [v4 setAvgRssi:self->_avgRssi];
  [v4 setLastRssi:self->_lastRssi];
  [v4 setRssiGt40:self->_rssiGt40];
  [v4 setRssi40to50:self->_rssi40to50];
  [v4 setRssi50to60:self->_rssi50to60];
  [v4 setRssi60to65:self->_rssi60to65];
  [v4 setRssi65to70:self->_rssi65to70];
  [v4 setRssi70to75:self->_rssi70to75];
  [v4 setRssi75to80:self->_rssi75to80];
  [v4 setRssi80to85:self->_rssi80to85];
  [v4 setRssi85to90:self->_rssi85to90];
  [v4 setRssiLt90:self->_rssiLt90];
  [v4 setCount_of_LQMsamples:self->_count_of_LQMsamples];
  [v4 setCount_of_core0Samples:self->_count_of_core0Samples];
  [v4 setCount_of_core1Samples:self->_count_of_core1Samples];
  [v4 setSum_of_RSSI:self->_sum_of_RSSI];
  [v4 setSum_of_core0rssiDiff:self->_sum_of_core0rssiDiff];
  [v4 setSum_of_core1rssiDiff:self->_sum_of_core1rssiDiff];
  [v4 setMaxNoise:self->_maxNoise];
  [v4 setMinNoise:self->_minNoise];
  [v4 setAvgNoise:self->_avgNoise];
  [v4 setMaxSnr:self->_maxSnr];
  [v4 setMinSnr:self->_minSnr];
  [v4 setAvgSnr:self->_avgSnr];
  [v4 setMaxBeaconPer:self->_maxBeaconPer];
  [v4 setMinBeaconPer:self->_minBeaconPer];
  [v4 setAvgBeaconPer:self->_avgBeaconPer];
  [v4 setMaxTxRate:self->_maxTxRate];
  [v4 setMinTxRate:self->_minTxRate];
  [v4 setAvgTxRate:self->_avgTxRate];
  [v4 setMaxRxRate:self->_maxRxRate];
  [v4 setMinRxRate:self->_minRxRate];
  [v4 setAvgRxRate:self->_avgRxRate];
  [v4 setMaxSelfCca:self->_maxSelfCca];
  [v4 setMinSelfCca:self->_minSelfCca];
  [v4 setAvgSelfCca:self->_avgSelfCca];
  [v4 setSelfCcaLt40:self->_selfCcaLt40];
  [v4 setSelfCca40to50:self->_selfCca40to50];
  [v4 setSelfCca50to60:self->_selfCca50to60];
  [v4 setSelfCca60to70:self->_selfCca60to70];
  [v4 setSelfCca70to75:self->_selfCca70to75];
  [v4 setSelfCca75to80:self->_selfCca75to80];
  [v4 setSelfCca80to85:self->_selfCca80to85];
  [v4 setSelfCca85to90:self->_selfCca85to90];
  [v4 setSelfCcaGt90:self->_selfCcaGt90];
  [v4 setMaxOtherCca:self->_maxOtherCca];
  [v4 setMinOtherCca:self->_minOtherCca];
  [v4 setAvgOtherCca:self->_avgOtherCca];
  [v4 setOtherCcaLt40:self->_otherCcaLt40];
  [v4 setOtherCca40to50:self->_otherCca40to50];
  [v4 setOtherCca50to60:self->_otherCca50to60];
  [v4 setOtherCca60to70:self->_otherCca60to70];
  [v4 setOtherCca70to75:self->_otherCca70to75];
  [v4 setOtherCca75to80:self->_otherCca75to80];
  [v4 setOtherCca80to85:self->_otherCca80to85];
  [v4 setOtherCca85to90:self->_otherCca85to90];
  [v4 setOtherCcaGt90:self->_otherCcaGt90];
  [v4 setMaxInterference:self->_maxInterference];
  [v4 setMinInterference:self->_minInterference];
  [v4 setAvgInterference:self->_avgInterference];
  [v4 setInterferenceLt40:self->_interferenceLt40];
  [v4 setInterference40to50:self->_interference40to50];
  [v4 setInterference50to60:self->_interference50to60];
  [v4 setInterference60to70:self->_interference60to70];
  [v4 setInterference70to75:self->_interference70to75];
  [v4 setInterference75to80:self->_interference75to80];
  [v4 setInterference80to85:self->_interference80to85];
  [v4 setInterference85to90:self->_interference85to90];
  [v4 setInterferenceGt90:self->_interferenceGt90];
  [v4 setMaxTotalCca:self->_maxTotalCca];
  [v4 setMinTotalCca:self->_minTotalCca];
  [v4 setAvgTotalCca:self->_avgTotalCca];
  [v4 setTotalCcaLt40:self->_totalCcaLt40];
  [v4 setTotalCca40to50:self->_totalCca40to50];
  [v4 setTotalCca50to60:self->_totalCca50to60];
  [v4 setTotalCca60to70:self->_totalCca60to70];
  [v4 setTotalCca70to75:self->_totalCca70to75];
  [v4 setTotalCca75to80:self->_totalCca75to80];
  [v4 setTotalCca80to85:self->_totalCca80to85];
  [v4 setTotalCca85to90:self->_totalCca85to90];
  [v4 setTotalCcaGt90:self->_totalCcaGt90];
  [v4 setAvgTxBytesOverTxFrames:self->_avgTxBytesOverTxFrames];
  [v4 setMinTxBytesOverTxFrames:self->_minTxBytesOverTxFrames];
  [v4 setMaxTxBytesOverTxFrames:self->_maxTxBytesOverTxFrames];
  [v4 setAvgRxBytesOverRxFrames:self->_avgRxBytesOverRxFrames];
  [v4 setMinRxBytesOverRxFrames:self->_minRxBytesOverRxFrames];
  [v4 setMaxRxBytesOverRxFrames:self->_maxRxBytesOverRxFrames];
  [v4 setTotalTxFrames:self->_totalTxFrames];
  [v4 setAvgTxFramesPerSecond:self->_avgTxFramesPerSecond];
  [v4 setMinTxFramesPerSecond:self->_minTxFramesPerSecond];
  [v4 setMaxTxFramesPerSecond:self->_maxTxFramesPerSecond];
  [v4 setTotalRxFrames:self->_totalRxFrames];
  [v4 setAvgRxFramesPerSecond:self->_avgRxFramesPerSecond];
  [v4 setMinRxFramesPerSecond:self->_minRxFramesPerSecond];
  [v4 setMaxRxFramesPerSecond:self->_maxRxFramesPerSecond];
  [v4 setAvgTxFailsOverTxFrames:self->_avgTxFailsOverTxFrames];
  [v4 setMinTxFailsOverTxFrames:self->_minTxFailsOverTxFrames];
  [v4 setMaxTxFailsOverTxFrames:self->_maxTxFailsOverTxFrames];
  [v4 setAvgTxRetriesOverTxFrames:self->_avgTxRetriesOverTxFrames];
  [v4 setMinTxRetriesOverTxFrames:self->_minTxRetriesOverTxFrames];
  [v4 setMaxTxRetriesOverTxFrames:self->_maxTxRetriesOverTxFrames];
  [v4 setAvgRxRetriesOverRxFrames:self->_avgRxRetriesOverRxFrames];
  [v4 setMinRxRetriesOverRxFrames:self->_minRxRetriesOverRxFrames];
  [v4 setMaxRxRetriesOverRxFrames:self->_maxRxRetriesOverRxFrames];
  [v4 setTotalDecodingAttempts:self->_totalDecodingAttempts];
  [v4 setAvgDecodingAttemptsPerSecond:self->_avgDecodingAttemptsPerSecond];
  [v4 setMinDecodingAttemptsPerSecond:self->_minDecodingAttemptsPerSecond];
  [v4 setMaxDecodingAttemptsPerSecond:self->_maxDecodingAttemptsPerSecond];
  [v4 setTotalRxBadFcs:self->_totalRxBadFcs];
  [v4 setAvgRxBadFcsPerSecond:self->_avgRxBadFcsPerSecond];
  [v4 setMinRxBadFcsPerSecond:self->_minRxBadFcsPerSecond];
  [v4 setMaxRxBadFcsPerSecond:self->_maxRxBadFcsPerSecond];
  [v4 setTotalRxStartPortion:self->_totalRxStartPortion];
  [v4 setAvgRxStartPortion:self->_avgRxStartPortion];
  [v4 setMinRxStartPortion:self->_minRxStartPortion];
  [v4 setMaxRxStartPortion:self->_maxRxStartPortion];
  return v4;
}

@end
@interface WiFiUsageSessionLQM
- (WiFiUsageSessionLQM)initWithLQMSample:(id)a3 forInterface:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)eventDictionary:(BOOL)a3;
- (void)reset;
- (void)updateAverageOf:(id)a3 with:(int64_t)a4 forSession:(unint64_t)a5;
- (void)updateLinkQuality:(id)a3 forSession:(unint64_t)a4;
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

- (WiFiUsageSessionLQM)initWithLQMSample:(id)a3 forInterface:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v10.receiver = self;
    v10.super_class = WiFiUsageSessionLQM;
    v8 = [(WiFiUsageSessionLQM *)&v10 init];
    [(WiFiUsageSessionLQM *)v8 reset];
    [(WiFiUsageSessionLQM *)v8 setInitializationTime:v7];
    [(WiFiUsageSessionLQM *)v8 updateLinkQuality:v6 forSession:1];
    self = v8;

    a4 = self;
  }

  else
  {
    NSLog(&cfstr_SCannotCreateS.isa, "[WiFiUsageSessionLQM initWithLQMSample:forInterface:]", 0);
  }

  return a4;
}

- (void)updateAverageOf:(id)a3 with:(int64_t)a4 forSession:(unint64_t)a5
{
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"avg%@", a3];
  v8 = [(WiFiUsageSessionLQM *)self valueForKey:?];
  v9 = [v8 integerValue];

  if (v9)
  {
    count_of_LQMsamples = self->_count_of_LQMsamples;
    if (count_of_LQMsamples >= 2)
    {
      if (a5 <= 9)
      {
        if (((1 << a5) & 0x2C2) != 0)
        {
          v11 = (a4 + (count_of_LQMsamples - 1) * v9) / count_of_LQMsamples;
LABEL_8:
          a4 = v11;
          goto LABEL_9;
        }

        if (((1 << a5) & 0x38) != 0)
        {
          v11 = vcvtd_n_f64_s64(v9 + a4, 1uLL);
          goto LABEL_8;
        }
      }

      NSLog(&cfstr_SUnexpectedWeD.isa, "[WiFiUsageSessionLQM updateAverageOf:with:forSession:]", a5);
      a4 = 0;
    }
  }

LABEL_9:
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(WiFiUsageSessionLQM *)self setValue:v12 forKey:v13];
}

- (void)updateLinkQuality:(id)a3 forSession:(unint64_t)a4
{
  v44 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = v6;
  lastUpdatedTime = self->_lastUpdatedTime;
  if (!lastUpdatedTime)
  {
    lastUpdatedTime = self->_initializationTime;
  }

  [v6 timeIntervalSinceDate:lastUpdatedTime];
  v10 = v9;
  if (!self->_initializationTime)
  {
    [(WiFiUsageSessionLQM *)self setInitializationTime:v7];
  }

  if (!self->_lastUpdatedTime || v10 >= 1.0)
  {
    [(WiFiUsageSessionLQM *)self setLastUpdatedTime:v7];
    ++self->_count_of_LQMsamples;
    v11 = [v44 rssi];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      if (v11 <= -41)
      {
        if (v11 <= 0xFFFFFFFFFFFFFFCDLL)
        {
          if (v11 <= 0xFFFFFFFFFFFFFFC3)
          {
            if (v11 <= 0xFFFFFFFFFFFFFFBELL)
            {
              if (v11 <= 0xFFFFFFFFFFFFFFB9)
              {
                if (v11 <= 0xFFFFFFFFFFFFFFB4)
                {
                  if (v11 <= 0xFFFFFFFFFFFFFFAFLL)
                  {
                    if (v11 <= 0xFFFFFFFFFFFFFFAALL)
                    {
                      v13 = 120;
                      if (v11 > 0xFFFFFFFFFFFFFFA5)
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
      if (v11 > self->_maxRssi)
      {
        self->_maxRssi = v11;
      }

      if (v11 < self->_minRssi)
      {
        self->_minRssi = v11;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Rssi" with:v11 forSession:a4];
      self->_lastRssi = v12;
      self->_sum_of_RSSI += v12;
      if ([v44 rssi_core0] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++self->_count_of_core0Samples;
        self->_sum_of_core0rssiDiff += v12 - [v44 rssi_core0];
      }

      if ([v44 rssi_core1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++self->_count_of_core1Samples;
        self->_sum_of_core1rssiDiff += v12 - [v44 rssi_core1];
      }
    }

    v14 = [v44 noise];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v14 > self->_maxNoise)
      {
        self->_maxNoise = v14;
      }

      if (v14 < self->_minNoise)
      {
        self->_minNoise = v14;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Noise" with:v14 forSession:a4];
    }

    v15 = [v44 snr];
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

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Snr" with:v15 forSession:a4];
    }

    v16 = [v44 beaconPer];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16 > self->_maxBeaconPer)
      {
        self->_maxBeaconPer = v16;
      }

      if (v16 < self->_minBeaconPer)
      {
        self->_minBeaconPer = v16;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"BeaconPer" with:v16 forSession:a4];
    }

    v17 = [v44 selfCca];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v17 >= 40)
      {
        if (v17 >= 0x32)
        {
          if (v17 >= 0x3C)
          {
            if (v17 >= 0x46)
            {
              if (v17 >= 0x4B)
              {
                if (v17 >= 0x50)
                {
                  if (v17 >= 0x55)
                  {
                    v18 = 376;
                    if (v17 < 0x5A)
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
      if (v17 > self->_maxSelfCca)
      {
        self->_maxSelfCca = v17;
      }

      if (v17 < self->_minSelfCca)
      {
        self->_minSelfCca = v17;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"SelfCca" with:v17 forSession:a4];
    }

    v19 = [v44 otherCca];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v19 >= 40)
      {
        if (v19 >= 0x32)
        {
          if (v19 >= 0x3C)
          {
            if (v19 >= 0x46)
            {
              if (v19 >= 0x4B)
              {
                if (v19 >= 0x50)
                {
                  if (v19 >= 0x55)
                  {
                    v20 = 472;
                    if (v19 < 0x5A)
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
      if (v19 > self->_maxOtherCca)
      {
        self->_maxOtherCca = v19;
      }

      if (v19 < self->_minOtherCca)
      {
        self->_minOtherCca = v19;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"OtherCca" with:v19 forSession:a4];
    }

    v21 = [v44 interference];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v21 >= 40)
      {
        if (v21 >= 0x32)
        {
          if (v21 >= 0x3C)
          {
            if (v21 >= 0x46)
            {
              if (v21 >= 0x4B)
              {
                if (v21 >= 0x50)
                {
                  if (v21 >= 0x55)
                  {
                    v22 = 568;
                    if (v21 < 0x5A)
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
      if (v21 > self->_maxInterference)
      {
        self->_maxInterference = v21;
      }

      if (v21 < self->_minInterference)
      {
        self->_minInterference = v21;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"Interference" with:v21 forSession:a4];
    }

    v23 = [v44 totalReportedCca];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v23 >= 40)
      {
        if (v23 >= 0x32)
        {
          if (v23 >= 0x3C)
          {
            if (v23 >= 0x46)
            {
              if (v23 >= 0x4B)
              {
                if (v23 >= 0x50)
                {
                  if (v23 >= 0x55)
                  {
                    v24 = 664;
                    if (v23 < 0x5A)
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
      if (v23 > self->_maxTotalCca)
      {
        self->_maxTotalCca = v23;
      }

      if (v23 < self->_minTotalCca)
      {
        self->_minTotalCca = v23;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TotalCca" with:v23 forSession:a4];
    }

    v25 = [v44 txBytesOverTxFrames];
    v26 = v25;
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v25 < self->_minTxBytesOverTxFrames)
      {
        self->_minTxBytesOverTxFrames = v25;
      }

      if (v25 > self->_maxTxBytesOverTxFrames)
      {
        self->_maxTxBytesOverTxFrames = v25;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxBytesOverTxFrames" with:v25 forSession:a4];
    }

    v27 = [v44 rxBytesOverRxFrames];
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v27 < self->_minRxBytesOverRxFrames)
      {
        self->_minRxBytesOverRxFrames = v27;
      }

      if (v27 > self->_maxRxBytesOverRxFrames)
      {
        self->_maxRxBytesOverRxFrames = v27;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxBytesOverRxFrames" with:v26 forSession:a4];
    }

    v28 = [v44 txFrames];
    if (v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v28;
      v30 = (v28 / v10);
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

    v31 = [v44 rxFrames];
    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v31;
      v33 = (v31 / v10);
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

    v34 = [v44 txFailsOverTxFrames];
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v34 < self->_minTxFailsOverTxFrames)
      {
        self->_minTxFailsOverTxFrames = v34;
      }

      if (v34 > self->_maxTxFailsOverTxFrames)
      {
        self->_maxTxFailsOverTxFrames = v34;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxFailsOverTxFrames" with:v34 forSession:a4];
    }

    v35 = [v44 txRetriesOverTxFrames];
    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v35 < self->_minTxRetriesOverTxFrames)
      {
        self->_minTxRetriesOverTxFrames = v35;
      }

      if (v35 > self->_maxTxRetriesOverTxFrames)
      {
        self->_maxTxRetriesOverTxFrames = v35;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxRetriesOverTxFrames" with:v35 forSession:a4];
    }

    v36 = [v44 rxRetriesOverRxFrames];
    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v36 < self->_minRxRetriesOverRxFrames)
      {
        self->_minRxRetriesOverRxFrames = v36;
      }

      if (v36 > self->_maxRxRetriesOverRxFrames)
      {
        self->_maxRxRetriesOverRxFrames = v36;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxRetriesOverRxFrames" with:v36 forSession:a4];
    }

    v37 = [v44 decodingAttempts];
    if (v37 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v37;
      v39 = (v37 / v10);
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

    v40 = [v44 rxStartOverDecodingAttemptsPercentage];
    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = v40;
      if (v40 < self->_minRxStartPortion)
      {
        self->_minRxStartPortion = v40;
      }

      if (v40 > self->_maxRxStartPortion)
      {
        self->_maxRxStartPortion = v40;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxStartPortion" with:v40 forSession:a4];
      self->_totalRxStartPortion += v41;
    }

    v42 = [v44 txRate];
    if (v42 && v42 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v42 > self->_maxTxRate)
      {
        self->_maxTxRate = v42;
      }

      if (v42 < self->_minTxRate)
      {
        self->_minTxRate = v42;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"TxRate" with:v42 forSession:a4];
    }

    v43 = [v44 rxRate];
    if (v43 && v43 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v43 > self->_maxRxRate)
      {
        self->_maxRxRate = v43;
      }

      if (v43 < self->_minRxRate)
      {
        self->_minRxRate = v43;
      }

      [(WiFiUsageSessionLQM *)self updateAverageOf:@"RxRate" with:v43 forSession:a4];
    }
  }
}

- (id)eventDictionary:(BOOL)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if (!a3)
  {
    v6 = [WiFiUsagePrivacyFilter localTimestamp:self->_initializationTime];
    [v5 setObject:v6 forKeyedSubscript:@"LqmSessionStartTime"];

    v7 = [WiFiUsagePrivacyFilter localTimestamp:self->_lastUpdatedTime];
    [v5 setObject:v7 forKeyedSubscript:@"LqmSessionLastUpdatedTime"];
  }

  [(NSDate *)self->_lastUpdatedTime timeIntervalSinceDate:self->_initializationTime];
  v9 = v8;
  NSLog(&cfstr_STotalduration.isa, "[WiFiUsageSessionLQM eventDictionary:]", *&v8);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRssi];
  [v5 setObject:v10 forKeyedSubscript:@"LqmRssiMax"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRssi];
  [v5 setObject:v11 forKeyedSubscript:@"LqmRssiMin"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRssi];
  [v5 setObject:v12 forKeyedSubscript:@"LqmRssiAvg"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastRssi];
  [v5 setObject:v13 forKeyedSubscript:@"LqmRssiLast"];

  v14 = [WiFiUsagePrivacyFilter timePercentage:self->_rssiGt40 overTotalDuration:v9];
  [v5 setObject:v14 forKeyedSubscript:@"LqmRssiGt40Duration"];

  v15 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi40to50 overTotalDuration:v9];
  [v5 setObject:v15 forKeyedSubscript:@"LqmRssi40to50Duration"];

  v16 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi50to60 overTotalDuration:v9];
  [v5 setObject:v16 forKeyedSubscript:@"LqmRssi50to60Duration"];

  v17 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi60to65 overTotalDuration:v9];
  [v5 setObject:v17 forKeyedSubscript:@"LqmRssi60to65Duration"];

  v18 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi65to70 overTotalDuration:v9];
  [v5 setObject:v18 forKeyedSubscript:@"LqmRssi65to70Duration"];

  v19 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi70to75 overTotalDuration:v9];
  [v5 setObject:v19 forKeyedSubscript:@"LqmRssi70to75Duration"];

  v20 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi75to80 overTotalDuration:v9];
  [v5 setObject:v20 forKeyedSubscript:@"LqmRssi75to80Duration"];

  v21 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi80to85 overTotalDuration:v9];
  [v5 setObject:v21 forKeyedSubscript:@"LqmRssi80to85Duration"];

  v22 = [WiFiUsagePrivacyFilter timePercentage:self->_rssi85to90 overTotalDuration:v9];
  [v5 setObject:v22 forKeyedSubscript:@"LqmRssi85to90Duration"];

  v23 = [WiFiUsagePrivacyFilter timePercentage:self->_rssiLt90 overTotalDuration:v9];
  [v5 setObject:v23 forKeyedSubscript:@"LqmRssiLt90Duration"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count_of_LQMsamples];
  [v5 setObject:v24 forKeyedSubscript:@"LqmCount"];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sum_of_RSSI];
  [v5 setObject:v25 forKeyedSubscript:@"LqmRssi_SumOf"];

  v26 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count_of_core0Samples];
  [v5 setObject:v26 forKeyedSubscript:@"LqmRssiCore0Count"];

  if (self->_count_of_core0Samples >= 1)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sum_of_core0rssiDiff];
    [v5 setObject:v27 forKeyedSubscript:@"LqmRssiCore0Diff_SumOf"];
  }

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:self->_count_of_core1Samples];
  [v5 setObject:v28 forKeyedSubscript:@"LqmRssiCore1Count"];

  if (self->_count_of_core1Samples >= 1)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sum_of_core1rssiDiff];
    [v5 setObject:v29 forKeyedSubscript:@"LqmRssiCore1Diff_SumOf"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxNoise];
  [v5 setObject:v30 forKeyedSubscript:@"LqmNoiseMax"];

  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minNoise];
  [v5 setObject:v31 forKeyedSubscript:@"LqmNoiseMin"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgNoise];
  [v5 setObject:v32 forKeyedSubscript:@"LqmNoiseAvg"];

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxSnr];
  [v5 setObject:v33 forKeyedSubscript:@"LqmSnrMax"];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minSnr];
  [v5 setObject:v34 forKeyedSubscript:@"LqmSnrMin"];

  v35 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgSnr];
  [v5 setObject:v35 forKeyedSubscript:@"LqmSnrAvg"];

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxSelfCca];
  [v5 setObject:v36 forKeyedSubscript:@"LqmCcaSelfMax"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minSelfCca];
  [v5 setObject:v37 forKeyedSubscript:@"LqmCcaSelfMin"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgSelfCca];
  [v5 setObject:v38 forKeyedSubscript:@"LqmCcaSelfAvg"];

  v39 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCcaLt40 overTotalDuration:v9];
  [v5 setObject:v39 forKeyedSubscript:@"LqmCcaSelfLt40Duration"];

  v40 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca40to50 overTotalDuration:v9];
  [v5 setObject:v40 forKeyedSubscript:@"LqmCcaSelf40to50Duration"];

  v41 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca50to60 overTotalDuration:v9];
  [v5 setObject:v41 forKeyedSubscript:@"LqmCcaSelf50to60Duration"];

  v42 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca60to70 overTotalDuration:v9];
  [v5 setObject:v42 forKeyedSubscript:@"LqmCcaSelf60to70Duration"];

  v43 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca70to75 overTotalDuration:v9];
  [v5 setObject:v43 forKeyedSubscript:@"LqmCcaSelf70to75Duration"];

  v44 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca75to80 overTotalDuration:v9];
  [v5 setObject:v44 forKeyedSubscript:@"LqmCcaSelf75to80Duration"];

  v45 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca80to85 overTotalDuration:v9];
  [v5 setObject:v45 forKeyedSubscript:@"LqmCcaSelf80to85Duration"];

  v46 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCca85to90 overTotalDuration:v9];
  [v5 setObject:v46 forKeyedSubscript:@"LqmCcaSelf85to90Duration"];

  v47 = [WiFiUsagePrivacyFilter timePercentage:self->_selfCcaGt90 overTotalDuration:v9];
  [v5 setObject:v47 forKeyedSubscript:@"LqmCcaSelfGt90Duration"];

  v48 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxOtherCca];
  [v5 setObject:v48 forKeyedSubscript:@"LqmCcaOtherMax"];

  v49 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minOtherCca];
  [v5 setObject:v49 forKeyedSubscript:@"LqmCcaOtherMin"];

  v50 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgOtherCca];
  [v5 setObject:v50 forKeyedSubscript:@"LqmCcaOtherAvg"];

  v51 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCcaLt40 overTotalDuration:v9];
  [v5 setObject:v51 forKeyedSubscript:@"LqmCcaOtherLt40Duration"];

  v52 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca40to50 overTotalDuration:v9];
  [v5 setObject:v52 forKeyedSubscript:@"LqmCcaOther40to50Duration"];

  v53 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca50to60 overTotalDuration:v9];
  [v5 setObject:v53 forKeyedSubscript:@"LqmCcaOther50to60Duration"];

  v54 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca60to70 overTotalDuration:v9];
  [v5 setObject:v54 forKeyedSubscript:@"LqmCcaOther60to70Duration"];

  v55 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca70to75 overTotalDuration:v9];
  [v5 setObject:v55 forKeyedSubscript:@"LqmCcaOther70to75Duration"];

  v56 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca75to80 overTotalDuration:v9];
  [v5 setObject:v56 forKeyedSubscript:@"LqmCcaOther75to80Duration"];

  v57 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca80to85 overTotalDuration:v9];
  [v5 setObject:v57 forKeyedSubscript:@"LqmCcaOther80to85Duration"];

  v58 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCca85to90 overTotalDuration:v9];
  [v5 setObject:v58 forKeyedSubscript:@"LqmCcaOther85to90Duration"];

  v59 = [WiFiUsagePrivacyFilter timePercentage:self->_otherCcaGt90 overTotalDuration:v9];
  [v5 setObject:v59 forKeyedSubscript:@"LqmCcaOtherGt90Duration"];

  v60 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxInterference];
  [v5 setObject:v60 forKeyedSubscript:@"LqmInterferenceMax"];

  v61 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minInterference];
  [v5 setObject:v61 forKeyedSubscript:@"LqmInterferenceMin"];

  v62 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgInterference];
  [v5 setObject:v62 forKeyedSubscript:@"LqmInterferenceAvg"];

  v63 = [WiFiUsagePrivacyFilter timePercentage:self->_interferenceLt40 overTotalDuration:v9];
  [v5 setObject:v63 forKeyedSubscript:@"LqmInterferenceLt40Duration"];

  v64 = [WiFiUsagePrivacyFilter timePercentage:self->_interference40to50 overTotalDuration:v9];
  [v5 setObject:v64 forKeyedSubscript:@"LqmInterference40to50Duration"];

  v65 = [WiFiUsagePrivacyFilter timePercentage:self->_interference50to60 overTotalDuration:v9];
  [v5 setObject:v65 forKeyedSubscript:@"LqmInterference50to60Duration"];

  v66 = [WiFiUsagePrivacyFilter timePercentage:self->_interference60to70 overTotalDuration:v9];
  [v5 setObject:v66 forKeyedSubscript:@"LqmInterference60to70Duration"];

  v67 = [WiFiUsagePrivacyFilter timePercentage:self->_interference70to75 overTotalDuration:v9];
  [v5 setObject:v67 forKeyedSubscript:@"LqmInterference70to75Duration"];

  v68 = [WiFiUsagePrivacyFilter timePercentage:self->_interference75to80 overTotalDuration:v9];
  [v5 setObject:v68 forKeyedSubscript:@"LqmInterference75to80Duration"];

  v69 = [WiFiUsagePrivacyFilter timePercentage:self->_interference80to85 overTotalDuration:v9];
  [v5 setObject:v69 forKeyedSubscript:@"LqmInterference80to85Duration"];

  v70 = [WiFiUsagePrivacyFilter timePercentage:self->_interference85to90 overTotalDuration:v9];
  [v5 setObject:v70 forKeyedSubscript:@"LqmInterference85to90Duration"];

  v71 = [WiFiUsagePrivacyFilter timePercentage:self->_interferenceGt90 overTotalDuration:v9];
  [v5 setObject:v71 forKeyedSubscript:@"LqmInterferenceGt90Duration"];

  v72 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTotalCca];
  [v5 setObject:v72 forKeyedSubscript:@"LqmCcaTotalMax"];

  v73 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTotalCca];
  [v5 setObject:v73 forKeyedSubscript:@"LqmCcaTotalMin"];

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTotalCca];
  [v5 setObject:v74 forKeyedSubscript:@"LqmCcaTotalAvg"];

  v75 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCcaLt40 overTotalDuration:v9];
  [v5 setObject:v75 forKeyedSubscript:@"LqmCcaTotalLt40Duration"];

  v76 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca40to50 overTotalDuration:v9];
  [v5 setObject:v76 forKeyedSubscript:@"LqmCcaTotal40to50Duration"];

  v77 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca50to60 overTotalDuration:v9];
  [v5 setObject:v77 forKeyedSubscript:@"LqmCcaTotal50to60Duration"];

  v78 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca60to70 overTotalDuration:v9];
  [v5 setObject:v78 forKeyedSubscript:@"LqmCcaTotal60to70Duration"];

  v79 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca70to75 overTotalDuration:v9];
  [v5 setObject:v79 forKeyedSubscript:@"LqmCcaTotal70to75Duration"];

  v80 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca75to80 overTotalDuration:v9];
  [v5 setObject:v80 forKeyedSubscript:@"LqmCcaTotal75to80Duration"];

  v81 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca80to85 overTotalDuration:v9];
  [v5 setObject:v81 forKeyedSubscript:@"LqmCcaTotal80to85Duration"];

  v82 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCca85to90 overTotalDuration:v9];
  [v5 setObject:v82 forKeyedSubscript:@"LqmCcaTotal85to90Duration"];

  v83 = [WiFiUsagePrivacyFilter timePercentage:self->_totalCcaGt90 overTotalDuration:v9];
  [v5 setObject:v83 forKeyedSubscript:@"LqmCcaTotalGt90Duration"];

  v84 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_avgTxBytesOverTxFrames];
  [v5 setObject:v84 forKeyedSubscript:@"LqmTxBytesOverTxFramesAvg"];

  v85 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_minTxBytesOverTxFrames];
  [v5 setObject:v85 forKeyedSubscript:@"LqmTxBytesOverTxFramesMin"];

  v86 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_maxTxBytesOverTxFrames];
  [v5 setObject:v86 forKeyedSubscript:@"LqmTxBytesOverTxFramesMax"];

  v87 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_avgRxBytesOverRxFrames];
  [v5 setObject:v87 forKeyedSubscript:@"LqmRxBytesOverRxFramesAvg"];

  v88 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_minRxBytesOverRxFrames];
  [v5 setObject:v88 forKeyedSubscript:@"LqmRxBytesOverRxFramesMin"];

  v89 = [WiFiUsagePrivacyFilter numberWithByteCount:self->_maxRxBytesOverRxFrames];
  [v5 setObject:v89 forKeyedSubscript:@"LqmRxBytesOverRxFramesMax"];

  v90 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalTxFrames];
  [v5 setObject:v90 forKeyedSubscript:@"LqmTxFramesTotal"];

  v91 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgTxFramesPerSecond];
  [v5 setObject:v91 forKeyedSubscript:@"LqmTxFramesPerSecondAvg"];

  v92 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minTxFramesPerSecond];
  [v5 setObject:v92 forKeyedSubscript:@"LqmTxFramesPerSecondMin"];

  v93 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxTxFramesPerSecond];
  [v5 setObject:v93 forKeyedSubscript:@"LqmTxFramesPerSecondMax"];

  v94 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalRxFrames];
  [v5 setObject:v94 forKeyedSubscript:@"LqmRxFramesTotal"];

  v95 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgRxFramesPerSecond];
  [v5 setObject:v95 forKeyedSubscript:@"LqmRxFramesPerSecondAvg"];

  v96 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minRxFramesPerSecond];
  [v5 setObject:v96 forKeyedSubscript:@"LqmRxFramesPerSecondMin"];

  v97 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxRxFramesPerSecond];
  [v5 setObject:v97 forKeyedSubscript:@"LqmRxFramesPerSecondMax"];

  v98 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTxFailsOverTxFrames];
  [v5 setObject:v98 forKeyedSubscript:@"LqmcurrentTxFailsOverTxFramesAvg"];

  v99 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTxFailsOverTxFrames];
  [v5 setObject:v99 forKeyedSubscript:@"LqmcurrentTxFailsOverTxFramesMin"];

  v100 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTxFailsOverTxFrames];
  [v5 setObject:v100 forKeyedSubscript:@"LqmcurrentTxFailsOverTxFramesMax"];

  v101 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTxRetriesOverTxFrames];
  [v5 setObject:v101 forKeyedSubscript:@"LqmcurrentTxRetriesOverTxFramesAvg"];

  v102 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTxRetriesOverTxFrames];
  [v5 setObject:v102 forKeyedSubscript:@"LqmcurrentTxRetriesOverTxFramesMin"];

  v103 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTxRetriesOverTxFrames];
  [v5 setObject:v103 forKeyedSubscript:@"LqmcurrentTxRetriesOverTxFramesMax"];

  v104 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRxRetriesOverRxFrames];
  [v5 setObject:v104 forKeyedSubscript:@"LqmRxRetriesOverRxFramesAvg"];

  v105 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRxRetriesOverRxFrames];
  [v5 setObject:v105 forKeyedSubscript:@"LqmRxRetriesOverRxFramesMin"];

  v106 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRxRetriesOverRxFrames];
  [v5 setObject:v106 forKeyedSubscript:@"LqmRxRetriesOverRxFramesMax"];

  v107 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalDecodingAttempts];
  [v5 setObject:v107 forKeyedSubscript:@"LqmDecodingAttemptsTotal"];

  v108 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgDecodingAttemptsPerSecond];
  [v5 setObject:v108 forKeyedSubscript:@"LqmDecodingAttemptsPerSecondAvg"];

  v109 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minDecodingAttemptsPerSecond];
  [v5 setObject:v109 forKeyedSubscript:@"LqmDecodingAttemptsPerSecondMin"];

  v110 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxDecodingAttemptsPerSecond];
  [v5 setObject:v110 forKeyedSubscript:@"LqmDecodingAttemptsPerSecondMax"];

  v111 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_totalRxBadFcs];
  [v5 setObject:v111 forKeyedSubscript:@"LqmRxBadFcsTotal"];

  v112 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_avgRxBadFcsPerSecond];
  [v5 setObject:v112 forKeyedSubscript:@"LqmRxBadFcsPerSecondAvg"];

  v113 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_minRxBadFcsPerSecond];
  [v5 setObject:v113 forKeyedSubscript:@"LqmRxBadFcsPerSecondMin"];

  v114 = [WiFiUsagePrivacyFilter numberWithFrameCount:self->_maxRxBadFcsPerSecond];
  [v5 setObject:v114 forKeyedSubscript:@"LqmRxBadFcsPerSecondMax"];

  v115 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalRxStartPortion];
  [v5 setObject:v115 forKeyedSubscript:@"LqmRxStartPortionTotal"];

  v116 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRxStartPortion];
  [v5 setObject:v116 forKeyedSubscript:@"LqmRxStartPortionAvg"];

  v117 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRxStartPortion];
  [v5 setObject:v117 forKeyedSubscript:@"LqmRxStartPortionMin"];

  v118 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRxStartPortion];
  [v5 setObject:v118 forKeyedSubscript:@"LqmRxStartPortionMax"];

  v119 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxTxRate];
  [v5 setObject:v119 forKeyedSubscript:@"LqmTxRateMax"];

  v120 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minTxRate];
  [v5 setObject:v120 forKeyedSubscript:@"LqmTxRateMin"];

  v121 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgTxRate];
  [v5 setObject:v121 forKeyedSubscript:@"LqmTxRateAvg"];

  v122 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxRxRate];
  [v5 setObject:v122 forKeyedSubscript:@"LqmRxRateMax"];

  v123 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minRxRate];
  [v5 setObject:v123 forKeyedSubscript:@"LqmRxRateMin"];

  v124 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgRxRate];
  [v5 setObject:v124 forKeyedSubscript:@"LqmRxRateAvg"];

  v125 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxBeaconPer];
  [v5 setObject:v125 forKeyedSubscript:@"LqmBeaconPerMax"];

  v126 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minBeaconPer];
  [v5 setObject:v126 forKeyedSubscript:@"LqmBeaconPerMin"];

  v127 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgBeaconPer];
  [v5 setObject:v127 forKeyedSubscript:@"LqmBeaconPerAvg"];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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
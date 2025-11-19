@interface PRGetPowerStatsResponse
- (BOOL)isEqual:(id)a3;
- (PRGetPowerStatsResponse)initWithCoder:(id)a3;
- (PRGetPowerStatsResponse)initWithGetPowerStatsResponse:(const PowerStatsResponse *)a3;
- (PRGetPowerStatsResponse)initWithSleepDuration:(unsigned int)a3 wakeDuration:(unsigned int)a4 singleAntennaSearchDuration:(unsigned int)a5 dualAntennaSearchDuration:(unsigned int)a6 singleChainRxPacketDuration:(unsigned int)a7 dualChainRxPacketDuration:(unsigned int)a8 tripleChainRxPacketDuration:(unsigned int)a9 dspProcessingDuration:(unsigned int)a10 txDuration:(unsigned int)a11 numPacketsReceived:(unsigned __int16)a12 numPacketsTransmitted:(unsigned __int16)a13 sleepCount:(unsigned int)a14 wakeCount:(unsigned int)a15 pmgrSleepCount:(unsigned int)a16 pmgrDeepSleepCount:(unsigned int)a17 deepSleepDuration:(unsigned int)a18;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRGetPowerStatsResponse

- (PRGetPowerStatsResponse)initWithSleepDuration:(unsigned int)a3 wakeDuration:(unsigned int)a4 singleAntennaSearchDuration:(unsigned int)a5 dualAntennaSearchDuration:(unsigned int)a6 singleChainRxPacketDuration:(unsigned int)a7 dualChainRxPacketDuration:(unsigned int)a8 tripleChainRxPacketDuration:(unsigned int)a9 dspProcessingDuration:(unsigned int)a10 txDuration:(unsigned int)a11 numPacketsReceived:(unsigned __int16)a12 numPacketsTransmitted:(unsigned __int16)a13 sleepCount:(unsigned int)a14 wakeCount:(unsigned int)a15 pmgrSleepCount:(unsigned int)a16 pmgrDeepSleepCount:(unsigned int)a17 deepSleepDuration:(unsigned int)a18
{
  v25.receiver = self;
  v25.super_class = PRGetPowerStatsResponse;
  result = [(PRGetPowerStatsResponse *)&v25 init];
  if (result)
  {
    result->_sleepDuration = a3;
    result->_wakeDuration = a4;
    result->_singleAntennaSearchDuration = a5;
    result->_dualAntennaSearchDuration = a6;
    result->_singleChainRxPacketDuration = a7;
    result->_dualChainRxPacketDuration = a8;
    result->_tripleChainRxPacketDuration = a9;
    result->_dspProcessingDuration = a10;
    result->_numPacketsReceived = a12;
    result->_numPacketsTransmitted = a13;
    result->_txDuration = a11;
    result->_sleepCount = a14;
    result->_wakeCount = a15;
    result->_pmgrSleepCount = a16;
    result->_pmgrDeepSleepCount = a17;
    result->_deepSleepDuration = a18;
  }

  return result;
}

- (PRGetPowerStatsResponse)initWithGetPowerStatsResponse:(const PowerStatsResponse *)a3
{
  v5.receiver = self;
  v5.super_class = PRGetPowerStatsResponse;
  result = [(PRGetPowerStatsResponse *)&v5 init];
  if (result)
  {
    result->_sleepDuration = a3->var0;
    result->_wakeDuration = a3->var1;
    result->_singleAntennaSearchDuration = a3->var2;
    result->_dualAntennaSearchDuration = a3->var3;
    result->_singleChainRxPacketDuration = a3->var4;
    result->_dualChainRxPacketDuration = a3->var5;
    result->_tripleChainRxPacketDuration = a3->var6;
    result->_dspProcessingDuration = a3->var7;
    result->_txDuration = a3->var8;
    result->_numPacketsReceived = a3->var9;
    result->_numPacketsTransmitted = a3->var10;
    result->_sleepCount = a3->var11;
    result->_wakeCount = a3->var12;
    result->_pmgrSleepCount = a3->var13;
    result->_pmgrDeepSleepCount = a3->var14;
    result->_deepSleepDuration = a3->var15;
  }

  return result;
}

- (PRGetPowerStatsResponse)initWithCoder:(id)a3
{
  v3 = a3;
  v22 = [v3 decodeInt32ForKey:@"SleepDuration"];
  v21 = [v3 decodeInt32ForKey:@"WakeDuration"];
  v20 = [v3 decodeInt32ForKey:@"SingleAntennaSearchDuration"];
  v19 = [v3 decodeInt32ForKey:@"DualAntennaSearchDuration"];
  v18 = [v3 decodeInt32ForKey:@"SingleChainRxPacketDuration"];
  v17 = [v3 decodeInt32ForKey:@"DualChainRxPacketDuration"];
  v4 = [v3 decodeInt32ForKey:@"TripleChainRxPacketDuration"];
  v5 = [v3 decodeInt32ForKey:@"DSPProcessingDuration"];
  v6 = [v3 decodeInt32ForKey:@"TxDuration"];
  v7 = [v3 decodeInt32ForKey:@"NumPacketsReceived"];
  v8 = [v3 decodeInt32ForKey:@"NumPacketsTransmitted"];
  v9 = [v3 decodeInt32ForKey:@"SleepCount"];
  v10 = [v3 decodeInt32ForKey:@"WakeCount"];
  v11 = [v3 decodeInt32ForKey:@"PMGRSleepCount"];
  v12 = [v3 decodeInt32ForKey:@"PMGRDeepSleepCount"];
  LODWORD(v16) = [v3 decodeInt32ForKey:@"DeepSleepDuration"];
  HIWORD(v15) = v8;
  WORD2(v15) = v7;
  LODWORD(v15) = v6;
  v13 = [PRGetPowerStatsResponse initWithSleepDuration:"initWithSleepDuration:wakeDuration:singleAntennaSearchDuration:dualAntennaSearchDuration:singleChainRxPacketDuration:dualChainRxPacketDuration:tripleChainRxPacketDuration:dspProcessingDuration:txDuration:numPacketsReceived:numPacketsTransmitted:sleepCount:wakeCount:pmgrSleepCount:pmgrDeepSleepCount:deepSleepDuration:" wakeDuration:v22 singleAntennaSearchDuration:v21 dualAntennaSearchDuration:v20 singleChainRxPacketDuration:v19 dualChainRxPacketDuration:v18 tripleChainRxPacketDuration:v17 dspProcessingDuration:__PAIR64__(v5 txDuration:v4) numPacketsReceived:v15 numPacketsTransmitted:__PAIR64__(v10 sleepCount:v9) wakeCount:__PAIR64__(v12 pmgrSleepCount:v11) pmgrDeepSleepCount:v16 deepSleepDuration:?];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:self->_sleepDuration forKey:@"SleepDuration"];
  [v4 encodeInt32:self->_wakeDuration forKey:@"WakeDuration"];
  [v4 encodeInt32:self->_singleAntennaSearchDuration forKey:@"SingleAntennaSearchDuration"];
  [v4 encodeInt32:self->_dualAntennaSearchDuration forKey:@"DualAntennaSearchDuration"];
  [v4 encodeInt32:self->_singleChainRxPacketDuration forKey:@"SingleChainRxPacketDuration"];
  [v4 encodeInt32:self->_dualChainRxPacketDuration forKey:@"DualChainRxPacketDuration"];
  [v4 encodeInt32:self->_tripleChainRxPacketDuration forKey:@"TripleChainRxPacketDuration"];
  [v4 encodeInt32:self->_dspProcessingDuration forKey:@"DSPProcessingDuration"];
  [v4 encodeInt32:self->_txDuration forKey:@"TxDuration"];
  [v4 encodeInt32:self->_numPacketsReceived forKey:@"NumPacketsReceived"];
  [v4 encodeInt32:self->_numPacketsTransmitted forKey:@"NumPacketsTransmitted"];
  [v4 encodeInt32:self->_sleepCount forKey:@"SleepCount"];
  [v4 encodeInt32:self->_wakeCount forKey:@"WakeCount"];
  [v4 encodeInt32:self->_pmgrSleepCount forKey:@"PMGRSleepCount"];
  [v4 encodeInt32:self->_pmgrDeepSleepCount forKey:@"PMGRDeepSleepCount"];
  [v4 encodeInt32:self->_deepSleepDuration forKey:@"DeepSleepDuration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRGetPowerStatsResponse alloc];
  LODWORD(v7) = self->_deepSleepDuration;
  LODWORD(v6) = self->_txDuration;
  HIDWORD(v6) = *&self->_numPacketsReceived;
  return [PRGetPowerStatsResponse initWithSleepDuration:v4 wakeDuration:"initWithSleepDuration:wakeDuration:singleAntennaSearchDuration:dualAntennaSearchDuration:singleChainRxPacketDuration:dualChainRxPacketDuration:tripleChainRxPacketDuration:dspProcessingDuration:txDuration:numPacketsReceived:numPacketsTransmitted:sleepCount:wakeCount:pmgrSleepCount:pmgrDeepSleepCount:deepSleepDuration:" singleAntennaSearchDuration:self->_sleepDuration dualAntennaSearchDuration:self->_wakeDuration singleChainRxPacketDuration:self->_singleAntennaSearchDuration dualChainRxPacketDuration:self->_dualAntennaSearchDuration tripleChainRxPacketDuration:self->_singleChainRxPacketDuration dspProcessingDuration:self->_dualChainRxPacketDuration txDuration:*&self->_tripleChainRxPacketDuration numPacketsReceived:v6 numPacketsTransmitted:*&self->_sleepCount sleepCount:*&self->_pmgrSleepCount wakeCount:v7 pmgrSleepCount:? pmgrDeepSleepCount:? deepSleepDuration:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 sleepDuration];
    if (v6 != [(PRGetPowerStatsResponse *)self sleepDuration])
    {
      goto LABEL_19;
    }

    v7 = [v5 wakeDuration];
    if (v7 != [(PRGetPowerStatsResponse *)self wakeDuration])
    {
      goto LABEL_19;
    }

    v8 = [v5 singleAntennaSearchDuration];
    if (v8 != [(PRGetPowerStatsResponse *)self singleAntennaSearchDuration])
    {
      goto LABEL_19;
    }

    v9 = [v5 dualAntennaSearchDuration];
    if (v9 != [(PRGetPowerStatsResponse *)self dualAntennaSearchDuration])
    {
      goto LABEL_19;
    }

    v10 = [v5 singleChainRxPacketDuration];
    if (v10 != [(PRGetPowerStatsResponse *)self singleChainRxPacketDuration])
    {
      goto LABEL_19;
    }

    v11 = [v5 dualChainRxPacketDuration];
    if (v11 != [(PRGetPowerStatsResponse *)self dualChainRxPacketDuration])
    {
      goto LABEL_19;
    }

    v12 = [v5 tripleChainRxPacketDuration];
    if (v12 != [(PRGetPowerStatsResponse *)self tripleChainRxPacketDuration])
    {
      goto LABEL_19;
    }

    v13 = [v5 dspProcessingDuration];
    if (v13 != [(PRGetPowerStatsResponse *)self dspProcessingDuration])
    {
      goto LABEL_19;
    }

    v14 = [v5 txDuration];
    if (v14 == -[PRGetPowerStatsResponse txDuration](self, "txDuration") && (v15 = [v5 numPacketsReceived], v15 == -[PRGetPowerStatsResponse numPacketsReceived](self, "numPacketsReceived")) && (v16 = objc_msgSend(v5, "numPacketsTransmitted"), v16 == -[PRGetPowerStatsResponse numPacketsTransmitted](self, "numPacketsTransmitted")) && (v17 = objc_msgSend(v5, "sleepCount"), v17 == -[PRGetPowerStatsResponse sleepCount](self, "sleepCount")) && (v18 = objc_msgSend(v5, "wakeCount"), v18 == -[PRGetPowerStatsResponse wakeCount](self, "wakeCount")) && (v19 = objc_msgSend(v5, "pmgrSleepCount"), v19 == -[PRGetPowerStatsResponse pmgrSleepCount](self, "pmgrSleepCount")) && (v20 = objc_msgSend(v5, "pmgrDeepSleepCount"), v20 == -[PRGetPowerStatsResponse pmgrDeepSleepCount](self, "pmgrDeepSleepCount")))
    {
      v21 = [v5 deepSleepDuration];
      v22 = v21 == [(PRGetPowerStatsResponse *)self deepSleepDuration];
    }

    else
    {
LABEL_19:
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end
@interface PRGetPowerStatsResponse
- (BOOL)isEqual:(id)equal;
- (PRGetPowerStatsResponse)initWithCoder:(id)coder;
- (PRGetPowerStatsResponse)initWithGetPowerStatsResponse:(const PowerStatsResponse *)response;
- (PRGetPowerStatsResponse)initWithSleepDuration:(unsigned int)duration wakeDuration:(unsigned int)wakeDuration singleAntennaSearchDuration:(unsigned int)searchDuration dualAntennaSearchDuration:(unsigned int)antennaSearchDuration singleChainRxPacketDuration:(unsigned int)packetDuration dualChainRxPacketDuration:(unsigned int)rxPacketDuration tripleChainRxPacketDuration:(unsigned int)chainRxPacketDuration dspProcessingDuration:(unsigned int)self0 txDuration:(unsigned int)self1 numPacketsReceived:(unsigned __int16)self2 numPacketsTransmitted:(unsigned __int16)self3 sleepCount:(unsigned int)self4 wakeCount:(unsigned int)self5 pmgrSleepCount:(unsigned int)self6 pmgrDeepSleepCount:(unsigned int)self7 deepSleepDuration:(unsigned int)self8;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRGetPowerStatsResponse

- (PRGetPowerStatsResponse)initWithSleepDuration:(unsigned int)duration wakeDuration:(unsigned int)wakeDuration singleAntennaSearchDuration:(unsigned int)searchDuration dualAntennaSearchDuration:(unsigned int)antennaSearchDuration singleChainRxPacketDuration:(unsigned int)packetDuration dualChainRxPacketDuration:(unsigned int)rxPacketDuration tripleChainRxPacketDuration:(unsigned int)chainRxPacketDuration dspProcessingDuration:(unsigned int)self0 txDuration:(unsigned int)self1 numPacketsReceived:(unsigned __int16)self2 numPacketsTransmitted:(unsigned __int16)self3 sleepCount:(unsigned int)self4 wakeCount:(unsigned int)self5 pmgrSleepCount:(unsigned int)self6 pmgrDeepSleepCount:(unsigned int)self7 deepSleepDuration:(unsigned int)self8
{
  v25.receiver = self;
  v25.super_class = PRGetPowerStatsResponse;
  result = [(PRGetPowerStatsResponse *)&v25 init];
  if (result)
  {
    result->_sleepDuration = duration;
    result->_wakeDuration = wakeDuration;
    result->_singleAntennaSearchDuration = searchDuration;
    result->_dualAntennaSearchDuration = antennaSearchDuration;
    result->_singleChainRxPacketDuration = packetDuration;
    result->_dualChainRxPacketDuration = rxPacketDuration;
    result->_tripleChainRxPacketDuration = chainRxPacketDuration;
    result->_dspProcessingDuration = processingDuration;
    result->_numPacketsReceived = received;
    result->_numPacketsTransmitted = transmitted;
    result->_txDuration = txDuration;
    result->_sleepCount = count;
    result->_wakeCount = wakeCount;
    result->_pmgrSleepCount = sleepCount;
    result->_pmgrDeepSleepCount = deepSleepCount;
    result->_deepSleepDuration = sleepDuration;
  }

  return result;
}

- (PRGetPowerStatsResponse)initWithGetPowerStatsResponse:(const PowerStatsResponse *)response
{
  v5.receiver = self;
  v5.super_class = PRGetPowerStatsResponse;
  result = [(PRGetPowerStatsResponse *)&v5 init];
  if (result)
  {
    result->_sleepDuration = response->var0;
    result->_wakeDuration = response->var1;
    result->_singleAntennaSearchDuration = response->var2;
    result->_dualAntennaSearchDuration = response->var3;
    result->_singleChainRxPacketDuration = response->var4;
    result->_dualChainRxPacketDuration = response->var5;
    result->_tripleChainRxPacketDuration = response->var6;
    result->_dspProcessingDuration = response->var7;
    result->_txDuration = response->var8;
    result->_numPacketsReceived = response->var9;
    result->_numPacketsTransmitted = response->var10;
    result->_sleepCount = response->var11;
    result->_wakeCount = response->var12;
    result->_pmgrSleepCount = response->var13;
    result->_pmgrDeepSleepCount = response->var14;
    result->_deepSleepDuration = response->var15;
  }

  return result;
}

- (PRGetPowerStatsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22 = [coderCopy decodeInt32ForKey:@"SleepDuration"];
  v21 = [coderCopy decodeInt32ForKey:@"WakeDuration"];
  v20 = [coderCopy decodeInt32ForKey:@"SingleAntennaSearchDuration"];
  v19 = [coderCopy decodeInt32ForKey:@"DualAntennaSearchDuration"];
  v18 = [coderCopy decodeInt32ForKey:@"SingleChainRxPacketDuration"];
  v17 = [coderCopy decodeInt32ForKey:@"DualChainRxPacketDuration"];
  v4 = [coderCopy decodeInt32ForKey:@"TripleChainRxPacketDuration"];
  v5 = [coderCopy decodeInt32ForKey:@"DSPProcessingDuration"];
  v6 = [coderCopy decodeInt32ForKey:@"TxDuration"];
  v7 = [coderCopy decodeInt32ForKey:@"NumPacketsReceived"];
  v8 = [coderCopy decodeInt32ForKey:@"NumPacketsTransmitted"];
  v9 = [coderCopy decodeInt32ForKey:@"SleepCount"];
  v10 = [coderCopy decodeInt32ForKey:@"WakeCount"];
  v11 = [coderCopy decodeInt32ForKey:@"PMGRSleepCount"];
  v12 = [coderCopy decodeInt32ForKey:@"PMGRDeepSleepCount"];
  LODWORD(v16) = [coderCopy decodeInt32ForKey:@"DeepSleepDuration"];
  HIWORD(v15) = v8;
  WORD2(v15) = v7;
  LODWORD(v15) = v6;
  v13 = [PRGetPowerStatsResponse initWithSleepDuration:"initWithSleepDuration:wakeDuration:singleAntennaSearchDuration:dualAntennaSearchDuration:singleChainRxPacketDuration:dualChainRxPacketDuration:tripleChainRxPacketDuration:dspProcessingDuration:txDuration:numPacketsReceived:numPacketsTransmitted:sleepCount:wakeCount:pmgrSleepCount:pmgrDeepSleepCount:deepSleepDuration:" wakeDuration:v22 singleAntennaSearchDuration:v21 dualAntennaSearchDuration:v20 singleChainRxPacketDuration:v19 dualChainRxPacketDuration:v18 tripleChainRxPacketDuration:v17 dspProcessingDuration:__PAIR64__(v5 txDuration:v4) numPacketsReceived:v15 numPacketsTransmitted:__PAIR64__(v10 sleepCount:v9) wakeCount:__PAIR64__(v12 pmgrSleepCount:v11) pmgrDeepSleepCount:v16 deepSleepDuration:?];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_sleepDuration forKey:@"SleepDuration"];
  [coderCopy encodeInt32:self->_wakeDuration forKey:@"WakeDuration"];
  [coderCopy encodeInt32:self->_singleAntennaSearchDuration forKey:@"SingleAntennaSearchDuration"];
  [coderCopy encodeInt32:self->_dualAntennaSearchDuration forKey:@"DualAntennaSearchDuration"];
  [coderCopy encodeInt32:self->_singleChainRxPacketDuration forKey:@"SingleChainRxPacketDuration"];
  [coderCopy encodeInt32:self->_dualChainRxPacketDuration forKey:@"DualChainRxPacketDuration"];
  [coderCopy encodeInt32:self->_tripleChainRxPacketDuration forKey:@"TripleChainRxPacketDuration"];
  [coderCopy encodeInt32:self->_dspProcessingDuration forKey:@"DSPProcessingDuration"];
  [coderCopy encodeInt32:self->_txDuration forKey:@"TxDuration"];
  [coderCopy encodeInt32:self->_numPacketsReceived forKey:@"NumPacketsReceived"];
  [coderCopy encodeInt32:self->_numPacketsTransmitted forKey:@"NumPacketsTransmitted"];
  [coderCopy encodeInt32:self->_sleepCount forKey:@"SleepCount"];
  [coderCopy encodeInt32:self->_wakeCount forKey:@"WakeCount"];
  [coderCopy encodeInt32:self->_pmgrSleepCount forKey:@"PMGRSleepCount"];
  [coderCopy encodeInt32:self->_pmgrDeepSleepCount forKey:@"PMGRDeepSleepCount"];
  [coderCopy encodeInt32:self->_deepSleepDuration forKey:@"DeepSleepDuration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRGetPowerStatsResponse alloc];
  LODWORD(v7) = self->_deepSleepDuration;
  LODWORD(v6) = self->_txDuration;
  HIDWORD(v6) = *&self->_numPacketsReceived;
  return [PRGetPowerStatsResponse initWithSleepDuration:v4 wakeDuration:"initWithSleepDuration:wakeDuration:singleAntennaSearchDuration:dualAntennaSearchDuration:singleChainRxPacketDuration:dualChainRxPacketDuration:tripleChainRxPacketDuration:dspProcessingDuration:txDuration:numPacketsReceived:numPacketsTransmitted:sleepCount:wakeCount:pmgrSleepCount:pmgrDeepSleepCount:deepSleepDuration:" singleAntennaSearchDuration:self->_sleepDuration dualAntennaSearchDuration:self->_wakeDuration singleChainRxPacketDuration:self->_singleAntennaSearchDuration dualChainRxPacketDuration:self->_dualAntennaSearchDuration tripleChainRxPacketDuration:self->_singleChainRxPacketDuration dspProcessingDuration:self->_dualChainRxPacketDuration txDuration:*&self->_tripleChainRxPacketDuration numPacketsReceived:v6 numPacketsTransmitted:*&self->_sleepCount sleepCount:*&self->_pmgrSleepCount wakeCount:v7 pmgrSleepCount:? pmgrDeepSleepCount:? deepSleepDuration:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sleepDuration = [v5 sleepDuration];
    if (sleepDuration != [(PRGetPowerStatsResponse *)self sleepDuration])
    {
      goto LABEL_19;
    }

    wakeDuration = [v5 wakeDuration];
    if (wakeDuration != [(PRGetPowerStatsResponse *)self wakeDuration])
    {
      goto LABEL_19;
    }

    singleAntennaSearchDuration = [v5 singleAntennaSearchDuration];
    if (singleAntennaSearchDuration != [(PRGetPowerStatsResponse *)self singleAntennaSearchDuration])
    {
      goto LABEL_19;
    }

    dualAntennaSearchDuration = [v5 dualAntennaSearchDuration];
    if (dualAntennaSearchDuration != [(PRGetPowerStatsResponse *)self dualAntennaSearchDuration])
    {
      goto LABEL_19;
    }

    singleChainRxPacketDuration = [v5 singleChainRxPacketDuration];
    if (singleChainRxPacketDuration != [(PRGetPowerStatsResponse *)self singleChainRxPacketDuration])
    {
      goto LABEL_19;
    }

    dualChainRxPacketDuration = [v5 dualChainRxPacketDuration];
    if (dualChainRxPacketDuration != [(PRGetPowerStatsResponse *)self dualChainRxPacketDuration])
    {
      goto LABEL_19;
    }

    tripleChainRxPacketDuration = [v5 tripleChainRxPacketDuration];
    if (tripleChainRxPacketDuration != [(PRGetPowerStatsResponse *)self tripleChainRxPacketDuration])
    {
      goto LABEL_19;
    }

    dspProcessingDuration = [v5 dspProcessingDuration];
    if (dspProcessingDuration != [(PRGetPowerStatsResponse *)self dspProcessingDuration])
    {
      goto LABEL_19;
    }

    txDuration = [v5 txDuration];
    if (txDuration == -[PRGetPowerStatsResponse txDuration](self, "txDuration") && (v15 = [v5 numPacketsReceived], v15 == -[PRGetPowerStatsResponse numPacketsReceived](self, "numPacketsReceived")) && (v16 = objc_msgSend(v5, "numPacketsTransmitted"), v16 == -[PRGetPowerStatsResponse numPacketsTransmitted](self, "numPacketsTransmitted")) && (v17 = objc_msgSend(v5, "sleepCount"), v17 == -[PRGetPowerStatsResponse sleepCount](self, "sleepCount")) && (v18 = objc_msgSend(v5, "wakeCount"), v18 == -[PRGetPowerStatsResponse wakeCount](self, "wakeCount")) && (v19 = objc_msgSend(v5, "pmgrSleepCount"), v19 == -[PRGetPowerStatsResponse pmgrSleepCount](self, "pmgrSleepCount")) && (v20 = objc_msgSend(v5, "pmgrDeepSleepCount"), v20 == -[PRGetPowerStatsResponse pmgrDeepSleepCount](self, "pmgrDeepSleepCount")))
    {
      deepSleepDuration = [v5 deepSleepDuration];
      v22 = deepSleepDuration == [(PRGetPowerStatsResponse *)self deepSleepDuration];
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
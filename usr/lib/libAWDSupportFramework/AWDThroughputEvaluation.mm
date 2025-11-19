@interface AWDThroughputEvaluation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasActualHighBandwidth:(BOOL)a3;
- (void)setHasActualLowBandwidth:(BOOL)a3;
- (void)setHasBadDecisionsCounterVIBE:(BOOL)a3;
- (void)setHasBadDecisionsCounterVO:(BOOL)a3;
- (void)setHasBcnPer:(BOOL)a3;
- (void)setHasBtRssi:(BOOL)a3;
- (void)setHasBtWiFiCoexState:(BOOL)a3;
- (void)setHasBufferInterval:(BOOL)a3;
- (void)setHasCca:(BOOL)a3;
- (void)setHasCellARFCN:(BOOL)a3;
- (void)setHasCellBandInfo:(BOOL)a3;
- (void)setHasCellChannelBW:(BOOL)a3;
- (void)setHasCellEstimatedBW:(BOOL)a3;
- (void)setHasCellLteRSRQ:(BOOL)a3;
- (void)setHasCellModelConfidenceLevel:(BOOL)a3;
- (void)setHasCellModelVersion:(BOOL)a3;
- (void)setHasCellNrRSRP:(BOOL)a3;
- (void)setHasCellNrRSRQ:(BOOL)a3;
- (void)setHasCellNrSNR:(BOOL)a3;
- (void)setHasCellNsaEnabled:(BOOL)a3;
- (void)setHasCellRsrp:(BOOL)a3;
- (void)setHasCellSinr:(BOOL)a3;
- (void)setHasCmDataSentCount:(BOOL)a3;
- (void)setHasCmDataSentDuration:(BOOL)a3;
- (void)setHasCmEstimatedBandwidth:(BOOL)a3;
- (void)setHasColdStartType:(BOOL)a3;
- (void)setHasDecisionVIBE:(BOOL)a3;
- (void)setHasDecisionVO:(BOOL)a3;
- (void)setHasDeviation:(BOOL)a3;
- (void)setHasDevicePointOfInterest:(BOOL)a3;
- (void)setHasEstimatedHighBandwidth:(BOOL)a3;
- (void)setHasEstimatedLowBandwidth:(BOOL)a3;
- (void)setHasEstimatedSpeed:(BOOL)a3;
- (void)setHasEvent:(BOOL)a3;
- (void)setHasExpectedThroughputVIBE:(BOOL)a3;
- (void)setHasExpectedThroughputVO:(BOOL)a3;
- (void)setHasGoodDecisionsCounterVIBE:(BOOL)a3;
- (void)setHasGoodDecisionsCounterVO:(BOOL)a3;
- (void)setHasInvalidDecisionsCounterVIBE:(BOOL)a3;
- (void)setHasInvalidDecisionsCounterVO:(BOOL)a3;
- (void)setHasIsFR1:(BOOL)a3;
- (void)setHasIsWfiCaptive:(BOOL)a3;
- (void)setHasLqmScoreBT:(BOOL)a3;
- (void)setHasLqmScoreWifi:(BOOL)a3;
- (void)setHasLqmScorecellular:(BOOL)a3;
- (void)setHasLteMaxScheduledMimoLayersInACell:(BOOL)a3;
- (void)setHasMaxDLCAConfigured:(BOOL)a3;
- (void)setHasMaxOfActualLowBandwidth:(BOOL)a3;
- (void)setHasMaxULCAConfigured:(BOOL)a3;
- (void)setHasMlPredictedCellBW:(BOOL)a3;
- (void)setHasMlPredictedWiFiBW:(BOOL)a3;
- (void)setHasMovingAvgHighBandwidth:(BOOL)a3;
- (void)setHasMovingAvgLowBandwidth:(BOOL)a3;
- (void)setHasNrConfiguredBw:(BOOL)a3;
- (void)setHasNrMaxDlModulation:(BOOL)a3;
- (void)setHasNrTotalScheduledMimoLayers:(BOOL)a3;
- (void)setHasPActualLowBandwidth:(BOOL)a3;
- (void)setHasPacketLifetimeVIBE:(BOOL)a3;
- (void)setHasPacketLossRateVIBE:(BOOL)a3;
- (void)setHasPhyRate:(BOOL)a3;
- (void)setHasPkgLifeTimeVO:(BOOL)a3;
- (void)setHasPktLifeTimeVO:(BOOL)a3;
- (void)setHasPktLossRateVO:(BOOL)a3;
- (void)setHasQbssLoad:(BOOL)a3;
- (void)setHasRatioDupeBytes:(BOOL)a3;
- (void)setHasRrcState:(BOOL)a3;
- (void)setHasRxRetransmissionRate:(BOOL)a3;
- (void)setHasRxRetry:(BOOL)a3;
- (void)setHasTcpRTTAvg:(BOOL)a3;
- (void)setHasTcpRTTmin:(BOOL)a3;
- (void)setHasTcpRTTvar:(BOOL)a3;
- (void)setHasTotalConfiguredBw:(BOOL)a3;
- (void)setHasTotalConfiguredMimoLayers:(BOOL)a3;
- (void)setHasTxRetransmissionRate:(BOOL)a3;
- (void)setHasTxber:(BOOL)a3;
- (void)setHasVideoStreamingStallTime:(BOOL)a3;
- (void)setHasWeightedAveragePhyrateRx:(BOOL)a3;
- (void)setHasWeightedAveragePhyrateTx:(BOOL)a3;
- (void)setHasWeightedAverageRssi:(BOOL)a3;
- (void)setHasWeightedAverageSnr:(BOOL)a3;
- (void)setHasWifChannelBW:(BOOL)a3;
- (void)setHasWifChannelType:(BOOL)a3;
- (void)setHasWifiCapability:(BOOL)a3;
- (void)setHasWifiModelConfidenceLevel:(BOOL)a3;
- (void)setHasWifiModelVersion:(BOOL)a3;
- (void)setHasWifiSinr:(BOOL)a3;
- (void)setHasWifichannel:(BOOL)a3;
- (void)setHasWifiguardinterval:(BOOL)a3;
- (void)setHasWifilowDataMode:(BOOL)a3;
- (void)setHasWifimcsindex:(BOOL)a3;
- (void)setHasWifinumberOfSpatialStreams:(BOOL)a3;
- (void)setHasWrmRecommendedRAT:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDThroughputEvaluation

- (void)dealloc
{
  [(AWDThroughputEvaluation *)self setRatType:0];
  [(AWDThroughputEvaluation *)self setAppType:0];
  v3.receiver = self;
  v3.super_class = AWDThroughputEvaluation;
  [(AWDThroughputEvaluation *)&v3 dealloc];
}

- (void)setHasEvent:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasBufferInterval:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasPhyRate:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasQbssLoad:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCca:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasBcnPer:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasExpectedThroughputVO:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasWifiSinr:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFDFFFFF | v3;
}

- (void)setHasPktLifeTimeVO:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasPktLossRateVO:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasLqmScoreWifi:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasPacketLossRateVIBE:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasExpectedThroughputVIBE:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasPacketLifetimeVIBE:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasBadDecisionsCounterVO:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasGoodDecisionsCounterVO:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasInvalidDecisionsCounterVO:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasBadDecisionsCounterVIBE:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasGoodDecisionsCounterVIBE:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasInvalidDecisionsCounterVIBE:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasLqmScorecellular:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasCellRsrp:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasCellSinr:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasBtRssi:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasTxRetransmissionRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFDFF | v3;
}

- (void)setHasRxRetransmissionRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFFB | v3;
}

- (void)setHasLqmScoreBT:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasWrmRecommendedRAT:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7FFFFFF | v3;
}

- (void)setHasActualLowBandwidth:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasActualHighBandwidth:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasEstimatedLowBandwidth:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasEstimatedHighBandwidth:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasMovingAvgLowBandwidth:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasMovingAvgHighBandwidth:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasDeviation:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasMaxOfActualLowBandwidth:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasPkgLifeTimeVO:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasDecisionVO:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasDecisionVIBE:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasVideoStreamingStallTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFF7FF | v3;
}

- (void)setHasTxber:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFBFF | v3;
}

- (void)setHasRxRetry:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFF7 | v3;
}

- (void)setHasWeightedAveragePhyrateTx:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFDFFF | v3;
}

- (void)setHasWeightedAveragePhyrateRx:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFEFFF | v3;
}

- (void)setHasWeightedAverageRssi:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFBFFF | v3;
}

- (void)setHasWeightedAverageSnr:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFF7FFF | v3;
}

- (void)setHasCmDataSentCount:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasCmDataSentDuration:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasCmEstimatedBandwidth:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasDevicePointOfInterest:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasRrcState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFFD | v3;
}

- (void)setHasMlPredictedWiFiBW:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasWifiModelVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFEFFFFF | v3;
}

- (void)setHasWifiModelConfidenceLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFF7FFFF | v3;
}

- (void)setHasMlPredictedCellBW:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasCellModelVersion:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasCellModelConfidenceLevel:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasCellEstimatedBW:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasTcpRTTAvg:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFEF | v3;
}

- (void)setHasTcpRTTmin:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFDF | v3;
}

- (void)setHasTcpRTTvar:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFFBF | v3;
}

- (void)setHasRatioDupeBytes:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasCellARFCN:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasCellChannelBW:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasCellBandInfo:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasMaxDLCAConfigured:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasMaxULCAConfigured:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasWifChannelBW:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFEFFFF | v3;
}

- (void)setHasWifChannelType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFDFFFF | v3;
}

- (void)setHasWifiCapability:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFBFFFF | v3;
}

- (void)setHasEstimatedSpeed:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasCellNsaEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEFFFFFFF | v3;
}

- (void)setHasIsFR1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDFFFFFFF | v3;
}

- (void)setHasCellNrRSRP:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasCellNrRSRQ:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasCellNrSNR:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasCellLteRSRQ:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasPActualLowBandwidth:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasWifimcsindex:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFDFFFFFF | v3;
}

- (void)setHasWifiguardinterval:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFF7FFFFF | v3;
}

- (void)setHasWifinumberOfSpatialStreams:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFBFFFFFF | v3;
}

- (void)setHasWifichannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFBFFFFF | v3;
}

- (void)setHasWifilowDataMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFEFFFFFF | v3;
}

- (void)setHasIsWfiCaptive:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasBtWiFiCoexState:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasTotalConfiguredBw:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFF7F | v3;
}

- (void)setHasNrConfiguredBw:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasNrTotalScheduledMimoLayers:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTotalConfiguredMimoLayers:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFFFEFF | v3;
}

- (void)setHasLteMaxScheduledMimoLayersInACell:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasNrMaxDlModulation:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasColdStartType:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDThroughputEvaluation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDThroughputEvaluation description](&v3, sel_description), -[AWDThroughputEvaluation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x200000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_event), @"event"}];
    has = *p_has;
    if ((*p_has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_135;
    }
  }

  else if ((has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bufferInterval), @"buffer_interval"}];
  has = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x400000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_136;
  }

LABEL_135:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiRssi), @"wifi_rssi"}];
  has = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_137;
  }

LABEL_136:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyRate), @"phy_rate"}];
  has = *p_has;
  if ((*p_has & 0x4000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_138;
  }

LABEL_137:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_qbssLoad), @"qbss_load"}];
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_139;
  }

LABEL_138:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cca), @"cca"}];
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_139:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bcnPer), @"bcnPer"}];
  if ((*p_has & 0x800000000) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expectedThroughputVO), @"expectedThroughputVO"}];
  }

LABEL_10:
  if ((*(&self->_has + 10) & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiSinr), @"wifiSinr"}];
  }

  v6 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pktLifeTimeVO), @"pktLifeTimeVO"}];
    v6 = *p_has;
    if ((*p_has & 0x2000000000000000) == 0)
    {
LABEL_14:
      if ((v6 & 0x40000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_143;
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
    goto LABEL_14;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pktLossRateVO), @"pktLossRateVO"}];
  v6 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v6 & 0x200000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_144;
  }

LABEL_143:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lqmScoreWifi), @"lqmScoreWifi"}];
  v6 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_145;
  }

LABEL_144:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_packetLossRateVIBE), @"packetLossRateVI_BE"}];
  v6 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x100000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_146;
  }

LABEL_145:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expectedThroughputVIBE), @"expectedThroughputVI_BE"}];
  v6 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_18:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_147;
  }

LABEL_146:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_packetLifetimeVIBE), @"packetLifetimeVI_BE"}];
  v6 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_19:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_148;
  }

LABEL_147:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_badDecisionsCounterVO), @"badDecisionsCounterVO"}];
  v6 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_149;
  }

LABEL_148:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_goodDecisionsCounterVO), @"goodDecisionsCounterVO"}];
  v6 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_21:
    if ((v6 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_150;
  }

LABEL_149:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_invalidDecisionsCounterVO), @"invalidDecisionsCounterVO"}];
  v6 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_151;
  }

LABEL_150:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_badDecisionsCounterVIBE), @"badDecisionsCounterVI_BE"}];
  v6 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_23:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_152;
  }

LABEL_151:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_goodDecisionsCounterVIBE), @"goodDecisionsCounterVI_BE"}];
  v6 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x80000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_152:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_invalidDecisionsCounterVIBE), @"invalidDecisionsCounterVI_BE"}];
  if ((*p_has & 0x80000000000) != 0)
  {
LABEL_25:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lqmScorecellular), @"lqmScorecellular"}];
  }

LABEL_26:
  ratType = self->_ratType;
  if (ratType)
  {
    [v3 setObject:ratType forKey:@"ratType"];
  }

  v8 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellRsrp), @"cellRsrp"}];
    v8 = *p_has;
    if ((*p_has & 0x200000) == 0)
    {
LABEL_30:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v8 & 0x200000) == 0)
  {
    goto LABEL_30;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellSinr), @"cellSinr"}];
  if ((*p_has & 0x40) != 0)
  {
LABEL_31:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_btRssi), @"btRssi"}];
  }

LABEL_32:
  v9 = *(&self->_has + 2);
  if ((v9 & 0x200) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txRetransmissionRate), @"txRetransmissionRate"}];
    v9 = *(&self->_has + 2);
  }

  if ((v9 & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxRetransmissionRate), @"rxRetransmissionRate"}];
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lqmScoreBT), @"lqmScoreBT"}];
  }

  if ((*(&self->_has + 11) & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wrmRecommendedRAT), @"wrm_recommended_RAT"}];
  }

  v10 = *p_has;
  if ((*p_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_actualLowBandwidth), @"actual_low_bandwidth"}];
    v10 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_42:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_159;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_42;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_actualHighBandwidth), @"actual_high_bandwidth"}];
  v10 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_43:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_160;
  }

LABEL_159:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_estimatedLowBandwidth), @"estimated_low_bandwidth"}];
  v10 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_44:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

LABEL_160:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_estimatedHighBandwidth), @"estimated_high_bandwidth"}];
  v10 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_45:
    if ((v10 & 0x4000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_162;
  }

LABEL_161:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_movingAvgLowBandwidth), @"moving_avg_low_bandwidth"}];
  v10 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_163;
  }

LABEL_162:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_movingAvgHighBandwidth), @"moving_avg_high_bandwidth"}];
  v10 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_164;
  }

LABEL_163:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deviation), @"deviation"}];
  v10 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x800000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_165;
  }

LABEL_164:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxOfActualLowBandwidth), @"max_of_actual_low_bandwidth"}];
  v10 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_49:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_166;
  }

LABEL_165:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pkgLifeTimeVO), @"pkgLifeTimeVO"}];
  v10 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_166:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_decisionVO), @"decisionVO"}];
  if ((*p_has & 0x4000000) != 0)
  {
LABEL_51:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_decisionVIBE), @"decisionVIBE"}];
  }

LABEL_52:
  v11 = *(&self->_has + 2);
  if ((v11 & 0x800) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_videoStreamingStallTime), @"videoStreamingStallTime"}];
    v11 = *(&self->_has + 2);
    if ((v11 & 0x400) == 0)
    {
LABEL_54:
      if ((v11 & 8) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_170;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_54;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txber), @"txber"}];
  v11 = *(&self->_has + 2);
  if ((v11 & 8) == 0)
  {
LABEL_55:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxRetry), @"rx_retry"}];
  v11 = *(&self->_has + 2);
  if ((v11 & 0x2000) == 0)
  {
LABEL_56:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_172;
  }

LABEL_171:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_weightedAveragePhyrateTx), @"weighted_average_phyrate_tx"}];
  v11 = *(&self->_has + 2);
  if ((v11 & 0x1000) == 0)
  {
LABEL_57:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_173;
  }

LABEL_172:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_weightedAveragePhyrateRx), @"weighted_average_phyrate_rx"}];
  v11 = *(&self->_has + 2);
  if ((v11 & 0x4000) == 0)
  {
LABEL_58:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_173:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_weightedAverageRssi), @"weighted_average_rssi"}];
  if ((*(&self->_has + 2) & 0x8000) != 0)
  {
LABEL_59:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_weightedAverageSnr), @"weighted_average_snr"}];
  }

LABEL_60:
  v12 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cmDataSentCount), @"cm_data_sent_count"}];
    v12 = *p_has;
    if ((*p_has & 0x800000) == 0)
    {
LABEL_62:
      if ((v12 & 0x1000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_177;
    }
  }

  else if ((v12 & 0x800000) == 0)
  {
    goto LABEL_62;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cmDataSentDuration), @"cm_data_sent_duration"}];
  v12 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_63:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_177:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cmEstimatedBandwidth), @"cm_estimated_bandwidth"}];
  if ((*p_has & 0x20000000) != 0)
  {
LABEL_64:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_devicePointOfInterest), @"device_point_of_interest"}];
  }

LABEL_65:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rrcState), @"rrcState"}];
  }

  if ((*(&self->_has + 6) & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mlPredictedWiFiBW), @"mlPredictedWiFiBW"}];
  }

  v13 = *(&self->_has + 2);
  if ((v13 & 0x100000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiModelVersion), @"wifiModelVersion"}];
    v13 = *(&self->_has + 2);
  }

  if ((v13 & 0x80000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiModelConfidenceLevel), @"wifiModelConfidenceLevel"}];
  }

  v14 = *p_has;
  if ((*p_has & 0x1000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mlPredictedCellBW), @"mlPredictedCellBW"}];
    v14 = *p_has;
    if ((*p_has & 0x10000) == 0)
    {
LABEL_75:
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_181;
    }
  }

  else if ((v14 & 0x10000) == 0)
  {
    goto LABEL_75;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellModelVersion), @"cellModelVersion"}];
  v14 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_76:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_181:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellModelConfidenceLevel), @"cellModelConfidenceLevel"}];
  if ((*p_has & 0x2000) != 0)
  {
LABEL_77:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellEstimatedBW), @"cellEstimatedBW"}];
  }

LABEL_78:
  appType = self->_appType;
  if (appType)
  {
    [v3 setObject:appType forKey:@"appType"];
  }

  v16 = *(&self->_has + 2);
  if ((v16 & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRTTAvg), @"tcpRTTAvg"}];
    v16 = *(&self->_has + 2);
    if ((v16 & 0x20) == 0)
    {
LABEL_82:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_82;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRTTmin), @"tcpRTTmin"}];
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
LABEL_83:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpRTTvar), @"tcpRTTvar"}];
  }

LABEL_84:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ratioDupeBytes), @"ratioDupeBytes"}];
  }

  if (*(&self->_has + 8))
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ratioOOBBytes), @"ratioOOBBytes"}];
  }

  v17 = *p_has;
  if ((*p_has & 0x400) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellARFCN), @"cellARFCN"}];
    v17 = *p_has;
    if ((*p_has & 0x1000) == 0)
    {
LABEL_90:
      if ((v17 & 0x800) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_188;
    }
  }

  else if ((v17 & 0x1000) == 0)
  {
    goto LABEL_90;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellChannelBW), @"cellChannelBW"}];
  v17 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_91:
    if ((v17 & 0x200000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_189;
  }

LABEL_188:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellBandInfo), @"cellBandInfo"}];
  v17 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_92:
    if ((v17 & 0x800000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_189:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxDLCAConfigured), @"maxDLCAConfigured"}];
  if ((*p_has & 0x800000000000) != 0)
  {
LABEL_93:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxULCAConfigured), @"maxULCAConfigured"}];
  }

LABEL_94:
  v18 = *(&self->_has + 2);
  if ((v18 & 0x10000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifChannelBW), @"wifChannelBW"}];
    v18 = *(&self->_has + 2);
    if ((v18 & 0x20000) == 0)
    {
LABEL_96:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_96;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifChannelType), @"wifChannelType"}];
  if ((*(&self->_has + 2) & 0x40000) != 0)
  {
LABEL_97:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiCapability), @"wifiCapability"}];
  }

LABEL_98:
  if (*(&self->_has + 4))
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_estimatedSpeed), @"estimatedSpeed"}];
  }

  v19 = *(&self->_has + 2);
  if ((v19 & 0x10000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cellNsaEnabled), @"cellNsaEnabled"}];
    v19 = *(&self->_has + 2);
  }

  if ((v19 & 0x20000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isFR1), @"isFR1"}];
  }

  v20 = *p_has;
  if ((*p_has & 0x20000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellNrRSRP), @"cellNrRSRP"}];
    v20 = *p_has;
    if ((*p_has & 0x40000) == 0)
    {
LABEL_106:
      if ((v20 & 0x80000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_196;
    }
  }

  else if ((v20 & 0x40000) == 0)
  {
    goto LABEL_106;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellNrRSRQ), @"cellNrRSRQ"}];
  v20 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_107:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_197;
  }

LABEL_196:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellNrSNR), @"cellNrSNR"}];
  v20 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_108:
    if ((v20 & 0x80000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_197:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellLteRSRQ), @"cellLteRSRQ"}];
  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_109:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_pActualLowBandwidth), @"pActualLowBandwidth"}];
  }

LABEL_110:
  v21 = *(&self->_has + 2);
  if ((v21 & 0x2000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifimcsindex), @"wifimcsindex"}];
    v21 = *(&self->_has + 2);
    if ((v21 & 0x800000) == 0)
    {
LABEL_112:
      if ((v21 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_201;
    }
  }

  else if ((v21 & 0x800000) == 0)
  {
    goto LABEL_112;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiguardinterval), @"wifiguardinterval"}];
  v21 = *(&self->_has + 2);
  if ((v21 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_202;
  }

LABEL_201:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifinumberOfSpatialStreams), @"wifinumberOfSpatialStreams"}];
  v21 = *(&self->_has + 2);
  if ((v21 & 0x400000) == 0)
  {
LABEL_114:
    if ((v21 & 0x1000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_202:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifichannel), @"wifichannel"}];
  if ((*(&self->_has + 2) & 0x1000000) != 0)
  {
LABEL_115:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifilowDataMode), @"wifilowDataMode"}];
  }

LABEL_116:
  v22 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_isWfiCaptive), @"isWfiCaptive"}];
    v22 = *p_has;
  }

  if ((v22 & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_btWiFiCoexState), @"btWiFiCoexState"}];
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalConfiguredBw), @"total_configured_bw"}];
  }

  v23 = *p_has;
  if ((*p_has & 0x10000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nrConfiguredBw), @"nr_configured_bw"}];
    v23 = *p_has;
  }

  if ((v23 & 0x40000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nrTotalScheduledMimoLayers), @"nr_total_scheduled_mimo_layers"}];
  }

  if (*(&self->_has + 9))
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalConfiguredMimoLayers), @"total_configured_mimo_layers"}];
  }

  v24 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
    if ((v24 & 0x20000000000000) == 0)
    {
      goto LABEL_130;
    }

LABEL_205:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nrMaxDlModulation), @"nr_max_dl_modulation"}];
    if ((*p_has & 0x2000000) == 0)
    {
      return v3;
    }

    goto LABEL_131;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lteMaxScheduledMimoLayersInACell), @"lte_max_scheduled_mimo_layers_in_a_cell"}];
  v24 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_130:
  if ((v24 & 0x2000000) != 0)
  {
LABEL_131:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coldStartType), @"cold_start_type"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x200000000) != 0)
  {
    event = self->_event;
    PBDataWriterWriteUint32Field();
    has = *p_has;
    if ((*p_has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_134;
    }
  }

  else if ((has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  bufferInterval = self->_bufferInterval;
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x400000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_135;
  }

LABEL_134:
  wifiRssi = self->_wifiRssi;
  PBDataWriterWriteSint64Field();
  has = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_136;
  }

LABEL_135:
  phyRate = self->_phyRate;
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x4000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_137;
  }

LABEL_136:
  qbssLoad = self->_qbssLoad;
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_138;
  }

LABEL_137:
  cca = self->_cca;
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_138:
  bcnPer = self->_bcnPer;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x800000000) != 0)
  {
LABEL_9:
    expectedThroughputVO = self->_expectedThroughputVO;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
  if ((*(p_has + 10) & 0x20) != 0)
  {
    wifiSinr = self->_wifiSinr;
    PBDataWriterWriteSint32Field();
  }

  v8 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    pktLifeTimeVO = self->_pktLifeTimeVO;
    PBDataWriterWriteUint32Field();
    v8 = *p_has;
    if ((*p_has & 0x2000000000000000) == 0)
    {
LABEL_14:
      if ((v8 & 0x40000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_142;
    }
  }

  else if ((v8 & 0x2000000000000000) == 0)
  {
    goto LABEL_14;
  }

  pktLossRateVO = self->_pktLossRateVO;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_143;
  }

LABEL_142:
  lqmScoreWifi = self->_lqmScoreWifi;
  PBDataWriterWriteInt32Field();
  v8 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_144;
  }

LABEL_143:
  packetLossRateVIBE = self->_packetLossRateVIBE;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_17:
    if ((v8 & 0x100000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_145;
  }

LABEL_144:
  expectedThroughputVIBE = self->_expectedThroughputVIBE;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_18:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_146;
  }

LABEL_145:
  packetLifetimeVIBE = self->_packetLifetimeVIBE;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_19:
    if ((v8 & 0x2000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_147;
  }

LABEL_146:
  badDecisionsCounterVO = self->_badDecisionsCounterVO;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_148;
  }

LABEL_147:
  goodDecisionsCounterVO = self->_goodDecisionsCounterVO;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_21:
    if ((v8 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_149;
  }

LABEL_148:
  invalidDecisionsCounterVO = self->_invalidDecisionsCounterVO;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_22:
    if ((v8 & 0x1000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_150;
  }

LABEL_149:
  badDecisionsCounterVIBE = self->_badDecisionsCounterVIBE;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_23:
    if ((v8 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_151;
  }

LABEL_150:
  goodDecisionsCounterVIBE = self->_goodDecisionsCounterVIBE;
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v8 & 0x80000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_151:
  invalidDecisionsCounterVIBE = self->_invalidDecisionsCounterVIBE;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x80000000000) != 0)
  {
LABEL_25:
    lqmScorecellular = self->_lqmScorecellular;
    PBDataWriterWriteInt32Field();
  }

LABEL_26:
  if (self->_ratType)
  {
    PBDataWriterWriteStringField();
  }

  v10 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    cellRsrp = self->_cellRsrp;
    PBDataWriterWriteSint32Field();
    v10 = *p_has;
    if ((*p_has & 0x200000) == 0)
    {
LABEL_30:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v10 & 0x200000) == 0)
  {
    goto LABEL_30;
  }

  cellSinr = self->_cellSinr;
  PBDataWriterWriteSint32Field();
  if ((*p_has & 0x40) != 0)
  {
LABEL_31:
    btRssi = self->_btRssi;
    PBDataWriterWriteSint32Field();
  }

LABEL_32:
  v12 = *(p_has + 2);
  if ((v12 & 0x200) != 0)
  {
    txRetransmissionRate = self->_txRetransmissionRate;
    PBDataWriterWriteUint32Field();
    v12 = *(p_has + 2);
  }

  if ((v12 & 4) != 0)
  {
    rxRetransmissionRate = self->_rxRetransmissionRate;
    PBDataWriterWriteUint32Field();
  }

  if ((*(p_has + 5) & 2) != 0)
  {
    lqmScoreBT = self->_lqmScoreBT;
    PBDataWriterWriteSint32Field();
  }

  if ((*(p_has + 11) & 8) != 0)
  {
    wrmRecommendedRAT = self->_wrmRecommendedRAT;
    PBDataWriterWriteUint32Field();
  }

  v17 = *p_has;
  if ((*p_has & 4) != 0)
  {
    actualLowBandwidth = self->_actualLowBandwidth;
    PBDataWriterWriteUint32Field();
    v17 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_42:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_158;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_42;
  }

  actualHighBandwidth = self->_actualHighBandwidth;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_43:
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_159;
  }

LABEL_158:
  estimatedLowBandwidth = self->_estimatedLowBandwidth;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_44:
    if ((v17 & 0x8000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_160;
  }

LABEL_159:
  estimatedHighBandwidth = self->_estimatedHighBandwidth;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_45:
    if ((v17 & 0x4000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_161;
  }

LABEL_160:
  movingAvgLowBandwidth = self->_movingAvgLowBandwidth;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_46:
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_162;
  }

LABEL_161:
  movingAvgHighBandwidth = self->_movingAvgHighBandwidth;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_47:
    if ((v17 & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_163;
  }

LABEL_162:
  deviation = self->_deviation;
  PBDataWriterWriteSint32Field();
  v17 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_48:
    if ((v17 & 0x800000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_164;
  }

LABEL_163:
  maxOfActualLowBandwidth = self->_maxOfActualLowBandwidth;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_49:
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_165;
  }

LABEL_164:
  pkgLifeTimeVO = self->_pkgLifeTimeVO;
  PBDataWriterWriteUint32Field();
  v17 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_50:
    if ((v17 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_165:
  decisionVO = self->_decisionVO;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x4000000) != 0)
  {
LABEL_51:
    decisionVIBE = self->_decisionVIBE;
    PBDataWriterWriteUint32Field();
  }

LABEL_52:
  v19 = *(p_has + 2);
  if ((v19 & 0x800) != 0)
  {
    videoStreamingStallTime = self->_videoStreamingStallTime;
    PBDataWriterWriteUint32Field();
    v19 = *(p_has + 2);
    if ((v19 & 0x400) == 0)
    {
LABEL_54:
      if ((v19 & 8) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_169;
    }
  }

  else if ((v19 & 0x400) == 0)
  {
    goto LABEL_54;
  }

  txber = self->_txber;
  PBDataWriterWriteUint32Field();
  v19 = *(p_has + 2);
  if ((v19 & 8) == 0)
  {
LABEL_55:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_170;
  }

LABEL_169:
  rxRetry = self->_rxRetry;
  PBDataWriterWriteUint32Field();
  v19 = *(p_has + 2);
  if ((v19 & 0x2000) == 0)
  {
LABEL_56:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_171;
  }

LABEL_170:
  weightedAveragePhyrateTx = self->_weightedAveragePhyrateTx;
  PBDataWriterWriteUint32Field();
  v19 = *(p_has + 2);
  if ((v19 & 0x1000) == 0)
  {
LABEL_57:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_172;
  }

LABEL_171:
  weightedAveragePhyrateRx = self->_weightedAveragePhyrateRx;
  PBDataWriterWriteUint32Field();
  v19 = *(p_has + 2);
  if ((v19 & 0x4000) == 0)
  {
LABEL_58:
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_172:
  weightedAverageRssi = self->_weightedAverageRssi;
  PBDataWriterWriteUint32Field();
  if ((*(p_has + 2) & 0x8000) != 0)
  {
LABEL_59:
    weightedAverageSnr = self->_weightedAverageSnr;
    PBDataWriterWriteUint32Field();
  }

LABEL_60:
  v21 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    cmDataSentCount = self->_cmDataSentCount;
    PBDataWriterWriteUint32Field();
    v21 = *p_has;
    if ((*p_has & 0x800000) == 0)
    {
LABEL_62:
      if ((v21 & 0x1000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_176;
    }
  }

  else if ((v21 & 0x800000) == 0)
  {
    goto LABEL_62;
  }

  cmDataSentDuration = self->_cmDataSentDuration;
  PBDataWriterWriteUint32Field();
  v21 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_63:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_176:
  cmEstimatedBandwidth = self->_cmEstimatedBandwidth;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x20000000) != 0)
  {
LABEL_64:
    devicePointOfInterest = self->_devicePointOfInterest;
    PBDataWriterWriteUint32Field();
  }

LABEL_65:
  if ((*(p_has + 8) & 2) != 0)
  {
    rrcState = self->_rrcState;
    PBDataWriterWriteUint32Field();
  }

  if ((*(p_has + 6) & 2) != 0)
  {
    mlPredictedWiFiBW = self->_mlPredictedWiFiBW;
    PBDataWriterWriteUint32Field();
  }

  v25 = *(p_has + 2);
  if ((v25 & 0x100000) != 0)
  {
    wifiModelVersion = self->_wifiModelVersion;
    PBDataWriterWriteUint32Field();
    v25 = *(p_has + 2);
  }

  if ((v25 & 0x80000) != 0)
  {
    wifiModelConfidenceLevel = self->_wifiModelConfidenceLevel;
    PBDataWriterWriteUint32Field();
  }

  v28 = *p_has;
  if ((*p_has & 0x1000000000000) != 0)
  {
    mlPredictedCellBW = self->_mlPredictedCellBW;
    PBDataWriterWriteUint32Field();
    v28 = *p_has;
    if ((*p_has & 0x10000) == 0)
    {
LABEL_75:
      if ((v28 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_180;
    }
  }

  else if ((v28 & 0x10000) == 0)
  {
    goto LABEL_75;
  }

  cellModelVersion = self->_cellModelVersion;
  PBDataWriterWriteUint32Field();
  v28 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_76:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_180:
  cellModelConfidenceLevel = self->_cellModelConfidenceLevel;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x2000) != 0)
  {
LABEL_77:
    cellEstimatedBW = self->_cellEstimatedBW;
    PBDataWriterWriteUint32Field();
  }

LABEL_78:
  if (self->_appType)
  {
    PBDataWriterWriteStringField();
  }

  v30 = *(p_has + 2);
  if ((v30 & 0x10) != 0)
  {
    tcpRTTAvg = self->_tcpRTTAvg;
    PBDataWriterWriteUint32Field();
    v30 = *(p_has + 2);
    if ((v30 & 0x20) == 0)
    {
LABEL_82:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((v30 & 0x20) == 0)
  {
    goto LABEL_82;
  }

  tcpRTTmin = self->_tcpRTTmin;
  PBDataWriterWriteUint32Field();
  if ((*(p_has + 2) & 0x40) != 0)
  {
LABEL_83:
    tcpRTTvar = self->_tcpRTTvar;
    PBDataWriterWriteUint32Field();
  }

LABEL_84:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    ratioDupeBytes = self->_ratioDupeBytes;
    PBDataWriterWriteUint32Field();
  }

  if (*(p_has + 8))
  {
    ratioOOBBytes = self->_ratioOOBBytes;
    PBDataWriterWriteUint32Field();
  }

  v34 = *p_has;
  if ((*p_has & 0x400) != 0)
  {
    cellARFCN = self->_cellARFCN;
    PBDataWriterWriteUint32Field();
    v34 = *p_has;
    if ((*p_has & 0x1000) == 0)
    {
LABEL_90:
      if ((v34 & 0x800) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_187;
    }
  }

  else if ((v34 & 0x1000) == 0)
  {
    goto LABEL_90;
  }

  cellChannelBW = self->_cellChannelBW;
  PBDataWriterWriteUint32Field();
  v34 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_91:
    if ((v34 & 0x200000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_188;
  }

LABEL_187:
  cellBandInfo = self->_cellBandInfo;
  PBDataWriterWriteUint32Field();
  v34 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_92:
    if ((v34 & 0x800000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_188:
  maxDLCAConfigured = self->_maxDLCAConfigured;
  PBDataWriterWriteUint32Field();
  if ((*p_has & 0x800000000000) != 0)
  {
LABEL_93:
    maxULCAConfigured = self->_maxULCAConfigured;
    PBDataWriterWriteUint32Field();
  }

LABEL_94:
  v36 = *(p_has + 2);
  if ((v36 & 0x10000) != 0)
  {
    wifChannelBW = self->_wifChannelBW;
    PBDataWriterWriteUint32Field();
    v36 = *(p_has + 2);
    if ((v36 & 0x20000) == 0)
    {
LABEL_96:
      if ((v36 & 0x40000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((v36 & 0x20000) == 0)
  {
    goto LABEL_96;
  }

  wifChannelType = self->_wifChannelType;
  PBDataWriterWriteUint32Field();
  if ((*(p_has + 2) & 0x40000) != 0)
  {
LABEL_97:
    wifiCapability = self->_wifiCapability;
    PBDataWriterWriteUint32Field();
  }

LABEL_98:
  if (*(p_has + 4))
  {
    estimatedSpeed = self->_estimatedSpeed;
    PBDataWriterWriteUint32Field();
  }

  v39 = *(p_has + 2);
  if ((v39 & 0x10000000) != 0)
  {
    cellNsaEnabled = self->_cellNsaEnabled;
    PBDataWriterWriteBOOLField();
    v39 = *(p_has + 2);
  }

  if ((v39 & 0x20000000) != 0)
  {
    isFR1 = self->_isFR1;
    PBDataWriterWriteBOOLField();
  }

  v42 = *p_has;
  if ((*p_has & 0x20000) != 0)
  {
    cellNrRSRP = self->_cellNrRSRP;
    PBDataWriterWriteInt32Field();
    v42 = *p_has;
    if ((*p_has & 0x40000) == 0)
    {
LABEL_106:
      if ((v42 & 0x80000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_195;
    }
  }

  else if ((v42 & 0x40000) == 0)
  {
    goto LABEL_106;
  }

  cellNrRSRQ = self->_cellNrRSRQ;
  PBDataWriterWriteInt32Field();
  v42 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_107:
    if ((v42 & 0x4000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_196;
  }

LABEL_195:
  cellNrSNR = self->_cellNrSNR;
  PBDataWriterWriteInt32Field();
  v42 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_108:
    if ((v42 & 0x80000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_196:
  cellLteRSRQ = self->_cellLteRSRQ;
  PBDataWriterWriteInt32Field();
  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_109:
    pActualLowBandwidth = self->_pActualLowBandwidth;
    PBDataWriterWriteInt32Field();
  }

LABEL_110:
  v44 = *(p_has + 2);
  if ((v44 & 0x2000000) != 0)
  {
    wifimcsindex = self->_wifimcsindex;
    PBDataWriterWriteInt32Field();
    v44 = *(p_has + 2);
    if ((v44 & 0x800000) == 0)
    {
LABEL_112:
      if ((v44 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_200;
    }
  }

  else if ((v44 & 0x800000) == 0)
  {
    goto LABEL_112;
  }

  wifiguardinterval = self->_wifiguardinterval;
  PBDataWriterWriteInt32Field();
  v44 = *(p_has + 2);
  if ((v44 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v44 & 0x400000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_201;
  }

LABEL_200:
  wifinumberOfSpatialStreams = self->_wifinumberOfSpatialStreams;
  PBDataWriterWriteInt32Field();
  v44 = *(p_has + 2);
  if ((v44 & 0x400000) == 0)
  {
LABEL_114:
    if ((v44 & 0x1000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_201:
  wifichannel = self->_wifichannel;
  PBDataWriterWriteInt32Field();
  if ((*(p_has + 2) & 0x1000000) != 0)
  {
LABEL_115:
    wifilowDataMode = self->_wifilowDataMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_116:
  v46 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    isWfiCaptive = self->_isWfiCaptive;
    PBDataWriterWriteInt32Field();
    v46 = *p_has;
  }

  if ((v46 & 0x80) != 0)
  {
    btWiFiCoexState = self->_btWiFiCoexState;
    PBDataWriterWriteInt32Field();
  }

  if ((*(p_has + 8) & 0x80) != 0)
  {
    totalConfiguredBw = self->_totalConfiguredBw;
    PBDataWriterWriteUint32Field();
  }

  v50 = *p_has;
  if ((*p_has & 0x10000000000000) != 0)
  {
    nrConfiguredBw = self->_nrConfiguredBw;
    PBDataWriterWriteUint32Field();
    v50 = *p_has;
  }

  if ((v50 & 0x40000000000000) != 0)
  {
    nrTotalScheduledMimoLayers = self->_nrTotalScheduledMimoLayers;
    PBDataWriterWriteUint32Field();
  }

  if (*(p_has + 9))
  {
    totalConfiguredMimoLayers = self->_totalConfiguredMimoLayers;
    PBDataWriterWriteUint32Field();
  }

  v54 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
    if ((v54 & 0x20000000000000) == 0)
    {
      goto LABEL_130;
    }

LABEL_204:
    nrMaxDlModulation = self->_nrMaxDlModulation;
    PBDataWriterWriteUint32Field();
    if ((*p_has & 0x2000000) == 0)
    {
      return;
    }

    goto LABEL_205;
  }

  lteMaxScheduledMimoLayersInACell = self->_lteMaxScheduledMimoLayersInACell;
  PBDataWriterWriteUint32Field();
  v54 = *p_has;
  if ((*p_has & 0x20000000000000) != 0)
  {
    goto LABEL_204;
  }

LABEL_130:
  if ((v54 & 0x2000000) == 0)
  {
    return;
  }

LABEL_205:
  coldStartType = self->_coldStartType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x200000000) != 0)
  {
    *(a3 + 38) = self->_event;
    *(a3 + 50) |= 0x200000000uLL;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_135;
    }
  }

  else if ((has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 13) = self->_bufferInterval;
  *(a3 + 50) |= 0x100uLL;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x400000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(a3 + 1) = self->_wifiRssi;
  *(a3 + 50) |= 1uLL;
  has = self->_has;
  if ((has & 0x400000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(a3 + 63) = self->_phyRate;
  *(a3 + 50) |= 0x400000000000000uLL;
  has = self->_has;
  if ((has & 0x4000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(a3 + 67) = self->_qbssLoad;
  *(a3 + 50) |= 0x4000000000000000uLL;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(a3 + 14) = self->_cca;
  *(a3 + 50) |= 0x200uLL;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_139:
  *(a3 + 10) = self->_bcnPer;
  *(a3 + 50) |= 0x20uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_9:
    *(a3 + 40) = self->_expectedThroughputVO;
    *(a3 + 50) |= 0x800000000uLL;
  }

LABEL_10:
  if ((*(&self->_has + 10) & 0x20) != 0)
  {
    *(a3 + 92) = self->_wifiSinr;
    *(a3 + 102) |= 0x200000u;
  }

  v7 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    *(a3 + 65) = self->_pktLifeTimeVO;
    *(a3 + 50) |= 0x1000000000000000uLL;
    v7 = self->_has;
    if ((v7 & 0x2000000000000000) == 0)
    {
LABEL_14:
      if ((v7 & 0x40000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_143;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
    goto LABEL_14;
  }

  *(a3 + 66) = self->_pktLossRateVO;
  *(a3 + 50) |= 0x2000000000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v7 & 0x200000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(a3 + 47) = self->_lqmScoreWifi;
  *(a3 + 50) |= 0x40000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(a3 + 62) = self->_packetLossRateVIBE;
  *(a3 + 50) |= 0x200000000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x400000000) == 0)
  {
LABEL_17:
    if ((v7 & 0x100000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(a3 + 39) = self->_expectedThroughputVIBE;
  *(a3 + 50) |= 0x400000000uLL;
  v7 = self->_has;
  if ((v7 & 0x100000000000000) == 0)
  {
LABEL_18:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(a3 + 61) = self->_packetLifetimeVIBE;
  *(a3 + 50) |= 0x100000000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_19:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(a3 + 9) = self->_badDecisionsCounterVO;
  *(a3 + 50) |= 0x10uLL;
  v7 = self->_has;
  if ((v7 & 0x2000000000) == 0)
  {
LABEL_20:
    if ((v7 & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(a3 + 42) = self->_goodDecisionsCounterVO;
  *(a3 + 50) |= 0x2000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x8000000000) == 0)
  {
LABEL_21:
    if ((v7 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(a3 + 44) = self->_invalidDecisionsCounterVO;
  *(a3 + 50) |= 0x8000000000uLL;
  v7 = self->_has;
  if ((v7 & 8) == 0)
  {
LABEL_22:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(a3 + 8) = self->_badDecisionsCounterVIBE;
  *(a3 + 50) |= 8uLL;
  v7 = self->_has;
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_23:
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(a3 + 41) = self->_goodDecisionsCounterVIBE;
  *(a3 + 50) |= 0x1000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_152:
  *(a3 + 43) = self->_invalidDecisionsCounterVIBE;
  *(a3 + 50) |= 0x4000000000uLL;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_25:
    *(a3 + 48) = self->_lqmScorecellular;
    *(a3 + 50) |= 0x80000000000uLL;
  }

LABEL_26:
  if (self->_ratType)
  {
    [a3 setRatType:?];
  }

  v8 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    *(a3 + 25) = self->_cellRsrp;
    *(a3 + 50) |= 0x100000uLL;
    v8 = self->_has;
    if ((v8 & 0x200000) == 0)
    {
LABEL_30:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v8 & 0x200000) == 0)
  {
    goto LABEL_30;
  }

  *(a3 + 26) = self->_cellSinr;
  *(a3 + 50) |= 0x200000uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_31:
    *(a3 + 11) = self->_btRssi;
    *(a3 + 50) |= 0x40uLL;
  }

LABEL_32:
  v9 = *(p_has + 2);
  if ((v9 & 0x200) != 0)
  {
    *(a3 + 80) = self->_txRetransmissionRate;
    *(a3 + 102) |= 0x200u;
    v9 = *(p_has + 2);
  }

  if ((v9 & 4) != 0)
  {
    *(a3 + 73) = self->_rxRetransmissionRate;
    *(a3 + 102) |= 4u;
  }

  if ((*(p_has + 5) & 2) != 0)
  {
    *(a3 + 46) = self->_lqmScoreBT;
    *(a3 + 50) |= 0x20000000000uLL;
  }

  if ((*(p_has + 11) & 8) != 0)
  {
    *(a3 + 98) = self->_wrmRecommendedRAT;
    *(a3 + 102) |= 0x8000000u;
  }

  v10 = *p_has;
  if ((*p_has & 4) != 0)
  {
    *(a3 + 5) = self->_actualLowBandwidth;
    *(a3 + 50) |= 4uLL;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_42:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_159;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_42;
  }

  *(a3 + 4) = self->_actualHighBandwidth;
  *(a3 + 50) |= 2uLL;
  v10 = self->_has;
  if ((v10 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(a3 + 36) = self->_estimatedLowBandwidth;
  *(a3 + 50) |= 0x80000000uLL;
  v10 = self->_has;
  if ((v10 & 0x40000000) == 0)
  {
LABEL_44:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(a3 + 35) = self->_estimatedHighBandwidth;
  *(a3 + 50) |= 0x40000000uLL;
  v10 = self->_has;
  if ((v10 & 0x8000000000000) == 0)
  {
LABEL_45:
    if ((v10 & 0x4000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(a3 + 56) = self->_movingAvgLowBandwidth;
  *(a3 + 50) |= 0x8000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x4000000000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(a3 + 55) = self->_movingAvgHighBandwidth;
  *(a3 + 50) |= 0x4000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x10000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(a3 + 33) = self->_deviation;
  *(a3 + 50) |= 0x10000000uLL;
  v10 = self->_has;
  if ((v10 & 0x400000000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x800000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(a3 + 51) = self->_maxOfActualLowBandwidth;
  *(a3 + 50) |= 0x400000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x800000000000000) == 0)
  {
LABEL_49:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(a3 + 64) = self->_pkgLifeTimeVO;
  *(a3 + 50) |= 0x800000000000000uLL;
  v10 = self->_has;
  if ((v10 & 0x8000000) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_166:
  *(a3 + 32) = self->_decisionVO;
  *(a3 + 50) |= 0x8000000uLL;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_51:
    *(a3 + 31) = self->_decisionVIBE;
    *(a3 + 50) |= 0x4000000uLL;
  }

LABEL_52:
  v11 = *(p_has + 2);
  if ((v11 & 0x800) != 0)
  {
    *(a3 + 82) = self->_videoStreamingStallTime;
    *(a3 + 102) |= 0x800u;
    v11 = *(p_has + 2);
    if ((v11 & 0x400) == 0)
    {
LABEL_54:
      if ((v11 & 8) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_170;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_54;
  }

  *(a3 + 81) = self->_txber;
  *(a3 + 102) |= 0x400u;
  v11 = *(p_has + 2);
  if ((v11 & 8) == 0)
  {
LABEL_55:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(a3 + 74) = self->_rxRetry;
  *(a3 + 102) |= 8u;
  v11 = *(p_has + 2);
  if ((v11 & 0x2000) == 0)
  {
LABEL_56:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_172;
  }

LABEL_171:
  *(a3 + 84) = self->_weightedAveragePhyrateTx;
  *(a3 + 102) |= 0x2000u;
  v11 = *(p_has + 2);
  if ((v11 & 0x1000) == 0)
  {
LABEL_57:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(a3 + 83) = self->_weightedAveragePhyrateRx;
  *(a3 + 102) |= 0x1000u;
  v11 = *(p_has + 2);
  if ((v11 & 0x4000) == 0)
  {
LABEL_58:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_173:
  *(a3 + 85) = self->_weightedAverageRssi;
  *(a3 + 102) |= 0x4000u;
  if ((*(p_has + 2) & 0x8000) != 0)
  {
LABEL_59:
    *(a3 + 86) = self->_weightedAverageSnr;
    *(a3 + 102) |= 0x8000u;
  }

LABEL_60:
  v12 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    *(a3 + 27) = self->_cmDataSentCount;
    *(a3 + 50) |= 0x400000uLL;
    v12 = self->_has;
    if ((v12 & 0x800000) == 0)
    {
LABEL_62:
      if ((v12 & 0x1000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_177;
    }
  }

  else if ((v12 & 0x800000) == 0)
  {
    goto LABEL_62;
  }

  *(a3 + 28) = self->_cmDataSentDuration;
  *(a3 + 50) |= 0x800000uLL;
  v12 = self->_has;
  if ((v12 & 0x1000000) == 0)
  {
LABEL_63:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_177:
  *(a3 + 29) = self->_cmEstimatedBandwidth;
  *(a3 + 50) |= 0x1000000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_64:
    *(a3 + 34) = self->_devicePointOfInterest;
    *(a3 + 50) |= 0x20000000uLL;
  }

LABEL_65:
  if ((*(p_has + 8) & 2) != 0)
  {
    *(a3 + 72) = self->_rrcState;
    *(a3 + 102) |= 2u;
  }

  if ((*(p_has + 6) & 2) != 0)
  {
    *(a3 + 54) = self->_mlPredictedWiFiBW;
    *(a3 + 50) |= 0x2000000000000uLL;
  }

  v13 = *(p_has + 2);
  if ((v13 & 0x100000) != 0)
  {
    *(a3 + 91) = self->_wifiModelVersion;
    *(a3 + 102) |= 0x100000u;
    v13 = *(p_has + 2);
  }

  if ((v13 & 0x80000) != 0)
  {
    *(a3 + 90) = self->_wifiModelConfidenceLevel;
    *(a3 + 102) |= 0x80000u;
  }

  v14 = *p_has;
  if ((*p_has & 0x1000000000000) != 0)
  {
    *(a3 + 53) = self->_mlPredictedCellBW;
    *(a3 + 50) |= 0x1000000000000uLL;
    v14 = self->_has;
    if ((v14 & 0x10000) == 0)
    {
LABEL_75:
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_181;
    }
  }

  else if ((v14 & 0x10000) == 0)
  {
    goto LABEL_75;
  }

  *(a3 + 21) = self->_cellModelVersion;
  *(a3 + 50) |= 0x10000uLL;
  v14 = self->_has;
  if ((v14 & 0x8000) == 0)
  {
LABEL_76:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_181:
  *(a3 + 20) = self->_cellModelConfidenceLevel;
  *(a3 + 50) |= 0x8000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_77:
    *(a3 + 18) = self->_cellEstimatedBW;
    *(a3 + 50) |= 0x2000uLL;
  }

LABEL_78:
  if (self->_appType)
  {
    [a3 setAppType:?];
  }

  v15 = *(p_has + 2);
  if ((v15 & 0x10) != 0)
  {
    *(a3 + 75) = self->_tcpRTTAvg;
    *(a3 + 102) |= 0x10u;
    v15 = *(p_has + 2);
    if ((v15 & 0x20) == 0)
    {
LABEL_82:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((v15 & 0x20) == 0)
  {
    goto LABEL_82;
  }

  *(a3 + 76) = self->_tcpRTTmin;
  *(a3 + 102) |= 0x20u;
  if ((*(p_has + 2) & 0x40) != 0)
  {
LABEL_83:
    *(a3 + 77) = self->_tcpRTTvar;
    *(a3 + 102) |= 0x40u;
  }

LABEL_84:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(a3 + 70) = self->_ratioDupeBytes;
    *(a3 + 50) |= 0x8000000000000000;
  }

  if (*(p_has + 8))
  {
    *(a3 + 71) = self->_ratioOOBBytes;
    *(a3 + 102) |= 1u;
  }

  v16 = *p_has;
  if ((*p_has & 0x400) != 0)
  {
    *(a3 + 15) = self->_cellARFCN;
    *(a3 + 50) |= 0x400uLL;
    v16 = self->_has;
    if ((v16 & 0x1000) == 0)
    {
LABEL_90:
      if ((v16 & 0x800) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_188;
    }
  }

  else if ((v16 & 0x1000) == 0)
  {
    goto LABEL_90;
  }

  *(a3 + 17) = self->_cellChannelBW;
  *(a3 + 50) |= 0x1000uLL;
  v16 = self->_has;
  if ((v16 & 0x800) == 0)
  {
LABEL_91:
    if ((v16 & 0x200000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(a3 + 16) = self->_cellBandInfo;
  *(a3 + 50) |= 0x800uLL;
  v16 = self->_has;
  if ((v16 & 0x200000000000) == 0)
  {
LABEL_92:
    if ((v16 & 0x800000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_189:
  *(a3 + 50) = self->_maxDLCAConfigured;
  *(a3 + 50) |= 0x200000000000uLL;
  if ((*&self->_has & 0x800000000000) != 0)
  {
LABEL_93:
    *(a3 + 52) = self->_maxULCAConfigured;
    *(a3 + 50) |= 0x800000000000uLL;
  }

LABEL_94:
  v17 = *(p_has + 2);
  if ((v17 & 0x10000) != 0)
  {
    *(a3 + 87) = self->_wifChannelBW;
    *(a3 + 102) |= 0x10000u;
    v17 = *(p_has + 2);
    if ((v17 & 0x20000) == 0)
    {
LABEL_96:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_96;
  }

  *(a3 + 88) = self->_wifChannelType;
  *(a3 + 102) |= 0x20000u;
  if ((*(p_has + 2) & 0x40000) != 0)
  {
LABEL_97:
    *(a3 + 89) = self->_wifiCapability;
    *(a3 + 102) |= 0x40000u;
  }

LABEL_98:
  if (*(p_has + 4))
  {
    *(a3 + 37) = self->_estimatedSpeed;
    *(a3 + 50) |= 0x100000000uLL;
  }

  v18 = *(p_has + 2);
  if ((v18 & 0x10000000) != 0)
  {
    *(a3 + 396) = self->_cellNsaEnabled;
    *(a3 + 102) |= 0x10000000u;
    v18 = *(p_has + 2);
  }

  if ((v18 & 0x20000000) != 0)
  {
    *(a3 + 397) = self->_isFR1;
    *(a3 + 102) |= 0x20000000u;
  }

  v19 = *p_has;
  if ((*p_has & 0x20000) != 0)
  {
    *(a3 + 22) = self->_cellNrRSRP;
    *(a3 + 50) |= 0x20000uLL;
    v19 = self->_has;
    if ((v19 & 0x40000) == 0)
    {
LABEL_106:
      if ((v19 & 0x80000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_196;
    }
  }

  else if ((v19 & 0x40000) == 0)
  {
    goto LABEL_106;
  }

  *(a3 + 23) = self->_cellNrRSRQ;
  *(a3 + 50) |= 0x40000uLL;
  v19 = self->_has;
  if ((v19 & 0x80000) == 0)
  {
LABEL_107:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_197;
  }

LABEL_196:
  *(a3 + 24) = self->_cellNrSNR;
  *(a3 + 50) |= 0x80000uLL;
  v19 = self->_has;
  if ((v19 & 0x4000) == 0)
  {
LABEL_108:
    if ((v19 & 0x80000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_197:
  *(a3 + 19) = self->_cellLteRSRQ;
  *(a3 + 50) |= 0x4000uLL;
  if ((*&self->_has & 0x80000000000000) != 0)
  {
LABEL_109:
    *(a3 + 60) = self->_pActualLowBandwidth;
    *(a3 + 50) |= 0x80000000000000uLL;
  }

LABEL_110:
  v20 = *(p_has + 2);
  if ((v20 & 0x2000000) != 0)
  {
    *(a3 + 96) = self->_wifimcsindex;
    *(a3 + 102) |= 0x2000000u;
    v20 = *(p_has + 2);
    if ((v20 & 0x800000) == 0)
    {
LABEL_112:
      if ((v20 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_201;
    }
  }

  else if ((v20 & 0x800000) == 0)
  {
    goto LABEL_112;
  }

  *(a3 + 94) = self->_wifiguardinterval;
  *(a3 + 102) |= 0x800000u;
  v20 = *(p_has + 2);
  if ((v20 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v20 & 0x400000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(a3 + 97) = self->_wifinumberOfSpatialStreams;
  *(a3 + 102) |= 0x4000000u;
  v20 = *(p_has + 2);
  if ((v20 & 0x400000) == 0)
  {
LABEL_114:
    if ((v20 & 0x1000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_202:
  *(a3 + 93) = self->_wifichannel;
  *(a3 + 102) |= 0x400000u;
  if ((*(p_has + 2) & 0x1000000) != 0)
  {
LABEL_115:
    *(a3 + 95) = self->_wifilowDataMode;
    *(a3 + 102) |= 0x1000000u;
  }

LABEL_116:
  v21 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    *(a3 + 45) = self->_isWfiCaptive;
    *(a3 + 50) |= 0x10000000000uLL;
    v21 = self->_has;
  }

  if ((v21 & 0x80) != 0)
  {
    *(a3 + 12) = self->_btWiFiCoexState;
    *(a3 + 50) |= 0x80uLL;
  }

  if ((*(p_has + 8) & 0x80) != 0)
  {
    *(a3 + 78) = self->_totalConfiguredBw;
    *(a3 + 102) |= 0x80u;
  }

  v22 = *p_has;
  if ((*p_has & 0x10000000000000) != 0)
  {
    *(a3 + 57) = self->_nrConfiguredBw;
    *(a3 + 50) |= 0x10000000000000uLL;
    v22 = self->_has;
  }

  if ((v22 & 0x40000000000000) != 0)
  {
    *(a3 + 59) = self->_nrTotalScheduledMimoLayers;
    *(a3 + 50) |= 0x40000000000000uLL;
  }

  if (*(p_has + 9))
  {
    *(a3 + 79) = self->_totalConfiguredMimoLayers;
    *(a3 + 102) |= 0x100u;
  }

  v23 = *p_has;
  if ((*p_has & 0x100000000000) != 0)
  {
    *(a3 + 49) = self->_lteMaxScheduledMimoLayersInACell;
    *(a3 + 50) |= 0x100000000000uLL;
    v23 = self->_has;
    if ((v23 & 0x20000000000000) == 0)
    {
LABEL_130:
      if ((v23 & 0x2000000) == 0)
      {
        return;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 0x20000000000000) == 0)
  {
    goto LABEL_130;
  }

  *(a3 + 58) = self->_nrMaxDlModulation;
  *(a3 + 50) |= 0x20000000000000uLL;
  if ((*&self->_has & 0x2000000) == 0)
  {
    return;
  }

LABEL_131:
  *(a3 + 30) = self->_coldStartType;
  *(a3 + 50) |= 0x2000000uLL;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x200000000) != 0)
  {
    *(v5 + 152) = self->_event;
    *(v5 + 400) |= 0x200000000uLL;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_131;
    }
  }

  else if ((has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 52) = self->_bufferInterval;
  *(v5 + 400) |= 0x100uLL;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x400000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v5 + 8) = self->_wifiRssi;
  *(v5 + 400) |= 1uLL;
  has = self->_has;
  if ((has & 0x400000000000000) == 0)
  {
LABEL_5:
    if ((has & 0x4000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v5 + 252) = self->_phyRate;
  *(v5 + 400) |= 0x400000000000000uLL;
  has = self->_has;
  if ((has & 0x4000000000000000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(v5 + 268) = self->_qbssLoad;
  *(v5 + 400) |= 0x4000000000000000uLL;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_135;
  }

LABEL_134:
  *(v5 + 56) = self->_cca;
  *(v5 + 400) |= 0x200uLL;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_135:
  *(v5 + 40) = self->_bcnPer;
  *(v5 + 400) |= 0x20uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_9:
    *(v5 + 160) = self->_expectedThroughputVO;
    *(v5 + 400) |= 0x800000000uLL;
  }

LABEL_10:
  if ((*(&self->_has + 10) & 0x20) != 0)
  {
    *(v5 + 368) = self->_wifiSinr;
    *(v5 + 408) |= 0x200000u;
  }

  v9 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    *(v5 + 260) = self->_pktLifeTimeVO;
    *(v5 + 400) |= 0x1000000000000000uLL;
    v9 = self->_has;
    if ((v9 & 0x2000000000000000) == 0)
    {
LABEL_14:
      if ((v9 & 0x40000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_139;
    }
  }

  else if ((v9 & 0x2000000000000000) == 0)
  {
    goto LABEL_14;
  }

  *(v5 + 264) = self->_pktLossRateVO;
  *(v5 + 400) |= 0x2000000000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v9 & 0x200000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v5 + 188) = self->_lqmScoreWifi;
  *(v5 + 400) |= 0x40000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v9 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v5 + 248) = self->_packetLossRateVIBE;
  *(v5 + 400) |= 0x200000000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x400000000) == 0)
  {
LABEL_17:
    if ((v9 & 0x100000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(v5 + 156) = self->_expectedThroughputVIBE;
  *(v5 + 400) |= 0x400000000uLL;
  v9 = self->_has;
  if ((v9 & 0x100000000000000) == 0)
  {
LABEL_18:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(v5 + 244) = self->_packetLifetimeVIBE;
  *(v5 + 400) |= 0x100000000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x10) == 0)
  {
LABEL_19:
    if ((v9 & 0x2000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v5 + 36) = self->_badDecisionsCounterVO;
  *(v5 + 400) |= 0x10uLL;
  v9 = self->_has;
  if ((v9 & 0x2000000000) == 0)
  {
LABEL_20:
    if ((v9 & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v5 + 168) = self->_goodDecisionsCounterVO;
  *(v5 + 400) |= 0x2000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x8000000000) == 0)
  {
LABEL_21:
    if ((v9 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v5 + 176) = self->_invalidDecisionsCounterVO;
  *(v5 + 400) |= 0x8000000000uLL;
  v9 = self->_has;
  if ((v9 & 8) == 0)
  {
LABEL_22:
    if ((v9 & 0x1000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v5 + 32) = self->_badDecisionsCounterVIBE;
  *(v5 + 400) |= 8uLL;
  v9 = self->_has;
  if ((v9 & 0x1000000000) == 0)
  {
LABEL_23:
    if ((v9 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v5 + 164) = self->_goodDecisionsCounterVIBE;
  *(v5 + 400) |= 0x1000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v9 & 0x80000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_148:
  *(v5 + 172) = self->_invalidDecisionsCounterVIBE;
  *(v5 + 400) |= 0x4000000000uLL;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_25:
    *(v5 + 192) = self->_lqmScorecellular;
    *(v5 + 400) |= 0x80000000000uLL;
  }

LABEL_26:

  *(v6 + 272) = [(NSString *)self->_ratType copyWithZone:a3];
  v10 = *p_has;
  if ((*p_has & 0x100000) != 0)
  {
    *(v6 + 100) = self->_cellRsrp;
    *(v6 + 400) |= 0x100000uLL;
    v10 = self->_has;
    if ((v10 & 0x200000) == 0)
    {
LABEL_28:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v10 & 0x200000) == 0)
  {
    goto LABEL_28;
  }

  *(v6 + 104) = self->_cellSinr;
  *(v6 + 400) |= 0x200000uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_29:
    *(v6 + 44) = self->_btRssi;
    *(v6 + 400) |= 0x40uLL;
  }

LABEL_30:
  v11 = *(&self->_has + 2);
  if ((v11 & 0x200) != 0)
  {
    *(v6 + 320) = self->_txRetransmissionRate;
    *(v6 + 408) |= 0x200u;
    v11 = *(&self->_has + 2);
  }

  if ((v11 & 4) != 0)
  {
    *(v6 + 292) = self->_rxRetransmissionRate;
    *(v6 + 408) |= 4u;
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    *(v6 + 184) = self->_lqmScoreBT;
    *(v6 + 400) |= 0x20000000000uLL;
  }

  if ((*(&self->_has + 11) & 8) != 0)
  {
    *(v6 + 392) = self->_wrmRecommendedRAT;
    *(v6 + 408) |= 0x8000000u;
  }

  v12 = *p_has;
  if ((*p_has & 4) != 0)
  {
    *(v6 + 20) = self->_actualLowBandwidth;
    *(v6 + 400) |= 4uLL;
    v12 = self->_has;
    if ((v12 & 2) == 0)
    {
LABEL_40:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_155;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_40;
  }

  *(v6 + 16) = self->_actualHighBandwidth;
  *(v6 + 400) |= 2uLL;
  v12 = self->_has;
  if ((v12 & 0x80000000) == 0)
  {
LABEL_41:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(v6 + 144) = self->_estimatedLowBandwidth;
  *(v6 + 400) |= 0x80000000uLL;
  v12 = self->_has;
  if ((v12 & 0x40000000) == 0)
  {
LABEL_42:
    if ((v12 & 0x8000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(v6 + 140) = self->_estimatedHighBandwidth;
  *(v6 + 400) |= 0x40000000uLL;
  v12 = self->_has;
  if ((v12 & 0x8000000000000) == 0)
  {
LABEL_43:
    if ((v12 & 0x4000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(v6 + 224) = self->_movingAvgLowBandwidth;
  *(v6 + 400) |= 0x8000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x4000000000000) == 0)
  {
LABEL_44:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(v6 + 220) = self->_movingAvgHighBandwidth;
  *(v6 + 400) |= 0x4000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x10000000) == 0)
  {
LABEL_45:
    if ((v12 & 0x400000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(v6 + 132) = self->_deviation;
  *(v6 + 400) |= 0x10000000uLL;
  v12 = self->_has;
  if ((v12 & 0x400000000000) == 0)
  {
LABEL_46:
    if ((v12 & 0x800000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v6 + 204) = self->_maxOfActualLowBandwidth;
  *(v6 + 400) |= 0x400000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x800000000000000) == 0)
  {
LABEL_47:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(v6 + 256) = self->_pkgLifeTimeVO;
  *(v6 + 400) |= 0x800000000000000uLL;
  v12 = self->_has;
  if ((v12 & 0x8000000) == 0)
  {
LABEL_48:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_162:
  *(v6 + 128) = self->_decisionVO;
  *(v6 + 400) |= 0x8000000uLL;
  if ((*&self->_has & 0x4000000) != 0)
  {
LABEL_49:
    *(v6 + 124) = self->_decisionVIBE;
    *(v6 + 400) |= 0x4000000uLL;
  }

LABEL_50:
  v13 = *(&self->_has + 2);
  if ((v13 & 0x800) != 0)
  {
    *(v6 + 328) = self->_videoStreamingStallTime;
    *(v6 + 408) |= 0x800u;
    v13 = *(&self->_has + 2);
    if ((v13 & 0x400) == 0)
    {
LABEL_52:
      if ((v13 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_166;
    }
  }

  else if ((v13 & 0x400) == 0)
  {
    goto LABEL_52;
  }

  *(v6 + 324) = self->_txber;
  *(v6 + 408) |= 0x400u;
  v13 = *(&self->_has + 2);
  if ((v13 & 8) == 0)
  {
LABEL_53:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(v6 + 296) = self->_rxRetry;
  *(v6 + 408) |= 8u;
  v13 = *(&self->_has + 2);
  if ((v13 & 0x2000) == 0)
  {
LABEL_54:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(v6 + 336) = self->_weightedAveragePhyrateTx;
  *(v6 + 408) |= 0x2000u;
  v13 = *(&self->_has + 2);
  if ((v13 & 0x1000) == 0)
  {
LABEL_55:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(v6 + 332) = self->_weightedAveragePhyrateRx;
  *(v6 + 408) |= 0x1000u;
  v13 = *(&self->_has + 2);
  if ((v13 & 0x4000) == 0)
  {
LABEL_56:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_169:
  *(v6 + 340) = self->_weightedAverageRssi;
  *(v6 + 408) |= 0x4000u;
  if ((*(&self->_has + 2) & 0x8000) != 0)
  {
LABEL_57:
    *(v6 + 344) = self->_weightedAverageSnr;
    *(v6 + 408) |= 0x8000u;
  }

LABEL_58:
  v14 = *p_has;
  if ((*p_has & 0x400000) != 0)
  {
    *(v6 + 108) = self->_cmDataSentCount;
    *(v6 + 400) |= 0x400000uLL;
    v14 = self->_has;
    if ((v14 & 0x800000) == 0)
    {
LABEL_60:
      if ((v14 & 0x1000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_173;
    }
  }

  else if ((v14 & 0x800000) == 0)
  {
    goto LABEL_60;
  }

  *(v6 + 112) = self->_cmDataSentDuration;
  *(v6 + 400) |= 0x800000uLL;
  v14 = self->_has;
  if ((v14 & 0x1000000) == 0)
  {
LABEL_61:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_173:
  *(v6 + 116) = self->_cmEstimatedBandwidth;
  *(v6 + 400) |= 0x1000000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_62:
    *(v6 + 136) = self->_devicePointOfInterest;
    *(v6 + 400) |= 0x20000000uLL;
  }

LABEL_63:
  if ((*(&self->_has + 8) & 2) != 0)
  {
    *(v6 + 288) = self->_rrcState;
    *(v6 + 408) |= 2u;
  }

  if ((*(&self->_has + 6) & 2) != 0)
  {
    *(v6 + 216) = self->_mlPredictedWiFiBW;
    *(v6 + 400) |= 0x2000000000000uLL;
  }

  v15 = *(&self->_has + 2);
  if ((v15 & 0x100000) != 0)
  {
    *(v6 + 364) = self->_wifiModelVersion;
    *(v6 + 408) |= 0x100000u;
    v15 = *(&self->_has + 2);
  }

  if ((v15 & 0x80000) != 0)
  {
    *(v6 + 360) = self->_wifiModelConfidenceLevel;
    *(v6 + 408) |= 0x80000u;
  }

  v16 = *p_has;
  if ((*p_has & 0x1000000000000) != 0)
  {
    *(v6 + 212) = self->_mlPredictedCellBW;
    *(v6 + 400) |= 0x1000000000000uLL;
    v16 = self->_has;
    if ((v16 & 0x10000) == 0)
    {
LABEL_73:
      if ((v16 & 0x8000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_177;
    }
  }

  else if ((v16 & 0x10000) == 0)
  {
    goto LABEL_73;
  }

  *(v6 + 84) = self->_cellModelVersion;
  *(v6 + 400) |= 0x10000uLL;
  v16 = self->_has;
  if ((v16 & 0x8000) == 0)
  {
LABEL_74:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_177:
  *(v6 + 80) = self->_cellModelConfidenceLevel;
  *(v6 + 400) |= 0x8000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_75:
    *(v6 + 72) = self->_cellEstimatedBW;
    *(v6 + 400) |= 0x2000uLL;
  }

LABEL_76:

  *(v6 + 24) = [(NSString *)self->_appType copyWithZone:a3];
  v17 = *(&self->_has + 2);
  if ((v17 & 0x10) != 0)
  {
    *(v6 + 300) = self->_tcpRTTAvg;
    *(v6 + 408) |= 0x10u;
    v17 = *(&self->_has + 2);
    if ((v17 & 0x20) == 0)
    {
LABEL_78:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    goto LABEL_78;
  }

  *(v6 + 304) = self->_tcpRTTmin;
  *(v6 + 408) |= 0x20u;
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
LABEL_79:
    *(v6 + 308) = self->_tcpRTTvar;
    *(v6 + 408) |= 0x40u;
  }

LABEL_80:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(v6 + 280) = self->_ratioDupeBytes;
    *(v6 + 400) |= 0x8000000000000000;
  }

  if (*(&self->_has + 8))
  {
    *(v6 + 284) = self->_ratioOOBBytes;
    *(v6 + 408) |= 1u;
  }

  v18 = *p_has;
  if ((*p_has & 0x400) != 0)
  {
    *(v6 + 60) = self->_cellARFCN;
    *(v6 + 400) |= 0x400uLL;
    v18 = self->_has;
    if ((v18 & 0x1000) == 0)
    {
LABEL_86:
      if ((v18 & 0x800) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_184;
    }
  }

  else if ((v18 & 0x1000) == 0)
  {
    goto LABEL_86;
  }

  *(v6 + 68) = self->_cellChannelBW;
  *(v6 + 400) |= 0x1000uLL;
  v18 = self->_has;
  if ((v18 & 0x800) == 0)
  {
LABEL_87:
    if ((v18 & 0x200000000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(v6 + 64) = self->_cellBandInfo;
  *(v6 + 400) |= 0x800uLL;
  v18 = self->_has;
  if ((v18 & 0x200000000000) == 0)
  {
LABEL_88:
    if ((v18 & 0x800000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_185:
  *(v6 + 200) = self->_maxDLCAConfigured;
  *(v6 + 400) |= 0x200000000000uLL;
  if ((*&self->_has & 0x800000000000) != 0)
  {
LABEL_89:
    *(v6 + 208) = self->_maxULCAConfigured;
    *(v6 + 400) |= 0x800000000000uLL;
  }

LABEL_90:
  v19 = *(&self->_has + 2);
  if ((v19 & 0x10000) != 0)
  {
    *(v6 + 348) = self->_wifChannelBW;
    *(v6 + 408) |= 0x10000u;
    v19 = *(&self->_has + 2);
    if ((v19 & 0x20000) == 0)
    {
LABEL_92:
      if ((v19 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }
  }

  else if ((v19 & 0x20000) == 0)
  {
    goto LABEL_92;
  }

  *(v6 + 352) = self->_wifChannelType;
  *(v6 + 408) |= 0x20000u;
  if ((*(&self->_has + 2) & 0x40000) != 0)
  {
LABEL_93:
    *(v6 + 356) = self->_wifiCapability;
    *(v6 + 408) |= 0x40000u;
  }

LABEL_94:
  if (*(&self->_has + 4))
  {
    *(v6 + 148) = self->_estimatedSpeed;
    *(v6 + 400) |= 0x100000000uLL;
  }

  v20 = *(&self->_has + 2);
  if ((v20 & 0x10000000) != 0)
  {
    *(v6 + 396) = self->_cellNsaEnabled;
    *(v6 + 408) |= 0x10000000u;
    v20 = *(&self->_has + 2);
  }

  if ((v20 & 0x20000000) != 0)
  {
    *(v6 + 397) = self->_isFR1;
    *(v6 + 408) |= 0x20000000u;
  }

  v21 = *p_has;
  if ((*p_has & 0x20000) != 0)
  {
    *(v6 + 88) = self->_cellNrRSRP;
    *(v6 + 400) |= 0x20000uLL;
    v21 = self->_has;
    if ((v21 & 0x40000) == 0)
    {
LABEL_102:
      if ((v21 & 0x80000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_192;
    }
  }

  else if ((v21 & 0x40000) == 0)
  {
    goto LABEL_102;
  }

  *(v6 + 92) = self->_cellNrRSRQ;
  *(v6 + 400) |= 0x40000uLL;
  v21 = self->_has;
  if ((v21 & 0x80000) == 0)
  {
LABEL_103:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(v6 + 96) = self->_cellNrSNR;
  *(v6 + 400) |= 0x80000uLL;
  v21 = self->_has;
  if ((v21 & 0x4000) == 0)
  {
LABEL_104:
    if ((v21 & 0x80000000000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_193:
  *(v6 + 76) = self->_cellLteRSRQ;
  *(v6 + 400) |= 0x4000uLL;
  if ((*&self->_has & 0x80000000000000) != 0)
  {
LABEL_105:
    *(v6 + 240) = self->_pActualLowBandwidth;
    *(v6 + 400) |= 0x80000000000000uLL;
  }

LABEL_106:
  v22 = *(&self->_has + 2);
  if ((v22 & 0x2000000) != 0)
  {
    *(v6 + 384) = self->_wifimcsindex;
    *(v6 + 408) |= 0x2000000u;
    v22 = *(&self->_has + 2);
    if ((v22 & 0x800000) == 0)
    {
LABEL_108:
      if ((v22 & 0x4000000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_197;
    }
  }

  else if ((v22 & 0x800000) == 0)
  {
    goto LABEL_108;
  }

  *(v6 + 376) = self->_wifiguardinterval;
  *(v6 + 408) |= 0x800000u;
  v22 = *(&self->_has + 2);
  if ((v22 & 0x4000000) == 0)
  {
LABEL_109:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(v6 + 388) = self->_wifinumberOfSpatialStreams;
  *(v6 + 408) |= 0x4000000u;
  v22 = *(&self->_has + 2);
  if ((v22 & 0x400000) == 0)
  {
LABEL_110:
    if ((v22 & 0x1000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_198:
  *(v6 + 372) = self->_wifichannel;
  *(v6 + 408) |= 0x400000u;
  if ((*(&self->_has + 2) & 0x1000000) != 0)
  {
LABEL_111:
    *(v6 + 380) = self->_wifilowDataMode;
    *(v6 + 408) |= 0x1000000u;
  }

LABEL_112:
  v23 = *p_has;
  if ((*p_has & 0x10000000000) != 0)
  {
    *(v6 + 180) = self->_isWfiCaptive;
    *(v6 + 400) |= 0x10000000000uLL;
    v23 = self->_has;
  }

  if ((v23 & 0x80) != 0)
  {
    *(v6 + 48) = self->_btWiFiCoexState;
    *(v6 + 400) |= 0x80uLL;
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    *(v6 + 312) = self->_totalConfiguredBw;
    *(v6 + 408) |= 0x80u;
  }

  v24 = *p_has;
  if ((*p_has & 0x10000000000000) != 0)
  {
    *(v6 + 228) = self->_nrConfiguredBw;
    *(v6 + 400) |= 0x10000000000000uLL;
    v24 = self->_has;
  }

  if ((v24 & 0x40000000000000) != 0)
  {
    *(v6 + 236) = self->_nrTotalScheduledMimoLayers;
    *(v6 + 400) |= 0x40000000000000uLL;
  }

  if (*(&self->_has + 9))
  {
    *(v6 + 316) = self->_totalConfiguredMimoLayers;
    *(v6 + 408) |= 0x100u;
  }

  v25 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
    if ((v25 & 0x20000000000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_201:
    *(v6 + 232) = self->_nrMaxDlModulation;
    *(v6 + 400) |= 0x20000000000000uLL;
    if ((*&self->_has & 0x2000000) == 0)
    {
      return v6;
    }

    goto LABEL_127;
  }

  *(v6 + 196) = self->_lteMaxScheduledMimoLayersInACell;
  *(v6 + 400) |= 0x100000000000uLL;
  v25 = self->_has;
  if ((v25 & 0x20000000000000) != 0)
  {
    goto LABEL_201;
  }

LABEL_126:
  if ((v25 & 0x2000000) != 0)
  {
LABEL_127:
    *(v6 + 120) = self->_coldStartType;
    *(v6 + 400) |= 0x2000000uLL;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 50);
  if ((has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_event != *(a3 + 38))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_bufferInterval != *(a3 + 13))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_483;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_wifiRssi != *(a3 + 1))
    {
      goto LABEL_483;
    }
  }

  else if (v7)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000000000000) != 0)
  {
    if ((v7 & 0x400000000000000) == 0 || self->_phyRate != *(a3 + 63))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x400000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v7 & 0x4000000000000000) == 0 || self->_qbssLoad != *(a3 + 67))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_cca != *(a3 + 14))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_bcnPer != *(a3 + 10))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_expectedThroughputVO != *(a3 + 40))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_483;
  }

  v8 = *(a3 + 102);
  p_has = &self->_has;
  v21 = (a3 + 400);
  if ((*(&self->_has + 10) & 0x20) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_wifiSinr != *(a3 + 92))
    {
      goto LABEL_483;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v7 & 0x1000000000000000) == 0 || self->_pktLifeTimeVO != *(a3 + 65))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v7 & 0x2000000000000000) == 0 || self->_pktLossRateVO != *(a3 + 66))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x2000000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v7 & 0x40000000000) == 0 || self->_lqmScoreWifi != *(a3 + 47))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x40000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200000000000000) != 0)
  {
    if ((v7 & 0x200000000000000) == 0 || self->_packetLossRateVIBE != *(a3 + 62))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x200000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_expectedThroughputVIBE != *(a3 + 39))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v7 & 0x100000000000000) == 0 || self->_packetLifetimeVIBE != *(a3 + 61))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x100000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_badDecisionsCounterVO != *(a3 + 9))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0 || self->_goodDecisionsCounterVO != *(a3 + 42))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0 || self->_invalidDecisionsCounterVO != *(a3 + 44))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_badDecisionsCounterVIBE != *(a3 + 8))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0 || self->_goodDecisionsCounterVIBE != *(a3 + 41))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0 || self->_invalidDecisionsCounterVIBE != *(a3 + 43))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v7 & 0x80000000000) == 0 || self->_lqmScorecellular != *(a3 + 48))
    {
      goto LABEL_483;
    }
  }

  else if ((v7 & 0x80000000000) != 0)
  {
    goto LABEL_483;
  }

  ratType = self->_ratType;
  if (ratType | *(a3 + 34))
  {
    v5 = [(NSString *)ratType isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = *p_has;
  }

  v10 = *v21;
  if ((has & 0x100000) != 0)
  {
    if ((v10 & 0x100000) == 0 || self->_cellRsrp != *(a3 + 25))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x100000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || self->_cellSinr != *(a3 + 26))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_btRssi != *(a3 + 11))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_483;
  }

  v11 = *(&self->_has + 2);
  v12 = *(a3 + 102);
  if ((v11 & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_txRetransmissionRate != *(a3 + 80))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_rxRetransmissionRate != *(a3 + 73))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v10 & 0x20000000000) == 0 || self->_lqmScoreBT != *(a3 + 46))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x20000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x8000000) != 0)
  {
    if ((v12 & 0x8000000) == 0 || self->_wrmRecommendedRAT != *(a3 + 98))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x8000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_actualLowBandwidth != *(a3 + 5))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_actualHighBandwidth != *(a3 + 4))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x80000000) != 0)
  {
    if ((v10 & 0x80000000) == 0 || self->_estimatedLowBandwidth != *(a3 + 36))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v10 & 0x40000000) == 0 || self->_estimatedHighBandwidth != *(a3 + 35))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v10 & 0x8000000000000) == 0 || self->_movingAvgLowBandwidth != *(a3 + 56))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x8000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v10 & 0x4000000000000) == 0 || self->_movingAvgHighBandwidth != *(a3 + 55))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x4000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10000000) != 0)
  {
    if ((v10 & 0x10000000) == 0 || self->_deviation != *(a3 + 33))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x10000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000000000) != 0)
  {
    if ((v10 & 0x400000000000) == 0 || self->_maxOfActualLowBandwidth != *(a3 + 51))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x400000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800000000000000) != 0)
  {
    if ((v10 & 0x800000000000000) == 0 || self->_pkgLifeTimeVO != *(a3 + 64))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x800000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x8000000) != 0)
  {
    if ((v10 & 0x8000000) == 0 || self->_decisionVO != *(a3 + 32))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x8000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v10 & 0x4000000) == 0 || self->_decisionVIBE != *(a3 + 31))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x4000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_videoStreamingStallTime != *(a3 + 82))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_txber != *(a3 + 81))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_rxRetry != *(a3 + 74))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_weightedAveragePhyrateTx != *(a3 + 84))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_weightedAveragePhyrateRx != *(a3 + 83))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_weightedAverageRssi != *(a3 + 85))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_weightedAverageSnr != *(a3 + 86))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_cmDataSentCount != *(a3 + 27))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x800000) != 0)
  {
    if ((v10 & 0x800000) == 0 || self->_cmDataSentDuration != *(a3 + 28))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x800000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) == 0 || self->_cmEstimatedBandwidth != *(a3 + 29))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x20000000) != 0)
  {
    if ((v10 & 0x20000000) == 0 || self->_devicePointOfInterest != *(a3 + 34))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x20000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_rrcState != *(a3 + 72))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v10 & 0x2000000000000) == 0 || self->_mlPredictedWiFiBW != *(a3 + 54))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x2000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_wifiModelVersion != *(a3 + 91))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_wifiModelConfidenceLevel != *(a3 + 90))
    {
      goto LABEL_483;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v10 & 0x1000000000000) == 0 || self->_mlPredictedCellBW != *(a3 + 53))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x1000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_cellModelVersion != *(a3 + 21))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_cellModelConfidenceLevel != *(a3 + 20))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_483;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0 || self->_cellEstimatedBW != *(a3 + 18))
    {
      goto LABEL_483;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_483;
  }

  appType = self->_appType;
  if (appType | *(a3 + 3))
  {
    v5 = [(NSString *)appType isEqual:?];
    if (!v5)
    {
      return v5;
    }

    v11 = *(&self->_has + 2);
  }

  v14 = *(a3 + 102);
  if ((v11 & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_tcpRTTAvg != *(a3 + 75))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0 || self->_tcpRTTmin != *(a3 + 76))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x20) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x40) != 0)
  {
    if ((v14 & 0x40) == 0 || self->_tcpRTTvar != *(a3 + 77))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x40) != 0)
  {
    goto LABEL_483;
  }

  v15 = *p_has;
  v16 = *v21;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    if ((v16 & 0x8000000000000000) == 0 || self->_ratioDupeBytes != *(a3 + 70))
    {
      goto LABEL_483;
    }
  }

  else if (v16 < 0)
  {
    goto LABEL_483;
  }

  if (v11)
  {
    if ((v14 & 1) == 0 || self->_ratioOOBBytes != *(a3 + 71))
    {
      goto LABEL_483;
    }
  }

  else if (v14)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x400) != 0)
  {
    if ((v16 & 0x400) == 0 || self->_cellARFCN != *(a3 + 15))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x400) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x1000) != 0)
  {
    if ((v16 & 0x1000) == 0 || self->_cellChannelBW != *(a3 + 17))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x1000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x800) != 0)
  {
    if ((v16 & 0x800) == 0 || self->_cellBandInfo != *(a3 + 16))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x800) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x200000000000) != 0)
  {
    if ((v16 & 0x200000000000) == 0 || self->_maxDLCAConfigured != *(a3 + 50))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x200000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x800000000000) != 0)
  {
    if ((v16 & 0x800000000000) == 0 || self->_maxULCAConfigured != *(a3 + 52))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x800000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x10000) != 0)
  {
    if ((v14 & 0x10000) == 0 || self->_wifChannelBW != *(a3 + 87))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x10000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x20000) != 0)
  {
    if ((v14 & 0x20000) == 0 || self->_wifChannelType != *(a3 + 88))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x20000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x40000) != 0)
  {
    if ((v14 & 0x40000) == 0 || self->_wifiCapability != *(a3 + 89))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x40000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x100000000) != 0)
  {
    if ((v16 & 0x100000000) == 0 || self->_estimatedSpeed != *(a3 + 37))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x100000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x10000000) != 0)
  {
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_483;
    }

    v17 = *(a3 + 396);
    if (self->_cellNsaEnabled)
    {
      if ((*(a3 + 396) & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (*(a3 + 396))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x10000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x20000000) != 0)
  {
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_483;
    }

    v18 = *(a3 + 397);
    if (self->_isFR1)
    {
      if ((*(a3 + 397) & 1) == 0)
      {
        goto LABEL_483;
      }
    }

    else if (*(a3 + 397))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x20000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x20000) != 0)
  {
    if ((v16 & 0x20000) == 0 || self->_cellNrRSRP != *(a3 + 22))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x20000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x40000) != 0)
  {
    if ((v16 & 0x40000) == 0 || self->_cellNrRSRQ != *(a3 + 23))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x40000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x80000) != 0)
  {
    if ((v16 & 0x80000) == 0 || self->_cellNrSNR != *(a3 + 24))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x80000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x4000) != 0)
  {
    if ((v16 & 0x4000) == 0 || self->_cellLteRSRQ != *(a3 + 19))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x4000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x80000000000000) != 0)
  {
    if ((v16 & 0x80000000000000) == 0 || self->_pActualLowBandwidth != *(a3 + 60))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x80000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x2000000) != 0)
  {
    if ((v14 & 0x2000000) == 0 || self->_wifimcsindex != *(a3 + 96))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x2000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x800000) != 0)
  {
    if ((v14 & 0x800000) == 0 || self->_wifiguardinterval != *(a3 + 94))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x800000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x4000000) != 0)
  {
    if ((v14 & 0x4000000) == 0 || self->_wifinumberOfSpatialStreams != *(a3 + 97))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x4000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x400000) != 0)
  {
    if ((v14 & 0x400000) == 0 || self->_wifichannel != *(a3 + 93))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x400000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x1000000) != 0)
  {
    if ((v14 & 0x1000000) == 0 || self->_wifilowDataMode != *(a3 + 95))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x1000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x10000000000) != 0)
  {
    if ((v16 & 0x10000000000) == 0 || self->_isWfiCaptive != *(a3 + 45))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x10000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x80) != 0)
  {
    if ((v16 & 0x80) == 0 || self->_btWiFiCoexState != *(a3 + 12))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x80) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x80) != 0)
  {
    if ((v14 & 0x80) == 0 || self->_totalConfiguredBw != *(a3 + 78))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x80) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x10000000000000) != 0)
  {
    if ((v16 & 0x10000000000000) == 0 || self->_nrConfiguredBw != *(a3 + 57))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x10000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x40000000000000) != 0)
  {
    if ((v16 & 0x40000000000000) == 0 || self->_nrTotalScheduledMimoLayers != *(a3 + 59))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x40000000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v11 & 0x100) != 0)
  {
    if ((v14 & 0x100) == 0 || self->_totalConfiguredMimoLayers != *(a3 + 79))
    {
      goto LABEL_483;
    }
  }

  else if ((v14 & 0x100) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x100000000000) != 0)
  {
    if ((v16 & 0x100000000000) == 0 || self->_lteMaxScheduledMimoLayersInACell != *(a3 + 49))
    {
      goto LABEL_483;
    }
  }

  else if ((v16 & 0x100000000000) != 0)
  {
    goto LABEL_483;
  }

  if ((v15 & 0x20000000000000) == 0)
  {
    if ((v16 & 0x20000000000000) == 0)
    {
      goto LABEL_479;
    }

LABEL_483:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v16 & 0x20000000000000) == 0 || self->_nrMaxDlModulation != *(a3 + 58))
  {
    goto LABEL_483;
  }

LABEL_479:
  LOBYTE(v5) = (*v21 & 0x2000000) == 0;
  if ((v15 & 0x2000000) != 0)
  {
    if ((v16 & 0x2000000) == 0 || self->_coldStartType != *(a3 + 30))
    {
      goto LABEL_483;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x200000000) != 0)
  {
    v105 = 2654435761 * self->_event;
    if ((has & 0x100) != 0)
    {
LABEL_3:
      v104 = 2654435761 * self->_bufferInterval;
      if (has)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v105 = 0;
    if ((has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v104 = 0;
  if (has)
  {
LABEL_4:
    v103 = 2654435761 * self->_wifiRssi;
    if ((has & 0x400000000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v103 = 0;
  if ((has & 0x400000000000000) != 0)
  {
LABEL_5:
    v102 = 2654435761 * self->_phyRate;
    if ((has & 0x4000000000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v102 = 0;
  if ((has & 0x4000000000000000) != 0)
  {
LABEL_6:
    v101 = 2654435761 * self->_qbssLoad;
    if ((has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v101 = 0;
  if ((has & 0x200) != 0)
  {
LABEL_7:
    v100 = 2654435761 * self->_cca;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v99 = 0;
    if ((has & 0x800000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v100 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v99 = 2654435761 * self->_bcnPer;
  if ((has & 0x800000000) != 0)
  {
LABEL_9:
    v98 = 2654435761 * self->_expectedThroughputVO;
    goto LABEL_18;
  }

LABEL_17:
  v98 = 0;
LABEL_18:
  if ((*(&self->_has + 10) & 0x20) != 0)
  {
    v97 = 2654435761 * self->_wifiSinr;
    if ((has & 0x1000000000000000) != 0)
    {
LABEL_20:
      v96 = 2654435761 * self->_pktLifeTimeVO;
      if ((has & 0x2000000000000000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v97 = 0;
    if ((has & 0x1000000000000000) != 0)
    {
      goto LABEL_20;
    }
  }

  v96 = 0;
  if ((has & 0x2000000000000000) != 0)
  {
LABEL_21:
    v95 = 2654435761 * self->_pktLossRateVO;
    if ((has & 0x40000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v95 = 0;
  if ((has & 0x40000000000) != 0)
  {
LABEL_22:
    v94 = 2654435761 * self->_lqmScoreWifi;
    if ((has & 0x200000000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  v94 = 0;
  if ((has & 0x200000000000000) != 0)
  {
LABEL_23:
    v93 = 2654435761 * self->_packetLossRateVIBE;
    if ((has & 0x400000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  v93 = 0;
  if ((has & 0x400000000) != 0)
  {
LABEL_24:
    v92 = 2654435761 * self->_expectedThroughputVIBE;
    if ((has & 0x100000000000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_38:
  v92 = 0;
  if ((has & 0x100000000000000) != 0)
  {
LABEL_25:
    v91 = 2654435761 * self->_packetLifetimeVIBE;
    if ((has & 0x10) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  v91 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_26:
    v90 = 2654435761 * self->_badDecisionsCounterVO;
    if ((has & 0x2000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  v90 = 0;
  if ((has & 0x2000000000) != 0)
  {
LABEL_27:
    v89 = 2654435761 * self->_goodDecisionsCounterVO;
    if ((has & 0x8000000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  v89 = 0;
  if ((has & 0x8000000000) != 0)
  {
LABEL_28:
    v88 = 2654435761 * self->_invalidDecisionsCounterVO;
    if ((has & 8) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_42:
  v88 = 0;
  if ((has & 8) != 0)
  {
LABEL_29:
    v87 = 2654435761 * self->_badDecisionsCounterVIBE;
    if ((has & 0x1000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_43:
  v87 = 0;
  if ((has & 0x1000000000) != 0)
  {
LABEL_30:
    v86 = 2654435761 * self->_goodDecisionsCounterVIBE;
    if ((has & 0x4000000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_45:
    v85 = 0;
    if ((has & 0x80000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

LABEL_44:
  v86 = 0;
  if ((has & 0x4000000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_31:
  v85 = 2654435761 * self->_invalidDecisionsCounterVIBE;
  if ((has & 0x80000000000) != 0)
  {
LABEL_32:
    v84 = 2654435761 * self->_lqmScorecellular;
    goto LABEL_47;
  }

LABEL_46:
  v84 = 0;
LABEL_47:
  v83 = [(NSString *)self->_ratType hash];
  v5 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
    v82 = 0;
    if ((v5 & 0x200000) != 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v81 = 0;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  v82 = 2654435761 * self->_cellRsrp;
  if ((v5 & 0x200000) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v81 = 2654435761 * self->_cellSinr;
  if ((v5 & 0x40) != 0)
  {
LABEL_50:
    v80 = 2654435761 * self->_btRssi;
    goto LABEL_54;
  }

LABEL_53:
  v80 = 0;
LABEL_54:
  v6 = *(p_has + 2);
  if ((v6 & 0x200) != 0)
  {
    v79 = 2654435761 * self->_txRetransmissionRate;
    if ((v6 & 4) != 0)
    {
LABEL_56:
      v78 = 2654435761 * self->_rxRetransmissionRate;
      if ((v5 & 0x20000000000) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v79 = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_56;
    }
  }

  v78 = 0;
  if ((v5 & 0x20000000000) != 0)
  {
LABEL_57:
    v77 = 2654435761 * self->_lqmScoreBT;
    if ((v6 & 0x8000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_92;
  }

LABEL_91:
  v77 = 0;
  if ((v6 & 0x8000000) != 0)
  {
LABEL_58:
    v76 = 2654435761 * self->_wrmRecommendedRAT;
    if ((v5 & 4) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_93;
  }

LABEL_92:
  v76 = 0;
  if ((v5 & 4) != 0)
  {
LABEL_59:
    v75 = 2654435761 * self->_actualLowBandwidth;
    if ((v5 & 2) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_94;
  }

LABEL_93:
  v75 = 0;
  if ((v5 & 2) != 0)
  {
LABEL_60:
    v74 = 2654435761 * self->_actualHighBandwidth;
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_95;
  }

LABEL_94:
  v74 = 0;
  if ((v5 & 0x80000000) != 0)
  {
LABEL_61:
    v73 = 2654435761 * self->_estimatedLowBandwidth;
    if ((v5 & 0x40000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_96;
  }

LABEL_95:
  v73 = 0;
  if ((v5 & 0x40000000) != 0)
  {
LABEL_62:
    v72 = 2654435761 * self->_estimatedHighBandwidth;
    if ((v5 & 0x8000000000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_97;
  }

LABEL_96:
  v72 = 0;
  if ((v5 & 0x8000000000000) != 0)
  {
LABEL_63:
    v71 = 2654435761 * self->_movingAvgLowBandwidth;
    if ((v5 & 0x4000000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_98;
  }

LABEL_97:
  v71 = 0;
  if ((v5 & 0x4000000000000) != 0)
  {
LABEL_64:
    v70 = 2654435761 * self->_movingAvgHighBandwidth;
    if ((v5 & 0x10000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_99;
  }

LABEL_98:
  v70 = 0;
  if ((v5 & 0x10000000) != 0)
  {
LABEL_65:
    v69 = 2654435761 * self->_deviation;
    if ((v5 & 0x400000000000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_100;
  }

LABEL_99:
  v69 = 0;
  if ((v5 & 0x400000000000) != 0)
  {
LABEL_66:
    v68 = 2654435761 * self->_maxOfActualLowBandwidth;
    if ((v5 & 0x800000000000000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_101;
  }

LABEL_100:
  v68 = 0;
  if ((v5 & 0x800000000000000) != 0)
  {
LABEL_67:
    v67 = 2654435761 * self->_pkgLifeTimeVO;
    if ((v5 & 0x8000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_102;
  }

LABEL_101:
  v67 = 0;
  if ((v5 & 0x8000000) != 0)
  {
LABEL_68:
    v66 = 2654435761 * self->_decisionVO;
    if ((v5 & 0x4000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_103;
  }

LABEL_102:
  v66 = 0;
  if ((v5 & 0x4000000) != 0)
  {
LABEL_69:
    v65 = 2654435761 * self->_decisionVIBE;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_104;
  }

LABEL_103:
  v65 = 0;
  if ((v6 & 0x800) != 0)
  {
LABEL_70:
    v64 = 2654435761 * self->_videoStreamingStallTime;
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_105;
  }

LABEL_104:
  v64 = 0;
  if ((v6 & 0x400) != 0)
  {
LABEL_71:
    v63 = 2654435761 * self->_txber;
    if ((v6 & 8) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_106;
  }

LABEL_105:
  v63 = 0;
  if ((v6 & 8) != 0)
  {
LABEL_72:
    v62 = 2654435761 * self->_rxRetry;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_107;
  }

LABEL_106:
  v62 = 0;
  if ((v6 & 0x2000) != 0)
  {
LABEL_73:
    v61 = 2654435761 * self->_weightedAveragePhyrateTx;
    if ((v6 & 0x1000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_108;
  }

LABEL_107:
  v61 = 0;
  if ((v6 & 0x1000) != 0)
  {
LABEL_74:
    v60 = 2654435761 * self->_weightedAveragePhyrateRx;
    if ((v6 & 0x4000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_109;
  }

LABEL_108:
  v60 = 0;
  if ((v6 & 0x4000) != 0)
  {
LABEL_75:
    v59 = 2654435761 * self->_weightedAverageRssi;
    if ((v6 & 0x8000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_110;
  }

LABEL_109:
  v59 = 0;
  if ((v6 & 0x8000) != 0)
  {
LABEL_76:
    v58 = 2654435761 * self->_weightedAverageSnr;
    if ((v5 & 0x400000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_111;
  }

LABEL_110:
  v58 = 0;
  if ((v5 & 0x400000) != 0)
  {
LABEL_77:
    v57 = 2654435761 * self->_cmDataSentCount;
    if ((v5 & 0x800000) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_112;
  }

LABEL_111:
  v57 = 0;
  if ((v5 & 0x800000) != 0)
  {
LABEL_78:
    v56 = 2654435761 * self->_cmDataSentDuration;
    if ((v5 & 0x1000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_113;
  }

LABEL_112:
  v56 = 0;
  if ((v5 & 0x1000000) != 0)
  {
LABEL_79:
    v55 = 2654435761 * self->_cmEstimatedBandwidth;
    if ((v5 & 0x20000000) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_114;
  }

LABEL_113:
  v55 = 0;
  if ((v5 & 0x20000000) != 0)
  {
LABEL_80:
    v54 = 2654435761 * self->_devicePointOfInterest;
    if ((v6 & 2) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_115;
  }

LABEL_114:
  v54 = 0;
  if ((v6 & 2) != 0)
  {
LABEL_81:
    v53 = 2654435761 * self->_rrcState;
    if ((v5 & 0x2000000000000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_116;
  }

LABEL_115:
  v53 = 0;
  if ((v5 & 0x2000000000000) != 0)
  {
LABEL_82:
    v52 = 2654435761 * self->_mlPredictedWiFiBW;
    if ((v6 & 0x100000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_117;
  }

LABEL_116:
  v52 = 0;
  if ((v6 & 0x100000) != 0)
  {
LABEL_83:
    v51 = 2654435761 * self->_wifiModelVersion;
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_118;
  }

LABEL_117:
  v51 = 0;
  if ((v6 & 0x80000) != 0)
  {
LABEL_84:
    v50 = 2654435761 * self->_wifiModelConfidenceLevel;
    if ((v5 & 0x1000000000000) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_119;
  }

LABEL_118:
  v50 = 0;
  if ((v5 & 0x1000000000000) != 0)
  {
LABEL_85:
    v49 = 2654435761 * self->_mlPredictedCellBW;
    if ((v5 & 0x10000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_120;
  }

LABEL_119:
  v49 = 0;
  if ((v5 & 0x10000) != 0)
  {
LABEL_86:
    v48 = 2654435761 * self->_cellModelVersion;
    if ((v5 & 0x8000) != 0)
    {
      goto LABEL_87;
    }

LABEL_121:
    v47 = 0;
    if ((v5 & 0x2000) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_122;
  }

LABEL_120:
  v48 = 0;
  if ((v5 & 0x8000) == 0)
  {
    goto LABEL_121;
  }

LABEL_87:
  v47 = 2654435761 * self->_cellModelConfidenceLevel;
  if ((v5 & 0x2000) != 0)
  {
LABEL_88:
    v46 = 2654435761 * self->_cellEstimatedBW;
    goto LABEL_123;
  }

LABEL_122:
  v46 = 0;
LABEL_123:
  v45 = [(NSString *)self->_appType hash];
  v7 = *(p_has + 2);
  if ((v7 & 0x10) == 0)
  {
    v44 = 0;
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_125;
    }

LABEL_128:
    v43 = 0;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_126;
    }

    goto LABEL_129;
  }

  v44 = 2654435761 * self->_tcpRTTAvg;
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_128;
  }

LABEL_125:
  v43 = 2654435761 * self->_tcpRTTmin;
  if ((v7 & 0x40) != 0)
  {
LABEL_126:
    v42 = 2654435761 * self->_tcpRTTvar;
    goto LABEL_130;
  }

LABEL_129:
  v42 = 0;
LABEL_130:
  v8 = *p_has;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    v41 = 2654435761 * self->_ratioDupeBytes;
    if ((v7 & 1) == 0)
    {
LABEL_132:
      v40 = 0;
      if ((v8 & 0x400) != 0)
      {
        goto LABEL_133;
      }

      goto LABEL_165;
    }
  }

  else
  {
    v41 = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_132;
    }
  }

  v40 = 2654435761 * self->_ratioOOBBytes;
  if ((v8 & 0x400) != 0)
  {
LABEL_133:
    v39 = 2654435761 * self->_cellARFCN;
    if ((v8 & 0x1000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_166;
  }

LABEL_165:
  v39 = 0;
  if ((v8 & 0x1000) != 0)
  {
LABEL_134:
    v38 = 2654435761 * self->_cellChannelBW;
    if ((v8 & 0x800) != 0)
    {
      goto LABEL_135;
    }

    goto LABEL_167;
  }

LABEL_166:
  v38 = 0;
  if ((v8 & 0x800) != 0)
  {
LABEL_135:
    v37 = 2654435761 * self->_cellBandInfo;
    if ((v8 & 0x200000000000) != 0)
    {
      goto LABEL_136;
    }

    goto LABEL_168;
  }

LABEL_167:
  v37 = 0;
  if ((v8 & 0x200000000000) != 0)
  {
LABEL_136:
    v36 = 2654435761 * self->_maxDLCAConfigured;
    if ((v8 & 0x800000000000) != 0)
    {
      goto LABEL_137;
    }

    goto LABEL_169;
  }

LABEL_168:
  v36 = 0;
  if ((v8 & 0x800000000000) != 0)
  {
LABEL_137:
    v9 = 2654435761 * self->_maxULCAConfigured;
    if ((v7 & 0x10000) != 0)
    {
      goto LABEL_138;
    }

    goto LABEL_170;
  }

LABEL_169:
  v9 = 0;
  if ((v7 & 0x10000) != 0)
  {
LABEL_138:
    v10 = 2654435761 * self->_wifChannelBW;
    if ((v7 & 0x20000) != 0)
    {
      goto LABEL_139;
    }

    goto LABEL_171;
  }

LABEL_170:
  v10 = 0;
  if ((v7 & 0x20000) != 0)
  {
LABEL_139:
    v11 = 2654435761 * self->_wifChannelType;
    if ((v7 & 0x40000) != 0)
    {
      goto LABEL_140;
    }

    goto LABEL_172;
  }

LABEL_171:
  v11 = 0;
  if ((v7 & 0x40000) != 0)
  {
LABEL_140:
    v12 = 2654435761 * self->_wifiCapability;
    if ((v8 & 0x100000000) != 0)
    {
      goto LABEL_141;
    }

    goto LABEL_173;
  }

LABEL_172:
  v12 = 0;
  if ((v8 & 0x100000000) != 0)
  {
LABEL_141:
    v13 = 2654435761 * self->_estimatedSpeed;
    if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_142;
    }

    goto LABEL_174;
  }

LABEL_173:
  v13 = 0;
  if ((v7 & 0x10000000) != 0)
  {
LABEL_142:
    v14 = 2654435761 * self->_cellNsaEnabled;
    if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_143;
    }

    goto LABEL_175;
  }

LABEL_174:
  v14 = 0;
  if ((v7 & 0x20000000) != 0)
  {
LABEL_143:
    v15 = 2654435761 * self->_isFR1;
    if ((v8 & 0x20000) != 0)
    {
      goto LABEL_144;
    }

    goto LABEL_176;
  }

LABEL_175:
  v15 = 0;
  if ((v8 & 0x20000) != 0)
  {
LABEL_144:
    v16 = 2654435761 * self->_cellNrRSRP;
    if ((v8 & 0x40000) != 0)
    {
      goto LABEL_145;
    }

    goto LABEL_177;
  }

LABEL_176:
  v16 = 0;
  if ((v8 & 0x40000) != 0)
  {
LABEL_145:
    v17 = 2654435761 * self->_cellNrRSRQ;
    if ((v8 & 0x80000) != 0)
    {
      goto LABEL_146;
    }

    goto LABEL_178;
  }

LABEL_177:
  v17 = 0;
  if ((v8 & 0x80000) != 0)
  {
LABEL_146:
    v18 = 2654435761 * self->_cellNrSNR;
    if ((v8 & 0x4000) != 0)
    {
      goto LABEL_147;
    }

    goto LABEL_179;
  }

LABEL_178:
  v18 = 0;
  if ((v8 & 0x4000) != 0)
  {
LABEL_147:
    v19 = 2654435761 * self->_cellLteRSRQ;
    if ((v8 & 0x80000000000000) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_180;
  }

LABEL_179:
  v19 = 0;
  if ((v8 & 0x80000000000000) != 0)
  {
LABEL_148:
    v20 = 2654435761 * self->_pActualLowBandwidth;
    if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_149;
    }

    goto LABEL_181;
  }

LABEL_180:
  v20 = 0;
  if ((v7 & 0x2000000) != 0)
  {
LABEL_149:
    v21 = 2654435761 * self->_wifimcsindex;
    if ((v7 & 0x800000) != 0)
    {
      goto LABEL_150;
    }

    goto LABEL_182;
  }

LABEL_181:
  v21 = 0;
  if ((v7 & 0x800000) != 0)
  {
LABEL_150:
    v22 = 2654435761 * self->_wifiguardinterval;
    if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_151;
    }

    goto LABEL_183;
  }

LABEL_182:
  v22 = 0;
  if ((v7 & 0x4000000) != 0)
  {
LABEL_151:
    v23 = 2654435761 * self->_wifinumberOfSpatialStreams;
    if ((v7 & 0x400000) != 0)
    {
      goto LABEL_152;
    }

    goto LABEL_184;
  }

LABEL_183:
  v23 = 0;
  if ((v7 & 0x400000) != 0)
  {
LABEL_152:
    v24 = 2654435761 * self->_wifichannel;
    if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_153;
    }

    goto LABEL_185;
  }

LABEL_184:
  v24 = 0;
  if ((v7 & 0x1000000) != 0)
  {
LABEL_153:
    v25 = 2654435761 * self->_wifilowDataMode;
    if ((v8 & 0x10000000000) != 0)
    {
      goto LABEL_154;
    }

    goto LABEL_186;
  }

LABEL_185:
  v25 = 0;
  if ((v8 & 0x10000000000) != 0)
  {
LABEL_154:
    v26 = 2654435761 * self->_isWfiCaptive;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_155;
    }

    goto LABEL_187;
  }

LABEL_186:
  v26 = 0;
  if ((v8 & 0x80) != 0)
  {
LABEL_155:
    v27 = 2654435761 * self->_btWiFiCoexState;
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_156;
    }

    goto LABEL_188;
  }

LABEL_187:
  v27 = 0;
  if ((v7 & 0x80) != 0)
  {
LABEL_156:
    v28 = 2654435761 * self->_totalConfiguredBw;
    if ((v8 & 0x10000000000000) != 0)
    {
      goto LABEL_157;
    }

    goto LABEL_189;
  }

LABEL_188:
  v28 = 0;
  if ((v8 & 0x10000000000000) != 0)
  {
LABEL_157:
    v29 = 2654435761 * self->_nrConfiguredBw;
    if ((v8 & 0x40000000000000) != 0)
    {
      goto LABEL_158;
    }

    goto LABEL_190;
  }

LABEL_189:
  v29 = 0;
  if ((v8 & 0x40000000000000) != 0)
  {
LABEL_158:
    v30 = 2654435761 * self->_nrTotalScheduledMimoLayers;
    if ((v7 & 0x100) != 0)
    {
      goto LABEL_159;
    }

    goto LABEL_191;
  }

LABEL_190:
  v30 = 0;
  if ((v7 & 0x100) != 0)
  {
LABEL_159:
    v31 = 2654435761 * self->_totalConfiguredMimoLayers;
    if ((v8 & 0x100000000000) != 0)
    {
      goto LABEL_160;
    }

    goto LABEL_192;
  }

LABEL_191:
  v31 = 0;
  if ((v8 & 0x100000000000) != 0)
  {
LABEL_160:
    v32 = 2654435761 * self->_lteMaxScheduledMimoLayersInACell;
    if ((v8 & 0x20000000000000) != 0)
    {
      goto LABEL_161;
    }

LABEL_193:
    v33 = 0;
    if ((v8 & 0x2000000) != 0)
    {
      goto LABEL_162;
    }

LABEL_194:
    v34 = 0;
    return v104 ^ v105 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v83 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34;
  }

LABEL_192:
  v32 = 0;
  if ((v8 & 0x20000000000000) == 0)
  {
    goto LABEL_193;
  }

LABEL_161:
  v33 = 2654435761 * self->_nrMaxDlModulation;
  if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_194;
  }

LABEL_162:
  v34 = 2654435761 * self->_coldStartType;
  return v104 ^ v105 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v83 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34;
}

- (void)mergeFrom:(id)a3
{
  v5 = a3 + 400;
  v6 = *(a3 + 50);
  if ((v6 & 0x200000000) != 0)
  {
    self->_event = *(a3 + 38);
    *&self->_has |= 0x200000000uLL;
    v6 = *(a3 + 50);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_135;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_bufferInterval = *(a3 + 13);
  *&self->_has |= 0x100uLL;
  v6 = *(a3 + 50);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 0x400000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_wifiRssi = *(a3 + 1);
  *&self->_has |= 1uLL;
  v6 = *(a3 + 50);
  if ((v6 & 0x400000000000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x4000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_phyRate = *(a3 + 63);
  *&self->_has |= 0x400000000000000uLL;
  v6 = *(a3 + 50);
  if ((v6 & 0x4000000000000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_qbssLoad = *(a3 + 67);
  *&self->_has |= 0x4000000000000000uLL;
  v6 = *(a3 + 50);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_cca = *(a3 + 14);
  *&self->_has |= 0x200uLL;
  v6 = *(a3 + 50);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_139:
  self->_bcnPer = *(a3 + 10);
  *&self->_has |= 0x20uLL;
  if ((*(a3 + 50) & 0x800000000) != 0)
  {
LABEL_9:
    self->_expectedThroughputVO = *(a3 + 40);
    *&self->_has |= 0x800000000uLL;
  }

LABEL_10:
  if ((*(a3 + 410) & 0x20) != 0)
  {
    self->_wifiSinr = *(a3 + 92);
    *(&self->_has + 2) |= 0x200000u;
  }

  v7 = *v5;
  if ((*v5 & 0x1000000000000000) != 0)
  {
    self->_pktLifeTimeVO = *(a3 + 65);
    *&self->_has |= 0x1000000000000000uLL;
    v7 = *(a3 + 50);
    if ((v7 & 0x2000000000000000) == 0)
    {
LABEL_14:
      if ((v7 & 0x40000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_143;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
    goto LABEL_14;
  }

  self->_pktLossRateVO = *(a3 + 66);
  *&self->_has |= 0x2000000000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_15:
    if ((v7 & 0x200000000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_144;
  }

LABEL_143:
  self->_lqmScoreWifi = *(a3 + 47);
  *&self->_has |= 0x40000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x200000000000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_145;
  }

LABEL_144:
  self->_packetLossRateVIBE = *(a3 + 62);
  *&self->_has |= 0x200000000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x400000000) == 0)
  {
LABEL_17:
    if ((v7 & 0x100000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_expectedThroughputVIBE = *(a3 + 39);
  *&self->_has |= 0x400000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x100000000000000) == 0)
  {
LABEL_18:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_packetLifetimeVIBE = *(a3 + 61);
  *&self->_has |= 0x100000000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x10) == 0)
  {
LABEL_19:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_badDecisionsCounterVO = *(a3 + 9);
  *&self->_has |= 0x10uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x2000000000) == 0)
  {
LABEL_20:
    if ((v7 & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_goodDecisionsCounterVO = *(a3 + 42);
  *&self->_has |= 0x2000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x8000000000) == 0)
  {
LABEL_21:
    if ((v7 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_invalidDecisionsCounterVO = *(a3 + 44);
  *&self->_has |= 0x8000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 8) == 0)
  {
LABEL_22:
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_badDecisionsCounterVIBE = *(a3 + 8);
  *&self->_has |= 8uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_23:
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_goodDecisionsCounterVIBE = *(a3 + 41);
  *&self->_has |= 0x1000000000uLL;
  v7 = *(a3 + 50);
  if ((v7 & 0x4000000000) == 0)
  {
LABEL_24:
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_152:
  self->_invalidDecisionsCounterVIBE = *(a3 + 43);
  *&self->_has |= 0x4000000000uLL;
  if ((*(a3 + 50) & 0x80000000000) != 0)
  {
LABEL_25:
    self->_lqmScorecellular = *(a3 + 48);
    *&self->_has |= 0x80000000000uLL;
  }

LABEL_26:
  if (*(a3 + 34))
  {
    [(AWDThroughputEvaluation *)self setRatType:?];
  }

  v8 = *v5;
  if ((*v5 & 0x100000) != 0)
  {
    self->_cellRsrp = *(a3 + 25);
    *&self->_has |= 0x100000uLL;
    v8 = *(a3 + 50);
    if ((v8 & 0x200000) == 0)
    {
LABEL_30:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v8 & 0x200000) == 0)
  {
    goto LABEL_30;
  }

  self->_cellSinr = *(a3 + 26);
  *&self->_has |= 0x200000uLL;
  if ((*(a3 + 50) & 0x40) != 0)
  {
LABEL_31:
    self->_btRssi = *(a3 + 11);
    *&self->_has |= 0x40uLL;
  }

LABEL_32:
  v9 = *(v5 + 2);
  if ((v9 & 0x200) != 0)
  {
    self->_txRetransmissionRate = *(a3 + 80);
    *(&self->_has + 2) |= 0x200u;
    v9 = *(v5 + 2);
  }

  if ((v9 & 4) != 0)
  {
    self->_rxRetransmissionRate = *(a3 + 73);
    *(&self->_has + 2) |= 4u;
  }

  if ((v5[5] & 2) != 0)
  {
    self->_lqmScoreBT = *(a3 + 46);
    *&self->_has |= 0x20000000000uLL;
  }

  if ((v5[11] & 8) != 0)
  {
    self->_wrmRecommendedRAT = *(a3 + 98);
    *(&self->_has + 2) |= 0x8000000u;
  }

  v10 = *v5;
  if ((*v5 & 4) != 0)
  {
    self->_actualLowBandwidth = *(a3 + 5);
    *&self->_has |= 4uLL;
    v10 = *(a3 + 50);
    if ((v10 & 2) == 0)
    {
LABEL_42:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_159;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_42;
  }

  self->_actualHighBandwidth = *(a3 + 4);
  *&self->_has |= 2uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_43:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_estimatedLowBandwidth = *(a3 + 36);
  *&self->_has |= 0x80000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x40000000) == 0)
  {
LABEL_44:
    if ((v10 & 0x8000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_161;
  }

LABEL_160:
  self->_estimatedHighBandwidth = *(a3 + 35);
  *&self->_has |= 0x40000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x8000000000000) == 0)
  {
LABEL_45:
    if ((v10 & 0x4000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_162;
  }

LABEL_161:
  self->_movingAvgLowBandwidth = *(a3 + 56);
  *&self->_has |= 0x8000000000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x4000000000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_163;
  }

LABEL_162:
  self->_movingAvgHighBandwidth = *(a3 + 55);
  *&self->_has |= 0x4000000000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_164;
  }

LABEL_163:
  self->_deviation = *(a3 + 33);
  *&self->_has |= 0x10000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x400000000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x800000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_maxOfActualLowBandwidth = *(a3 + 51);
  *&self->_has |= 0x400000000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x800000000000000) == 0)
  {
LABEL_49:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_166;
  }

LABEL_165:
  self->_pkgLifeTimeVO = *(a3 + 64);
  *&self->_has |= 0x800000000000000uLL;
  v10 = *(a3 + 50);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_166:
  self->_decisionVO = *(a3 + 32);
  *&self->_has |= 0x8000000uLL;
  if ((*(a3 + 50) & 0x4000000) != 0)
  {
LABEL_51:
    self->_decisionVIBE = *(a3 + 31);
    *&self->_has |= 0x4000000uLL;
  }

LABEL_52:
  v11 = *(v5 + 2);
  if ((v11 & 0x800) != 0)
  {
    self->_videoStreamingStallTime = *(a3 + 82);
    *(&self->_has + 2) |= 0x800u;
    v11 = *(v5 + 2);
    if ((v11 & 0x400) == 0)
    {
LABEL_54:
      if ((v11 & 8) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_170;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_54;
  }

  self->_txber = *(a3 + 81);
  *(&self->_has + 2) |= 0x400u;
  v11 = *(v5 + 2);
  if ((v11 & 8) == 0)
  {
LABEL_55:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  self->_rxRetry = *(a3 + 74);
  *(&self->_has + 2) |= 8u;
  v11 = *(v5 + 2);
  if ((v11 & 0x2000) == 0)
  {
LABEL_56:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_weightedAveragePhyrateTx = *(a3 + 84);
  *(&self->_has + 2) |= 0x2000u;
  v11 = *(v5 + 2);
  if ((v11 & 0x1000) == 0)
  {
LABEL_57:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_weightedAveragePhyrateRx = *(a3 + 83);
  *(&self->_has + 2) |= 0x1000u;
  v11 = *(v5 + 2);
  if ((v11 & 0x4000) == 0)
  {
LABEL_58:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_173:
  self->_weightedAverageRssi = *(a3 + 85);
  *(&self->_has + 2) |= 0x4000u;
  if ((*(v5 + 2) & 0x8000) != 0)
  {
LABEL_59:
    self->_weightedAverageSnr = *(a3 + 86);
    *(&self->_has + 2) |= 0x8000u;
  }

LABEL_60:
  v12 = *v5;
  if ((*v5 & 0x400000) != 0)
  {
    self->_cmDataSentCount = *(a3 + 27);
    *&self->_has |= 0x400000uLL;
    v12 = *(a3 + 50);
    if ((v12 & 0x800000) == 0)
    {
LABEL_62:
      if ((v12 & 0x1000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_177;
    }
  }

  else if ((v12 & 0x800000) == 0)
  {
    goto LABEL_62;
  }

  self->_cmDataSentDuration = *(a3 + 28);
  *&self->_has |= 0x800000uLL;
  v12 = *(a3 + 50);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_63:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_177:
  self->_cmEstimatedBandwidth = *(a3 + 29);
  *&self->_has |= 0x1000000uLL;
  if ((*(a3 + 50) & 0x20000000) != 0)
  {
LABEL_64:
    self->_devicePointOfInterest = *(a3 + 34);
    *&self->_has |= 0x20000000uLL;
  }

LABEL_65:
  if ((v5[8] & 2) != 0)
  {
    self->_rrcState = *(a3 + 72);
    *(&self->_has + 2) |= 2u;
  }

  if ((v5[6] & 2) != 0)
  {
    self->_mlPredictedWiFiBW = *(a3 + 54);
    *&self->_has |= 0x2000000000000uLL;
  }

  v13 = *(v5 + 2);
  if ((v13 & 0x100000) != 0)
  {
    self->_wifiModelVersion = *(a3 + 91);
    *(&self->_has + 2) |= 0x100000u;
    v13 = *(v5 + 2);
  }

  if ((v13 & 0x80000) != 0)
  {
    self->_wifiModelConfidenceLevel = *(a3 + 90);
    *(&self->_has + 2) |= 0x80000u;
  }

  v14 = *v5;
  if ((*v5 & 0x1000000000000) != 0)
  {
    self->_mlPredictedCellBW = *(a3 + 53);
    *&self->_has |= 0x1000000000000uLL;
    v14 = *(a3 + 50);
    if ((v14 & 0x10000) == 0)
    {
LABEL_75:
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_181;
    }
  }

  else if ((v14 & 0x10000) == 0)
  {
    goto LABEL_75;
  }

  self->_cellModelVersion = *(a3 + 21);
  *&self->_has |= 0x10000uLL;
  v14 = *(a3 + 50);
  if ((v14 & 0x8000) == 0)
  {
LABEL_76:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_181:
  self->_cellModelConfidenceLevel = *(a3 + 20);
  *&self->_has |= 0x8000uLL;
  if ((*(a3 + 50) & 0x2000) != 0)
  {
LABEL_77:
    self->_cellEstimatedBW = *(a3 + 18);
    *&self->_has |= 0x2000uLL;
  }

LABEL_78:
  if (*(a3 + 3))
  {
    [(AWDThroughputEvaluation *)self setAppType:?];
  }

  v15 = *(v5 + 2);
  if ((v15 & 0x10) != 0)
  {
    self->_tcpRTTAvg = *(a3 + 75);
    *(&self->_has + 2) |= 0x10u;
    v15 = *(v5 + 2);
    if ((v15 & 0x20) == 0)
    {
LABEL_82:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  else if ((v15 & 0x20) == 0)
  {
    goto LABEL_82;
  }

  self->_tcpRTTmin = *(a3 + 76);
  *(&self->_has + 2) |= 0x20u;
  if ((*(v5 + 2) & 0x40) != 0)
  {
LABEL_83:
    self->_tcpRTTvar = *(a3 + 77);
    *(&self->_has + 2) |= 0x40u;
  }

LABEL_84:
  if ((*v5 & 0x8000000000000000) != 0)
  {
    self->_ratioDupeBytes = *(a3 + 70);
    *&self->_has |= 0x8000000000000000;
  }

  if (v5[8])
  {
    self->_ratioOOBBytes = *(a3 + 71);
    *(&self->_has + 2) |= 1u;
  }

  v16 = *v5;
  if ((*v5 & 0x400) != 0)
  {
    self->_cellARFCN = *(a3 + 15);
    *&self->_has |= 0x400uLL;
    v16 = *(a3 + 50);
    if ((v16 & 0x1000) == 0)
    {
LABEL_90:
      if ((v16 & 0x800) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_188;
    }
  }

  else if ((v16 & 0x1000) == 0)
  {
    goto LABEL_90;
  }

  self->_cellChannelBW = *(a3 + 17);
  *&self->_has |= 0x1000uLL;
  v16 = *(a3 + 50);
  if ((v16 & 0x800) == 0)
  {
LABEL_91:
    if ((v16 & 0x200000000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_189;
  }

LABEL_188:
  self->_cellBandInfo = *(a3 + 16);
  *&self->_has |= 0x800uLL;
  v16 = *(a3 + 50);
  if ((v16 & 0x200000000000) == 0)
  {
LABEL_92:
    if ((v16 & 0x800000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_189:
  self->_maxDLCAConfigured = *(a3 + 50);
  *&self->_has |= 0x200000000000uLL;
  if ((*(a3 + 50) & 0x800000000000) != 0)
  {
LABEL_93:
    self->_maxULCAConfigured = *(a3 + 52);
    *&self->_has |= 0x800000000000uLL;
  }

LABEL_94:
  v17 = *(v5 + 2);
  if ((v17 & 0x10000) != 0)
  {
    self->_wifChannelBW = *(a3 + 87);
    *(&self->_has + 2) |= 0x10000u;
    v17 = *(v5 + 2);
    if ((v17 & 0x20000) == 0)
    {
LABEL_96:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_96;
  }

  self->_wifChannelType = *(a3 + 88);
  *(&self->_has + 2) |= 0x20000u;
  if ((*(v5 + 2) & 0x40000) != 0)
  {
LABEL_97:
    self->_wifiCapability = *(a3 + 89);
    *(&self->_has + 2) |= 0x40000u;
  }

LABEL_98:
  if (v5[4])
  {
    self->_estimatedSpeed = *(a3 + 37);
    *&self->_has |= 0x100000000uLL;
  }

  v18 = *(v5 + 2);
  if ((v18 & 0x10000000) != 0)
  {
    self->_cellNsaEnabled = *(a3 + 396);
    *(&self->_has + 2) |= 0x10000000u;
    v18 = *(v5 + 2);
  }

  if ((v18 & 0x20000000) != 0)
  {
    self->_isFR1 = *(a3 + 397);
    *(&self->_has + 2) |= 0x20000000u;
  }

  v19 = *v5;
  if ((*v5 & 0x20000) != 0)
  {
    self->_cellNrRSRP = *(a3 + 22);
    *&self->_has |= 0x20000uLL;
    v19 = *(a3 + 50);
    if ((v19 & 0x40000) == 0)
    {
LABEL_106:
      if ((v19 & 0x80000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_196;
    }
  }

  else if ((v19 & 0x40000) == 0)
  {
    goto LABEL_106;
  }

  self->_cellNrRSRQ = *(a3 + 23);
  *&self->_has |= 0x40000uLL;
  v19 = *(a3 + 50);
  if ((v19 & 0x80000) == 0)
  {
LABEL_107:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_197;
  }

LABEL_196:
  self->_cellNrSNR = *(a3 + 24);
  *&self->_has |= 0x80000uLL;
  v19 = *(a3 + 50);
  if ((v19 & 0x4000) == 0)
  {
LABEL_108:
    if ((v19 & 0x80000000000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_197:
  self->_cellLteRSRQ = *(a3 + 19);
  *&self->_has |= 0x4000uLL;
  if ((*(a3 + 50) & 0x80000000000000) != 0)
  {
LABEL_109:
    self->_pActualLowBandwidth = *(a3 + 60);
    *&self->_has |= 0x80000000000000uLL;
  }

LABEL_110:
  v20 = *(v5 + 2);
  if ((v20 & 0x2000000) != 0)
  {
    self->_wifimcsindex = *(a3 + 96);
    *(&self->_has + 2) |= 0x2000000u;
    v20 = *(v5 + 2);
    if ((v20 & 0x800000) == 0)
    {
LABEL_112:
      if ((v20 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_201;
    }
  }

  else if ((v20 & 0x800000) == 0)
  {
    goto LABEL_112;
  }

  self->_wifiguardinterval = *(a3 + 94);
  *(&self->_has + 2) |= 0x800000u;
  v20 = *(v5 + 2);
  if ((v20 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v20 & 0x400000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_202;
  }

LABEL_201:
  self->_wifinumberOfSpatialStreams = *(a3 + 97);
  *(&self->_has + 2) |= 0x4000000u;
  v20 = *(v5 + 2);
  if ((v20 & 0x400000) == 0)
  {
LABEL_114:
    if ((v20 & 0x1000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_202:
  self->_wifichannel = *(a3 + 93);
  *(&self->_has + 2) |= 0x400000u;
  if ((*(v5 + 2) & 0x1000000) != 0)
  {
LABEL_115:
    self->_wifilowDataMode = *(a3 + 95);
    *(&self->_has + 2) |= 0x1000000u;
  }

LABEL_116:
  v21 = *v5;
  if ((*v5 & 0x10000000000) != 0)
  {
    self->_isWfiCaptive = *(a3 + 45);
    *&self->_has |= 0x10000000000uLL;
    v21 = *(a3 + 50);
  }

  if ((v21 & 0x80) != 0)
  {
    self->_btWiFiCoexState = *(a3 + 12);
    *&self->_has |= 0x80uLL;
  }

  if (v5[8] < 0)
  {
    self->_totalConfiguredBw = *(a3 + 78);
    *(&self->_has + 2) |= 0x80u;
  }

  v22 = *v5;
  if ((*v5 & 0x10000000000000) != 0)
  {
    self->_nrConfiguredBw = *(a3 + 57);
    *&self->_has |= 0x10000000000000uLL;
    v22 = *(a3 + 50);
  }

  if ((v22 & 0x40000000000000) != 0)
  {
    self->_nrTotalScheduledMimoLayers = *(a3 + 59);
    *&self->_has |= 0x40000000000000uLL;
  }

  if (v5[9])
  {
    self->_totalConfiguredMimoLayers = *(a3 + 79);
    *(&self->_has + 2) |= 0x100u;
  }

  v23 = *v5;
  if ((*v5 & 0x100000000000) != 0)
  {
    self->_lteMaxScheduledMimoLayersInACell = *(a3 + 49);
    *&self->_has |= 0x100000000000uLL;
    v23 = *(a3 + 50);
    if ((v23 & 0x20000000000000) == 0)
    {
LABEL_130:
      if ((v23 & 0x2000000) == 0)
      {
        return;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 0x20000000000000) == 0)
  {
    goto LABEL_130;
  }

  self->_nrMaxDlModulation = *(a3 + 58);
  *&self->_has |= 0x20000000000000uLL;
  if ((*(a3 + 50) & 0x2000000) == 0)
  {
    return;
  }

LABEL_131:
  self->_coldStartType = *(a3 + 30);
  *&self->_has |= 0x2000000uLL;
}

@end
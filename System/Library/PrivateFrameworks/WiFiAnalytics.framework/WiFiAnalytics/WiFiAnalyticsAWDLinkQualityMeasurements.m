@interface WiFiAnalyticsAWDLinkQualityMeasurements
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAccessPointOUI:(BOOL)a3;
- (void)setHasAvailWLANDurMS:(BOOL)a3;
- (void)setHasAvailWLANRxDurMS:(BOOL)a3;
- (void)setHasAvailWLANTxDurMS:(BOOL)a3;
- (void)setHasAvgTxLatencyMS:(BOOL)a3;
- (void)setHasBTAntennaDurMS:(BOOL)a3;
- (void)setHasBaselineThroughput:(BOOL)a3;
- (void)setHasCCA:(BOOL)a3;
- (void)setHasConcurrentIntDurMS:(BOOL)a3;
- (void)setHasDelayedThroughput:(BOOL)a3;
- (void)setHasExpectedThroughput:(BOOL)a3;
- (void)setHasHighRxDataPERFalse:(BOOL)a3;
- (void)setHasHighRxDataPERTrue:(BOOL)a3;
- (void)setHasHighRxDecryptErrsFalse:(BOOL)a3;
- (void)setHasHighRxDecryptErrsTrue:(BOOL)a3;
- (void)setHasHighRxDupsFalse:(BOOL)a3;
- (void)setHasHighRxDupsTrue:(BOOL)a3;
- (void)setHasHighRxFCSErrsFalse:(BOOL)a3;
- (void)setHasHighRxFCSErrsTrue:(BOOL)a3;
- (void)setHasHighRxOverflowsFalse:(BOOL)a3;
- (void)setHasHighRxOverflowsTrue:(BOOL)a3;
- (void)setHasHighRxPhyPERFalse:(BOOL)a3;
- (void)setHasHighRxPhyPERTrue:(BOOL)a3;
- (void)setHasHighRxReplaysFalse:(BOOL)a3;
- (void)setHasHighRxReplaysTrue:(BOOL)a3;
- (void)setHasHighRxRetriesFalse:(BOOL)a3;
- (void)setHasHighRxRetriesTrue:(BOOL)a3;
- (void)setHasHighTxLatencyFalse:(BOOL)a3;
- (void)setHasHighTxLatencyTrue:(BOOL)a3;
- (void)setHasHighTxPerFalse:(BOOL)a3;
- (void)setHasHighTxPerTrue:(BOOL)a3;
- (void)setHasHighTxRetriesFalse:(BOOL)a3;
- (void)setHasHighTxRetriesTrue:(BOOL)a3;
- (void)setHasInfraDutyCycle:(BOOL)a3;
- (void)setHasInputThroughput:(BOOL)a3;
- (void)setHasIs2GBand:(BOOL)a3;
- (void)setHasIsFGTraffic:(BOOL)a3;
- (void)setHasLTECoexDurationMS:(BOOL)a3;
- (void)setHasLastScanReason:(BOOL)a3;
- (void)setHasLowAvailWLANDurFalse:(BOOL)a3;
- (void)setHasLowAvailWLANDurTrue:(BOOL)a3;
- (void)setHasLowAvailWLANRxDurFalse:(BOOL)a3;
- (void)setHasLowAvailWLANRxDurTrue:(BOOL)a3;
- (void)setHasLowAvailWLANTxDurFalse:(BOOL)a3;
- (void)setHasLowAvailWLANTxDurTrue:(BOOL)a3;
- (void)setHasLowTxAMPDUDensityFalse:(BOOL)a3;
- (void)setHasLowTxAMPDUDensityTrue:(BOOL)a3;
- (void)setHasLowTxPhyRateFalse:(BOOL)a3;
- (void)setHasLowTxPhyRateTrue:(BOOL)a3;
- (void)setHasMaxQueueFullDurMS:(BOOL)a3;
- (void)setHasMeasurementDurMS:(BOOL)a3;
- (void)setHasOffChanDurMS:(BOOL)a3;
- (void)setHasOutputThroughput:(BOOL)a3;
- (void)setHasPhyRxActivityDurMS:(BOOL)a3;
- (void)setHasPhyTxActivityDurMS:(BOOL)a3;
- (void)setHasRC1CoexDurationMS:(BOOL)a3;
- (void)setHasRC2CoexDurationMS:(BOOL)a3;
- (void)setHasRSSI:(BOOL)a3;
- (void)setHasRxAmpduTxBaMismatch:(BOOL)a3;
- (void)setHasRxCRSErrs:(BOOL)a3;
- (void)setHasRxDecryErrs:(BOOL)a3;
- (void)setHasRxDupErrs:(BOOL)a3;
- (void)setHasRxFCSErrs:(BOOL)a3;
- (void)setHasRxGoodPlcps:(BOOL)a3;
- (void)setHasRxLowFrameCountFalse:(BOOL)a3;
- (void)setHasRxLowFrameCountTrue:(BOOL)a3;
- (void)setHasRxOvflErrs:(BOOL)a3;
- (void)setHasRxPLCPErrs:(BOOL)a3;
- (void)setHasRxPhyRate:(BOOL)a3;
- (void)setHasRxReplayErrs:(BOOL)a3;
- (void)setHasRxRetries:(BOOL)a3;
- (void)setHasRxThroughput:(BOOL)a3;
- (void)setHasSNR:(BOOL)a3;
- (void)setHasSymptomsFails:(BOOL)a3;
- (void)setHasTVPMActiveDurationMS:(BOOL)a3;
- (void)setHasTestThroughput:(BOOL)a3;
- (void)setHasTimeSinceLastRecovery:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTxAMPDUDensity:(BOOL)a3;
- (void)setHasTxCompBytes:(BOOL)a3;
- (void)setHasTxCompPkts:(BOOL)a3;
- (void)setHasTxDelayBytes:(BOOL)a3;
- (void)setHasTxExpectedAMPDUDensity:(BOOL)a3;
- (void)setHasTxFails:(BOOL)a3;
- (void)setHasTxFrames:(BOOL)a3;
- (void)setHasTxLowFrameCountFalse:(BOOL)a3;
- (void)setHasTxLowFrameCountTrue:(BOOL)a3;
- (void)setHasTxOutputBelowExpectedFalse:(BOOL)a3;
- (void)setHasTxOutputBelowExpectedTrue:(BOOL)a3;
- (void)setHasTxOutputBelowInputFalse:(BOOL)a3;
- (void)setHasTxOutputBelowInputTrue:(BOOL)a3;
- (void)setHasTxPhyRate:(BOOL)a3;
- (void)setHasTxQueueFullFalse:(BOOL)a3;
- (void)setHasTxQueueFullTrue:(BOOL)a3;
- (void)setHasTxRetries:(BOOL)a3;
- (void)setHasTxSubBytes:(BOOL)a3;
- (void)setHasTxSubPkts:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDLinkQualityMeasurements

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasTxOutputBelowExpectedTrue:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasTxOutputBelowExpectedFalse:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasTxOutputBelowInputTrue:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasTxOutputBelowInputFalse:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasTxLowFrameCountTrue:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasTxLowFrameCountFalse:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasRxLowFrameCountTrue:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasRxLowFrameCountFalse:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasHighTxLatencyTrue:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasHighTxLatencyFalse:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasLowTxPhyRateTrue:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasLowTxPhyRateFalse:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasHighTxPerTrue:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasHighTxPerFalse:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasHighTxRetriesTrue:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasHighTxRetriesFalse:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasTxQueueFullTrue:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasTxQueueFullFalse:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasLowTxAMPDUDensityTrue:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasLowTxAMPDUDensityFalse:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasHighRxRetriesTrue:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasHighRxRetriesFalse:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasHighRxPhyPERTrue:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasHighRxPhyPERFalse:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasHighRxFCSErrsTrue:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasHighRxFCSErrsFalse:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasHighRxOverflowsTrue:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasHighRxOverflowsFalse:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasHighRxDupsTrue:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasHighRxDupsFalse:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasHighRxReplaysTrue:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasHighRxReplaysFalse:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasHighRxDecryptErrsTrue:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasHighRxDecryptErrsFalse:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasHighRxDataPERTrue:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasHighRxDataPERFalse:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasLowAvailWLANDurTrue:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasLowAvailWLANDurFalse:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasLowAvailWLANTxDurTrue:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasLowAvailWLANTxDurFalse:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasLowAvailWLANRxDurTrue:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasLowAvailWLANRxDurFalse:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasCCA:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasRSSI:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTxPhyRate:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasRxPhyRate:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasTxAMPDUDensity:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasMeasurementDurMS:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasConcurrentIntDurMS:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasTVPMActiveDurationMS:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasPhyTxActivityDurMS:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasPhyRxActivityDurMS:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTxSubBytes:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasTxCompBytes:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasTxDelayBytes:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasOffChanDurMS:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTxSubPkts:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasTxCompPkts:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasMaxQueueFullDurMS:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasAvgTxLatencyMS:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasBTAntennaDurMS:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasOutputThroughput:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasInputThroughput:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasExpectedThroughput:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasDelayedThroughput:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasAvailWLANDurMS:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasAvailWLANTxDurMS:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasAvailWLANRxDurMS:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasTxRetries:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasTxFails:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasTxFrames:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasRxOvflErrs:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasRxFCSErrs:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasRxPLCPErrs:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasRxCRSErrs:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRxDupErrs:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRxReplayErrs:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasRxDecryErrs:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRxRetries:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasRxGoodPlcps:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasSNR:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasTxExpectedAMPDUDensity:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasRC1CoexDurationMS:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasRC2CoexDurationMS:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasLTECoexDurationMS:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasRxThroughput:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasRxAmpduTxBaMismatch:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasSymptomsFails:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasIs2GBand:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasIsFGTraffic:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasBaselineThroughput:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasTestThroughput:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasInfraDutyCycle:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasLastScanReason:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasAccessPointOUI:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setHasTimeSinceLastRecovery:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDLinkQualityMeasurements;
  v4 = [(WiFiAnalyticsAWDLinkQualityMeasurements *)&v8 description];
  v5 = [(WiFiAnalyticsAWDLinkQualityMeasurements *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x8000) != 0)
  {
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v57 forKey:@"timestamp"];

    v5 = *(&self->_has + 1);
    if ((v5 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_136;
    }
  }

  else if ((v5 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txOutputBelowExpectedTrue];
  [v3 setObject:v58 forKey:@"TxOutputBelowExpected_true"];

  v5 = *(&self->_has + 1);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_137;
  }

LABEL_136:
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txOutputBelowExpectedFalse];
  [v3 setObject:v59 forKey:@"TxOutputBelowExpected_false"];

  v5 = *(&self->_has + 1);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_138;
  }

LABEL_137:
  v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txOutputBelowInputTrue];
  [v3 setObject:v60 forKey:@"TxOutputBelowInput_true"];

  v5 = *(&self->_has + 1);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_139;
  }

LABEL_138:
  v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txOutputBelowInputFalse];
  [v3 setObject:v61 forKey:@"TxOutputBelowInput_false"];

  v5 = *(&self->_has + 1);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_140;
  }

LABEL_139:
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txLowFrameCountTrue];
  [v3 setObject:v62 forKey:@"TxLowFrameCount_true"];

  v5 = *(&self->_has + 1);
  if ((v5 & 0x800000) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_141;
  }

LABEL_140:
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txLowFrameCountFalse];
  [v3 setObject:v63 forKey:@"TxLowFrameCount_false"];

  v5 = *(&self->_has + 1);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_141:
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxLowFrameCountTrue];
  [v3 setObject:v64 forKey:@"RxLowFrameCount_true"];

  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxLowFrameCountFalse];
    [v3 setObject:v6 forKey:@"RxLowFrameCount_false"];
  }

LABEL_11:
  v7 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highTxLatencyTrue];
    [v3 setObject:v65 forKey:@"HighTxLatency_true"];

    v7 = *p_has;
    if ((*p_has & 0x10000000) == 0)
    {
LABEL_13:
      if ((v7 & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_145;
    }
  }

  else if ((v7 & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highTxLatencyFalse];
  [v3 setObject:v66 forKey:@"HighTxLatency_false"];

  v7 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_146;
  }

LABEL_145:
  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowTxPhyRateTrue];
  [v3 setObject:v67 forKey:@"LowTxPhyRate_true"];

  v7 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_147;
  }

LABEL_146:
  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowTxPhyRateFalse];
  [v3 setObject:v68 forKey:@"LowTxPhyRate_false"];

  v7 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_148;
  }

LABEL_147:
  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highTxPerTrue];
  [v3 setObject:v69 forKey:@"HighTxPer_true"];

  v7 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_17:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_149;
  }

LABEL_148:
  v70 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highTxPerFalse];
  [v3 setObject:v70 forKey:@"HighTxPer_false"];

  v7 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_18:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_149:
  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highTxRetriesTrue];
  [v3 setObject:v71 forKey:@"HighTxRetries_true"];

  if ((*p_has & 0x100000000) != 0)
  {
LABEL_19:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highTxRetriesFalse];
    [v3 setObject:v8 forKey:@"HighTxRetries_false"];
  }

LABEL_20:
  v9 = *(&self->_has + 1);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txQueueFullTrue];
    [v3 setObject:v10 forKey:@"TxQueueFull_true"];

    v9 = *(&self->_has + 1);
  }

  if ((v9 & 0x40000000) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txQueueFullFalse];
    [v3 setObject:v11 forKey:@"TxQueueFull_false"];
  }

  v12 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    v72 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowTxAMPDUDensityTrue];
    [v3 setObject:v72 forKey:@"LowTxAMPDUDensity_true"];

    v12 = *p_has;
    if ((*p_has & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v12 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_153;
    }
  }

  else if ((v12 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowTxAMPDUDensityFalse];
  [v3 setObject:v73 forKey:@"LowTxAMPDUDensity_false"];

  v12 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_27:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_154;
  }

LABEL_153:
  v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxRetriesTrue];
  [v3 setObject:v74 forKey:@"HighRxRetries_true"];

  v12 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_155;
  }

LABEL_154:
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxRetriesFalse];
  [v3 setObject:v75 forKey:@"HighRxRetries_false"];

  v12 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_29:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_156;
  }

LABEL_155:
  v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxPhyPERTrue];
  [v3 setObject:v76 forKey:@"HighRxPhyPER_true"];

  v12 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_157;
  }

LABEL_156:
  v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxPhyPERFalse];
  [v3 setObject:v77 forKey:@"HighRxPhyPER_false"];

  v12 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_31:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_158;
  }

LABEL_157:
  v78 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxFCSErrsTrue];
  [v3 setObject:v78 forKey:@"HighRxFCSErrs_true"];

  v12 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_32:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_159;
  }

LABEL_158:
  v79 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxFCSErrsFalse];
  [v3 setObject:v79 forKey:@"HighRxFCSErrs_false"];

  v12 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_33:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_160;
  }

LABEL_159:
  v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxOverflowsTrue];
  [v3 setObject:v80 forKey:@"HighRxOverflows_true"];

  v12 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_34:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_161;
  }

LABEL_160:
  v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxOverflowsFalse];
  [v3 setObject:v81 forKey:@"HighRxOverflows_false"];

  v12 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_35:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_162;
  }

LABEL_161:
  v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxDupsTrue];
  [v3 setObject:v82 forKey:@"HighRxDups_true"];

  v12 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_36:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_163;
  }

LABEL_162:
  v83 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxDupsFalse];
  [v3 setObject:v83 forKey:@"HighRxDups_false"];

  v12 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_37:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_164;
  }

LABEL_163:
  v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxReplaysTrue];
  [v3 setObject:v84 forKey:@"HighRxReplays_true"];

  v12 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_38:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_165;
  }

LABEL_164:
  v85 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxReplaysFalse];
  [v3 setObject:v85 forKey:@"HighRxReplays_false"];

  v12 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_39:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_166;
  }

LABEL_165:
  v86 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxDecryptErrsTrue];
  [v3 setObject:v86 forKey:@"HighRxDecryptErrs_true"];

  v12 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_40:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_167;
  }

LABEL_166:
  v87 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxDecryptErrsFalse];
  [v3 setObject:v87 forKey:@"HighRxDecryptErrs_false"];

  v12 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_41:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_168;
  }

LABEL_167:
  v88 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxDataPERTrue];
  [v3 setObject:v88 forKey:@"HighRxDataPER_true"];

  v12 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_42:
    if ((v12 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

LABEL_168:
  v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highRxDataPERFalse];
  [v3 setObject:v89 forKey:@"HighRxDataPER_false"];

  v12 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_170;
  }

LABEL_169:
  v90 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowAvailWLANDurTrue];
  [v3 setObject:v90 forKey:@"LowAvailWLANDur_true"];

  v12 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_171;
  }

LABEL_170:
  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowAvailWLANDurFalse];
  [v3 setObject:v91 forKey:@"LowAvailWLANDur_false"];

  v12 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_172;
  }

LABEL_171:
  v92 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowAvailWLANTxDurTrue];
  [v3 setObject:v92 forKey:@"LowAvailWLANTxDur_true"];

  v12 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_173;
  }

LABEL_172:
  v93 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowAvailWLANTxDurFalse];
  [v3 setObject:v93 forKey:@"LowAvailWLANTxDur_false"];

  v12 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v12 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_174;
  }

LABEL_173:
  v94 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowAvailWLANRxDurTrue];
  [v3 setObject:v94 forKey:@"LowAvailWLANRxDur_true"];

  v12 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_175;
  }

LABEL_174:
  v95 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowAvailWLANRxDurFalse];
  [v3 setObject:v95 forKey:@"LowAvailWLANRxDur_false"];

  v12 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_49:
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_175:
  v96 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_cCA];
  [v3 setObject:v96 forKey:@"CCA"];

  if ((*p_has & 0x400000000000000) != 0)
  {
LABEL_50:
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_rSSI];
    [v3 setObject:v13 forKey:@"RSSI"];
  }

LABEL_51:
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20000000) != 0)
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txPhyRate];
    [v3 setObject:v97 forKey:@"TxPhyRate"];

    v14 = *(&self->_has + 1);
    if ((v14 & 0x40) == 0)
    {
LABEL_53:
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v14 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  v98 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxPhyRate];
  [v3 setObject:v98 forKey:@"RxPhyRate"];

  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txAMPDUDensity];
    [v3 setObject:v15 forKey:@"TxAMPDUDensity"];
  }

LABEL_55:
  v16 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_measurementDurMS];
    [v3 setObject:v17 forKey:@"MeasurementDurMS"];

    v16 = *p_has;
  }

  if ((v16 & 0x200) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_concurrentIntDurMS];
    [v3 setObject:v18 forKey:@"ConcurrentIntDurMS"];
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tVPMActiveDurationMS];
    [v3 setObject:v19 forKey:@"TVPMActiveDurationMS"];
  }

  v20 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_phyTxActivityDurMS];
    [v3 setObject:v21 forKey:@"PhyTxActivityDurMS"];

    v20 = *p_has;
  }

  if ((v20 & 0x40000000000000) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_phyRxActivityDurMS];
    [v3 setObject:v22 forKey:@"PhyRxActivityDurMS"];
  }

  v23 = *(&self->_has + 1);
  if ((v23 & 0x200000000) != 0)
  {
    v99 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txSubBytes];
    [v3 setObject:v99 forKey:@"TxSubBytes"];

    v23 = *(&self->_has + 1);
    if ((v23 & 0x20000) == 0)
    {
LABEL_67:
      if ((v23 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v100 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txCompBytes];
  [v3 setObject:v100 forKey:@"TxCompBytes"];

  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txDelayBytes];
    [v3 setObject:v24 forKey:@"TxDelayBytes"];
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_offChanDurMS];
    [v3 setObject:v25 forKey:@"OffChanDurMS"];
  }

  v26 = *(&self->_has + 1);
  if ((v26 & 0x400000000) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txSubPkts];
    [v3 setObject:v27 forKey:@"TxSubPkts"];

    v26 = *(&self->_has + 1);
  }

  if ((v26 & 0x40000) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txCompPkts];
    [v3 setObject:v28 forKey:@"TxCompPkts"];
  }

  v29 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    v101 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_maxQueueFullDurMS];
    [v3 setObject:v101 forKey:@"MaxQueueFullDurMS"];

    v29 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_77:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_185;
    }
  }

  else if ((v29 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  v102 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_avgTxLatencyMS];
  [v3 setObject:v102 forKey:@"AvgTxLatencyMS"];

  v29 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_78:
    if ((v29 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_186;
  }

LABEL_185:
  v103 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_bTAntennaDurMS];
  [v3 setObject:v103 forKey:@"BTAntennaDurMS"];

  v29 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v29 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_187;
  }

LABEL_186:
  v104 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_outputThroughput];
  [v3 setObject:v104 forKey:@"OutputThroughput"];

  v29 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_80:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_188;
  }

LABEL_187:
  v105 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_inputThroughput];
  [v3 setObject:v105 forKey:@"InputThroughput"];

  v29 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_81:
    if ((v29 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_189;
  }

LABEL_188:
  v106 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_expectedThroughput];
  [v3 setObject:v106 forKey:@"ExpectedThroughput"];

  v29 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_82:
    if ((v29 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_190;
  }

LABEL_189:
  v107 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_delayedThroughput];
  [v3 setObject:v107 forKey:@"DelayedThroughput"];

  v29 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_83:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_191;
  }

LABEL_190:
  v108 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_availWLANDurMS];
  [v3 setObject:v108 forKey:@"AvailWLANDurMS"];

  v29 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_84:
    if ((v29 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_191:
  v109 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_availWLANTxDurMS];
  [v3 setObject:v109 forKey:@"AvailWLANTxDurMS"];

  if ((*p_has & 8) != 0)
  {
LABEL_85:
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_availWLANRxDurMS];
    [v3 setObject:v30 forKey:@"AvailWLANRxDurMS"];
  }

LABEL_86:
  v31 = *(&self->_has + 1);
  if ((v31 & 0x100000000) != 0)
  {
    v110 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txRetries];
    [v3 setObject:v110 forKey:@"TxRetries"];

    v31 = *(&self->_has + 1);
    if ((v31 & 0x200000) == 0)
    {
LABEL_88:
      if ((v31 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_195;
    }
  }

  else if ((v31 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  v111 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txFails];
  [v3 setObject:v111 forKey:@"TxFails"];

  v31 = *(&self->_has + 1);
  if ((v31 & 0x400000) == 0)
  {
LABEL_89:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_195:
  v112 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txFrames];
  [v3 setObject:v112 forKey:@"TxFrames"];

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxOvflErrs];
    [v3 setObject:v32 forKey:@"RxOvflErrs"];
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxFCSErrs];
    [v3 setObject:v33 forKey:@"RxFCSErrs"];
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxPLCPErrs];
    [v3 setObject:v34 forKey:@"RxPLCPErrs"];
  }

  v35 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxCRSErrs];
    [v3 setObject:v36 forKey:@"RxCRSErrs"];

    v35 = *p_has;
  }

  if ((v35 & 0x4000000000000000) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxDupErrs];
    [v3 setObject:v37 forKey:@"RxDupErrs"];
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxReplayErrs];
    [v3 setObject:v38 forKey:@"RxReplayErrs"];
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxDecryErrs];
    [v3 setObject:v39 forKey:@"RxDecryErrs"];
  }

  v40 = *(&self->_has + 1);
  if ((v40 & 0x100) != 0)
  {
    v113 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxRetries];
    [v3 setObject:v113 forKey:@"RxRetries"];

    v40 = *(&self->_has + 1);
    if ((v40 & 2) == 0)
    {
LABEL_105:
      if ((v40 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_199;
    }
  }

  else if ((v40 & 2) == 0)
  {
    goto LABEL_105;
  }

  v114 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxGoodPlcps];
  [v3 setObject:v114 forKey:@"RxGoodPlcps"];

  v40 = *(&self->_has + 1);
  if ((v40 & 1) == 0)
  {
LABEL_106:
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_200;
  }

LABEL_199:
  v115 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxFrames];
  [v3 setObject:v115 forKey:@"RxFrames"];

  v40 = *(&self->_has + 1);
  if ((v40 & 0x400) == 0)
  {
LABEL_107:
    if ((v40 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_200:
  v116 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sNR];
  [v3 setObject:v116 forKey:@"SNR"];

  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txExpectedAMPDUDensity];
    [v3 setObject:v41 forKey:@"TxExpectedAMPDUDensity"];
  }

LABEL_109:
  v42 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rC1CoexDurationMS];
    [v3 setObject:v117 forKey:@"RC1CoexDurationMS"];

    v42 = *p_has;
    if ((*p_has & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v42 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v42 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  v118 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rC2CoexDurationMS];
  [v3 setObject:v118 forKey:@"RC2CoexDurationMS"];

  if ((*p_has & 0x4000000000) != 0)
  {
LABEL_112:
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lTECoexDurationMS];
    [v3 setObject:v43 forKey:@"LTECoexDurationMS"];
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxThroughput];
    [v3 setObject:v44 forKey:@"RxThroughput"];
  }

  v45 = *p_has;
  if (*p_has)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_aPTxDataStall];
    [v3 setObject:v46 forKey:@"APTxDataStall"];

    v45 = *p_has;
  }

  if ((v45 & 0x800000000000000) != 0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxAmpduTxBaMismatch];
    [v3 setObject:v47 forKey:@"RxAmpduTxBaMismatch"];
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_symptomsFails];
    [v3 setObject:v48 forKey:@"SymptomsFails"];
  }

  v49 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    v119 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_is2GBand];
    [v3 setObject:v119 forKey:@"Is2GBand"];

    v49 = *p_has;
    if ((*p_has & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v49 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v49 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  v120 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_isFGTraffic];
  [v3 setObject:v120 forKey:@"IsFGTraffic"];

  if ((*p_has & 0x80) != 0)
  {
LABEL_124:
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_baselineThroughput];
    [v3 setObject:v50 forKey:@"BaselineThroughput"];
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_testThroughput];
    [v3 setObject:v51 forKey:@"TestThroughput"];
  }

  v52 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    v121 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_infraDutyCycle];
    [v3 setObject:v121 forKey:@"InfraDutyCycle"];

    v52 = *p_has;
    if ((*p_has & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v52 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v52 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  v122 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lastScanReason];
  [v3 setObject:v122 forKey:@"LastScanReason"];

  if ((*p_has & 2) != 0)
  {
LABEL_130:
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_accessPointOUI];
    [v3 setObject:v53 forKey:@"AccessPointOUI"];
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeSinceLastRecovery];
    [v3 setObject:v54 forKey:@"TimeSinceLastRecovery"];
  }

  v55 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v121 = a3;
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x8000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v5 = *(&self->_has + 1);
    if ((v5 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_138;
    }
  }

  else if ((v5 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  txOutputBelowExpectedTrue = self->_txOutputBelowExpectedTrue;
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_has + 1);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_139;
  }

LABEL_138:
  txOutputBelowExpectedFalse = self->_txOutputBelowExpectedFalse;
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_has + 1);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_140;
  }

LABEL_139:
  txOutputBelowInputTrue = self->_txOutputBelowInputTrue;
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_has + 1);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_141;
  }

LABEL_140:
  txOutputBelowInputFalse = self->_txOutputBelowInputFalse;
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_has + 1);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_142;
  }

LABEL_141:
  txLowFrameCountTrue = self->_txLowFrameCountTrue;
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_has + 1);
  if ((v5 & 0x800000) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_143;
  }

LABEL_142:
  txLowFrameCountFalse = self->_txLowFrameCountFalse;
  PBDataWriterWriteUint64Field();
  v5 = *(&self->_has + 1);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_143:
  rxLowFrameCountTrue = self->_rxLowFrameCountTrue;
  PBDataWriterWriteUint64Field();
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    rxLowFrameCountFalse = self->_rxLowFrameCountFalse;
    PBDataWriterWriteUint64Field();
  }

LABEL_11:
  v7 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    highTxLatencyTrue = self->_highTxLatencyTrue;
    PBDataWriterWriteUint64Field();
    v7 = *p_has;
    if ((*p_has & 0x10000000) == 0)
    {
LABEL_13:
      if ((v7 & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_147;
    }
  }

  else if ((v7 & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  highTxLatencyFalse = self->_highTxLatencyFalse;
  PBDataWriterWriteUint64Field();
  v7 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_148;
  }

LABEL_147:
  lowTxPhyRateTrue = self->_lowTxPhyRateTrue;
  PBDataWriterWriteUint64Field();
  v7 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_149;
  }

LABEL_148:
  lowTxPhyRateFalse = self->_lowTxPhyRateFalse;
  PBDataWriterWriteUint64Field();
  v7 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_150;
  }

LABEL_149:
  highTxPerTrue = self->_highTxPerTrue;
  PBDataWriterWriteUint64Field();
  v7 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_17:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_151;
  }

LABEL_150:
  highTxPerFalse = self->_highTxPerFalse;
  PBDataWriterWriteUint64Field();
  v7 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_18:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_151:
  highTxRetriesTrue = self->_highTxRetriesTrue;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x100000000) != 0)
  {
LABEL_19:
    highTxRetriesFalse = self->_highTxRetriesFalse;
    PBDataWriterWriteUint64Field();
  }

LABEL_20:
  v9 = *(&self->_has + 1);
  if ((v9 & 0x80000000) != 0)
  {
    txQueueFullTrue = self->_txQueueFullTrue;
    PBDataWriterWriteUint64Field();
    v9 = *(&self->_has + 1);
  }

  if ((v9 & 0x40000000) != 0)
  {
    txQueueFullFalse = self->_txQueueFullFalse;
    PBDataWriterWriteUint64Field();
  }

  v12 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    lowTxAMPDUDensityTrue = self->_lowTxAMPDUDensityTrue;
    PBDataWriterWriteUint64Field();
    v12 = *p_has;
    if ((*p_has & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v12 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_155;
    }
  }

  else if ((v12 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  lowTxAMPDUDensityFalse = self->_lowTxAMPDUDensityFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_27:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_156;
  }

LABEL_155:
  highRxRetriesTrue = self->_highRxRetriesTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

LABEL_156:
  highRxRetriesFalse = self->_highRxRetriesFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_29:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_158;
  }

LABEL_157:
  highRxPhyPERTrue = self->_highRxPhyPERTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_30:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_159;
  }

LABEL_158:
  highRxPhyPERFalse = self->_highRxPhyPERFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_31:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_160;
  }

LABEL_159:
  highRxFCSErrsTrue = self->_highRxFCSErrsTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_32:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_161;
  }

LABEL_160:
  highRxFCSErrsFalse = self->_highRxFCSErrsFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_33:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_162;
  }

LABEL_161:
  highRxOverflowsTrue = self->_highRxOverflowsTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_34:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_163;
  }

LABEL_162:
  highRxOverflowsFalse = self->_highRxOverflowsFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_35:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_164;
  }

LABEL_163:
  highRxDupsTrue = self->_highRxDupsTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_36:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_165;
  }

LABEL_164:
  highRxDupsFalse = self->_highRxDupsFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_37:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_166;
  }

LABEL_165:
  highRxReplaysTrue = self->_highRxReplaysTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_38:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_167;
  }

LABEL_166:
  highRxReplaysFalse = self->_highRxReplaysFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_39:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_168;
  }

LABEL_167:
  highRxDecryptErrsTrue = self->_highRxDecryptErrsTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_40:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_169;
  }

LABEL_168:
  highRxDecryptErrsFalse = self->_highRxDecryptErrsFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_41:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

LABEL_169:
  highRxDataPERTrue = self->_highRxDataPERTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_42:
    if ((v12 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_171;
  }

LABEL_170:
  highRxDataPERFalse = self->_highRxDataPERFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v12 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_172;
  }

LABEL_171:
  lowAvailWLANDurTrue = self->_lowAvailWLANDurTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v12 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_173;
  }

LABEL_172:
  lowAvailWLANDurFalse = self->_lowAvailWLANDurFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v12 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_174;
  }

LABEL_173:
  lowAvailWLANTxDurTrue = self->_lowAvailWLANTxDurTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v12 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_175;
  }

LABEL_174:
  lowAvailWLANTxDurFalse = self->_lowAvailWLANTxDurFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v12 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_176;
  }

LABEL_175:
  lowAvailWLANRxDurTrue = self->_lowAvailWLANRxDurTrue;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_177;
  }

LABEL_176:
  lowAvailWLANRxDurFalse = self->_lowAvailWLANRxDurFalse;
  PBDataWriterWriteUint64Field();
  v12 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_49:
    if ((v12 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_177:
  cCA = self->_cCA;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x400000000000000) != 0)
  {
LABEL_50:
    rSSI = self->_rSSI;
    PBDataWriterWriteInt64Field();
  }

LABEL_51:
  v14 = *(&self->_has + 1);
  if ((v14 & 0x20000000) != 0)
  {
    txPhyRate = self->_txPhyRate;
    PBDataWriterWriteUint64Field();
    v14 = *(&self->_has + 1);
    if ((v14 & 0x40) == 0)
    {
LABEL_53:
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v14 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  rxPhyRate = self->_rxPhyRate;
  PBDataWriterWriteUint64Field();
  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    txAMPDUDensity = self->_txAMPDUDensity;
    PBDataWriterWriteUint64Field();
  }

LABEL_55:
  v16 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    measurementDurMS = self->_measurementDurMS;
    PBDataWriterWriteUint64Field();
    v16 = *p_has;
  }

  if ((v16 & 0x200) != 0)
  {
    concurrentIntDurMS = self->_concurrentIntDurMS;
    PBDataWriterWriteUint64Field();
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    tVPMActiveDurationMS = self->_tVPMActiveDurationMS;
    PBDataWriterWriteUint64Field();
  }

  v20 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    phyTxActivityDurMS = self->_phyTxActivityDurMS;
    PBDataWriterWriteUint64Field();
    v20 = *p_has;
  }

  if ((v20 & 0x40000000000000) != 0)
  {
    phyRxActivityDurMS = self->_phyRxActivityDurMS;
    PBDataWriterWriteUint64Field();
  }

  v23 = *(&self->_has + 1);
  if ((v23 & 0x200000000) != 0)
  {
    txSubBytes = self->_txSubBytes;
    PBDataWriterWriteUint64Field();
    v23 = *(&self->_has + 1);
    if ((v23 & 0x20000) == 0)
    {
LABEL_67:
      if ((v23 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  txCompBytes = self->_txCompBytes;
  PBDataWriterWriteUint64Field();
  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    txDelayBytes = self->_txDelayBytes;
    PBDataWriterWriteUint64Field();
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    offChanDurMS = self->_offChanDurMS;
    PBDataWriterWriteUint64Field();
  }

  v26 = *(&self->_has + 1);
  if ((v26 & 0x400000000) != 0)
  {
    txSubPkts = self->_txSubPkts;
    PBDataWriterWriteUint64Field();
    v26 = *(&self->_has + 1);
  }

  if ((v26 & 0x40000) != 0)
  {
    txCompPkts = self->_txCompPkts;
    PBDataWriterWriteUint64Field();
  }

  v29 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    maxQueueFullDurMS = self->_maxQueueFullDurMS;
    PBDataWriterWriteUint64Field();
    v29 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_77:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_187;
    }
  }

  else if ((v29 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  avgTxLatencyMS = self->_avgTxLatencyMS;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_78:
    if ((v29 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_188;
  }

LABEL_187:
  bTAntennaDurMS = self->_bTAntennaDurMS;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v29 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_189;
  }

LABEL_188:
  outputThroughput = self->_outputThroughput;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_80:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_190;
  }

LABEL_189:
  inputThroughput = self->_inputThroughput;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_81:
    if ((v29 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_191;
  }

LABEL_190:
  expectedThroughput = self->_expectedThroughput;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_82:
    if ((v29 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_192;
  }

LABEL_191:
  delayedThroughput = self->_delayedThroughput;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_83:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_193;
  }

LABEL_192:
  availWLANDurMS = self->_availWLANDurMS;
  PBDataWriterWriteUint64Field();
  v29 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_84:
    if ((v29 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_193:
  availWLANTxDurMS = self->_availWLANTxDurMS;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 8) != 0)
  {
LABEL_85:
    availWLANRxDurMS = self->_availWLANRxDurMS;
    PBDataWriterWriteUint64Field();
  }

LABEL_86:
  v31 = *(&self->_has + 1);
  if ((v31 & 0x100000000) != 0)
  {
    txRetries = self->_txRetries;
    PBDataWriterWriteUint64Field();
    v31 = *(&self->_has + 1);
    if ((v31 & 0x200000) == 0)
    {
LABEL_88:
      if ((v31 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_197;
    }
  }

  else if ((v31 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  txFails = self->_txFails;
  PBDataWriterWriteUint64Field();
  v31 = *(&self->_has + 1);
  if ((v31 & 0x400000) == 0)
  {
LABEL_89:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_197:
  txFrames = self->_txFrames;
  PBDataWriterWriteUint64Field();
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    rxOvflErrs = self->_rxOvflErrs;
    PBDataWriterWriteUint64Field();
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    rxFCSErrs = self->_rxFCSErrs;
    PBDataWriterWriteUint64Field();
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    rxPLCPErrs = self->_rxPLCPErrs;
    PBDataWriterWriteUint64Field();
  }

  v35 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    rxCRSErrs = self->_rxCRSErrs;
    PBDataWriterWriteUint64Field();
    v35 = *p_has;
  }

  if ((v35 & 0x4000000000000000) != 0)
  {
    rxDupErrs = self->_rxDupErrs;
    PBDataWriterWriteUint64Field();
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    rxReplayErrs = self->_rxReplayErrs;
    PBDataWriterWriteUint64Field();
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    rxDecryErrs = self->_rxDecryErrs;
    PBDataWriterWriteUint64Field();
  }

  v40 = *(&self->_has + 1);
  if ((v40 & 0x100) != 0)
  {
    rxRetries = self->_rxRetries;
    PBDataWriterWriteUint64Field();
    v40 = *(&self->_has + 1);
    if ((v40 & 2) == 0)
    {
LABEL_105:
      if ((v40 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_201;
    }
  }

  else if ((v40 & 2) == 0)
  {
    goto LABEL_105;
  }

  rxGoodPlcps = self->_rxGoodPlcps;
  PBDataWriterWriteUint64Field();
  v40 = *(&self->_has + 1);
  if ((v40 & 1) == 0)
  {
LABEL_106:
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_202;
  }

LABEL_201:
  rxFrames = self->_rxFrames;
  PBDataWriterWriteUint64Field();
  v40 = *(&self->_has + 1);
  if ((v40 & 0x400) == 0)
  {
LABEL_107:
    if ((v40 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_202:
  sNR = self->_sNR;
  PBDataWriterWriteUint64Field();
  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    txExpectedAMPDUDensity = self->_txExpectedAMPDUDensity;
    PBDataWriterWriteUint64Field();
  }

LABEL_109:
  v42 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    rC1CoexDurationMS = self->_rC1CoexDurationMS;
    PBDataWriterWriteUint64Field();
    v42 = *p_has;
    if ((*p_has & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v42 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v42 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  rC2CoexDurationMS = self->_rC2CoexDurationMS;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x4000000000) != 0)
  {
LABEL_112:
    lTECoexDurationMS = self->_lTECoexDurationMS;
    PBDataWriterWriteUint64Field();
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    rxThroughput = self->_rxThroughput;
    PBDataWriterWriteUint64Field();
  }

  v45 = *p_has;
  if (*p_has)
  {
    aPTxDataStall = self->_aPTxDataStall;
    PBDataWriterWriteUint64Field();
    v45 = *p_has;
  }

  if ((v45 & 0x800000000000000) != 0)
  {
    rxAmpduTxBaMismatch = self->_rxAmpduTxBaMismatch;
    PBDataWriterWriteUint64Field();
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    symptomsFails = self->_symptomsFails;
    PBDataWriterWriteUint64Field();
  }

  v49 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    is2GBand = self->_is2GBand;
    PBDataWriterWriteUint64Field();
    v49 = *p_has;
    if ((*p_has & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v49 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v49 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  isFGTraffic = self->_isFGTraffic;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x80) != 0)
  {
LABEL_124:
    baselineThroughput = self->_baselineThroughput;
    PBDataWriterWriteUint64Field();
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    testThroughput = self->_testThroughput;
    PBDataWriterWriteUint64Field();
  }

  v52 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    infraDutyCycle = self->_infraDutyCycle;
    PBDataWriterWriteUint64Field();
    v52 = *p_has;
    if ((*p_has & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v52 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v52 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  lastScanReason = self->_lastScanReason;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 2) != 0)
  {
LABEL_130:
    accessPointOUI = self->_accessPointOUI;
    PBDataWriterWriteUint64Field();
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    timeSinceLastRecovery = self->_timeSinceLastRecovery;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x8000) != 0)
  {
    v4[80] = self->_timestamp;
    v4[101] |= 0x8000uLL;
    v6 = *(&self->_has + 1);
    if ((v6 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_138;
    }
  }

  else if ((v6 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  v4[91] = self->_txOutputBelowExpectedTrue;
  v4[101] |= 0x4000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_139;
  }

LABEL_138:
  v4[90] = self->_txOutputBelowExpectedFalse;
  v4[101] |= 0x2000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_140;
  }

LABEL_139:
  v4[93] = self->_txOutputBelowInputTrue;
  v4[101] |= 0x10000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_141;
  }

LABEL_140:
  v4[92] = self->_txOutputBelowInputFalse;
  v4[101] |= 0x8000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_142;
  }

LABEL_141:
  v4[89] = self->_txLowFrameCountTrue;
  v4[101] |= 0x1000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x800000) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_143;
  }

LABEL_142:
  v4[88] = self->_txLowFrameCountFalse;
  v4[101] |= 0x800000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_143:
  v4[68] = self->_rxLowFrameCountTrue;
  v4[101] |= 8uLL;
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    v4[67] = self->_rxLowFrameCountFalse;
    v4[101] |= 4uLL;
  }

LABEL_11:
  has = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v4[30] = self->_highTxLatencyTrue;
    v4[100] |= 0x20000000uLL;
    has = self->_has;
    if ((has & 0x10000000) == 0)
    {
LABEL_13:
      if ((has & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_147;
    }
  }

  else if ((has & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  v4[29] = self->_highTxLatencyFalse;
  v4[100] |= 0x10000000uLL;
  has = self->_has;
  if ((has & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((has & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_148;
  }

LABEL_147:
  v4[50] = self->_lowTxPhyRateTrue;
  v4[100] |= 0x2000000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((has & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_149;
  }

LABEL_148:
  v4[49] = self->_lowTxPhyRateFalse;
  v4[100] |= 0x1000000000000uLL;
  has = self->_has;
  if ((has & 0x80000000) == 0)
  {
LABEL_16:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_150;
  }

LABEL_149:
  v4[32] = self->_highTxPerTrue;
  v4[100] |= 0x80000000uLL;
  has = self->_has;
  if ((has & 0x40000000) == 0)
  {
LABEL_17:
    if ((has & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_151;
  }

LABEL_150:
  v4[31] = self->_highTxPerFalse;
  v4[100] |= 0x40000000uLL;
  has = self->_has;
  if ((has & 0x200000000) == 0)
  {
LABEL_18:
    if ((has & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_151:
  v4[34] = self->_highTxRetriesTrue;
  v4[100] |= 0x200000000uLL;
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_19:
    v4[33] = self->_highTxRetriesFalse;
    v4[100] |= 0x100000000uLL;
  }

LABEL_20:
  v8 = *(&self->_has + 1);
  if ((v8 & 0x80000000) != 0)
  {
    v4[96] = self->_txQueueFullTrue;
    v4[101] |= 0x80000000uLL;
    v8 = *(&self->_has + 1);
  }

  if ((v8 & 0x40000000) != 0)
  {
    v4[95] = self->_txQueueFullFalse;
    v4[101] |= 0x40000000uLL;
  }

  v9 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    v4[48] = self->_lowTxAMPDUDensityTrue;
    v4[100] |= 0x800000000000uLL;
    v9 = self->_has;
    if ((v9 & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v9 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_155;
    }
  }

  else if ((v9 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  v4[47] = self->_lowTxAMPDUDensityFalse;
  v4[100] |= 0x400000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_156;
  }

LABEL_155:
  v4[28] = self->_highRxRetriesTrue;
  v4[100] |= 0x8000000uLL;
  v9 = self->_has;
  if ((v9 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

LABEL_156:
  v4[27] = self->_highRxRetriesFalse;
  v4[100] |= 0x4000000uLL;
  v9 = self->_has;
  if ((v9 & 0x800000) == 0)
  {
LABEL_29:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_158;
  }

LABEL_157:
  v4[24] = self->_highRxPhyPERTrue;
  v4[100] |= 0x800000uLL;
  v9 = self->_has;
  if ((v9 & 0x400000) == 0)
  {
LABEL_30:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_159;
  }

LABEL_158:
  v4[23] = self->_highRxPhyPERFalse;
  v4[100] |= 0x400000uLL;
  v9 = self->_has;
  if ((v9 & 0x80000) == 0)
  {
LABEL_31:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_160;
  }

LABEL_159:
  v4[20] = self->_highRxFCSErrsTrue;
  v4[100] |= 0x80000uLL;
  v9 = self->_has;
  if ((v9 & 0x40000) == 0)
  {
LABEL_32:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_161;
  }

LABEL_160:
  v4[19] = self->_highRxFCSErrsFalse;
  v4[100] |= 0x40000uLL;
  v9 = self->_has;
  if ((v9 & 0x200000) == 0)
  {
LABEL_33:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_162;
  }

LABEL_161:
  v4[22] = self->_highRxOverflowsTrue;
  v4[100] |= 0x200000uLL;
  v9 = self->_has;
  if ((v9 & 0x100000) == 0)
  {
LABEL_34:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_163;
  }

LABEL_162:
  v4[21] = self->_highRxOverflowsFalse;
  v4[100] |= 0x100000uLL;
  v9 = self->_has;
  if ((v9 & 0x20000) == 0)
  {
LABEL_35:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_164;
  }

LABEL_163:
  v4[18] = self->_highRxDupsTrue;
  v4[100] |= 0x20000uLL;
  v9 = self->_has;
  if ((v9 & 0x10000) == 0)
  {
LABEL_36:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_165;
  }

LABEL_164:
  v4[17] = self->_highRxDupsFalse;
  v4[100] |= 0x10000uLL;
  v9 = self->_has;
  if ((v9 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_166;
  }

LABEL_165:
  v4[26] = self->_highRxReplaysTrue;
  v4[100] |= 0x2000000uLL;
  v9 = self->_has;
  if ((v9 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_167;
  }

LABEL_166:
  v4[25] = self->_highRxReplaysFalse;
  v4[100] |= 0x1000000uLL;
  v9 = self->_has;
  if ((v9 & 0x8000) == 0)
  {
LABEL_39:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_168;
  }

LABEL_167:
  v4[16] = self->_highRxDecryptErrsTrue;
  v4[100] |= 0x8000uLL;
  v9 = self->_has;
  if ((v9 & 0x4000) == 0)
  {
LABEL_40:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_169;
  }

LABEL_168:
  v4[15] = self->_highRxDecryptErrsFalse;
  v4[100] |= 0x4000uLL;
  v9 = self->_has;
  if ((v9 & 0x2000) == 0)
  {
LABEL_41:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

LABEL_169:
  v4[14] = self->_highRxDataPERTrue;
  v4[100] |= 0x2000uLL;
  v9 = self->_has;
  if ((v9 & 0x1000) == 0)
  {
LABEL_42:
    if ((v9 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_171;
  }

LABEL_170:
  v4[13] = self->_highRxDataPERFalse;
  v4[100] |= 0x1000uLL;
  v9 = self->_has;
  if ((v9 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v9 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_172;
  }

LABEL_171:
  v4[42] = self->_lowAvailWLANDurTrue;
  v4[100] |= 0x20000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v9 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_173;
  }

LABEL_172:
  v4[41] = self->_lowAvailWLANDurFalse;
  v4[100] |= 0x10000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_174;
  }

LABEL_173:
  v4[46] = self->_lowAvailWLANTxDurTrue;
  v4[100] |= 0x200000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_175;
  }

LABEL_174:
  v4[45] = self->_lowAvailWLANTxDurFalse;
  v4[100] |= 0x100000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v9 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_176;
  }

LABEL_175:
  v4[44] = self->_lowAvailWLANRxDurTrue;
  v4[100] |= 0x80000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_177;
  }

LABEL_176:
  v4[43] = self->_lowAvailWLANRxDurFalse;
  v4[100] |= 0x40000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_49:
    if ((v9 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_177:
  v4[9] = self->_cCA;
  v4[100] |= 0x100uLL;
  if ((*&self->_has & 0x400000000000000) != 0)
  {
LABEL_50:
    v4[59] = self->_rSSI;
    v4[100] |= 0x400000000000000uLL;
  }

LABEL_51:
  v10 = *(&self->_has + 1);
  if ((v10 & 0x20000000) != 0)
  {
    v4[94] = self->_txPhyRate;
    v4[101] |= 0x20000000uLL;
    v10 = *(&self->_has + 1);
    if ((v10 & 0x40) == 0)
    {
LABEL_53:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  v4[71] = self->_rxPhyRate;
  v4[101] |= 0x40uLL;
  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    v4[81] = self->_txAMPDUDensity;
    v4[101] |= 0x10000uLL;
  }

LABEL_55:
  v11 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    v4[52] = self->_measurementDurMS;
    v4[100] |= 0x8000000000000uLL;
    v11 = self->_has;
  }

  if ((v11 & 0x200) != 0)
  {
    v4[10] = self->_concurrentIntDurMS;
    v4[100] |= 0x200uLL;
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    v4[77] = self->_tVPMActiveDurationMS;
    v4[101] |= 0x1000uLL;
  }

  v12 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    v4[56] = self->_phyTxActivityDurMS;
    v4[100] |= 0x80000000000000uLL;
    v12 = self->_has;
  }

  if ((v12 & 0x40000000000000) != 0)
  {
    v4[55] = self->_phyRxActivityDurMS;
    v4[100] |= 0x40000000000000uLL;
  }

  v13 = *(&self->_has + 1);
  if ((v13 & 0x200000000) != 0)
  {
    v4[98] = self->_txSubBytes;
    v4[101] |= 0x200000000uLL;
    v13 = *(&self->_has + 1);
    if ((v13 & 0x20000) == 0)
    {
LABEL_67:
      if ((v13 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v4[82] = self->_txCompBytes;
  v4[101] |= 0x20000uLL;
  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    v4[84] = self->_txDelayBytes;
    v4[101] |= 0x80000uLL;
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v4[53] = self->_offChanDurMS;
    v4[100] |= 0x10000000000000uLL;
  }

  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000000) != 0)
  {
    v4[99] = self->_txSubPkts;
    v4[101] |= 0x400000000uLL;
    v14 = *(&self->_has + 1);
  }

  if ((v14 & 0x40000) != 0)
  {
    v4[83] = self->_txCompPkts;
    v4[101] |= 0x40000uLL;
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    v4[51] = self->_maxQueueFullDurMS;
    v4[100] |= 0x4000000000000uLL;
    v15 = self->_has;
    if ((v15 & 0x20) == 0)
    {
LABEL_77:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_187;
    }
  }

  else if ((v15 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  v4[6] = self->_avgTxLatencyMS;
  v4[100] |= 0x20uLL;
  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
LABEL_78:
    if ((v15 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_188;
  }

LABEL_187:
  v4[7] = self->_bTAntennaDurMS;
  v4[100] |= 0x40uLL;
  v15 = self->_has;
  if ((v15 & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_189;
  }

LABEL_188:
  v4[54] = self->_outputThroughput;
  v4[100] |= 0x20000000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000000) == 0)
  {
LABEL_80:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_190;
  }

LABEL_189:
  v4[36] = self->_inputThroughput;
  v4[100] |= 0x800000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800) == 0)
  {
LABEL_81:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_191;
  }

LABEL_190:
  v4[12] = self->_expectedThroughput;
  v4[100] |= 0x800uLL;
  v15 = self->_has;
  if ((v15 & 0x400) == 0)
  {
LABEL_82:
    if ((v15 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_192;
  }

LABEL_191:
  v4[11] = self->_delayedThroughput;
  v4[100] |= 0x400uLL;
  v15 = self->_has;
  if ((v15 & 4) == 0)
  {
LABEL_83:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_193;
  }

LABEL_192:
  v4[3] = self->_availWLANDurMS;
  v4[100] |= 4uLL;
  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_84:
    if ((v15 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_193:
  v4[5] = self->_availWLANTxDurMS;
  v4[100] |= 0x10uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_85:
    v4[4] = self->_availWLANRxDurMS;
    v4[100] |= 8uLL;
  }

LABEL_86:
  v16 = *(&self->_has + 1);
  if ((v16 & 0x100000000) != 0)
  {
    v4[97] = self->_txRetries;
    v4[101] |= 0x100000000uLL;
    v16 = *(&self->_has + 1);
    if ((v16 & 0x200000) == 0)
    {
LABEL_88:
      if ((v16 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_197;
    }
  }

  else if ((v16 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  v4[86] = self->_txFails;
  v4[101] |= 0x200000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x400000) == 0)
  {
LABEL_89:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_197:
  v4[87] = self->_txFrames;
  v4[101] |= 0x400000uLL;
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    v4[69] = self->_rxOvflErrs;
    v4[101] |= 0x10uLL;
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    v4[64] = self->_rxFCSErrs;
    v4[100] |= 0x8000000000000000;
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    v4[70] = self->_rxPLCPErrs;
    v4[101] |= 0x20uLL;
  }

  v17 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    v4[61] = self->_rxCRSErrs;
    v4[100] |= 0x1000000000000000uLL;
    v17 = self->_has;
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    v4[63] = self->_rxDupErrs;
    v4[100] |= 0x4000000000000000uLL;
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    v4[72] = self->_rxReplayErrs;
    v4[101] |= 0x80uLL;
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    v4[62] = self->_rxDecryErrs;
    v4[100] |= 0x2000000000000000uLL;
  }

  v18 = *(&self->_has + 1);
  if ((v18 & 0x100) != 0)
  {
    v4[73] = self->_rxRetries;
    v4[101] |= 0x100uLL;
    v18 = *(&self->_has + 1);
    if ((v18 & 2) == 0)
    {
LABEL_105:
      if ((v18 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_201;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_105;
  }

  v4[66] = self->_rxGoodPlcps;
  v4[101] |= 2uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 1) == 0)
  {
LABEL_106:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_202;
  }

LABEL_201:
  v4[65] = self->_rxFrames;
  v4[101] |= 1uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x400) == 0)
  {
LABEL_107:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_202:
  v4[75] = self->_sNR;
  v4[101] |= 0x400uLL;
  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    v4[85] = self->_txExpectedAMPDUDensity;
    v4[101] |= 0x100000uLL;
  }

LABEL_109:
  v19 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    v4[57] = self->_rC1CoexDurationMS;
    v4[100] |= 0x100000000000000uLL;
    v19 = self->_has;
    if ((v19 & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v19 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v19 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  v4[58] = self->_rC2CoexDurationMS;
  v4[100] |= 0x200000000000000uLL;
  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_112:
    v4[39] = self->_lTECoexDurationMS;
    v4[100] |= 0x4000000000uLL;
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    v4[74] = self->_rxThroughput;
    v4[101] |= 0x200uLL;
  }

  v20 = *p_has;
  if (*p_has)
  {
    v4[1] = self->_aPTxDataStall;
    v4[100] |= 1uLL;
    v20 = self->_has;
  }

  if ((v20 & 0x800000000000000) != 0)
  {
    v4[60] = self->_rxAmpduTxBaMismatch;
    v4[100] |= 0x800000000000000uLL;
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    v4[76] = self->_symptomsFails;
    v4[101] |= 0x800uLL;
  }

  v21 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    v4[37] = self->_is2GBand;
    v4[100] |= 0x1000000000uLL;
    v21 = self->_has;
    if ((v21 & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v21 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  v4[38] = self->_isFGTraffic;
  v4[100] |= 0x2000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_124:
    v4[8] = self->_baselineThroughput;
    v4[100] |= 0x80uLL;
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    v4[78] = self->_testThroughput;
    v4[101] |= 0x2000uLL;
  }

  v22 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    v4[35] = self->_infraDutyCycle;
    v4[100] |= 0x400000000uLL;
    v22 = self->_has;
    if ((v22 & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v22 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v22 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  v4[40] = self->_lastScanReason;
  v4[100] |= 0x8000000000uLL;
  if ((*&self->_has & 2) != 0)
  {
LABEL_130:
    v4[2] = self->_accessPointOUI;
    v4[100] |= 2uLL;
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    v4[79] = self->_timeSinceLastRecovery;
    v4[101] |= 0x4000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x8000) != 0)
  {
    v4[80] = self->_timestamp;
    v4[101] |= 0x8000uLL;
    v6 = *(&self->_has + 1);
    if ((v6 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_136;
    }
  }

  else if ((v6 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  v4[91] = self->_txOutputBelowExpectedTrue;
  v4[101] |= 0x4000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_137;
  }

LABEL_136:
  v4[90] = self->_txOutputBelowExpectedFalse;
  v4[101] |= 0x2000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_138;
  }

LABEL_137:
  v4[93] = self->_txOutputBelowInputTrue;
  v4[101] |= 0x10000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_139;
  }

LABEL_138:
  v4[92] = self->_txOutputBelowInputFalse;
  v4[101] |= 0x8000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_140;
  }

LABEL_139:
  v4[89] = self->_txLowFrameCountTrue;
  v4[101] |= 0x1000000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x800000) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_141;
  }

LABEL_140:
  v4[88] = self->_txLowFrameCountFalse;
  v4[101] |= 0x800000uLL;
  v6 = *(&self->_has + 1);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_141:
  v4[68] = self->_rxLowFrameCountTrue;
  v4[101] |= 8uLL;
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    v4[67] = self->_rxLowFrameCountFalse;
    v4[101] |= 4uLL;
  }

LABEL_11:
  has = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v4[30] = self->_highTxLatencyTrue;
    v4[100] |= 0x20000000uLL;
    has = self->_has;
    if ((has & 0x10000000) == 0)
    {
LABEL_13:
      if ((has & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_145;
    }
  }

  else if ((has & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  v4[29] = self->_highTxLatencyFalse;
  v4[100] |= 0x10000000uLL;
  has = self->_has;
  if ((has & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((has & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_146;
  }

LABEL_145:
  v4[50] = self->_lowTxPhyRateTrue;
  v4[100] |= 0x2000000000000uLL;
  has = self->_has;
  if ((has & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((has & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_147;
  }

LABEL_146:
  v4[49] = self->_lowTxPhyRateFalse;
  v4[100] |= 0x1000000000000uLL;
  has = self->_has;
  if ((has & 0x80000000) == 0)
  {
LABEL_16:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_148;
  }

LABEL_147:
  v4[32] = self->_highTxPerTrue;
  v4[100] |= 0x80000000uLL;
  has = self->_has;
  if ((has & 0x40000000) == 0)
  {
LABEL_17:
    if ((has & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_149;
  }

LABEL_148:
  v4[31] = self->_highTxPerFalse;
  v4[100] |= 0x40000000uLL;
  has = self->_has;
  if ((has & 0x200000000) == 0)
  {
LABEL_18:
    if ((has & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_149:
  v4[34] = self->_highTxRetriesTrue;
  v4[100] |= 0x200000000uLL;
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_19:
    v4[33] = self->_highTxRetriesFalse;
    v4[100] |= 0x100000000uLL;
  }

LABEL_20:
  v8 = *(&self->_has + 1);
  if ((v8 & 0x80000000) != 0)
  {
    v4[96] = self->_txQueueFullTrue;
    v4[101] |= 0x80000000uLL;
    v8 = *(&self->_has + 1);
  }

  if ((v8 & 0x40000000) != 0)
  {
    v4[95] = self->_txQueueFullFalse;
    v4[101] |= 0x40000000uLL;
  }

  v9 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    v4[48] = self->_lowTxAMPDUDensityTrue;
    v4[100] |= 0x800000000000uLL;
    v9 = self->_has;
    if ((v9 & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v9 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_153;
    }
  }

  else if ((v9 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  v4[47] = self->_lowTxAMPDUDensityFalse;
  v4[100] |= 0x400000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_154;
  }

LABEL_153:
  v4[28] = self->_highRxRetriesTrue;
  v4[100] |= 0x8000000uLL;
  v9 = self->_has;
  if ((v9 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_155;
  }

LABEL_154:
  v4[27] = self->_highRxRetriesFalse;
  v4[100] |= 0x4000000uLL;
  v9 = self->_has;
  if ((v9 & 0x800000) == 0)
  {
LABEL_29:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_156;
  }

LABEL_155:
  v4[24] = self->_highRxPhyPERTrue;
  v4[100] |= 0x800000uLL;
  v9 = self->_has;
  if ((v9 & 0x400000) == 0)
  {
LABEL_30:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_157;
  }

LABEL_156:
  v4[23] = self->_highRxPhyPERFalse;
  v4[100] |= 0x400000uLL;
  v9 = self->_has;
  if ((v9 & 0x80000) == 0)
  {
LABEL_31:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_158;
  }

LABEL_157:
  v4[20] = self->_highRxFCSErrsTrue;
  v4[100] |= 0x80000uLL;
  v9 = self->_has;
  if ((v9 & 0x40000) == 0)
  {
LABEL_32:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_159;
  }

LABEL_158:
  v4[19] = self->_highRxFCSErrsFalse;
  v4[100] |= 0x40000uLL;
  v9 = self->_has;
  if ((v9 & 0x200000) == 0)
  {
LABEL_33:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_160;
  }

LABEL_159:
  v4[22] = self->_highRxOverflowsTrue;
  v4[100] |= 0x200000uLL;
  v9 = self->_has;
  if ((v9 & 0x100000) == 0)
  {
LABEL_34:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_161;
  }

LABEL_160:
  v4[21] = self->_highRxOverflowsFalse;
  v4[100] |= 0x100000uLL;
  v9 = self->_has;
  if ((v9 & 0x20000) == 0)
  {
LABEL_35:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_162;
  }

LABEL_161:
  v4[18] = self->_highRxDupsTrue;
  v4[100] |= 0x20000uLL;
  v9 = self->_has;
  if ((v9 & 0x10000) == 0)
  {
LABEL_36:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_163;
  }

LABEL_162:
  v4[17] = self->_highRxDupsFalse;
  v4[100] |= 0x10000uLL;
  v9 = self->_has;
  if ((v9 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_164;
  }

LABEL_163:
  v4[26] = self->_highRxReplaysTrue;
  v4[100] |= 0x2000000uLL;
  v9 = self->_has;
  if ((v9 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_165;
  }

LABEL_164:
  v4[25] = self->_highRxReplaysFalse;
  v4[100] |= 0x1000000uLL;
  v9 = self->_has;
  if ((v9 & 0x8000) == 0)
  {
LABEL_39:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_166;
  }

LABEL_165:
  v4[16] = self->_highRxDecryptErrsTrue;
  v4[100] |= 0x8000uLL;
  v9 = self->_has;
  if ((v9 & 0x4000) == 0)
  {
LABEL_40:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_167;
  }

LABEL_166:
  v4[15] = self->_highRxDecryptErrsFalse;
  v4[100] |= 0x4000uLL;
  v9 = self->_has;
  if ((v9 & 0x2000) == 0)
  {
LABEL_41:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_168;
  }

LABEL_167:
  v4[14] = self->_highRxDataPERTrue;
  v4[100] |= 0x2000uLL;
  v9 = self->_has;
  if ((v9 & 0x1000) == 0)
  {
LABEL_42:
    if ((v9 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

LABEL_168:
  v4[13] = self->_highRxDataPERFalse;
  v4[100] |= 0x1000uLL;
  v9 = self->_has;
  if ((v9 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v9 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_170;
  }

LABEL_169:
  v4[42] = self->_lowAvailWLANDurTrue;
  v4[100] |= 0x20000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v9 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_171;
  }

LABEL_170:
  v4[41] = self->_lowAvailWLANDurFalse;
  v4[100] |= 0x10000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_172;
  }

LABEL_171:
  v4[46] = self->_lowAvailWLANTxDurTrue;
  v4[100] |= 0x200000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_173;
  }

LABEL_172:
  v4[45] = self->_lowAvailWLANTxDurFalse;
  v4[100] |= 0x100000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v9 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_174;
  }

LABEL_173:
  v4[44] = self->_lowAvailWLANRxDurTrue;
  v4[100] |= 0x80000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_175;
  }

LABEL_174:
  v4[43] = self->_lowAvailWLANRxDurFalse;
  v4[100] |= 0x40000000000uLL;
  v9 = self->_has;
  if ((v9 & 0x100) == 0)
  {
LABEL_49:
    if ((v9 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_175:
  v4[9] = self->_cCA;
  v4[100] |= 0x100uLL;
  if ((*&self->_has & 0x400000000000000) != 0)
  {
LABEL_50:
    v4[59] = self->_rSSI;
    v4[100] |= 0x400000000000000uLL;
  }

LABEL_51:
  v10 = *(&self->_has + 1);
  if ((v10 & 0x20000000) != 0)
  {
    v4[94] = self->_txPhyRate;
    v4[101] |= 0x20000000uLL;
    v10 = *(&self->_has + 1);
    if ((v10 & 0x40) == 0)
    {
LABEL_53:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  v4[71] = self->_rxPhyRate;
  v4[101] |= 0x40uLL;
  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    v4[81] = self->_txAMPDUDensity;
    v4[101] |= 0x10000uLL;
  }

LABEL_55:
  v11 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    v4[52] = self->_measurementDurMS;
    v4[100] |= 0x8000000000000uLL;
    v11 = self->_has;
  }

  if ((v11 & 0x200) != 0)
  {
    v4[10] = self->_concurrentIntDurMS;
    v4[100] |= 0x200uLL;
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    v4[77] = self->_tVPMActiveDurationMS;
    v4[101] |= 0x1000uLL;
  }

  v12 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    v4[56] = self->_phyTxActivityDurMS;
    v4[100] |= 0x80000000000000uLL;
    v12 = self->_has;
  }

  if ((v12 & 0x40000000000000) != 0)
  {
    v4[55] = self->_phyRxActivityDurMS;
    v4[100] |= 0x40000000000000uLL;
  }

  v13 = *(&self->_has + 1);
  if ((v13 & 0x200000000) != 0)
  {
    v4[98] = self->_txSubBytes;
    v4[101] |= 0x200000000uLL;
    v13 = *(&self->_has + 1);
    if ((v13 & 0x20000) == 0)
    {
LABEL_67:
      if ((v13 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v4[82] = self->_txCompBytes;
  v4[101] |= 0x20000uLL;
  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    v4[84] = self->_txDelayBytes;
    v4[101] |= 0x80000uLL;
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    v4[53] = self->_offChanDurMS;
    v4[100] |= 0x10000000000000uLL;
  }

  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000000) != 0)
  {
    v4[99] = self->_txSubPkts;
    v4[101] |= 0x400000000uLL;
    v14 = *(&self->_has + 1);
  }

  if ((v14 & 0x40000) != 0)
  {
    v4[83] = self->_txCompPkts;
    v4[101] |= 0x40000uLL;
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    v4[51] = self->_maxQueueFullDurMS;
    v4[100] |= 0x4000000000000uLL;
    v15 = self->_has;
    if ((v15 & 0x20) == 0)
    {
LABEL_77:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_185;
    }
  }

  else if ((v15 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  v4[6] = self->_avgTxLatencyMS;
  v4[100] |= 0x20uLL;
  v15 = self->_has;
  if ((v15 & 0x40) == 0)
  {
LABEL_78:
    if ((v15 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_186;
  }

LABEL_185:
  v4[7] = self->_bTAntennaDurMS;
  v4[100] |= 0x40uLL;
  v15 = self->_has;
  if ((v15 & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_187;
  }

LABEL_186:
  v4[54] = self->_outputThroughput;
  v4[100] |= 0x20000000000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800000000) == 0)
  {
LABEL_80:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_188;
  }

LABEL_187:
  v4[36] = self->_inputThroughput;
  v4[100] |= 0x800000000uLL;
  v15 = self->_has;
  if ((v15 & 0x800) == 0)
  {
LABEL_81:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_189;
  }

LABEL_188:
  v4[12] = self->_expectedThroughput;
  v4[100] |= 0x800uLL;
  v15 = self->_has;
  if ((v15 & 0x400) == 0)
  {
LABEL_82:
    if ((v15 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_190;
  }

LABEL_189:
  v4[11] = self->_delayedThroughput;
  v4[100] |= 0x400uLL;
  v15 = self->_has;
  if ((v15 & 4) == 0)
  {
LABEL_83:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_191;
  }

LABEL_190:
  v4[3] = self->_availWLANDurMS;
  v4[100] |= 4uLL;
  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_84:
    if ((v15 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_191:
  v4[5] = self->_availWLANTxDurMS;
  v4[100] |= 0x10uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_85:
    v4[4] = self->_availWLANRxDurMS;
    v4[100] |= 8uLL;
  }

LABEL_86:
  v16 = *(&self->_has + 1);
  if ((v16 & 0x100000000) != 0)
  {
    v4[97] = self->_txRetries;
    v4[101] |= 0x100000000uLL;
    v16 = *(&self->_has + 1);
    if ((v16 & 0x200000) == 0)
    {
LABEL_88:
      if ((v16 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_195;
    }
  }

  else if ((v16 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  v4[86] = self->_txFails;
  v4[101] |= 0x200000uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x400000) == 0)
  {
LABEL_89:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_195:
  v4[87] = self->_txFrames;
  v4[101] |= 0x400000uLL;
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    v4[69] = self->_rxOvflErrs;
    v4[101] |= 0x10uLL;
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    v4[64] = self->_rxFCSErrs;
    v4[100] |= 0x8000000000000000;
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    v4[70] = self->_rxPLCPErrs;
    v4[101] |= 0x20uLL;
  }

  v17 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    v4[61] = self->_rxCRSErrs;
    v4[100] |= 0x1000000000000000uLL;
    v17 = self->_has;
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    v4[63] = self->_rxDupErrs;
    v4[100] |= 0x4000000000000000uLL;
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    v4[72] = self->_rxReplayErrs;
    v4[101] |= 0x80uLL;
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    v4[62] = self->_rxDecryErrs;
    v4[100] |= 0x2000000000000000uLL;
  }

  v18 = *(&self->_has + 1);
  if ((v18 & 0x100) != 0)
  {
    v4[73] = self->_rxRetries;
    v4[101] |= 0x100uLL;
    v18 = *(&self->_has + 1);
    if ((v18 & 2) == 0)
    {
LABEL_105:
      if ((v18 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_199;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_105;
  }

  v4[66] = self->_rxGoodPlcps;
  v4[101] |= 2uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 1) == 0)
  {
LABEL_106:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_200;
  }

LABEL_199:
  v4[65] = self->_rxFrames;
  v4[101] |= 1uLL;
  v18 = *(&self->_has + 1);
  if ((v18 & 0x400) == 0)
  {
LABEL_107:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_200:
  v4[75] = self->_sNR;
  v4[101] |= 0x400uLL;
  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    v4[85] = self->_txExpectedAMPDUDensity;
    v4[101] |= 0x100000uLL;
  }

LABEL_109:
  v19 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    v4[57] = self->_rC1CoexDurationMS;
    v4[100] |= 0x100000000000000uLL;
    v19 = self->_has;
    if ((v19 & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v19 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v19 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  v4[58] = self->_rC2CoexDurationMS;
  v4[100] |= 0x200000000000000uLL;
  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_112:
    v4[39] = self->_lTECoexDurationMS;
    v4[100] |= 0x4000000000uLL;
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    v4[74] = self->_rxThroughput;
    v4[101] |= 0x200uLL;
  }

  v20 = *p_has;
  if (*p_has)
  {
    v4[1] = self->_aPTxDataStall;
    v4[100] |= 1uLL;
    v20 = self->_has;
  }

  if ((v20 & 0x800000000000000) != 0)
  {
    v4[60] = self->_rxAmpduTxBaMismatch;
    v4[100] |= 0x800000000000000uLL;
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    v4[76] = self->_symptomsFails;
    v4[101] |= 0x800uLL;
  }

  v21 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    v4[37] = self->_is2GBand;
    v4[100] |= 0x1000000000uLL;
    v21 = self->_has;
    if ((v21 & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v21 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  v4[38] = self->_isFGTraffic;
  v4[100] |= 0x2000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_124:
    v4[8] = self->_baselineThroughput;
    v4[100] |= 0x80uLL;
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    v4[78] = self->_testThroughput;
    v4[101] |= 0x2000uLL;
  }

  v22 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    v4[35] = self->_infraDutyCycle;
    v4[100] |= 0x400000000uLL;
    v22 = self->_has;
    if ((v22 & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v22 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v22 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  v4[40] = self->_lastScanReason;
  v4[100] |= 0x8000000000uLL;
  if ((*&self->_has & 2) != 0)
  {
LABEL_130:
    v4[2] = self->_accessPointOUI;
    v4[100] |= 2uLL;
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    v4[79] = self->_timeSinceLastRecovery;
    v4[101] |= 0x4000uLL;
  }

  v23 = v4;

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_497;
  }

  v5 = *(&self->_has + 1);
  v6 = v4[101];
  if ((v5 & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_timestamp != v4[80])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_txOutputBelowExpectedTrue != v4[91])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_txOutputBelowExpectedFalse != v4[90])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_txOutputBelowInputTrue != v4[93])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_txOutputBelowInputFalse != v4[92])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_txLowFrameCountTrue != v4[89])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_txLowFrameCountFalse != v4[88])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_rxLowFrameCountTrue != v4[68])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_rxLowFrameCountFalse != v4[67])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_497;
  }

  has = self->_has;
  v8 = v4[100];
  if ((has & 0x20000000) != 0)
  {
    if ((v8 & 0x20000000) == 0 || self->_highTxLatencyTrue != v4[30])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x20000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0 || self->_highTxLatencyFalse != v4[29])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v8 & 0x2000000000000) == 0 || self->_lowTxPhyRateTrue != v4[50])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x2000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v8 & 0x1000000000000) == 0 || self->_lowTxPhyRateFalse != v4[49])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x1000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0 || self->_highTxPerTrue != v4[32])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0 || self->_highTxPerFalse != v4[31])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v8 & 0x200000000) == 0 || self->_highTxRetriesTrue != v4[34])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x200000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) == 0 || self->_highTxRetriesFalse != v4[33])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_txQueueFullTrue != v4[96])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_txQueueFullFalse != v4[95])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v8 & 0x800000000000) == 0 || self->_lowTxAMPDUDensityTrue != v4[48])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x800000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x400000000000) != 0)
  {
    if ((v8 & 0x400000000000) == 0 || self->_lowTxAMPDUDensityFalse != v4[47])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x400000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x8000000) != 0)
  {
    if ((v8 & 0x8000000) == 0 || self->_highRxRetriesTrue != v4[28])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0 || self->_highRxRetriesFalse != v4[27])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0 || self->_highRxPhyPERTrue != v4[24])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v8 & 0x400000) == 0 || self->_highRxPhyPERFalse != v4[23])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x400000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_highRxFCSErrsTrue != v4[20])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_highRxFCSErrsFalse != v4[19])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_highRxOverflowsTrue != v4[22])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_highRxOverflowsFalse != v4[21])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_highRxDupsTrue != v4[18])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_highRxDupsFalse != v4[17])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0 || self->_highRxReplaysTrue != v4[26])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0 || self->_highRxReplaysFalse != v4[25])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_highRxDecryptErrsTrue != v4[16])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0 || self->_highRxDecryptErrsFalse != v4[15])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_highRxDataPERTrue != v4[14])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_highRxDataPERFalse != v4[13])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v8 & 0x20000000000) == 0 || self->_lowAvailWLANDurTrue != v4[42])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x20000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x10000000000) != 0)
  {
    if ((v8 & 0x10000000000) == 0 || self->_lowAvailWLANDurFalse != v4[41])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x10000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x200000000000) != 0)
  {
    if ((v8 & 0x200000000000) == 0 || self->_lowAvailWLANTxDurTrue != v4[46])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x200000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x100000000000) != 0)
  {
    if ((v8 & 0x100000000000) == 0 || self->_lowAvailWLANTxDurFalse != v4[45])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x100000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v8 & 0x80000000000) == 0 || self->_lowAvailWLANRxDurTrue != v4[44])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x80000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v8 & 0x40000000000) == 0 || self->_lowAvailWLANRxDurFalse != v4[43])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x40000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_cCA != v4[9])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x400000000000000) != 0)
  {
    if ((v8 & 0x400000000000000) == 0 || self->_rSSI != v4[59])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x400000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_txPhyRate != v4[94])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_rxPhyRate != v4[71])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_txAMPDUDensity != v4[81])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v8 & 0x8000000000000) == 0 || self->_measurementDurMS != v4[52])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x8000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_concurrentIntDurMS != v4[10])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_tVPMActiveDurationMS != v4[77])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x80000000000000) != 0)
  {
    if ((v8 & 0x80000000000000) == 0 || self->_phyTxActivityDurMS != v4[56])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x80000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x40000000000000) != 0)
  {
    if ((v8 & 0x40000000000000) == 0 || self->_phyRxActivityDurMS != v4[55])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x40000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x200000000) != 0)
  {
    if ((v6 & 0x200000000) == 0 || self->_txSubBytes != v4[98])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x200000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_txCompBytes != v4[82])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_txDelayBytes != v4[84])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x10000000000000) != 0)
  {
    if ((v8 & 0x10000000000000) == 0 || self->_offChanDurMS != v4[53])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x10000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_txSubPkts != v4[99])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_txCompPkts != v4[83])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v8 & 0x4000000000000) == 0 || self->_maxQueueFullDurMS != v4[51])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x4000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_avgTxLatencyMS != v4[6])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_bTAntennaDurMS != v4[7])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x20000000000000) != 0)
  {
    if ((v8 & 0x20000000000000) == 0 || self->_outputThroughput != v4[54])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x20000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v8 & 0x800000000) == 0 || self->_inputThroughput != v4[36])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x800000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_expectedThroughput != v4[12])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0 || self->_delayedThroughput != v4[11])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_availWLANDurMS != v4[3])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_availWLANTxDurMS != v4[5])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_availWLANRxDurMS != v4[4])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0 || self->_txRetries != v4[97])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_txFails != v4[86])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_txFrames != v4[87])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_rxOvflErrs != v4[69])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_497;
  }

  if (has < 0)
  {
    if ((v8 & 0x8000000000000000) == 0 || self->_rxFCSErrs != v4[64])
    {
      goto LABEL_497;
    }
  }

  else if (v8 < 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_rxPLCPErrs != v4[70])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v8 & 0x1000000000000000) == 0 || self->_rxCRSErrs != v4[61])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v8 & 0x4000000000000000) == 0 || self->_rxDupErrs != v4[63])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_rxReplayErrs != v4[72])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) == 0 || self->_rxDecryErrs != v4[62])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x2000000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_rxRetries != v4[73])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_rxGoodPlcps != v4[66])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_497;
  }

  if (v5)
  {
    if ((v6 & 1) == 0 || self->_rxFrames != v4[65])
    {
      goto LABEL_497;
    }
  }

  else if (v6)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_sNR != v4[75])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_txExpectedAMPDUDensity != v4[85])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v8 & 0x100000000000000) == 0 || self->_rC1CoexDurationMS != v4[57])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x100000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x200000000000000) != 0)
  {
    if ((v8 & 0x200000000000000) == 0 || self->_rC2CoexDurationMS != v4[58])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x200000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v8 & 0x4000000000) == 0 || self->_lTECoexDurationMS != v4[39])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x4000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_rxThroughput != v4[74])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_497;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_aPTxDataStall != v4[1])
    {
      goto LABEL_497;
    }
  }

  else if (v8)
  {
    goto LABEL_497;
  }

  if ((has & 0x800000000000000) != 0)
  {
    if ((v8 & 0x800000000000000) == 0 || self->_rxAmpduTxBaMismatch != v4[60])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x800000000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_symptomsFails != v4[76])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x1000000000) != 0)
  {
    if ((v8 & 0x1000000000) == 0 || self->_is2GBand != v4[37])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x1000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x2000000000) != 0)
  {
    if ((v8 & 0x2000000000) == 0 || self->_isFGTraffic != v4[38])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x2000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_baselineThroughput != v4[8])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_497;
  }

  if ((v5 & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_testThroughput != v4[78])
    {
      goto LABEL_497;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v8 & 0x400000000) == 0 || self->_infraDutyCycle != v4[35])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x400000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v8 & 0x8000000000) == 0 || self->_lastScanReason != v4[40])
    {
      goto LABEL_497;
    }
  }

  else if ((v8 & 0x8000000000) != 0)
  {
    goto LABEL_497;
  }

  if ((has & 2) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_492;
    }

LABEL_497:
    v9 = 0;
    goto LABEL_498;
  }

  if ((v8 & 2) == 0 || self->_accessPointOUI != v4[2])
  {
    goto LABEL_497;
  }

LABEL_492:
  if ((v5 & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_timeSinceLastRecovery != v4[79])
    {
      goto LABEL_497;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v4[101] & 0x4000) == 0;
  }

LABEL_498:

  return v9;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  v3 = *(&self->_has + 1);
  if ((v3 & 0x8000) != 0)
  {
    v104 = 2654435761u * self->_timestamp;
    if ((v3 & 0x4000000) != 0)
    {
LABEL_3:
      v103 = 2654435761u * self->_txOutputBelowExpectedTrue;
      if ((v3 & 0x2000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v104 = 0;
    if ((v3 & 0x4000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v103 = 0;
  if ((v3 & 0x2000000) != 0)
  {
LABEL_4:
    v102 = 2654435761u * self->_txOutputBelowExpectedFalse;
    if ((v3 & 0x10000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v102 = 0;
  if ((v3 & 0x10000000) != 0)
  {
LABEL_5:
    v101 = 2654435761u * self->_txOutputBelowInputTrue;
    if ((v3 & 0x8000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v101 = 0;
  if ((v3 & 0x8000000) != 0)
  {
LABEL_6:
    v100 = 2654435761u * self->_txOutputBelowInputFalse;
    if ((v3 & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v100 = 0;
  if ((v3 & 0x1000000) != 0)
  {
LABEL_7:
    v99 = 2654435761u * self->_txLowFrameCountTrue;
    if ((v3 & 0x800000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v99 = 0;
  if ((v3 & 0x800000) != 0)
  {
LABEL_8:
    v98 = 2654435761u * self->_txLowFrameCountFalse;
    if ((v3 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v97 = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v98 = 0;
  if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v97 = 2654435761u * self->_rxLowFrameCountTrue;
  if ((v3 & 4) != 0)
  {
LABEL_10:
    v96 = 2654435761u * self->_rxLowFrameCountFalse;
    goto LABEL_20;
  }

LABEL_19:
  v96 = 0;
LABEL_20:
  v4 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    v95 = 2654435761u * self->_highTxLatencyTrue;
    if ((v4 & 0x10000000) != 0)
    {
LABEL_22:
      v94 = 2654435761u * self->_highTxLatencyFalse;
      if ((v4 & 0x2000000000000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_113;
    }
  }

  else
  {
    v95 = 0;
    if ((v4 & 0x10000000) != 0)
    {
      goto LABEL_22;
    }
  }

  v94 = 0;
  if ((v4 & 0x2000000000000) != 0)
  {
LABEL_23:
    v93 = 2654435761u * self->_lowTxPhyRateTrue;
    if ((v4 & 0x1000000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_114;
  }

LABEL_113:
  v93 = 0;
  if ((v4 & 0x1000000000000) != 0)
  {
LABEL_24:
    v92 = 2654435761u * self->_lowTxPhyRateFalse;
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_115;
  }

LABEL_114:
  v92 = 0;
  if ((v4 & 0x80000000) != 0)
  {
LABEL_25:
    v91 = 2654435761u * self->_highTxPerTrue;
    if ((v4 & 0x40000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_116;
  }

LABEL_115:
  v91 = 0;
  if ((v4 & 0x40000000) != 0)
  {
LABEL_26:
    v90 = 2654435761u * self->_highTxPerFalse;
    if ((v4 & 0x200000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_117;
  }

LABEL_116:
  v90 = 0;
  if ((v4 & 0x200000000) != 0)
  {
LABEL_27:
    v89 = 2654435761u * self->_highTxRetriesTrue;
    if ((v4 & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_118;
  }

LABEL_117:
  v89 = 0;
  if ((v4 & 0x100000000) != 0)
  {
LABEL_28:
    v88 = 2654435761u * self->_highTxRetriesFalse;
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_119;
  }

LABEL_118:
  v88 = 0;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_29:
    v87 = 2654435761u * self->_txQueueFullTrue;
    if ((v3 & 0x40000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_120;
  }

LABEL_119:
  v87 = 0;
  if ((v3 & 0x40000000) != 0)
  {
LABEL_30:
    v86 = 2654435761u * self->_txQueueFullFalse;
    if ((v4 & 0x800000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_120:
  v86 = 0;
  if ((v4 & 0x800000000000) != 0)
  {
LABEL_31:
    v85 = 2654435761u * self->_lowTxAMPDUDensityTrue;
    if ((v4 & 0x400000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_122;
  }

LABEL_121:
  v85 = 0;
  if ((v4 & 0x400000000000) != 0)
  {
LABEL_32:
    v84 = 2654435761u * self->_lowTxAMPDUDensityFalse;
    if ((v4 & 0x8000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_123;
  }

LABEL_122:
  v84 = 0;
  if ((v4 & 0x8000000) != 0)
  {
LABEL_33:
    v83 = 2654435761u * self->_highRxRetriesTrue;
    if ((v4 & 0x4000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_124;
  }

LABEL_123:
  v83 = 0;
  if ((v4 & 0x4000000) != 0)
  {
LABEL_34:
    v82 = 2654435761u * self->_highRxRetriesFalse;
    if ((v4 & 0x800000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_125;
  }

LABEL_124:
  v82 = 0;
  if ((v4 & 0x800000) != 0)
  {
LABEL_35:
    v81 = 2654435761u * self->_highRxPhyPERTrue;
    if ((v4 & 0x400000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_126;
  }

LABEL_125:
  v81 = 0;
  if ((v4 & 0x400000) != 0)
  {
LABEL_36:
    v80 = 2654435761u * self->_highRxPhyPERFalse;
    if ((v4 & 0x80000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_127;
  }

LABEL_126:
  v80 = 0;
  if ((v4 & 0x80000) != 0)
  {
LABEL_37:
    v79 = 2654435761u * self->_highRxFCSErrsTrue;
    if ((v4 & 0x40000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_128;
  }

LABEL_127:
  v79 = 0;
  if ((v4 & 0x40000) != 0)
  {
LABEL_38:
    v78 = 2654435761u * self->_highRxFCSErrsFalse;
    if ((v4 & 0x200000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_129;
  }

LABEL_128:
  v78 = 0;
  if ((v4 & 0x200000) != 0)
  {
LABEL_39:
    v77 = 2654435761u * self->_highRxOverflowsTrue;
    if ((v4 & 0x100000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_130;
  }

LABEL_129:
  v77 = 0;
  if ((v4 & 0x100000) != 0)
  {
LABEL_40:
    v76 = 2654435761u * self->_highRxOverflowsFalse;
    if ((v4 & 0x20000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_131;
  }

LABEL_130:
  v76 = 0;
  if ((v4 & 0x20000) != 0)
  {
LABEL_41:
    v75 = 2654435761u * self->_highRxDupsTrue;
    if ((v4 & 0x10000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_132;
  }

LABEL_131:
  v75 = 0;
  if ((v4 & 0x10000) != 0)
  {
LABEL_42:
    v74 = 2654435761u * self->_highRxDupsFalse;
    if ((v4 & 0x2000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_133;
  }

LABEL_132:
  v74 = 0;
  if ((v4 & 0x2000000) != 0)
  {
LABEL_43:
    v73 = 2654435761u * self->_highRxReplaysTrue;
    if ((v4 & 0x1000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_134;
  }

LABEL_133:
  v73 = 0;
  if ((v4 & 0x1000000) != 0)
  {
LABEL_44:
    v72 = 2654435761u * self->_highRxReplaysFalse;
    if ((v4 & 0x8000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_135;
  }

LABEL_134:
  v72 = 0;
  if ((v4 & 0x8000) != 0)
  {
LABEL_45:
    v71 = 2654435761u * self->_highRxDecryptErrsTrue;
    if ((v4 & 0x4000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_136;
  }

LABEL_135:
  v71 = 0;
  if ((v4 & 0x4000) != 0)
  {
LABEL_46:
    v70 = 2654435761u * self->_highRxDecryptErrsFalse;
    if ((v4 & 0x2000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_137;
  }

LABEL_136:
  v70 = 0;
  if ((v4 & 0x2000) != 0)
  {
LABEL_47:
    v69 = 2654435761u * self->_highRxDataPERTrue;
    if ((v4 & 0x1000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_138;
  }

LABEL_137:
  v69 = 0;
  if ((v4 & 0x1000) != 0)
  {
LABEL_48:
    v68 = 2654435761u * self->_highRxDataPERFalse;
    if ((v4 & 0x20000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_139;
  }

LABEL_138:
  v68 = 0;
  if ((v4 & 0x20000000000) != 0)
  {
LABEL_49:
    v67 = 2654435761u * self->_lowAvailWLANDurTrue;
    if ((v4 & 0x10000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_140;
  }

LABEL_139:
  v67 = 0;
  if ((v4 & 0x10000000000) != 0)
  {
LABEL_50:
    v66 = 2654435761u * self->_lowAvailWLANDurFalse;
    if ((v4 & 0x200000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_141;
  }

LABEL_140:
  v66 = 0;
  if ((v4 & 0x200000000000) != 0)
  {
LABEL_51:
    v65 = 2654435761u * self->_lowAvailWLANTxDurTrue;
    if ((v4 & 0x100000000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_142;
  }

LABEL_141:
  v65 = 0;
  if ((v4 & 0x100000000000) != 0)
  {
LABEL_52:
    v64 = 2654435761u * self->_lowAvailWLANTxDurFalse;
    if ((v4 & 0x80000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_143;
  }

LABEL_142:
  v64 = 0;
  if ((v4 & 0x80000000000) != 0)
  {
LABEL_53:
    v63 = 2654435761u * self->_lowAvailWLANRxDurTrue;
    if ((v4 & 0x40000000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_144;
  }

LABEL_143:
  v63 = 0;
  if ((v4 & 0x40000000000) != 0)
  {
LABEL_54:
    v62 = 2654435761u * self->_lowAvailWLANRxDurFalse;
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_145;
  }

LABEL_144:
  v62 = 0;
  if ((v4 & 0x100) != 0)
  {
LABEL_55:
    v61 = 2654435761u * self->_cCA;
    if ((v4 & 0x400000000000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_146;
  }

LABEL_145:
  v61 = 0;
  if ((v4 & 0x400000000000000) != 0)
  {
LABEL_56:
    v60 = 2654435761 * self->_rSSI;
    if ((v3 & 0x20000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_147;
  }

LABEL_146:
  v60 = 0;
  if ((v3 & 0x20000000) != 0)
  {
LABEL_57:
    v59 = 2654435761u * self->_txPhyRate;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_148;
  }

LABEL_147:
  v59 = 0;
  if ((v3 & 0x40) != 0)
  {
LABEL_58:
    v58 = 2654435761u * self->_rxPhyRate;
    if ((v3 & 0x10000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_149;
  }

LABEL_148:
  v58 = 0;
  if ((v3 & 0x10000) != 0)
  {
LABEL_59:
    v57 = 2654435761u * self->_txAMPDUDensity;
    if ((v4 & 0x8000000000000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_150;
  }

LABEL_149:
  v57 = 0;
  if ((v4 & 0x8000000000000) != 0)
  {
LABEL_60:
    v56 = 2654435761u * self->_measurementDurMS;
    if ((v4 & 0x200) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_151;
  }

LABEL_150:
  v56 = 0;
  if ((v4 & 0x200) != 0)
  {
LABEL_61:
    v55 = 2654435761u * self->_concurrentIntDurMS;
    if ((v3 & 0x1000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_152;
  }

LABEL_151:
  v55 = 0;
  if ((v3 & 0x1000) != 0)
  {
LABEL_62:
    v54 = 2654435761u * self->_tVPMActiveDurationMS;
    if ((v4 & 0x80000000000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_153;
  }

LABEL_152:
  v54 = 0;
  if ((v4 & 0x80000000000000) != 0)
  {
LABEL_63:
    v53 = 2654435761u * self->_phyTxActivityDurMS;
    if ((v4 & 0x40000000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_154;
  }

LABEL_153:
  v53 = 0;
  if ((v4 & 0x40000000000000) != 0)
  {
LABEL_64:
    v52 = 2654435761u * self->_phyRxActivityDurMS;
    if ((v3 & 0x200000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_155;
  }

LABEL_154:
  v52 = 0;
  if ((v3 & 0x200000000) != 0)
  {
LABEL_65:
    v51 = 2654435761u * self->_txSubBytes;
    if ((v3 & 0x20000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_156;
  }

LABEL_155:
  v51 = 0;
  if ((v3 & 0x20000) != 0)
  {
LABEL_66:
    v50 = 2654435761u * self->_txCompBytes;
    if ((v3 & 0x80000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_157;
  }

LABEL_156:
  v50 = 0;
  if ((v3 & 0x80000) != 0)
  {
LABEL_67:
    v49 = 2654435761u * self->_txDelayBytes;
    if ((v4 & 0x10000000000000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_158;
  }

LABEL_157:
  v49 = 0;
  if ((v4 & 0x10000000000000) != 0)
  {
LABEL_68:
    v48 = 2654435761u * self->_offChanDurMS;
    if ((v3 & 0x400000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_159;
  }

LABEL_158:
  v48 = 0;
  if ((v3 & 0x400000000) != 0)
  {
LABEL_69:
    v47 = 2654435761u * self->_txSubPkts;
    if ((v3 & 0x40000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_160;
  }

LABEL_159:
  v47 = 0;
  if ((v3 & 0x40000) != 0)
  {
LABEL_70:
    v46 = 2654435761u * self->_txCompPkts;
    if ((v4 & 0x4000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_161;
  }

LABEL_160:
  v46 = 0;
  if ((v4 & 0x4000000000000) != 0)
  {
LABEL_71:
    v45 = 2654435761u * self->_maxQueueFullDurMS;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_162;
  }

LABEL_161:
  v45 = 0;
  if ((v4 & 0x20) != 0)
  {
LABEL_72:
    v44 = 2654435761u * self->_avgTxLatencyMS;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_163;
  }

LABEL_162:
  v44 = 0;
  if ((v4 & 0x40) != 0)
  {
LABEL_73:
    v43 = 2654435761u * self->_bTAntennaDurMS;
    if ((v4 & 0x20000000000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_164;
  }

LABEL_163:
  v43 = 0;
  if ((v4 & 0x20000000000000) != 0)
  {
LABEL_74:
    v42 = 2654435761u * self->_outputThroughput;
    if ((v4 & 0x800000000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_165;
  }

LABEL_164:
  v42 = 0;
  if ((v4 & 0x800000000) != 0)
  {
LABEL_75:
    v41 = 2654435761u * self->_inputThroughput;
    if ((v4 & 0x800) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_166;
  }

LABEL_165:
  v41 = 0;
  if ((v4 & 0x800) != 0)
  {
LABEL_76:
    v40 = 2654435761u * self->_expectedThroughput;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_167;
  }

LABEL_166:
  v40 = 0;
  if ((v4 & 0x400) != 0)
  {
LABEL_77:
    v39 = 2654435761u * self->_delayedThroughput;
    if ((v4 & 4) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_168;
  }

LABEL_167:
  v39 = 0;
  if ((v4 & 4) != 0)
  {
LABEL_78:
    v38 = 2654435761u * self->_availWLANDurMS;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_169;
  }

LABEL_168:
  v38 = 0;
  if ((v4 & 0x10) != 0)
  {
LABEL_79:
    v37 = 2654435761u * self->_availWLANTxDurMS;
    if ((v4 & 8) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_170;
  }

LABEL_169:
  v37 = 0;
  if ((v4 & 8) != 0)
  {
LABEL_80:
    v36 = 2654435761u * self->_availWLANRxDurMS;
    if ((v3 & 0x100000000) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_171;
  }

LABEL_170:
  v36 = 0;
  if ((v3 & 0x100000000) != 0)
  {
LABEL_81:
    v35 = 2654435761u * self->_txRetries;
    if ((v3 & 0x200000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_172;
  }

LABEL_171:
  v35 = 0;
  if ((v3 & 0x200000) != 0)
  {
LABEL_82:
    v34 = 2654435761u * self->_txFails;
    if ((v3 & 0x400000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_173;
  }

LABEL_172:
  v34 = 0;
  if ((v3 & 0x400000) != 0)
  {
LABEL_83:
    v33 = 2654435761u * self->_txFrames;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_174;
  }

LABEL_173:
  v33 = 0;
  if ((v3 & 0x10) != 0)
  {
LABEL_84:
    v32 = 2654435761u * self->_rxOvflErrs;
    if (v4 < 0)
    {
      goto LABEL_85;
    }

    goto LABEL_175;
  }

LABEL_174:
  v32 = 0;
  if (v4 < 0)
  {
LABEL_85:
    v5 = 2654435761u * self->_rxFCSErrs;
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_176;
  }

LABEL_175:
  v5 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_86:
    v6 = 2654435761u * self->_rxPLCPErrs;
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_87;
    }

    goto LABEL_177;
  }

LABEL_176:
  v6 = 0;
  if ((v4 & 0x1000000000000000) != 0)
  {
LABEL_87:
    v7 = 2654435761u * self->_rxCRSErrs;
    if ((v4 & 0x4000000000000000) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_178;
  }

LABEL_177:
  v7 = 0;
  if ((v4 & 0x4000000000000000) != 0)
  {
LABEL_88:
    v8 = 2654435761u * self->_rxDupErrs;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_179;
  }

LABEL_178:
  v8 = 0;
  if ((v3 & 0x80) != 0)
  {
LABEL_89:
    v9 = 2654435761u * self->_rxReplayErrs;
    if ((v4 & 0x2000000000000000) != 0)
    {
      goto LABEL_90;
    }

    goto LABEL_180;
  }

LABEL_179:
  v9 = 0;
  if ((v4 & 0x2000000000000000) != 0)
  {
LABEL_90:
    v10 = 2654435761u * self->_rxDecryErrs;
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_181;
  }

LABEL_180:
  v10 = 0;
  if ((v3 & 0x100) != 0)
  {
LABEL_91:
    v11 = 2654435761u * self->_rxRetries;
    if ((v3 & 2) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_182;
  }

LABEL_181:
  v11 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_92:
    v12 = 2654435761u * self->_rxGoodPlcps;
    if (v3)
    {
      goto LABEL_93;
    }

    goto LABEL_183;
  }

LABEL_182:
  v12 = 0;
  if (v3)
  {
LABEL_93:
    v13 = 2654435761u * self->_rxFrames;
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_184;
  }

LABEL_183:
  v13 = 0;
  if ((v3 & 0x400) != 0)
  {
LABEL_94:
    v14 = 2654435761u * self->_sNR;
    if ((v3 & 0x100000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_185;
  }

LABEL_184:
  v14 = 0;
  if ((v3 & 0x100000) != 0)
  {
LABEL_95:
    v15 = 2654435761u * self->_txExpectedAMPDUDensity;
    if ((v4 & 0x100000000000000) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_186;
  }

LABEL_185:
  v15 = 0;
  if ((v4 & 0x100000000000000) != 0)
  {
LABEL_96:
    v16 = 2654435761u * self->_rC1CoexDurationMS;
    if ((v4 & 0x200000000000000) != 0)
    {
      goto LABEL_97;
    }

    goto LABEL_187;
  }

LABEL_186:
  v16 = 0;
  if ((v4 & 0x200000000000000) != 0)
  {
LABEL_97:
    v17 = 2654435761u * self->_rC2CoexDurationMS;
    if ((v4 & 0x4000000000) != 0)
    {
      goto LABEL_98;
    }

    goto LABEL_188;
  }

LABEL_187:
  v17 = 0;
  if ((v4 & 0x4000000000) != 0)
  {
LABEL_98:
    v18 = 2654435761u * self->_lTECoexDurationMS;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_99;
    }

    goto LABEL_189;
  }

LABEL_188:
  v18 = 0;
  if ((v3 & 0x200) != 0)
  {
LABEL_99:
    v19 = 2654435761u * self->_rxThroughput;
    if (v4)
    {
      goto LABEL_100;
    }

    goto LABEL_190;
  }

LABEL_189:
  v19 = 0;
  if (v4)
  {
LABEL_100:
    v20 = 2654435761u * self->_aPTxDataStall;
    if ((v4 & 0x800000000000000) != 0)
    {
      goto LABEL_101;
    }

    goto LABEL_191;
  }

LABEL_190:
  v20 = 0;
  if ((v4 & 0x800000000000000) != 0)
  {
LABEL_101:
    v21 = 2654435761u * self->_rxAmpduTxBaMismatch;
    if ((v3 & 0x800) != 0)
    {
      goto LABEL_102;
    }

    goto LABEL_192;
  }

LABEL_191:
  v21 = 0;
  if ((v3 & 0x800) != 0)
  {
LABEL_102:
    v22 = 2654435761u * self->_symptomsFails;
    if ((v4 & 0x1000000000) != 0)
    {
      goto LABEL_103;
    }

    goto LABEL_193;
  }

LABEL_192:
  v22 = 0;
  if ((v4 & 0x1000000000) != 0)
  {
LABEL_103:
    v23 = 2654435761u * self->_is2GBand;
    if ((v4 & 0x2000000000) != 0)
    {
      goto LABEL_104;
    }

    goto LABEL_194;
  }

LABEL_193:
  v23 = 0;
  if ((v4 & 0x2000000000) != 0)
  {
LABEL_104:
    v24 = 2654435761u * self->_isFGTraffic;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_105;
    }

    goto LABEL_195;
  }

LABEL_194:
  v24 = 0;
  if ((v4 & 0x80) != 0)
  {
LABEL_105:
    v25 = 2654435761u * self->_baselineThroughput;
    if ((v3 & 0x2000) != 0)
    {
      goto LABEL_106;
    }

    goto LABEL_196;
  }

LABEL_195:
  v25 = 0;
  if ((v3 & 0x2000) != 0)
  {
LABEL_106:
    v26 = 2654435761u * self->_testThroughput;
    if ((v4 & 0x400000000) != 0)
    {
      goto LABEL_107;
    }

    goto LABEL_197;
  }

LABEL_196:
  v26 = 0;
  if ((v4 & 0x400000000) != 0)
  {
LABEL_107:
    v27 = 2654435761u * self->_infraDutyCycle;
    if ((v4 & 0x8000000000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_198;
  }

LABEL_197:
  v27 = 0;
  if ((v4 & 0x8000000000) != 0)
  {
LABEL_108:
    v28 = 2654435761u * self->_lastScanReason;
    if ((v4 & 2) != 0)
    {
      goto LABEL_109;
    }

LABEL_199:
    v29 = 0;
    if ((v3 & 0x4000) != 0)
    {
      goto LABEL_110;
    }

LABEL_200:
    v30 = 0;
    return v103 ^ v104 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_198:
  v28 = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_199;
  }

LABEL_109:
  v29 = 2654435761u * self->_accessPointOUI;
  if ((v3 & 0x4000) == 0)
  {
    goto LABEL_200;
  }

LABEL_110:
  v30 = 2654435761u * self->_timeSinceLastRecovery;
  return v103 ^ v104 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4 + 100;
  v6 = v4[101];
  if ((v6 & 0x8000) != 0)
  {
    self->_timestamp = v4[80];
    *(&self->_has + 1) |= 0x8000uLL;
    v6 = v4[101];
    if ((v6 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_138;
    }
  }

  else if ((v6 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  self->_txOutputBelowExpectedTrue = v4[91];
  *(&self->_has + 1) |= 0x4000000uLL;
  v6 = v4[101];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_txOutputBelowExpectedFalse = v4[90];
  *(&self->_has + 1) |= 0x2000000uLL;
  v6 = v4[101];
  if ((v6 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_txOutputBelowInputTrue = v4[93];
  *(&self->_has + 1) |= 0x10000000uLL;
  v6 = v4[101];
  if ((v6 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_txOutputBelowInputFalse = v4[92];
  *(&self->_has + 1) |= 0x8000000uLL;
  v6 = v4[101];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_142;
  }

LABEL_141:
  self->_txLowFrameCountTrue = v4[89];
  *(&self->_has + 1) |= 0x1000000uLL;
  v6 = v4[101];
  if ((v6 & 0x800000) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_143;
  }

LABEL_142:
  self->_txLowFrameCountFalse = v4[88];
  *(&self->_has + 1) |= 0x800000uLL;
  v6 = v4[101];
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_143:
  self->_rxLowFrameCountTrue = v4[68];
  *(&self->_has + 1) |= 8uLL;
  if ((v4[101] & 4) != 0)
  {
LABEL_10:
    self->_rxLowFrameCountFalse = v4[67];
    *(&self->_has + 1) |= 4uLL;
  }

LABEL_11:
  v7 = *v5;
  if ((*v5 & 0x20000000) != 0)
  {
    self->_highTxLatencyTrue = v4[30];
    *&self->_has |= 0x20000000uLL;
    v7 = v4[100];
    if ((v7 & 0x10000000) == 0)
    {
LABEL_13:
      if ((v7 & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_147;
    }
  }

  else if ((v7 & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  self->_highTxLatencyFalse = v4[29];
  *&self->_has |= 0x10000000uLL;
  v7 = v4[100];
  if ((v7 & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((v7 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_lowTxPhyRateTrue = v4[50];
  *&self->_has |= 0x2000000000000uLL;
  v7 = v4[100];
  if ((v7 & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_lowTxPhyRateFalse = v4[49];
  *&self->_has |= 0x1000000000000uLL;
  v7 = v4[100];
  if ((v7 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_highTxPerTrue = v4[32];
  *&self->_has |= 0x80000000uLL;
  v7 = v4[100];
  if ((v7 & 0x40000000) == 0)
  {
LABEL_17:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_highTxPerFalse = v4[31];
  *&self->_has |= 0x40000000uLL;
  v7 = v4[100];
  if ((v7 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_151:
  self->_highTxRetriesTrue = v4[34];
  *&self->_has |= 0x200000000uLL;
  if ((v4[100] & 0x100000000) != 0)
  {
LABEL_19:
    self->_highTxRetriesFalse = v4[33];
    *&self->_has |= 0x100000000uLL;
  }

LABEL_20:
  v8 = v4[101];
  if ((v8 & 0x80000000) != 0)
  {
    self->_txQueueFullTrue = v4[96];
    *(&self->_has + 1) |= 0x80000000uLL;
    v8 = v4[101];
  }

  if ((v8 & 0x40000000) != 0)
  {
    self->_txQueueFullFalse = v4[95];
    *(&self->_has + 1) |= 0x40000000uLL;
  }

  v9 = *v5;
  if ((*v5 & 0x800000000000) != 0)
  {
    self->_lowTxAMPDUDensityTrue = v4[48];
    *&self->_has |= 0x800000000000uLL;
    v9 = v4[100];
    if ((v9 & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v9 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_155;
    }
  }

  else if ((v9 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  self->_lowTxAMPDUDensityFalse = v4[47];
  *&self->_has |= 0x400000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_156;
  }

LABEL_155:
  self->_highRxRetriesTrue = v4[28];
  *&self->_has |= 0x8000000uLL;
  v9 = v4[100];
  if ((v9 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

LABEL_156:
  self->_highRxRetriesFalse = v4[27];
  *&self->_has |= 0x4000000uLL;
  v9 = v4[100];
  if ((v9 & 0x800000) == 0)
  {
LABEL_29:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_158;
  }

LABEL_157:
  self->_highRxPhyPERTrue = v4[24];
  *&self->_has |= 0x800000uLL;
  v9 = v4[100];
  if ((v9 & 0x400000) == 0)
  {
LABEL_30:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_159;
  }

LABEL_158:
  self->_highRxPhyPERFalse = v4[23];
  *&self->_has |= 0x400000uLL;
  v9 = v4[100];
  if ((v9 & 0x80000) == 0)
  {
LABEL_31:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_highRxFCSErrsTrue = v4[20];
  *&self->_has |= 0x80000uLL;
  v9 = v4[100];
  if ((v9 & 0x40000) == 0)
  {
LABEL_32:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_161;
  }

LABEL_160:
  self->_highRxFCSErrsFalse = v4[19];
  *&self->_has |= 0x40000uLL;
  v9 = v4[100];
  if ((v9 & 0x200000) == 0)
  {
LABEL_33:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_162;
  }

LABEL_161:
  self->_highRxOverflowsTrue = v4[22];
  *&self->_has |= 0x200000uLL;
  v9 = v4[100];
  if ((v9 & 0x100000) == 0)
  {
LABEL_34:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_163;
  }

LABEL_162:
  self->_highRxOverflowsFalse = v4[21];
  *&self->_has |= 0x100000uLL;
  v9 = v4[100];
  if ((v9 & 0x20000) == 0)
  {
LABEL_35:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_164;
  }

LABEL_163:
  self->_highRxDupsTrue = v4[18];
  *&self->_has |= 0x20000uLL;
  v9 = v4[100];
  if ((v9 & 0x10000) == 0)
  {
LABEL_36:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_highRxDupsFalse = v4[17];
  *&self->_has |= 0x10000uLL;
  v9 = v4[100];
  if ((v9 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_166;
  }

LABEL_165:
  self->_highRxReplaysTrue = v4[26];
  *&self->_has |= 0x2000000uLL;
  v9 = v4[100];
  if ((v9 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_167;
  }

LABEL_166:
  self->_highRxReplaysFalse = v4[25];
  *&self->_has |= 0x1000000uLL;
  v9 = v4[100];
  if ((v9 & 0x8000) == 0)
  {
LABEL_39:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_168;
  }

LABEL_167:
  self->_highRxDecryptErrsTrue = v4[16];
  *&self->_has |= 0x8000uLL;
  v9 = v4[100];
  if ((v9 & 0x4000) == 0)
  {
LABEL_40:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_169;
  }

LABEL_168:
  self->_highRxDecryptErrsFalse = v4[15];
  *&self->_has |= 0x4000uLL;
  v9 = v4[100];
  if ((v9 & 0x2000) == 0)
  {
LABEL_41:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_highRxDataPERTrue = v4[14];
  *&self->_has |= 0x2000uLL;
  v9 = v4[100];
  if ((v9 & 0x1000) == 0)
  {
LABEL_42:
    if ((v9 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_171;
  }

LABEL_170:
  self->_highRxDataPERFalse = v4[13];
  *&self->_has |= 0x1000uLL;
  v9 = v4[100];
  if ((v9 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v9 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_lowAvailWLANDurTrue = v4[42];
  *&self->_has |= 0x20000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v9 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_lowAvailWLANDurFalse = v4[41];
  *&self->_has |= 0x10000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v9 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_174;
  }

LABEL_173:
  self->_lowAvailWLANTxDurTrue = v4[46];
  *&self->_has |= 0x200000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_175;
  }

LABEL_174:
  self->_lowAvailWLANTxDurFalse = v4[45];
  *&self->_has |= 0x100000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v9 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_176;
  }

LABEL_175:
  self->_lowAvailWLANRxDurTrue = v4[44];
  *&self->_has |= 0x80000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_177;
  }

LABEL_176:
  self->_lowAvailWLANRxDurFalse = v4[43];
  *&self->_has |= 0x40000000000uLL;
  v9 = v4[100];
  if ((v9 & 0x100) == 0)
  {
LABEL_49:
    if ((v9 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_177:
  self->_cCA = v4[9];
  *&self->_has |= 0x100uLL;
  if ((v4[100] & 0x400000000000000) != 0)
  {
LABEL_50:
    self->_rSSI = v4[59];
    *&self->_has |= 0x400000000000000uLL;
  }

LABEL_51:
  v10 = v4[101];
  if ((v10 & 0x20000000) != 0)
  {
    self->_txPhyRate = v4[94];
    *(&self->_has + 1) |= 0x20000000uLL;
    v10 = v4[101];
    if ((v10 & 0x40) == 0)
    {
LABEL_53:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v10 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  self->_rxPhyRate = v4[71];
  *(&self->_has + 1) |= 0x40uLL;
  if ((v4[101] & 0x10000) != 0)
  {
LABEL_54:
    self->_txAMPDUDensity = v4[81];
    *(&self->_has + 1) |= 0x10000uLL;
  }

LABEL_55:
  v11 = *v5;
  if ((*v5 & 0x8000000000000) != 0)
  {
    self->_measurementDurMS = v4[52];
    *&self->_has |= 0x8000000000000uLL;
    v11 = v4[100];
  }

  if ((v11 & 0x200) != 0)
  {
    self->_concurrentIntDurMS = v4[10];
    *&self->_has |= 0x200uLL;
  }

  if ((*(v4 + 809) & 0x10) != 0)
  {
    self->_tVPMActiveDurationMS = v4[77];
    *(&self->_has + 1) |= 0x1000uLL;
  }

  v12 = *v5;
  if ((*v5 & 0x80000000000000) != 0)
  {
    self->_phyTxActivityDurMS = v4[56];
    *&self->_has |= 0x80000000000000uLL;
    v12 = v4[100];
  }

  if ((v12 & 0x40000000000000) != 0)
  {
    self->_phyRxActivityDurMS = v4[55];
    *&self->_has |= 0x40000000000000uLL;
  }

  v13 = v4[101];
  if ((v13 & 0x200000000) != 0)
  {
    self->_txSubBytes = v4[98];
    *(&self->_has + 1) |= 0x200000000uLL;
    v13 = v4[101];
    if ((v13 & 0x20000) == 0)
    {
LABEL_67:
      if ((v13 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  self->_txCompBytes = v4[82];
  *(&self->_has + 1) |= 0x20000uLL;
  if ((v4[101] & 0x80000) != 0)
  {
LABEL_68:
    self->_txDelayBytes = v4[84];
    *(&self->_has + 1) |= 0x80000uLL;
  }

LABEL_69:
  if ((*(v4 + 806) & 0x10) != 0)
  {
    self->_offChanDurMS = v4[53];
    *&self->_has |= 0x10000000000000uLL;
  }

  v14 = v4[101];
  if ((v14 & 0x400000000) != 0)
  {
    self->_txSubPkts = v4[99];
    *(&self->_has + 1) |= 0x400000000uLL;
    v14 = v4[101];
  }

  if ((v14 & 0x40000) != 0)
  {
    self->_txCompPkts = v4[83];
    *(&self->_has + 1) |= 0x40000uLL;
  }

  v15 = *v5;
  if ((*v5 & 0x4000000000000) != 0)
  {
    self->_maxQueueFullDurMS = v4[51];
    *&self->_has |= 0x4000000000000uLL;
    v15 = v4[100];
    if ((v15 & 0x20) == 0)
    {
LABEL_77:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_187;
    }
  }

  else if ((v15 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  self->_avgTxLatencyMS = v4[6];
  *&self->_has |= 0x20uLL;
  v15 = v4[100];
  if ((v15 & 0x40) == 0)
  {
LABEL_78:
    if ((v15 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_188;
  }

LABEL_187:
  self->_bTAntennaDurMS = v4[7];
  *&self->_has |= 0x40uLL;
  v15 = v4[100];
  if ((v15 & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_189;
  }

LABEL_188:
  self->_outputThroughput = v4[54];
  *&self->_has |= 0x20000000000000uLL;
  v15 = v4[100];
  if ((v15 & 0x800000000) == 0)
  {
LABEL_80:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_190;
  }

LABEL_189:
  self->_inputThroughput = v4[36];
  *&self->_has |= 0x800000000uLL;
  v15 = v4[100];
  if ((v15 & 0x800) == 0)
  {
LABEL_81:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_191;
  }

LABEL_190:
  self->_expectedThroughput = v4[12];
  *&self->_has |= 0x800uLL;
  v15 = v4[100];
  if ((v15 & 0x400) == 0)
  {
LABEL_82:
    if ((v15 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_192;
  }

LABEL_191:
  self->_delayedThroughput = v4[11];
  *&self->_has |= 0x400uLL;
  v15 = v4[100];
  if ((v15 & 4) == 0)
  {
LABEL_83:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_193;
  }

LABEL_192:
  self->_availWLANDurMS = v4[3];
  *&self->_has |= 4uLL;
  v15 = v4[100];
  if ((v15 & 0x10) == 0)
  {
LABEL_84:
    if ((v15 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_193:
  self->_availWLANTxDurMS = v4[5];
  *&self->_has |= 0x10uLL;
  if ((v4[100] & 8) != 0)
  {
LABEL_85:
    self->_availWLANRxDurMS = v4[4];
    *&self->_has |= 8uLL;
  }

LABEL_86:
  v16 = v4[101];
  if ((v16 & 0x100000000) != 0)
  {
    self->_txRetries = v4[97];
    *(&self->_has + 1) |= 0x100000000uLL;
    v16 = v4[101];
    if ((v16 & 0x200000) == 0)
    {
LABEL_88:
      if ((v16 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_197;
    }
  }

  else if ((v16 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  self->_txFails = v4[86];
  *(&self->_has + 1) |= 0x200000uLL;
  v16 = v4[101];
  if ((v16 & 0x400000) == 0)
  {
LABEL_89:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_197:
  self->_txFrames = v4[87];
  *(&self->_has + 1) |= 0x400000uLL;
  if ((v4[101] & 0x10) != 0)
  {
LABEL_90:
    self->_rxOvflErrs = v4[69];
    *(&self->_has + 1) |= 0x10uLL;
  }

LABEL_91:
  if (*v5 < 0)
  {
    self->_rxFCSErrs = v4[64];
    *&self->_has |= 0x8000000000000000;
  }

  if ((v4[101] & 0x20) != 0)
  {
    self->_rxPLCPErrs = v4[70];
    *(&self->_has + 1) |= 0x20uLL;
  }

  v17 = *v5;
  if ((*v5 & 0x1000000000000000) != 0)
  {
    self->_rxCRSErrs = v4[61];
    *&self->_has |= 0x1000000000000000uLL;
    v17 = v4[100];
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    self->_rxDupErrs = v4[63];
    *&self->_has |= 0x4000000000000000uLL;
  }

  if ((v4[101] & 0x80) != 0)
  {
    self->_rxReplayErrs = v4[72];
    *(&self->_has + 1) |= 0x80uLL;
  }

  if ((*(v4 + 807) & 0x20) != 0)
  {
    self->_rxDecryErrs = v4[62];
    *&self->_has |= 0x2000000000000000uLL;
  }

  v18 = v4[101];
  if ((v18 & 0x100) != 0)
  {
    self->_rxRetries = v4[73];
    *(&self->_has + 1) |= 0x100uLL;
    v18 = v4[101];
    if ((v18 & 2) == 0)
    {
LABEL_105:
      if ((v18 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_201;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_105;
  }

  self->_rxGoodPlcps = v4[66];
  *(&self->_has + 1) |= 2uLL;
  v18 = v4[101];
  if ((v18 & 1) == 0)
  {
LABEL_106:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_202;
  }

LABEL_201:
  self->_rxFrames = v4[65];
  *(&self->_has + 1) |= 1uLL;
  v18 = v4[101];
  if ((v18 & 0x400) == 0)
  {
LABEL_107:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_202:
  self->_sNR = v4[75];
  *(&self->_has + 1) |= 0x400uLL;
  if ((v4[101] & 0x100000) != 0)
  {
LABEL_108:
    self->_txExpectedAMPDUDensity = v4[85];
    *(&self->_has + 1) |= 0x100000uLL;
  }

LABEL_109:
  v19 = *v5;
  if ((*v5 & 0x100000000000000) != 0)
  {
    self->_rC1CoexDurationMS = v4[57];
    *&self->_has |= 0x100000000000000uLL;
    v19 = v4[100];
    if ((v19 & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v19 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v19 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  self->_rC2CoexDurationMS = v4[58];
  *&self->_has |= 0x200000000000000uLL;
  if ((v4[100] & 0x4000000000) != 0)
  {
LABEL_112:
    self->_lTECoexDurationMS = v4[39];
    *&self->_has |= 0x4000000000uLL;
  }

LABEL_113:
  if ((*(v4 + 809) & 2) != 0)
  {
    self->_rxThroughput = v4[74];
    *(&self->_has + 1) |= 0x200uLL;
  }

  v20 = *v5;
  if (*v5)
  {
    self->_aPTxDataStall = v4[1];
    *&self->_has |= 1uLL;
    v20 = v4[100];
  }

  if ((v20 & 0x800000000000000) != 0)
  {
    self->_rxAmpduTxBaMismatch = v4[60];
    *&self->_has |= 0x800000000000000uLL;
  }

  if ((*(v4 + 809) & 8) != 0)
  {
    self->_symptomsFails = v4[76];
    *(&self->_has + 1) |= 0x800uLL;
  }

  v21 = *v5;
  if ((*v5 & 0x1000000000) != 0)
  {
    self->_is2GBand = v4[37];
    *&self->_has |= 0x1000000000uLL;
    v21 = v4[100];
    if ((v21 & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v21 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  self->_isFGTraffic = v4[38];
  *&self->_has |= 0x2000000000uLL;
  if ((v4[100] & 0x80) != 0)
  {
LABEL_124:
    self->_baselineThroughput = v4[8];
    *&self->_has |= 0x80uLL;
  }

LABEL_125:
  if ((*(v4 + 809) & 0x20) != 0)
  {
    self->_testThroughput = v4[78];
    *(&self->_has + 1) |= 0x2000uLL;
  }

  v22 = *v5;
  if ((*v5 & 0x400000000) != 0)
  {
    self->_infraDutyCycle = v4[35];
    *&self->_has |= 0x400000000uLL;
    v22 = v4[100];
    if ((v22 & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v22 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v22 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  self->_lastScanReason = v4[40];
  *&self->_has |= 0x8000000000uLL;
  if ((v4[100] & 2) != 0)
  {
LABEL_130:
    self->_accessPointOUI = v4[2];
    *&self->_has |= 2uLL;
  }

LABEL_131:
  if ((*(v4 + 809) & 0x40) != 0)
  {
    self->_timeSinceLastRecovery = v4[79];
    *(&self->_has + 1) |= 0x4000uLL;
  }
}

@end
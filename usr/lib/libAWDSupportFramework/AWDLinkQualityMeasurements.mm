@interface AWDLinkQualityMeasurements
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

@implementation AWDLinkQualityMeasurements

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
  v3.receiver = self;
  v3.super_class = AWDLinkQualityMeasurements;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLinkQualityMeasurements description](&v3, sel_description), -[AWDLinkQualityMeasurements dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x8000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txOutputBelowExpectedTrue), @"TxOutputBelowExpected_true"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txOutputBelowExpectedFalse), @"TxOutputBelowExpected_false"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txOutputBelowInputTrue), @"TxOutputBelowInput_true"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txOutputBelowInputFalse), @"TxOutputBelowInput_false"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txLowFrameCountTrue), @"TxLowFrameCount_true"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txLowFrameCountFalse), @"TxLowFrameCount_false"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxLowFrameCountTrue), @"RxLowFrameCount_true"}];
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxLowFrameCountFalse), @"RxLowFrameCount_false"}];
  }

LABEL_11:
  v6 = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highTxLatencyTrue), @"HighTxLatency_true"}];
    v6 = *p_has;
    if ((*p_has & 0x10000000) == 0)
    {
LABEL_13:
      if ((v6 & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_145;
    }
  }

  else if ((v6 & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highTxLatencyFalse), @"HighTxLatency_false"}];
  v6 = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_146;
  }

LABEL_145:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowTxPhyRateTrue), @"LowTxPhyRate_true"}];
  v6 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_147;
  }

LABEL_146:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowTxPhyRateFalse), @"LowTxPhyRate_false"}];
  v6 = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_16:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_148;
  }

LABEL_147:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highTxPerTrue), @"HighTxPer_true"}];
  v6 = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_149;
  }

LABEL_148:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highTxPerFalse), @"HighTxPer_false"}];
  v6 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_18:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_149:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highTxRetriesTrue), @"HighTxRetries_true"}];
  if ((*p_has & 0x100000000) != 0)
  {
LABEL_19:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highTxRetriesFalse), @"HighTxRetries_false"}];
  }

LABEL_20:
  v7 = *(&self->_has + 1);
  if ((v7 & 0x80000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txQueueFullTrue), @"TxQueueFull_true"}];
    v7 = *(&self->_has + 1);
  }

  if ((v7 & 0x40000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txQueueFullFalse), @"TxQueueFull_false"}];
  }

  v8 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowTxAMPDUDensityTrue), @"LowTxAMPDUDensity_true"}];
    v8 = *p_has;
    if ((*p_has & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v8 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_153;
    }
  }

  else if ((v8 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowTxAMPDUDensityFalse), @"LowTxAMPDUDensity_false"}];
  v8 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_27:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_154;
  }

LABEL_153:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxRetriesTrue), @"HighRxRetries_true"}];
  v8 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_155;
  }

LABEL_154:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxRetriesFalse), @"HighRxRetries_false"}];
  v8 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_29:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_156;
  }

LABEL_155:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxPhyPERTrue), @"HighRxPhyPER_true"}];
  v8 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_30:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_157;
  }

LABEL_156:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxPhyPERFalse), @"HighRxPhyPER_false"}];
  v8 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_31:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_158;
  }

LABEL_157:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxFCSErrsTrue), @"HighRxFCSErrs_true"}];
  v8 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_32:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_159;
  }

LABEL_158:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxFCSErrsFalse), @"HighRxFCSErrs_false"}];
  v8 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_33:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_160;
  }

LABEL_159:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxOverflowsTrue), @"HighRxOverflows_true"}];
  v8 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_34:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_161;
  }

LABEL_160:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxOverflowsFalse), @"HighRxOverflows_false"}];
  v8 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_35:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_162;
  }

LABEL_161:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxDupsTrue), @"HighRxDups_true"}];
  v8 = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_36:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_163;
  }

LABEL_162:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxDupsFalse), @"HighRxDups_false"}];
  v8 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_37:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_164;
  }

LABEL_163:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxReplaysTrue), @"HighRxReplays_true"}];
  v8 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_38:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_165;
  }

LABEL_164:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxReplaysFalse), @"HighRxReplays_false"}];
  v8 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_39:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_166;
  }

LABEL_165:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxDecryptErrsTrue), @"HighRxDecryptErrs_true"}];
  v8 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_40:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_167;
  }

LABEL_166:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxDecryptErrsFalse), @"HighRxDecryptErrs_false"}];
  v8 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_41:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_168;
  }

LABEL_167:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxDataPERTrue), @"HighRxDataPER_true"}];
  v8 = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_42:
    if ((v8 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

LABEL_168:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highRxDataPERFalse), @"HighRxDataPER_false"}];
  v8 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v8 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_170;
  }

LABEL_169:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowAvailWLANDurTrue), @"LowAvailWLANDur_true"}];
  v8 = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v8 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_171;
  }

LABEL_170:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowAvailWLANDurFalse), @"LowAvailWLANDur_false"}];
  v8 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v8 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_172;
  }

LABEL_171:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowAvailWLANTxDurTrue), @"LowAvailWLANTxDur_true"}];
  v8 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v8 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_173;
  }

LABEL_172:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowAvailWLANTxDurFalse), @"LowAvailWLANTxDur_false"}];
  v8 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v8 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_174;
  }

LABEL_173:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowAvailWLANRxDurTrue), @"LowAvailWLANRxDur_true"}];
  v8 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_175;
  }

LABEL_174:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowAvailWLANRxDurFalse), @"LowAvailWLANRxDur_false"}];
  v8 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_49:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_175:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cCA), @"CCA"}];
  if ((*p_has & 0x400000000000000) != 0)
  {
LABEL_50:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_rSSI), @"RSSI"}];
  }

LABEL_51:
  v9 = *(&self->_has + 1);
  if ((v9 & 0x20000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPhyRate), @"TxPhyRate"}];
    v9 = *(&self->_has + 1);
    if ((v9 & 0x40) == 0)
    {
LABEL_53:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v9 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxPhyRate), @"RxPhyRate"}];
  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txAMPDUDensity), @"TxAMPDUDensity"}];
  }

LABEL_55:
  v10 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_measurementDurMS), @"MeasurementDurMS"}];
    v10 = *p_has;
  }

  if ((v10 & 0x200) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_concurrentIntDurMS), @"ConcurrentIntDurMS"}];
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tVPMActiveDurationMS), @"TVPMActiveDurationMS"}];
  }

  v11 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_phyTxActivityDurMS), @"PhyTxActivityDurMS"}];
    v11 = *p_has;
  }

  if ((v11 & 0x40000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_phyRxActivityDurMS), @"PhyRxActivityDurMS"}];
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x200000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txSubBytes), @"TxSubBytes"}];
    v12 = *(&self->_has + 1);
    if ((v12 & 0x20000) == 0)
    {
LABEL_67:
      if ((v12 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v12 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txCompBytes), @"TxCompBytes"}];
  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txDelayBytes), @"TxDelayBytes"}];
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_offChanDurMS), @"OffChanDurMS"}];
  }

  v13 = *(&self->_has + 1);
  if ((v13 & 0x400000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txSubPkts), @"TxSubPkts"}];
    v13 = *(&self->_has + 1);
  }

  if ((v13 & 0x40000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txCompPkts), @"TxCompPkts"}];
  }

  v14 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxQueueFullDurMS), @"MaxQueueFullDurMS"}];
    v14 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_77:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_185;
    }
  }

  else if ((v14 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgTxLatencyMS), @"AvgTxLatencyMS"}];
  v14 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_78:
    if ((v14 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_186;
  }

LABEL_185:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bTAntennaDurMS), @"BTAntennaDurMS"}];
  v14 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v14 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_187;
  }

LABEL_186:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_outputThroughput), @"OutputThroughput"}];
  v14 = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_80:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_188;
  }

LABEL_187:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_inputThroughput), @"InputThroughput"}];
  v14 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_81:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_189;
  }

LABEL_188:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_expectedThroughput), @"ExpectedThroughput"}];
  v14 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_82:
    if ((v14 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_190;
  }

LABEL_189:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_delayedThroughput), @"DelayedThroughput"}];
  v14 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_83:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_191;
  }

LABEL_190:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_availWLANDurMS), @"AvailWLANDurMS"}];
  v14 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_84:
    if ((v14 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_191:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_availWLANTxDurMS), @"AvailWLANTxDurMS"}];
  if ((*p_has & 8) != 0)
  {
LABEL_85:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_availWLANRxDurMS), @"AvailWLANRxDurMS"}];
  }

LABEL_86:
  v15 = *(&self->_has + 1);
  if ((v15 & 0x100000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txRetries), @"TxRetries"}];
    v15 = *(&self->_has + 1);
    if ((v15 & 0x200000) == 0)
    {
LABEL_88:
      if ((v15 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_195;
    }
  }

  else if ((v15 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txFails), @"TxFails"}];
  v15 = *(&self->_has + 1);
  if ((v15 & 0x400000) == 0)
  {
LABEL_89:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_195:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txFrames), @"TxFrames"}];
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxOvflErrs), @"RxOvflErrs"}];
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxFCSErrs), @"RxFCSErrs"}];
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxPLCPErrs), @"RxPLCPErrs"}];
  }

  v16 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxCRSErrs), @"RxCRSErrs"}];
    v16 = *p_has;
  }

  if ((v16 & 0x4000000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxDupErrs), @"RxDupErrs"}];
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxReplayErrs), @"RxReplayErrs"}];
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxDecryErrs), @"RxDecryErrs"}];
  }

  v17 = *(&self->_has + 1);
  if ((v17 & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxRetries), @"RxRetries"}];
    v17 = *(&self->_has + 1);
    if ((v17 & 2) == 0)
    {
LABEL_105:
      if ((v17 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_199;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_105;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxGoodPlcps), @"RxGoodPlcps"}];
  v17 = *(&self->_has + 1);
  if ((v17 & 1) == 0)
  {
LABEL_106:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_200;
  }

LABEL_199:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxFrames), @"RxFrames"}];
  v17 = *(&self->_has + 1);
  if ((v17 & 0x400) == 0)
  {
LABEL_107:
    if ((v17 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_200:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sNR), @"SNR"}];
  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txExpectedAMPDUDensity), @"TxExpectedAMPDUDensity"}];
  }

LABEL_109:
  v18 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rC1CoexDurationMS), @"RC1CoexDurationMS"}];
    v18 = *p_has;
    if ((*p_has & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v18 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v18 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rC2CoexDurationMS), @"RC2CoexDurationMS"}];
  if ((*p_has & 0x4000000000) != 0)
  {
LABEL_112:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lTECoexDurationMS), @"LTECoexDurationMS"}];
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxThroughput), @"RxThroughput"}];
  }

  v19 = *p_has;
  if (*p_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_aPTxDataStall), @"APTxDataStall"}];
    v19 = *p_has;
  }

  if ((v19 & 0x800000000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxAmpduTxBaMismatch), @"RxAmpduTxBaMismatch"}];
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_symptomsFails), @"SymptomsFails"}];
  }

  v20 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_is2GBand), @"Is2GBand"}];
    v20 = *p_has;
    if ((*p_has & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v20 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_isFGTraffic), @"IsFGTraffic"}];
  if ((*p_has & 0x80) != 0)
  {
LABEL_124:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_baselineThroughput), @"BaselineThroughput"}];
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_testThroughput), @"TestThroughput"}];
  }

  v21 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_infraDutyCycle), @"InfraDutyCycle"}];
    v21 = *p_has;
    if ((*p_has & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v21 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v21 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lastScanReason), @"LastScanReason"}];
  if ((*p_has & 2) != 0)
  {
LABEL_130:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_accessPointOUI), @"AccessPointOUI"}];
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSinceLastRecovery), @"TimeSinceLastRecovery"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  p_has = &self->_has;
  v5 = *(&self->_has + 1);
  if ((v5 & 0x8000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v5 = *(p_has + 1);
    if ((v5 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_135;
    }
  }

  else if ((v5 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  txOutputBelowExpectedTrue = self->_txOutputBelowExpectedTrue;
  PBDataWriterWriteUint64Field();
  v5 = *(p_has + 1);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_136;
  }

LABEL_135:
  txOutputBelowExpectedFalse = self->_txOutputBelowExpectedFalse;
  PBDataWriterWriteUint64Field();
  v5 = *(p_has + 1);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_137;
  }

LABEL_136:
  txOutputBelowInputTrue = self->_txOutputBelowInputTrue;
  PBDataWriterWriteUint64Field();
  v5 = *(p_has + 1);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_138;
  }

LABEL_137:
  txOutputBelowInputFalse = self->_txOutputBelowInputFalse;
  PBDataWriterWriteUint64Field();
  v5 = *(p_has + 1);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_139;
  }

LABEL_138:
  txLowFrameCountTrue = self->_txLowFrameCountTrue;
  PBDataWriterWriteUint64Field();
  v5 = *(p_has + 1);
  if ((v5 & 0x800000) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_140;
  }

LABEL_139:
  txLowFrameCountFalse = self->_txLowFrameCountFalse;
  PBDataWriterWriteUint64Field();
  v5 = *(p_has + 1);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_140:
  rxLowFrameCountTrue = self->_rxLowFrameCountTrue;
  PBDataWriterWriteUint64Field();
  if ((*(p_has + 1) & 4) != 0)
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

      goto LABEL_144;
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

    goto LABEL_145;
  }

LABEL_144:
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

    goto LABEL_146;
  }

LABEL_145:
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

    goto LABEL_147;
  }

LABEL_146:
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

    goto LABEL_148;
  }

LABEL_147:
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

LABEL_148:
  highTxRetriesTrue = self->_highTxRetriesTrue;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x100000000) != 0)
  {
LABEL_19:
    highTxRetriesFalse = self->_highTxRetriesFalse;
    PBDataWriterWriteUint64Field();
  }

LABEL_20:
  v9 = *(p_has + 1);
  if ((v9 & 0x80000000) != 0)
  {
    txQueueFullTrue = self->_txQueueFullTrue;
    PBDataWriterWriteUint64Field();
    v9 = *(p_has + 1);
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

      goto LABEL_152;
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

    goto LABEL_153;
  }

LABEL_152:
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

    goto LABEL_154;
  }

LABEL_153:
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

    goto LABEL_155;
  }

LABEL_154:
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

    goto LABEL_156;
  }

LABEL_155:
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

    goto LABEL_157;
  }

LABEL_156:
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

    goto LABEL_158;
  }

LABEL_157:
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

    goto LABEL_159;
  }

LABEL_158:
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

    goto LABEL_160;
  }

LABEL_159:
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

    goto LABEL_161;
  }

LABEL_160:
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

    goto LABEL_162;
  }

LABEL_161:
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

    goto LABEL_163;
  }

LABEL_162:
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

    goto LABEL_164;
  }

LABEL_163:
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

    goto LABEL_165;
  }

LABEL_164:
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

    goto LABEL_166;
  }

LABEL_165:
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

    goto LABEL_167;
  }

LABEL_166:
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

    goto LABEL_168;
  }

LABEL_167:
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

    goto LABEL_169;
  }

LABEL_168:
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

    goto LABEL_170;
  }

LABEL_169:
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

    goto LABEL_171;
  }

LABEL_170:
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

    goto LABEL_172;
  }

LABEL_171:
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

    goto LABEL_173;
  }

LABEL_172:
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

    goto LABEL_174;
  }

LABEL_173:
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

LABEL_174:
  cCA = self->_cCA;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x400000000000000) != 0)
  {
LABEL_50:
    rSSI = self->_rSSI;
    PBDataWriterWriteInt64Field();
  }

LABEL_51:
  v14 = *(p_has + 1);
  if ((v14 & 0x20000000) != 0)
  {
    txPhyRate = self->_txPhyRate;
    PBDataWriterWriteUint64Field();
    v14 = *(p_has + 1);
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
  if ((*(p_has + 1) & 0x10000) != 0)
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

  if ((*(p_has + 9) & 0x10) != 0)
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

  v23 = *(p_has + 1);
  if ((v23 & 0x200000000) != 0)
  {
    txSubBytes = self->_txSubBytes;
    PBDataWriterWriteUint64Field();
    v23 = *(p_has + 1);
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
  if ((*(p_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    txDelayBytes = self->_txDelayBytes;
    PBDataWriterWriteUint64Field();
  }

LABEL_69:
  if ((*(p_has + 6) & 0x10) != 0)
  {
    offChanDurMS = self->_offChanDurMS;
    PBDataWriterWriteUint64Field();
  }

  v26 = *(p_has + 1);
  if ((v26 & 0x400000000) != 0)
  {
    txSubPkts = self->_txSubPkts;
    PBDataWriterWriteUint64Field();
    v26 = *(p_has + 1);
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

      goto LABEL_184;
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

    goto LABEL_185;
  }

LABEL_184:
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

    goto LABEL_186;
  }

LABEL_185:
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

    goto LABEL_187;
  }

LABEL_186:
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

    goto LABEL_188;
  }

LABEL_187:
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

    goto LABEL_189;
  }

LABEL_188:
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

    goto LABEL_190;
  }

LABEL_189:
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

LABEL_190:
  availWLANTxDurMS = self->_availWLANTxDurMS;
  PBDataWriterWriteUint64Field();
  if ((*p_has & 8) != 0)
  {
LABEL_85:
    availWLANRxDurMS = self->_availWLANRxDurMS;
    PBDataWriterWriteUint64Field();
  }

LABEL_86:
  v31 = *(p_has + 1);
  if ((v31 & 0x100000000) != 0)
  {
    txRetries = self->_txRetries;
    PBDataWriterWriteUint64Field();
    v31 = *(p_has + 1);
    if ((v31 & 0x200000) == 0)
    {
LABEL_88:
      if ((v31 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_194;
    }
  }

  else if ((v31 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  txFails = self->_txFails;
  PBDataWriterWriteUint64Field();
  v31 = *(p_has + 1);
  if ((v31 & 0x400000) == 0)
  {
LABEL_89:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_194:
  txFrames = self->_txFrames;
  PBDataWriterWriteUint64Field();
  if ((*(p_has + 1) & 0x10) != 0)
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

  if ((*(p_has + 8) & 0x20) != 0)
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

  if ((*(p_has + 8) & 0x80) != 0)
  {
    rxReplayErrs = self->_rxReplayErrs;
    PBDataWriterWriteUint64Field();
  }

  if ((*(p_has + 7) & 0x20) != 0)
  {
    rxDecryErrs = self->_rxDecryErrs;
    PBDataWriterWriteUint64Field();
  }

  v40 = *(p_has + 1);
  if ((v40 & 0x100) != 0)
  {
    rxRetries = self->_rxRetries;
    PBDataWriterWriteUint64Field();
    v40 = *(p_has + 1);
    if ((v40 & 2) == 0)
    {
LABEL_105:
      if ((v40 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_198;
    }
  }

  else if ((v40 & 2) == 0)
  {
    goto LABEL_105;
  }

  rxGoodPlcps = self->_rxGoodPlcps;
  PBDataWriterWriteUint64Field();
  v40 = *(p_has + 1);
  if ((v40 & 1) == 0)
  {
LABEL_106:
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_199;
  }

LABEL_198:
  rxFrames = self->_rxFrames;
  PBDataWriterWriteUint64Field();
  v40 = *(p_has + 1);
  if ((v40 & 0x400) == 0)
  {
LABEL_107:
    if ((v40 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_199:
  sNR = self->_sNR;
  PBDataWriterWriteUint64Field();
  if ((*(p_has + 1) & 0x100000) != 0)
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
  if ((*(p_has + 9) & 2) != 0)
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

  if ((*(p_has + 9) & 8) != 0)
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
  if ((*(p_has + 9) & 0x20) != 0)
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
  if ((*(p_has + 9) & 0x40) != 0)
  {
    timeSinceLastRecovery = self->_timeSinceLastRecovery;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  p_has = &self->_has;
  v4 = *(&self->_has + 1);
  if ((v4 & 0x8000) != 0)
  {
    *(a3 + 80) = self->_timestamp;
    *(a3 + 101) |= 0x8000uLL;
    v4 = *(&self->_has + 1);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_136;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 91) = self->_txOutputBelowExpectedTrue;
  *(a3 + 101) |= 0x4000000uLL;
  v4 = *(&self->_has + 1);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(a3 + 90) = self->_txOutputBelowExpectedFalse;
  *(a3 + 101) |= 0x2000000uLL;
  v4 = *(&self->_has + 1);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(a3 + 93) = self->_txOutputBelowInputTrue;
  *(a3 + 101) |= 0x10000000uLL;
  v4 = *(&self->_has + 1);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(a3 + 92) = self->_txOutputBelowInputFalse;
  *(a3 + 101) |= 0x8000000uLL;
  v4 = *(&self->_has + 1);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(a3 + 89) = self->_txLowFrameCountTrue;
  *(a3 + 101) |= 0x1000000uLL;
  v4 = *(&self->_has + 1);
  if ((v4 & 0x800000) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(a3 + 88) = self->_txLowFrameCountFalse;
  *(a3 + 101) |= 0x800000uLL;
  v4 = *(&self->_has + 1);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_141:
  *(a3 + 68) = self->_rxLowFrameCountTrue;
  *(a3 + 101) |= 8uLL;
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    *(a3 + 67) = self->_rxLowFrameCountFalse;
    *(a3 + 101) |= 4uLL;
  }

LABEL_11:
  has = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(a3 + 30) = self->_highTxLatencyTrue;
    *(a3 + 100) |= 0x20000000uLL;
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

  *(a3 + 29) = self->_highTxLatencyFalse;
  *(a3 + 100) |= 0x10000000uLL;
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
  *(a3 + 50) = self->_lowTxPhyRateTrue;
  *(a3 + 100) |= 0x2000000000000uLL;
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
  *(a3 + 49) = self->_lowTxPhyRateFalse;
  *(a3 + 100) |= 0x1000000000000uLL;
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
  *(a3 + 32) = self->_highTxPerTrue;
  *(a3 + 100) |= 0x80000000uLL;
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
  *(a3 + 31) = self->_highTxPerFalse;
  *(a3 + 100) |= 0x40000000uLL;
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
  *(a3 + 34) = self->_highTxRetriesTrue;
  *(a3 + 100) |= 0x200000000uLL;
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_19:
    *(a3 + 33) = self->_highTxRetriesFalse;
    *(a3 + 100) |= 0x100000000uLL;
  }

LABEL_20:
  v6 = *(&self->_has + 1);
  if ((v6 & 0x80000000) != 0)
  {
    *(a3 + 96) = self->_txQueueFullTrue;
    *(a3 + 101) |= 0x80000000uLL;
    v6 = *(&self->_has + 1);
  }

  if ((v6 & 0x40000000) != 0)
  {
    *(a3 + 95) = self->_txQueueFullFalse;
    *(a3 + 101) |= 0x40000000uLL;
  }

  v7 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    *(a3 + 48) = self->_lowTxAMPDUDensityTrue;
    *(a3 + 100) |= 0x800000000000uLL;
    v7 = self->_has;
    if ((v7 & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v7 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_153;
    }
  }

  else if ((v7 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  *(a3 + 47) = self->_lowTxAMPDUDensityFalse;
  *(a3 + 100) |= 0x400000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(a3 + 28) = self->_highRxRetriesTrue;
  *(a3 + 100) |= 0x8000000uLL;
  v7 = self->_has;
  if ((v7 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(a3 + 27) = self->_highRxRetriesFalse;
  *(a3 + 100) |= 0x4000000uLL;
  v7 = self->_has;
  if ((v7 & 0x800000) == 0)
  {
LABEL_29:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(a3 + 24) = self->_highRxPhyPERTrue;
  *(a3 + 100) |= 0x800000uLL;
  v7 = self->_has;
  if ((v7 & 0x400000) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(a3 + 23) = self->_highRxPhyPERFalse;
  *(a3 + 100) |= 0x400000uLL;
  v7 = self->_has;
  if ((v7 & 0x80000) == 0)
  {
LABEL_31:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(a3 + 20) = self->_highRxFCSErrsTrue;
  *(a3 + 100) |= 0x80000uLL;
  v7 = self->_has;
  if ((v7 & 0x40000) == 0)
  {
LABEL_32:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(a3 + 19) = self->_highRxFCSErrsFalse;
  *(a3 + 100) |= 0x40000uLL;
  v7 = self->_has;
  if ((v7 & 0x200000) == 0)
  {
LABEL_33:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(a3 + 22) = self->_highRxOverflowsTrue;
  *(a3 + 100) |= 0x200000uLL;
  v7 = self->_has;
  if ((v7 & 0x100000) == 0)
  {
LABEL_34:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(a3 + 21) = self->_highRxOverflowsFalse;
  *(a3 + 100) |= 0x100000uLL;
  v7 = self->_has;
  if ((v7 & 0x20000) == 0)
  {
LABEL_35:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(a3 + 18) = self->_highRxDupsTrue;
  *(a3 + 100) |= 0x20000uLL;
  v7 = self->_has;
  if ((v7 & 0x10000) == 0)
  {
LABEL_36:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(a3 + 17) = self->_highRxDupsFalse;
  *(a3 + 100) |= 0x10000uLL;
  v7 = self->_has;
  if ((v7 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(a3 + 26) = self->_highRxReplaysTrue;
  *(a3 + 100) |= 0x2000000uLL;
  v7 = self->_has;
  if ((v7 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(a3 + 25) = self->_highRxReplaysFalse;
  *(a3 + 100) |= 0x1000000uLL;
  v7 = self->_has;
  if ((v7 & 0x8000) == 0)
  {
LABEL_39:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(a3 + 16) = self->_highRxDecryptErrsTrue;
  *(a3 + 100) |= 0x8000uLL;
  v7 = self->_has;
  if ((v7 & 0x4000) == 0)
  {
LABEL_40:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(a3 + 15) = self->_highRxDecryptErrsFalse;
  *(a3 + 100) |= 0x4000uLL;
  v7 = self->_has;
  if ((v7 & 0x2000) == 0)
  {
LABEL_41:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(a3 + 14) = self->_highRxDataPERTrue;
  *(a3 + 100) |= 0x2000uLL;
  v7 = self->_has;
  if ((v7 & 0x1000) == 0)
  {
LABEL_42:
    if ((v7 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(a3 + 13) = self->_highRxDataPERFalse;
  *(a3 + 100) |= 0x1000uLL;
  v7 = self->_has;
  if ((v7 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_170;
  }

LABEL_169:
  *(a3 + 42) = self->_lowAvailWLANDurTrue;
  *(a3 + 100) |= 0x20000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v7 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(a3 + 41) = self->_lowAvailWLANDurFalse;
  *(a3 + 100) |= 0x10000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v7 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_172;
  }

LABEL_171:
  *(a3 + 46) = self->_lowAvailWLANTxDurTrue;
  *(a3 + 100) |= 0x200000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(a3 + 45) = self->_lowAvailWLANTxDurFalse;
  *(a3 + 100) |= 0x100000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_174;
  }

LABEL_173:
  *(a3 + 44) = self->_lowAvailWLANRxDurTrue;
  *(a3 + 100) |= 0x80000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(a3 + 43) = self->_lowAvailWLANRxDurFalse;
  *(a3 + 100) |= 0x40000000000uLL;
  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_49:
    if ((v7 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_175:
  *(a3 + 9) = self->_cCA;
  *(a3 + 100) |= 0x100uLL;
  if ((*&self->_has & 0x400000000000000) != 0)
  {
LABEL_50:
    *(a3 + 59) = self->_rSSI;
    *(a3 + 100) |= 0x400000000000000uLL;
  }

LABEL_51:
  v8 = *(&self->_has + 1);
  if ((v8 & 0x20000000) != 0)
  {
    *(a3 + 94) = self->_txPhyRate;
    *(a3 + 101) |= 0x20000000uLL;
    v8 = *(&self->_has + 1);
    if ((v8 & 0x40) == 0)
    {
LABEL_53:
      if ((v8 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  *(a3 + 71) = self->_rxPhyRate;
  *(a3 + 101) |= 0x40uLL;
  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    *(a3 + 81) = self->_txAMPDUDensity;
    *(a3 + 101) |= 0x10000uLL;
  }

LABEL_55:
  v9 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    *(a3 + 52) = self->_measurementDurMS;
    *(a3 + 100) |= 0x8000000000000uLL;
    v9 = self->_has;
  }

  if ((v9 & 0x200) != 0)
  {
    *(a3 + 10) = self->_concurrentIntDurMS;
    *(a3 + 100) |= 0x200uLL;
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    *(a3 + 77) = self->_tVPMActiveDurationMS;
    *(a3 + 101) |= 0x1000uLL;
  }

  v10 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    *(a3 + 56) = self->_phyTxActivityDurMS;
    *(a3 + 100) |= 0x80000000000000uLL;
    v10 = self->_has;
  }

  if ((v10 & 0x40000000000000) != 0)
  {
    *(a3 + 55) = self->_phyRxActivityDurMS;
    *(a3 + 100) |= 0x40000000000000uLL;
  }

  v11 = *(&self->_has + 1);
  if ((v11 & 0x200000000) != 0)
  {
    *(a3 + 98) = self->_txSubBytes;
    *(a3 + 101) |= 0x200000000uLL;
    v11 = *(&self->_has + 1);
    if ((v11 & 0x20000) == 0)
    {
LABEL_67:
      if ((v11 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  *(a3 + 82) = self->_txCompBytes;
  *(a3 + 101) |= 0x20000uLL;
  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    *(a3 + 84) = self->_txDelayBytes;
    *(a3 + 101) |= 0x80000uLL;
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    *(a3 + 53) = self->_offChanDurMS;
    *(a3 + 100) |= 0x10000000000000uLL;
  }

  v12 = *(&self->_has + 1);
  if ((v12 & 0x400000000) != 0)
  {
    *(a3 + 99) = self->_txSubPkts;
    *(a3 + 101) |= 0x400000000uLL;
    v12 = *(&self->_has + 1);
  }

  if ((v12 & 0x40000) != 0)
  {
    *(a3 + 83) = self->_txCompPkts;
    *(a3 + 101) |= 0x40000uLL;
  }

  v13 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    *(a3 + 51) = self->_maxQueueFullDurMS;
    *(a3 + 100) |= 0x4000000000000uLL;
    v13 = self->_has;
    if ((v13 & 0x20) == 0)
    {
LABEL_77:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_185;
    }
  }

  else if ((v13 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  *(a3 + 6) = self->_avgTxLatencyMS;
  *(a3 + 100) |= 0x20uLL;
  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
LABEL_78:
    if ((v13 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(a3 + 7) = self->_bTAntennaDurMS;
  *(a3 + 100) |= 0x40uLL;
  v13 = self->_has;
  if ((v13 & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(a3 + 54) = self->_outputThroughput;
  *(a3 + 100) |= 0x20000000000000uLL;
  v13 = self->_has;
  if ((v13 & 0x800000000) == 0)
  {
LABEL_80:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_188;
  }

LABEL_187:
  *(a3 + 36) = self->_inputThroughput;
  *(a3 + 100) |= 0x800000000uLL;
  v13 = self->_has;
  if ((v13 & 0x800) == 0)
  {
LABEL_81:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(a3 + 12) = self->_expectedThroughput;
  *(a3 + 100) |= 0x800uLL;
  v13 = self->_has;
  if ((v13 & 0x400) == 0)
  {
LABEL_82:
    if ((v13 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_190;
  }

LABEL_189:
  *(a3 + 11) = self->_delayedThroughput;
  *(a3 + 100) |= 0x400uLL;
  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
LABEL_83:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(a3 + 3) = self->_availWLANDurMS;
  *(a3 + 100) |= 4uLL;
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_84:
    if ((v13 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_191:
  *(a3 + 5) = self->_availWLANTxDurMS;
  *(a3 + 100) |= 0x10uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_85:
    *(a3 + 4) = self->_availWLANRxDurMS;
    *(a3 + 100) |= 8uLL;
  }

LABEL_86:
  v14 = *(&self->_has + 1);
  if ((v14 & 0x100000000) != 0)
  {
    *(a3 + 97) = self->_txRetries;
    *(a3 + 101) |= 0x100000000uLL;
    v14 = *(&self->_has + 1);
    if ((v14 & 0x200000) == 0)
    {
LABEL_88:
      if ((v14 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_195;
    }
  }

  else if ((v14 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  *(a3 + 86) = self->_txFails;
  *(a3 + 101) |= 0x200000uLL;
  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000) == 0)
  {
LABEL_89:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_195:
  *(a3 + 87) = self->_txFrames;
  *(a3 + 101) |= 0x400000uLL;
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    *(a3 + 69) = self->_rxOvflErrs;
    *(a3 + 101) |= 0x10uLL;
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(a3 + 64) = self->_rxFCSErrs;
    *(a3 + 100) |= 0x8000000000000000;
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    *(a3 + 70) = self->_rxPLCPErrs;
    *(a3 + 101) |= 0x20uLL;
  }

  v15 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    *(a3 + 61) = self->_rxCRSErrs;
    *(a3 + 100) |= 0x1000000000000000uLL;
    v15 = self->_has;
  }

  if ((v15 & 0x4000000000000000) != 0)
  {
    *(a3 + 63) = self->_rxDupErrs;
    *(a3 + 100) |= 0x4000000000000000uLL;
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    *(a3 + 72) = self->_rxReplayErrs;
    *(a3 + 101) |= 0x80uLL;
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    *(a3 + 62) = self->_rxDecryErrs;
    *(a3 + 100) |= 0x2000000000000000uLL;
  }

  v16 = *(&self->_has + 1);
  if ((v16 & 0x100) != 0)
  {
    *(a3 + 73) = self->_rxRetries;
    *(a3 + 101) |= 0x100uLL;
    v16 = *(&self->_has + 1);
    if ((v16 & 2) == 0)
    {
LABEL_105:
      if ((v16 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_199;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_105;
  }

  *(a3 + 66) = self->_rxGoodPlcps;
  *(a3 + 101) |= 2uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 1) == 0)
  {
LABEL_106:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(a3 + 65) = self->_rxFrames;
  *(a3 + 101) |= 1uLL;
  v16 = *(&self->_has + 1);
  if ((v16 & 0x400) == 0)
  {
LABEL_107:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_200:
  *(a3 + 75) = self->_sNR;
  *(a3 + 101) |= 0x400uLL;
  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    *(a3 + 85) = self->_txExpectedAMPDUDensity;
    *(a3 + 101) |= 0x100000uLL;
  }

LABEL_109:
  v17 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    *(a3 + 57) = self->_rC1CoexDurationMS;
    *(a3 + 100) |= 0x100000000000000uLL;
    v17 = self->_has;
    if ((v17 & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v17 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v17 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  *(a3 + 58) = self->_rC2CoexDurationMS;
  *(a3 + 100) |= 0x200000000000000uLL;
  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_112:
    *(a3 + 39) = self->_lTECoexDurationMS;
    *(a3 + 100) |= 0x4000000000uLL;
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    *(a3 + 74) = self->_rxThroughput;
    *(a3 + 101) |= 0x200uLL;
  }

  v18 = *p_has;
  if (*p_has)
  {
    *(a3 + 1) = self->_aPTxDataStall;
    *(a3 + 100) |= 1uLL;
    v18 = self->_has;
  }

  if ((v18 & 0x800000000000000) != 0)
  {
    *(a3 + 60) = self->_rxAmpduTxBaMismatch;
    *(a3 + 100) |= 0x800000000000000uLL;
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    *(a3 + 76) = self->_symptomsFails;
    *(a3 + 101) |= 0x800uLL;
  }

  v19 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    *(a3 + 37) = self->_is2GBand;
    *(a3 + 100) |= 0x1000000000uLL;
    v19 = self->_has;
    if ((v19 & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v19 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  *(a3 + 38) = self->_isFGTraffic;
  *(a3 + 100) |= 0x2000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_124:
    *(a3 + 8) = self->_baselineThroughput;
    *(a3 + 100) |= 0x80uLL;
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    *(a3 + 78) = self->_testThroughput;
    *(a3 + 101) |= 0x2000uLL;
  }

  v20 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    *(a3 + 35) = self->_infraDutyCycle;
    *(a3 + 100) |= 0x400000000uLL;
    v20 = self->_has;
    if ((v20 & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v20 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v20 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  *(a3 + 40) = self->_lastScanReason;
  *(a3 + 100) |= 0x8000000000uLL;
  if ((*&self->_has & 2) != 0)
  {
LABEL_130:
    *(a3 + 2) = self->_accessPointOUI;
    *(a3 + 100) |= 2uLL;
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    *(a3 + 79) = self->_timeSinceLastRecovery;
    *(a3 + 101) |= 0x4000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  p_has = &self->_has;
  v6 = *(&self->_has + 1);
  if ((v6 & 0x8000) != 0)
  {
    *(result + 80) = self->_timestamp;
    *(result + 101) |= 0x8000uLL;
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

  *(result + 91) = self->_txOutputBelowExpectedTrue;
  *(result + 101) |= 0x4000000uLL;
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
  *(result + 90) = self->_txOutputBelowExpectedFalse;
  *(result + 101) |= 0x2000000uLL;
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
  *(result + 93) = self->_txOutputBelowInputTrue;
  *(result + 101) |= 0x10000000uLL;
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
  *(result + 92) = self->_txOutputBelowInputFalse;
  *(result + 101) |= 0x8000000uLL;
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
  *(result + 89) = self->_txLowFrameCountTrue;
  *(result + 101) |= 0x1000000uLL;
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
  *(result + 88) = self->_txLowFrameCountFalse;
  *(result + 101) |= 0x800000uLL;
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
  *(result + 68) = self->_rxLowFrameCountTrue;
  *(result + 101) |= 8uLL;
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_10:
    *(result + 67) = self->_rxLowFrameCountFalse;
    *(result + 101) |= 4uLL;
  }

LABEL_11:
  has = *p_has;
  if ((*p_has & 0x20000000) != 0)
  {
    *(result + 30) = self->_highTxLatencyTrue;
    *(result + 100) |= 0x20000000uLL;
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

  *(result + 29) = self->_highTxLatencyFalse;
  *(result + 100) |= 0x10000000uLL;
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
  *(result + 50) = self->_lowTxPhyRateTrue;
  *(result + 100) |= 0x2000000000000uLL;
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
  *(result + 49) = self->_lowTxPhyRateFalse;
  *(result + 100) |= 0x1000000000000uLL;
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
  *(result + 32) = self->_highTxPerTrue;
  *(result + 100) |= 0x80000000uLL;
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
  *(result + 31) = self->_highTxPerFalse;
  *(result + 100) |= 0x40000000uLL;
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
  *(result + 34) = self->_highTxRetriesTrue;
  *(result + 100) |= 0x200000000uLL;
  if ((*&self->_has & 0x100000000) != 0)
  {
LABEL_19:
    *(result + 33) = self->_highTxRetriesFalse;
    *(result + 100) |= 0x100000000uLL;
  }

LABEL_20:
  v8 = *(&self->_has + 1);
  if ((v8 & 0x80000000) != 0)
  {
    *(result + 96) = self->_txQueueFullTrue;
    *(result + 101) |= 0x80000000uLL;
    v8 = *(&self->_has + 1);
  }

  if ((v8 & 0x40000000) != 0)
  {
    *(result + 95) = self->_txQueueFullFalse;
    *(result + 101) |= 0x40000000uLL;
  }

  v9 = *p_has;
  if ((*p_has & 0x800000000000) != 0)
  {
    *(result + 48) = self->_lowTxAMPDUDensityTrue;
    *(result + 100) |= 0x800000000000uLL;
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

  *(result + 47) = self->_lowTxAMPDUDensityFalse;
  *(result + 100) |= 0x400000000000uLL;
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
  *(result + 28) = self->_highRxRetriesTrue;
  *(result + 100) |= 0x8000000uLL;
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
  *(result + 27) = self->_highRxRetriesFalse;
  *(result + 100) |= 0x4000000uLL;
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
  *(result + 24) = self->_highRxPhyPERTrue;
  *(result + 100) |= 0x800000uLL;
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
  *(result + 23) = self->_highRxPhyPERFalse;
  *(result + 100) |= 0x400000uLL;
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
  *(result + 20) = self->_highRxFCSErrsTrue;
  *(result + 100) |= 0x80000uLL;
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
  *(result + 19) = self->_highRxFCSErrsFalse;
  *(result + 100) |= 0x40000uLL;
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
  *(result + 22) = self->_highRxOverflowsTrue;
  *(result + 100) |= 0x200000uLL;
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
  *(result + 21) = self->_highRxOverflowsFalse;
  *(result + 100) |= 0x100000uLL;
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
  *(result + 18) = self->_highRxDupsTrue;
  *(result + 100) |= 0x20000uLL;
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
  *(result + 17) = self->_highRxDupsFalse;
  *(result + 100) |= 0x10000uLL;
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
  *(result + 26) = self->_highRxReplaysTrue;
  *(result + 100) |= 0x2000000uLL;
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
  *(result + 25) = self->_highRxReplaysFalse;
  *(result + 100) |= 0x1000000uLL;
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
  *(result + 16) = self->_highRxDecryptErrsTrue;
  *(result + 100) |= 0x8000uLL;
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
  *(result + 15) = self->_highRxDecryptErrsFalse;
  *(result + 100) |= 0x4000uLL;
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
  *(result + 14) = self->_highRxDataPERTrue;
  *(result + 100) |= 0x2000uLL;
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
  *(result + 13) = self->_highRxDataPERFalse;
  *(result + 100) |= 0x1000uLL;
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
  *(result + 42) = self->_lowAvailWLANDurTrue;
  *(result + 100) |= 0x20000000000uLL;
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
  *(result + 41) = self->_lowAvailWLANDurFalse;
  *(result + 100) |= 0x10000000000uLL;
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
  *(result + 46) = self->_lowAvailWLANTxDurTrue;
  *(result + 100) |= 0x200000000000uLL;
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
  *(result + 45) = self->_lowAvailWLANTxDurFalse;
  *(result + 100) |= 0x100000000000uLL;
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
  *(result + 44) = self->_lowAvailWLANRxDurTrue;
  *(result + 100) |= 0x80000000000uLL;
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
  *(result + 43) = self->_lowAvailWLANRxDurFalse;
  *(result + 100) |= 0x40000000000uLL;
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
  *(result + 9) = self->_cCA;
  *(result + 100) |= 0x100uLL;
  if ((*&self->_has & 0x400000000000000) != 0)
  {
LABEL_50:
    *(result + 59) = self->_rSSI;
    *(result + 100) |= 0x400000000000000uLL;
  }

LABEL_51:
  v10 = *(&self->_has + 1);
  if ((v10 & 0x20000000) != 0)
  {
    *(result + 94) = self->_txPhyRate;
    *(result + 101) |= 0x20000000uLL;
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

  *(result + 71) = self->_rxPhyRate;
  *(result + 101) |= 0x40uLL;
  if ((*(&self->_has + 1) & 0x10000) != 0)
  {
LABEL_54:
    *(result + 81) = self->_txAMPDUDensity;
    *(result + 101) |= 0x10000uLL;
  }

LABEL_55:
  v11 = *p_has;
  if ((*p_has & 0x8000000000000) != 0)
  {
    *(result + 52) = self->_measurementDurMS;
    *(result + 100) |= 0x8000000000000uLL;
    v11 = self->_has;
  }

  if ((v11 & 0x200) != 0)
  {
    *(result + 10) = self->_concurrentIntDurMS;
    *(result + 100) |= 0x200uLL;
  }

  if ((*(&self->_has + 9) & 0x10) != 0)
  {
    *(result + 77) = self->_tVPMActiveDurationMS;
    *(result + 101) |= 0x1000uLL;
  }

  v12 = *p_has;
  if ((*p_has & 0x80000000000000) != 0)
  {
    *(result + 56) = self->_phyTxActivityDurMS;
    *(result + 100) |= 0x80000000000000uLL;
    v12 = self->_has;
  }

  if ((v12 & 0x40000000000000) != 0)
  {
    *(result + 55) = self->_phyRxActivityDurMS;
    *(result + 100) |= 0x40000000000000uLL;
  }

  v13 = *(&self->_has + 1);
  if ((v13 & 0x200000000) != 0)
  {
    *(result + 98) = self->_txSubBytes;
    *(result + 101) |= 0x200000000uLL;
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

  *(result + 82) = self->_txCompBytes;
  *(result + 101) |= 0x20000uLL;
  if ((*(&self->_has + 1) & 0x80000) != 0)
  {
LABEL_68:
    *(result + 84) = self->_txDelayBytes;
    *(result + 101) |= 0x80000uLL;
  }

LABEL_69:
  if ((*(&self->_has + 6) & 0x10) != 0)
  {
    *(result + 53) = self->_offChanDurMS;
    *(result + 100) |= 0x10000000000000uLL;
  }

  v14 = *(&self->_has + 1);
  if ((v14 & 0x400000000) != 0)
  {
    *(result + 99) = self->_txSubPkts;
    *(result + 101) |= 0x400000000uLL;
    v14 = *(&self->_has + 1);
  }

  if ((v14 & 0x40000) != 0)
  {
    *(result + 83) = self->_txCompPkts;
    *(result + 101) |= 0x40000uLL;
  }

  v15 = *p_has;
  if ((*p_has & 0x4000000000000) != 0)
  {
    *(result + 51) = self->_maxQueueFullDurMS;
    *(result + 100) |= 0x4000000000000uLL;
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

  *(result + 6) = self->_avgTxLatencyMS;
  *(result + 100) |= 0x20uLL;
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
  *(result + 7) = self->_bTAntennaDurMS;
  *(result + 100) |= 0x40uLL;
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
  *(result + 54) = self->_outputThroughput;
  *(result + 100) |= 0x20000000000000uLL;
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
  *(result + 36) = self->_inputThroughput;
  *(result + 100) |= 0x800000000uLL;
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
  *(result + 12) = self->_expectedThroughput;
  *(result + 100) |= 0x800uLL;
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
  *(result + 11) = self->_delayedThroughput;
  *(result + 100) |= 0x400uLL;
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
  *(result + 3) = self->_availWLANDurMS;
  *(result + 100) |= 4uLL;
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
  *(result + 5) = self->_availWLANTxDurMS;
  *(result + 100) |= 0x10uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_85:
    *(result + 4) = self->_availWLANRxDurMS;
    *(result + 100) |= 8uLL;
  }

LABEL_86:
  v16 = *(&self->_has + 1);
  if ((v16 & 0x100000000) != 0)
  {
    *(result + 97) = self->_txRetries;
    *(result + 101) |= 0x100000000uLL;
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

  *(result + 86) = self->_txFails;
  *(result + 101) |= 0x200000uLL;
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
  *(result + 87) = self->_txFrames;
  *(result + 101) |= 0x400000uLL;
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
LABEL_90:
    *(result + 69) = self->_rxOvflErrs;
    *(result + 101) |= 0x10uLL;
  }

LABEL_91:
  if ((*p_has & 0x8000000000000000) != 0)
  {
    *(result + 64) = self->_rxFCSErrs;
    *(result + 100) |= 0x8000000000000000;
  }

  if ((*(&self->_has + 8) & 0x20) != 0)
  {
    *(result + 70) = self->_rxPLCPErrs;
    *(result + 101) |= 0x20uLL;
  }

  v17 = *p_has;
  if ((*p_has & 0x1000000000000000) != 0)
  {
    *(result + 61) = self->_rxCRSErrs;
    *(result + 100) |= 0x1000000000000000uLL;
    v17 = self->_has;
  }

  if ((v17 & 0x4000000000000000) != 0)
  {
    *(result + 63) = self->_rxDupErrs;
    *(result + 100) |= 0x4000000000000000uLL;
  }

  if ((*(&self->_has + 8) & 0x80) != 0)
  {
    *(result + 72) = self->_rxReplayErrs;
    *(result + 101) |= 0x80uLL;
  }

  if ((*(&self->_has + 7) & 0x20) != 0)
  {
    *(result + 62) = self->_rxDecryErrs;
    *(result + 100) |= 0x2000000000000000uLL;
  }

  v18 = *(&self->_has + 1);
  if ((v18 & 0x100) != 0)
  {
    *(result + 73) = self->_rxRetries;
    *(result + 101) |= 0x100uLL;
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

  *(result + 66) = self->_rxGoodPlcps;
  *(result + 101) |= 2uLL;
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
  *(result + 65) = self->_rxFrames;
  *(result + 101) |= 1uLL;
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
  *(result + 75) = self->_sNR;
  *(result + 101) |= 0x400uLL;
  if ((*(&self->_has + 1) & 0x100000) != 0)
  {
LABEL_108:
    *(result + 85) = self->_txExpectedAMPDUDensity;
    *(result + 101) |= 0x100000uLL;
  }

LABEL_109:
  v19 = *p_has;
  if ((*p_has & 0x100000000000000) != 0)
  {
    *(result + 57) = self->_rC1CoexDurationMS;
    *(result + 100) |= 0x100000000000000uLL;
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

  *(result + 58) = self->_rC2CoexDurationMS;
  *(result + 100) |= 0x200000000000000uLL;
  if ((*&self->_has & 0x4000000000) != 0)
  {
LABEL_112:
    *(result + 39) = self->_lTECoexDurationMS;
    *(result + 100) |= 0x4000000000uLL;
  }

LABEL_113:
  if ((*(&self->_has + 9) & 2) != 0)
  {
    *(result + 74) = self->_rxThroughput;
    *(result + 101) |= 0x200uLL;
  }

  v20 = *p_has;
  if (*p_has)
  {
    *(result + 1) = self->_aPTxDataStall;
    *(result + 100) |= 1uLL;
    v20 = self->_has;
  }

  if ((v20 & 0x800000000000000) != 0)
  {
    *(result + 60) = self->_rxAmpduTxBaMismatch;
    *(result + 100) |= 0x800000000000000uLL;
  }

  if ((*(&self->_has + 9) & 8) != 0)
  {
    *(result + 76) = self->_symptomsFails;
    *(result + 101) |= 0x800uLL;
  }

  v21 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    *(result + 37) = self->_is2GBand;
    *(result + 100) |= 0x1000000000uLL;
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

  *(result + 38) = self->_isFGTraffic;
  *(result + 100) |= 0x2000000000uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_124:
    *(result + 8) = self->_baselineThroughput;
    *(result + 100) |= 0x80uLL;
  }

LABEL_125:
  if ((*(&self->_has + 9) & 0x20) != 0)
  {
    *(result + 78) = self->_testThroughput;
    *(result + 101) |= 0x2000uLL;
  }

  v22 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    *(result + 35) = self->_infraDutyCycle;
    *(result + 100) |= 0x400000000uLL;
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

  *(result + 40) = self->_lastScanReason;
  *(result + 100) |= 0x8000000000uLL;
  if ((*&self->_has & 2) != 0)
  {
LABEL_130:
    *(result + 2) = self->_accessPointOUI;
    *(result + 100) |= 2uLL;
  }

LABEL_131:
  if ((*(&self->_has + 9) & 0x40) != 0)
  {
    *(result + 79) = self->_timeSinceLastRecovery;
    *(result + 101) |= 0x4000uLL;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  v6 = *(&self->_has + 1);
  v7 = (a3 + 800);
  v8 = *(a3 + 101);
  if ((v6 & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_timestamp != *(a3 + 80))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0 || self->_txOutputBelowExpectedTrue != *(a3 + 91))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0 || self->_txOutputBelowExpectedFalse != *(a3 + 90))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0 || self->_txOutputBelowInputTrue != *(a3 + 93))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x8000000) != 0)
  {
    if ((v8 & 0x8000000) == 0 || self->_txOutputBelowInputFalse != *(a3 + 92))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x1000000) != 0)
  {
    if ((v8 & 0x1000000) == 0 || self->_txLowFrameCountTrue != *(a3 + 89))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x800000) != 0)
  {
    if ((v8 & 0x800000) == 0 || self->_txLowFrameCountFalse != *(a3 + 88))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x800000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_rxLowFrameCountTrue != *(a3 + 68))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_rxLowFrameCountFalse != *(a3 + 67))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_496;
  }

  has = self->_has;
  v10 = *v7;
  if ((has & 0x20000000) != 0)
  {
    if ((v10 & 0x20000000) == 0 || self->_highTxLatencyTrue != *(a3 + 30))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x20000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x10000000) != 0)
  {
    if ((v10 & 0x10000000) == 0 || self->_highTxLatencyFalse != *(a3 + 29))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x10000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x2000000000000) != 0)
  {
    if ((v10 & 0x2000000000000) == 0 || self->_lowTxPhyRateTrue != *(a3 + 50))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x2000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x1000000000000) != 0)
  {
    if ((v10 & 0x1000000000000) == 0 || self->_lowTxPhyRateFalse != *(a3 + 49))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x1000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x80000000) != 0)
  {
    if ((v10 & 0x80000000) == 0 || self->_highTxPerTrue != *(a3 + 32))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x40000000) != 0)
  {
    if ((v10 & 0x40000000) == 0 || self->_highTxPerFalse != *(a3 + 31))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x200000000) != 0)
  {
    if ((v10 & 0x200000000) == 0 || self->_highTxRetriesTrue != *(a3 + 34))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x200000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x100000000) != 0)
  {
    if ((v10 & 0x100000000) == 0 || self->_highTxRetriesFalse != *(a3 + 33))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x100000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0 || self->_txQueueFullTrue != *(a3 + 96))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0 || self->_txQueueFullFalse != *(a3 + 95))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x800000000000) != 0)
  {
    if ((v10 & 0x800000000000) == 0 || self->_lowTxAMPDUDensityTrue != *(a3 + 48))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x800000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x400000000000) != 0)
  {
    if ((v10 & 0x400000000000) == 0 || self->_lowTxAMPDUDensityFalse != *(a3 + 47))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x400000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x8000000) != 0)
  {
    if ((v10 & 0x8000000) == 0 || self->_highRxRetriesTrue != *(a3 + 28))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x8000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x4000000) != 0)
  {
    if ((v10 & 0x4000000) == 0 || self->_highRxRetriesFalse != *(a3 + 27))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x4000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x800000) != 0)
  {
    if ((v10 & 0x800000) == 0 || self->_highRxPhyPERTrue != *(a3 + 24))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x800000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_highRxPhyPERFalse != *(a3 + 23))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || self->_highRxFCSErrsTrue != *(a3 + 20))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || self->_highRxFCSErrsFalse != *(a3 + 19))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || self->_highRxOverflowsTrue != *(a3 + 22))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x100000) != 0)
  {
    if ((v10 & 0x100000) == 0 || self->_highRxOverflowsFalse != *(a3 + 21))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x100000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x20000) != 0)
  {
    if ((v10 & 0x20000) == 0 || self->_highRxDupsTrue != *(a3 + 18))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x20000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x10000) != 0)
  {
    if ((v10 & 0x10000) == 0 || self->_highRxDupsFalse != *(a3 + 17))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x10000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x2000000) != 0)
  {
    if ((v10 & 0x2000000) == 0 || self->_highRxReplaysTrue != *(a3 + 26))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x2000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) == 0 || self->_highRxReplaysFalse != *(a3 + 25))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_highRxDecryptErrsTrue != *(a3 + 16))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_highRxDecryptErrsFalse != *(a3 + 15))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0 || self->_highRxDataPERTrue != *(a3 + 14))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0 || self->_highRxDataPERFalse != *(a3 + 13))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x20000000000) != 0)
  {
    if ((v10 & 0x20000000000) == 0 || self->_lowAvailWLANDurTrue != *(a3 + 42))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x20000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x10000000000) != 0)
  {
    if ((v10 & 0x10000000000) == 0 || self->_lowAvailWLANDurFalse != *(a3 + 41))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x10000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x200000000000) != 0)
  {
    if ((v10 & 0x200000000000) == 0 || self->_lowAvailWLANTxDurTrue != *(a3 + 46))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x200000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x100000000000) != 0)
  {
    if ((v10 & 0x100000000000) == 0 || self->_lowAvailWLANTxDurFalse != *(a3 + 45))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x100000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x80000000000) != 0)
  {
    if ((v10 & 0x80000000000) == 0 || self->_lowAvailWLANRxDurTrue != *(a3 + 44))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x80000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x40000000000) != 0)
  {
    if ((v10 & 0x40000000000) == 0 || self->_lowAvailWLANRxDurFalse != *(a3 + 43))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x40000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_cCA != *(a3 + 9))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x400000000000000) != 0)
  {
    if ((v10 & 0x400000000000000) == 0 || self->_rSSI != *(a3 + 59))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x400000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x20000000) != 0)
  {
    if ((v8 & 0x20000000) == 0 || self->_txPhyRate != *(a3 + 94))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x20000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_rxPhyRate != *(a3 + 71))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_txAMPDUDensity != *(a3 + 81))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x8000000000000) != 0)
  {
    if ((v10 & 0x8000000000000) == 0 || self->_measurementDurMS != *(a3 + 52))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x8000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x200) != 0)
  {
    if ((v10 & 0x200) == 0 || self->_concurrentIntDurMS != *(a3 + 10))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x200) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_tVPMActiveDurationMS != *(a3 + 77))
    {
      goto LABEL_496;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x80000000000000) != 0)
  {
    if ((v10 & 0x80000000000000) == 0 || self->_phyTxActivityDurMS != *(a3 + 56))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x80000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x40000000000000) != 0)
  {
    if ((v10 & 0x40000000000000) == 0 || self->_phyRxActivityDurMS != *(a3 + 55))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x40000000000000) != 0)
  {
    goto LABEL_496;
  }

  v11 = *(a3 + 101);
  if ((v6 & 0x200000000) != 0)
  {
    if ((v11 & 0x200000000) == 0 || self->_txSubBytes != *(a3 + 98))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x200000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x20000) != 0)
  {
    if ((v11 & 0x20000) == 0 || self->_txCompBytes != *(a3 + 82))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x20000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x80000) != 0)
  {
    if ((v11 & 0x80000) == 0 || self->_txDelayBytes != *(a3 + 84))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x80000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x10000000000000) != 0)
  {
    if ((v10 & 0x10000000000000) == 0 || self->_offChanDurMS != *(a3 + 53))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x10000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x400000000) != 0)
  {
    if ((v11 & 0x400000000) == 0 || self->_txSubPkts != *(a3 + 99))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x400000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x40000) != 0)
  {
    if ((v11 & 0x40000) == 0 || self->_txCompPkts != *(a3 + 83))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x40000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x4000000000000) != 0)
  {
    if ((v10 & 0x4000000000000) == 0 || self->_maxQueueFullDurMS != *(a3 + 51))
    {
      goto LABEL_496;
    }
  }

  else if ((v10 & 0x4000000000000) != 0)
  {
    goto LABEL_496;
  }

  v12 = *v7;
  if ((has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_avgTxLatencyMS != *(a3 + 6))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_bTAntennaDurMS != *(a3 + 7))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x20000000000000) != 0)
  {
    if ((v12 & 0x20000000000000) == 0 || self->_outputThroughput != *(a3 + 54))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x20000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x800000000) != 0)
  {
    if ((v12 & 0x800000000) == 0 || self->_inputThroughput != *(a3 + 36))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x800000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_expectedThroughput != *(a3 + 12))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_delayedThroughput != *(a3 + 11))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_availWLANDurMS != *(a3 + 3))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x10) != 0)
  {
    if ((v12 & 0x10) == 0 || self->_availWLANTxDurMS != *(a3 + 5))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x10) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_availWLANRxDurMS != *(a3 + 4))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if ((v11 & 0x100000000) == 0 || self->_txRetries != *(a3 + 97))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x100000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x200000) != 0)
  {
    if ((v11 & 0x200000) == 0 || self->_txFails != *(a3 + 86))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x200000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x400000) != 0)
  {
    if ((v11 & 0x400000) == 0 || self->_txFrames != *(a3 + 87))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x400000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_rxOvflErrs != *(a3 + 69))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_496;
  }

  if (has < 0)
  {
    if ((v12 & 0x8000000000000000) == 0 || self->_rxFCSErrs != *(a3 + 64))
    {
      goto LABEL_496;
    }
  }

  else if (v12 < 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_rxPLCPErrs != *(a3 + 70))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x1000000000000000) != 0)
  {
    if ((v12 & 0x1000000000000000) == 0 || self->_rxCRSErrs != *(a3 + 61))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x4000000000000000) != 0)
  {
    if ((v12 & 0x4000000000000000) == 0 || self->_rxDupErrs != *(a3 + 63))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_rxReplayErrs != *(a3 + 72))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x2000000000000000) != 0)
  {
    if ((v12 & 0x2000000000000000) == 0 || self->_rxDecryErrs != *(a3 + 62))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x2000000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x100) != 0)
  {
    if ((v11 & 0x100) == 0 || self->_rxRetries != *(a3 + 73))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x100) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_rxGoodPlcps != *(a3 + 66))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_496;
  }

  if (v6)
  {
    if ((v11 & 1) == 0 || self->_rxFrames != *(a3 + 65))
    {
      goto LABEL_496;
    }
  }

  else if (v11)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x400) != 0)
  {
    if ((v11 & 0x400) == 0 || self->_sNR != *(a3 + 75))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x400) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x100000) != 0)
  {
    if ((v11 & 0x100000) == 0 || self->_txExpectedAMPDUDensity != *(a3 + 85))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x100000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x100000000000000) != 0)
  {
    if ((v12 & 0x100000000000000) == 0 || self->_rC1CoexDurationMS != *(a3 + 57))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x100000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x200000000000000) != 0)
  {
    if ((v12 & 0x200000000000000) == 0 || self->_rC2CoexDurationMS != *(a3 + 58))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x200000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x4000000000) != 0)
  {
    if ((v12 & 0x4000000000) == 0 || self->_lTECoexDurationMS != *(a3 + 39))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x4000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x200) != 0)
  {
    if ((v11 & 0x200) == 0 || self->_rxThroughput != *(a3 + 74))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x200) != 0)
  {
    goto LABEL_496;
  }

  if (has)
  {
    if ((v12 & 1) == 0 || self->_aPTxDataStall != *(a3 + 1))
    {
      goto LABEL_496;
    }
  }

  else if (v12)
  {
    goto LABEL_496;
  }

  if ((has & 0x800000000000000) != 0)
  {
    if ((v12 & 0x800000000000000) == 0 || self->_rxAmpduTxBaMismatch != *(a3 + 60))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x800000000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x800) != 0)
  {
    if ((v11 & 0x800) == 0 || self->_symptomsFails != *(a3 + 76))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x800) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x1000000000) != 0)
  {
    if ((v12 & 0x1000000000) == 0 || self->_is2GBand != *(a3 + 37))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x1000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x2000000000) != 0)
  {
    if ((v12 & 0x2000000000) == 0 || self->_isFGTraffic != *(a3 + 38))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x2000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_baselineThroughput != *(a3 + 8))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_496;
  }

  if ((v6 & 0x2000) != 0)
  {
    if ((v11 & 0x2000) == 0 || self->_testThroughput != *(a3 + 78))
    {
      goto LABEL_496;
    }
  }

  else if ((v11 & 0x2000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x400000000) != 0)
  {
    if ((v12 & 0x400000000) == 0 || self->_infraDutyCycle != *(a3 + 35))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x400000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 0x8000000000) != 0)
  {
    if ((v12 & 0x8000000000) == 0 || self->_lastScanReason != *(a3 + 40))
    {
      goto LABEL_496;
    }
  }

  else if ((v12 & 0x8000000000) != 0)
  {
    goto LABEL_496;
  }

  if ((has & 2) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_492;
    }

LABEL_496:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v12 & 2) == 0 || self->_accessPointOUI != *(a3 + 2))
  {
    goto LABEL_496;
  }

LABEL_492:
  LOBYTE(v5) = (*(a3 + 101) & 0x4000) == 0;
  if ((v6 & 0x4000) != 0)
  {
    if ((v11 & 0x4000) == 0 || self->_timeSinceLastRecovery != *(a3 + 79))
    {
      goto LABEL_496;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
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
  v3 = (a3 + 800);
  v4 = *(a3 + 101);
  if ((v4 & 0x8000) != 0)
  {
    self->_timestamp = *(a3 + 80);
    *(&self->_has + 1) |= 0x8000uLL;
    v4 = *(a3 + 101);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_136;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_3;
  }

  self->_txOutputBelowExpectedTrue = *(a3 + 91);
  *(&self->_has + 1) |= 0x4000000uLL;
  v4 = *(a3 + 101);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_txOutputBelowExpectedFalse = *(a3 + 90);
  *(&self->_has + 1) |= 0x2000000uLL;
  v4 = *(a3 + 101);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_txOutputBelowInputTrue = *(a3 + 93);
  *(&self->_has + 1) |= 0x10000000uLL;
  v4 = *(a3 + 101);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_txOutputBelowInputFalse = *(a3 + 92);
  *(&self->_has + 1) |= 0x8000000uLL;
  v4 = *(a3 + 101);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_txLowFrameCountTrue = *(a3 + 89);
  *(&self->_has + 1) |= 0x1000000uLL;
  v4 = *(a3 + 101);
  if ((v4 & 0x800000) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_141;
  }

LABEL_140:
  self->_txLowFrameCountFalse = *(a3 + 88);
  *(&self->_has + 1) |= 0x800000uLL;
  v4 = *(a3 + 101);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_141:
  self->_rxLowFrameCountTrue = *(a3 + 68);
  *(&self->_has + 1) |= 8uLL;
  if ((*(a3 + 101) & 4) != 0)
  {
LABEL_10:
    self->_rxLowFrameCountFalse = *(a3 + 67);
    *(&self->_has + 1) |= 4uLL;
  }

LABEL_11:
  v5 = *v3;
  if ((*v3 & 0x20000000) != 0)
  {
    self->_highTxLatencyTrue = *(a3 + 30);
    *&self->_has |= 0x20000000uLL;
    v5 = *(a3 + 100);
    if ((v5 & 0x10000000) == 0)
    {
LABEL_13:
      if ((v5 & 0x2000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_145;
    }
  }

  else if ((v5 & 0x10000000) == 0)
  {
    goto LABEL_13;
  }

  self->_highTxLatencyFalse = *(a3 + 29);
  *&self->_has |= 0x10000000uLL;
  v5 = *(a3 + 100);
  if ((v5 & 0x2000000000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_146;
  }

LABEL_145:
  self->_lowTxPhyRateTrue = *(a3 + 50);
  *&self->_has |= 0x2000000000000uLL;
  v5 = *(a3 + 100);
  if ((v5 & 0x1000000000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_147;
  }

LABEL_146:
  self->_lowTxPhyRateFalse = *(a3 + 49);
  *&self->_has |= 0x1000000000000uLL;
  v5 = *(a3 + 100);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_148;
  }

LABEL_147:
  self->_highTxPerTrue = *(a3 + 32);
  *&self->_has |= 0x80000000uLL;
  v5 = *(a3 + 100);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_149;
  }

LABEL_148:
  self->_highTxPerFalse = *(a3 + 31);
  *&self->_has |= 0x40000000uLL;
  v5 = *(a3 + 100);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_149:
  self->_highTxRetriesTrue = *(a3 + 34);
  *&self->_has |= 0x200000000uLL;
  if ((*(a3 + 100) & 0x100000000) != 0)
  {
LABEL_19:
    self->_highTxRetriesFalse = *(a3 + 33);
    *&self->_has |= 0x100000000uLL;
  }

LABEL_20:
  v6 = *(a3 + 101);
  if ((v6 & 0x80000000) != 0)
  {
    self->_txQueueFullTrue = *(a3 + 96);
    *(&self->_has + 1) |= 0x80000000uLL;
    v6 = *(a3 + 101);
  }

  if ((v6 & 0x40000000) != 0)
  {
    self->_txQueueFullFalse = *(a3 + 95);
    *(&self->_has + 1) |= 0x40000000uLL;
  }

  v7 = *v3;
  if ((*v3 & 0x800000000000) != 0)
  {
    self->_lowTxAMPDUDensityTrue = *(a3 + 48);
    *&self->_has |= 0x800000000000uLL;
    v7 = *(a3 + 100);
    if ((v7 & 0x400000000000) == 0)
    {
LABEL_26:
      if ((v7 & 0x8000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_153;
    }
  }

  else if ((v7 & 0x400000000000) == 0)
  {
    goto LABEL_26;
  }

  self->_lowTxAMPDUDensityFalse = *(a3 + 47);
  *&self->_has |= 0x400000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_27:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_highRxRetriesTrue = *(a3 + 28);
  *&self->_has |= 0x8000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_155;
  }

LABEL_154:
  self->_highRxRetriesFalse = *(a3 + 27);
  *&self->_has |= 0x4000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x800000) == 0)
  {
LABEL_29:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_156;
  }

LABEL_155:
  self->_highRxPhyPERTrue = *(a3 + 24);
  *&self->_has |= 0x800000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x400000) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_157;
  }

LABEL_156:
  self->_highRxPhyPERFalse = *(a3 + 23);
  *&self->_has |= 0x400000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x80000) == 0)
  {
LABEL_31:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_158;
  }

LABEL_157:
  self->_highRxFCSErrsTrue = *(a3 + 20);
  *&self->_has |= 0x80000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x40000) == 0)
  {
LABEL_32:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_159;
  }

LABEL_158:
  self->_highRxFCSErrsFalse = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x200000) == 0)
  {
LABEL_33:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_160;
  }

LABEL_159:
  self->_highRxOverflowsTrue = *(a3 + 22);
  *&self->_has |= 0x200000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x100000) == 0)
  {
LABEL_34:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_161;
  }

LABEL_160:
  self->_highRxOverflowsFalse = *(a3 + 21);
  *&self->_has |= 0x100000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x20000) == 0)
  {
LABEL_35:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_162;
  }

LABEL_161:
  self->_highRxDupsTrue = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x10000) == 0)
  {
LABEL_36:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_163;
  }

LABEL_162:
  self->_highRxDupsFalse = *(a3 + 17);
  *&self->_has |= 0x10000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_164;
  }

LABEL_163:
  self->_highRxReplaysTrue = *(a3 + 26);
  *&self->_has |= 0x2000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_38:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_165;
  }

LABEL_164:
  self->_highRxReplaysFalse = *(a3 + 25);
  *&self->_has |= 0x1000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x8000) == 0)
  {
LABEL_39:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_166;
  }

LABEL_165:
  self->_highRxDecryptErrsTrue = *(a3 + 16);
  *&self->_has |= 0x8000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x4000) == 0)
  {
LABEL_40:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_167;
  }

LABEL_166:
  self->_highRxDecryptErrsFalse = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x2000) == 0)
  {
LABEL_41:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_168;
  }

LABEL_167:
  self->_highRxDataPERTrue = *(a3 + 14);
  *&self->_has |= 0x2000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x1000) == 0)
  {
LABEL_42:
    if ((v7 & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_169;
  }

LABEL_168:
  self->_highRxDataPERFalse = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x10000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_lowAvailWLANDurTrue = *(a3 + 42);
  *&self->_has |= 0x20000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x10000000000) == 0)
  {
LABEL_44:
    if ((v7 & 0x200000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_171;
  }

LABEL_170:
  self->_lowAvailWLANDurFalse = *(a3 + 41);
  *&self->_has |= 0x10000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x200000000000) == 0)
  {
LABEL_45:
    if ((v7 & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_172;
  }

LABEL_171:
  self->_lowAvailWLANTxDurTrue = *(a3 + 46);
  *&self->_has |= 0x200000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x100000000000) == 0)
  {
LABEL_46:
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_173;
  }

LABEL_172:
  self->_lowAvailWLANTxDurFalse = *(a3 + 45);
  *&self->_has |= 0x100000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x80000000000) == 0)
  {
LABEL_47:
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_174;
  }

LABEL_173:
  self->_lowAvailWLANRxDurTrue = *(a3 + 44);
  *&self->_has |= 0x80000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_48:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_175;
  }

LABEL_174:
  self->_lowAvailWLANRxDurFalse = *(a3 + 43);
  *&self->_has |= 0x40000000000uLL;
  v7 = *(a3 + 100);
  if ((v7 & 0x100) == 0)
  {
LABEL_49:
    if ((v7 & 0x400000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_175:
  self->_cCA = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  if ((*(a3 + 100) & 0x400000000000000) != 0)
  {
LABEL_50:
    self->_rSSI = *(a3 + 59);
    *&self->_has |= 0x400000000000000uLL;
  }

LABEL_51:
  v8 = *(a3 + 101);
  if ((v8 & 0x20000000) != 0)
  {
    self->_txPhyRate = *(a3 + 94);
    *(&self->_has + 1) |= 0x20000000uLL;
    v8 = *(a3 + 101);
    if ((v8 & 0x40) == 0)
    {
LABEL_53:
      if ((v8 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  self->_rxPhyRate = *(a3 + 71);
  *(&self->_has + 1) |= 0x40uLL;
  if ((*(a3 + 101) & 0x10000) != 0)
  {
LABEL_54:
    self->_txAMPDUDensity = *(a3 + 81);
    *(&self->_has + 1) |= 0x10000uLL;
  }

LABEL_55:
  v9 = *v3;
  if ((*v3 & 0x8000000000000) != 0)
  {
    self->_measurementDurMS = *(a3 + 52);
    *&self->_has |= 0x8000000000000uLL;
    v9 = *(a3 + 100);
  }

  if ((v9 & 0x200) != 0)
  {
    self->_concurrentIntDurMS = *(a3 + 10);
    *&self->_has |= 0x200uLL;
  }

  if ((*(a3 + 809) & 0x10) != 0)
  {
    self->_tVPMActiveDurationMS = *(a3 + 77);
    *(&self->_has + 1) |= 0x1000uLL;
  }

  v10 = *v3;
  if ((*v3 & 0x80000000000000) != 0)
  {
    self->_phyTxActivityDurMS = *(a3 + 56);
    *&self->_has |= 0x80000000000000uLL;
    v10 = *(a3 + 100);
  }

  if ((v10 & 0x40000000000000) != 0)
  {
    self->_phyRxActivityDurMS = *(a3 + 55);
    *&self->_has |= 0x40000000000000uLL;
  }

  v11 = *(a3 + 101);
  if ((v11 & 0x200000000) != 0)
  {
    self->_txSubBytes = *(a3 + 98);
    *(&self->_has + 1) |= 0x200000000uLL;
    v11 = *(a3 + 101);
    if ((v11 & 0x20000) == 0)
    {
LABEL_67:
      if ((v11 & 0x80000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  self->_txCompBytes = *(a3 + 82);
  *(&self->_has + 1) |= 0x20000uLL;
  if ((*(a3 + 101) & 0x80000) != 0)
  {
LABEL_68:
    self->_txDelayBytes = *(a3 + 84);
    *(&self->_has + 1) |= 0x80000uLL;
  }

LABEL_69:
  if ((*(a3 + 806) & 0x10) != 0)
  {
    self->_offChanDurMS = *(a3 + 53);
    *&self->_has |= 0x10000000000000uLL;
  }

  v12 = *(a3 + 101);
  if ((v12 & 0x400000000) != 0)
  {
    self->_txSubPkts = *(a3 + 99);
    *(&self->_has + 1) |= 0x400000000uLL;
    v12 = *(a3 + 101);
  }

  if ((v12 & 0x40000) != 0)
  {
    self->_txCompPkts = *(a3 + 83);
    *(&self->_has + 1) |= 0x40000uLL;
  }

  v13 = *v3;
  if ((*v3 & 0x4000000000000) != 0)
  {
    self->_maxQueueFullDurMS = *(a3 + 51);
    *&self->_has |= 0x4000000000000uLL;
    v13 = *(a3 + 100);
    if ((v13 & 0x20) == 0)
    {
LABEL_77:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_185;
    }
  }

  else if ((v13 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  self->_avgTxLatencyMS = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v13 = *(a3 + 100);
  if ((v13 & 0x40) == 0)
  {
LABEL_78:
    if ((v13 & 0x20000000000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_186;
  }

LABEL_185:
  self->_bTAntennaDurMS = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v13 = *(a3 + 100);
  if ((v13 & 0x20000000000000) == 0)
  {
LABEL_79:
    if ((v13 & 0x800000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_187;
  }

LABEL_186:
  self->_outputThroughput = *(a3 + 54);
  *&self->_has |= 0x20000000000000uLL;
  v13 = *(a3 + 100);
  if ((v13 & 0x800000000) == 0)
  {
LABEL_80:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_188;
  }

LABEL_187:
  self->_inputThroughput = *(a3 + 36);
  *&self->_has |= 0x800000000uLL;
  v13 = *(a3 + 100);
  if ((v13 & 0x800) == 0)
  {
LABEL_81:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_189;
  }

LABEL_188:
  self->_expectedThroughput = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  v13 = *(a3 + 100);
  if ((v13 & 0x400) == 0)
  {
LABEL_82:
    if ((v13 & 4) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_190;
  }

LABEL_189:
  self->_delayedThroughput = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v13 = *(a3 + 100);
  if ((v13 & 4) == 0)
  {
LABEL_83:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_191;
  }

LABEL_190:
  self->_availWLANDurMS = *(a3 + 3);
  *&self->_has |= 4uLL;
  v13 = *(a3 + 100);
  if ((v13 & 0x10) == 0)
  {
LABEL_84:
    if ((v13 & 8) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_191:
  self->_availWLANTxDurMS = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  if ((*(a3 + 100) & 8) != 0)
  {
LABEL_85:
    self->_availWLANRxDurMS = *(a3 + 4);
    *&self->_has |= 8uLL;
  }

LABEL_86:
  v14 = *(a3 + 101);
  if ((v14 & 0x100000000) != 0)
  {
    self->_txRetries = *(a3 + 97);
    *(&self->_has + 1) |= 0x100000000uLL;
    v14 = *(a3 + 101);
    if ((v14 & 0x200000) == 0)
    {
LABEL_88:
      if ((v14 & 0x400000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_195;
    }
  }

  else if ((v14 & 0x200000) == 0)
  {
    goto LABEL_88;
  }

  self->_txFails = *(a3 + 86);
  *(&self->_has + 1) |= 0x200000uLL;
  v14 = *(a3 + 101);
  if ((v14 & 0x400000) == 0)
  {
LABEL_89:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_195:
  self->_txFrames = *(a3 + 87);
  *(&self->_has + 1) |= 0x400000uLL;
  if ((*(a3 + 101) & 0x10) != 0)
  {
LABEL_90:
    self->_rxOvflErrs = *(a3 + 69);
    *(&self->_has + 1) |= 0x10uLL;
  }

LABEL_91:
  if (*v3 < 0)
  {
    self->_rxFCSErrs = *(a3 + 64);
    *&self->_has |= 0x8000000000000000;
  }

  if ((*(a3 + 808) & 0x20) != 0)
  {
    self->_rxPLCPErrs = *(a3 + 70);
    *(&self->_has + 1) |= 0x20uLL;
  }

  v15 = *v3;
  if ((*v3 & 0x1000000000000000) != 0)
  {
    self->_rxCRSErrs = *(a3 + 61);
    *&self->_has |= 0x1000000000000000uLL;
    v15 = *(a3 + 100);
  }

  if ((v15 & 0x4000000000000000) != 0)
  {
    self->_rxDupErrs = *(a3 + 63);
    *&self->_has |= 0x4000000000000000uLL;
  }

  if ((*(a3 + 808) & 0x80) != 0)
  {
    self->_rxReplayErrs = *(a3 + 72);
    *(&self->_has + 1) |= 0x80uLL;
  }

  if ((*(a3 + 807) & 0x20) != 0)
  {
    self->_rxDecryErrs = *(a3 + 62);
    *&self->_has |= 0x2000000000000000uLL;
  }

  v16 = *(a3 + 101);
  if ((v16 & 0x100) != 0)
  {
    self->_rxRetries = *(a3 + 73);
    *(&self->_has + 1) |= 0x100uLL;
    v16 = *(a3 + 101);
    if ((v16 & 2) == 0)
    {
LABEL_105:
      if ((v16 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_199;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_105;
  }

  self->_rxGoodPlcps = *(a3 + 66);
  *(&self->_has + 1) |= 2uLL;
  v16 = *(a3 + 101);
  if ((v16 & 1) == 0)
  {
LABEL_106:
    if ((v16 & 0x400) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_200;
  }

LABEL_199:
  self->_rxFrames = *(a3 + 65);
  *(&self->_has + 1) |= 1uLL;
  v16 = *(a3 + 101);
  if ((v16 & 0x400) == 0)
  {
LABEL_107:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_200:
  self->_sNR = *(a3 + 75);
  *(&self->_has + 1) |= 0x400uLL;
  if ((*(a3 + 101) & 0x100000) != 0)
  {
LABEL_108:
    self->_txExpectedAMPDUDensity = *(a3 + 85);
    *(&self->_has + 1) |= 0x100000uLL;
  }

LABEL_109:
  v17 = *v3;
  if ((*v3 & 0x100000000000000) != 0)
  {
    self->_rC1CoexDurationMS = *(a3 + 57);
    *&self->_has |= 0x100000000000000uLL;
    v17 = *(a3 + 100);
    if ((v17 & 0x200000000000000) == 0)
    {
LABEL_111:
      if ((v17 & 0x4000000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }
  }

  else if ((v17 & 0x200000000000000) == 0)
  {
    goto LABEL_111;
  }

  self->_rC2CoexDurationMS = *(a3 + 58);
  *&self->_has |= 0x200000000000000uLL;
  if ((*(a3 + 100) & 0x4000000000) != 0)
  {
LABEL_112:
    self->_lTECoexDurationMS = *(a3 + 39);
    *&self->_has |= 0x4000000000uLL;
  }

LABEL_113:
  if ((*(a3 + 809) & 2) != 0)
  {
    self->_rxThroughput = *(a3 + 74);
    *(&self->_has + 1) |= 0x200uLL;
  }

  v18 = *v3;
  if (*v3)
  {
    self->_aPTxDataStall = *(a3 + 1);
    *&self->_has |= 1uLL;
    v18 = *(a3 + 100);
  }

  if ((v18 & 0x800000000000000) != 0)
  {
    self->_rxAmpduTxBaMismatch = *(a3 + 60);
    *&self->_has |= 0x800000000000000uLL;
  }

  if ((*(a3 + 809) & 8) != 0)
  {
    self->_symptomsFails = *(a3 + 76);
    *(&self->_has + 1) |= 0x800uLL;
  }

  v19 = *v3;
  if ((*v3 & 0x1000000000) != 0)
  {
    self->_is2GBand = *(a3 + 37);
    *&self->_has |= 0x1000000000uLL;
    v19 = *(a3 + 100);
    if ((v19 & 0x2000000000) == 0)
    {
LABEL_123:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }
  }

  else if ((v19 & 0x2000000000) == 0)
  {
    goto LABEL_123;
  }

  self->_isFGTraffic = *(a3 + 38);
  *&self->_has |= 0x2000000000uLL;
  if ((*(a3 + 100) & 0x80) != 0)
  {
LABEL_124:
    self->_baselineThroughput = *(a3 + 8);
    *&self->_has |= 0x80uLL;
  }

LABEL_125:
  if ((*(a3 + 809) & 0x20) != 0)
  {
    self->_testThroughput = *(a3 + 78);
    *(&self->_has + 1) |= 0x2000uLL;
  }

  v20 = *v3;
  if ((*v3 & 0x400000000) != 0)
  {
    self->_infraDutyCycle = *(a3 + 35);
    *&self->_has |= 0x400000000uLL;
    v20 = *(a3 + 100);
    if ((v20 & 0x8000000000) == 0)
    {
LABEL_129:
      if ((v20 & 2) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }
  }

  else if ((v20 & 0x8000000000) == 0)
  {
    goto LABEL_129;
  }

  self->_lastScanReason = *(a3 + 40);
  *&self->_has |= 0x8000000000uLL;
  if ((*(a3 + 100) & 2) != 0)
  {
LABEL_130:
    self->_accessPointOUI = *(a3 + 2);
    *&self->_has |= 2uLL;
  }

LABEL_131:
  if ((*(a3 + 809) & 0x40) != 0)
  {
    self->_timeSinceLastRecovery = *(a3 + 79);
    *(&self->_has + 1) |= 0x4000uLL;
  }
}

@end
@interface SiriCoreConnectionTCPInfoMetrics
- (SiriCoreConnectionTCPInfoMetrics)initWithInterfaceName:(id)name rttCurrent:(id)current rttSmoothed:(id)smoothed rttVariance:(id)variance rttBest:(id)best packetsSent:(id)sent bytesSent:(id)bytesSent bytesRetransmitted:(id)self0 bytesUnacked:(id)self1 packetsReceived:(id)self2 bytesReceived:(id)self3 duplicateBytesReceived:(id)self4 outOfOrderBytesReceived:(id)self5 sendBufferBytes:(id)self6 sendBandwidth:(id)self7 synRetransmits:(id)self8 tfoSynDataAcked:(id)self9;
- (id)description;
@end

@implementation SiriCoreConnectionTCPInfoMetrics

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SiriCoreConnectionTCPInfoMetrics;
  v4 = [(SiriCoreConnectionTCPInfoMetrics *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {interfaceName = %@, rttCurrent = %@, rttSmoothed = %@, rttVariance = %@, rttBest = %@, packetsSent = %@, bytesSent = %@, bytesRetransmitted = %@, bytesUnacked = %@, packetsReceived = %@, bytesReceived = %@, duplicateBytesReceived = %@, outOfOrderBytesReceived = %@, sendBufferBytes = %@, sendBandwidth = %@, synRetransmits = %@ tfoSynDataAcked = %@}", v4, self->_interfaceName, self->_rttCurrent, self->_rttSmoothed, self->_rttVariance, self->_rttBest, self->_packetsSent, self->_bytesSent, self->_bytesRetransmitted, self->_bytesUnacked, self->_packetsReceived, self->_bytesReceived, self->_duplicateBytesReceived, self->_outOfOrderBytesReceived, self->_sendBufferBytes, self->_sendBandwidth, self->_synRetransmits, self->_tfoSynDataAcked];

  return v5;
}

- (SiriCoreConnectionTCPInfoMetrics)initWithInterfaceName:(id)name rttCurrent:(id)current rttSmoothed:(id)smoothed rttVariance:(id)variance rttBest:(id)best packetsSent:(id)sent bytesSent:(id)bytesSent bytesRetransmitted:(id)self0 bytesUnacked:(id)self1 packetsReceived:(id)self2 bytesReceived:(id)self3 duplicateBytesReceived:(id)self4 outOfOrderBytesReceived:(id)self5 sendBufferBytes:(id)self6 sendBandwidth:(id)self7 synRetransmits:(id)self8 tfoSynDataAcked:(id)self9
{
  nameCopy = name;
  currentCopy = current;
  smoothedCopy = smoothed;
  varianceCopy = variance;
  bestCopy = best;
  sentCopy = sent;
  bytesSentCopy = bytesSent;
  retransmittedCopy = retransmitted;
  v26 = currentCopy;
  unackedCopy = unacked;
  receivedCopy = received;
  bytesReceivedCopy = bytesReceived;
  duplicateBytesReceivedCopy = duplicateBytesReceived;
  orderBytesReceivedCopy = orderBytesReceived;
  bytesCopy = bytes;
  bandwidthCopy = bandwidth;
  retransmitsCopy = retransmits;
  ackedCopy = acked;
  v79.receiver = self;
  v79.super_class = SiriCoreConnectionTCPInfoMetrics;
  v34 = [(SiriCoreConnectionTCPInfoMetrics *)&v79 init];
  if (v34)
  {
    v35 = [nameCopy copy];
    interfaceName = v34->_interfaceName;
    v34->_interfaceName = v35;

    v37 = [v26 copy];
    rttCurrent = v34->_rttCurrent;
    v34->_rttCurrent = v37;

    v39 = [smoothedCopy copy];
    rttSmoothed = v34->_rttSmoothed;
    v34->_rttSmoothed = v39;

    v41 = [varianceCopy copy];
    rttVariance = v34->_rttVariance;
    v34->_rttVariance = v41;

    v43 = [bestCopy copy];
    rttBest = v34->_rttBest;
    v34->_rttBest = v43;

    v45 = [sentCopy copy];
    packetsSent = v34->_packetsSent;
    v34->_packetsSent = v45;

    v47 = [bytesSentCopy copy];
    bytesSent = v34->_bytesSent;
    v34->_bytesSent = v47;

    v49 = [retransmittedCopy copy];
    bytesRetransmitted = v34->_bytesRetransmitted;
    v34->_bytesRetransmitted = v49;

    v51 = [unackedCopy copy];
    bytesUnacked = v34->_bytesUnacked;
    v34->_bytesUnacked = v51;

    v53 = [receivedCopy copy];
    packetsReceived = v34->_packetsReceived;
    v34->_packetsReceived = v53;

    v55 = [bytesReceivedCopy copy];
    bytesReceived = v34->_bytesReceived;
    v34->_bytesReceived = v55;

    v57 = [duplicateBytesReceivedCopy copy];
    duplicateBytesReceived = v34->_duplicateBytesReceived;
    v34->_duplicateBytesReceived = v57;

    v59 = [orderBytesReceivedCopy copy];
    outOfOrderBytesReceived = v34->_outOfOrderBytesReceived;
    v34->_outOfOrderBytesReceived = v59;

    v61 = [bytesCopy copy];
    sendBufferBytes = v34->_sendBufferBytes;
    v34->_sendBufferBytes = v61;

    v63 = [bandwidthCopy copy];
    sendBandwidth = v34->_sendBandwidth;
    v34->_sendBandwidth = v63;

    v65 = [retransmitsCopy copy];
    synRetransmits = v34->_synRetransmits;
    v34->_synRetransmits = v65;

    v67 = [ackedCopy copy];
    tfoSynDataAcked = v34->_tfoSynDataAcked;
    v34->_tfoSynDataAcked = v67;
  }

  return v34;
}

@end
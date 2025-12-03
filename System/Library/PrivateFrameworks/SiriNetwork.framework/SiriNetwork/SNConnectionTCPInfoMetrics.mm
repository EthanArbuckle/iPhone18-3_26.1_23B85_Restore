@interface SNConnectionTCPInfoMetrics
- (SNConnectionTCPInfoMetrics)initWithInterfaceName:(id)name rttCurrent:(id)current rttSmoothed:(id)smoothed rttVariance:(id)variance rttBest:(id)best packetsSent:(id)sent packetsReceived:(id)received bytesSent:(id)self0 bytesReceived:(id)self1 bytesRetransmitted:(id)self2 bytesUnacked:(id)self3 duplicateBytesReceived:(id)self4 outOfOrderBytesReceived:(id)self5 sendBufferBytes:(id)self6 sendBandwidth:(id)self7 synRetransmits:(id)self8 tfoSynDataAcked:(id)self9;
- (id)description;
@end

@implementation SNConnectionTCPInfoMetrics

- (SNConnectionTCPInfoMetrics)initWithInterfaceName:(id)name rttCurrent:(id)current rttSmoothed:(id)smoothed rttVariance:(id)variance rttBest:(id)best packetsSent:(id)sent packetsReceived:(id)received bytesSent:(id)self0 bytesReceived:(id)self1 bytesRetransmitted:(id)self2 bytesUnacked:(id)self3 duplicateBytesReceived:(id)self4 outOfOrderBytesReceived:(id)self5 sendBufferBytes:(id)self6 sendBandwidth:(id)self7 synRetransmits:(id)self8 tfoSynDataAcked:(id)self9
{
  nameCopy = name;
  currentCopy = current;
  smoothedCopy = smoothed;
  varianceCopy = variance;
  bestCopy = best;
  sentCopy = sent;
  receivedCopy = received;
  bytesSentCopy = bytesSent;
  v26 = currentCopy;
  bytesReceivedCopy = bytesReceived;
  retransmittedCopy = retransmitted;
  unackedCopy = unacked;
  duplicateBytesReceivedCopy = duplicateBytesReceived;
  orderBytesReceivedCopy = orderBytesReceived;
  bytesCopy = bytes;
  bandwidthCopy = bandwidth;
  retransmitsCopy = retransmits;
  ackedCopy = acked;
  v79.receiver = self;
  v79.super_class = SNConnectionTCPInfoMetrics;
  v34 = [(SNConnectionTCPInfoMetrics *)&v79 init];
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

    v47 = [receivedCopy copy];
    packetsReceived = v34->_packetsReceived;
    v34->_packetsReceived = v47;

    v49 = [bytesReceivedCopy copy];
    bytesReceived = v34->_bytesReceived;
    v34->_bytesReceived = v49;

    v51 = [bytesSentCopy copy];
    bytesSent = v34->_bytesSent;
    v34->_bytesSent = v51;

    v53 = [retransmittedCopy copy];
    bytesRetransmitted = v34->_bytesRetransmitted;
    v34->_bytesRetransmitted = v53;

    v55 = [unackedCopy copy];
    bytesUnacked = v34->_bytesUnacked;
    v34->_bytesUnacked = v55;

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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SNConnectionTCPInfoMetrics;
  v4 = [(SNConnectionTCPInfoMetrics *)&v8 description];
  synRetransmits = self->_synRetransmits;
  v6 = [v3 stringWithFormat:@"%@ {interfaceName = %@, rttCurrent = %@, rttSmoothed = %@, rttVariance = %@, rttBest = %@, packetsSent = %@, bytesSent = %@, bytesRetransmitted = %@, bytesUnacked = %@, packetsReceived = %@, bytesReceived = %@, duplicateBytesReceived = %@, outOfOrderBytesReceived = %@, sendBufferBytes = %@, sendBandwidth = %@, synRetransmits = %@ tfoSynDataAcked = %@}", v4, self->_interfaceName, self->_rttCurrent, self->_rttSmoothed, self->_rttVariance, self->_rttBest, self->_packetsSent, self->_bytesSent, self->_bytesRetransmitted, self->_bytesUnacked, self->_packetsReceived, self->_bytesReceived, self->_duplicateBytesReceived, self->_outOfOrderBytesReceived, self->_sendBufferBytes, self->_sendBandwidth, synRetransmits, self->_tfoSynDataAcked];

  return v6;
}

@end
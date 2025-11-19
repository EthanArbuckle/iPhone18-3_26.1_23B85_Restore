@interface SiriCoreConnectionTCPInfoMetrics
- (SiriCoreConnectionTCPInfoMetrics)initWithInterfaceName:(id)a3 rttCurrent:(id)a4 rttSmoothed:(id)a5 rttVariance:(id)a6 rttBest:(id)a7 packetsSent:(id)a8 bytesSent:(id)a9 bytesRetransmitted:(id)a10 bytesUnacked:(id)a11 packetsReceived:(id)a12 bytesReceived:(id)a13 duplicateBytesReceived:(id)a14 outOfOrderBytesReceived:(id)a15 sendBufferBytes:(id)a16 sendBandwidth:(id)a17 synRetransmits:(id)a18 tfoSynDataAcked:(id)a19;
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

- (SiriCoreConnectionTCPInfoMetrics)initWithInterfaceName:(id)a3 rttCurrent:(id)a4 rttSmoothed:(id)a5 rttVariance:(id)a6 rttBest:(id)a7 packetsSent:(id)a8 bytesSent:(id)a9 bytesRetransmitted:(id)a10 bytesUnacked:(id)a11 packetsReceived:(id)a12 bytesReceived:(id)a13 duplicateBytesReceived:(id)a14 outOfOrderBytesReceived:(id)a15 sendBufferBytes:(id)a16 sendBandwidth:(id)a17 synRetransmits:(id)a18 tfoSynDataAcked:(id)a19
{
  v24 = a3;
  v25 = a4;
  v78 = a5;
  v77 = a6;
  v76 = a7;
  v75 = a8;
  v74 = a9;
  v73 = a10;
  v26 = v25;
  v72 = a11;
  v71 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v79.receiver = self;
  v79.super_class = SiriCoreConnectionTCPInfoMetrics;
  v34 = [(SiriCoreConnectionTCPInfoMetrics *)&v79 init];
  if (v34)
  {
    v35 = [v24 copy];
    interfaceName = v34->_interfaceName;
    v34->_interfaceName = v35;

    v37 = [v26 copy];
    rttCurrent = v34->_rttCurrent;
    v34->_rttCurrent = v37;

    v39 = [v78 copy];
    rttSmoothed = v34->_rttSmoothed;
    v34->_rttSmoothed = v39;

    v41 = [v77 copy];
    rttVariance = v34->_rttVariance;
    v34->_rttVariance = v41;

    v43 = [v76 copy];
    rttBest = v34->_rttBest;
    v34->_rttBest = v43;

    v45 = [v75 copy];
    packetsSent = v34->_packetsSent;
    v34->_packetsSent = v45;

    v47 = [v74 copy];
    bytesSent = v34->_bytesSent;
    v34->_bytesSent = v47;

    v49 = [v73 copy];
    bytesRetransmitted = v34->_bytesRetransmitted;
    v34->_bytesRetransmitted = v49;

    v51 = [v72 copy];
    bytesUnacked = v34->_bytesUnacked;
    v34->_bytesUnacked = v51;

    v53 = [v71 copy];
    packetsReceived = v34->_packetsReceived;
    v34->_packetsReceived = v53;

    v55 = [v27 copy];
    bytesReceived = v34->_bytesReceived;
    v34->_bytesReceived = v55;

    v57 = [v28 copy];
    duplicateBytesReceived = v34->_duplicateBytesReceived;
    v34->_duplicateBytesReceived = v57;

    v59 = [v29 copy];
    outOfOrderBytesReceived = v34->_outOfOrderBytesReceived;
    v34->_outOfOrderBytesReceived = v59;

    v61 = [v30 copy];
    sendBufferBytes = v34->_sendBufferBytes;
    v34->_sendBufferBytes = v61;

    v63 = [v31 copy];
    sendBandwidth = v34->_sendBandwidth;
    v34->_sendBandwidth = v63;

    v65 = [v32 copy];
    synRetransmits = v34->_synRetransmits;
    v34->_synRetransmits = v65;

    v67 = [v33 copy];
    tfoSynDataAcked = v34->_tfoSynDataAcked;
    v34->_tfoSynDataAcked = v67;
  }

  return v34;
}

@end
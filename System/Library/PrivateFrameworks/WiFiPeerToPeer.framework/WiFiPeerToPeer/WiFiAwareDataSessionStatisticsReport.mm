@interface WiFiAwareDataSessionStatisticsReport
- (BOOL)isEqual:(id)equal;
- (WiFiAwareDataSessionStatisticsReport)initWithCoder:(id)coder;
- (WiFiAwareDataSessionStatisticsReport)initWithPeerAddress:(id)address infrastructureChannel:(id)channel txCCAHistogram:(id)histogram rxRSSIHistogram:(id)iHistogram preferred2GChannelsCount:(id)count preferred5GChannelsCount:(id)channelsCount dfsChannelsCount:(id)dfsChannelsCount csaCount:(id)self0 quietIECount:(id)self1 txErrorCount:(id)self2 packetsOn2GCount:(id)self3 packetsNAVOn2GCount:(id)self4 packetsHOFOn2GCount:(id)self5 packetsOn5GCount:(id)self6 packetsOverridenOn5GCount:(id)self7 infraRelayOperationStatus:(BOOL)self8 infraRelayRequestersCount:(id)self9 txExpiredCount:(id)expiredCount txNoACKCount:(id)kCount txFailedCount:(id)failedCount txNoResourcesCount:(id)resourcesCount txIOErrorCount:(id)oErrorCount txMemoryErrorCount:(id)memoryErrorCount txChipModeErrorCount:(id)modeErrorCount txNoRemotePeerCount:(id)peerCount txInternalErrorCount:(id)internalErrorCount txDroppedCount:(id)droppedCount txFirmwareFreePacketCount:(id)address0 txMaxRetriesCount:(id)address1 txForceLifetimeExpiredCount:(id)address2 channelSequenceMismatchOn5GCount:(id)address3 channelSequenceMismatchOn2GCount:(id)address4 infraScanCount:(id)address5 infraAssocCount:(id)address6 infraDisassocCount:(id)address7 countryCode:(id)address8 txConsecutiveErrorsHistogram:(id)address9 rxFWDelayHistogram:(id)channel0 rxIPCDelayHistogram:(id)channel1 txPacketExpiryHistogram:(id)channel2;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareDataSessionStatisticsReport

- (WiFiAwareDataSessionStatisticsReport)initWithPeerAddress:(id)address infrastructureChannel:(id)channel txCCAHistogram:(id)histogram rxRSSIHistogram:(id)iHistogram preferred2GChannelsCount:(id)count preferred5GChannelsCount:(id)channelsCount dfsChannelsCount:(id)dfsChannelsCount csaCount:(id)self0 quietIECount:(id)self1 txErrorCount:(id)self2 packetsOn2GCount:(id)self3 packetsNAVOn2GCount:(id)self4 packetsHOFOn2GCount:(id)self5 packetsOn5GCount:(id)self6 packetsOverridenOn5GCount:(id)self7 infraRelayOperationStatus:(BOOL)self8 infraRelayRequestersCount:(id)self9 txExpiredCount:(id)expiredCount txNoACKCount:(id)kCount txFailedCount:(id)failedCount txNoResourcesCount:(id)resourcesCount txIOErrorCount:(id)oErrorCount txMemoryErrorCount:(id)memoryErrorCount txChipModeErrorCount:(id)modeErrorCount txNoRemotePeerCount:(id)peerCount txInternalErrorCount:(id)internalErrorCount txDroppedCount:(id)droppedCount txFirmwareFreePacketCount:(id)address0 txMaxRetriesCount:(id)address1 txForceLifetimeExpiredCount:(id)address2 channelSequenceMismatchOn5GCount:(id)address3 channelSequenceMismatchOn2GCount:(id)address4 infraScanCount:(id)address5 infraAssocCount:(id)address6 infraDisassocCount:(id)address7 countryCode:(id)address8 txConsecutiveErrorsHistogram:(id)address9 rxFWDelayHistogram:(id)channel0 rxIPCDelayHistogram:(id)channel1 txPacketExpiryHistogram:(id)channel2
{
  addressCopy = address;
  channelCopy = channel;
  channelCopy2 = channel;
  histogramCopy = histogram;
  iHistogramCopy = iHistogram;
  countCopy = count;
  countCopy2 = count;
  channelsCountCopy = channelsCount;
  channelsCountCopy2 = channelsCount;
  dfsChannelsCountCopy = dfsChannelsCount;
  csaCountCopy = csaCount;
  eCountCopy = eCount;
  errorCountCopy = errorCount;
  gCountCopy = gCount;
  on2GCountCopy = on2GCount;
  fOn2GCountCopy = fOn2GCount;
  on5GCountCopy = on5GCount;
  overridenOn5GCountCopy = overridenOn5GCount;
  requestersCountCopy = requestersCount;
  expiredCountCopy = expiredCount;
  kCountCopy = kCount;
  failedCountCopy = failedCount;
  resourcesCountCopy = resourcesCount;
  oErrorCountCopy = oErrorCount;
  memoryErrorCountCopy = memoryErrorCount;
  modeErrorCountCopy = modeErrorCount;
  peerCountCopy = peerCount;
  internalErrorCountCopy = internalErrorCount;
  droppedCountCopy = droppedCount;
  packetCountCopy = packetCount;
  retriesCountCopy = retriesCount;
  lifetimeExpiredCountCopy = lifetimeExpiredCount;
  mismatchOn5GCountCopy = mismatchOn5GCount;
  mismatchOn2GCountCopy = mismatchOn2GCount;
  scanCountCopy = scanCount;
  assocCountCopy = assocCount;
  disassocCountCopy = disassocCount;
  codeCopy = code;
  errorsHistogramCopy = errorsHistogram;
  delayHistogramCopy = delayHistogram;
  cDelayHistogramCopy = cDelayHistogram;
  expiryHistogramCopy = expiryHistogram;
  v94.receiver = self;
  v94.super_class = WiFiAwareDataSessionStatisticsReport;
  v54 = [(WiFiAwareDataSessionStatisticsReport *)&v94 init];
  v55 = v54;
  if (v54)
  {
    objc_storeStrong(&v54->_peerAddress, address);
    objc_storeStrong(&v55->_infrastructureChannel, channelCopy);
    objc_storeStrong(&v55->_txCCAHistogram, histogram);
    objc_storeStrong(&v55->_rxRSSIHistogram, iHistogram);
    objc_storeStrong(&v55->_preferred2GChannelsCount, countCopy);
    objc_storeStrong(&v55->_preferred5GChannelsCount, channelsCountCopy);
    objc_storeStrong(&v55->_dfsChannelsCount, dfsChannelsCount);
    objc_storeStrong(&v55->_preferred2GChannelsCount, countCopy);
    objc_storeStrong(&v55->_preferred5GChannelsCount, channelsCountCopy);
    objc_storeStrong(&v55->_dfsChannelsCount, dfsChannelsCount);
    objc_storeStrong(&v55->_csaCount, csaCount);
    objc_storeStrong(&v55->_quietIECount, eCount);
    objc_storeStrong(&v55->_txErrorCount, errorCount);
    objc_storeStrong(&v55->_packetsOn2GCount, gCount);
    objc_storeStrong(&v55->_packetsNAVOn2GCount, on2GCount);
    objc_storeStrong(&v55->_packetsHOFOn2GCount, fOn2GCount);
    objc_storeStrong(&v55->_packetsOn5GCount, on5GCount);
    objc_storeStrong(&v55->_packetsOverridenOn5GCount, overridenOn5GCount);
    v55->_infraRelayOperationStatus = status;
    objc_storeStrong(&v55->_infraRelayRequestersCount, requestersCount);
    objc_storeStrong(&v55->_txExpiredCount, expiredCount);
    objc_storeStrong(&v55->_txNoACKCount, kCount);
    objc_storeStrong(&v55->_txFailedCount, failedCount);
    objc_storeStrong(&v55->_txNoResourcesCount, resourcesCount);
    objc_storeStrong(&v55->_txIOErrorCount, oErrorCount);
    objc_storeStrong(&v55->_txMemoryErrorCount, memoryErrorCount);
    objc_storeStrong(&v55->_txChipModeErrorCount, modeErrorCount);
    objc_storeStrong(&v55->_txNoRemotePeerCount, peerCount);
    objc_storeStrong(&v55->_txInternalErrorCount, internalErrorCount);
    objc_storeStrong(&v55->_txDroppedCount, droppedCount);
    objc_storeStrong(&v55->_txFirmwareFreePacketCount, packetCount);
    objc_storeStrong(&v55->_txMaxRetriesCount, retriesCount);
    objc_storeStrong(&v55->_txForceLifetimeExpiredCount, lifetimeExpiredCount);
    objc_storeStrong(&v55->_channelSequenceMismatchOn5GCount, mismatchOn5GCount);
    objc_storeStrong(&v55->_channelSequenceMismatchOn2GCount, mismatchOn2GCount);
    objc_storeStrong(&v55->_infraScanCount, scanCount);
    objc_storeStrong(&v55->_infraAssocCount, assocCount);
    objc_storeStrong(&v55->_infraDisassocCount, disassocCount);
    objc_storeStrong(&v55->_countryCode, code);
    objc_storeStrong(&v55->_txConsecutiveErrorsHistogram, errorsHistogram);
    objc_storeStrong(&v55->_rxFWDelayHistogram, delayHistogram);
    objc_storeStrong(&v55->_rxIPCDelayHistogram, cDelayHistogram);
    objc_storeStrong(&v55->_txPacketExpiryHistogram, expiryHistogram);
  }

  return v55;
}

- (WiFiAwareDataSessionStatisticsReport)initWithCoder:(id)coder
{
  v89[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(WiFiAwareDataSessionStatisticsReport *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.peerAddress"];
    peerAddress = v5->_peerAddress;
    v5->_peerAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infrastructureChannel"];
    infrastructureChannel = v5->_infrastructureChannel;
    v5->_infrastructureChannel = v8;

    v10 = MEMORY[0x277CBEB98];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.txCCAHistogram"];
    txCCAHistogram = v5->_txCCAHistogram;
    v5->_txCCAHistogram = v13;

    v15 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.rxRSSIHistogram"];
    rxRSSIHistogram = v5->_rxRSSIHistogram;
    v5->_rxRSSIHistogram = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.preferred2GChannelsCount"];
    preferred2GChannelsCount = v5->_preferred2GChannelsCount;
    v5->_preferred2GChannelsCount = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.preferred5GChannelsCount"];
    preferred5GChannelsCount = v5->_preferred5GChannelsCount;
    v5->_preferred5GChannelsCount = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.dfsChannelsCount"];
    dfsChannelsCount = v5->_dfsChannelsCount;
    v5->_dfsChannelsCount = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.csaCount"];
    csaCount = v5->_csaCount;
    v5->_csaCount = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.quietIECount"];
    quietIECount = v5->_quietIECount;
    v5->_quietIECount = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txErrorCount"];
    txErrorCount = v5->_txErrorCount;
    v5->_txErrorCount = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn2GCount"];
    packetsOn2GCount = v5->_packetsOn2GCount;
    v5->_packetsOn2GCount = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsNAVOn2GCount"];
    packetsNAVOn2GCount = v5->_packetsNAVOn2GCount;
    v5->_packetsNAVOn2GCount = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsHOFOn2GCount"];
    packetsHOFOn2GCount = v5->_packetsHOFOn2GCount;
    v5->_packetsHOFOn2GCount = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn5GCount"];
    packetsOn5GCount = v5->_packetsOn5GCount;
    v5->_packetsOn5GCount = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOverridenOn5GCount"];
    packetsOverridenOn5GCount = v5->_packetsOverridenOn5GCount;
    v5->_packetsOverridenOn5GCount = v37;

    v5->_infraRelayOperationStatus = [coderCopy decodeBoolForKey:@"WiFiAwareDataSessionStatisticsReport.infraRelayOperationStatus"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraRelayRequestersCount"];
    infraRelayRequestersCount = v5->_infraRelayRequestersCount;
    v5->_infraRelayRequestersCount = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txExpiredCount"];
    txExpiredCount = v5->_txExpiredCount;
    v5->_txExpiredCount = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txNoACKCount"];
    txNoACKCount = v5->_txNoACKCount;
    v5->_txNoACKCount = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txFailedCount"];
    txFailedCount = v5->_txFailedCount;
    v5->_txFailedCount = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txNoResourcesCount"];
    txNoResourcesCount = v5->_txNoResourcesCount;
    v5->_txNoResourcesCount = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txIOErrorCount"];
    txIOErrorCount = v5->_txIOErrorCount;
    v5->_txIOErrorCount = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txMemoryErrorCount"];
    txMemoryErrorCount = v5->_txMemoryErrorCount;
    v5->_txMemoryErrorCount = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txChipModeErrorCount"];
    txChipModeErrorCount = v5->_txChipModeErrorCount;
    v5->_txChipModeErrorCount = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txNoRemotePeerCount"];
    txNoRemotePeerCount = v5->_txNoRemotePeerCount;
    v5->_txNoRemotePeerCount = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txInternalErrorCount"];
    txInternalErrorCount = v5->_txInternalErrorCount;
    v5->_txInternalErrorCount = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txDroppedCount"];
    txDroppedCount = v5->_txDroppedCount;
    v5->_txDroppedCount = v59;

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txFirmwareFreePacketCount"];
    txFirmwareFreePacketCount = v5->_txFirmwareFreePacketCount;
    v5->_txFirmwareFreePacketCount = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txMaxRetriesCount"];
    txMaxRetriesCount = v5->_txMaxRetriesCount;
    v5->_txMaxRetriesCount = v63;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txForceLifetimeExpiredCount"];
    txForceLifetimeExpiredCount = v5->_txForceLifetimeExpiredCount;
    v5->_txForceLifetimeExpiredCount = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn5GCount"];
    channelSequenceMismatchOn5GCount = v5->_channelSequenceMismatchOn5GCount;
    v5->_channelSequenceMismatchOn5GCount = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn2GCount"];
    channelSequenceMismatchOn2GCount = v5->_channelSequenceMismatchOn2GCount;
    v5->_channelSequenceMismatchOn2GCount = v69;

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraScanCount"];
    infraScanCount = v5->_infraScanCount;
    v5->_infraScanCount = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraAssocCount"];
    infraAssocCount = v5->_infraAssocCount;
    v5->_infraAssocCount = v73;

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraDisassocCount"];
    infraDisassocCount = v5->_infraDisassocCount;
    v5->_infraDisassocCount = v75;

    v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v77;

    v79 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.txConsecutiveErrorsHistogram"];
    txConsecutiveErrorsHistogram = v5->_txConsecutiveErrorsHistogram;
    v5->_txConsecutiveErrorsHistogram = v79;

    v81 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.rxFWDelayHistogram"];
    rxFWDelayHistogram = v5->_rxFWDelayHistogram;
    v5->_rxFWDelayHistogram = v81;

    v83 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.rxIPCDelayHistogram"];
    rxIPCDelayHistogram = v5->_rxIPCDelayHistogram;
    v5->_rxIPCDelayHistogram = v83;

    v85 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.txPacketExpiryHistogram"];
    txPacketExpiryHistogram = v5->_txPacketExpiryHistogram;
    v5->_txPacketExpiryHistogram = v85;
  }

  v87 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peerAddress = [(WiFiAwareDataSessionStatisticsReport *)self peerAddress];
  [coderCopy encodeObject:peerAddress forKey:@"WiFiAwareDataSessionStatisticsReport.peerAddress"];

  infrastructureChannel = [(WiFiAwareDataSessionStatisticsReport *)self infrastructureChannel];
  [coderCopy encodeObject:infrastructureChannel forKey:@"WiFiAwareDataSessionStatisticsReport.infrastructureChannel"];

  txCCAHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txCCAHistogram];
  [coderCopy encodeObject:txCCAHistogram forKey:@"WiFiAwareDataSessionStatisticsReport.txCCAHistogram"];

  rxRSSIHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxRSSIHistogram];
  [coderCopy encodeObject:rxRSSIHistogram forKey:@"WiFiAwareDataSessionStatisticsReport.rxRSSIHistogram"];

  preferred2GChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self preferred2GChannelsCount];
  [coderCopy encodeObject:preferred2GChannelsCount forKey:@"WiFiAwareDataSessionStatisticsReport.preferred2GChannelsCount"];

  preferred5GChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self preferred5GChannelsCount];
  [coderCopy encodeObject:preferred5GChannelsCount forKey:@"WiFiAwareDataSessionStatisticsReport.preferred5GChannelsCount"];

  dfsChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self dfsChannelsCount];
  [coderCopy encodeObject:dfsChannelsCount forKey:@"WiFiAwareDataSessionStatisticsReport.dfsChannelsCount"];

  csaCount = [(WiFiAwareDataSessionStatisticsReport *)self csaCount];
  [coderCopy encodeObject:csaCount forKey:@"WiFiAwareDataSessionStatisticsReport.csaCount"];

  quietIECount = [(WiFiAwareDataSessionStatisticsReport *)self quietIECount];
  [coderCopy encodeObject:quietIECount forKey:@"WiFiAwareDataSessionStatisticsReport.quietIECount"];

  txErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txErrorCount];
  [coderCopy encodeObject:txErrorCount forKey:@"WiFiAwareDataSessionStatisticsReport.txErrorCount"];

  packetsOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn2GCount];
  [coderCopy encodeObject:packetsOn2GCount forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn2GCount"];

  packetsNAVOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsNAVOn2GCount];
  [coderCopy encodeObject:packetsNAVOn2GCount forKey:@"WiFiAwareDataSessionStatisticsReport.packetsNAVOn2GCount"];

  packetsHOFOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsHOFOn2GCount];
  [coderCopy encodeObject:packetsHOFOn2GCount forKey:@"WiFiAwareDataSessionStatisticsReport.packetsHOFOn2GCount"];

  packetsOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn5GCount];
  [coderCopy encodeObject:packetsOn5GCount forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn5GCount"];

  packetsOverridenOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOverridenOn5GCount];
  [coderCopy encodeObject:packetsOverridenOn5GCount forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOverridenOn5GCount"];

  [coderCopy encodeBool:-[WiFiAwareDataSessionStatisticsReport infraRelayOperationStatus](self forKey:{"infraRelayOperationStatus"), @"WiFiAwareDataSessionStatisticsReport.infraRelayOperationStatus"}];
  infraRelayRequestersCount = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayRequestersCount];
  [coderCopy encodeObject:infraRelayRequestersCount forKey:@"WiFiAwareDataSessionStatisticsReport.infraRelayRequestersCount"];

  txExpiredCount = [(WiFiAwareDataSessionStatisticsReport *)self txExpiredCount];
  [coderCopy encodeObject:txExpiredCount forKey:@"WiFiAwareDataSessionStatisticsReport.txExpiredCount"];

  txNoACKCount = [(WiFiAwareDataSessionStatisticsReport *)self txNoACKCount];
  [coderCopy encodeObject:txNoACKCount forKey:@"WiFiAwareDataSessionStatisticsReport.txNoACKCount"];

  txFailedCount = [(WiFiAwareDataSessionStatisticsReport *)self txFailedCount];
  [coderCopy encodeObject:txFailedCount forKey:@"WiFiAwareDataSessionStatisticsReport.txFailedCount"];

  txNoResourcesCount = [(WiFiAwareDataSessionStatisticsReport *)self txNoResourcesCount];
  [coderCopy encodeObject:txNoResourcesCount forKey:@"WiFiAwareDataSessionStatisticsReport.txNoResourcesCount"];

  txIOErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txIOErrorCount];
  [coderCopy encodeObject:txIOErrorCount forKey:@"WiFiAwareDataSessionStatisticsReport.txIOErrorCount"];

  txMemoryErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txMemoryErrorCount];
  [coderCopy encodeObject:txMemoryErrorCount forKey:@"WiFiAwareDataSessionStatisticsReport.txMemoryErrorCount"];

  txChipModeErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txChipModeErrorCount];
  [coderCopy encodeObject:txChipModeErrorCount forKey:@"WiFiAwareDataSessionStatisticsReport.txChipModeErrorCount"];

  txNoRemotePeerCount = [(WiFiAwareDataSessionStatisticsReport *)self txNoRemotePeerCount];
  [coderCopy encodeObject:txNoRemotePeerCount forKey:@"WiFiAwareDataSessionStatisticsReport.txNoRemotePeerCount"];

  txInternalErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txInternalErrorCount];
  [coderCopy encodeObject:txInternalErrorCount forKey:@"WiFiAwareDataSessionStatisticsReport.txInternalErrorCount"];

  txDroppedCount = [(WiFiAwareDataSessionStatisticsReport *)self txDroppedCount];
  [coderCopy encodeObject:txDroppedCount forKey:@"WiFiAwareDataSessionStatisticsReport.txDroppedCount"];

  txFirmwareFreePacketCount = [(WiFiAwareDataSessionStatisticsReport *)self txFirmwareFreePacketCount];
  [coderCopy encodeObject:txFirmwareFreePacketCount forKey:@"WiFiAwareDataSessionStatisticsReport.txFirmwareFreePacketCount"];

  txMaxRetriesCount = [(WiFiAwareDataSessionStatisticsReport *)self txMaxRetriesCount];
  [coderCopy encodeObject:txMaxRetriesCount forKey:@"WiFiAwareDataSessionStatisticsReport.txMaxRetriesCount"];

  txForceLifetimeExpiredCount = [(WiFiAwareDataSessionStatisticsReport *)self txForceLifetimeExpiredCount];
  [coderCopy encodeObject:txForceLifetimeExpiredCount forKey:@"WiFiAwareDataSessionStatisticsReport.txForceLifetimeExpiredCount"];

  channelSequenceMismatchOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn5GCount];
  [coderCopy encodeObject:channelSequenceMismatchOn5GCount forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn5GCount"];

  channelSequenceMismatchOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn2GCount];
  [coderCopy encodeObject:channelSequenceMismatchOn2GCount forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn2GCount"];

  infraScanCount = [(WiFiAwareDataSessionStatisticsReport *)self infraScanCount];
  [coderCopy encodeObject:infraScanCount forKey:@"WiFiAwareDataSessionStatisticsReport.infraScanCount"];

  infraAssocCount = [(WiFiAwareDataSessionStatisticsReport *)self infraAssocCount];
  [coderCopy encodeObject:infraAssocCount forKey:@"WiFiAwareDataSessionStatisticsReport.infraAssocCount"];

  infraDisassocCount = [(WiFiAwareDataSessionStatisticsReport *)self infraDisassocCount];
  [coderCopy encodeObject:infraDisassocCount forKey:@"WiFiAwareDataSessionStatisticsReport.infraDisassocCount"];

  countryCode = [(WiFiAwareDataSessionStatisticsReport *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"WiFiAwareDataSessionStatisticsReport.countryCode"];

  txConsecutiveErrorsHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txConsecutiveErrorsHistogram];
  [coderCopy encodeObject:txConsecutiveErrorsHistogram forKey:@"WiFiAwareDataSessionStatisticsReport.txConsecutiveErrorsHistogram"];

  rxFWDelayHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxFWDelayHistogram];
  [coderCopy encodeObject:rxFWDelayHistogram forKey:@"WiFiAwareDataSessionStatisticsReport.rxFWDelayHistogram"];

  rxIPCDelayHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxIPCDelayHistogram];
  [coderCopy encodeObject:rxIPCDelayHistogram forKey:@"WiFiAwareDataSessionStatisticsReport.rxIPCDelayHistogram"];

  txPacketExpiryHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txPacketExpiryHistogram];
  [coderCopy encodeObject:txPacketExpiryHistogram forKey:@"WiFiAwareDataSessionStatisticsReport.txPacketExpiryHistogram"];
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  peerAddress = [(WiFiAwareDataSessionStatisticsReport *)self peerAddress];
  infrastructureChannel = [(WiFiAwareDataSessionStatisticsReport *)self infrastructureChannel];
  preferred2GChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self preferred2GChannelsCount];
  preferred5GChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self preferred5GChannelsCount];
  dfsChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self dfsChannelsCount];
  csaCount = [(WiFiAwareDataSessionStatisticsReport *)self csaCount];
  quietIECount = [(WiFiAwareDataSessionStatisticsReport *)self quietIECount];
  txErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txErrorCount];
  packetsOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn2GCount];
  packetsNAVOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsNAVOn2GCount];
  packetsHOFOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsHOFOn2GCount];
  packetsOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn5GCount];
  packetsOverridenOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOverridenOn5GCount];
  infraRelayOperationStatus = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayOperationStatus];
  infraRelayRequestersCount = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayRequestersCount];
  txCCAHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txCCAHistogram];
  rxRSSIHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxRSSIHistogram];
  v19 = [v18 stringWithFormat:@"<WiFiAwareDataSessionStatisticsReport peerAddress=%@, infrastructureChannel=%@, preferred2GChannelsCount=%@, preferred5GChannelsCount=%@, dfsChannelsCount=%@, csaCount=%@, quietIECount=%@, txErrorCount=%@, packetsOn2GCount=%@, packetsNAVOn2GCount=%@, packetsHOFOn2GCount=%@, packetsOn5GCount=%@, packetsOverridenOn5GCount=%@>, infraRelayOperationStatus=%d, infraRelayRequestersCount=%@\ntxCCA=\n%@\nrxRSSI=%@\n", peerAddress, infrastructureChannel, preferred2GChannelsCount, preferred5GChannelsCount, dfsChannelsCount, csaCount, quietIECount, txErrorCount, packetsOn2GCount, packetsNAVOn2GCount, packetsHOFOn2GCount, packetsOn5GCount, packetsOverridenOn5GCount, infraRelayOperationStatus, infraRelayRequestersCount, txCCAHistogram, rxRSSIHistogram];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    peerAddress = [(WiFiAwareDataSessionStatisticsReport *)self peerAddress];
    peerAddress2 = [(WiFiAwareDataSessionStatisticsReport *)v5 peerAddress];
    v161 = peerAddress;
    v159 = [peerAddress isEqual:peerAddress2];
    if (v159 && (-[WiFiAwareDataSessionStatisticsReport infrastructureChannel](self, "infrastructureChannel"), v8 = objc_claimAutoreleasedReturnValue(), -[WiFiAwareDataSessionStatisticsReport infrastructureChannel](v5, "infrastructureChannel"), v147 = objc_claimAutoreleasedReturnValue(), v148 = v8, [v8 isEqual:v147]))
    {
      preferred2GChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self preferred2GChannelsCount];
      [(WiFiAwareDataSessionStatisticsReport *)v5 preferred2GChannelsCount];
      v143 = v144 = preferred2GChannelsCount;
      if ([preferred2GChannelsCount isEqual:?])
      {
        preferred5GChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self preferred5GChannelsCount];
        [(WiFiAwareDataSessionStatisticsReport *)v5 preferred5GChannelsCount];
        v141 = v142 = preferred5GChannelsCount;
        if ([preferred5GChannelsCount isEqual:?])
        {
          dfsChannelsCount = [(WiFiAwareDataSessionStatisticsReport *)self dfsChannelsCount];
          [(WiFiAwareDataSessionStatisticsReport *)v5 dfsChannelsCount];
          v139 = v140 = dfsChannelsCount;
          if ([dfsChannelsCount isEqual:?])
          {
            csaCount = [(WiFiAwareDataSessionStatisticsReport *)self csaCount];
            [(WiFiAwareDataSessionStatisticsReport *)v5 csaCount];
            v137 = v138 = csaCount;
            if ([csaCount isEqual:?])
            {
              quietIECount = [(WiFiAwareDataSessionStatisticsReport *)self quietIECount];
              quietIECount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 quietIECount];
              v136 = quietIECount;
              if ([quietIECount isEqual:quietIECount2])
              {
                txErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txErrorCount];
                txErrorCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 txErrorCount];
                v134 = txErrorCount;
                if ([txErrorCount isEqual:txErrorCount2])
                {
                  packetsOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn2GCount];
                  packetsOn2GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsOn2GCount];
                  v132 = packetsOn2GCount;
                  if ([packetsOn2GCount isEqual:packetsOn2GCount2])
                  {
                    packetsNAVOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsNAVOn2GCount];
                    packetsNAVOn2GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsNAVOn2GCount];
                    v130 = packetsNAVOn2GCount;
                    if ([packetsNAVOn2GCount isEqual:packetsNAVOn2GCount2])
                    {
                      packetsHOFOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsHOFOn2GCount];
                      packetsHOFOn2GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsHOFOn2GCount];
                      v128 = packetsHOFOn2GCount;
                      if ([packetsHOFOn2GCount isEqual:packetsHOFOn2GCount2])
                      {
                        packetsOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn5GCount];
                        packetsOn5GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsOn5GCount];
                        v126 = packetsOn5GCount;
                        if ([packetsOn5GCount isEqual:packetsOn5GCount2])
                        {
                          packetsOverridenOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self packetsOverridenOn5GCount];
                          packetsOverridenOn5GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsOverridenOn5GCount];
                          v124 = packetsOverridenOn5GCount;
                          if ([packetsOverridenOn5GCount isEqual:packetsOverridenOn5GCount2])
                          {
                            txCCAHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txCCAHistogram];
                            v145 = v5;
                            txCCAHistogram2 = [(WiFiAwareDataSessionStatisticsReport *)v5 txCCAHistogram];
                            v122 = txCCAHistogram;
                            if ([txCCAHistogram isEqual:txCCAHistogram2])
                            {
                              rxRSSIHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxRSSIHistogram];
                              rxRSSIHistogram2 = [(WiFiAwareDataSessionStatisticsReport *)v5 rxRSSIHistogram];
                              v120 = rxRSSIHistogram;
                              if ([rxRSSIHistogram isEqual:rxRSSIHistogram2] && (v22 = -[WiFiAwareDataSessionStatisticsReport infraRelayOperationStatus](self, "infraRelayOperationStatus"), v22 == -[WiFiAwareDataSessionStatisticsReport infraRelayOperationStatus](v5, "infraRelayOperationStatus")))
                              {
                                infraRelayRequestersCount = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayRequestersCount];
                                infraRelayRequestersCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 infraRelayRequestersCount];
                                v118 = infraRelayRequestersCount;
                                if ([infraRelayRequestersCount isEqual:infraRelayRequestersCount2])
                                {
                                  txExpiredCount = [(WiFiAwareDataSessionStatisticsReport *)self txExpiredCount];
                                  txExpiredCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 txExpiredCount];
                                  v116 = txExpiredCount;
                                  if ([txExpiredCount isEqual:txExpiredCount2])
                                  {
                                    txNoACKCount = [(WiFiAwareDataSessionStatisticsReport *)self txNoACKCount];
                                    txNoACKCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 txNoACKCount];
                                    v114 = txNoACKCount;
                                    if ([txNoACKCount isEqual:txNoACKCount2])
                                    {
                                      txFailedCount = [(WiFiAwareDataSessionStatisticsReport *)self txFailedCount];
                                      txFailedCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 txFailedCount];
                                      v112 = txFailedCount;
                                      if ([txFailedCount isEqual:txFailedCount2])
                                      {
                                        txNoResourcesCount = [(WiFiAwareDataSessionStatisticsReport *)self txNoResourcesCount];
                                        txNoResourcesCount2 = [(WiFiAwareDataSessionStatisticsReport *)v5 txNoResourcesCount];
                                        v110 = txNoResourcesCount;
                                        if ([txNoResourcesCount isEqual:txNoResourcesCount2])
                                        {
                                          txIOErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txIOErrorCount];
                                          txIOErrorCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txIOErrorCount];
                                          v108 = txIOErrorCount;
                                          if ([txIOErrorCount isEqual:txIOErrorCount2])
                                          {
                                            txMemoryErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txMemoryErrorCount];
                                            txMemoryErrorCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txMemoryErrorCount];
                                            v106 = txMemoryErrorCount;
                                            if ([txMemoryErrorCount isEqual:txMemoryErrorCount2])
                                            {
                                              txChipModeErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txChipModeErrorCount];
                                              txChipModeErrorCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txChipModeErrorCount];
                                              v104 = txChipModeErrorCount;
                                              if ([txChipModeErrorCount isEqual:txChipModeErrorCount2])
                                              {
                                                txNoRemotePeerCount = [(WiFiAwareDataSessionStatisticsReport *)self txNoRemotePeerCount];
                                                txNoRemotePeerCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txNoRemotePeerCount];
                                                v102 = txNoRemotePeerCount;
                                                if ([txNoRemotePeerCount isEqual:txNoRemotePeerCount2])
                                                {
                                                  txInternalErrorCount = [(WiFiAwareDataSessionStatisticsReport *)self txInternalErrorCount];
                                                  txInternalErrorCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txInternalErrorCount];
                                                  v100 = txInternalErrorCount;
                                                  if ([txInternalErrorCount isEqual:txInternalErrorCount2])
                                                  {
                                                    txDroppedCount = [(WiFiAwareDataSessionStatisticsReport *)self txDroppedCount];
                                                    txDroppedCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txDroppedCount];
                                                    v98 = txDroppedCount;
                                                    if ([txDroppedCount isEqual:txDroppedCount2])
                                                    {
                                                      txFirmwareFreePacketCount = [(WiFiAwareDataSessionStatisticsReport *)self txFirmwareFreePacketCount];
                                                      txFirmwareFreePacketCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txFirmwareFreePacketCount];
                                                      v96 = txFirmwareFreePacketCount;
                                                      if ([txFirmwareFreePacketCount isEqual:txFirmwareFreePacketCount2])
                                                      {
                                                        txMaxRetriesCount = [(WiFiAwareDataSessionStatisticsReport *)self txMaxRetriesCount];
                                                        txMaxRetriesCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txMaxRetriesCount];
                                                        v94 = txMaxRetriesCount;
                                                        if ([txMaxRetriesCount isEqual:txMaxRetriesCount2])
                                                        {
                                                          txForceLifetimeExpiredCount = [(WiFiAwareDataSessionStatisticsReport *)self txForceLifetimeExpiredCount];
                                                          txForceLifetimeExpiredCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txForceLifetimeExpiredCount];
                                                          v92 = txForceLifetimeExpiredCount;
                                                          if ([txForceLifetimeExpiredCount isEqual:txForceLifetimeExpiredCount2])
                                                          {
                                                            channelSequenceMismatchOn5GCount = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn5GCount];
                                                            channelSequenceMismatchOn5GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 channelSequenceMismatchOn5GCount];
                                                            v90 = channelSequenceMismatchOn5GCount;
                                                            if ([channelSequenceMismatchOn5GCount isEqual:channelSequenceMismatchOn5GCount2])
                                                            {
                                                              channelSequenceMismatchOn2GCount = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn2GCount];
                                                              channelSequenceMismatchOn2GCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 channelSequenceMismatchOn2GCount];
                                                              v88 = channelSequenceMismatchOn2GCount;
                                                              if ([channelSequenceMismatchOn2GCount isEqual:channelSequenceMismatchOn2GCount2])
                                                              {
                                                                infraScanCount = [(WiFiAwareDataSessionStatisticsReport *)self infraScanCount];
                                                                infraScanCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 infraScanCount];
                                                                v86 = infraScanCount;
                                                                if ([infraScanCount isEqual:infraScanCount2])
                                                                {
                                                                  infraAssocCount = [(WiFiAwareDataSessionStatisticsReport *)self infraAssocCount];
                                                                  infraAssocCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 infraAssocCount];
                                                                  v84 = infraAssocCount;
                                                                  if ([infraAssocCount isEqual:infraAssocCount2])
                                                                  {
                                                                    infraDisassocCount = [(WiFiAwareDataSessionStatisticsReport *)self infraDisassocCount];
                                                                    infraDisassocCount2 = [(WiFiAwareDataSessionStatisticsReport *)v145 infraDisassocCount];
                                                                    v82 = infraDisassocCount;
                                                                    if ([infraDisassocCount isEqual:infraDisassocCount2])
                                                                    {
                                                                      countryCode = [(WiFiAwareDataSessionStatisticsReport *)self countryCode];
                                                                      countryCode2 = [(WiFiAwareDataSessionStatisticsReport *)v145 countryCode];
                                                                      v80 = countryCode;
                                                                      if ([countryCode isEqual:countryCode2])
                                                                      {
                                                                        txConsecutiveErrorsHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txConsecutiveErrorsHistogram];
                                                                        txConsecutiveErrorsHistogram2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txConsecutiveErrorsHistogram];
                                                                        v78 = txConsecutiveErrorsHistogram;
                                                                        if ([txConsecutiveErrorsHistogram isEqual:txConsecutiveErrorsHistogram2])
                                                                        {
                                                                          rxFWDelayHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxFWDelayHistogram];
                                                                          rxFWDelayHistogram2 = [(WiFiAwareDataSessionStatisticsReport *)v145 rxFWDelayHistogram];
                                                                          v76 = rxFWDelayHistogram;
                                                                          if ([rxFWDelayHistogram isEqual:rxFWDelayHistogram2])
                                                                          {
                                                                            rxIPCDelayHistogram = [(WiFiAwareDataSessionStatisticsReport *)self rxIPCDelayHistogram];
                                                                            rxIPCDelayHistogram2 = [(WiFiAwareDataSessionStatisticsReport *)v145 rxIPCDelayHistogram];
                                                                            v74 = rxIPCDelayHistogram;
                                                                            if ([rxIPCDelayHistogram isEqual:rxIPCDelayHistogram2])
                                                                            {
                                                                              txPacketExpiryHistogram = [(WiFiAwareDataSessionStatisticsReport *)self txPacketExpiryHistogram];
                                                                              v5 = v145;
                                                                              txPacketExpiryHistogram2 = [(WiFiAwareDataSessionStatisticsReport *)v145 txPacketExpiryHistogram];
                                                                              v72 = txPacketExpiryHistogram;
                                                                              v71 = [txPacketExpiryHistogram isEqual:txPacketExpiryHistogram2];
                                                                              v7 = txPacketExpiryHistogram2;
                                                                              v28 = 1;
                                                                              v158[2] = 0x100000001;
                                                                              v158[1] = 0x100000001;
                                                                              v158[0] = 0x100000001;
                                                                              v29 = 1;
                                                                              v30 = 1;
                                                                              v31 = 1;
                                                                              v32 = 1;
                                                                              *(&v156 + 1) = 0x100000001;
                                                                              *&v156 = 0x100000001;
                                                                              *v155 = 0x100000001;
                                                                              *v154 = 0x100000001;
                                                                              v153 = 0x100000001;
                                                                              v152 = 0x100000001;
                                                                              v151 = 0x100000001;
                                                                              *&v150[8] = 1;
                                                                              v149 = v71 ^ 1;
                                                                              *v150 = 0x100000001;
                                                                              *&v154[8] = 1;
                                                                              *&v155[8] = 1;
                                                                              v157 = 0x100000001;
                                                                              v23 = 1;
                                                                              v24 = 1;
                                                                              v25 = 1;
                                                                              v26 = 1;
                                                                              v27 = 1;
LABEL_24:
                                                                              if (v28)
                                                                              {
                                                                                v146 = v23;
                                                                                v35 = equalCopy;
                                                                                v36 = v5;
                                                                                v37 = v32;
                                                                                v38 = v24;
                                                                                v39 = v31;
                                                                                v40 = v25;
                                                                                v41 = v30;
                                                                                v42 = v26;
                                                                                v43 = v29;
                                                                                v44 = v27;

                                                                                v45 = v44;
                                                                                v29 = v43;
                                                                                v26 = v42;
                                                                                v30 = v41;
                                                                                v25 = v40;
                                                                                v31 = v39;
                                                                                v24 = v38;
                                                                                v32 = v37;
                                                                                v5 = v36;
                                                                                equalCopy = v35;
                                                                                v23 = v146;
                                                                                if (!v45)
                                                                                {
LABEL_26:
                                                                                  if (!v26)
                                                                                  {
                                                                                    goto LABEL_27;
                                                                                  }

                                                                                  goto LABEL_97;
                                                                                }
                                                                              }

                                                                              else if (!v27)
                                                                              {
                                                                                goto LABEL_26;
                                                                              }

                                                                              if (!v26)
                                                                              {
LABEL_27:
                                                                                if (!v25)
                                                                                {
                                                                                  goto LABEL_28;
                                                                                }

                                                                                goto LABEL_98;
                                                                              }

LABEL_97:

                                                                              if (!v25)
                                                                              {
LABEL_28:
                                                                                if (!v24)
                                                                                {
                                                                                  goto LABEL_29;
                                                                                }

                                                                                goto LABEL_99;
                                                                              }

LABEL_98:

                                                                              if (!v24)
                                                                              {
LABEL_29:
                                                                                if (!v23)
                                                                                {
                                                                                  goto LABEL_31;
                                                                                }

                                                                                goto LABEL_30;
                                                                              }

LABEL_99:

                                                                              if (!v23)
                                                                              {
LABEL_31:
                                                                                if (HIDWORD(v157))
                                                                                {
                                                                                }

                                                                                if (v157)
                                                                                {
                                                                                }

                                                                                if (DWORD2(v156))
                                                                                {
                                                                                }

                                                                                if (*&v155[8])
                                                                                {
                                                                                }

                                                                                if (*&v154[8])
                                                                                {
                                                                                }

                                                                                if (*v154)
                                                                                {
                                                                                }

                                                                                if (v153)
                                                                                {
                                                                                }

                                                                                if (v152)
                                                                                {
                                                                                }

                                                                                if (v151)
                                                                                {
                                                                                }

                                                                                if (*&v150[4])
                                                                                {
                                                                                }

                                                                                if (*v150)
                                                                                {
                                                                                }

                                                                                if (*&v150[8])
                                                                                {
                                                                                }

                                                                                if (HIDWORD(v151))
                                                                                {
                                                                                }

                                                                                if (HIDWORD(v152))
                                                                                {
                                                                                }

                                                                                if (HIDWORD(v153))
                                                                                {
                                                                                }

                                                                                if (*&v154[4])
                                                                                {
                                                                                }

                                                                                if (*&v155[4])
                                                                                {
                                                                                }

                                                                                if (DWORD1(v156))
                                                                                {
                                                                                }

                                                                                if (*v155)
                                                                                {
                                                                                }

                                                                                if (v156)
                                                                                {
                                                                                }

                                                                                if (HIDWORD(v156))
                                                                                {
                                                                                }

                                                                                if (LODWORD(v158[0]))
                                                                                {

                                                                                  if (!v32)
                                                                                  {
LABEL_75:
                                                                                    if (!v31)
                                                                                    {
                                                                                      goto LABEL_76;
                                                                                    }

                                                                                    goto LABEL_103;
                                                                                  }
                                                                                }

                                                                                else if (!v32)
                                                                                {
                                                                                  goto LABEL_75;
                                                                                }

                                                                                if (!v31)
                                                                                {
LABEL_76:
                                                                                  if (!v30)
                                                                                  {
                                                                                    goto LABEL_77;
                                                                                  }

                                                                                  goto LABEL_104;
                                                                                }

LABEL_103:

                                                                                if (!v30)
                                                                                {
LABEL_77:
                                                                                  if (!v29)
                                                                                  {
                                                                                    goto LABEL_79;
                                                                                  }

                                                                                  goto LABEL_78;
                                                                                }

LABEL_104:

                                                                                if (!v29)
                                                                                {
LABEL_79:
                                                                                  if (HIDWORD(v158[0]))
                                                                                  {
                                                                                  }

                                                                                  if (LODWORD(v158[1]))
                                                                                  {
                                                                                  }

                                                                                  if (HIDWORD(v158[1]))
                                                                                  {
                                                                                  }

                                                                                  if (LODWORD(v158[2]))
                                                                                  {
                                                                                  }

                                                                                  if (HIDWORD(v158[2]))
                                                                                  {
                                                                                  }

                                                                                  if (v159)
                                                                                  {
                                                                                  }

                                                                                  if (v149)
                                                                                  {
                                                                                    v33 = 0;
                                                                                    goto LABEL_94;
                                                                                  }

LABEL_93:
                                                                                  v33 = 1;
                                                                                  goto LABEL_94;
                                                                                }

LABEL_78:

                                                                                goto LABEL_79;
                                                                              }

LABEL_30:

                                                                              goto LABEL_31;
                                                                            }

                                                                            v28 = 0;
                                                                            v158[2] = 0x100000001;
                                                                            v158[1] = 0x100000001;
                                                                            v158[0] = 0x100000001;
                                                                            v29 = 1;
                                                                            v30 = 1;
                                                                            v31 = 1;
                                                                            v32 = 1;
                                                                            *(&v156 + 1) = 0x100000001;
                                                                            *&v156 = 0x100000001;
                                                                            *v155 = 0x100000001;
                                                                            *v154 = 0x100000001;
                                                                            v153 = 0x100000001;
                                                                            v152 = 0x100000001;
                                                                            v151 = 0x100000001;
                                                                            *&v150[8] = 1;
                                                                            *v150 = 0x100000001;
                                                                            *&v154[8] = 1;
                                                                            *&v155[8] = 1;
                                                                            v157 = 0x100000001;
                                                                            v23 = 1;
                                                                            v24 = 1;
                                                                            v25 = 1;
                                                                            v26 = 1;
                                                                            v27 = 1;
                                                                          }

                                                                          else
                                                                          {
                                                                            v27 = 0;
                                                                            v28 = 0;
                                                                            v158[2] = 0x100000001;
                                                                            v158[1] = 0x100000001;
                                                                            v158[0] = 0x100000001;
                                                                            v29 = 1;
                                                                            v30 = 1;
                                                                            v31 = 1;
                                                                            v32 = 1;
                                                                            *(&v156 + 1) = 0x100000001;
                                                                            *&v156 = 0x100000001;
                                                                            *v155 = 0x100000001;
                                                                            *v154 = 0x100000001;
                                                                            v153 = 0x100000001;
                                                                            v152 = 0x100000001;
                                                                            v151 = 0x100000001;
                                                                            *&v150[8] = 1;
                                                                            *v150 = 0x100000001;
                                                                            *&v154[8] = 1;
                                                                            *&v155[8] = 1;
                                                                            v157 = 0x100000001;
                                                                            v23 = 1;
                                                                            v24 = 1;
                                                                            v25 = 1;
                                                                            v26 = 1;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v26 = 0;
                                                                          v27 = 0;
                                                                          v28 = 0;
                                                                          v158[2] = 0x100000001;
                                                                          v158[1] = 0x100000001;
                                                                          v158[0] = 0x100000001;
                                                                          v29 = 1;
                                                                          v30 = 1;
                                                                          v31 = 1;
                                                                          v32 = 1;
                                                                          *(&v156 + 1) = 0x100000001;
                                                                          *&v156 = 0x100000001;
                                                                          *v155 = 0x100000001;
                                                                          *v154 = 0x100000001;
                                                                          v153 = 0x100000001;
                                                                          v152 = 0x100000001;
                                                                          v151 = 0x100000001;
                                                                          *&v150[8] = 1;
                                                                          *v150 = 0x100000001;
                                                                          *&v154[8] = 1;
                                                                          *&v155[8] = 1;
                                                                          v157 = 0x100000001;
                                                                          v23 = 1;
                                                                          v24 = 1;
                                                                          v25 = 1;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v25 = 0;
                                                                        v26 = 0;
                                                                        v27 = 0;
                                                                        v28 = 0;
                                                                        v158[2] = 0x100000001;
                                                                        v158[1] = 0x100000001;
                                                                        v158[0] = 0x100000001;
                                                                        v29 = 1;
                                                                        v30 = 1;
                                                                        v31 = 1;
                                                                        v32 = 1;
                                                                        *(&v156 + 1) = 0x100000001;
                                                                        *&v156 = 0x100000001;
                                                                        *v155 = 0x100000001;
                                                                        *v154 = 0x100000001;
                                                                        v153 = 0x100000001;
                                                                        v152 = 0x100000001;
                                                                        v151 = 0x100000001;
                                                                        *&v150[8] = 1;
                                                                        *v150 = 0x100000001;
                                                                        *&v154[8] = 1;
                                                                        *&v155[8] = 1;
                                                                        v157 = 0x100000001;
                                                                        v23 = 1;
                                                                        v24 = 1;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v24 = 0;
                                                                      v25 = 0;
                                                                      v26 = 0;
                                                                      v27 = 0;
                                                                      v28 = 0;
                                                                      v158[2] = 0x100000001;
                                                                      v158[1] = 0x100000001;
                                                                      v158[0] = 0x100000001;
                                                                      v29 = 1;
                                                                      v30 = 1;
                                                                      v31 = 1;
                                                                      v32 = 1;
                                                                      *(&v156 + 1) = 0x100000001;
                                                                      *&v156 = 0x100000001;
                                                                      *v155 = 0x100000001;
                                                                      *v154 = 0x100000001;
                                                                      v153 = 0x100000001;
                                                                      v152 = 0x100000001;
                                                                      v151 = 0x100000001;
                                                                      *&v150[8] = 1;
                                                                      *v150 = 0x100000001;
                                                                      *&v154[8] = 1;
                                                                      *&v155[8] = 1;
                                                                      v157 = 0x100000001;
                                                                      v23 = 1;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v23 = 0;
                                                                    v24 = 0;
                                                                    v25 = 0;
                                                                    v26 = 0;
                                                                    v27 = 0;
                                                                    v28 = 0;
                                                                    v158[2] = 0x100000001;
                                                                    v158[1] = 0x100000001;
                                                                    v158[0] = 0x100000001;
                                                                    v29 = 1;
                                                                    v30 = 1;
                                                                    v31 = 1;
                                                                    v32 = 1;
                                                                    *(&v156 + 1) = 0x100000001;
                                                                    *&v156 = 0x100000001;
                                                                    *v155 = 0x100000001;
                                                                    *v154 = 0x100000001;
                                                                    v153 = 0x100000001;
                                                                    v152 = 0x100000001;
                                                                    v151 = 0x100000001;
                                                                    *&v150[8] = 1;
                                                                    *v150 = 0x100000001;
                                                                    *&v154[8] = 1;
                                                                    *&v155[8] = 1;
                                                                    v157 = 0x100000001;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v23 = 0;
                                                                  v24 = 0;
                                                                  v25 = 0;
                                                                  v26 = 0;
                                                                  v27 = 0;
                                                                  v28 = 0;
                                                                  v158[2] = 0x100000001;
                                                                  v158[1] = 0x100000001;
                                                                  v29 = 1;
                                                                  v30 = 1;
                                                                  v31 = 1;
                                                                  v32 = 1;
                                                                  v158[0] = 0x100000001;
                                                                  *(&v156 + 1) = 0x100000001;
                                                                  *&v156 = 0x100000001;
                                                                  *v155 = 0x100000001;
                                                                  *v154 = 0x100000001;
                                                                  v153 = 0x100000001;
                                                                  v152 = 0x100000001;
                                                                  v151 = 0x100000001;
                                                                  *&v150[8] = 1;
                                                                  *v150 = 0x100000001;
                                                                  *&v154[8] = 1;
                                                                  *&v155[8] = 1;
                                                                  v157 = 1;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v157 = 0;
                                                                v23 = 0;
                                                                v24 = 0;
                                                                v25 = 0;
                                                                v26 = 0;
                                                                v27 = 0;
                                                                v28 = 0;
                                                                v158[2] = 0x100000001;
                                                                v158[1] = 0x100000001;
                                                                v158[0] = 0x100000001;
                                                                v29 = 1;
                                                                v30 = 1;
                                                                v31 = 1;
                                                                v32 = 1;
                                                                *(&v156 + 1) = 0x100000001;
                                                                *&v156 = 0x100000001;
                                                                *v155 = 0x100000001;
                                                                *v154 = 0x100000001;
                                                                v153 = 0x100000001;
                                                                v152 = 0x100000001;
                                                                v151 = 0x100000001;
                                                                *&v150[8] = 1;
                                                                *v150 = 0x100000001;
                                                                *&v154[8] = 1;
                                                                *&v155[8] = 1;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v157 = 0;
                                                              v23 = 0;
                                                              v24 = 0;
                                                              v25 = 0;
                                                              v26 = 0;
                                                              v27 = 0;
                                                              v28 = 0;
                                                              v158[2] = 0x100000001;
                                                              v158[1] = 0x100000001;
                                                              v158[0] = 0x100000001;
                                                              v29 = 1;
                                                              v30 = 1;
                                                              v31 = 1;
                                                              v32 = 1;
                                                              *(&v156 + 1) = 0x100000000;
                                                              *&v156 = 0x100000001;
                                                              *v155 = 0x100000001;
                                                              *v154 = 0x100000001;
                                                              v153 = 0x100000001;
                                                              v152 = 0x100000001;
                                                              v151 = 0x100000001;
                                                              *&v150[8] = 1;
                                                              *v150 = 0x100000001;
                                                              *&v154[8] = 1;
                                                              *&v155[8] = 1;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            *&v155[8] = 0;
                                                            v157 = 0;
                                                            v23 = 0;
                                                            v24 = 0;
                                                            v25 = 0;
                                                            v26 = 0;
                                                            v27 = 0;
                                                            v28 = 0;
                                                            v158[2] = 0x100000001;
                                                            v158[1] = 0x100000001;
                                                            v158[0] = 0x100000001;
                                                            v29 = 1;
                                                            v30 = 1;
                                                            v31 = 1;
                                                            v32 = 1;
                                                            *(&v156 + 1) = 0x100000000;
                                                            *&v156 = 0x100000001;
                                                            *v155 = 0x100000001;
                                                            *v154 = 0x100000001;
                                                            v153 = 0x100000001;
                                                            v152 = 0x100000001;
                                                            v151 = 0x100000001;
                                                            *&v150[8] = 1;
                                                            *v150 = 0x100000001;
                                                            *&v154[8] = 1;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          *&v154[8] = 0;
                                                          *&v155[8] = 0;
                                                          v157 = 0;
                                                          v23 = 0;
                                                          v24 = 0;
                                                          v25 = 0;
                                                          v26 = 0;
                                                          v27 = 0;
                                                          v28 = 0;
                                                          v158[2] = 0x100000001;
                                                          v158[1] = 0x100000001;
                                                          v158[0] = 0x100000001;
                                                          v29 = 1;
                                                          v30 = 1;
                                                          v31 = 1;
                                                          v32 = 1;
                                                          *(&v156 + 1) = 0x100000000;
                                                          *&v156 = 0x100000001;
                                                          *v155 = 0x100000001;
                                                          *v154 = 0x100000001;
                                                          v153 = 0x100000001;
                                                          v152 = 0x100000001;
                                                          v151 = 0x100000001;
                                                          *&v150[8] = 1;
                                                          *v150 = 0x100000001;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        *v154 = 0;
                                                        *&v155[8] = 0;
                                                        v157 = 0;
                                                        v23 = 0;
                                                        v24 = 0;
                                                        v25 = 0;
                                                        v26 = 0;
                                                        v27 = 0;
                                                        v28 = 0;
                                                        v158[2] = 0x100000001;
                                                        v158[1] = 0x100000001;
                                                        v158[0] = 0x100000001;
                                                        v29 = 1;
                                                        v30 = 1;
                                                        v31 = 1;
                                                        v32 = 1;
                                                        *(&v156 + 1) = 0x100000000;
                                                        *&v156 = 0x100000001;
                                                        *v155 = 0x100000001;
                                                        *&v154[4] = 1;
                                                        v153 = 0x100000001;
                                                        v152 = 0x100000001;
                                                        v151 = 0x100000001;
                                                        *&v150[8] = 1;
                                                        *v150 = 0x100000001;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v153 = 0x100000000;
                                                      *v154 = 0;
                                                      *&v155[8] = 0;
                                                      v157 = 0;
                                                      v23 = 0;
                                                      v24 = 0;
                                                      v25 = 0;
                                                      v26 = 0;
                                                      v27 = 0;
                                                      v28 = 0;
                                                      v158[2] = 0x100000001;
                                                      v158[1] = 0x100000001;
                                                      v158[0] = 0x100000001;
                                                      v29 = 1;
                                                      v30 = 1;
                                                      v31 = 1;
                                                      v32 = 1;
                                                      *(&v156 + 1) = 0x100000000;
                                                      *&v156 = 0x100000001;
                                                      *v155 = 0x100000001;
                                                      *&v154[4] = 1;
                                                      v152 = 0x100000001;
                                                      v151 = 0x100000001;
                                                      *&v150[8] = 1;
                                                      *v150 = 0x100000001;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v152 = 0x100000000;
                                                    v153 = 0x100000000;
                                                    *v154 = 0;
                                                    *&v155[8] = 0;
                                                    v157 = 0;
                                                    v23 = 0;
                                                    v24 = 0;
                                                    v25 = 0;
                                                    v26 = 0;
                                                    v27 = 0;
                                                    v28 = 0;
                                                    v158[2] = 0x100000001;
                                                    v158[1] = 0x100000001;
                                                    v158[0] = 0x100000001;
                                                    v29 = 1;
                                                    v30 = 1;
                                                    v31 = 1;
                                                    v32 = 1;
                                                    *(&v156 + 1) = 0x100000000;
                                                    *&v156 = 0x100000001;
                                                    *v155 = 0x100000001;
                                                    *&v154[4] = 1;
                                                    v151 = 0x100000001;
                                                    *&v150[8] = 1;
                                                    *v150 = 0x100000001;
                                                  }
                                                }

                                                else
                                                {
                                                  v151 = 0x100000000;
                                                  v152 = 0x100000000;
                                                  v153 = 0x100000000;
                                                  *v154 = 0;
                                                  *&v155[8] = 0;
                                                  v157 = 0;
                                                  v23 = 0;
                                                  v24 = 0;
                                                  v25 = 0;
                                                  v26 = 0;
                                                  v27 = 0;
                                                  v28 = 0;
                                                  v158[2] = 0x100000001;
                                                  v158[1] = 0x100000001;
                                                  v158[0] = 0x100000001;
                                                  v29 = 1;
                                                  v30 = 1;
                                                  v31 = 1;
                                                  v32 = 1;
                                                  *(&v156 + 1) = 0x100000000;
                                                  *&v156 = 0x100000001;
                                                  *v155 = 0x100000001;
                                                  *&v154[4] = 1;
                                                  *&v150[8] = 1;
                                                  *v150 = 0x100000001;
                                                }
                                              }

                                              else
                                              {
                                                v151 = 0x100000000;
                                                v152 = 0x100000000;
                                                v153 = 0x100000000;
                                                *v154 = 0;
                                                *&v155[8] = 0;
                                                v157 = 0;
                                                v23 = 0;
                                                v24 = 0;
                                                v25 = 0;
                                                v26 = 0;
                                                v27 = 0;
                                                v28 = 0;
                                                v158[2] = 0x100000001;
                                                v158[1] = 0x100000001;
                                                v158[0] = 0x100000001;
                                                v29 = 1;
                                                v30 = 1;
                                                v31 = 1;
                                                v32 = 1;
                                                *(&v156 + 1) = 0x100000000;
                                                *&v156 = 0x100000001;
                                                *v155 = 0x100000001;
                                                *&v154[4] = 1;
                                                *&v150[8] = 1;
                                                *v150 = 1;
                                              }
                                            }

                                            else
                                            {
                                              *v150 = 0;
                                              v151 = 0x100000000;
                                              v152 = 0x100000000;
                                              v153 = 0x100000000;
                                              *v154 = 0;
                                              *&v155[8] = 0;
                                              v157 = 0;
                                              v23 = 0;
                                              v24 = 0;
                                              v25 = 0;
                                              v26 = 0;
                                              v27 = 0;
                                              v28 = 0;
                                              v158[2] = 0x100000001;
                                              v158[1] = 0x100000001;
                                              v158[0] = 0x100000001;
                                              v29 = 1;
                                              v30 = 1;
                                              v31 = 1;
                                              v32 = 1;
                                              *(&v156 + 1) = 0x100000000;
                                              *&v156 = 0x100000001;
                                              *v155 = 0x100000001;
                                              *&v154[4] = 1;
                                              *&v150[8] = 1;
                                            }
                                          }

                                          else
                                          {
                                            memset(v150, 0, sizeof(v150));
                                            v151 = 0x100000000;
                                            v152 = 0x100000000;
                                            v153 = 0x100000000;
                                            *v154 = 0;
                                            *&v155[8] = 0;
                                            v157 = 0;
                                            v23 = 0;
                                            v24 = 0;
                                            v25 = 0;
                                            v26 = 0;
                                            v27 = 0;
                                            v28 = 0;
                                            v158[2] = 0x100000001;
                                            v158[1] = 0x100000001;
                                            v158[0] = 0x100000001;
                                            v29 = 1;
                                            v30 = 1;
                                            v31 = 1;
                                            v32 = 1;
                                            *(&v156 + 1) = 0x100000000;
                                            *&v156 = 0x100000001;
                                            *v155 = 0x100000001;
                                            *&v154[4] = 1;
                                          }
                                        }

                                        else
                                        {
                                          v151 = 0;
                                          memset(v150, 0, sizeof(v150));
                                          v152 = 0x100000000;
                                          v153 = 0x100000000;
                                          *v154 = 0;
                                          *&v155[8] = 0;
                                          v157 = 0;
                                          v23 = 0;
                                          v24 = 0;
                                          v25 = 0;
                                          v26 = 0;
                                          v27 = 0;
                                          v28 = 0;
                                          v158[2] = 0x100000001;
                                          v158[1] = 0x100000001;
                                          v158[0] = 0x100000001;
                                          v29 = 1;
                                          v30 = 1;
                                          v31 = 1;
                                          v32 = 1;
                                          *(&v156 + 1) = 0x100000000;
                                          *&v156 = 0x100000001;
                                          *v155 = 0x100000001;
                                          *&v154[4] = 1;
                                        }
                                      }

                                      else
                                      {
                                        v152 = 0;
                                        v151 = 0;
                                        memset(v150, 0, sizeof(v150));
                                        v153 = 0x100000000;
                                        *v154 = 0;
                                        *&v155[8] = 0;
                                        v157 = 0;
                                        v23 = 0;
                                        v24 = 0;
                                        v25 = 0;
                                        v26 = 0;
                                        v27 = 0;
                                        v28 = 0;
                                        v158[2] = 0x100000001;
                                        v158[1] = 0x100000001;
                                        v158[0] = 0x100000001;
                                        v29 = 1;
                                        v30 = 1;
                                        v31 = 1;
                                        v32 = 1;
                                        *(&v156 + 1) = 0x100000000;
                                        *&v156 = 0x100000001;
                                        *v155 = 0x100000001;
                                        *&v154[4] = 1;
                                      }
                                    }

                                    else
                                    {
                                      v153 = 0;
                                      v152 = 0;
                                      v151 = 0;
                                      memset(v150, 0, sizeof(v150));
                                      *v154 = 0;
                                      *&v155[8] = 0;
                                      v157 = 0;
                                      v23 = 0;
                                      v24 = 0;
                                      v25 = 0;
                                      v26 = 0;
                                      v27 = 0;
                                      v28 = 0;
                                      v158[2] = 0x100000001;
                                      v158[1] = 0x100000001;
                                      v158[0] = 0x100000001;
                                      v29 = 1;
                                      v30 = 1;
                                      v31 = 1;
                                      v32 = 1;
                                      *(&v156 + 1) = 0x100000000;
                                      *&v156 = 0x100000001;
                                      *v155 = 0x100000001;
                                      *&v154[4] = 1;
                                    }
                                  }

                                  else
                                  {
                                    memset(v154, 0, sizeof(v154));
                                    v153 = 0;
                                    v152 = 0;
                                    v151 = 0;
                                    memset(v150, 0, sizeof(v150));
                                    *&v155[8] = 0;
                                    v157 = 0;
                                    v23 = 0;
                                    v24 = 0;
                                    v25 = 0;
                                    v26 = 0;
                                    v27 = 0;
                                    v28 = 0;
                                    v158[2] = 0x100000001;
                                    v158[1] = 0x100000001;
                                    v158[0] = 0x100000001;
                                    v29 = 1;
                                    v30 = 1;
                                    v31 = 1;
                                    v32 = 1;
                                    *(&v156 + 1) = 0x100000000;
                                    *&v156 = 0x100000001;
                                    *v155 = 0x100000001;
                                  }
                                }

                                else
                                {
                                  *&v155[4] = 0;
                                  memset(v154, 0, sizeof(v154));
                                  v153 = 0;
                                  v152 = 0;
                                  v151 = 0;
                                  memset(v150, 0, sizeof(v150));
                                  v157 = 0;
                                  v23 = 0;
                                  v24 = 0;
                                  v25 = 0;
                                  v26 = 0;
                                  v27 = 0;
                                  v28 = 0;
                                  v158[2] = 0x100000001;
                                  v158[1] = 0x100000001;
                                  v158[0] = 0x100000001;
                                  v29 = 1;
                                  v30 = 1;
                                  v31 = 1;
                                  v32 = 1;
                                  *(&v156 + 1) = 0x100000000;
                                  *&v156 = 0x100000001;
                                  *v155 = 1;
                                }
                              }

                              else
                              {
                                *(&v156 + 4) = 0;
                                *&v155[4] = 0;
                                memset(v154, 0, sizeof(v154));
                                v153 = 0;
                                v152 = 0;
                                v151 = 0;
                                memset(v150, 0, sizeof(v150));
                                v157 = 0;
                                v23 = 0;
                                v24 = 0;
                                v25 = 0;
                                v26 = 0;
                                v27 = 0;
                                v28 = 0;
                                v158[2] = 0x100000001;
                                v158[1] = 0x100000001;
                                v158[0] = 0x100000001;
                                v29 = 1;
                                v30 = 1;
                                v31 = 1;
                                v32 = 1;
                                HIDWORD(v156) = 1;
                                LODWORD(v156) = 1;
                                *v155 = 1;
                              }
                            }

                            else
                            {
                              memset(v155, 0, sizeof(v155));
                              *(&v156 + 4) = 0;
                              memset(v154, 0, sizeof(v154));
                              v153 = 0;
                              v152 = 0;
                              v151 = 0;
                              memset(v150, 0, sizeof(v150));
                              v157 = 0;
                              v23 = 0;
                              v24 = 0;
                              v25 = 0;
                              v26 = 0;
                              v27 = 0;
                              v28 = 0;
                              v158[2] = 0x100000001;
                              v158[1] = 0x100000001;
                              v158[0] = 0x100000001;
                              v29 = 1;
                              v30 = 1;
                              v31 = 1;
                              v32 = 1;
                              HIDWORD(v156) = 1;
                              LODWORD(v156) = 1;
                            }

                            v149 = 1;
                            v5 = v145;
                            goto LABEL_24;
                          }

                          *&v156 = 0;
                          memset(v155, 0, sizeof(v155));
                          memset(v154, 0, sizeof(v154));
                          v153 = 0;
                          v152 = 0;
                          v151 = 0;
                          memset(v150, 0, sizeof(v150));
                          v157 = 0;
                          v23 = 0;
                          v24 = 0;
                          v25 = 0;
                          v26 = 0;
                          v27 = 0;
                          v28 = 0;
                          v158[2] = 0x100000001;
                          v158[1] = 0x100000001;
                          v158[0] = 0x100000001;
                          v29 = 1;
                          v30 = 1;
                          v31 = 1;
                          v32 = 1;
                          *(&v156 + 1) = 0x100000000;
                        }

                        else
                        {
                          v156 = 0uLL;
                          memset(v155, 0, sizeof(v155));
                          memset(v154, 0, sizeof(v154));
                          v153 = 0;
                          v152 = 0;
                          v151 = 0;
                          memset(v150, 0, sizeof(v150));
                          v157 = 0;
                          v23 = 0;
                          v24 = 0;
                          v25 = 0;
                          v26 = 0;
                          v27 = 0;
                          v28 = 0;
                          v158[2] = 0x100000001;
                          v158[1] = 0x100000001;
                          v158[0] = 0x100000001;
                          v29 = 1;
                          v30 = 1;
                          v31 = 1;
                          v32 = 1;
                        }
                      }

                      else
                      {
                        v158[0] = 0x100000000;
                        v156 = 0uLL;
                        memset(v155, 0, sizeof(v155));
                        memset(v154, 0, sizeof(v154));
                        v153 = 0;
                        v152 = 0;
                        v151 = 0;
                        memset(v150, 0, sizeof(v150));
                        v157 = 0;
                        v23 = 0;
                        v24 = 0;
                        v25 = 0;
                        v26 = 0;
                        v27 = 0;
                        v28 = 0;
                        v158[2] = 0x100000001;
                        v158[1] = 0x100000001;
                        v29 = 1;
                        v30 = 1;
                        v31 = 1;
                        v32 = 1;
                      }
                    }

                    else
                    {
                      v32 = 0;
                      v158[0] = 0x100000000;
                      v156 = 0uLL;
                      memset(v155, 0, sizeof(v155));
                      memset(v154, 0, sizeof(v154));
                      v153 = 0;
                      v152 = 0;
                      v151 = 0;
                      memset(v150, 0, sizeof(v150));
                      v157 = 0;
                      v23 = 0;
                      v24 = 0;
                      v25 = 0;
                      v26 = 0;
                      v27 = 0;
                      v28 = 0;
                      v158[2] = 0x100000001;
                      v158[1] = 0x100000001;
                      v29 = 1;
                      v30 = 1;
                      v31 = 1;
                    }
                  }

                  else
                  {
                    v31 = 0;
                    v32 = 0;
                    v158[0] = 0x100000000;
                    v156 = 0uLL;
                    memset(v155, 0, sizeof(v155));
                    memset(v154, 0, sizeof(v154));
                    v153 = 0;
                    v152 = 0;
                    v151 = 0;
                    memset(v150, 0, sizeof(v150));
                    v157 = 0;
                    v23 = 0;
                    v24 = 0;
                    v25 = 0;
                    v26 = 0;
                    v27 = 0;
                    v28 = 0;
                    v158[2] = 0x100000001;
                    v158[1] = 0x100000001;
                    v29 = 1;
                    v30 = 1;
                  }
                }

                else
                {
                  v30 = 0;
                  v31 = 0;
                  v32 = 0;
                  v158[0] = 0x100000000;
                  v156 = 0uLL;
                  memset(v155, 0, sizeof(v155));
                  memset(v154, 0, sizeof(v154));
                  v153 = 0;
                  v152 = 0;
                  v151 = 0;
                  memset(v150, 0, sizeof(v150));
                  v157 = 0;
                  v23 = 0;
                  v24 = 0;
                  v25 = 0;
                  v26 = 0;
                  v27 = 0;
                  v28 = 0;
                  v158[2] = 0x100000001;
                  v158[1] = 0x100000001;
                  v29 = 1;
                }
              }

              else
              {
                v29 = 0;
                v30 = 0;
                v31 = 0;
                v32 = 0;
                v158[0] = 0x100000000;
                v156 = 0uLL;
                memset(v155, 0, sizeof(v155));
                memset(v154, 0, sizeof(v154));
                v153 = 0;
                v152 = 0;
                v151 = 0;
                memset(v150, 0, sizeof(v150));
                v157 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 0;
                v26 = 0;
                v27 = 0;
                v28 = 0;
                v158[2] = 0x100000001;
                v158[1] = 0x100000001;
              }
            }

            else
            {
              v158[0] = 0;
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v156 = 0uLL;
              memset(v155, 0, sizeof(v155));
              memset(v154, 0, sizeof(v154));
              v153 = 0;
              v152 = 0;
              v151 = 0;
              memset(v150, 0, sizeof(v150));
              v157 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v158[2] = 0x100000001;
              v158[1] = 0x100000001;
            }
          }

          else
          {
            *(v158 + 4) = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            LODWORD(v158[0]) = 0;
            v156 = 0uLL;
            memset(v155, 0, sizeof(v155));
            memset(v154, 0, sizeof(v154));
            v153 = 0;
            v152 = 0;
            v151 = 0;
            memset(v150, 0, sizeof(v150));
            v157 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v158[2] = 0x100000001;
            HIDWORD(v158[1]) = 1;
          }
        }

        else
        {
          v158[1] = 0;
          v158[0] = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v156 = 0uLL;
          memset(v155, 0, sizeof(v155));
          memset(v154, 0, sizeof(v154));
          v153 = 0;
          v152 = 0;
          v151 = 0;
          memset(v150, 0, sizeof(v150));
          v157 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v158[2] = 0x100000001;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        memset(v158, 0, 20);
        v156 = 0uLL;
        memset(v155, 0, sizeof(v155));
        memset(v154, 0, sizeof(v154));
        v153 = 0;
        v152 = 0;
        v151 = 0;
        memset(v150, 0, sizeof(v150));
        v157 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        HIDWORD(v158[2]) = 1;
      }
    }

    else
    {
      memset(v158, 0, sizeof(v158));
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v156 = 0uLL;
      memset(v155, 0, sizeof(v155));
      memset(v154, 0, sizeof(v154));
      v153 = 0;
      v152 = 0;
      v151 = 0;
      memset(v150, 0, sizeof(v150));
      v157 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    v149 = 1;
    goto LABEL_24;
  }

  v33 = 0;
  v5 = 0;
LABEL_94:

  return v33;
}

@end
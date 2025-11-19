@interface WiFiAwareDataSessionStatisticsReport
- (BOOL)isEqual:(id)a3;
- (WiFiAwareDataSessionStatisticsReport)initWithCoder:(id)a3;
- (WiFiAwareDataSessionStatisticsReport)initWithPeerAddress:(id)a3 infrastructureChannel:(id)a4 txCCAHistogram:(id)a5 rxRSSIHistogram:(id)a6 preferred2GChannelsCount:(id)a7 preferred5GChannelsCount:(id)a8 dfsChannelsCount:(id)a9 csaCount:(id)a10 quietIECount:(id)a11 txErrorCount:(id)a12 packetsOn2GCount:(id)a13 packetsNAVOn2GCount:(id)a14 packetsHOFOn2GCount:(id)a15 packetsOn5GCount:(id)a16 packetsOverridenOn5GCount:(id)a17 infraRelayOperationStatus:(BOOL)a18 infraRelayRequestersCount:(id)a19 txExpiredCount:(id)a20 txNoACKCount:(id)a21 txFailedCount:(id)a22 txNoResourcesCount:(id)a23 txIOErrorCount:(id)a24 txMemoryErrorCount:(id)a25 txChipModeErrorCount:(id)a26 txNoRemotePeerCount:(id)a27 txInternalErrorCount:(id)a28 txDroppedCount:(id)a29 txFirmwareFreePacketCount:(id)a30 txMaxRetriesCount:(id)a31 txForceLifetimeExpiredCount:(id)a32 channelSequenceMismatchOn5GCount:(id)a33 channelSequenceMismatchOn2GCount:(id)a34 infraScanCount:(id)a35 infraAssocCount:(id)a36 infraDisassocCount:(id)a37 countryCode:(id)a38 txConsecutiveErrorsHistogram:(id)a39 rxFWDelayHistogram:(id)a40 rxIPCDelayHistogram:(id)a41 txPacketExpiryHistogram:(id)a42;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDataSessionStatisticsReport

- (WiFiAwareDataSessionStatisticsReport)initWithPeerAddress:(id)a3 infrastructureChannel:(id)a4 txCCAHistogram:(id)a5 rxRSSIHistogram:(id)a6 preferred2GChannelsCount:(id)a7 preferred5GChannelsCount:(id)a8 dfsChannelsCount:(id)a9 csaCount:(id)a10 quietIECount:(id)a11 txErrorCount:(id)a12 packetsOn2GCount:(id)a13 packetsNAVOn2GCount:(id)a14 packetsHOFOn2GCount:(id)a15 packetsOn5GCount:(id)a16 packetsOverridenOn5GCount:(id)a17 infraRelayOperationStatus:(BOOL)a18 infraRelayRequestersCount:(id)a19 txExpiredCount:(id)a20 txNoACKCount:(id)a21 txFailedCount:(id)a22 txNoResourcesCount:(id)a23 txIOErrorCount:(id)a24 txMemoryErrorCount:(id)a25 txChipModeErrorCount:(id)a26 txNoRemotePeerCount:(id)a27 txInternalErrorCount:(id)a28 txDroppedCount:(id)a29 txFirmwareFreePacketCount:(id)a30 txMaxRetriesCount:(id)a31 txForceLifetimeExpiredCount:(id)a32 channelSequenceMismatchOn5GCount:(id)a33 channelSequenceMismatchOn2GCount:(id)a34 infraScanCount:(id)a35 infraAssocCount:(id)a36 infraDisassocCount:(id)a37 countryCode:(id)a38 txConsecutiveErrorsHistogram:(id)a39 rxFWDelayHistogram:(id)a40 rxIPCDelayHistogram:(id)a41 txPacketExpiryHistogram:(id)a42
{
  v85 = a3;
  v58 = a4;
  v84 = a4;
  v82 = a5;
  v81 = a6;
  v59 = a7;
  v79 = a7;
  v60 = a8;
  v93 = a8;
  v92 = a9;
  v91 = a10;
  v90 = a11;
  v89 = a12;
  v88 = a13;
  v87 = a14;
  v86 = a15;
  v83 = a16;
  v80 = a17;
  v78 = a19;
  v77 = a20;
  v76 = a21;
  v75 = a22;
  v74 = a23;
  v73 = a24;
  v72 = a25;
  v71 = a26;
  v70 = a27;
  v69 = a28;
  v68 = a29;
  v67 = a30;
  v66 = a31;
  v65 = a32;
  v47 = a33;
  v63 = a34;
  v62 = a35;
  v64 = a36;
  v48 = a37;
  v49 = a38;
  v50 = a39;
  v51 = a40;
  v52 = a41;
  v53 = a42;
  v94.receiver = self;
  v94.super_class = WiFiAwareDataSessionStatisticsReport;
  v54 = [(WiFiAwareDataSessionStatisticsReport *)&v94 init];
  v55 = v54;
  if (v54)
  {
    objc_storeStrong(&v54->_peerAddress, a3);
    objc_storeStrong(&v55->_infrastructureChannel, v58);
    objc_storeStrong(&v55->_txCCAHistogram, a5);
    objc_storeStrong(&v55->_rxRSSIHistogram, a6);
    objc_storeStrong(&v55->_preferred2GChannelsCount, v59);
    objc_storeStrong(&v55->_preferred5GChannelsCount, v60);
    objc_storeStrong(&v55->_dfsChannelsCount, a9);
    objc_storeStrong(&v55->_preferred2GChannelsCount, v59);
    objc_storeStrong(&v55->_preferred5GChannelsCount, v60);
    objc_storeStrong(&v55->_dfsChannelsCount, a9);
    objc_storeStrong(&v55->_csaCount, a10);
    objc_storeStrong(&v55->_quietIECount, a11);
    objc_storeStrong(&v55->_txErrorCount, a12);
    objc_storeStrong(&v55->_packetsOn2GCount, a13);
    objc_storeStrong(&v55->_packetsNAVOn2GCount, a14);
    objc_storeStrong(&v55->_packetsHOFOn2GCount, a15);
    objc_storeStrong(&v55->_packetsOn5GCount, a16);
    objc_storeStrong(&v55->_packetsOverridenOn5GCount, a17);
    v55->_infraRelayOperationStatus = a18;
    objc_storeStrong(&v55->_infraRelayRequestersCount, a19);
    objc_storeStrong(&v55->_txExpiredCount, a20);
    objc_storeStrong(&v55->_txNoACKCount, a21);
    objc_storeStrong(&v55->_txFailedCount, a22);
    objc_storeStrong(&v55->_txNoResourcesCount, a23);
    objc_storeStrong(&v55->_txIOErrorCount, a24);
    objc_storeStrong(&v55->_txMemoryErrorCount, a25);
    objc_storeStrong(&v55->_txChipModeErrorCount, a26);
    objc_storeStrong(&v55->_txNoRemotePeerCount, a27);
    objc_storeStrong(&v55->_txInternalErrorCount, a28);
    objc_storeStrong(&v55->_txDroppedCount, a29);
    objc_storeStrong(&v55->_txFirmwareFreePacketCount, a30);
    objc_storeStrong(&v55->_txMaxRetriesCount, a31);
    objc_storeStrong(&v55->_txForceLifetimeExpiredCount, a32);
    objc_storeStrong(&v55->_channelSequenceMismatchOn5GCount, a33);
    objc_storeStrong(&v55->_channelSequenceMismatchOn2GCount, a34);
    objc_storeStrong(&v55->_infraScanCount, a35);
    objc_storeStrong(&v55->_infraAssocCount, a36);
    objc_storeStrong(&v55->_infraDisassocCount, a37);
    objc_storeStrong(&v55->_countryCode, a38);
    objc_storeStrong(&v55->_txConsecutiveErrorsHistogram, a39);
    objc_storeStrong(&v55->_rxFWDelayHistogram, a40);
    objc_storeStrong(&v55->_rxIPCDelayHistogram, a41);
    objc_storeStrong(&v55->_txPacketExpiryHistogram, a42);
  }

  return v55;
}

- (WiFiAwareDataSessionStatisticsReport)initWithCoder:(id)a3
{
  v89[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WiFiAwareDataSessionStatisticsReport *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.peerAddress"];
    peerAddress = v5->_peerAddress;
    v5->_peerAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infrastructureChannel"];
    infrastructureChannel = v5->_infrastructureChannel;
    v5->_infrastructureChannel = v8;

    v10 = MEMORY[0x277CBEB98];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.txCCAHistogram"];
    txCCAHistogram = v5->_txCCAHistogram;
    v5->_txCCAHistogram = v13;

    v15 = [v4 decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.rxRSSIHistogram"];
    rxRSSIHistogram = v5->_rxRSSIHistogram;
    v5->_rxRSSIHistogram = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.preferred2GChannelsCount"];
    preferred2GChannelsCount = v5->_preferred2GChannelsCount;
    v5->_preferred2GChannelsCount = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.preferred5GChannelsCount"];
    preferred5GChannelsCount = v5->_preferred5GChannelsCount;
    v5->_preferred5GChannelsCount = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.dfsChannelsCount"];
    dfsChannelsCount = v5->_dfsChannelsCount;
    v5->_dfsChannelsCount = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.csaCount"];
    csaCount = v5->_csaCount;
    v5->_csaCount = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.quietIECount"];
    quietIECount = v5->_quietIECount;
    v5->_quietIECount = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txErrorCount"];
    txErrorCount = v5->_txErrorCount;
    v5->_txErrorCount = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn2GCount"];
    packetsOn2GCount = v5->_packetsOn2GCount;
    v5->_packetsOn2GCount = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsNAVOn2GCount"];
    packetsNAVOn2GCount = v5->_packetsNAVOn2GCount;
    v5->_packetsNAVOn2GCount = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsHOFOn2GCount"];
    packetsHOFOn2GCount = v5->_packetsHOFOn2GCount;
    v5->_packetsHOFOn2GCount = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn5GCount"];
    packetsOn5GCount = v5->_packetsOn5GCount;
    v5->_packetsOn5GCount = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOverridenOn5GCount"];
    packetsOverridenOn5GCount = v5->_packetsOverridenOn5GCount;
    v5->_packetsOverridenOn5GCount = v37;

    v5->_infraRelayOperationStatus = [v4 decodeBoolForKey:@"WiFiAwareDataSessionStatisticsReport.infraRelayOperationStatus"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraRelayRequestersCount"];
    infraRelayRequestersCount = v5->_infraRelayRequestersCount;
    v5->_infraRelayRequestersCount = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txExpiredCount"];
    txExpiredCount = v5->_txExpiredCount;
    v5->_txExpiredCount = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txNoACKCount"];
    txNoACKCount = v5->_txNoACKCount;
    v5->_txNoACKCount = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txFailedCount"];
    txFailedCount = v5->_txFailedCount;
    v5->_txFailedCount = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txNoResourcesCount"];
    txNoResourcesCount = v5->_txNoResourcesCount;
    v5->_txNoResourcesCount = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txIOErrorCount"];
    txIOErrorCount = v5->_txIOErrorCount;
    v5->_txIOErrorCount = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txMemoryErrorCount"];
    txMemoryErrorCount = v5->_txMemoryErrorCount;
    v5->_txMemoryErrorCount = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txChipModeErrorCount"];
    txChipModeErrorCount = v5->_txChipModeErrorCount;
    v5->_txChipModeErrorCount = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txNoRemotePeerCount"];
    txNoRemotePeerCount = v5->_txNoRemotePeerCount;
    v5->_txNoRemotePeerCount = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txInternalErrorCount"];
    txInternalErrorCount = v5->_txInternalErrorCount;
    v5->_txInternalErrorCount = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txDroppedCount"];
    txDroppedCount = v5->_txDroppedCount;
    v5->_txDroppedCount = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txFirmwareFreePacketCount"];
    txFirmwareFreePacketCount = v5->_txFirmwareFreePacketCount;
    v5->_txFirmwareFreePacketCount = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txMaxRetriesCount"];
    txMaxRetriesCount = v5->_txMaxRetriesCount;
    v5->_txMaxRetriesCount = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.txForceLifetimeExpiredCount"];
    txForceLifetimeExpiredCount = v5->_txForceLifetimeExpiredCount;
    v5->_txForceLifetimeExpiredCount = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn5GCount"];
    channelSequenceMismatchOn5GCount = v5->_channelSequenceMismatchOn5GCount;
    v5->_channelSequenceMismatchOn5GCount = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn2GCount"];
    channelSequenceMismatchOn2GCount = v5->_channelSequenceMismatchOn2GCount;
    v5->_channelSequenceMismatchOn2GCount = v69;

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraScanCount"];
    infraScanCount = v5->_infraScanCount;
    v5->_infraScanCount = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraAssocCount"];
    infraAssocCount = v5->_infraAssocCount;
    v5->_infraAssocCount = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.infraDisassocCount"];
    infraDisassocCount = v5->_infraDisassocCount;
    v5->_infraDisassocCount = v75;

    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataSessionStatisticsReport.countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v77;

    v79 = [v4 decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.txConsecutiveErrorsHistogram"];
    txConsecutiveErrorsHistogram = v5->_txConsecutiveErrorsHistogram;
    v5->_txConsecutiveErrorsHistogram = v79;

    v81 = [v4 decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.rxFWDelayHistogram"];
    rxFWDelayHistogram = v5->_rxFWDelayHistogram;
    v5->_rxFWDelayHistogram = v81;

    v83 = [v4 decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.rxIPCDelayHistogram"];
    rxIPCDelayHistogram = v5->_rxIPCDelayHistogram;
    v5->_rxIPCDelayHistogram = v83;

    v85 = [v4 decodeObjectOfClasses:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.txPacketExpiryHistogram"];
    txPacketExpiryHistogram = v5->_txPacketExpiryHistogram;
    v5->_txPacketExpiryHistogram = v85;
  }

  v87 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDataSessionStatisticsReport *)self peerAddress];
  [v4 encodeObject:v5 forKey:@"WiFiAwareDataSessionStatisticsReport.peerAddress"];

  v6 = [(WiFiAwareDataSessionStatisticsReport *)self infrastructureChannel];
  [v4 encodeObject:v6 forKey:@"WiFiAwareDataSessionStatisticsReport.infrastructureChannel"];

  v7 = [(WiFiAwareDataSessionStatisticsReport *)self txCCAHistogram];
  [v4 encodeObject:v7 forKey:@"WiFiAwareDataSessionStatisticsReport.txCCAHistogram"];

  v8 = [(WiFiAwareDataSessionStatisticsReport *)self rxRSSIHistogram];
  [v4 encodeObject:v8 forKey:@"WiFiAwareDataSessionStatisticsReport.rxRSSIHistogram"];

  v9 = [(WiFiAwareDataSessionStatisticsReport *)self preferred2GChannelsCount];
  [v4 encodeObject:v9 forKey:@"WiFiAwareDataSessionStatisticsReport.preferred2GChannelsCount"];

  v10 = [(WiFiAwareDataSessionStatisticsReport *)self preferred5GChannelsCount];
  [v4 encodeObject:v10 forKey:@"WiFiAwareDataSessionStatisticsReport.preferred5GChannelsCount"];

  v11 = [(WiFiAwareDataSessionStatisticsReport *)self dfsChannelsCount];
  [v4 encodeObject:v11 forKey:@"WiFiAwareDataSessionStatisticsReport.dfsChannelsCount"];

  v12 = [(WiFiAwareDataSessionStatisticsReport *)self csaCount];
  [v4 encodeObject:v12 forKey:@"WiFiAwareDataSessionStatisticsReport.csaCount"];

  v13 = [(WiFiAwareDataSessionStatisticsReport *)self quietIECount];
  [v4 encodeObject:v13 forKey:@"WiFiAwareDataSessionStatisticsReport.quietIECount"];

  v14 = [(WiFiAwareDataSessionStatisticsReport *)self txErrorCount];
  [v4 encodeObject:v14 forKey:@"WiFiAwareDataSessionStatisticsReport.txErrorCount"];

  v15 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn2GCount];
  [v4 encodeObject:v15 forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn2GCount"];

  v16 = [(WiFiAwareDataSessionStatisticsReport *)self packetsNAVOn2GCount];
  [v4 encodeObject:v16 forKey:@"WiFiAwareDataSessionStatisticsReport.packetsNAVOn2GCount"];

  v17 = [(WiFiAwareDataSessionStatisticsReport *)self packetsHOFOn2GCount];
  [v4 encodeObject:v17 forKey:@"WiFiAwareDataSessionStatisticsReport.packetsHOFOn2GCount"];

  v18 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn5GCount];
  [v4 encodeObject:v18 forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOn5GCount"];

  v19 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOverridenOn5GCount];
  [v4 encodeObject:v19 forKey:@"WiFiAwareDataSessionStatisticsReport.packetsOverridenOn5GCount"];

  [v4 encodeBool:-[WiFiAwareDataSessionStatisticsReport infraRelayOperationStatus](self forKey:{"infraRelayOperationStatus"), @"WiFiAwareDataSessionStatisticsReport.infraRelayOperationStatus"}];
  v20 = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayRequestersCount];
  [v4 encodeObject:v20 forKey:@"WiFiAwareDataSessionStatisticsReport.infraRelayRequestersCount"];

  v21 = [(WiFiAwareDataSessionStatisticsReport *)self txExpiredCount];
  [v4 encodeObject:v21 forKey:@"WiFiAwareDataSessionStatisticsReport.txExpiredCount"];

  v22 = [(WiFiAwareDataSessionStatisticsReport *)self txNoACKCount];
  [v4 encodeObject:v22 forKey:@"WiFiAwareDataSessionStatisticsReport.txNoACKCount"];

  v23 = [(WiFiAwareDataSessionStatisticsReport *)self txFailedCount];
  [v4 encodeObject:v23 forKey:@"WiFiAwareDataSessionStatisticsReport.txFailedCount"];

  v24 = [(WiFiAwareDataSessionStatisticsReport *)self txNoResourcesCount];
  [v4 encodeObject:v24 forKey:@"WiFiAwareDataSessionStatisticsReport.txNoResourcesCount"];

  v25 = [(WiFiAwareDataSessionStatisticsReport *)self txIOErrorCount];
  [v4 encodeObject:v25 forKey:@"WiFiAwareDataSessionStatisticsReport.txIOErrorCount"];

  v26 = [(WiFiAwareDataSessionStatisticsReport *)self txMemoryErrorCount];
  [v4 encodeObject:v26 forKey:@"WiFiAwareDataSessionStatisticsReport.txMemoryErrorCount"];

  v27 = [(WiFiAwareDataSessionStatisticsReport *)self txChipModeErrorCount];
  [v4 encodeObject:v27 forKey:@"WiFiAwareDataSessionStatisticsReport.txChipModeErrorCount"];

  v28 = [(WiFiAwareDataSessionStatisticsReport *)self txNoRemotePeerCount];
  [v4 encodeObject:v28 forKey:@"WiFiAwareDataSessionStatisticsReport.txNoRemotePeerCount"];

  v29 = [(WiFiAwareDataSessionStatisticsReport *)self txInternalErrorCount];
  [v4 encodeObject:v29 forKey:@"WiFiAwareDataSessionStatisticsReport.txInternalErrorCount"];

  v30 = [(WiFiAwareDataSessionStatisticsReport *)self txDroppedCount];
  [v4 encodeObject:v30 forKey:@"WiFiAwareDataSessionStatisticsReport.txDroppedCount"];

  v31 = [(WiFiAwareDataSessionStatisticsReport *)self txFirmwareFreePacketCount];
  [v4 encodeObject:v31 forKey:@"WiFiAwareDataSessionStatisticsReport.txFirmwareFreePacketCount"];

  v32 = [(WiFiAwareDataSessionStatisticsReport *)self txMaxRetriesCount];
  [v4 encodeObject:v32 forKey:@"WiFiAwareDataSessionStatisticsReport.txMaxRetriesCount"];

  v33 = [(WiFiAwareDataSessionStatisticsReport *)self txForceLifetimeExpiredCount];
  [v4 encodeObject:v33 forKey:@"WiFiAwareDataSessionStatisticsReport.txForceLifetimeExpiredCount"];

  v34 = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn5GCount];
  [v4 encodeObject:v34 forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn5GCount"];

  v35 = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn2GCount];
  [v4 encodeObject:v35 forKey:@"WiFiAwareDataSessionStatisticsReport.channelSequenceMismatchOn2GCount"];

  v36 = [(WiFiAwareDataSessionStatisticsReport *)self infraScanCount];
  [v4 encodeObject:v36 forKey:@"WiFiAwareDataSessionStatisticsReport.infraScanCount"];

  v37 = [(WiFiAwareDataSessionStatisticsReport *)self infraAssocCount];
  [v4 encodeObject:v37 forKey:@"WiFiAwareDataSessionStatisticsReport.infraAssocCount"];

  v38 = [(WiFiAwareDataSessionStatisticsReport *)self infraDisassocCount];
  [v4 encodeObject:v38 forKey:@"WiFiAwareDataSessionStatisticsReport.infraDisassocCount"];

  v39 = [(WiFiAwareDataSessionStatisticsReport *)self countryCode];
  [v4 encodeObject:v39 forKey:@"WiFiAwareDataSessionStatisticsReport.countryCode"];

  v40 = [(WiFiAwareDataSessionStatisticsReport *)self txConsecutiveErrorsHistogram];
  [v4 encodeObject:v40 forKey:@"WiFiAwareDataSessionStatisticsReport.txConsecutiveErrorsHistogram"];

  v41 = [(WiFiAwareDataSessionStatisticsReport *)self rxFWDelayHistogram];
  [v4 encodeObject:v41 forKey:@"WiFiAwareDataSessionStatisticsReport.rxFWDelayHistogram"];

  v42 = [(WiFiAwareDataSessionStatisticsReport *)self rxIPCDelayHistogram];
  [v4 encodeObject:v42 forKey:@"WiFiAwareDataSessionStatisticsReport.rxIPCDelayHistogram"];

  v43 = [(WiFiAwareDataSessionStatisticsReport *)self txPacketExpiryHistogram];
  [v4 encodeObject:v43 forKey:@"WiFiAwareDataSessionStatisticsReport.txPacketExpiryHistogram"];
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = [(WiFiAwareDataSessionStatisticsReport *)self peerAddress];
  v16 = [(WiFiAwareDataSessionStatisticsReport *)self infrastructureChannel];
  v22 = [(WiFiAwareDataSessionStatisticsReport *)self preferred2GChannelsCount];
  v15 = [(WiFiAwareDataSessionStatisticsReport *)self preferred5GChannelsCount];
  v21 = [(WiFiAwareDataSessionStatisticsReport *)self dfsChannelsCount];
  v14 = [(WiFiAwareDataSessionStatisticsReport *)self csaCount];
  v20 = [(WiFiAwareDataSessionStatisticsReport *)self quietIECount];
  v13 = [(WiFiAwareDataSessionStatisticsReport *)self txErrorCount];
  v3 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn2GCount];
  v12 = [(WiFiAwareDataSessionStatisticsReport *)self packetsNAVOn2GCount];
  v4 = [(WiFiAwareDataSessionStatisticsReport *)self packetsHOFOn2GCount];
  v11 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn5GCount];
  v5 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOverridenOn5GCount];
  v6 = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayOperationStatus];
  v7 = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayRequestersCount];
  v8 = [(WiFiAwareDataSessionStatisticsReport *)self txCCAHistogram];
  v9 = [(WiFiAwareDataSessionStatisticsReport *)self rxRSSIHistogram];
  v19 = [v18 stringWithFormat:@"<WiFiAwareDataSessionStatisticsReport peerAddress=%@, infrastructureChannel=%@, preferred2GChannelsCount=%@, preferred5GChannelsCount=%@, dfsChannelsCount=%@, csaCount=%@, quietIECount=%@, txErrorCount=%@, packetsOn2GCount=%@, packetsNAVOn2GCount=%@, packetsHOFOn2GCount=%@, packetsOn5GCount=%@, packetsOverridenOn5GCount=%@>, infraRelayOperationStatus=%d, infraRelayRequestersCount=%@\ntxCCA=\n%@\nrxRSSI=%@\n", v17, v16, v22, v15, v21, v14, v20, v13, v3, v12, v4, v11, v5, v6, v7, v8, v9];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(WiFiAwareDataSessionStatisticsReport *)self peerAddress];
    v160 = [(WiFiAwareDataSessionStatisticsReport *)v5 peerAddress];
    v161 = v6;
    v159 = [v6 isEqual:v160];
    if (v159 && (-[WiFiAwareDataSessionStatisticsReport infrastructureChannel](self, "infrastructureChannel"), v8 = objc_claimAutoreleasedReturnValue(), -[WiFiAwareDataSessionStatisticsReport infrastructureChannel](v5, "infrastructureChannel"), v147 = objc_claimAutoreleasedReturnValue(), v148 = v8, [v8 isEqual:v147]))
    {
      v9 = [(WiFiAwareDataSessionStatisticsReport *)self preferred2GChannelsCount];
      [(WiFiAwareDataSessionStatisticsReport *)v5 preferred2GChannelsCount];
      v143 = v144 = v9;
      if ([v9 isEqual:?])
      {
        v10 = [(WiFiAwareDataSessionStatisticsReport *)self preferred5GChannelsCount];
        [(WiFiAwareDataSessionStatisticsReport *)v5 preferred5GChannelsCount];
        v141 = v142 = v10;
        if ([v10 isEqual:?])
        {
          v11 = [(WiFiAwareDataSessionStatisticsReport *)self dfsChannelsCount];
          [(WiFiAwareDataSessionStatisticsReport *)v5 dfsChannelsCount];
          v139 = v140 = v11;
          if ([v11 isEqual:?])
          {
            v12 = [(WiFiAwareDataSessionStatisticsReport *)self csaCount];
            [(WiFiAwareDataSessionStatisticsReport *)v5 csaCount];
            v137 = v138 = v12;
            if ([v12 isEqual:?])
            {
              v13 = [(WiFiAwareDataSessionStatisticsReport *)self quietIECount];
              v135 = [(WiFiAwareDataSessionStatisticsReport *)v5 quietIECount];
              v136 = v13;
              if ([v13 isEqual:v135])
              {
                v14 = [(WiFiAwareDataSessionStatisticsReport *)self txErrorCount];
                v133 = [(WiFiAwareDataSessionStatisticsReport *)v5 txErrorCount];
                v134 = v14;
                if ([v14 isEqual:v133])
                {
                  v15 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn2GCount];
                  v131 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsOn2GCount];
                  v132 = v15;
                  if ([v15 isEqual:v131])
                  {
                    v16 = [(WiFiAwareDataSessionStatisticsReport *)self packetsNAVOn2GCount];
                    v129 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsNAVOn2GCount];
                    v130 = v16;
                    if ([v16 isEqual:v129])
                    {
                      v17 = [(WiFiAwareDataSessionStatisticsReport *)self packetsHOFOn2GCount];
                      v127 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsHOFOn2GCount];
                      v128 = v17;
                      if ([v17 isEqual:v127])
                      {
                        v18 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOn5GCount];
                        v125 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsOn5GCount];
                        v126 = v18;
                        if ([v18 isEqual:v125])
                        {
                          v19 = [(WiFiAwareDataSessionStatisticsReport *)self packetsOverridenOn5GCount];
                          v123 = [(WiFiAwareDataSessionStatisticsReport *)v5 packetsOverridenOn5GCount];
                          v124 = v19;
                          if ([v19 isEqual:v123])
                          {
                            v20 = [(WiFiAwareDataSessionStatisticsReport *)self txCCAHistogram];
                            v145 = v5;
                            v121 = [(WiFiAwareDataSessionStatisticsReport *)v5 txCCAHistogram];
                            v122 = v20;
                            if ([v20 isEqual:v121])
                            {
                              v21 = [(WiFiAwareDataSessionStatisticsReport *)self rxRSSIHistogram];
                              v119 = [(WiFiAwareDataSessionStatisticsReport *)v5 rxRSSIHistogram];
                              v120 = v21;
                              if ([v21 isEqual:v119] && (v22 = -[WiFiAwareDataSessionStatisticsReport infraRelayOperationStatus](self, "infraRelayOperationStatus"), v22 == -[WiFiAwareDataSessionStatisticsReport infraRelayOperationStatus](v5, "infraRelayOperationStatus")))
                              {
                                v46 = [(WiFiAwareDataSessionStatisticsReport *)self infraRelayRequestersCount];
                                v117 = [(WiFiAwareDataSessionStatisticsReport *)v5 infraRelayRequestersCount];
                                v118 = v46;
                                if ([v46 isEqual:v117])
                                {
                                  v47 = [(WiFiAwareDataSessionStatisticsReport *)self txExpiredCount];
                                  v115 = [(WiFiAwareDataSessionStatisticsReport *)v5 txExpiredCount];
                                  v116 = v47;
                                  if ([v47 isEqual:v115])
                                  {
                                    v48 = [(WiFiAwareDataSessionStatisticsReport *)self txNoACKCount];
                                    v113 = [(WiFiAwareDataSessionStatisticsReport *)v5 txNoACKCount];
                                    v114 = v48;
                                    if ([v48 isEqual:v113])
                                    {
                                      v49 = [(WiFiAwareDataSessionStatisticsReport *)self txFailedCount];
                                      v111 = [(WiFiAwareDataSessionStatisticsReport *)v5 txFailedCount];
                                      v112 = v49;
                                      if ([v49 isEqual:v111])
                                      {
                                        v50 = [(WiFiAwareDataSessionStatisticsReport *)self txNoResourcesCount];
                                        v109 = [(WiFiAwareDataSessionStatisticsReport *)v5 txNoResourcesCount];
                                        v110 = v50;
                                        if ([v50 isEqual:v109])
                                        {
                                          v51 = [(WiFiAwareDataSessionStatisticsReport *)self txIOErrorCount];
                                          v107 = [(WiFiAwareDataSessionStatisticsReport *)v145 txIOErrorCount];
                                          v108 = v51;
                                          if ([v51 isEqual:v107])
                                          {
                                            v52 = [(WiFiAwareDataSessionStatisticsReport *)self txMemoryErrorCount];
                                            v105 = [(WiFiAwareDataSessionStatisticsReport *)v145 txMemoryErrorCount];
                                            v106 = v52;
                                            if ([v52 isEqual:v105])
                                            {
                                              v53 = [(WiFiAwareDataSessionStatisticsReport *)self txChipModeErrorCount];
                                              v103 = [(WiFiAwareDataSessionStatisticsReport *)v145 txChipModeErrorCount];
                                              v104 = v53;
                                              if ([v53 isEqual:v103])
                                              {
                                                v54 = [(WiFiAwareDataSessionStatisticsReport *)self txNoRemotePeerCount];
                                                v101 = [(WiFiAwareDataSessionStatisticsReport *)v145 txNoRemotePeerCount];
                                                v102 = v54;
                                                if ([v54 isEqual:v101])
                                                {
                                                  v55 = [(WiFiAwareDataSessionStatisticsReport *)self txInternalErrorCount];
                                                  v99 = [(WiFiAwareDataSessionStatisticsReport *)v145 txInternalErrorCount];
                                                  v100 = v55;
                                                  if ([v55 isEqual:v99])
                                                  {
                                                    v56 = [(WiFiAwareDataSessionStatisticsReport *)self txDroppedCount];
                                                    v97 = [(WiFiAwareDataSessionStatisticsReport *)v145 txDroppedCount];
                                                    v98 = v56;
                                                    if ([v56 isEqual:v97])
                                                    {
                                                      v57 = [(WiFiAwareDataSessionStatisticsReport *)self txFirmwareFreePacketCount];
                                                      v95 = [(WiFiAwareDataSessionStatisticsReport *)v145 txFirmwareFreePacketCount];
                                                      v96 = v57;
                                                      if ([v57 isEqual:v95])
                                                      {
                                                        v58 = [(WiFiAwareDataSessionStatisticsReport *)self txMaxRetriesCount];
                                                        v93 = [(WiFiAwareDataSessionStatisticsReport *)v145 txMaxRetriesCount];
                                                        v94 = v58;
                                                        if ([v58 isEqual:v93])
                                                        {
                                                          v59 = [(WiFiAwareDataSessionStatisticsReport *)self txForceLifetimeExpiredCount];
                                                          v91 = [(WiFiAwareDataSessionStatisticsReport *)v145 txForceLifetimeExpiredCount];
                                                          v92 = v59;
                                                          if ([v59 isEqual:v91])
                                                          {
                                                            v60 = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn5GCount];
                                                            v89 = [(WiFiAwareDataSessionStatisticsReport *)v145 channelSequenceMismatchOn5GCount];
                                                            v90 = v60;
                                                            if ([v60 isEqual:v89])
                                                            {
                                                              v61 = [(WiFiAwareDataSessionStatisticsReport *)self channelSequenceMismatchOn2GCount];
                                                              v87 = [(WiFiAwareDataSessionStatisticsReport *)v145 channelSequenceMismatchOn2GCount];
                                                              v88 = v61;
                                                              if ([v61 isEqual:v87])
                                                              {
                                                                v62 = [(WiFiAwareDataSessionStatisticsReport *)self infraScanCount];
                                                                v85 = [(WiFiAwareDataSessionStatisticsReport *)v145 infraScanCount];
                                                                v86 = v62;
                                                                if ([v62 isEqual:v85])
                                                                {
                                                                  v63 = [(WiFiAwareDataSessionStatisticsReport *)self infraAssocCount];
                                                                  v83 = [(WiFiAwareDataSessionStatisticsReport *)v145 infraAssocCount];
                                                                  v84 = v63;
                                                                  if ([v63 isEqual:v83])
                                                                  {
                                                                    v64 = [(WiFiAwareDataSessionStatisticsReport *)self infraDisassocCount];
                                                                    v81 = [(WiFiAwareDataSessionStatisticsReport *)v145 infraDisassocCount];
                                                                    v82 = v64;
                                                                    if ([v64 isEqual:v81])
                                                                    {
                                                                      v65 = [(WiFiAwareDataSessionStatisticsReport *)self countryCode];
                                                                      v79 = [(WiFiAwareDataSessionStatisticsReport *)v145 countryCode];
                                                                      v80 = v65;
                                                                      if ([v65 isEqual:v79])
                                                                      {
                                                                        v66 = [(WiFiAwareDataSessionStatisticsReport *)self txConsecutiveErrorsHistogram];
                                                                        v77 = [(WiFiAwareDataSessionStatisticsReport *)v145 txConsecutiveErrorsHistogram];
                                                                        v78 = v66;
                                                                        if ([v66 isEqual:v77])
                                                                        {
                                                                          v67 = [(WiFiAwareDataSessionStatisticsReport *)self rxFWDelayHistogram];
                                                                          v75 = [(WiFiAwareDataSessionStatisticsReport *)v145 rxFWDelayHistogram];
                                                                          v76 = v67;
                                                                          if ([v67 isEqual:v75])
                                                                          {
                                                                            v68 = [(WiFiAwareDataSessionStatisticsReport *)self rxIPCDelayHistogram];
                                                                            v73 = [(WiFiAwareDataSessionStatisticsReport *)v145 rxIPCDelayHistogram];
                                                                            v74 = v68;
                                                                            if ([v68 isEqual:v73])
                                                                            {
                                                                              v69 = [(WiFiAwareDataSessionStatisticsReport *)self txPacketExpiryHistogram];
                                                                              v5 = v145;
                                                                              v70 = [(WiFiAwareDataSessionStatisticsReport *)v145 txPacketExpiryHistogram];
                                                                              v72 = v69;
                                                                              v71 = [v69 isEqual:v70];
                                                                              v7 = v70;
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
                                                                                v35 = v4;
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
                                                                                v4 = v35;
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
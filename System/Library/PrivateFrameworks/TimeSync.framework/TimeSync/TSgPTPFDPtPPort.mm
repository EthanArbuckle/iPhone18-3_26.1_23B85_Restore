@interface TSgPTPFDPtPPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSgPTPFDPtPPort)initWithImplDC:(id)c;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation TSgPTPFDPtPPort

- (TSgPTPFDPtPPort)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPFDPtPPort initWithImplDC:];
    statistics = v14;
    v7 = v15;
    goto LABEL_4;
  }

  v13.receiver = self;
  v13.super_class = TSgPTPFDPtPPort;
  v6 = [(TSgPTPNetworkPort *)&v13 initWithImplDC:cCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, c);
    [(_TSF_TSDgPTPFDPtPPort *)v7->_impl addObserver:v7 forKeyPath:@"statistics" options:0 context:v7];
    v8 = [TSgPTPPortStatistics alloc];
    statistics = [(_TSF_TSDgPTPFDPtPPort *)v7->_impl statistics];
    v10 = [(TSgPTPPortStatistics *)v8 initWithDC:statistics];
    statistics = v7->_statistics;
    v7->_statistics = v10;

LABEL_4:
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == self && self->_impl == objectCopy && [pathCopy isEqualToString:@"statistics"])
  {
    v13 = [TSgPTPPortStatistics alloc];
    statistics = [(_TSF_TSDgPTPFDPtPPort *)self->_impl statistics];
    v15 = [(TSgPTPPortStatistics *)v13 initWithDC:statistics];
    [(TSgPTPFDPtPPort *)self setStatistics:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TSgPTPFDPtPPort;
    [(TSgPTPFDPtPPort *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)dealloc
{
  [(_TSF_TSDgPTPFDPtPPort *)self->_impl removeObserver:self forKeyPath:@"statistics" context:self];
  v3.receiver = self;
  v3.super_class = TSgPTPFDPtPPort;
  [(TSgPTPPort *)&v3 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v85.receiver = self;
  v85.super_class = &OBJC_METACLASS___TSgPTPFDPtPPort;
  v8 = objc_msgSendSuper2(&v85, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  v9 = infoCopy;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"ASCapable"];
    if ([v11 BOOLValue])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [v8 appendFormat:@"%@    ASCapable: %@\n", indentCopy, v12];

    v13 = [v10 objectForKeyedSubscript:@"PropagationDelayLimit"];
    [v8 appendFormat:@"%@    Propagation Delay Limit: %u\n", indentCopy, objc_msgSend(v13, "unsignedIntValue")];

    v14 = [v10 objectForKeyedSubscript:@"LinkPropagationDelay"];
    [v8 appendFormat:@"%@    Propagation Delay: %u\n", indentCopy, objc_msgSend(v14, "unsignedIntValue")];

    v15 = [v10 objectForKeyedSubscript:@"MaximumPropagationDelay"];
    [v8 appendFormat:@"%@    Maximum Propagation Delay: %u\n", indentCopy, objc_msgSend(v15, "unsignedIntValue")];

    v16 = [v10 objectForKeyedSubscript:@"MinimumPropagationDelay"];
    [v8 appendFormat:@"%@    Minimum Propagation Delay: %u\n", indentCopy, objc_msgSend(v16, "unsignedIntValue")];

    v17 = [v10 objectForKeyedSubscript:@"MaximumRawDelay"];
    [v8 appendFormat:@"%@    Maximum Raw Delay: %u\n", indentCopy, objc_msgSend(v17, "unsignedIntValue")];

    v18 = [v10 objectForKeyedSubscript:@"MinimumRawDelay"];
    [v8 appendFormat:@"%@    Minimum Raw Delay: %u\n", indentCopy, objc_msgSend(v18, "unsignedIntValue")];

    v19 = [v10 objectForKeyedSubscript:@"RemoteClockIdentity"];
    [v8 appendFormat:@"%@    Remote Clock Identity: 0x%016llx\n", indentCopy, objc_msgSend(v19, "unsignedLongLongValue")];

    v20 = [v10 objectForKeyedSubscript:@"RemotePortNumber"];
    [v8 appendFormat:@"%@    Remote Port Number: %u\n", indentCopy, objc_msgSend(v20, "unsignedIntValue")];

    v21 = [v10 objectForKeyedSubscript:@"RemoteIsSameDevice"];
    if ([v21 BOOLValue])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    [v8 appendFormat:@"%@    Remote Is Same Device: %@\n", indentCopy, v22];

    v23 = [v10 objectForKeyedSubscript:@"MultipleRemotes"];
    if ([v23 BOOLValue])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    [v8 appendFormat:@"%@    Multiple Remotes: %@\n", indentCopy, v24];

    v25 = [v10 objectForKeyedSubscript:@"MeasuringPDelay"];
    if ([v25 BOOLValue])
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    [v8 appendFormat:@"%@    Measuring PDelay: %@\n", indentCopy, v26];

    v27 = [v10 objectForKeyedSubscript:@"LocalAnnounceLogMeanInterval"];
    [v8 appendFormat:@"%@    Local Announce Log Mean Interval: %hhd\n", indentCopy, objc_msgSend(v27, "charValue")];

    v28 = [v10 objectForKeyedSubscript:@"RemoteAnnounceLogMeanInterval"];
    [v8 appendFormat:@"%@    Remote Announce Log Mean Interval: %hhd\n", indentCopy, objc_msgSend(v28, "charValue")];

    v29 = [v10 objectForKeyedSubscript:@"LocalSyncLogMeanInterval"];
    [v8 appendFormat:@"%@    Local Sync Log Mean Interval: %hhd\n", indentCopy, objc_msgSend(v29, "charValue")];

    v30 = [v10 objectForKeyedSubscript:@"RemoteSyncLogMeanInterval"];
    [v8 appendFormat:@"%@    Remote Sync Log Mean Interval: %hhd\n", indentCopy, objc_msgSend(v30, "charValue")];

    v31 = [v10 objectForKeyedSubscript:@"LocalPDelayLogMeanInterval"];
    [v8 appendFormat:@"%@    Local PDelay Log Mean Interval: %hhd\n", indentCopy, objc_msgSend(v31, "charValue")];

    v32 = [v10 objectForKeyedSubscript:@"RemotePDelayLogMeanInterval"];
    [v8 appendFormat:@"%@    Remote PDelay Log Mean Interval: %hhd\n", indentCopy, objc_msgSend(v32, "charValue")];

    v33 = [v10 objectForKeyedSubscript:@"ReceivedPDelayRequestCounter"];
    [v8 appendFormat:@"%@    Received PDelay Request Count:              %u\n", indentCopy, objc_msgSend(v33, "unsignedIntValue")];

    v34 = [v10 objectForKeyedSubscript:@"TransmittedPDelayResponseCounter"];
    [v8 appendFormat:@"%@    Transmitted PDelay Response Count:          %u\n", indentCopy, objc_msgSend(v34, "unsignedIntValue")];

    v35 = [v10 objectForKeyedSubscript:@"TransmittedPDelayResponseFollowUpCounter"];
    [v8 appendFormat:@"%@    Transmitted PDelay Response Followup Count: %u\n", indentCopy, objc_msgSend(v35, "unsignedIntValue")];

    v36 = [v10 objectForKeyedSubscript:@"AttemptedPDelayResponseCounter"];
    [v8 appendFormat:@"%@    Attempted PDelay Response Count:          %u\n", indentCopy, objc_msgSend(v36, "unsignedIntValue")];

    v37 = [v10 objectForKeyedSubscript:@"AttemptedPDelayResponseFollowUpCounter"];
    [v8 appendFormat:@"%@    Attempted PDelay Response Followup Count: %u\n", indentCopy, objc_msgSend(v37, "unsignedIntValue")];

    v38 = [v10 objectForKeyedSubscript:@"TransmittedPDelayRequestCounter"];
    [v8 appendFormat:@"%@    Transmitted PDelay Request Count:        %u\n", indentCopy, objc_msgSend(v38, "unsignedIntValue")];

    v39 = [v10 objectForKeyedSubscript:@"AttemptedPDelayRequestCounter"];
    [v8 appendFormat:@"%@    Attempted PDelay Request Count:        %u\n", indentCopy, objc_msgSend(v39, "unsignedIntValue")];

    v40 = [v10 objectForKeyedSubscript:@"ReceivedPDelayResponseCounter"];
    [v8 appendFormat:@"%@    Received PDelay Response Count:          %u\n", indentCopy, objc_msgSend(v40, "unsignedIntValue")];

    v41 = [v10 objectForKeyedSubscript:@"ReceivedPDelayResponseFollowUpCounter"];
    [v8 appendFormat:@"%@    Received PDelay Response Followup Count: %u\n", indentCopy, objc_msgSend(v41, "unsignedIntValue")];

    v42 = [v10 objectForKeyedSubscript:@"ReceivedSyncCounter"];
    [v8 appendFormat:@"%@    Received Sync Count: %u\n", indentCopy, objc_msgSend(v42, "unsignedIntValue")];

    v43 = [v10 objectForKeyedSubscript:@"ReceivedFollowUpCounter"];
    [v8 appendFormat:@"%@    Received Followup Count: %u\n", indentCopy, objc_msgSend(v43, "unsignedIntValue")];

    v44 = [v10 objectForKeyedSubscript:@"ReceivedAnnounceCounter"];
    [v8 appendFormat:@"%@    Received Announce Count: %u\n", indentCopy, objc_msgSend(v44, "unsignedIntValue")];

    v45 = [v10 objectForKeyedSubscript:@"ReceivedSignalCounter"];
    [v8 appendFormat:@"%@    Received Signal Count: %u\n", indentCopy, objc_msgSend(v45, "unsignedIntValue")];

    v46 = [v10 objectForKeyedSubscript:@"SyncReceiptTimeoutCounter"];
    [v8 appendFormat:@"%@    Sync Receipt Timeout Count: %u\n", indentCopy, objc_msgSend(v46, "unsignedIntValue")];

    v47 = [v10 objectForKeyedSubscript:@"FollowUpReceiptTimeoutCounter"];
    [v8 appendFormat:@"%@    FollowUp Receipt Timeout Count: %u\n", indentCopy, objc_msgSend(v47, "unsignedIntValue")];

    v48 = [v10 objectForKeyedSubscript:@"AnnounceReceiptTimeoutCounter"];
    [v8 appendFormat:@"%@    Announce Receipt Timeout Count: %u\n", indentCopy, objc_msgSend(v48, "unsignedIntValue")];

    v49 = [v10 objectForKeyedSubscript:@"AllowedLostResponsesExceededCounter"];
    [v8 appendFormat:@"%@    Allowed Lost Responses Exceeded Count: %u\n", indentCopy, objc_msgSend(v49, "unsignedIntValue")];

    v50 = [v10 objectForKeyedSubscript:@"TransmittedSyncCounter"];
    [v8 appendFormat:@"%@    Transmitted Sync Count: %u\n", indentCopy, objc_msgSend(v50, "unsignedIntValue")];

    v51 = [v10 objectForKeyedSubscript:@"TransmittedFollowUpCounter"];
    [v8 appendFormat:@"%@    Transmitted Followup Count: %u\n", indentCopy, objc_msgSend(v51, "unsignedIntValue")];

    v52 = [v10 objectForKeyedSubscript:@"TransmittedAnnounceCounter"];
    [v8 appendFormat:@"%@    Transmitted Announce Count: %u\n", indentCopy, objc_msgSend(v52, "unsignedIntValue")];

    v53 = [v10 objectForKeyedSubscript:@"TransmittedSignalCounter"];
    [v8 appendFormat:@"%@    Transmitted Signal Count: %u\n", indentCopy, objc_msgSend(v53, "unsignedIntValue")];

    v54 = [v10 objectForKeyedSubscript:@"AttemptedSyncCounter"];
    [v8 appendFormat:@"%@    Attempted Sync Count: %u\n", indentCopy, objc_msgSend(v54, "unsignedIntValue")];

    v55 = [v10 objectForKeyedSubscript:@"AttemptedFollowUpCounter"];
    [v8 appendFormat:@"%@    Attempted Followup Count: %u\n", indentCopy, objc_msgSend(v55, "unsignedIntValue")];

    v56 = [v10 objectForKeyedSubscript:@"AttemptedAnnounceCounter"];
    [v8 appendFormat:@"%@    Attempted Announce Count: %u\n", indentCopy, objc_msgSend(v56, "unsignedIntValue")];

    v57 = [v10 objectForKeyedSubscript:@"AttemptedSignalCounter"];
    [v8 appendFormat:@"%@    Attempted Signal Count: %u\n", indentCopy, objc_msgSend(v57, "unsignedIntValue")];

    v58 = [v10 objectForKeyedSubscript:@"RawDelayExceededCounter"];
    [v8 appendFormat:@"%@    Raw Delay Exceeded Count: %u\n", indentCopy, objc_msgSend(v58, "unsignedIntValue")];

    v59 = [v10 objectForKeyedSubscript:@"RawDelayMeasurementCounter"];
    [v8 appendFormat:@"%@    Raw Delay Measurement Count: %u\n", indentCopy, objc_msgSend(v59, "unsignedIntValue")];

    v60 = [v10 objectForKeyedSubscript:@"RxPacketDiscardUnimplementedCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Unimplemented Count: %u\n", indentCopy, objc_msgSend(v60, "unsignedIntValue")];

    v61 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidLengthCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Length Count: %u\n", indentCopy, objc_msgSend(v61, "unsignedIntValue")];

    v62 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidCallbackCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Callback Count: %u\n", indentCopy, objc_msgSend(v62, "unsignedIntValue")];

    v63 = [v10 objectForKeyedSubscript:@"RxPacketDiscardOverrideMismatchCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Override Mismatch Count: %u\n", indentCopy, objc_msgSend(v63, "unsignedIntValue")];

    v64 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidEthertypeCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Ethertype Count: %u\n", indentCopy, objc_msgSend(v64, "unsignedIntValue")];

    v65 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidAnnounceCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Announce Count: %u\n", indentCopy, objc_msgSend(v65, "unsignedIntValue")];

    v66 = [v10 objectForKeyedSubscript:@"RxPacketDiscardPortIdMismatchCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard PortIdentity Mismatch Count: %u\n", indentCopy, objc_msgSend(v66, "unsignedIntValue")];

    v67 = [v10 objectForKeyedSubscript:@"RxPacketDiscardNotAsCapableCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Not ASCapable Count: %u\n", indentCopy, objc_msgSend(v67, "unsignedIntValue")];

    v68 = [v10 objectForKeyedSubscript:@"RxPacketDiscardNoDomainCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard No Domain Count: %u\n", indentCopy, objc_msgSend(v68, "unsignedIntValue")];

    v69 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidSignalTLVCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Signal TLV Count: %u\n", indentCopy, objc_msgSend(v69, "unsignedIntValue")];

    v70 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidSignalTargetCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Signal Target Count: %u\n", indentCopy, objc_msgSend(v70, "unsignedIntValue")];

    v71 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidTimestampCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Timestamp Count: %u\n", indentCopy, objc_msgSend(v71, "unsignedIntValue")];

    v72 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidTransportCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid Transport Count: %u\n", indentCopy, objc_msgSend(v72, "unsignedIntValue")];

    v73 = [v10 objectForKeyedSubscript:@"RxPacketDiscardDuplicateCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Duplicate Count: %u\n", indentCopy, objc_msgSend(v73, "unsignedIntValue")];

    v74 = [v10 objectForKeyedSubscript:@"RxPacketDiscardRoleMismatchCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Role Mismatch Count: %u\n", indentCopy, objc_msgSend(v74, "unsignedIntValue")];

    v75 = [v10 objectForKeyedSubscript:@"RxPacketDiscardUnknownTypeCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Unknown Type Count: %u\n", indentCopy, objc_msgSend(v75, "unsignedIntValue")];

    v76 = [v10 objectForKeyedSubscript:@"RxPacketDiscardDomainMismatchCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Domain Mismatch Count: %u\n", indentCopy, objc_msgSend(v76, "unsignedIntValue")];

    v77 = [v10 objectForKeyedSubscript:@"RxPacketDiscardFollowUpMismatchCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard FollowUp Mismatch Count: %u\n", indentCopy, objc_msgSend(v77, "unsignedIntValue")];

    v78 = [v10 objectForKeyedSubscript:@"RxPacketDiscardInvalidFollowUpTLVCounter"];
    [v8 appendFormat:@"%@    Received Packet Discard Invalid FollowUp TLV Count: %u\n", indentCopy, objc_msgSend(v78, "unsignedIntValue")];

    v79 = [v10 objectForKeyedSubscript:@"TxPacketInvalidFutureTimestampCounter"];
    [v8 appendFormat:@"%@    Transmitted Packet Invalid Future Timestamp Count: %u\n", indentCopy, objc_msgSend(v79, "unsignedIntValue")];

    v80 = [v10 objectForKeyedSubscript:@"TxPacketFailedBuildCounter"];
    [v8 appendFormat:@"%@    Transmitted Packet Failed Build Count: %u\n", indentCopy, objc_msgSend(v80, "unsignedIntValue")];

    v81 = [v10 objectForKeyedSubscript:@"TxPacketFailedNetworkSendCounter"];
    [v8 appendFormat:@"%@    Transmitted Packet Failed Network Send Count: %u\n", indentCopy, objc_msgSend(v81, "unsignedIntValue")];

    v82 = [v10 objectForKeyedSubscript:@"TxPacketDiscardInvalidTimestampCounter"];
    [v8 appendFormat:@"%@    Transmitted Packet Discard Invalid Timestamp Count: %u\n", indentCopy, objc_msgSend(v82, "unsignedIntValue")];

    v83 = [v10 objectForKeyedSubscript:@"TxPacketDiscardUnimplementedCounter"];
    [v8 appendFormat:@"%@    Transmitted Packet Discard Unimplemented Count: %u\n", indentCopy, objc_msgSend(v83, "unsignedIntValue")];
  }

  return v8;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

@end
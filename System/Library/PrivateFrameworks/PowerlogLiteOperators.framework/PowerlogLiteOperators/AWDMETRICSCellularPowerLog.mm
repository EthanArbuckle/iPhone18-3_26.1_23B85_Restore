@interface AWDMETRICSCellularPowerLog
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCellularDynamicRatSelection:(id)a3;
- (void)addCellularNrSDMActivation:(id)a3;
- (void)addCellularNrSdmEndcRelease:(id)a3;
- (void)addCellularPerClientProfileTriggerCount:(id)a3;
- (void)addCellularPowerLogAOPUARTStates:(id)a3;
- (void)addCellularPowerLogAPPSCXOShutdown:(id)a3;
- (void)addCellularPowerLogAPPSPerfLevels:(id)a3;
- (void)addCellularPowerLogAPPSSleepVeto:(id)a3;
- (void)addCellularPowerLogCDMA1XRABMode:(id)a3;
- (void)addCellularPowerLogCDMA1XRRCStateChange:(id)a3;
- (void)addCellularPowerLogCDMA1XRxDiversity:(id)a3;
- (void)addCellularPowerLogCDMA1XRxRSSI:(id)a3;
- (void)addCellularPowerLogCDMA1XTxPower:(id)a3;
- (void)addCellularPowerLogEVDORxDiversity:(id)a3;
- (void)addCellularPowerLogEVDORxRSSI:(id)a3;
- (void)addCellularPowerLogEVDOTxPower:(id)a3;
- (void)addCellularPowerLogGPSStates:(id)a3;
- (void)addCellularPowerLogGSMRABMode:(id)a3;
- (void)addCellularPowerLogGSMRRCStateChange:(id)a3;
- (void)addCellularPowerLogGSMRxDiversity:(id)a3;
- (void)addCellularPowerLogGSMRxRSSI:(id)a3;
- (void)addCellularPowerLogGSMTxPower:(id)a3;
- (void)addCellularPowerLogHybridRABMode:(id)a3;
- (void)addCellularPowerLogHybridRRCStateChange:(id)a3;
- (void)addCellularPowerLogL1SleepStates:(id)a3;
- (void)addCellularPowerLogLTEActivatedCASCCStates:(id)a3;
- (void)addCellularPowerLogLTEAggregatedDLTBS:(id)a3;
- (void)addCellularPowerLogLTECDRXConfig:(id)a3;
- (void)addCellularPowerLogLTECarrierComponentInfo:(id)a3;
- (void)addCellularPowerLogLTEConfiguredCASCCStates:(id)a3;
- (void)addCellularPowerLogLTEPagingDRXCycle:(id)a3;
- (void)addCellularPowerLogLTERRCStateChange:(id)a3;
- (void)addCellularPowerLogLTERSRP:(id)a3;
- (void)addCellularPowerLogLTERxDiversity:(id)a3;
- (void)addCellularPowerLogLTERxTxActivityStates:(id)a3;
- (void)addCellularPowerLogLTESINR:(id)a3;
- (void)addCellularPowerLogLTETxPower:(id)a3;
- (void)addCellularPowerLogLTEULCAState:(id)a3;
- (void)addCellularPowerLogMCPMSleepVeto:(id)a3;
- (void)addCellularPowerLogMPSSPerfLevels:(id)a3;
- (void)addCellularPowerLogNRCDRXConfig:(id)a3;
- (void)addCellularPowerLogNRDCEvent:(id)a3;
- (void)addCellularPowerLogNRFRCoverage:(id)a3;
- (void)addCellularPowerLogNRMmWaveRSRP:(id)a3;
- (void)addCellularPowerLogNRMmWaveTxPower:(id)a3;
- (void)addCellularPowerLogNRMmWaveULCAState:(id)a3;
- (void)addCellularPowerLogNRNSAENDCEvent:(id)a3;
- (void)addCellularPowerLogNRPagingDRXCycle:(id)a3;
- (void)addCellularPowerLogNRSARRCStateChange:(id)a3;
- (void)addCellularPowerLogNRSCGRel:(id)a3;
- (void)addCellularPowerLogNRmmWaveAntennaPanel:(id)a3;
- (void)addCellularPowerLogNRmmWaveBWP:(id)a3;
- (void)addCellularPowerLogNRmmWaveBWPSCC:(id)a3;
- (void)addCellularPowerLogNRmmWaveBeamID:(id)a3;
- (void)addCellularPowerLogNRmmWaveCASCCActivated:(id)a3;
- (void)addCellularPowerLogNRmmWaveCASCCConfigured:(id)a3;
- (void)addCellularPowerLogNRmmWaveCarrierComponentInfo:(id)a3;
- (void)addCellularPowerLogNRmmWaveDLTBS:(id)a3;
- (void)addCellularPowerLogNRmmWaveRxTx:(id)a3;
- (void)addCellularPowerLogNRsub6BWP:(id)a3;
- (void)addCellularPowerLogNRsub6BWPSA:(id)a3;
- (void)addCellularPowerLogNRsub6BWPSCC:(id)a3;
- (void)addCellularPowerLogNRsub6CASCCActivated:(id)a3;
- (void)addCellularPowerLogNRsub6CASCCConfigured:(id)a3;
- (void)addCellularPowerLogNRsub6CarrierComponentInfo:(id)a3;
- (void)addCellularPowerLogNRsub6DLTBS:(id)a3;
- (void)addCellularPowerLogNRsub6RSRP:(id)a3;
- (void)addCellularPowerLogNRsub6RxDiversity:(id)a3;
- (void)addCellularPowerLogNRsub6RxTx:(id)a3;
- (void)addCellularPowerLogNRsub6TxPower:(id)a3;
- (void)addCellularPowerLogNRsub6ULCAState:(id)a3;
- (void)addCellularPowerLogPCIeStates:(id)a3;
- (void)addCellularPowerLogPLMNScanEvent:(id)a3;
- (void)addCellularPowerLogPLMNSearch:(id)a3;
- (void)addCellularPowerLogPLMNSearchEvent:(id)a3;
- (void)addCellularPowerLogPowerEstimator:(id)a3;
- (void)addCellularPowerLogProtocolState:(id)a3;
- (void)addCellularPowerLogRATRedirectionEvent:(id)a3;
- (void)addCellularPowerLogRATReselectionEvent:(id)a3;
- (void)addCellularPowerLogRFTunerStatsHist:(id)a3;
- (void)addCellularPowerLogSFTRxTx:(id)a3;
- (void)addCellularPowerLogSFTState:(id)a3;
- (void)addCellularPowerLogSPMI:(id)a3;
- (void)addCellularPowerLogServiceStateEvent:(id)a3;
- (void)addCellularPowerLogSystemEvent:(id)a3;
- (void)addCellularPowerLogWCDMACDRXConfig:(id)a3;
- (void)addCellularPowerLogWCDMARABMode:(id)a3;
- (void)addCellularPowerLogWCDMARABType:(id)a3;
- (void)addCellularPowerLogWCDMARRCStateChange:(id)a3;
- (void)addCellularPowerLogWCDMARxDiversity:(id)a3;
- (void)addCellularPowerLogWCDMARxRSSI:(id)a3;
- (void)addCellularPowerLogWCDMATxPower:(id)a3;
- (void)addCellularPowerLogWLANUARTStates:(id)a3;
- (void)addCellularPowerLogWUS:(id)a3;
- (void)addCellularPowerLogXOShutdown:(id)a3;
- (void)addCellularRfTunerHist:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLog

- (id)dictionaryRepresentation
{
  v1159 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_cellularPerClientProfileTriggerCounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPerClientProfileTriggerCounts, "count")}];
    v1059 = 0u;
    v1060 = 0u;
    v1061 = 0u;
    v1062 = 0u;
    v5 = self->_cellularPerClientProfileTriggerCounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v1059 objects:v1158 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v1060;
      do
      {
        v9 = 0;
        do
        {
          if (*v1060 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v1059 + 1) + 8 * v9) dictionaryRepresentation];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v1059 objects:v1158 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"cellularPerClientProfileTriggerCount"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogXOShutdowns count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogXOShutdowns, "count")}];
    v1055 = 0u;
    v1056 = 0u;
    v1057 = 0u;
    v1058 = 0u;
    v12 = self->_cellularPowerLogXOShutdowns;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v1055 objects:v1157 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v1056;
      do
      {
        v16 = 0;
        do
        {
          if (*v1056 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v1055 + 1) + 8 * v16) dictionaryRepresentation];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v1055 objects:v1157 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"cellularPowerLogXOShutdown"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAPPSPerfLevels count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAPPSPerfLevels, "count")}];
    v1051 = 0u;
    v1052 = 0u;
    v1053 = 0u;
    v1054 = 0u;
    v19 = self->_cellularPowerLogAPPSPerfLevels;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v1051 objects:v1156 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v1052;
      do
      {
        v23 = 0;
        do
        {
          if (*v1052 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v1051 + 1) + 8 * v23) dictionaryRepresentation];
          [v18 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v1051 objects:v1156 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"cellularPowerLogAPPSPerfLevels"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAPPSCXOShutdowns count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAPPSCXOShutdowns, "count")}];
    v1047 = 0u;
    v1048 = 0u;
    v1049 = 0u;
    v1050 = 0u;
    v26 = self->_cellularPowerLogAPPSCXOShutdowns;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v1047 objects:v1155 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v1048;
      do
      {
        v30 = 0;
        do
        {
          if (*v1048 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v1047 + 1) + 8 * v30) dictionaryRepresentation];
          [v25 addObject:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v1047 objects:v1155 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"cellularPowerLogAPPSCXOShutdown"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAPPSSleepVetos count])
  {
    v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAPPSSleepVetos, "count")}];
    v1043 = 0u;
    v1044 = 0u;
    v1045 = 0u;
    v1046 = 0u;
    v33 = self->_cellularPowerLogAPPSSleepVetos;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v1043 objects:v1154 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v1044;
      do
      {
        v37 = 0;
        do
        {
          if (*v1044 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v1043 + 1) + 8 * v37) dictionaryRepresentation];
          [v32 addObject:v38];

          ++v37;
        }

        while (v35 != v37);
        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v1043 objects:v1154 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKey:@"cellularPowerLogAPPSSleepVeto"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogMCPMSleepVetos count])
  {
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogMCPMSleepVetos, "count")}];
    v1039 = 0u;
    v1040 = 0u;
    v1041 = 0u;
    v1042 = 0u;
    v40 = self->_cellularPowerLogMCPMSleepVetos;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v1039 objects:v1153 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v1040;
      do
      {
        v44 = 0;
        do
        {
          if (*v1040 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v1039 + 1) + 8 * v44) dictionaryRepresentation];
          [v39 addObject:v45];

          ++v44;
        }

        while (v42 != v44);
        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v1039 objects:v1153 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"cellularPowerLogMCPMSleepVeto"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogMPSSPerfLevels count])
  {
    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogMPSSPerfLevels, "count")}];
    v1035 = 0u;
    v1036 = 0u;
    v1037 = 0u;
    v1038 = 0u;
    v47 = self->_cellularPowerLogMPSSPerfLevels;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v1035 objects:v1152 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v1036;
      do
      {
        v51 = 0;
        do
        {
          if (*v1036 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v1035 + 1) + 8 * v51) dictionaryRepresentation];
          [v46 addObject:v52];

          ++v51;
        }

        while (v49 != v51);
        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v1035 objects:v1152 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKey:@"cellularPowerLogMPSSPerfLevels"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGPSStates count])
  {
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGPSStates, "count")}];
    v1031 = 0u;
    v1032 = 0u;
    v1033 = 0u;
    v1034 = 0u;
    v54 = self->_cellularPowerLogGPSStates;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v1031 objects:v1151 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v1032;
      do
      {
        v58 = 0;
        do
        {
          if (*v1032 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v1031 + 1) + 8 * v58) dictionaryRepresentation];
          [v53 addObject:v59];

          ++v58;
        }

        while (v56 != v58);
        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v1031 objects:v1151 count:16];
      }

      while (v56);
    }

    [v3 setObject:v53 forKey:@"cellularPowerLogGPSStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogAOPUARTStates count])
  {
    v60 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogAOPUARTStates, "count")}];
    v1027 = 0u;
    v1028 = 0u;
    v1029 = 0u;
    v1030 = 0u;
    v61 = self->_cellularPowerLogAOPUARTStates;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v1027 objects:v1150 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v1028;
      do
      {
        v65 = 0;
        do
        {
          if (*v1028 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [*(*(&v1027 + 1) + 8 * v65) dictionaryRepresentation];
          [v60 addObject:v66];

          ++v65;
        }

        while (v63 != v65);
        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v1027 objects:v1150 count:16];
      }

      while (v63);
    }

    [v3 setObject:v60 forKey:@"cellularPowerLogAOP_UARTStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWLANUARTStates count])
  {
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWLANUARTStates, "count")}];
    v1023 = 0u;
    v1024 = 0u;
    v1025 = 0u;
    v1026 = 0u;
    v68 = self->_cellularPowerLogWLANUARTStates;
    v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v1023 objects:v1149 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v1024;
      do
      {
        v72 = 0;
        do
        {
          if (*v1024 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = [*(*(&v1023 + 1) + 8 * v72) dictionaryRepresentation];
          [v67 addObject:v73];

          ++v72;
        }

        while (v70 != v72);
        v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v1023 objects:v1149 count:16];
      }

      while (v70);
    }

    [v3 setObject:v67 forKey:@"cellularPowerLogWLAN_UARTStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPCIeStates count])
  {
    v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPCIeStates, "count")}];
    v1019 = 0u;
    v1020 = 0u;
    v1021 = 0u;
    v1022 = 0u;
    v75 = self->_cellularPowerLogPCIeStates;
    v76 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v1019 objects:v1148 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v1020;
      do
      {
        v79 = 0;
        do
        {
          if (*v1020 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = [*(*(&v1019 + 1) + 8 * v79) dictionaryRepresentation];
          [v74 addObject:v80];

          ++v79;
        }

        while (v77 != v79);
        v77 = [(NSMutableArray *)v75 countByEnumeratingWithState:&v1019 objects:v1148 count:16];
      }

      while (v77);
    }

    [v3 setObject:v74 forKey:@"cellularPowerLogPCIeStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogL1SleepStates count])
  {
    v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogL1SleepStates, "count")}];
    v1015 = 0u;
    v1016 = 0u;
    v1017 = 0u;
    v1018 = 0u;
    v82 = self->_cellularPowerLogL1SleepStates;
    v83 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v1015 objects:v1147 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v1016;
      do
      {
        v86 = 0;
        do
        {
          if (*v1016 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = [*(*(&v1015 + 1) + 8 * v86) dictionaryRepresentation];
          [v81 addObject:v87];

          ++v86;
        }

        while (v84 != v86);
        v84 = [(NSMutableArray *)v82 countByEnumeratingWithState:&v1015 objects:v1147 count:16];
      }

      while (v84);
    }

    [v3 setObject:v81 forKey:@"cellularPowerLogL1SleepStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPowerEstimators count])
  {
    v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPowerEstimators, "count")}];
    v1011 = 0u;
    v1012 = 0u;
    v1013 = 0u;
    v1014 = 0u;
    v89 = self->_cellularPowerLogPowerEstimators;
    v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v1011 objects:v1146 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v1012;
      do
      {
        v93 = 0;
        do
        {
          if (*v1012 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = [*(*(&v1011 + 1) + 8 * v93) dictionaryRepresentation];
          [v88 addObject:v94];

          ++v93;
        }

        while (v91 != v93);
        v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v1011 objects:v1146 count:16];
      }

      while (v91);
    }

    [v3 setObject:v88 forKey:@"cellularPowerLogPowerEstimator"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogRFTunerStatsHists count])
  {
    v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogRFTunerStatsHists, "count")}];
    v1007 = 0u;
    v1008 = 0u;
    v1009 = 0u;
    v1010 = 0u;
    v96 = self->_cellularPowerLogRFTunerStatsHists;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v1007 objects:v1145 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v1008;
      do
      {
        v100 = 0;
        do
        {
          if (*v1008 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v101 = [*(*(&v1007 + 1) + 8 * v100) dictionaryRepresentation];
          [v95 addObject:v101];

          ++v100;
        }

        while (v98 != v100);
        v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v1007 objects:v1145 count:16];
      }

      while (v98);
    }

    [v3 setObject:v95 forKey:@"cellularPowerLogRFTunerStatsHist"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSPMIs count])
  {
    v102 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSPMIs, "count")}];
    v1003 = 0u;
    v1004 = 0u;
    v1005 = 0u;
    v1006 = 0u;
    v103 = self->_cellularPowerLogSPMIs;
    v104 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v1003 objects:v1144 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v1004;
      do
      {
        v107 = 0;
        do
        {
          if (*v1004 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = [*(*(&v1003 + 1) + 8 * v107) dictionaryRepresentation];
          [v102 addObject:v108];

          ++v107;
        }

        while (v105 != v107);
        v105 = [(NSMutableArray *)v103 countByEnumeratingWithState:&v1003 objects:v1144 count:16];
      }

      while (v105);
    }

    [v3 setObject:v102 forKey:@"cellularPowerLogSPMI"];
  }

  if ([(NSMutableArray *)self->_cellularRfTunerHists count])
  {
    v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularRfTunerHists, "count")}];
    v999 = 0u;
    v1000 = 0u;
    v1001 = 0u;
    v1002 = 0u;
    v110 = self->_cellularRfTunerHists;
    v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v999 objects:v1143 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v1000;
      do
      {
        v114 = 0;
        do
        {
          if (*v1000 != v113)
          {
            objc_enumerationMutation(v110);
          }

          v115 = [*(*(&v999 + 1) + 8 * v114) dictionaryRepresentation];
          [v109 addObject:v115];

          ++v114;
        }

        while (v112 != v114);
        v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v999 objects:v1143 count:16];
      }

      while (v112);
    }

    [v3 setObject:v109 forKey:@"cellularRfTunerHist"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEConfiguredCASCCStates count])
  {
    v116 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEConfiguredCASCCStates, "count")}];
    v995 = 0u;
    v996 = 0u;
    v997 = 0u;
    v998 = 0u;
    v117 = self->_cellularPowerLogLTEConfiguredCASCCStates;
    v118 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v995 objects:v1142 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v996;
      do
      {
        v121 = 0;
        do
        {
          if (*v996 != v120)
          {
            objc_enumerationMutation(v117);
          }

          v122 = [*(*(&v995 + 1) + 8 * v121) dictionaryRepresentation];
          [v116 addObject:v122];

          ++v121;
        }

        while (v119 != v121);
        v119 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v995 objects:v1142 count:16];
      }

      while (v119);
    }

    [v3 setObject:v116 forKey:@"cellularPowerLogLTEConfiguredCA_SCCStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEActivatedCASCCStates count])
  {
    v123 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEActivatedCASCCStates, "count")}];
    v991 = 0u;
    v992 = 0u;
    v993 = 0u;
    v994 = 0u;
    v124 = self->_cellularPowerLogLTEActivatedCASCCStates;
    v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v991 objects:v1141 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v992;
      do
      {
        v128 = 0;
        do
        {
          if (*v992 != v127)
          {
            objc_enumerationMutation(v124);
          }

          v129 = [*(*(&v991 + 1) + 8 * v128) dictionaryRepresentation];
          [v123 addObject:v129];

          ++v128;
        }

        while (v126 != v128);
        v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v991 objects:v1141 count:16];
      }

      while (v126);
    }

    [v3 setObject:v123 forKey:@"cellularPowerLogLTEActivatedCA_SCCStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERxTxActivityStates count])
  {
    v130 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERxTxActivityStates, "count")}];
    v987 = 0u;
    v988 = 0u;
    v989 = 0u;
    v990 = 0u;
    v131 = self->_cellularPowerLogLTERxTxActivityStates;
    v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v987 objects:v1140 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v988;
      do
      {
        v135 = 0;
        do
        {
          if (*v988 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = [*(*(&v987 + 1) + 8 * v135) dictionaryRepresentation];
          [v130 addObject:v136];

          ++v135;
        }

        while (v133 != v135);
        v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v987 objects:v1140 count:16];
      }

      while (v133);
    }

    [v3 setObject:v130 forKey:@"cellularPowerLogLTERxTxActivityStates"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTECarrierComponentInfos count])
  {
    v137 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTECarrierComponentInfos, "count")}];
    v983 = 0u;
    v984 = 0u;
    v985 = 0u;
    v986 = 0u;
    v138 = self->_cellularPowerLogLTECarrierComponentInfos;
    v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v983 objects:v1139 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = *v984;
      do
      {
        v142 = 0;
        do
        {
          if (*v984 != v141)
          {
            objc_enumerationMutation(v138);
          }

          v143 = [*(*(&v983 + 1) + 8 * v142) dictionaryRepresentation];
          [v137 addObject:v143];

          ++v142;
        }

        while (v140 != v142);
        v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v983 objects:v1139 count:16];
      }

      while (v140);
    }

    [v3 setObject:v137 forKey:@"cellularPowerLogLTECarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEAggregatedDLTBSs count])
  {
    v144 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEAggregatedDLTBSs, "count")}];
    v979 = 0u;
    v980 = 0u;
    v981 = 0u;
    v982 = 0u;
    v145 = self->_cellularPowerLogLTEAggregatedDLTBSs;
    v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v979 objects:v1138 count:16];
    if (v146)
    {
      v147 = v146;
      v148 = *v980;
      do
      {
        v149 = 0;
        do
        {
          if (*v980 != v148)
          {
            objc_enumerationMutation(v145);
          }

          v150 = [*(*(&v979 + 1) + 8 * v149) dictionaryRepresentation];
          [v144 addObject:v150];

          ++v149;
        }

        while (v147 != v149);
        v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v979 objects:v1138 count:16];
      }

      while (v147);
    }

    [v3 setObject:v144 forKey:@"cellularPowerLogLTEAggregatedDL_TBS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERSRPs count])
  {
    v151 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERSRPs, "count")}];
    v975 = 0u;
    v976 = 0u;
    v977 = 0u;
    v978 = 0u;
    v152 = self->_cellularPowerLogLTERSRPs;
    v153 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v975 objects:v1137 count:16];
    if (v153)
    {
      v154 = v153;
      v155 = *v976;
      do
      {
        v156 = 0;
        do
        {
          if (*v976 != v155)
          {
            objc_enumerationMutation(v152);
          }

          v157 = [*(*(&v975 + 1) + 8 * v156) dictionaryRepresentation];
          [v151 addObject:v157];

          ++v156;
        }

        while (v154 != v156);
        v154 = [(NSMutableArray *)v152 countByEnumeratingWithState:&v975 objects:v1137 count:16];
      }

      while (v154);
    }

    [v3 setObject:v151 forKey:@"cellularPowerLogLTE_RSRP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTESINRs count])
  {
    v158 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTESINRs, "count")}];
    v971 = 0u;
    v972 = 0u;
    v973 = 0u;
    v974 = 0u;
    v159 = self->_cellularPowerLogLTESINRs;
    v160 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v971 objects:v1136 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v972;
      do
      {
        v163 = 0;
        do
        {
          if (*v972 != v162)
          {
            objc_enumerationMutation(v159);
          }

          v164 = [*(*(&v971 + 1) + 8 * v163) dictionaryRepresentation];
          [v158 addObject:v164];

          ++v163;
        }

        while (v161 != v163);
        v161 = [(NSMutableArray *)v159 countByEnumeratingWithState:&v971 objects:v1136 count:16];
      }

      while (v161);
    }

    [v3 setObject:v158 forKey:@"cellularPowerLogLTE_SINR"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTETxPowers count])
  {
    v165 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTETxPowers, "count")}];
    v967 = 0u;
    v968 = 0u;
    v969 = 0u;
    v970 = 0u;
    v166 = self->_cellularPowerLogLTETxPowers;
    v167 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v967 objects:v1135 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v968;
      do
      {
        v170 = 0;
        do
        {
          if (*v968 != v169)
          {
            objc_enumerationMutation(v166);
          }

          v171 = [*(*(&v967 + 1) + 8 * v170) dictionaryRepresentation];
          [v165 addObject:v171];

          ++v170;
        }

        while (v168 != v170);
        v168 = [(NSMutableArray *)v166 countByEnumeratingWithState:&v967 objects:v1135 count:16];
      }

      while (v168);
    }

    [v3 setObject:v165 forKey:@"cellularPowerLogLTETxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERxDiversitys count])
  {
    v172 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERxDiversitys, "count")}];
    v963 = 0u;
    v964 = 0u;
    v965 = 0u;
    v966 = 0u;
    v173 = self->_cellularPowerLogLTERxDiversitys;
    v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v963 objects:v1134 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v964;
      do
      {
        v177 = 0;
        do
        {
          if (*v964 != v176)
          {
            objc_enumerationMutation(v173);
          }

          v178 = [*(*(&v963 + 1) + 8 * v177) dictionaryRepresentation];
          [v172 addObject:v178];

          ++v177;
        }

        while (v175 != v177);
        v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v963 objects:v1134 count:16];
      }

      while (v175);
    }

    [v3 setObject:v172 forKey:@"cellularPowerLogLTERxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEULCAStates count])
  {
    v179 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEULCAStates, "count")}];
    v959 = 0u;
    v960 = 0u;
    v961 = 0u;
    v962 = 0u;
    v180 = self->_cellularPowerLogLTEULCAStates;
    v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v959 objects:v1133 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = *v960;
      do
      {
        v184 = 0;
        do
        {
          if (*v960 != v183)
          {
            objc_enumerationMutation(v180);
          }

          v185 = [*(*(&v959 + 1) + 8 * v184) dictionaryRepresentation];
          [v179 addObject:v185];

          ++v184;
        }

        while (v182 != v184);
        v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v959 objects:v1133 count:16];
      }

      while (v182);
    }

    [v3 setObject:v179 forKey:@"cellularPowerLogLTE_UL_CAState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogProtocolStates count])
  {
    v186 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogProtocolStates, "count")}];
    v955 = 0u;
    v956 = 0u;
    v957 = 0u;
    v958 = 0u;
    v187 = self->_cellularPowerLogProtocolStates;
    v188 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v955 objects:v1132 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v956;
      do
      {
        v191 = 0;
        do
        {
          if (*v956 != v190)
          {
            objc_enumerationMutation(v187);
          }

          v192 = [*(*(&v955 + 1) + 8 * v191) dictionaryRepresentation];
          [v186 addObject:v192];

          ++v191;
        }

        while (v189 != v191);
        v189 = [(NSMutableArray *)v187 countByEnumeratingWithState:&v955 objects:v1132 count:16];
      }

      while (v189);
    }

    [v3 setObject:v186 forKey:@"cellularPowerLogProtocolState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPLMNSearchs count])
  {
    v193 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPLMNSearchs, "count")}];
    v951 = 0u;
    v952 = 0u;
    v953 = 0u;
    v954 = 0u;
    v194 = self->_cellularPowerLogPLMNSearchs;
    v195 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v951 objects:v1131 count:16];
    if (v195)
    {
      v196 = v195;
      v197 = *v952;
      do
      {
        v198 = 0;
        do
        {
          if (*v952 != v197)
          {
            objc_enumerationMutation(v194);
          }

          v199 = [*(*(&v951 + 1) + 8 * v198) dictionaryRepresentation];
          [v193 addObject:v199];

          ++v198;
        }

        while (v196 != v198);
        v196 = [(NSMutableArray *)v194 countByEnumeratingWithState:&v951 objects:v1131 count:16];
      }

      while (v196);
    }

    [v3 setObject:v193 forKey:@"cellularPowerLogPLMNSearch"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMTxPowers count])
  {
    v200 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMTxPowers, "count")}];
    v947 = 0u;
    v948 = 0u;
    v949 = 0u;
    v950 = 0u;
    v201 = self->_cellularPowerLogGSMTxPowers;
    v202 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v947 objects:v1130 count:16];
    if (v202)
    {
      v203 = v202;
      v204 = *v948;
      do
      {
        v205 = 0;
        do
        {
          if (*v948 != v204)
          {
            objc_enumerationMutation(v201);
          }

          v206 = [*(*(&v947 + 1) + 8 * v205) dictionaryRepresentation];
          [v200 addObject:v206];

          ++v205;
        }

        while (v203 != v205);
        v203 = [(NSMutableArray *)v201 countByEnumeratingWithState:&v947 objects:v1130 count:16];
      }

      while (v203);
    }

    [v3 setObject:v200 forKey:@"cellularPowerLogGSMTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRxRSSIs count])
  {
    v207 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRxRSSIs, "count")}];
    v943 = 0u;
    v944 = 0u;
    v945 = 0u;
    v946 = 0u;
    v208 = self->_cellularPowerLogGSMRxRSSIs;
    v209 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v943 objects:v1129 count:16];
    if (v209)
    {
      v210 = v209;
      v211 = *v944;
      do
      {
        v212 = 0;
        do
        {
          if (*v944 != v211)
          {
            objc_enumerationMutation(v208);
          }

          v213 = [*(*(&v943 + 1) + 8 * v212) dictionaryRepresentation];
          [v207 addObject:v213];

          ++v212;
        }

        while (v210 != v212);
        v210 = [(NSMutableArray *)v208 countByEnumeratingWithState:&v943 objects:v1129 count:16];
      }

      while (v210);
    }

    [v3 setObject:v207 forKey:@"cellularPowerLogGSMRxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRABModes count])
  {
    v214 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRABModes, "count")}];
    v939 = 0u;
    v940 = 0u;
    v941 = 0u;
    v942 = 0u;
    v215 = self->_cellularPowerLogGSMRABModes;
    v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v939 objects:v1128 count:16];
    if (v216)
    {
      v217 = v216;
      v218 = *v940;
      do
      {
        v219 = 0;
        do
        {
          if (*v940 != v218)
          {
            objc_enumerationMutation(v215);
          }

          v220 = [*(*(&v939 + 1) + 8 * v219) dictionaryRepresentation];
          [v214 addObject:v220];

          ++v219;
        }

        while (v217 != v219);
        v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v939 objects:v1128 count:16];
      }

      while (v217);
    }

    [v3 setObject:v214 forKey:@"cellularPowerLogGSM_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRxDiversitys count])
  {
    v221 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRxDiversitys, "count")}];
    v935 = 0u;
    v936 = 0u;
    v937 = 0u;
    v938 = 0u;
    v222 = self->_cellularPowerLogGSMRxDiversitys;
    v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v935 objects:v1127 count:16];
    if (v223)
    {
      v224 = v223;
      v225 = *v936;
      do
      {
        v226 = 0;
        do
        {
          if (*v936 != v225)
          {
            objc_enumerationMutation(v222);
          }

          v227 = [*(*(&v935 + 1) + 8 * v226) dictionaryRepresentation];
          [v221 addObject:v227];

          ++v226;
        }

        while (v224 != v226);
        v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v935 objects:v1127 count:16];
      }

      while (v224);
    }

    [v3 setObject:v221 forKey:@"cellularPowerLogGSMRxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMATxPowers count])
  {
    v228 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMATxPowers, "count")}];
    v931 = 0u;
    v932 = 0u;
    v933 = 0u;
    v934 = 0u;
    v229 = self->_cellularPowerLogWCDMATxPowers;
    v230 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v931 objects:v1126 count:16];
    if (v230)
    {
      v231 = v230;
      v232 = *v932;
      do
      {
        v233 = 0;
        do
        {
          if (*v932 != v232)
          {
            objc_enumerationMutation(v229);
          }

          v234 = [*(*(&v931 + 1) + 8 * v233) dictionaryRepresentation];
          [v228 addObject:v234];

          ++v233;
        }

        while (v231 != v233);
        v231 = [(NSMutableArray *)v229 countByEnumeratingWithState:&v931 objects:v1126 count:16];
      }

      while (v231);
    }

    [v3 setObject:v228 forKey:@"cellularPowerLogWCDMATxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARxRSSIs count])
  {
    v235 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARxRSSIs, "count")}];
    v927 = 0u;
    v928 = 0u;
    v929 = 0u;
    v930 = 0u;
    v236 = self->_cellularPowerLogWCDMARxRSSIs;
    v237 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v927 objects:v1125 count:16];
    if (v237)
    {
      v238 = v237;
      v239 = *v928;
      do
      {
        v240 = 0;
        do
        {
          if (*v928 != v239)
          {
            objc_enumerationMutation(v236);
          }

          v241 = [*(*(&v927 + 1) + 8 * v240) dictionaryRepresentation];
          [v235 addObject:v241];

          ++v240;
        }

        while (v238 != v240);
        v238 = [(NSMutableArray *)v236 countByEnumeratingWithState:&v927 objects:v1125 count:16];
      }

      while (v238);
    }

    [v3 setObject:v235 forKey:@"cellularPowerLogWCDMARxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARxDiversitys count])
  {
    v242 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARxDiversitys, "count")}];
    v923 = 0u;
    v924 = 0u;
    v925 = 0u;
    v926 = 0u;
    v243 = self->_cellularPowerLogWCDMARxDiversitys;
    v244 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v923 objects:v1124 count:16];
    if (v244)
    {
      v245 = v244;
      v246 = *v924;
      do
      {
        v247 = 0;
        do
        {
          if (*v924 != v246)
          {
            objc_enumerationMutation(v243);
          }

          v248 = [*(*(&v923 + 1) + 8 * v247) dictionaryRepresentation];
          [v242 addObject:v248];

          ++v247;
        }

        while (v245 != v247);
        v245 = [(NSMutableArray *)v243 countByEnumeratingWithState:&v923 objects:v1124 count:16];
      }

      while (v245);
    }

    [v3 setObject:v242 forKey:@"cellularPowerLogWCDMARxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARABModes count])
  {
    v249 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARABModes, "count")}];
    v919 = 0u;
    v920 = 0u;
    v921 = 0u;
    v922 = 0u;
    v250 = self->_cellularPowerLogWCDMARABModes;
    v251 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v919 objects:v1123 count:16];
    if (v251)
    {
      v252 = v251;
      v253 = *v920;
      do
      {
        v254 = 0;
        do
        {
          if (*v920 != v253)
          {
            objc_enumerationMutation(v250);
          }

          v255 = [*(*(&v919 + 1) + 8 * v254) dictionaryRepresentation];
          [v249 addObject:v255];

          ++v254;
        }

        while (v252 != v254);
        v252 = [(NSMutableArray *)v250 countByEnumeratingWithState:&v919 objects:v1123 count:16];
      }

      while (v252);
    }

    [v3 setObject:v249 forKey:@"cellularPowerLogWCDMA_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARABTypes count])
  {
    v256 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARABTypes, "count")}];
    v915 = 0u;
    v916 = 0u;
    v917 = 0u;
    v918 = 0u;
    v257 = self->_cellularPowerLogWCDMARABTypes;
    v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v915 objects:v1122 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = *v916;
      do
      {
        v261 = 0;
        do
        {
          if (*v916 != v260)
          {
            objc_enumerationMutation(v257);
          }

          v262 = [*(*(&v915 + 1) + 8 * v261) dictionaryRepresentation];
          [v256 addObject:v262];

          ++v261;
        }

        while (v259 != v261);
        v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v915 objects:v1122 count:16];
      }

      while (v259);
    }

    [v3 setObject:v256 forKey:@"cellularPowerLogWCDMA_RABType"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogEVDOTxPowers count])
  {
    v263 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogEVDOTxPowers, "count")}];
    v911 = 0u;
    v912 = 0u;
    v913 = 0u;
    v914 = 0u;
    v264 = self->_cellularPowerLogEVDOTxPowers;
    v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v911 objects:v1121 count:16];
    if (v265)
    {
      v266 = v265;
      v267 = *v912;
      do
      {
        v268 = 0;
        do
        {
          if (*v912 != v267)
          {
            objc_enumerationMutation(v264);
          }

          v269 = [*(*(&v911 + 1) + 8 * v268) dictionaryRepresentation];
          [v263 addObject:v269];

          ++v268;
        }

        while (v266 != v268);
        v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v911 objects:v1121 count:16];
      }

      while (v266);
    }

    [v3 setObject:v263 forKey:@"cellularPowerLogEVDOTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogEVDORxRSSIs count])
  {
    v270 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogEVDORxRSSIs, "count")}];
    v907 = 0u;
    v908 = 0u;
    v909 = 0u;
    v910 = 0u;
    v271 = self->_cellularPowerLogEVDORxRSSIs;
    v272 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v907 objects:v1120 count:16];
    if (v272)
    {
      v273 = v272;
      v274 = *v908;
      do
      {
        v275 = 0;
        do
        {
          if (*v908 != v274)
          {
            objc_enumerationMutation(v271);
          }

          v276 = [*(*(&v907 + 1) + 8 * v275) dictionaryRepresentation];
          [v270 addObject:v276];

          ++v275;
        }

        while (v273 != v275);
        v273 = [(NSMutableArray *)v271 countByEnumeratingWithState:&v907 objects:v1120 count:16];
      }

      while (v273);
    }

    [v3 setObject:v270 forKey:@"cellularPowerLogEVDORxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogHybridRABModes count])
  {
    v277 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogHybridRABModes, "count")}];
    v903 = 0u;
    v904 = 0u;
    v905 = 0u;
    v906 = 0u;
    v278 = self->_cellularPowerLogHybridRABModes;
    v279 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v903 objects:v1119 count:16];
    if (v279)
    {
      v280 = v279;
      v281 = *v904;
      do
      {
        v282 = 0;
        do
        {
          if (*v904 != v281)
          {
            objc_enumerationMutation(v278);
          }

          v283 = [*(*(&v903 + 1) + 8 * v282) dictionaryRepresentation];
          [v277 addObject:v283];

          ++v282;
        }

        while (v280 != v282);
        v280 = [(NSMutableArray *)v278 countByEnumeratingWithState:&v903 objects:v1119 count:16];
      }

      while (v280);
    }

    [v3 setObject:v277 forKey:@"cellularPowerLogHybrid_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogEVDORxDiversitys count])
  {
    v284 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogEVDORxDiversitys, "count")}];
    v899 = 0u;
    v900 = 0u;
    v901 = 0u;
    v902 = 0u;
    v285 = self->_cellularPowerLogEVDORxDiversitys;
    v286 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v899 objects:v1118 count:16];
    if (v286)
    {
      v287 = v286;
      v288 = *v900;
      do
      {
        v289 = 0;
        do
        {
          if (*v900 != v288)
          {
            objc_enumerationMutation(v285);
          }

          v290 = [*(*(&v899 + 1) + 8 * v289) dictionaryRepresentation];
          [v284 addObject:v290];

          ++v289;
        }

        while (v287 != v289);
        v287 = [(NSMutableArray *)v285 countByEnumeratingWithState:&v899 objects:v1118 count:16];
      }

      while (v287);
    }

    [v3 setObject:v284 forKey:@"cellularPowerLogEVDORxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XTxPowers count])
  {
    v291 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XTxPowers, "count")}];
    v895 = 0u;
    v896 = 0u;
    v897 = 0u;
    v898 = 0u;
    v292 = self->_cellularPowerLogCDMA1XTxPowers;
    v293 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v895 objects:v1117 count:16];
    if (v293)
    {
      v294 = v293;
      v295 = *v896;
      do
      {
        v296 = 0;
        do
        {
          if (*v896 != v295)
          {
            objc_enumerationMutation(v292);
          }

          v297 = [*(*(&v895 + 1) + 8 * v296) dictionaryRepresentation];
          [v291 addObject:v297];

          ++v296;
        }

        while (v294 != v296);
        v294 = [(NSMutableArray *)v292 countByEnumeratingWithState:&v895 objects:v1117 count:16];
      }

      while (v294);
    }

    [v3 setObject:v291 forKey:@"cellularPowerLogCDMA1XTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRxRSSIs count])
  {
    v298 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRxRSSIs, "count")}];
    v891 = 0u;
    v892 = 0u;
    v893 = 0u;
    v894 = 0u;
    v299 = self->_cellularPowerLogCDMA1XRxRSSIs;
    v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v891 objects:v1116 count:16];
    if (v300)
    {
      v301 = v300;
      v302 = *v892;
      do
      {
        v303 = 0;
        do
        {
          if (*v892 != v302)
          {
            objc_enumerationMutation(v299);
          }

          v304 = [*(*(&v891 + 1) + 8 * v303) dictionaryRepresentation];
          [v298 addObject:v304];

          ++v303;
        }

        while (v301 != v303);
        v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v891 objects:v1116 count:16];
      }

      while (v301);
    }

    [v3 setObject:v298 forKey:@"cellularPowerLogCDMA1XRxRSSI"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRABModes count])
  {
    v305 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRABModes, "count")}];
    v887 = 0u;
    v888 = 0u;
    v889 = 0u;
    v890 = 0u;
    v306 = self->_cellularPowerLogCDMA1XRABModes;
    v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v887 objects:v1115 count:16];
    if (v307)
    {
      v308 = v307;
      v309 = *v888;
      do
      {
        v310 = 0;
        do
        {
          if (*v888 != v309)
          {
            objc_enumerationMutation(v306);
          }

          v311 = [*(*(&v887 + 1) + 8 * v310) dictionaryRepresentation];
          [v305 addObject:v311];

          ++v310;
        }

        while (v308 != v310);
        v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v887 objects:v1115 count:16];
      }

      while (v308);
    }

    [v3 setObject:v305 forKey:@"cellularPowerLogCDMA1X_RABMode"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRxDiversitys count])
  {
    v312 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRxDiversitys, "count")}];
    v883 = 0u;
    v884 = 0u;
    v885 = 0u;
    v886 = 0u;
    v313 = self->_cellularPowerLogCDMA1XRxDiversitys;
    v314 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v883 objects:v1114 count:16];
    if (v314)
    {
      v315 = v314;
      v316 = *v884;
      do
      {
        v317 = 0;
        do
        {
          if (*v884 != v316)
          {
            objc_enumerationMutation(v313);
          }

          v318 = [*(*(&v883 + 1) + 8 * v317) dictionaryRepresentation];
          [v312 addObject:v318];

          ++v317;
        }

        while (v315 != v317);
        v315 = [(NSMutableArray *)v313 countByEnumeratingWithState:&v883 objects:v1114 count:16];
      }

      while (v315);
    }

    [v3 setObject:v312 forKey:@"cellularPowerLogCDMA1XRxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTEPagingDRXCycles count])
  {
    v319 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTEPagingDRXCycles, "count")}];
    v879 = 0u;
    v880 = 0u;
    v881 = 0u;
    v882 = 0u;
    v320 = self->_cellularPowerLogLTEPagingDRXCycles;
    v321 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v879 objects:v1113 count:16];
    if (v321)
    {
      v322 = v321;
      v323 = *v880;
      do
      {
        v324 = 0;
        do
        {
          if (*v880 != v323)
          {
            objc_enumerationMutation(v320);
          }

          v325 = [*(*(&v879 + 1) + 8 * v324) dictionaryRepresentation];
          [v319 addObject:v325];

          ++v324;
        }

        while (v322 != v324);
        v322 = [(NSMutableArray *)v320 countByEnumeratingWithState:&v879 objects:v1113 count:16];
      }

      while (v322);
    }

    [v3 setObject:v319 forKey:@"cellularPowerLogLTEPagingDRXCycle"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRPagingDRXCycles count])
  {
    v326 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRPagingDRXCycles, "count")}];
    v875 = 0u;
    v876 = 0u;
    v877 = 0u;
    v878 = 0u;
    v327 = self->_cellularPowerLogNRPagingDRXCycles;
    v328 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v875 objects:v1112 count:16];
    if (v328)
    {
      v329 = v328;
      v330 = *v876;
      do
      {
        v331 = 0;
        do
        {
          if (*v876 != v330)
          {
            objc_enumerationMutation(v327);
          }

          v332 = [*(*(&v875 + 1) + 8 * v331) dictionaryRepresentation];
          [v326 addObject:v332];

          ++v331;
        }

        while (v329 != v331);
        v329 = [(NSMutableArray *)v327 countByEnumeratingWithState:&v875 objects:v1112 count:16];
      }

      while (v329);
    }

    [v3 setObject:v326 forKey:@"cellularPowerLogNRPagingDRXCycle"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRSCGRels count])
  {
    v333 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRSCGRels, "count")}];
    v871 = 0u;
    v872 = 0u;
    v873 = 0u;
    v874 = 0u;
    v334 = self->_cellularPowerLogNRSCGRels;
    v335 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v871 objects:v1111 count:16];
    if (v335)
    {
      v336 = v335;
      v337 = *v872;
      do
      {
        v338 = 0;
        do
        {
          if (*v872 != v337)
          {
            objc_enumerationMutation(v334);
          }

          v339 = [*(*(&v871 + 1) + 8 * v338) dictionaryRepresentation];
          [v333 addObject:v339];

          ++v338;
        }

        while (v336 != v338);
        v336 = [(NSMutableArray *)v334 countByEnumeratingWithState:&v871 objects:v1111 count:16];
      }

      while (v336);
    }

    [v3 setObject:v333 forKey:@"cellularPowerLogNR_SCGRel"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMACDRXConfigs count])
  {
    v340 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMACDRXConfigs, "count")}];
    v867 = 0u;
    v868 = 0u;
    v869 = 0u;
    v870 = 0u;
    v341 = self->_cellularPowerLogWCDMACDRXConfigs;
    v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v867 objects:v1110 count:16];
    if (v342)
    {
      v343 = v342;
      v344 = *v868;
      do
      {
        v345 = 0;
        do
        {
          if (*v868 != v344)
          {
            objc_enumerationMutation(v341);
          }

          v346 = [*(*(&v867 + 1) + 8 * v345) dictionaryRepresentation];
          [v340 addObject:v346];

          ++v345;
        }

        while (v343 != v345);
        v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v867 objects:v1110 count:16];
      }

      while (v343);
    }

    [v3 setObject:v340 forKey:@"cellularPowerLogWCDMA_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTECDRXConfigs count])
  {
    v347 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTECDRXConfigs, "count")}];
    v863 = 0u;
    v864 = 0u;
    v865 = 0u;
    v866 = 0u;
    v348 = self->_cellularPowerLogLTECDRXConfigs;
    v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v863 objects:v1109 count:16];
    if (v349)
    {
      v350 = v349;
      v351 = *v864;
      do
      {
        v352 = 0;
        do
        {
          if (*v864 != v351)
          {
            objc_enumerationMutation(v348);
          }

          v353 = [*(*(&v863 + 1) + 8 * v352) dictionaryRepresentation];
          [v347 addObject:v353];

          ++v352;
        }

        while (v350 != v352);
        v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v863 objects:v1109 count:16];
      }

      while (v350);
    }

    [v3 setObject:v347 forKey:@"cellularPowerLogLTE_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWCDMARRCStateChanges count])
  {
    v354 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWCDMARRCStateChanges, "count")}];
    v859 = 0u;
    v860 = 0u;
    v861 = 0u;
    v862 = 0u;
    v355 = self->_cellularPowerLogWCDMARRCStateChanges;
    v356 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v859 objects:v1108 count:16];
    if (v356)
    {
      v357 = v356;
      v358 = *v860;
      do
      {
        v359 = 0;
        do
        {
          if (*v860 != v358)
          {
            objc_enumerationMutation(v355);
          }

          v360 = [*(*(&v859 + 1) + 8 * v359) dictionaryRepresentation];
          [v354 addObject:v360];

          ++v359;
        }

        while (v357 != v359);
        v357 = [(NSMutableArray *)v355 countByEnumeratingWithState:&v859 objects:v1108 count:16];
      }

      while (v357);
    }

    [v3 setObject:v354 forKey:@"cellularPowerLogWCDMA_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogLTERRCStateChanges count])
  {
    v361 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogLTERRCStateChanges, "count")}];
    v855 = 0u;
    v856 = 0u;
    v857 = 0u;
    v858 = 0u;
    v362 = self->_cellularPowerLogLTERRCStateChanges;
    v363 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v855 objects:v1107 count:16];
    if (v363)
    {
      v364 = v363;
      v365 = *v856;
      do
      {
        v366 = 0;
        do
        {
          if (*v856 != v365)
          {
            objc_enumerationMutation(v362);
          }

          v367 = [*(*(&v855 + 1) + 8 * v366) dictionaryRepresentation];
          [v361 addObject:v367];

          ++v366;
        }

        while (v364 != v366);
        v364 = [(NSMutableArray *)v362 countByEnumeratingWithState:&v855 objects:v1107 count:16];
      }

      while (v364);
    }

    [v3 setObject:v361 forKey:@"cellularPowerLogLTE_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSystemEvents count])
  {
    v368 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSystemEvents, "count")}];
    v851 = 0u;
    v852 = 0u;
    v853 = 0u;
    v854 = 0u;
    v369 = self->_cellularPowerLogSystemEvents;
    v370 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v851 objects:v1106 count:16];
    if (v370)
    {
      v371 = v370;
      v372 = *v852;
      do
      {
        v373 = 0;
        do
        {
          if (*v852 != v372)
          {
            objc_enumerationMutation(v369);
          }

          v374 = [*(*(&v851 + 1) + 8 * v373) dictionaryRepresentation];
          [v368 addObject:v374];

          ++v373;
        }

        while (v371 != v373);
        v371 = [(NSMutableArray *)v369 countByEnumeratingWithState:&v851 objects:v1106 count:16];
      }

      while (v371);
    }

    [v3 setObject:v368 forKey:@"cellularPowerLogSystemEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogRATReselectionEvents count])
  {
    v375 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogRATReselectionEvents, "count")}];
    v847 = 0u;
    v848 = 0u;
    v849 = 0u;
    v850 = 0u;
    v376 = self->_cellularPowerLogRATReselectionEvents;
    v377 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v847 objects:v1105 count:16];
    if (v377)
    {
      v378 = v377;
      v379 = *v848;
      do
      {
        v380 = 0;
        do
        {
          if (*v848 != v379)
          {
            objc_enumerationMutation(v376);
          }

          v381 = [*(*(&v847 + 1) + 8 * v380) dictionaryRepresentation];
          [v375 addObject:v381];

          ++v380;
        }

        while (v378 != v380);
        v378 = [(NSMutableArray *)v376 countByEnumeratingWithState:&v847 objects:v1105 count:16];
      }

      while (v378);
    }

    [v3 setObject:v375 forKey:@"cellularPowerLogRATReselectionEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogRATRedirectionEvents count])
  {
    v382 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogRATRedirectionEvents, "count")}];
    v843 = 0u;
    v844 = 0u;
    v845 = 0u;
    v846 = 0u;
    v383 = self->_cellularPowerLogRATRedirectionEvents;
    v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v843 objects:v1104 count:16];
    if (v384)
    {
      v385 = v384;
      v386 = *v844;
      do
      {
        v387 = 0;
        do
        {
          if (*v844 != v386)
          {
            objc_enumerationMutation(v383);
          }

          v388 = [*(*(&v843 + 1) + 8 * v387) dictionaryRepresentation];
          [v382 addObject:v388];

          ++v387;
        }

        while (v385 != v387);
        v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v843 objects:v1104 count:16];
      }

      while (v385);
    }

    [v3 setObject:v382 forKey:@"cellularPowerLogRATRedirectionEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogGSMRRCStateChanges count])
  {
    v389 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogGSMRRCStateChanges, "count")}];
    v839 = 0u;
    v840 = 0u;
    v841 = 0u;
    v842 = 0u;
    v390 = self->_cellularPowerLogGSMRRCStateChanges;
    v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v839 objects:v1103 count:16];
    if (v391)
    {
      v392 = v391;
      v393 = *v840;
      do
      {
        v394 = 0;
        do
        {
          if (*v840 != v393)
          {
            objc_enumerationMutation(v390);
          }

          v395 = [*(*(&v839 + 1) + 8 * v394) dictionaryRepresentation];
          [v389 addObject:v395];

          ++v394;
        }

        while (v392 != v394);
        v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v839 objects:v1103 count:16];
      }

      while (v392);
    }

    [v3 setObject:v389 forKey:@"cellularPowerLogGSM_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogCDMA1XRRCStateChanges count])
  {
    v396 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogCDMA1XRRCStateChanges, "count")}];
    v835 = 0u;
    v836 = 0u;
    v837 = 0u;
    v838 = 0u;
    v397 = self->_cellularPowerLogCDMA1XRRCStateChanges;
    v398 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v835 objects:v1102 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v836;
      do
      {
        v401 = 0;
        do
        {
          if (*v836 != v400)
          {
            objc_enumerationMutation(v397);
          }

          v402 = [*(*(&v835 + 1) + 8 * v401) dictionaryRepresentation];
          [v396 addObject:v402];

          ++v401;
        }

        while (v399 != v401);
        v399 = [(NSMutableArray *)v397 countByEnumeratingWithState:&v835 objects:v1102 count:16];
      }

      while (v399);
    }

    [v3 setObject:v396 forKey:@"cellularPowerLogCDMA1XRRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogHybridRRCStateChanges count])
  {
    v403 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogHybridRRCStateChanges, "count")}];
    v831 = 0u;
    v832 = 0u;
    v833 = 0u;
    v834 = 0u;
    v404 = self->_cellularPowerLogHybridRRCStateChanges;
    v405 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v831 objects:v1101 count:16];
    if (v405)
    {
      v406 = v405;
      v407 = *v832;
      do
      {
        v408 = 0;
        do
        {
          if (*v832 != v407)
          {
            objc_enumerationMutation(v404);
          }

          v409 = [*(*(&v831 + 1) + 8 * v408) dictionaryRepresentation];
          [v403 addObject:v409];

          ++v408;
        }

        while (v406 != v408);
        v406 = [(NSMutableArray *)v404 countByEnumeratingWithState:&v831 objects:v1101 count:16];
      }

      while (v406);
    }

    [v3 setObject:v403 forKey:@"cellularPowerLogHybridRRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogServiceStateEvents count])
  {
    v410 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogServiceStateEvents, "count")}];
    v827 = 0u;
    v828 = 0u;
    v829 = 0u;
    v830 = 0u;
    v411 = self->_cellularPowerLogServiceStateEvents;
    v412 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v827 objects:v1100 count:16];
    if (v412)
    {
      v413 = v412;
      v414 = *v828;
      do
      {
        v415 = 0;
        do
        {
          if (*v828 != v414)
          {
            objc_enumerationMutation(v411);
          }

          v416 = [*(*(&v827 + 1) + 8 * v415) dictionaryRepresentation];
          [v410 addObject:v416];

          ++v415;
        }

        while (v413 != v415);
        v413 = [(NSMutableArray *)v411 countByEnumeratingWithState:&v827 objects:v1100 count:16];
      }

      while (v413);
    }

    [v3 setObject:v410 forKey:@"cellularPowerLogServiceStateEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPLMNScanEvents count])
  {
    v417 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPLMNScanEvents, "count")}];
    v823 = 0u;
    v824 = 0u;
    v825 = 0u;
    v826 = 0u;
    v418 = self->_cellularPowerLogPLMNScanEvents;
    v419 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v823 objects:v1099 count:16];
    if (v419)
    {
      v420 = v419;
      v421 = *v824;
      do
      {
        v422 = 0;
        do
        {
          if (*v824 != v421)
          {
            objc_enumerationMutation(v418);
          }

          v423 = [*(*(&v823 + 1) + 8 * v422) dictionaryRepresentation];
          [v417 addObject:v423];

          ++v422;
        }

        while (v420 != v422);
        v420 = [(NSMutableArray *)v418 countByEnumeratingWithState:&v823 objects:v1099 count:16];
      }

      while (v420);
    }

    [v3 setObject:v417 forKey:@"cellularPowerLogPLMNScanEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogPLMNSearchEvents count])
  {
    v424 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogPLMNSearchEvents, "count")}];
    v819 = 0u;
    v820 = 0u;
    v821 = 0u;
    v822 = 0u;
    v425 = self->_cellularPowerLogPLMNSearchEvents;
    v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v819 objects:v1098 count:16];
    if (v426)
    {
      v427 = v426;
      v428 = *v820;
      do
      {
        v429 = 0;
        do
        {
          if (*v820 != v428)
          {
            objc_enumerationMutation(v425);
          }

          v430 = [*(*(&v819 + 1) + 8 * v429) dictionaryRepresentation];
          [v424 addObject:v430];

          ++v429;
        }

        while (v427 != v429);
        v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v819 objects:v1098 count:16];
      }

      while (v427);
    }

    [v3 setObject:v424 forKey:@"cellularPowerLogPLMNSearchEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRSARRCStateChanges count])
  {
    v431 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRSARRCStateChanges, "count")}];
    v815 = 0u;
    v816 = 0u;
    v817 = 0u;
    v818 = 0u;
    v432 = self->_cellularPowerLogNRSARRCStateChanges;
    v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v815 objects:v1097 count:16];
    if (v433)
    {
      v434 = v433;
      v435 = *v816;
      do
      {
        v436 = 0;
        do
        {
          if (*v816 != v435)
          {
            objc_enumerationMutation(v432);
          }

          v437 = [*(*(&v815 + 1) + 8 * v436) dictionaryRepresentation];
          [v431 addObject:v437];

          ++v436;
        }

        while (v434 != v436);
        v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v815 objects:v1097 count:16];
      }

      while (v434);
    }

    [v3 setObject:v431 forKey:@"cellularPowerLogNR_SA_RRCStateChange"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRNSAENDCEvents count])
  {
    v438 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRNSAENDCEvents, "count")}];
    v811 = 0u;
    v812 = 0u;
    v813 = 0u;
    v814 = 0u;
    v439 = self->_cellularPowerLogNRNSAENDCEvents;
    v440 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v811 objects:v1096 count:16];
    if (v440)
    {
      v441 = v440;
      v442 = *v812;
      do
      {
        v443 = 0;
        do
        {
          if (*v812 != v442)
          {
            objc_enumerationMutation(v439);
          }

          v444 = [*(*(&v811 + 1) + 8 * v443) dictionaryRepresentation];
          [v438 addObject:v444];

          ++v443;
        }

        while (v441 != v443);
        v441 = [(NSMutableArray *)v439 countByEnumeratingWithState:&v811 objects:v1096 count:16];
      }

      while (v441);
    }

    [v3 setObject:v438 forKey:@"cellularPowerLogNR_NSA_ENDCEvent"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRCDRXConfigs count])
  {
    v445 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRCDRXConfigs, "count")}];
    v807 = 0u;
    v808 = 0u;
    v809 = 0u;
    v810 = 0u;
    v446 = self->_cellularPowerLogNRCDRXConfigs;
    v447 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v807 objects:v1095 count:16];
    if (v447)
    {
      v448 = v447;
      v449 = *v808;
      do
      {
        v450 = 0;
        do
        {
          if (*v808 != v449)
          {
            objc_enumerationMutation(v446);
          }

          v451 = [*(*(&v807 + 1) + 8 * v450) dictionaryRepresentation];
          [v445 addObject:v451];

          ++v450;
        }

        while (v448 != v450);
        v448 = [(NSMutableArray *)v446 countByEnumeratingWithState:&v807 objects:v1095 count:16];
      }

      while (v448);
    }

    [v3 setObject:v445 forKey:@"cellularPowerLogNR_CDRXConfig"];
  }

  if ([(NSMutableArray *)self->_cellularNrSDMActivations count])
  {
    v452 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularNrSDMActivations, "count")}];
    v803 = 0u;
    v804 = 0u;
    v805 = 0u;
    v806 = 0u;
    v453 = self->_cellularNrSDMActivations;
    v454 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v803 objects:v1094 count:16];
    if (v454)
    {
      v455 = v454;
      v456 = *v804;
      do
      {
        v457 = 0;
        do
        {
          if (*v804 != v456)
          {
            objc_enumerationMutation(v453);
          }

          v458 = [*(*(&v803 + 1) + 8 * v457) dictionaryRepresentation];
          [v452 addObject:v458];

          ++v457;
        }

        while (v455 != v457);
        v455 = [(NSMutableArray *)v453 countByEnumeratingWithState:&v803 objects:v1094 count:16];
      }

      while (v455);
    }

    [v3 setObject:v452 forKey:@"cellularNrSDMActivation"];
  }

  if ([(NSMutableArray *)self->_cellularNrSdmEndcReleases count])
  {
    v459 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularNrSdmEndcReleases, "count")}];
    v799 = 0u;
    v800 = 0u;
    v801 = 0u;
    v802 = 0u;
    v460 = self->_cellularNrSdmEndcReleases;
    v461 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v799 objects:v1093 count:16];
    if (v461)
    {
      v462 = v461;
      v463 = *v800;
      do
      {
        v464 = 0;
        do
        {
          if (*v800 != v463)
          {
            objc_enumerationMutation(v460);
          }

          v465 = [*(*(&v799 + 1) + 8 * v464) dictionaryRepresentation];
          [v459 addObject:v465];

          ++v464;
        }

        while (v462 != v464);
        v462 = [(NSMutableArray *)v460 countByEnumeratingWithState:&v799 objects:v1093 count:16];
      }

      while (v462);
    }

    [v3 setObject:v459 forKey:@"cellularNrSdmEndcRelease"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRFRCoverages count])
  {
    v466 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRFRCoverages, "count")}];
    v795 = 0u;
    v796 = 0u;
    v797 = 0u;
    v798 = 0u;
    v467 = self->_cellularPowerLogNRFRCoverages;
    v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v795 objects:v1092 count:16];
    if (v468)
    {
      v469 = v468;
      v470 = *v796;
      do
      {
        v471 = 0;
        do
        {
          if (*v796 != v470)
          {
            objc_enumerationMutation(v467);
          }

          v472 = [*(*(&v795 + 1) + 8 * v471) dictionaryRepresentation];
          [v466 addObject:v472];

          ++v471;
        }

        while (v469 != v471);
        v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v795 objects:v1092 count:16];
      }

      while (v469);
    }

    [v3 setObject:v466 forKey:@"cellularPowerLogNR_FRCoverage"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRDCEvents count])
  {
    v473 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRDCEvents, "count")}];
    v791 = 0u;
    v792 = 0u;
    v793 = 0u;
    v794 = 0u;
    v474 = self->_cellularPowerLogNRDCEvents;
    v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v791 objects:v1091 count:16];
    if (v475)
    {
      v476 = v475;
      v477 = *v792;
      do
      {
        v478 = 0;
        do
        {
          if (*v792 != v477)
          {
            objc_enumerationMutation(v474);
          }

          v479 = [*(*(&v791 + 1) + 8 * v478) dictionaryRepresentation];
          [v473 addObject:v479];

          ++v478;
        }

        while (v476 != v478);
        v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v791 objects:v1091 count:16];
      }

      while (v476);
    }

    [v3 setObject:v473 forKey:@"cellularPowerLogNRDCEvent"];
  }

  if ([(NSMutableArray *)self->_cellularDynamicRatSelections count])
  {
    v480 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularDynamicRatSelections, "count")}];
    v787 = 0u;
    v788 = 0u;
    v789 = 0u;
    v790 = 0u;
    v481 = self->_cellularDynamicRatSelections;
    v482 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v787 objects:v1090 count:16];
    if (v482)
    {
      v483 = v482;
      v484 = *v788;
      do
      {
        v485 = 0;
        do
        {
          if (*v788 != v484)
          {
            objc_enumerationMutation(v481);
          }

          v486 = [*(*(&v787 + 1) + 8 * v485) dictionaryRepresentation];
          [v480 addObject:v486];

          ++v485;
        }

        while (v483 != v485);
        v483 = [(NSMutableArray *)v481 countByEnumeratingWithState:&v787 objects:v1090 count:16];
      }

      while (v483);
    }

    [v3 setObject:v480 forKey:@"cellularDynamicRatSelection"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogWUSs count])
  {
    v487 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogWUSs, "count")}];
    v783 = 0u;
    v784 = 0u;
    v785 = 0u;
    v786 = 0u;
    v488 = self->_cellularPowerLogWUSs;
    v489 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v783 objects:v1089 count:16];
    if (v489)
    {
      v490 = v489;
      v491 = *v784;
      do
      {
        v492 = 0;
        do
        {
          if (*v784 != v491)
          {
            objc_enumerationMutation(v488);
          }

          v493 = [*(*(&v783 + 1) + 8 * v492) dictionaryRepresentation];
          [v487 addObject:v493];

          ++v492;
        }

        while (v490 != v492);
        v490 = [(NSMutableArray *)v488 countByEnumeratingWithState:&v783 objects:v1089 count:16];
      }

      while (v490);
    }

    [v3 setObject:v487 forKey:@"cellularPowerLogWUS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6BWPs count])
  {
    v494 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6BWPs, "count")}];
    v779 = 0u;
    v780 = 0u;
    v781 = 0u;
    v782 = 0u;
    v495 = self->_cellularPowerLogNRsub6BWPs;
    v496 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v779 objects:v1088 count:16];
    if (v496)
    {
      v497 = v496;
      v498 = *v780;
      do
      {
        v499 = 0;
        do
        {
          if (*v780 != v498)
          {
            objc_enumerationMutation(v495);
          }

          v500 = [*(*(&v779 + 1) + 8 * v499) dictionaryRepresentation];
          [v494 addObject:v500];

          ++v499;
        }

        while (v497 != v499);
        v497 = [(NSMutableArray *)v495 countByEnumeratingWithState:&v779 objects:v1088 count:16];
      }

      while (v497);
    }

    [v3 setObject:v494 forKey:@"cellularPowerLogNRsub6BWP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCConfigureds count])
  {
    v501 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6CASCCConfigureds, "count")}];
    v775 = 0u;
    v776 = 0u;
    v777 = 0u;
    v778 = 0u;
    v502 = self->_cellularPowerLogNRsub6CASCCConfigureds;
    v503 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v775 objects:v1087 count:16];
    if (v503)
    {
      v504 = v503;
      v505 = *v776;
      do
      {
        v506 = 0;
        do
        {
          if (*v776 != v505)
          {
            objc_enumerationMutation(v502);
          }

          v507 = [*(*(&v775 + 1) + 8 * v506) dictionaryRepresentation];
          [v501 addObject:v507];

          ++v506;
        }

        while (v504 != v506);
        v504 = [(NSMutableArray *)v502 countByEnumeratingWithState:&v775 objects:v1087 count:16];
      }

      while (v504);
    }

    [v3 setObject:v501 forKey:@"cellularPowerLogNRsub6CA_SCCConfigured"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCActivateds count])
  {
    v508 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6CASCCActivateds, "count")}];
    v771 = 0u;
    v772 = 0u;
    v773 = 0u;
    v774 = 0u;
    v509 = self->_cellularPowerLogNRsub6CASCCActivateds;
    v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v771 objects:v1086 count:16];
    if (v510)
    {
      v511 = v510;
      v512 = *v772;
      do
      {
        v513 = 0;
        do
        {
          if (*v772 != v512)
          {
            objc_enumerationMutation(v509);
          }

          v514 = [*(*(&v771 + 1) + 8 * v513) dictionaryRepresentation];
          [v508 addObject:v514];

          ++v513;
        }

        while (v511 != v513);
        v511 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v771 objects:v1086 count:16];
      }

      while (v511);
    }

    [v3 setObject:v508 forKey:@"cellularPowerLogNRsub6CA_SCCActivated"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6RxTxs count])
  {
    v515 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6RxTxs, "count")}];
    v767 = 0u;
    v768 = 0u;
    v769 = 0u;
    v770 = 0u;
    v516 = self->_cellularPowerLogNRsub6RxTxs;
    v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v767 objects:v1085 count:16];
    if (v517)
    {
      v518 = v517;
      v519 = *v768;
      do
      {
        v520 = 0;
        do
        {
          if (*v768 != v519)
          {
            objc_enumerationMutation(v516);
          }

          v521 = [*(*(&v767 + 1) + 8 * v520) dictionaryRepresentation];
          [v515 addObject:v521];

          ++v520;
        }

        while (v518 != v520);
        v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v767 objects:v1085 count:16];
      }

      while (v518);
    }

    [v3 setObject:v515 forKey:@"cellularPowerLogNRsub6RxTx"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6CarrierComponentInfos count])
  {
    v522 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6CarrierComponentInfos, "count")}];
    v763 = 0u;
    v764 = 0u;
    v765 = 0u;
    v766 = 0u;
    v523 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
    v524 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v763 objects:v1084 count:16];
    if (v524)
    {
      v525 = v524;
      v526 = *v764;
      do
      {
        v527 = 0;
        do
        {
          if (*v764 != v526)
          {
            objc_enumerationMutation(v523);
          }

          v528 = [*(*(&v763 + 1) + 8 * v527) dictionaryRepresentation];
          [v522 addObject:v528];

          ++v527;
        }

        while (v525 != v527);
        v525 = [(NSMutableArray *)v523 countByEnumeratingWithState:&v763 objects:v1084 count:16];
      }

      while (v525);
    }

    [v3 setObject:v522 forKey:@"cellularPowerLogNRsub6CarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6DLTBSs count])
  {
    v529 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6DLTBSs, "count")}];
    v759 = 0u;
    v760 = 0u;
    v761 = 0u;
    v762 = 0u;
    v530 = self->_cellularPowerLogNRsub6DLTBSs;
    v531 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v759 objects:v1083 count:16];
    if (v531)
    {
      v532 = v531;
      v533 = *v760;
      do
      {
        v534 = 0;
        do
        {
          if (*v760 != v533)
          {
            objc_enumerationMutation(v530);
          }

          v535 = [*(*(&v759 + 1) + 8 * v534) dictionaryRepresentation];
          [v529 addObject:v535];

          ++v534;
        }

        while (v532 != v534);
        v532 = [(NSMutableArray *)v530 countByEnumeratingWithState:&v759 objects:v1083 count:16];
      }

      while (v532);
    }

    [v3 setObject:v529 forKey:@"cellularPowerLogNRsub6DL_TBS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6RSRPs count])
  {
    v536 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6RSRPs, "count")}];
    v755 = 0u;
    v756 = 0u;
    v757 = 0u;
    v758 = 0u;
    v537 = self->_cellularPowerLogNRsub6RSRPs;
    v538 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v755 objects:v1082 count:16];
    if (v538)
    {
      v539 = v538;
      v540 = *v756;
      do
      {
        v541 = 0;
        do
        {
          if (*v756 != v540)
          {
            objc_enumerationMutation(v537);
          }

          v542 = [*(*(&v755 + 1) + 8 * v541) dictionaryRepresentation];
          [v536 addObject:v542];

          ++v541;
        }

        while (v539 != v541);
        v539 = [(NSMutableArray *)v537 countByEnumeratingWithState:&v755 objects:v1082 count:16];
      }

      while (v539);
    }

    [v3 setObject:v536 forKey:@"cellularPowerLogNRsub6RSRP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6ULCAStates count])
  {
    v543 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6ULCAStates, "count")}];
    v751 = 0u;
    v752 = 0u;
    v753 = 0u;
    v754 = 0u;
    v544 = self->_cellularPowerLogNRsub6ULCAStates;
    v545 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v751 objects:v1081 count:16];
    if (v545)
    {
      v546 = v545;
      v547 = *v752;
      do
      {
        v548 = 0;
        do
        {
          if (*v752 != v547)
          {
            objc_enumerationMutation(v544);
          }

          v549 = [*(*(&v751 + 1) + 8 * v548) dictionaryRepresentation];
          [v543 addObject:v549];

          ++v548;
        }

        while (v546 != v548);
        v546 = [(NSMutableArray *)v544 countByEnumeratingWithState:&v751 objects:v1081 count:16];
      }

      while (v546);
    }

    [v3 setObject:v543 forKey:@"cellularPowerLogNRsub6UL_CAState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6TxPowers count])
  {
    v550 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6TxPowers, "count")}];
    v747 = 0u;
    v748 = 0u;
    v749 = 0u;
    v750 = 0u;
    v551 = self->_cellularPowerLogNRsub6TxPowers;
    v552 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v747 objects:v1080 count:16];
    if (v552)
    {
      v553 = v552;
      v554 = *v748;
      do
      {
        v555 = 0;
        do
        {
          if (*v748 != v554)
          {
            objc_enumerationMutation(v551);
          }

          v556 = [*(*(&v747 + 1) + 8 * v555) dictionaryRepresentation];
          [v550 addObject:v556];

          ++v555;
        }

        while (v553 != v555);
        v553 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v747 objects:v1080 count:16];
      }

      while (v553);
    }

    [v3 setObject:v550 forKey:@"cellularPowerLogNRsub6TxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6RxDiversitys count])
  {
    v557 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6RxDiversitys, "count")}];
    v743 = 0u;
    v744 = 0u;
    v745 = 0u;
    v746 = 0u;
    v558 = self->_cellularPowerLogNRsub6RxDiversitys;
    v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v743 objects:v1079 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v744;
      do
      {
        v562 = 0;
        do
        {
          if (*v744 != v561)
          {
            objc_enumerationMutation(v558);
          }

          v563 = [*(*(&v743 + 1) + 8 * v562) dictionaryRepresentation];
          [v557 addObject:v563];

          ++v562;
        }

        while (v560 != v562);
        v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v743 objects:v1079 count:16];
      }

      while (v560);
    }

    [v3 setObject:v557 forKey:@"cellularPowerLogNRsub6RxDiversity"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSCCs count])
  {
    v564 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6BWPSCCs, "count")}];
    v739 = 0u;
    v740 = 0u;
    v741 = 0u;
    v742 = 0u;
    v565 = self->_cellularPowerLogNRsub6BWPSCCs;
    v566 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v739 objects:v1078 count:16];
    if (v566)
    {
      v567 = v566;
      v568 = *v740;
      do
      {
        v569 = 0;
        do
        {
          if (*v740 != v568)
          {
            objc_enumerationMutation(v565);
          }

          v570 = [*(*(&v739 + 1) + 8 * v569) dictionaryRepresentation];
          [v564 addObject:v570];

          ++v569;
        }

        while (v567 != v569);
        v567 = [(NSMutableArray *)v565 countByEnumeratingWithState:&v739 objects:v1078 count:16];
      }

      while (v567);
    }

    [v3 setObject:v564 forKey:@"cellularPowerLogNRsub6BWP_SCC"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSAs count])
  {
    v571 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRsub6BWPSAs, "count")}];
    v735 = 0u;
    v736 = 0u;
    v737 = 0u;
    v738 = 0u;
    v572 = self->_cellularPowerLogNRsub6BWPSAs;
    v573 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v735 objects:v1077 count:16];
    if (v573)
    {
      v574 = v573;
      v575 = *v736;
      do
      {
        v576 = 0;
        do
        {
          if (*v736 != v575)
          {
            objc_enumerationMutation(v572);
          }

          v577 = [*(*(&v735 + 1) + 8 * v576) dictionaryRepresentation];
          [v571 addObject:v577];

          ++v576;
        }

        while (v574 != v576);
        v574 = [(NSMutableArray *)v572 countByEnumeratingWithState:&v735 objects:v1077 count:16];
      }

      while (v574);
    }

    [v3 setObject:v571 forKey:@"cellularPowerLogNRsub6BWP_SA"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPs count])
  {
    v578 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveBWPs, "count")}];
    v731 = 0u;
    v732 = 0u;
    v733 = 0u;
    v734 = 0u;
    v579 = self->_cellularPowerLogNRmmWaveBWPs;
    v580 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v731 objects:v1076 count:16];
    if (v580)
    {
      v581 = v580;
      v582 = *v732;
      do
      {
        v583 = 0;
        do
        {
          if (*v732 != v582)
          {
            objc_enumerationMutation(v579);
          }

          v584 = [*(*(&v731 + 1) + 8 * v583) dictionaryRepresentation];
          [v578 addObject:v584];

          ++v583;
        }

        while (v581 != v583);
        v581 = [(NSMutableArray *)v579 countByEnumeratingWithState:&v731 objects:v1076 count:16];
      }

      while (v581);
    }

    [v3 setObject:v578 forKey:@"cellularPowerLogNRmmWaveBWP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveAntennaPanels count])
  {
    v585 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveAntennaPanels, "count")}];
    v727 = 0u;
    v728 = 0u;
    v729 = 0u;
    v730 = 0u;
    v586 = self->_cellularPowerLogNRmmWaveAntennaPanels;
    v587 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v727 objects:v1075 count:16];
    if (v587)
    {
      v588 = v587;
      v589 = *v728;
      do
      {
        v590 = 0;
        do
        {
          if (*v728 != v589)
          {
            objc_enumerationMutation(v586);
          }

          v591 = [*(*(&v727 + 1) + 8 * v590) dictionaryRepresentation];
          [v585 addObject:v591];

          ++v590;
        }

        while (v588 != v590);
        v588 = [(NSMutableArray *)v586 countByEnumeratingWithState:&v727 objects:v1075 count:16];
      }

      while (v588);
    }

    [v3 setObject:v585 forKey:@"cellularPowerLogNRmmWaveAntennaPanel"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveBeamIDs count])
  {
    v592 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveBeamIDs, "count")}];
    v723 = 0u;
    v724 = 0u;
    v725 = 0u;
    v726 = 0u;
    v593 = self->_cellularPowerLogNRmmWaveBeamIDs;
    v594 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v723 objects:v1074 count:16];
    if (v594)
    {
      v595 = v594;
      v596 = *v724;
      do
      {
        v597 = 0;
        do
        {
          if (*v724 != v596)
          {
            objc_enumerationMutation(v593);
          }

          v598 = [*(*(&v723 + 1) + 8 * v597) dictionaryRepresentation];
          [v592 addObject:v598];

          ++v597;
        }

        while (v595 != v597);
        v595 = [(NSMutableArray *)v593 countByEnumeratingWithState:&v723 objects:v1074 count:16];
      }

      while (v595);
    }

    [v3 setObject:v592 forKey:@"cellularPowerLogNRmmWaveBeamID"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCConfigureds count])
  {
    v599 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveCASCCConfigureds, "count")}];
    v719 = 0u;
    v720 = 0u;
    v721 = 0u;
    v722 = 0u;
    v600 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
    v601 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v719 objects:v1073 count:16];
    if (v601)
    {
      v602 = v601;
      v603 = *v720;
      do
      {
        v604 = 0;
        do
        {
          if (*v720 != v603)
          {
            objc_enumerationMutation(v600);
          }

          v605 = [*(*(&v719 + 1) + 8 * v604) dictionaryRepresentation];
          [v599 addObject:v605];

          ++v604;
        }

        while (v602 != v604);
        v602 = [(NSMutableArray *)v600 countByEnumeratingWithState:&v719 objects:v1073 count:16];
      }

      while (v602);
    }

    [v3 setObject:v599 forKey:@"cellularPowerLogNRmmWaveCA_SCCConfigured"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCActivateds count])
  {
    v606 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveCASCCActivateds, "count")}];
    v715 = 0u;
    v716 = 0u;
    v717 = 0u;
    v718 = 0u;
    v607 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
    v608 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v715 objects:v1072 count:16];
    if (v608)
    {
      v609 = v608;
      v610 = *v716;
      do
      {
        v611 = 0;
        do
        {
          if (*v716 != v610)
          {
            objc_enumerationMutation(v607);
          }

          v612 = [*(*(&v715 + 1) + 8 * v611) dictionaryRepresentation];
          [v606 addObject:v612];

          ++v611;
        }

        while (v609 != v611);
        v609 = [(NSMutableArray *)v607 countByEnumeratingWithState:&v715 objects:v1072 count:16];
      }

      while (v609);
    }

    [v3 setObject:v606 forKey:@"cellularPowerLogNRmmWaveCA_SCCActivated"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveRxTxs count])
  {
    v613 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveRxTxs, "count")}];
    v711 = 0u;
    v712 = 0u;
    v713 = 0u;
    v714 = 0u;
    v614 = self->_cellularPowerLogNRmmWaveRxTxs;
    v615 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v711 objects:v1071 count:16];
    if (v615)
    {
      v616 = v615;
      v617 = *v712;
      do
      {
        v618 = 0;
        do
        {
          if (*v712 != v617)
          {
            objc_enumerationMutation(v614);
          }

          v619 = [*(*(&v711 + 1) + 8 * v618) dictionaryRepresentation];
          [v613 addObject:v619];

          ++v618;
        }

        while (v616 != v618);
        v616 = [(NSMutableArray *)v614 countByEnumeratingWithState:&v711 objects:v1071 count:16];
      }

      while (v616);
    }

    [v3 setObject:v613 forKey:@"cellularPowerLogNRmmWaveRxTx"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveCarrierComponentInfos count])
  {
    v620 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveCarrierComponentInfos, "count")}];
    v707 = 0u;
    v708 = 0u;
    v709 = 0u;
    v710 = 0u;
    v621 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
    v622 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v707 objects:v1070 count:16];
    if (v622)
    {
      v623 = v622;
      v624 = *v708;
      do
      {
        v625 = 0;
        do
        {
          if (*v708 != v624)
          {
            objc_enumerationMutation(v621);
          }

          v626 = [*(*(&v707 + 1) + 8 * v625) dictionaryRepresentation];
          [v620 addObject:v626];

          ++v625;
        }

        while (v623 != v625);
        v623 = [(NSMutableArray *)v621 countByEnumeratingWithState:&v707 objects:v1070 count:16];
      }

      while (v623);
    }

    [v3 setObject:v620 forKey:@"cellularPowerLogNRmmWaveCarrierComponentInfo"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveDLTBSs count])
  {
    v627 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveDLTBSs, "count")}];
    v703 = 0u;
    v704 = 0u;
    v705 = 0u;
    v706 = 0u;
    v628 = self->_cellularPowerLogNRmmWaveDLTBSs;
    v629 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v703 objects:v1069 count:16];
    if (v629)
    {
      v630 = v629;
      v631 = *v704;
      do
      {
        v632 = 0;
        do
        {
          if (*v704 != v631)
          {
            objc_enumerationMutation(v628);
          }

          v633 = [*(*(&v703 + 1) + 8 * v632) dictionaryRepresentation];
          [v627 addObject:v633];

          ++v632;
        }

        while (v630 != v632);
        v630 = [(NSMutableArray *)v628 countByEnumeratingWithState:&v703 objects:v1069 count:16];
      }

      while (v630);
    }

    [v3 setObject:v627 forKey:@"cellularPowerLogNRmmWaveDL_TBS"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRMmWaveRSRPs count])
  {
    v634 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRMmWaveRSRPs, "count")}];
    v699 = 0u;
    v700 = 0u;
    v701 = 0u;
    v702 = 0u;
    v635 = self->_cellularPowerLogNRMmWaveRSRPs;
    v636 = [(NSMutableArray *)v635 countByEnumeratingWithState:&v699 objects:v1068 count:16];
    if (v636)
    {
      v637 = v636;
      v638 = *v700;
      do
      {
        v639 = 0;
        do
        {
          if (*v700 != v638)
          {
            objc_enumerationMutation(v635);
          }

          v640 = [*(*(&v699 + 1) + 8 * v639) dictionaryRepresentation];
          [v634 addObject:v640];

          ++v639;
        }

        while (v637 != v639);
        v637 = [(NSMutableArray *)v635 countByEnumeratingWithState:&v699 objects:v1068 count:16];
      }

      while (v637);
    }

    [v3 setObject:v634 forKey:@"cellularPowerLogNR_mmWaveRSRP"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRMmWaveTxPowers count])
  {
    v641 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRMmWaveTxPowers, "count")}];
    v695 = 0u;
    v696 = 0u;
    v697 = 0u;
    v698 = 0u;
    v642 = self->_cellularPowerLogNRMmWaveTxPowers;
    v643 = [(NSMutableArray *)v642 countByEnumeratingWithState:&v695 objects:v1067 count:16];
    if (v643)
    {
      v644 = v643;
      v645 = *v696;
      do
      {
        v646 = 0;
        do
        {
          if (*v696 != v645)
          {
            objc_enumerationMutation(v642);
          }

          v647 = [*(*(&v695 + 1) + 8 * v646) dictionaryRepresentation];
          [v641 addObject:v647];

          ++v646;
        }

        while (v644 != v646);
        v644 = [(NSMutableArray *)v642 countByEnumeratingWithState:&v695 objects:v1067 count:16];
      }

      while (v644);
    }

    [v3 setObject:v641 forKey:@"cellularPowerLogNR_mmWaveTxPower"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRMmWaveULCAStates count])
  {
    v648 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRMmWaveULCAStates, "count")}];
    v691 = 0u;
    v692 = 0u;
    v693 = 0u;
    v694 = 0u;
    v649 = self->_cellularPowerLogNRMmWaveULCAStates;
    v650 = [(NSMutableArray *)v649 countByEnumeratingWithState:&v691 objects:v1066 count:16];
    if (v650)
    {
      v651 = v650;
      v652 = *v692;
      do
      {
        v653 = 0;
        do
        {
          if (*v692 != v652)
          {
            objc_enumerationMutation(v649);
          }

          v654 = [*(*(&v691 + 1) + 8 * v653) dictionaryRepresentation];
          [v648 addObject:v654];

          ++v653;
        }

        while (v651 != v653);
        v651 = [(NSMutableArray *)v649 countByEnumeratingWithState:&v691 objects:v1066 count:16];
      }

      while (v651);
    }

    [v3 setObject:v648 forKey:@"cellularPowerLogNR_mmWaveUL_CAState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPSCCs count])
  {
    v655 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogNRmmWaveBWPSCCs, "count")}];
    v687 = 0u;
    v688 = 0u;
    v689 = 0u;
    v690 = 0u;
    v656 = self->_cellularPowerLogNRmmWaveBWPSCCs;
    v657 = [(NSMutableArray *)v656 countByEnumeratingWithState:&v687 objects:v1065 count:16];
    if (v657)
    {
      v658 = v657;
      v659 = *v688;
      do
      {
        v660 = 0;
        do
        {
          if (*v688 != v659)
          {
            objc_enumerationMutation(v656);
          }

          v661 = [*(*(&v687 + 1) + 8 * v660) dictionaryRepresentation];
          [v655 addObject:v661];

          ++v660;
        }

        while (v658 != v660);
        v658 = [(NSMutableArray *)v656 countByEnumeratingWithState:&v687 objects:v1065 count:16];
      }

      while (v658);
    }

    [v3 setObject:v655 forKey:@"cellularPowerLogNRmmWaveBWP_SCC"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSFTStates count])
  {
    v662 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSFTStates, "count")}];
    v683 = 0u;
    v684 = 0u;
    v685 = 0u;
    v686 = 0u;
    v663 = self->_cellularPowerLogSFTStates;
    v664 = [(NSMutableArray *)v663 countByEnumeratingWithState:&v683 objects:v1064 count:16];
    if (v664)
    {
      v665 = v664;
      v666 = *v684;
      do
      {
        v667 = 0;
        do
        {
          if (*v684 != v666)
          {
            objc_enumerationMutation(v663);
          }

          v668 = [*(*(&v683 + 1) + 8 * v667) dictionaryRepresentation];
          [v662 addObject:v668];

          ++v667;
        }

        while (v665 != v667);
        v665 = [(NSMutableArray *)v663 countByEnumeratingWithState:&v683 objects:v1064 count:16];
      }

      while (v665);
    }

    [v3 setObject:v662 forKey:@"cellularPowerLogSFTState"];
  }

  if ([(NSMutableArray *)self->_cellularPowerLogSFTRxTxs count])
  {
    v669 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cellularPowerLogSFTRxTxs, "count")}];
    v679 = 0u;
    v680 = 0u;
    v681 = 0u;
    v682 = 0u;
    v670 = self->_cellularPowerLogSFTRxTxs;
    v671 = [(NSMutableArray *)v670 countByEnumeratingWithState:&v679 objects:v1063 count:16];
    if (v671)
    {
      v672 = v671;
      v673 = *v680;
      do
      {
        v674 = 0;
        do
        {
          if (*v680 != v673)
          {
            objc_enumerationMutation(v670);
          }

          v675 = [*(*(&v679 + 1) + 8 * v674) dictionaryRepresentation];
          [v669 addObject:v675];

          ++v674;
        }

        while (v672 != v674);
        v672 = [(NSMutableArray *)v670 countByEnumeratingWithState:&v679 objects:v1063 count:16];
      }

      while (v672);
    }

    [v3 setObject:v669 forKey:@"cellularPowerLogSFTRxTx"];
  }

  v676 = v3;

  v677 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)addCellularPerClientProfileTriggerCount:(id)a3
{
  v4 = a3;
  cellularPerClientProfileTriggerCounts = self->_cellularPerClientProfileTriggerCounts;
  v8 = v4;
  if (!cellularPerClientProfileTriggerCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPerClientProfileTriggerCounts;
    self->_cellularPerClientProfileTriggerCounts = v6;

    v4 = v8;
    cellularPerClientProfileTriggerCounts = self->_cellularPerClientProfileTriggerCounts;
  }

  [(NSMutableArray *)cellularPerClientProfileTriggerCounts addObject:v4];
}

- (void)addCellularPowerLogXOShutdown:(id)a3
{
  v4 = a3;
  cellularPowerLogXOShutdowns = self->_cellularPowerLogXOShutdowns;
  v8 = v4;
  if (!cellularPowerLogXOShutdowns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogXOShutdowns;
    self->_cellularPowerLogXOShutdowns = v6;

    v4 = v8;
    cellularPowerLogXOShutdowns = self->_cellularPowerLogXOShutdowns;
  }

  [(NSMutableArray *)cellularPowerLogXOShutdowns addObject:v4];
}

- (void)addCellularPowerLogAPPSPerfLevels:(id)a3
{
  v4 = a3;
  cellularPowerLogAPPSPerfLevels = self->_cellularPowerLogAPPSPerfLevels;
  v8 = v4;
  if (!cellularPowerLogAPPSPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAPPSPerfLevels;
    self->_cellularPowerLogAPPSPerfLevels = v6;

    v4 = v8;
    cellularPowerLogAPPSPerfLevels = self->_cellularPowerLogAPPSPerfLevels;
  }

  [(NSMutableArray *)cellularPowerLogAPPSPerfLevels addObject:v4];
}

- (void)addCellularPowerLogAPPSCXOShutdown:(id)a3
{
  v4 = a3;
  cellularPowerLogAPPSCXOShutdowns = self->_cellularPowerLogAPPSCXOShutdowns;
  v8 = v4;
  if (!cellularPowerLogAPPSCXOShutdowns)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAPPSCXOShutdowns;
    self->_cellularPowerLogAPPSCXOShutdowns = v6;

    v4 = v8;
    cellularPowerLogAPPSCXOShutdowns = self->_cellularPowerLogAPPSCXOShutdowns;
  }

  [(NSMutableArray *)cellularPowerLogAPPSCXOShutdowns addObject:v4];
}

- (void)addCellularPowerLogAPPSSleepVeto:(id)a3
{
  v4 = a3;
  cellularPowerLogAPPSSleepVetos = self->_cellularPowerLogAPPSSleepVetos;
  v8 = v4;
  if (!cellularPowerLogAPPSSleepVetos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAPPSSleepVetos;
    self->_cellularPowerLogAPPSSleepVetos = v6;

    v4 = v8;
    cellularPowerLogAPPSSleepVetos = self->_cellularPowerLogAPPSSleepVetos;
  }

  [(NSMutableArray *)cellularPowerLogAPPSSleepVetos addObject:v4];
}

- (void)addCellularPowerLogMCPMSleepVeto:(id)a3
{
  v4 = a3;
  cellularPowerLogMCPMSleepVetos = self->_cellularPowerLogMCPMSleepVetos;
  v8 = v4;
  if (!cellularPowerLogMCPMSleepVetos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogMCPMSleepVetos;
    self->_cellularPowerLogMCPMSleepVetos = v6;

    v4 = v8;
    cellularPowerLogMCPMSleepVetos = self->_cellularPowerLogMCPMSleepVetos;
  }

  [(NSMutableArray *)cellularPowerLogMCPMSleepVetos addObject:v4];
}

- (void)addCellularPowerLogMPSSPerfLevels:(id)a3
{
  v4 = a3;
  cellularPowerLogMPSSPerfLevels = self->_cellularPowerLogMPSSPerfLevels;
  v8 = v4;
  if (!cellularPowerLogMPSSPerfLevels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogMPSSPerfLevels;
    self->_cellularPowerLogMPSSPerfLevels = v6;

    v4 = v8;
    cellularPowerLogMPSSPerfLevels = self->_cellularPowerLogMPSSPerfLevels;
  }

  [(NSMutableArray *)cellularPowerLogMPSSPerfLevels addObject:v4];
}

- (void)addCellularPowerLogGPSStates:(id)a3
{
  v4 = a3;
  cellularPowerLogGPSStates = self->_cellularPowerLogGPSStates;
  v8 = v4;
  if (!cellularPowerLogGPSStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGPSStates;
    self->_cellularPowerLogGPSStates = v6;

    v4 = v8;
    cellularPowerLogGPSStates = self->_cellularPowerLogGPSStates;
  }

  [(NSMutableArray *)cellularPowerLogGPSStates addObject:v4];
}

- (void)addCellularPowerLogAOPUARTStates:(id)a3
{
  v4 = a3;
  cellularPowerLogAOPUARTStates = self->_cellularPowerLogAOPUARTStates;
  v8 = v4;
  if (!cellularPowerLogAOPUARTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogAOPUARTStates;
    self->_cellularPowerLogAOPUARTStates = v6;

    v4 = v8;
    cellularPowerLogAOPUARTStates = self->_cellularPowerLogAOPUARTStates;
  }

  [(NSMutableArray *)cellularPowerLogAOPUARTStates addObject:v4];
}

- (void)addCellularPowerLogWLANUARTStates:(id)a3
{
  v4 = a3;
  cellularPowerLogWLANUARTStates = self->_cellularPowerLogWLANUARTStates;
  v8 = v4;
  if (!cellularPowerLogWLANUARTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWLANUARTStates;
    self->_cellularPowerLogWLANUARTStates = v6;

    v4 = v8;
    cellularPowerLogWLANUARTStates = self->_cellularPowerLogWLANUARTStates;
  }

  [(NSMutableArray *)cellularPowerLogWLANUARTStates addObject:v4];
}

- (void)addCellularPowerLogPCIeStates:(id)a3
{
  v4 = a3;
  cellularPowerLogPCIeStates = self->_cellularPowerLogPCIeStates;
  v8 = v4;
  if (!cellularPowerLogPCIeStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPCIeStates;
    self->_cellularPowerLogPCIeStates = v6;

    v4 = v8;
    cellularPowerLogPCIeStates = self->_cellularPowerLogPCIeStates;
  }

  [(NSMutableArray *)cellularPowerLogPCIeStates addObject:v4];
}

- (void)addCellularPowerLogL1SleepStates:(id)a3
{
  v4 = a3;
  cellularPowerLogL1SleepStates = self->_cellularPowerLogL1SleepStates;
  v8 = v4;
  if (!cellularPowerLogL1SleepStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogL1SleepStates;
    self->_cellularPowerLogL1SleepStates = v6;

    v4 = v8;
    cellularPowerLogL1SleepStates = self->_cellularPowerLogL1SleepStates;
  }

  [(NSMutableArray *)cellularPowerLogL1SleepStates addObject:v4];
}

- (void)addCellularPowerLogPowerEstimator:(id)a3
{
  v4 = a3;
  cellularPowerLogPowerEstimators = self->_cellularPowerLogPowerEstimators;
  v8 = v4;
  if (!cellularPowerLogPowerEstimators)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPowerEstimators;
    self->_cellularPowerLogPowerEstimators = v6;

    v4 = v8;
    cellularPowerLogPowerEstimators = self->_cellularPowerLogPowerEstimators;
  }

  [(NSMutableArray *)cellularPowerLogPowerEstimators addObject:v4];
}

- (void)addCellularPowerLogRFTunerStatsHist:(id)a3
{
  v4 = a3;
  cellularPowerLogRFTunerStatsHists = self->_cellularPowerLogRFTunerStatsHists;
  v8 = v4;
  if (!cellularPowerLogRFTunerStatsHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogRFTunerStatsHists;
    self->_cellularPowerLogRFTunerStatsHists = v6;

    v4 = v8;
    cellularPowerLogRFTunerStatsHists = self->_cellularPowerLogRFTunerStatsHists;
  }

  [(NSMutableArray *)cellularPowerLogRFTunerStatsHists addObject:v4];
}

- (void)addCellularPowerLogSPMI:(id)a3
{
  v4 = a3;
  cellularPowerLogSPMIs = self->_cellularPowerLogSPMIs;
  v8 = v4;
  if (!cellularPowerLogSPMIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSPMIs;
    self->_cellularPowerLogSPMIs = v6;

    v4 = v8;
    cellularPowerLogSPMIs = self->_cellularPowerLogSPMIs;
  }

  [(NSMutableArray *)cellularPowerLogSPMIs addObject:v4];
}

- (void)addCellularRfTunerHist:(id)a3
{
  v4 = a3;
  cellularRfTunerHists = self->_cellularRfTunerHists;
  v8 = v4;
  if (!cellularRfTunerHists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularRfTunerHists;
    self->_cellularRfTunerHists = v6;

    v4 = v8;
    cellularRfTunerHists = self->_cellularRfTunerHists;
  }

  [(NSMutableArray *)cellularRfTunerHists addObject:v4];
}

- (void)addCellularPowerLogLTEConfiguredCASCCStates:(id)a3
{
  v4 = a3;
  cellularPowerLogLTEConfiguredCASCCStates = self->_cellularPowerLogLTEConfiguredCASCCStates;
  v8 = v4;
  if (!cellularPowerLogLTEConfiguredCASCCStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEConfiguredCASCCStates;
    self->_cellularPowerLogLTEConfiguredCASCCStates = v6;

    v4 = v8;
    cellularPowerLogLTEConfiguredCASCCStates = self->_cellularPowerLogLTEConfiguredCASCCStates;
  }

  [(NSMutableArray *)cellularPowerLogLTEConfiguredCASCCStates addObject:v4];
}

- (void)addCellularPowerLogLTEActivatedCASCCStates:(id)a3
{
  v4 = a3;
  cellularPowerLogLTEActivatedCASCCStates = self->_cellularPowerLogLTEActivatedCASCCStates;
  v8 = v4;
  if (!cellularPowerLogLTEActivatedCASCCStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEActivatedCASCCStates;
    self->_cellularPowerLogLTEActivatedCASCCStates = v6;

    v4 = v8;
    cellularPowerLogLTEActivatedCASCCStates = self->_cellularPowerLogLTEActivatedCASCCStates;
  }

  [(NSMutableArray *)cellularPowerLogLTEActivatedCASCCStates addObject:v4];
}

- (void)addCellularPowerLogLTERxTxActivityStates:(id)a3
{
  v4 = a3;
  cellularPowerLogLTERxTxActivityStates = self->_cellularPowerLogLTERxTxActivityStates;
  v8 = v4;
  if (!cellularPowerLogLTERxTxActivityStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERxTxActivityStates;
    self->_cellularPowerLogLTERxTxActivityStates = v6;

    v4 = v8;
    cellularPowerLogLTERxTxActivityStates = self->_cellularPowerLogLTERxTxActivityStates;
  }

  [(NSMutableArray *)cellularPowerLogLTERxTxActivityStates addObject:v4];
}

- (void)addCellularPowerLogLTECarrierComponentInfo:(id)a3
{
  v4 = a3;
  cellularPowerLogLTECarrierComponentInfos = self->_cellularPowerLogLTECarrierComponentInfos;
  v8 = v4;
  if (!cellularPowerLogLTECarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTECarrierComponentInfos;
    self->_cellularPowerLogLTECarrierComponentInfos = v6;

    v4 = v8;
    cellularPowerLogLTECarrierComponentInfos = self->_cellularPowerLogLTECarrierComponentInfos;
  }

  [(NSMutableArray *)cellularPowerLogLTECarrierComponentInfos addObject:v4];
}

- (void)addCellularPowerLogLTEAggregatedDLTBS:(id)a3
{
  v4 = a3;
  cellularPowerLogLTEAggregatedDLTBSs = self->_cellularPowerLogLTEAggregatedDLTBSs;
  v8 = v4;
  if (!cellularPowerLogLTEAggregatedDLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEAggregatedDLTBSs;
    self->_cellularPowerLogLTEAggregatedDLTBSs = v6;

    v4 = v8;
    cellularPowerLogLTEAggregatedDLTBSs = self->_cellularPowerLogLTEAggregatedDLTBSs;
  }

  [(NSMutableArray *)cellularPowerLogLTEAggregatedDLTBSs addObject:v4];
}

- (void)addCellularPowerLogLTERSRP:(id)a3
{
  v4 = a3;
  cellularPowerLogLTERSRPs = self->_cellularPowerLogLTERSRPs;
  v8 = v4;
  if (!cellularPowerLogLTERSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERSRPs;
    self->_cellularPowerLogLTERSRPs = v6;

    v4 = v8;
    cellularPowerLogLTERSRPs = self->_cellularPowerLogLTERSRPs;
  }

  [(NSMutableArray *)cellularPowerLogLTERSRPs addObject:v4];
}

- (void)addCellularPowerLogLTESINR:(id)a3
{
  v4 = a3;
  cellularPowerLogLTESINRs = self->_cellularPowerLogLTESINRs;
  v8 = v4;
  if (!cellularPowerLogLTESINRs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTESINRs;
    self->_cellularPowerLogLTESINRs = v6;

    v4 = v8;
    cellularPowerLogLTESINRs = self->_cellularPowerLogLTESINRs;
  }

  [(NSMutableArray *)cellularPowerLogLTESINRs addObject:v4];
}

- (void)addCellularPowerLogLTETxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogLTETxPowers = self->_cellularPowerLogLTETxPowers;
  v8 = v4;
  if (!cellularPowerLogLTETxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTETxPowers;
    self->_cellularPowerLogLTETxPowers = v6;

    v4 = v8;
    cellularPowerLogLTETxPowers = self->_cellularPowerLogLTETxPowers;
  }

  [(NSMutableArray *)cellularPowerLogLTETxPowers addObject:v4];
}

- (void)addCellularPowerLogLTERxDiversity:(id)a3
{
  v4 = a3;
  cellularPowerLogLTERxDiversitys = self->_cellularPowerLogLTERxDiversitys;
  v8 = v4;
  if (!cellularPowerLogLTERxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERxDiversitys;
    self->_cellularPowerLogLTERxDiversitys = v6;

    v4 = v8;
    cellularPowerLogLTERxDiversitys = self->_cellularPowerLogLTERxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogLTERxDiversitys addObject:v4];
}

- (void)addCellularPowerLogLTEULCAState:(id)a3
{
  v4 = a3;
  cellularPowerLogLTEULCAStates = self->_cellularPowerLogLTEULCAStates;
  v8 = v4;
  if (!cellularPowerLogLTEULCAStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEULCAStates;
    self->_cellularPowerLogLTEULCAStates = v6;

    v4 = v8;
    cellularPowerLogLTEULCAStates = self->_cellularPowerLogLTEULCAStates;
  }

  [(NSMutableArray *)cellularPowerLogLTEULCAStates addObject:v4];
}

- (void)addCellularPowerLogProtocolState:(id)a3
{
  v4 = a3;
  cellularPowerLogProtocolStates = self->_cellularPowerLogProtocolStates;
  v8 = v4;
  if (!cellularPowerLogProtocolStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogProtocolStates;
    self->_cellularPowerLogProtocolStates = v6;

    v4 = v8;
    cellularPowerLogProtocolStates = self->_cellularPowerLogProtocolStates;
  }

  [(NSMutableArray *)cellularPowerLogProtocolStates addObject:v4];
}

- (void)addCellularPowerLogPLMNSearch:(id)a3
{
  v4 = a3;
  cellularPowerLogPLMNSearchs = self->_cellularPowerLogPLMNSearchs;
  v8 = v4;
  if (!cellularPowerLogPLMNSearchs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPLMNSearchs;
    self->_cellularPowerLogPLMNSearchs = v6;

    v4 = v8;
    cellularPowerLogPLMNSearchs = self->_cellularPowerLogPLMNSearchs;
  }

  [(NSMutableArray *)cellularPowerLogPLMNSearchs addObject:v4];
}

- (void)addCellularPowerLogGSMTxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogGSMTxPowers = self->_cellularPowerLogGSMTxPowers;
  v8 = v4;
  if (!cellularPowerLogGSMTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMTxPowers;
    self->_cellularPowerLogGSMTxPowers = v6;

    v4 = v8;
    cellularPowerLogGSMTxPowers = self->_cellularPowerLogGSMTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogGSMTxPowers addObject:v4];
}

- (void)addCellularPowerLogGSMRxRSSI:(id)a3
{
  v4 = a3;
  cellularPowerLogGSMRxRSSIs = self->_cellularPowerLogGSMRxRSSIs;
  v8 = v4;
  if (!cellularPowerLogGSMRxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRxRSSIs;
    self->_cellularPowerLogGSMRxRSSIs = v6;

    v4 = v8;
    cellularPowerLogGSMRxRSSIs = self->_cellularPowerLogGSMRxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogGSMRxRSSIs addObject:v4];
}

- (void)addCellularPowerLogGSMRABMode:(id)a3
{
  v4 = a3;
  cellularPowerLogGSMRABModes = self->_cellularPowerLogGSMRABModes;
  v8 = v4;
  if (!cellularPowerLogGSMRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRABModes;
    self->_cellularPowerLogGSMRABModes = v6;

    v4 = v8;
    cellularPowerLogGSMRABModes = self->_cellularPowerLogGSMRABModes;
  }

  [(NSMutableArray *)cellularPowerLogGSMRABModes addObject:v4];
}

- (void)addCellularPowerLogGSMRxDiversity:(id)a3
{
  v4 = a3;
  cellularPowerLogGSMRxDiversitys = self->_cellularPowerLogGSMRxDiversitys;
  v8 = v4;
  if (!cellularPowerLogGSMRxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRxDiversitys;
    self->_cellularPowerLogGSMRxDiversitys = v6;

    v4 = v8;
    cellularPowerLogGSMRxDiversitys = self->_cellularPowerLogGSMRxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogGSMRxDiversitys addObject:v4];
}

- (void)addCellularPowerLogWCDMATxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMATxPowers = self->_cellularPowerLogWCDMATxPowers;
  v8 = v4;
  if (!cellularPowerLogWCDMATxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMATxPowers;
    self->_cellularPowerLogWCDMATxPowers = v6;

    v4 = v8;
    cellularPowerLogWCDMATxPowers = self->_cellularPowerLogWCDMATxPowers;
  }

  [(NSMutableArray *)cellularPowerLogWCDMATxPowers addObject:v4];
}

- (void)addCellularPowerLogWCDMARxRSSI:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMARxRSSIs = self->_cellularPowerLogWCDMARxRSSIs;
  v8 = v4;
  if (!cellularPowerLogWCDMARxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARxRSSIs;
    self->_cellularPowerLogWCDMARxRSSIs = v6;

    v4 = v8;
    cellularPowerLogWCDMARxRSSIs = self->_cellularPowerLogWCDMARxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARxRSSIs addObject:v4];
}

- (void)addCellularPowerLogWCDMARxDiversity:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMARxDiversitys = self->_cellularPowerLogWCDMARxDiversitys;
  v8 = v4;
  if (!cellularPowerLogWCDMARxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARxDiversitys;
    self->_cellularPowerLogWCDMARxDiversitys = v6;

    v4 = v8;
    cellularPowerLogWCDMARxDiversitys = self->_cellularPowerLogWCDMARxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARxDiversitys addObject:v4];
}

- (void)addCellularPowerLogWCDMARABMode:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMARABModes = self->_cellularPowerLogWCDMARABModes;
  v8 = v4;
  if (!cellularPowerLogWCDMARABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARABModes;
    self->_cellularPowerLogWCDMARABModes = v6;

    v4 = v8;
    cellularPowerLogWCDMARABModes = self->_cellularPowerLogWCDMARABModes;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARABModes addObject:v4];
}

- (void)addCellularPowerLogWCDMARABType:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMARABTypes = self->_cellularPowerLogWCDMARABTypes;
  v8 = v4;
  if (!cellularPowerLogWCDMARABTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARABTypes;
    self->_cellularPowerLogWCDMARABTypes = v6;

    v4 = v8;
    cellularPowerLogWCDMARABTypes = self->_cellularPowerLogWCDMARABTypes;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARABTypes addObject:v4];
}

- (void)addCellularPowerLogEVDOTxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogEVDOTxPowers = self->_cellularPowerLogEVDOTxPowers;
  v8 = v4;
  if (!cellularPowerLogEVDOTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogEVDOTxPowers;
    self->_cellularPowerLogEVDOTxPowers = v6;

    v4 = v8;
    cellularPowerLogEVDOTxPowers = self->_cellularPowerLogEVDOTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogEVDOTxPowers addObject:v4];
}

- (void)addCellularPowerLogEVDORxRSSI:(id)a3
{
  v4 = a3;
  cellularPowerLogEVDORxRSSIs = self->_cellularPowerLogEVDORxRSSIs;
  v8 = v4;
  if (!cellularPowerLogEVDORxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogEVDORxRSSIs;
    self->_cellularPowerLogEVDORxRSSIs = v6;

    v4 = v8;
    cellularPowerLogEVDORxRSSIs = self->_cellularPowerLogEVDORxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogEVDORxRSSIs addObject:v4];
}

- (void)addCellularPowerLogHybridRABMode:(id)a3
{
  v4 = a3;
  cellularPowerLogHybridRABModes = self->_cellularPowerLogHybridRABModes;
  v8 = v4;
  if (!cellularPowerLogHybridRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogHybridRABModes;
    self->_cellularPowerLogHybridRABModes = v6;

    v4 = v8;
    cellularPowerLogHybridRABModes = self->_cellularPowerLogHybridRABModes;
  }

  [(NSMutableArray *)cellularPowerLogHybridRABModes addObject:v4];
}

- (void)addCellularPowerLogEVDORxDiversity:(id)a3
{
  v4 = a3;
  cellularPowerLogEVDORxDiversitys = self->_cellularPowerLogEVDORxDiversitys;
  v8 = v4;
  if (!cellularPowerLogEVDORxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogEVDORxDiversitys;
    self->_cellularPowerLogEVDORxDiversitys = v6;

    v4 = v8;
    cellularPowerLogEVDORxDiversitys = self->_cellularPowerLogEVDORxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogEVDORxDiversitys addObject:v4];
}

- (void)addCellularPowerLogCDMA1XTxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogCDMA1XTxPowers = self->_cellularPowerLogCDMA1XTxPowers;
  v8 = v4;
  if (!cellularPowerLogCDMA1XTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XTxPowers;
    self->_cellularPowerLogCDMA1XTxPowers = v6;

    v4 = v8;
    cellularPowerLogCDMA1XTxPowers = self->_cellularPowerLogCDMA1XTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XTxPowers addObject:v4];
}

- (void)addCellularPowerLogCDMA1XRxRSSI:(id)a3
{
  v4 = a3;
  cellularPowerLogCDMA1XRxRSSIs = self->_cellularPowerLogCDMA1XRxRSSIs;
  v8 = v4;
  if (!cellularPowerLogCDMA1XRxRSSIs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRxRSSIs;
    self->_cellularPowerLogCDMA1XRxRSSIs = v6;

    v4 = v8;
    cellularPowerLogCDMA1XRxRSSIs = self->_cellularPowerLogCDMA1XRxRSSIs;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRxRSSIs addObject:v4];
}

- (void)addCellularPowerLogCDMA1XRABMode:(id)a3
{
  v4 = a3;
  cellularPowerLogCDMA1XRABModes = self->_cellularPowerLogCDMA1XRABModes;
  v8 = v4;
  if (!cellularPowerLogCDMA1XRABModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRABModes;
    self->_cellularPowerLogCDMA1XRABModes = v6;

    v4 = v8;
    cellularPowerLogCDMA1XRABModes = self->_cellularPowerLogCDMA1XRABModes;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRABModes addObject:v4];
}

- (void)addCellularPowerLogCDMA1XRxDiversity:(id)a3
{
  v4 = a3;
  cellularPowerLogCDMA1XRxDiversitys = self->_cellularPowerLogCDMA1XRxDiversitys;
  v8 = v4;
  if (!cellularPowerLogCDMA1XRxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRxDiversitys;
    self->_cellularPowerLogCDMA1XRxDiversitys = v6;

    v4 = v8;
    cellularPowerLogCDMA1XRxDiversitys = self->_cellularPowerLogCDMA1XRxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRxDiversitys addObject:v4];
}

- (void)addCellularPowerLogLTEPagingDRXCycle:(id)a3
{
  v4 = a3;
  cellularPowerLogLTEPagingDRXCycles = self->_cellularPowerLogLTEPagingDRXCycles;
  v8 = v4;
  if (!cellularPowerLogLTEPagingDRXCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTEPagingDRXCycles;
    self->_cellularPowerLogLTEPagingDRXCycles = v6;

    v4 = v8;
    cellularPowerLogLTEPagingDRXCycles = self->_cellularPowerLogLTEPagingDRXCycles;
  }

  [(NSMutableArray *)cellularPowerLogLTEPagingDRXCycles addObject:v4];
}

- (void)addCellularPowerLogNRPagingDRXCycle:(id)a3
{
  v4 = a3;
  cellularPowerLogNRPagingDRXCycles = self->_cellularPowerLogNRPagingDRXCycles;
  v8 = v4;
  if (!cellularPowerLogNRPagingDRXCycles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRPagingDRXCycles;
    self->_cellularPowerLogNRPagingDRXCycles = v6;

    v4 = v8;
    cellularPowerLogNRPagingDRXCycles = self->_cellularPowerLogNRPagingDRXCycles;
  }

  [(NSMutableArray *)cellularPowerLogNRPagingDRXCycles addObject:v4];
}

- (void)addCellularPowerLogNRSCGRel:(id)a3
{
  v4 = a3;
  cellularPowerLogNRSCGRels = self->_cellularPowerLogNRSCGRels;
  v8 = v4;
  if (!cellularPowerLogNRSCGRels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRSCGRels;
    self->_cellularPowerLogNRSCGRels = v6;

    v4 = v8;
    cellularPowerLogNRSCGRels = self->_cellularPowerLogNRSCGRels;
  }

  [(NSMutableArray *)cellularPowerLogNRSCGRels addObject:v4];
}

- (void)addCellularPowerLogWCDMACDRXConfig:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMACDRXConfigs = self->_cellularPowerLogWCDMACDRXConfigs;
  v8 = v4;
  if (!cellularPowerLogWCDMACDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMACDRXConfigs;
    self->_cellularPowerLogWCDMACDRXConfigs = v6;

    v4 = v8;
    cellularPowerLogWCDMACDRXConfigs = self->_cellularPowerLogWCDMACDRXConfigs;
  }

  [(NSMutableArray *)cellularPowerLogWCDMACDRXConfigs addObject:v4];
}

- (void)addCellularPowerLogLTECDRXConfig:(id)a3
{
  v4 = a3;
  cellularPowerLogLTECDRXConfigs = self->_cellularPowerLogLTECDRXConfigs;
  v8 = v4;
  if (!cellularPowerLogLTECDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTECDRXConfigs;
    self->_cellularPowerLogLTECDRXConfigs = v6;

    v4 = v8;
    cellularPowerLogLTECDRXConfigs = self->_cellularPowerLogLTECDRXConfigs;
  }

  [(NSMutableArray *)cellularPowerLogLTECDRXConfigs addObject:v4];
}

- (void)addCellularPowerLogWCDMARRCStateChange:(id)a3
{
  v4 = a3;
  cellularPowerLogWCDMARRCStateChanges = self->_cellularPowerLogWCDMARRCStateChanges;
  v8 = v4;
  if (!cellularPowerLogWCDMARRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWCDMARRCStateChanges;
    self->_cellularPowerLogWCDMARRCStateChanges = v6;

    v4 = v8;
    cellularPowerLogWCDMARRCStateChanges = self->_cellularPowerLogWCDMARRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogWCDMARRCStateChanges addObject:v4];
}

- (void)addCellularPowerLogLTERRCStateChange:(id)a3
{
  v4 = a3;
  cellularPowerLogLTERRCStateChanges = self->_cellularPowerLogLTERRCStateChanges;
  v8 = v4;
  if (!cellularPowerLogLTERRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogLTERRCStateChanges;
    self->_cellularPowerLogLTERRCStateChanges = v6;

    v4 = v8;
    cellularPowerLogLTERRCStateChanges = self->_cellularPowerLogLTERRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogLTERRCStateChanges addObject:v4];
}

- (void)addCellularPowerLogSystemEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogSystemEvents = self->_cellularPowerLogSystemEvents;
  v8 = v4;
  if (!cellularPowerLogSystemEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSystemEvents;
    self->_cellularPowerLogSystemEvents = v6;

    v4 = v8;
    cellularPowerLogSystemEvents = self->_cellularPowerLogSystemEvents;
  }

  [(NSMutableArray *)cellularPowerLogSystemEvents addObject:v4];
}

- (void)addCellularPowerLogRATReselectionEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogRATReselectionEvents = self->_cellularPowerLogRATReselectionEvents;
  v8 = v4;
  if (!cellularPowerLogRATReselectionEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogRATReselectionEvents;
    self->_cellularPowerLogRATReselectionEvents = v6;

    v4 = v8;
    cellularPowerLogRATReselectionEvents = self->_cellularPowerLogRATReselectionEvents;
  }

  [(NSMutableArray *)cellularPowerLogRATReselectionEvents addObject:v4];
}

- (void)addCellularPowerLogRATRedirectionEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogRATRedirectionEvents = self->_cellularPowerLogRATRedirectionEvents;
  v8 = v4;
  if (!cellularPowerLogRATRedirectionEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogRATRedirectionEvents;
    self->_cellularPowerLogRATRedirectionEvents = v6;

    v4 = v8;
    cellularPowerLogRATRedirectionEvents = self->_cellularPowerLogRATRedirectionEvents;
  }

  [(NSMutableArray *)cellularPowerLogRATRedirectionEvents addObject:v4];
}

- (void)addCellularPowerLogGSMRRCStateChange:(id)a3
{
  v4 = a3;
  cellularPowerLogGSMRRCStateChanges = self->_cellularPowerLogGSMRRCStateChanges;
  v8 = v4;
  if (!cellularPowerLogGSMRRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogGSMRRCStateChanges;
    self->_cellularPowerLogGSMRRCStateChanges = v6;

    v4 = v8;
    cellularPowerLogGSMRRCStateChanges = self->_cellularPowerLogGSMRRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogGSMRRCStateChanges addObject:v4];
}

- (void)addCellularPowerLogCDMA1XRRCStateChange:(id)a3
{
  v4 = a3;
  cellularPowerLogCDMA1XRRCStateChanges = self->_cellularPowerLogCDMA1XRRCStateChanges;
  v8 = v4;
  if (!cellularPowerLogCDMA1XRRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogCDMA1XRRCStateChanges;
    self->_cellularPowerLogCDMA1XRRCStateChanges = v6;

    v4 = v8;
    cellularPowerLogCDMA1XRRCStateChanges = self->_cellularPowerLogCDMA1XRRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogCDMA1XRRCStateChanges addObject:v4];
}

- (void)addCellularPowerLogHybridRRCStateChange:(id)a3
{
  v4 = a3;
  cellularPowerLogHybridRRCStateChanges = self->_cellularPowerLogHybridRRCStateChanges;
  v8 = v4;
  if (!cellularPowerLogHybridRRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogHybridRRCStateChanges;
    self->_cellularPowerLogHybridRRCStateChanges = v6;

    v4 = v8;
    cellularPowerLogHybridRRCStateChanges = self->_cellularPowerLogHybridRRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogHybridRRCStateChanges addObject:v4];
}

- (void)addCellularPowerLogServiceStateEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogServiceStateEvents = self->_cellularPowerLogServiceStateEvents;
  v8 = v4;
  if (!cellularPowerLogServiceStateEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogServiceStateEvents;
    self->_cellularPowerLogServiceStateEvents = v6;

    v4 = v8;
    cellularPowerLogServiceStateEvents = self->_cellularPowerLogServiceStateEvents;
  }

  [(NSMutableArray *)cellularPowerLogServiceStateEvents addObject:v4];
}

- (void)addCellularPowerLogPLMNScanEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogPLMNScanEvents = self->_cellularPowerLogPLMNScanEvents;
  v8 = v4;
  if (!cellularPowerLogPLMNScanEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPLMNScanEvents;
    self->_cellularPowerLogPLMNScanEvents = v6;

    v4 = v8;
    cellularPowerLogPLMNScanEvents = self->_cellularPowerLogPLMNScanEvents;
  }

  [(NSMutableArray *)cellularPowerLogPLMNScanEvents addObject:v4];
}

- (void)addCellularPowerLogPLMNSearchEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogPLMNSearchEvents = self->_cellularPowerLogPLMNSearchEvents;
  v8 = v4;
  if (!cellularPowerLogPLMNSearchEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogPLMNSearchEvents;
    self->_cellularPowerLogPLMNSearchEvents = v6;

    v4 = v8;
    cellularPowerLogPLMNSearchEvents = self->_cellularPowerLogPLMNSearchEvents;
  }

  [(NSMutableArray *)cellularPowerLogPLMNSearchEvents addObject:v4];
}

- (void)addCellularPowerLogNRSARRCStateChange:(id)a3
{
  v4 = a3;
  cellularPowerLogNRSARRCStateChanges = self->_cellularPowerLogNRSARRCStateChanges;
  v8 = v4;
  if (!cellularPowerLogNRSARRCStateChanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRSARRCStateChanges;
    self->_cellularPowerLogNRSARRCStateChanges = v6;

    v4 = v8;
    cellularPowerLogNRSARRCStateChanges = self->_cellularPowerLogNRSARRCStateChanges;
  }

  [(NSMutableArray *)cellularPowerLogNRSARRCStateChanges addObject:v4];
}

- (void)addCellularPowerLogNRNSAENDCEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogNRNSAENDCEvents = self->_cellularPowerLogNRNSAENDCEvents;
  v8 = v4;
  if (!cellularPowerLogNRNSAENDCEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRNSAENDCEvents;
    self->_cellularPowerLogNRNSAENDCEvents = v6;

    v4 = v8;
    cellularPowerLogNRNSAENDCEvents = self->_cellularPowerLogNRNSAENDCEvents;
  }

  [(NSMutableArray *)cellularPowerLogNRNSAENDCEvents addObject:v4];
}

- (void)addCellularPowerLogNRCDRXConfig:(id)a3
{
  v4 = a3;
  cellularPowerLogNRCDRXConfigs = self->_cellularPowerLogNRCDRXConfigs;
  v8 = v4;
  if (!cellularPowerLogNRCDRXConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRCDRXConfigs;
    self->_cellularPowerLogNRCDRXConfigs = v6;

    v4 = v8;
    cellularPowerLogNRCDRXConfigs = self->_cellularPowerLogNRCDRXConfigs;
  }

  [(NSMutableArray *)cellularPowerLogNRCDRXConfigs addObject:v4];
}

- (void)addCellularNrSDMActivation:(id)a3
{
  v4 = a3;
  cellularNrSDMActivations = self->_cellularNrSDMActivations;
  v8 = v4;
  if (!cellularNrSDMActivations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularNrSDMActivations;
    self->_cellularNrSDMActivations = v6;

    v4 = v8;
    cellularNrSDMActivations = self->_cellularNrSDMActivations;
  }

  [(NSMutableArray *)cellularNrSDMActivations addObject:v4];
}

- (void)addCellularNrSdmEndcRelease:(id)a3
{
  v4 = a3;
  cellularNrSdmEndcReleases = self->_cellularNrSdmEndcReleases;
  v8 = v4;
  if (!cellularNrSdmEndcReleases)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularNrSdmEndcReleases;
    self->_cellularNrSdmEndcReleases = v6;

    v4 = v8;
    cellularNrSdmEndcReleases = self->_cellularNrSdmEndcReleases;
  }

  [(NSMutableArray *)cellularNrSdmEndcReleases addObject:v4];
}

- (void)addCellularPowerLogNRFRCoverage:(id)a3
{
  v4 = a3;
  cellularPowerLogNRFRCoverages = self->_cellularPowerLogNRFRCoverages;
  v8 = v4;
  if (!cellularPowerLogNRFRCoverages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRFRCoverages;
    self->_cellularPowerLogNRFRCoverages = v6;

    v4 = v8;
    cellularPowerLogNRFRCoverages = self->_cellularPowerLogNRFRCoverages;
  }

  [(NSMutableArray *)cellularPowerLogNRFRCoverages addObject:v4];
}

- (void)addCellularPowerLogNRDCEvent:(id)a3
{
  v4 = a3;
  cellularPowerLogNRDCEvents = self->_cellularPowerLogNRDCEvents;
  v8 = v4;
  if (!cellularPowerLogNRDCEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRDCEvents;
    self->_cellularPowerLogNRDCEvents = v6;

    v4 = v8;
    cellularPowerLogNRDCEvents = self->_cellularPowerLogNRDCEvents;
  }

  [(NSMutableArray *)cellularPowerLogNRDCEvents addObject:v4];
}

- (void)addCellularDynamicRatSelection:(id)a3
{
  v4 = a3;
  cellularDynamicRatSelections = self->_cellularDynamicRatSelections;
  v8 = v4;
  if (!cellularDynamicRatSelections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularDynamicRatSelections;
    self->_cellularDynamicRatSelections = v6;

    v4 = v8;
    cellularDynamicRatSelections = self->_cellularDynamicRatSelections;
  }

  [(NSMutableArray *)cellularDynamicRatSelections addObject:v4];
}

- (void)addCellularPowerLogWUS:(id)a3
{
  v4 = a3;
  cellularPowerLogWUSs = self->_cellularPowerLogWUSs;
  v8 = v4;
  if (!cellularPowerLogWUSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogWUSs;
    self->_cellularPowerLogWUSs = v6;

    v4 = v8;
    cellularPowerLogWUSs = self->_cellularPowerLogWUSs;
  }

  [(NSMutableArray *)cellularPowerLogWUSs addObject:v4];
}

- (void)addCellularPowerLogNRsub6BWP:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6BWPs = self->_cellularPowerLogNRsub6BWPs;
  v8 = v4;
  if (!cellularPowerLogNRsub6BWPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6BWPs;
    self->_cellularPowerLogNRsub6BWPs = v6;

    v4 = v8;
    cellularPowerLogNRsub6BWPs = self->_cellularPowerLogNRsub6BWPs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6BWPs addObject:v4];
}

- (void)addCellularPowerLogNRsub6CASCCConfigured:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6CASCCConfigureds = self->_cellularPowerLogNRsub6CASCCConfigureds;
  v8 = v4;
  if (!cellularPowerLogNRsub6CASCCConfigureds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6CASCCConfigureds;
    self->_cellularPowerLogNRsub6CASCCConfigureds = v6;

    v4 = v8;
    cellularPowerLogNRsub6CASCCConfigureds = self->_cellularPowerLogNRsub6CASCCConfigureds;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6CASCCConfigureds addObject:v4];
}

- (void)addCellularPowerLogNRsub6CASCCActivated:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6CASCCActivateds = self->_cellularPowerLogNRsub6CASCCActivateds;
  v8 = v4;
  if (!cellularPowerLogNRsub6CASCCActivateds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6CASCCActivateds;
    self->_cellularPowerLogNRsub6CASCCActivateds = v6;

    v4 = v8;
    cellularPowerLogNRsub6CASCCActivateds = self->_cellularPowerLogNRsub6CASCCActivateds;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6CASCCActivateds addObject:v4];
}

- (void)addCellularPowerLogNRsub6RxTx:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6RxTxs = self->_cellularPowerLogNRsub6RxTxs;
  v8 = v4;
  if (!cellularPowerLogNRsub6RxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6RxTxs;
    self->_cellularPowerLogNRsub6RxTxs = v6;

    v4 = v8;
    cellularPowerLogNRsub6RxTxs = self->_cellularPowerLogNRsub6RxTxs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6RxTxs addObject:v4];
}

- (void)addCellularPowerLogNRsub6CarrierComponentInfo:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6CarrierComponentInfos = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  v8 = v4;
  if (!cellularPowerLogNRsub6CarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
    self->_cellularPowerLogNRsub6CarrierComponentInfos = v6;

    v4 = v8;
    cellularPowerLogNRsub6CarrierComponentInfos = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6CarrierComponentInfos addObject:v4];
}

- (void)addCellularPowerLogNRsub6DLTBS:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6DLTBSs = self->_cellularPowerLogNRsub6DLTBSs;
  v8 = v4;
  if (!cellularPowerLogNRsub6DLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6DLTBSs;
    self->_cellularPowerLogNRsub6DLTBSs = v6;

    v4 = v8;
    cellularPowerLogNRsub6DLTBSs = self->_cellularPowerLogNRsub6DLTBSs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6DLTBSs addObject:v4];
}

- (void)addCellularPowerLogNRsub6RSRP:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6RSRPs = self->_cellularPowerLogNRsub6RSRPs;
  v8 = v4;
  if (!cellularPowerLogNRsub6RSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6RSRPs;
    self->_cellularPowerLogNRsub6RSRPs = v6;

    v4 = v8;
    cellularPowerLogNRsub6RSRPs = self->_cellularPowerLogNRsub6RSRPs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6RSRPs addObject:v4];
}

- (void)addCellularPowerLogNRsub6ULCAState:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6ULCAStates = self->_cellularPowerLogNRsub6ULCAStates;
  v8 = v4;
  if (!cellularPowerLogNRsub6ULCAStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6ULCAStates;
    self->_cellularPowerLogNRsub6ULCAStates = v6;

    v4 = v8;
    cellularPowerLogNRsub6ULCAStates = self->_cellularPowerLogNRsub6ULCAStates;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6ULCAStates addObject:v4];
}

- (void)addCellularPowerLogNRsub6TxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6TxPowers = self->_cellularPowerLogNRsub6TxPowers;
  v8 = v4;
  if (!cellularPowerLogNRsub6TxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6TxPowers;
    self->_cellularPowerLogNRsub6TxPowers = v6;

    v4 = v8;
    cellularPowerLogNRsub6TxPowers = self->_cellularPowerLogNRsub6TxPowers;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6TxPowers addObject:v4];
}

- (void)addCellularPowerLogNRsub6RxDiversity:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6RxDiversitys = self->_cellularPowerLogNRsub6RxDiversitys;
  v8 = v4;
  if (!cellularPowerLogNRsub6RxDiversitys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6RxDiversitys;
    self->_cellularPowerLogNRsub6RxDiversitys = v6;

    v4 = v8;
    cellularPowerLogNRsub6RxDiversitys = self->_cellularPowerLogNRsub6RxDiversitys;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6RxDiversitys addObject:v4];
}

- (void)addCellularPowerLogNRsub6BWPSCC:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6BWPSCCs = self->_cellularPowerLogNRsub6BWPSCCs;
  v8 = v4;
  if (!cellularPowerLogNRsub6BWPSCCs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6BWPSCCs;
    self->_cellularPowerLogNRsub6BWPSCCs = v6;

    v4 = v8;
    cellularPowerLogNRsub6BWPSCCs = self->_cellularPowerLogNRsub6BWPSCCs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6BWPSCCs addObject:v4];
}

- (void)addCellularPowerLogNRsub6BWPSA:(id)a3
{
  v4 = a3;
  cellularPowerLogNRsub6BWPSAs = self->_cellularPowerLogNRsub6BWPSAs;
  v8 = v4;
  if (!cellularPowerLogNRsub6BWPSAs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRsub6BWPSAs;
    self->_cellularPowerLogNRsub6BWPSAs = v6;

    v4 = v8;
    cellularPowerLogNRsub6BWPSAs = self->_cellularPowerLogNRsub6BWPSAs;
  }

  [(NSMutableArray *)cellularPowerLogNRsub6BWPSAs addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveBWP:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveBWPs = self->_cellularPowerLogNRmmWaveBWPs;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveBWPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveBWPs;
    self->_cellularPowerLogNRmmWaveBWPs = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveBWPs = self->_cellularPowerLogNRmmWaveBWPs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveBWPs addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveAntennaPanel:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveAntennaPanels = self->_cellularPowerLogNRmmWaveAntennaPanels;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveAntennaPanels)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveAntennaPanels;
    self->_cellularPowerLogNRmmWaveAntennaPanels = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveAntennaPanels = self->_cellularPowerLogNRmmWaveAntennaPanels;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveAntennaPanels addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveBeamID:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveBeamIDs = self->_cellularPowerLogNRmmWaveBeamIDs;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveBeamIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveBeamIDs;
    self->_cellularPowerLogNRmmWaveBeamIDs = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveBeamIDs = self->_cellularPowerLogNRmmWaveBeamIDs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveBeamIDs addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveCASCCConfigured:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveCASCCConfigureds = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveCASCCConfigureds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
    self->_cellularPowerLogNRmmWaveCASCCConfigureds = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveCASCCConfigureds = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveCASCCConfigureds addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveCASCCActivated:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveCASCCActivateds = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveCASCCActivateds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
    self->_cellularPowerLogNRmmWaveCASCCActivateds = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveCASCCActivateds = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveCASCCActivateds addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveRxTx:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveRxTxs = self->_cellularPowerLogNRmmWaveRxTxs;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveRxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveRxTxs;
    self->_cellularPowerLogNRmmWaveRxTxs = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveRxTxs = self->_cellularPowerLogNRmmWaveRxTxs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveRxTxs addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveCarrierComponentInfo:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveCarrierComponentInfos = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveCarrierComponentInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
    self->_cellularPowerLogNRmmWaveCarrierComponentInfos = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveCarrierComponentInfos = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveCarrierComponentInfos addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveDLTBS:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveDLTBSs = self->_cellularPowerLogNRmmWaveDLTBSs;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveDLTBSs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveDLTBSs;
    self->_cellularPowerLogNRmmWaveDLTBSs = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveDLTBSs = self->_cellularPowerLogNRmmWaveDLTBSs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveDLTBSs addObject:v4];
}

- (void)addCellularPowerLogNRMmWaveRSRP:(id)a3
{
  v4 = a3;
  cellularPowerLogNRMmWaveRSRPs = self->_cellularPowerLogNRMmWaveRSRPs;
  v8 = v4;
  if (!cellularPowerLogNRMmWaveRSRPs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRMmWaveRSRPs;
    self->_cellularPowerLogNRMmWaveRSRPs = v6;

    v4 = v8;
    cellularPowerLogNRMmWaveRSRPs = self->_cellularPowerLogNRMmWaveRSRPs;
  }

  [(NSMutableArray *)cellularPowerLogNRMmWaveRSRPs addObject:v4];
}

- (void)addCellularPowerLogNRMmWaveTxPower:(id)a3
{
  v4 = a3;
  cellularPowerLogNRMmWaveTxPowers = self->_cellularPowerLogNRMmWaveTxPowers;
  v8 = v4;
  if (!cellularPowerLogNRMmWaveTxPowers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRMmWaveTxPowers;
    self->_cellularPowerLogNRMmWaveTxPowers = v6;

    v4 = v8;
    cellularPowerLogNRMmWaveTxPowers = self->_cellularPowerLogNRMmWaveTxPowers;
  }

  [(NSMutableArray *)cellularPowerLogNRMmWaveTxPowers addObject:v4];
}

- (void)addCellularPowerLogNRMmWaveULCAState:(id)a3
{
  v4 = a3;
  cellularPowerLogNRMmWaveULCAStates = self->_cellularPowerLogNRMmWaveULCAStates;
  v8 = v4;
  if (!cellularPowerLogNRMmWaveULCAStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRMmWaveULCAStates;
    self->_cellularPowerLogNRMmWaveULCAStates = v6;

    v4 = v8;
    cellularPowerLogNRMmWaveULCAStates = self->_cellularPowerLogNRMmWaveULCAStates;
  }

  [(NSMutableArray *)cellularPowerLogNRMmWaveULCAStates addObject:v4];
}

- (void)addCellularPowerLogNRmmWaveBWPSCC:(id)a3
{
  v4 = a3;
  cellularPowerLogNRmmWaveBWPSCCs = self->_cellularPowerLogNRmmWaveBWPSCCs;
  v8 = v4;
  if (!cellularPowerLogNRmmWaveBWPSCCs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogNRmmWaveBWPSCCs;
    self->_cellularPowerLogNRmmWaveBWPSCCs = v6;

    v4 = v8;
    cellularPowerLogNRmmWaveBWPSCCs = self->_cellularPowerLogNRmmWaveBWPSCCs;
  }

  [(NSMutableArray *)cellularPowerLogNRmmWaveBWPSCCs addObject:v4];
}

- (void)addCellularPowerLogSFTState:(id)a3
{
  v4 = a3;
  cellularPowerLogSFTStates = self->_cellularPowerLogSFTStates;
  v8 = v4;
  if (!cellularPowerLogSFTStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSFTStates;
    self->_cellularPowerLogSFTStates = v6;

    v4 = v8;
    cellularPowerLogSFTStates = self->_cellularPowerLogSFTStates;
  }

  [(NSMutableArray *)cellularPowerLogSFTStates addObject:v4];
}

- (void)addCellularPowerLogSFTRxTx:(id)a3
{
  v4 = a3;
  cellularPowerLogSFTRxTxs = self->_cellularPowerLogSFTRxTxs;
  v8 = v4;
  if (!cellularPowerLogSFTRxTxs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cellularPowerLogSFTRxTxs;
    self->_cellularPowerLogSFTRxTxs = v6;

    v4 = v8;
    cellularPowerLogSFTRxTxs = self->_cellularPowerLogSFTRxTxs;
  }

  [(NSMutableArray *)cellularPowerLogSFTRxTxs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularPowerLog;
  v4 = [(AWDMETRICSCellularPowerLog *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)writeTo:(id)a3
{
  v1062 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v962 = 0u;
  v963 = 0u;
  v964 = 0u;
  v965 = 0u;
  v5 = self->_cellularPerClientProfileTriggerCounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v962 objects:v1061 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v963;
    do
    {
      v9 = 0;
      do
      {
        if (*v963 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v962 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v962 objects:v1061 count:16];
    }

    while (v7);
  }

  v961 = 0u;
  v960 = 0u;
  v959 = 0u;
  v958 = 0u;
  v11 = self->_cellularNrSDMActivations;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v958 objects:v1060 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v959;
    do
    {
      v15 = 0;
      do
      {
        if (*v959 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v958 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v958 objects:v1060 count:16];
    }

    while (v13);
  }

  v957 = 0u;
  v956 = 0u;
  v955 = 0u;
  v954 = 0u;
  v17 = self->_cellularNrSdmEndcReleases;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v954 objects:v1059 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v955;
    do
    {
      v21 = 0;
      do
      {
        if (*v955 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v954 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v954 objects:v1059 count:16];
    }

    while (v19);
  }

  v953 = 0u;
  v952 = 0u;
  v951 = 0u;
  v950 = 0u;
  v23 = self->_cellularDynamicRatSelections;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v950 objects:v1058 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v951;
    do
    {
      v27 = 0;
      do
      {
        if (*v951 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v950 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v950 objects:v1058 count:16];
    }

    while (v25);
  }

  v949 = 0u;
  v948 = 0u;
  v947 = 0u;
  v946 = 0u;
  v29 = self->_cellularRfTunerHists;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v946 objects:v1057 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v947;
    do
    {
      v33 = 0;
      do
      {
        if (*v947 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v946 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v946 objects:v1057 count:16];
    }

    while (v31);
  }

  v945 = 0u;
  v944 = 0u;
  v943 = 0u;
  v942 = 0u;
  v35 = self->_cellularPowerLogXOShutdowns;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v942 objects:v1056 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v943;
    do
    {
      v39 = 0;
      do
      {
        if (*v943 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v942 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v942 objects:v1056 count:16];
    }

    while (v37);
  }

  v941 = 0u;
  v940 = 0u;
  v939 = 0u;
  v938 = 0u;
  v41 = self->_cellularPowerLogAPPSPerfLevels;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v938 objects:v1055 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v939;
    do
    {
      v45 = 0;
      do
      {
        if (*v939 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v938 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v938 objects:v1055 count:16];
    }

    while (v43);
  }

  v937 = 0u;
  v936 = 0u;
  v935 = 0u;
  v934 = 0u;
  v47 = self->_cellularPowerLogAPPSCXOShutdowns;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v934 objects:v1054 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v935;
    do
    {
      v51 = 0;
      do
      {
        if (*v935 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v934 + 1) + 8 * v51);
        PBDataWriterWriteSubmessage();
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v934 objects:v1054 count:16];
    }

    while (v49);
  }

  v933 = 0u;
  v932 = 0u;
  v931 = 0u;
  v930 = 0u;
  v53 = self->_cellularPowerLogAPPSSleepVetos;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v930 objects:v1053 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v931;
    do
    {
      v57 = 0;
      do
      {
        if (*v931 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v930 + 1) + 8 * v57);
        PBDataWriterWriteSubmessage();
        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v930 objects:v1053 count:16];
    }

    while (v55);
  }

  v929 = 0u;
  v928 = 0u;
  v927 = 0u;
  v926 = 0u;
  v59 = self->_cellularPowerLogMCPMSleepVetos;
  v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v926 objects:v1052 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v927;
    do
    {
      v63 = 0;
      do
      {
        if (*v927 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v926 + 1) + 8 * v63);
        PBDataWriterWriteSubmessage();
        ++v63;
      }

      while (v61 != v63);
      v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v926 objects:v1052 count:16];
    }

    while (v61);
  }

  v925 = 0u;
  v924 = 0u;
  v923 = 0u;
  v922 = 0u;
  v65 = self->_cellularPowerLogMPSSPerfLevels;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v922 objects:v1051 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v923;
    do
    {
      v69 = 0;
      do
      {
        if (*v923 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v922 + 1) + 8 * v69);
        PBDataWriterWriteSubmessage();
        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v922 objects:v1051 count:16];
    }

    while (v67);
  }

  v921 = 0u;
  v920 = 0u;
  v919 = 0u;
  v918 = 0u;
  v71 = self->_cellularPowerLogGPSStates;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v918 objects:v1050 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v919;
    do
    {
      v75 = 0;
      do
      {
        if (*v919 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = *(*(&v918 + 1) + 8 * v75);
        PBDataWriterWriteSubmessage();
        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v918 objects:v1050 count:16];
    }

    while (v73);
  }

  v917 = 0u;
  v916 = 0u;
  v915 = 0u;
  v914 = 0u;
  v77 = self->_cellularPowerLogAOPUARTStates;
  v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v914 objects:v1049 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v915;
    do
    {
      v81 = 0;
      do
      {
        if (*v915 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v914 + 1) + 8 * v81);
        PBDataWriterWriteSubmessage();
        ++v81;
      }

      while (v79 != v81);
      v79 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v914 objects:v1049 count:16];
    }

    while (v79);
  }

  v913 = 0u;
  v912 = 0u;
  v911 = 0u;
  v910 = 0u;
  v83 = self->_cellularPowerLogWLANUARTStates;
  v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v910 objects:v1048 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v911;
    do
    {
      v87 = 0;
      do
      {
        if (*v911 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = *(*(&v910 + 1) + 8 * v87);
        PBDataWriterWriteSubmessage();
        ++v87;
      }

      while (v85 != v87);
      v85 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v910 objects:v1048 count:16];
    }

    while (v85);
  }

  v909 = 0u;
  v908 = 0u;
  v907 = 0u;
  v906 = 0u;
  v89 = self->_cellularPowerLogPCIeStates;
  v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v906 objects:v1047 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v907;
    do
    {
      v93 = 0;
      do
      {
        if (*v907 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v906 + 1) + 8 * v93);
        PBDataWriterWriteSubmessage();
        ++v93;
      }

      while (v91 != v93);
      v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v906 objects:v1047 count:16];
    }

    while (v91);
  }

  v905 = 0u;
  v904 = 0u;
  v903 = 0u;
  v902 = 0u;
  v95 = self->_cellularPowerLogL1SleepStates;
  v96 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v902 objects:v1046 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v903;
    do
    {
      v99 = 0;
      do
      {
        if (*v903 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v902 + 1) + 8 * v99);
        PBDataWriterWriteSubmessage();
        ++v99;
      }

      while (v97 != v99);
      v97 = [(NSMutableArray *)v95 countByEnumeratingWithState:&v902 objects:v1046 count:16];
    }

    while (v97);
  }

  v901 = 0u;
  v900 = 0u;
  v899 = 0u;
  v898 = 0u;
  v101 = self->_cellularPowerLogLTEConfiguredCASCCStates;
  v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v898 objects:v1045 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v899;
    do
    {
      v105 = 0;
      do
      {
        if (*v899 != v104)
        {
          objc_enumerationMutation(v101);
        }

        v106 = *(*(&v898 + 1) + 8 * v105);
        PBDataWriterWriteSubmessage();
        ++v105;
      }

      while (v103 != v105);
      v103 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v898 objects:v1045 count:16];
    }

    while (v103);
  }

  v897 = 0u;
  v896 = 0u;
  v895 = 0u;
  v894 = 0u;
  v107 = self->_cellularPowerLogLTEActivatedCASCCStates;
  v108 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v894 objects:v1044 count:16];
  if (v108)
  {
    v109 = v108;
    v110 = *v895;
    do
    {
      v111 = 0;
      do
      {
        if (*v895 != v110)
        {
          objc_enumerationMutation(v107);
        }

        v112 = *(*(&v894 + 1) + 8 * v111);
        PBDataWriterWriteSubmessage();
        ++v111;
      }

      while (v109 != v111);
      v109 = [(NSMutableArray *)v107 countByEnumeratingWithState:&v894 objects:v1044 count:16];
    }

    while (v109);
  }

  v893 = 0u;
  v892 = 0u;
  v891 = 0u;
  v890 = 0u;
  v113 = self->_cellularPowerLogLTERxTxActivityStates;
  v114 = [(NSMutableArray *)v113 countByEnumeratingWithState:&v890 objects:v1043 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v891;
    do
    {
      v117 = 0;
      do
      {
        if (*v891 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v118 = *(*(&v890 + 1) + 8 * v117);
        PBDataWriterWriteSubmessage();
        ++v117;
      }

      while (v115 != v117);
      v115 = [(NSMutableArray *)v113 countByEnumeratingWithState:&v890 objects:v1043 count:16];
    }

    while (v115);
  }

  v889 = 0u;
  v888 = 0u;
  v887 = 0u;
  v886 = 0u;
  v119 = self->_cellularPowerLogLTECarrierComponentInfos;
  v120 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v886 objects:v1042 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v887;
    do
    {
      v123 = 0;
      do
      {
        if (*v887 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v124 = *(*(&v886 + 1) + 8 * v123);
        PBDataWriterWriteSubmessage();
        ++v123;
      }

      while (v121 != v123);
      v121 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v886 objects:v1042 count:16];
    }

    while (v121);
  }

  v885 = 0u;
  v884 = 0u;
  v883 = 0u;
  v882 = 0u;
  v125 = self->_cellularPowerLogLTEAggregatedDLTBSs;
  v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v882 objects:v1041 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v883;
    do
    {
      v129 = 0;
      do
      {
        if (*v883 != v128)
        {
          objc_enumerationMutation(v125);
        }

        v130 = *(*(&v882 + 1) + 8 * v129);
        PBDataWriterWriteSubmessage();
        ++v129;
      }

      while (v127 != v129);
      v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v882 objects:v1041 count:16];
    }

    while (v127);
  }

  v881 = 0u;
  v880 = 0u;
  v879 = 0u;
  v878 = 0u;
  v131 = self->_cellularPowerLogLTERSRPs;
  v132 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v878 objects:v1040 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = *v879;
    do
    {
      v135 = 0;
      do
      {
        if (*v879 != v134)
        {
          objc_enumerationMutation(v131);
        }

        v136 = *(*(&v878 + 1) + 8 * v135);
        PBDataWriterWriteSubmessage();
        ++v135;
      }

      while (v133 != v135);
      v133 = [(NSMutableArray *)v131 countByEnumeratingWithState:&v878 objects:v1040 count:16];
    }

    while (v133);
  }

  v877 = 0u;
  v876 = 0u;
  v875 = 0u;
  v874 = 0u;
  v137 = self->_cellularPowerLogLTESINRs;
  v138 = [(NSMutableArray *)v137 countByEnumeratingWithState:&v874 objects:v1039 count:16];
  if (v138)
  {
    v139 = v138;
    v140 = *v875;
    do
    {
      v141 = 0;
      do
      {
        if (*v875 != v140)
        {
          objc_enumerationMutation(v137);
        }

        v142 = *(*(&v874 + 1) + 8 * v141);
        PBDataWriterWriteSubmessage();
        ++v141;
      }

      while (v139 != v141);
      v139 = [(NSMutableArray *)v137 countByEnumeratingWithState:&v874 objects:v1039 count:16];
    }

    while (v139);
  }

  v873 = 0u;
  v872 = 0u;
  v871 = 0u;
  v870 = 0u;
  v143 = self->_cellularPowerLogLTETxPowers;
  v144 = [(NSMutableArray *)v143 countByEnumeratingWithState:&v870 objects:v1038 count:16];
  if (v144)
  {
    v145 = v144;
    v146 = *v871;
    do
    {
      v147 = 0;
      do
      {
        if (*v871 != v146)
        {
          objc_enumerationMutation(v143);
        }

        v148 = *(*(&v870 + 1) + 8 * v147);
        PBDataWriterWriteSubmessage();
        ++v147;
      }

      while (v145 != v147);
      v145 = [(NSMutableArray *)v143 countByEnumeratingWithState:&v870 objects:v1038 count:16];
    }

    while (v145);
  }

  v869 = 0u;
  v868 = 0u;
  v867 = 0u;
  v866 = 0u;
  v149 = self->_cellularPowerLogLTERxDiversitys;
  v150 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v866 objects:v1037 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v867;
    do
    {
      v153 = 0;
      do
      {
        if (*v867 != v152)
        {
          objc_enumerationMutation(v149);
        }

        v154 = *(*(&v866 + 1) + 8 * v153);
        PBDataWriterWriteSubmessage();
        ++v153;
      }

      while (v151 != v153);
      v151 = [(NSMutableArray *)v149 countByEnumeratingWithState:&v866 objects:v1037 count:16];
    }

    while (v151);
  }

  v865 = 0u;
  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v155 = self->_cellularPowerLogLTEULCAStates;
  v156 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v862 objects:v1036 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v863;
    do
    {
      v159 = 0;
      do
      {
        if (*v863 != v158)
        {
          objc_enumerationMutation(v155);
        }

        v160 = *(*(&v862 + 1) + 8 * v159);
        PBDataWriterWriteSubmessage();
        ++v159;
      }

      while (v157 != v159);
      v157 = [(NSMutableArray *)v155 countByEnumeratingWithState:&v862 objects:v1036 count:16];
    }

    while (v157);
  }

  v861 = 0u;
  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v161 = self->_cellularPowerLogPowerEstimators;
  v162 = [(NSMutableArray *)v161 countByEnumeratingWithState:&v858 objects:v1035 count:16];
  if (v162)
  {
    v163 = v162;
    v164 = *v859;
    do
    {
      v165 = 0;
      do
      {
        if (*v859 != v164)
        {
          objc_enumerationMutation(v161);
        }

        v166 = *(*(&v858 + 1) + 8 * v165);
        PBDataWriterWriteSubmessage();
        ++v165;
      }

      while (v163 != v165);
      v163 = [(NSMutableArray *)v161 countByEnumeratingWithState:&v858 objects:v1035 count:16];
    }

    while (v163);
  }

  v857 = 0u;
  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v167 = self->_cellularPowerLogLTEPagingDRXCycles;
  v168 = [(NSMutableArray *)v167 countByEnumeratingWithState:&v854 objects:v1034 count:16];
  if (v168)
  {
    v169 = v168;
    v170 = *v855;
    do
    {
      v171 = 0;
      do
      {
        if (*v855 != v170)
        {
          objc_enumerationMutation(v167);
        }

        v172 = *(*(&v854 + 1) + 8 * v171);
        PBDataWriterWriteSubmessage();
        ++v171;
      }

      while (v169 != v171);
      v169 = [(NSMutableArray *)v167 countByEnumeratingWithState:&v854 objects:v1034 count:16];
    }

    while (v169);
  }

  v853 = 0u;
  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v173 = self->_cellularPowerLogNRPagingDRXCycles;
  v174 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v850 objects:v1033 count:16];
  if (v174)
  {
    v175 = v174;
    v176 = *v851;
    do
    {
      v177 = 0;
      do
      {
        if (*v851 != v176)
        {
          objc_enumerationMutation(v173);
        }

        v178 = *(*(&v850 + 1) + 8 * v177);
        PBDataWriterWriteSubmessage();
        ++v177;
      }

      while (v175 != v177);
      v175 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v850 objects:v1033 count:16];
    }

    while (v175);
  }

  v849 = 0u;
  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v179 = self->_cellularPowerLogProtocolStates;
  v180 = [(NSMutableArray *)v179 countByEnumeratingWithState:&v846 objects:v1032 count:16];
  if (v180)
  {
    v181 = v180;
    v182 = *v847;
    do
    {
      v183 = 0;
      do
      {
        if (*v847 != v182)
        {
          objc_enumerationMutation(v179);
        }

        v184 = *(*(&v846 + 1) + 8 * v183);
        PBDataWriterWriteSubmessage();
        ++v183;
      }

      while (v181 != v183);
      v181 = [(NSMutableArray *)v179 countByEnumeratingWithState:&v846 objects:v1032 count:16];
    }

    while (v181);
  }

  v845 = 0u;
  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v185 = self->_cellularPowerLogPLMNSearchs;
  v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v842 objects:v1031 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v843;
    do
    {
      v189 = 0;
      do
      {
        if (*v843 != v188)
        {
          objc_enumerationMutation(v185);
        }

        v190 = *(*(&v842 + 1) + 8 * v189);
        PBDataWriterWriteSubmessage();
        ++v189;
      }

      while (v187 != v189);
      v187 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v842 objects:v1031 count:16];
    }

    while (v187);
  }

  v841 = 0u;
  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v191 = self->_cellularPowerLogGSMTxPowers;
  v192 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v838 objects:v1030 count:16];
  if (v192)
  {
    v193 = v192;
    v194 = *v839;
    do
    {
      v195 = 0;
      do
      {
        if (*v839 != v194)
        {
          objc_enumerationMutation(v191);
        }

        v196 = *(*(&v838 + 1) + 8 * v195);
        PBDataWriterWriteSubmessage();
        ++v195;
      }

      while (v193 != v195);
      v193 = [(NSMutableArray *)v191 countByEnumeratingWithState:&v838 objects:v1030 count:16];
    }

    while (v193);
  }

  v837 = 0u;
  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v197 = self->_cellularPowerLogGSMRxRSSIs;
  v198 = [(NSMutableArray *)v197 countByEnumeratingWithState:&v834 objects:v1029 count:16];
  if (v198)
  {
    v199 = v198;
    v200 = *v835;
    do
    {
      v201 = 0;
      do
      {
        if (*v835 != v200)
        {
          objc_enumerationMutation(v197);
        }

        v202 = *(*(&v834 + 1) + 8 * v201);
        PBDataWriterWriteSubmessage();
        ++v201;
      }

      while (v199 != v201);
      v199 = [(NSMutableArray *)v197 countByEnumeratingWithState:&v834 objects:v1029 count:16];
    }

    while (v199);
  }

  v833 = 0u;
  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v203 = self->_cellularPowerLogGSMRABModes;
  v204 = [(NSMutableArray *)v203 countByEnumeratingWithState:&v830 objects:v1028 count:16];
  if (v204)
  {
    v205 = v204;
    v206 = *v831;
    do
    {
      v207 = 0;
      do
      {
        if (*v831 != v206)
        {
          objc_enumerationMutation(v203);
        }

        v208 = *(*(&v830 + 1) + 8 * v207);
        PBDataWriterWriteSubmessage();
        ++v207;
      }

      while (v205 != v207);
      v205 = [(NSMutableArray *)v203 countByEnumeratingWithState:&v830 objects:v1028 count:16];
    }

    while (v205);
  }

  v829 = 0u;
  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v209 = self->_cellularPowerLogGSMRxDiversitys;
  v210 = [(NSMutableArray *)v209 countByEnumeratingWithState:&v826 objects:v1027 count:16];
  if (v210)
  {
    v211 = v210;
    v212 = *v827;
    do
    {
      v213 = 0;
      do
      {
        if (*v827 != v212)
        {
          objc_enumerationMutation(v209);
        }

        v214 = *(*(&v826 + 1) + 8 * v213);
        PBDataWriterWriteSubmessage();
        ++v213;
      }

      while (v211 != v213);
      v211 = [(NSMutableArray *)v209 countByEnumeratingWithState:&v826 objects:v1027 count:16];
    }

    while (v211);
  }

  v825 = 0u;
  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v215 = self->_cellularPowerLogWCDMATxPowers;
  v216 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v822 objects:v1026 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v823;
    do
    {
      v219 = 0;
      do
      {
        if (*v823 != v218)
        {
          objc_enumerationMutation(v215);
        }

        v220 = *(*(&v822 + 1) + 8 * v219);
        PBDataWriterWriteSubmessage();
        ++v219;
      }

      while (v217 != v219);
      v217 = [(NSMutableArray *)v215 countByEnumeratingWithState:&v822 objects:v1026 count:16];
    }

    while (v217);
  }

  v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v221 = self->_cellularPowerLogWCDMARxRSSIs;
  v222 = [(NSMutableArray *)v221 countByEnumeratingWithState:&v818 objects:v1025 count:16];
  if (v222)
  {
    v223 = v222;
    v224 = *v819;
    do
    {
      v225 = 0;
      do
      {
        if (*v819 != v224)
        {
          objc_enumerationMutation(v221);
        }

        v226 = *(*(&v818 + 1) + 8 * v225);
        PBDataWriterWriteSubmessage();
        ++v225;
      }

      while (v223 != v225);
      v223 = [(NSMutableArray *)v221 countByEnumeratingWithState:&v818 objects:v1025 count:16];
    }

    while (v223);
  }

  v817 = 0u;
  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v227 = self->_cellularPowerLogNRSCGRels;
  v228 = [(NSMutableArray *)v227 countByEnumeratingWithState:&v814 objects:v1024 count:16];
  if (v228)
  {
    v229 = v228;
    v230 = *v815;
    do
    {
      v231 = 0;
      do
      {
        if (*v815 != v230)
        {
          objc_enumerationMutation(v227);
        }

        v232 = *(*(&v814 + 1) + 8 * v231);
        PBDataWriterWriteSubmessage();
        ++v231;
      }

      while (v229 != v231);
      v229 = [(NSMutableArray *)v227 countByEnumeratingWithState:&v814 objects:v1024 count:16];
    }

    while (v229);
  }

  v813 = 0u;
  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v233 = self->_cellularPowerLogWCDMARxDiversitys;
  v234 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v810 objects:v1023 count:16];
  if (v234)
  {
    v235 = v234;
    v236 = *v811;
    do
    {
      v237 = 0;
      do
      {
        if (*v811 != v236)
        {
          objc_enumerationMutation(v233);
        }

        v238 = *(*(&v810 + 1) + 8 * v237);
        PBDataWriterWriteSubmessage();
        ++v237;
      }

      while (v235 != v237);
      v235 = [(NSMutableArray *)v233 countByEnumeratingWithState:&v810 objects:v1023 count:16];
    }

    while (v235);
  }

  v809 = 0u;
  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v239 = self->_cellularPowerLogWCDMARABModes;
  v240 = [(NSMutableArray *)v239 countByEnumeratingWithState:&v806 objects:v1022 count:16];
  if (v240)
  {
    v241 = v240;
    v242 = *v807;
    do
    {
      v243 = 0;
      do
      {
        if (*v807 != v242)
        {
          objc_enumerationMutation(v239);
        }

        v244 = *(*(&v806 + 1) + 8 * v243);
        PBDataWriterWriteSubmessage();
        ++v243;
      }

      while (v241 != v243);
      v241 = [(NSMutableArray *)v239 countByEnumeratingWithState:&v806 objects:v1022 count:16];
    }

    while (v241);
  }

  v805 = 0u;
  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v245 = self->_cellularPowerLogWCDMARABTypes;
  v246 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v802 objects:v1021 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v803;
    do
    {
      v249 = 0;
      do
      {
        if (*v803 != v248)
        {
          objc_enumerationMutation(v245);
        }

        v250 = *(*(&v802 + 1) + 8 * v249);
        PBDataWriterWriteSubmessage();
        ++v249;
      }

      while (v247 != v249);
      v247 = [(NSMutableArray *)v245 countByEnumeratingWithState:&v802 objects:v1021 count:16];
    }

    while (v247);
  }

  v801 = 0u;
  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v251 = self->_cellularPowerLogEVDOTxPowers;
  v252 = [(NSMutableArray *)v251 countByEnumeratingWithState:&v798 objects:v1020 count:16];
  if (v252)
  {
    v253 = v252;
    v254 = *v799;
    do
    {
      v255 = 0;
      do
      {
        if (*v799 != v254)
        {
          objc_enumerationMutation(v251);
        }

        v256 = *(*(&v798 + 1) + 8 * v255);
        PBDataWriterWriteSubmessage();
        ++v255;
      }

      while (v253 != v255);
      v253 = [(NSMutableArray *)v251 countByEnumeratingWithState:&v798 objects:v1020 count:16];
    }

    while (v253);
  }

  v797 = 0u;
  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v257 = self->_cellularPowerLogEVDORxRSSIs;
  v258 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v794 objects:v1019 count:16];
  if (v258)
  {
    v259 = v258;
    v260 = *v795;
    do
    {
      v261 = 0;
      do
      {
        if (*v795 != v260)
        {
          objc_enumerationMutation(v257);
        }

        v262 = *(*(&v794 + 1) + 8 * v261);
        PBDataWriterWriteSubmessage();
        ++v261;
      }

      while (v259 != v261);
      v259 = [(NSMutableArray *)v257 countByEnumeratingWithState:&v794 objects:v1019 count:16];
    }

    while (v259);
  }

  v793 = 0u;
  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v263 = self->_cellularPowerLogHybridRABModes;
  v264 = [(NSMutableArray *)v263 countByEnumeratingWithState:&v790 objects:v1018 count:16];
  if (v264)
  {
    v265 = v264;
    v266 = *v791;
    do
    {
      v267 = 0;
      do
      {
        if (*v791 != v266)
        {
          objc_enumerationMutation(v263);
        }

        v268 = *(*(&v790 + 1) + 8 * v267);
        PBDataWriterWriteSubmessage();
        ++v267;
      }

      while (v265 != v267);
      v265 = [(NSMutableArray *)v263 countByEnumeratingWithState:&v790 objects:v1018 count:16];
    }

    while (v265);
  }

  v789 = 0u;
  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v269 = self->_cellularPowerLogEVDORxDiversitys;
  v270 = [(NSMutableArray *)v269 countByEnumeratingWithState:&v786 objects:v1017 count:16];
  if (v270)
  {
    v271 = v270;
    v272 = *v787;
    do
    {
      v273 = 0;
      do
      {
        if (*v787 != v272)
        {
          objc_enumerationMutation(v269);
        }

        v274 = *(*(&v786 + 1) + 8 * v273);
        PBDataWriterWriteSubmessage();
        ++v273;
      }

      while (v271 != v273);
      v271 = [(NSMutableArray *)v269 countByEnumeratingWithState:&v786 objects:v1017 count:16];
    }

    while (v271);
  }

  v785 = 0u;
  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v275 = self->_cellularPowerLogCDMA1XTxPowers;
  v276 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v782 objects:v1016 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v783;
    do
    {
      v279 = 0;
      do
      {
        if (*v783 != v278)
        {
          objc_enumerationMutation(v275);
        }

        v280 = *(*(&v782 + 1) + 8 * v279);
        PBDataWriterWriteSubmessage();
        ++v279;
      }

      while (v277 != v279);
      v277 = [(NSMutableArray *)v275 countByEnumeratingWithState:&v782 objects:v1016 count:16];
    }

    while (v277);
  }

  v781 = 0u;
  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v281 = self->_cellularPowerLogCDMA1XRxRSSIs;
  v282 = [(NSMutableArray *)v281 countByEnumeratingWithState:&v778 objects:v1015 count:16];
  if (v282)
  {
    v283 = v282;
    v284 = *v779;
    do
    {
      v285 = 0;
      do
      {
        if (*v779 != v284)
        {
          objc_enumerationMutation(v281);
        }

        v286 = *(*(&v778 + 1) + 8 * v285);
        PBDataWriterWriteSubmessage();
        ++v285;
      }

      while (v283 != v285);
      v283 = [(NSMutableArray *)v281 countByEnumeratingWithState:&v778 objects:v1015 count:16];
    }

    while (v283);
  }

  v777 = 0u;
  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v287 = self->_cellularPowerLogCDMA1XRABModes;
  v288 = [(NSMutableArray *)v287 countByEnumeratingWithState:&v774 objects:v1014 count:16];
  if (v288)
  {
    v289 = v288;
    v290 = *v775;
    do
    {
      v291 = 0;
      do
      {
        if (*v775 != v290)
        {
          objc_enumerationMutation(v287);
        }

        v292 = *(*(&v774 + 1) + 8 * v291);
        PBDataWriterWriteSubmessage();
        ++v291;
      }

      while (v289 != v291);
      v289 = [(NSMutableArray *)v287 countByEnumeratingWithState:&v774 objects:v1014 count:16];
    }

    while (v289);
  }

  v773 = 0u;
  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v293 = self->_cellularPowerLogCDMA1XRxDiversitys;
  v294 = [(NSMutableArray *)v293 countByEnumeratingWithState:&v770 objects:v1013 count:16];
  if (v294)
  {
    v295 = v294;
    v296 = *v771;
    do
    {
      v297 = 0;
      do
      {
        if (*v771 != v296)
        {
          objc_enumerationMutation(v293);
        }

        v298 = *(*(&v770 + 1) + 8 * v297);
        PBDataWriterWriteSubmessage();
        ++v297;
      }

      while (v295 != v297);
      v295 = [(NSMutableArray *)v293 countByEnumeratingWithState:&v770 objects:v1013 count:16];
    }

    while (v295);
  }

  v769 = 0u;
  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v299 = self->_cellularPowerLogWCDMACDRXConfigs;
  v300 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v766 objects:v1012 count:16];
  if (v300)
  {
    v301 = v300;
    v302 = *v767;
    do
    {
      v303 = 0;
      do
      {
        if (*v767 != v302)
        {
          objc_enumerationMutation(v299);
        }

        v304 = *(*(&v766 + 1) + 8 * v303);
        PBDataWriterWriteSubmessage();
        ++v303;
      }

      while (v301 != v303);
      v301 = [(NSMutableArray *)v299 countByEnumeratingWithState:&v766 objects:v1012 count:16];
    }

    while (v301);
  }

  v765 = 0u;
  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v305 = self->_cellularPowerLogLTECDRXConfigs;
  v306 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v762 objects:v1011 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v763;
    do
    {
      v309 = 0;
      do
      {
        if (*v763 != v308)
        {
          objc_enumerationMutation(v305);
        }

        v310 = *(*(&v762 + 1) + 8 * v309);
        PBDataWriterWriteSubmessage();
        ++v309;
      }

      while (v307 != v309);
      v307 = [(NSMutableArray *)v305 countByEnumeratingWithState:&v762 objects:v1011 count:16];
    }

    while (v307);
  }

  v761 = 0u;
  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v311 = self->_cellularPowerLogWCDMARRCStateChanges;
  v312 = [(NSMutableArray *)v311 countByEnumeratingWithState:&v758 objects:v1010 count:16];
  if (v312)
  {
    v313 = v312;
    v314 = *v759;
    do
    {
      v315 = 0;
      do
      {
        if (*v759 != v314)
        {
          objc_enumerationMutation(v311);
        }

        v316 = *(*(&v758 + 1) + 8 * v315);
        PBDataWriterWriteSubmessage();
        ++v315;
      }

      while (v313 != v315);
      v313 = [(NSMutableArray *)v311 countByEnumeratingWithState:&v758 objects:v1010 count:16];
    }

    while (v313);
  }

  v757 = 0u;
  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v317 = self->_cellularPowerLogLTERRCStateChanges;
  v318 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v754 objects:v1009 count:16];
  if (v318)
  {
    v319 = v318;
    v320 = *v755;
    do
    {
      v321 = 0;
      do
      {
        if (*v755 != v320)
        {
          objc_enumerationMutation(v317);
        }

        v322 = *(*(&v754 + 1) + 8 * v321);
        PBDataWriterWriteSubmessage();
        ++v321;
      }

      while (v319 != v321);
      v319 = [(NSMutableArray *)v317 countByEnumeratingWithState:&v754 objects:v1009 count:16];
    }

    while (v319);
  }

  v753 = 0u;
  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v323 = self->_cellularPowerLogSystemEvents;
  v324 = [(NSMutableArray *)v323 countByEnumeratingWithState:&v750 objects:v1008 count:16];
  if (v324)
  {
    v325 = v324;
    v326 = *v751;
    do
    {
      v327 = 0;
      do
      {
        if (*v751 != v326)
        {
          objc_enumerationMutation(v323);
        }

        v328 = *(*(&v750 + 1) + 8 * v327);
        PBDataWriterWriteSubmessage();
        ++v327;
      }

      while (v325 != v327);
      v325 = [(NSMutableArray *)v323 countByEnumeratingWithState:&v750 objects:v1008 count:16];
    }

    while (v325);
  }

  v749 = 0u;
  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v329 = self->_cellularPowerLogRATReselectionEvents;
  v330 = [(NSMutableArray *)v329 countByEnumeratingWithState:&v746 objects:v1007 count:16];
  if (v330)
  {
    v331 = v330;
    v332 = *v747;
    do
    {
      v333 = 0;
      do
      {
        if (*v747 != v332)
        {
          objc_enumerationMutation(v329);
        }

        v334 = *(*(&v746 + 1) + 8 * v333);
        PBDataWriterWriteSubmessage();
        ++v333;
      }

      while (v331 != v333);
      v331 = [(NSMutableArray *)v329 countByEnumeratingWithState:&v746 objects:v1007 count:16];
    }

    while (v331);
  }

  v745 = 0u;
  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v335 = self->_cellularPowerLogRATRedirectionEvents;
  v336 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v742 objects:v1006 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v743;
    do
    {
      v339 = 0;
      do
      {
        if (*v743 != v338)
        {
          objc_enumerationMutation(v335);
        }

        v340 = *(*(&v742 + 1) + 8 * v339);
        PBDataWriterWriteSubmessage();
        ++v339;
      }

      while (v337 != v339);
      v337 = [(NSMutableArray *)v335 countByEnumeratingWithState:&v742 objects:v1006 count:16];
    }

    while (v337);
  }

  v741 = 0u;
  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v341 = self->_cellularPowerLogGSMRRCStateChanges;
  v342 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v738 objects:v1005 count:16];
  if (v342)
  {
    v343 = v342;
    v344 = *v739;
    do
    {
      v345 = 0;
      do
      {
        if (*v739 != v344)
        {
          objc_enumerationMutation(v341);
        }

        v346 = *(*(&v738 + 1) + 8 * v345);
        PBDataWriterWriteSubmessage();
        ++v345;
      }

      while (v343 != v345);
      v343 = [(NSMutableArray *)v341 countByEnumeratingWithState:&v738 objects:v1005 count:16];
    }

    while (v343);
  }

  v737 = 0u;
  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v347 = self->_cellularPowerLogCDMA1XRRCStateChanges;
  v348 = [(NSMutableArray *)v347 countByEnumeratingWithState:&v734 objects:v1004 count:16];
  if (v348)
  {
    v349 = v348;
    v350 = *v735;
    do
    {
      v351 = 0;
      do
      {
        if (*v735 != v350)
        {
          objc_enumerationMutation(v347);
        }

        v352 = *(*(&v734 + 1) + 8 * v351);
        PBDataWriterWriteSubmessage();
        ++v351;
      }

      while (v349 != v351);
      v349 = [(NSMutableArray *)v347 countByEnumeratingWithState:&v734 objects:v1004 count:16];
    }

    while (v349);
  }

  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v353 = self->_cellularPowerLogHybridRRCStateChanges;
  v354 = [(NSMutableArray *)v353 countByEnumeratingWithState:&v730 objects:v1003 count:16];
  if (v354)
  {
    v355 = v354;
    v356 = *v731;
    do
    {
      v357 = 0;
      do
      {
        if (*v731 != v356)
        {
          objc_enumerationMutation(v353);
        }

        v358 = *(*(&v730 + 1) + 8 * v357);
        PBDataWriterWriteSubmessage();
        ++v357;
      }

      while (v355 != v357);
      v355 = [(NSMutableArray *)v353 countByEnumeratingWithState:&v730 objects:v1003 count:16];
    }

    while (v355);
  }

  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v359 = self->_cellularPowerLogServiceStateEvents;
  v360 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v726 objects:v1002 count:16];
  if (v360)
  {
    v361 = v360;
    v362 = *v727;
    do
    {
      v363 = 0;
      do
      {
        if (*v727 != v362)
        {
          objc_enumerationMutation(v359);
        }

        v364 = *(*(&v726 + 1) + 8 * v363);
        PBDataWriterWriteSubmessage();
        ++v363;
      }

      while (v361 != v363);
      v361 = [(NSMutableArray *)v359 countByEnumeratingWithState:&v726 objects:v1002 count:16];
    }

    while (v361);
  }

  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v365 = self->_cellularPowerLogPLMNScanEvents;
  v366 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v722 objects:v1001 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v723;
    do
    {
      v369 = 0;
      do
      {
        if (*v723 != v368)
        {
          objc_enumerationMutation(v365);
        }

        v370 = *(*(&v722 + 1) + 8 * v369);
        PBDataWriterWriteSubmessage();
        ++v369;
      }

      while (v367 != v369);
      v367 = [(NSMutableArray *)v365 countByEnumeratingWithState:&v722 objects:v1001 count:16];
    }

    while (v367);
  }

  v721 = 0u;
  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v371 = self->_cellularPowerLogPLMNSearchEvents;
  v372 = [(NSMutableArray *)v371 countByEnumeratingWithState:&v718 objects:v1000 count:16];
  if (v372)
  {
    v373 = v372;
    v374 = *v719;
    do
    {
      v375 = 0;
      do
      {
        if (*v719 != v374)
        {
          objc_enumerationMutation(v371);
        }

        v376 = *(*(&v718 + 1) + 8 * v375);
        PBDataWriterWriteSubmessage();
        ++v375;
      }

      while (v373 != v375);
      v373 = [(NSMutableArray *)v371 countByEnumeratingWithState:&v718 objects:v1000 count:16];
    }

    while (v373);
  }

  v717 = 0u;
  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v377 = self->_cellularPowerLogNRSARRCStateChanges;
  v378 = [(NSMutableArray *)v377 countByEnumeratingWithState:&v714 objects:v999 count:16];
  if (v378)
  {
    v379 = v378;
    v380 = *v715;
    do
    {
      v381 = 0;
      do
      {
        if (*v715 != v380)
        {
          objc_enumerationMutation(v377);
        }

        v382 = *(*(&v714 + 1) + 8 * v381);
        PBDataWriterWriteSubmessage();
        ++v381;
      }

      while (v379 != v381);
      v379 = [(NSMutableArray *)v377 countByEnumeratingWithState:&v714 objects:v999 count:16];
    }

    while (v379);
  }

  v713 = 0u;
  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v383 = self->_cellularPowerLogNRNSAENDCEvents;
  v384 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v710 objects:v998 count:16];
  if (v384)
  {
    v385 = v384;
    v386 = *v711;
    do
    {
      v387 = 0;
      do
      {
        if (*v711 != v386)
        {
          objc_enumerationMutation(v383);
        }

        v388 = *(*(&v710 + 1) + 8 * v387);
        PBDataWriterWriteSubmessage();
        ++v387;
      }

      while (v385 != v387);
      v385 = [(NSMutableArray *)v383 countByEnumeratingWithState:&v710 objects:v998 count:16];
    }

    while (v385);
  }

  v709 = 0u;
  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v389 = self->_cellularPowerLogNRCDRXConfigs;
  v390 = [(NSMutableArray *)v389 countByEnumeratingWithState:&v706 objects:v997 count:16];
  if (v390)
  {
    v391 = v390;
    v392 = *v707;
    do
    {
      v393 = 0;
      do
      {
        if (*v707 != v392)
        {
          objc_enumerationMutation(v389);
        }

        v394 = *(*(&v706 + 1) + 8 * v393);
        PBDataWriterWriteSubmessage();
        ++v393;
      }

      while (v391 != v393);
      v391 = [(NSMutableArray *)v389 countByEnumeratingWithState:&v706 objects:v997 count:16];
    }

    while (v391);
  }

  v705 = 0u;
  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v395 = self->_cellularPowerLogNRsub6BWPs;
  v396 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v702 objects:v996 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v703;
    do
    {
      v399 = 0;
      do
      {
        if (*v703 != v398)
        {
          objc_enumerationMutation(v395);
        }

        v400 = *(*(&v702 + 1) + 8 * v399);
        PBDataWriterWriteSubmessage();
        ++v399;
      }

      while (v397 != v399);
      v397 = [(NSMutableArray *)v395 countByEnumeratingWithState:&v702 objects:v996 count:16];
    }

    while (v397);
  }

  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v401 = self->_cellularPowerLogRFTunerStatsHists;
  v402 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v698 objects:v995 count:16];
  if (v402)
  {
    v403 = v402;
    v404 = *v699;
    do
    {
      v405 = 0;
      do
      {
        if (*v699 != v404)
        {
          objc_enumerationMutation(v401);
        }

        v406 = *(*(&v698 + 1) + 8 * v405);
        PBDataWriterWriteSubmessage();
        ++v405;
      }

      while (v403 != v405);
      v403 = [(NSMutableArray *)v401 countByEnumeratingWithState:&v698 objects:v995 count:16];
    }

    while (v403);
  }

  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v407 = self->_cellularPowerLogNRsub6CASCCConfigureds;
  v408 = [(NSMutableArray *)v407 countByEnumeratingWithState:&v694 objects:v994 count:16];
  if (v408)
  {
    v409 = v408;
    v410 = *v695;
    do
    {
      v411 = 0;
      do
      {
        if (*v695 != v410)
        {
          objc_enumerationMutation(v407);
        }

        v412 = *(*(&v694 + 1) + 8 * v411);
        PBDataWriterWriteSubmessage();
        ++v411;
      }

      while (v409 != v411);
      v409 = [(NSMutableArray *)v407 countByEnumeratingWithState:&v694 objects:v994 count:16];
    }

    while (v409);
  }

  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v413 = self->_cellularPowerLogNRsub6CASCCActivateds;
  v414 = [(NSMutableArray *)v413 countByEnumeratingWithState:&v690 objects:v993 count:16];
  if (v414)
  {
    v415 = v414;
    v416 = *v691;
    do
    {
      v417 = 0;
      do
      {
        if (*v691 != v416)
        {
          objc_enumerationMutation(v413);
        }

        v418 = *(*(&v690 + 1) + 8 * v417);
        PBDataWriterWriteSubmessage();
        ++v417;
      }

      while (v415 != v417);
      v415 = [(NSMutableArray *)v413 countByEnumeratingWithState:&v690 objects:v993 count:16];
    }

    while (v415);
  }

  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v419 = self->_cellularPowerLogNRsub6RxTxs;
  v420 = [(NSMutableArray *)v419 countByEnumeratingWithState:&v686 objects:v992 count:16];
  if (v420)
  {
    v421 = v420;
    v422 = *v687;
    do
    {
      v423 = 0;
      do
      {
        if (*v687 != v422)
        {
          objc_enumerationMutation(v419);
        }

        v424 = *(*(&v686 + 1) + 8 * v423);
        PBDataWriterWriteSubmessage();
        ++v423;
      }

      while (v421 != v423);
      v421 = [(NSMutableArray *)v419 countByEnumeratingWithState:&v686 objects:v992 count:16];
    }

    while (v421);
  }

  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v425 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  v426 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v682 objects:v991 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v683;
    do
    {
      v429 = 0;
      do
      {
        if (*v683 != v428)
        {
          objc_enumerationMutation(v425);
        }

        v430 = *(*(&v682 + 1) + 8 * v429);
        PBDataWriterWriteSubmessage();
        ++v429;
      }

      while (v427 != v429);
      v427 = [(NSMutableArray *)v425 countByEnumeratingWithState:&v682 objects:v991 count:16];
    }

    while (v427);
  }

  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v431 = self->_cellularPowerLogNRsub6DLTBSs;
  v432 = [(NSMutableArray *)v431 countByEnumeratingWithState:&v678 objects:v990 count:16];
  if (v432)
  {
    v433 = v432;
    v434 = *v679;
    do
    {
      v435 = 0;
      do
      {
        if (*v679 != v434)
        {
          objc_enumerationMutation(v431);
        }

        v436 = *(*(&v678 + 1) + 8 * v435);
        PBDataWriterWriteSubmessage();
        ++v435;
      }

      while (v433 != v435);
      v433 = [(NSMutableArray *)v431 countByEnumeratingWithState:&v678 objects:v990 count:16];
    }

    while (v433);
  }

  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v437 = self->_cellularPowerLogNRsub6RSRPs;
  v438 = [(NSMutableArray *)v437 countByEnumeratingWithState:&v674 objects:v989 count:16];
  if (v438)
  {
    v439 = v438;
    v440 = *v675;
    do
    {
      v441 = 0;
      do
      {
        if (*v675 != v440)
        {
          objc_enumerationMutation(v437);
        }

        v442 = *(*(&v674 + 1) + 8 * v441);
        PBDataWriterWriteSubmessage();
        ++v441;
      }

      while (v439 != v441);
      v439 = [(NSMutableArray *)v437 countByEnumeratingWithState:&v674 objects:v989 count:16];
    }

    while (v439);
  }

  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v443 = self->_cellularPowerLogNRsub6ULCAStates;
  v444 = [(NSMutableArray *)v443 countByEnumeratingWithState:&v670 objects:v988 count:16];
  if (v444)
  {
    v445 = v444;
    v446 = *v671;
    do
    {
      v447 = 0;
      do
      {
        if (*v671 != v446)
        {
          objc_enumerationMutation(v443);
        }

        v448 = *(*(&v670 + 1) + 8 * v447);
        PBDataWriterWriteSubmessage();
        ++v447;
      }

      while (v445 != v447);
      v445 = [(NSMutableArray *)v443 countByEnumeratingWithState:&v670 objects:v988 count:16];
    }

    while (v445);
  }

  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v449 = self->_cellularPowerLogNRsub6TxPowers;
  v450 = [(NSMutableArray *)v449 countByEnumeratingWithState:&v666 objects:v987 count:16];
  if (v450)
  {
    v451 = v450;
    v452 = *v667;
    do
    {
      v453 = 0;
      do
      {
        if (*v667 != v452)
        {
          objc_enumerationMutation(v449);
        }

        v454 = *(*(&v666 + 1) + 8 * v453);
        PBDataWriterWriteSubmessage();
        ++v453;
      }

      while (v451 != v453);
      v451 = [(NSMutableArray *)v449 countByEnumeratingWithState:&v666 objects:v987 count:16];
    }

    while (v451);
  }

  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v455 = self->_cellularPowerLogNRsub6RxDiversitys;
  v456 = [(NSMutableArray *)v455 countByEnumeratingWithState:&v662 objects:v986 count:16];
  if (v456)
  {
    v457 = v456;
    v458 = *v663;
    do
    {
      v459 = 0;
      do
      {
        if (*v663 != v458)
        {
          objc_enumerationMutation(v455);
        }

        v460 = *(*(&v662 + 1) + 8 * v459);
        PBDataWriterWriteSubmessage();
        ++v459;
      }

      while (v457 != v459);
      v457 = [(NSMutableArray *)v455 countByEnumeratingWithState:&v662 objects:v986 count:16];
    }

    while (v457);
  }

  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v461 = self->_cellularPowerLogSPMIs;
  v462 = [(NSMutableArray *)v461 countByEnumeratingWithState:&v658 objects:v985 count:16];
  if (v462)
  {
    v463 = v462;
    v464 = *v659;
    do
    {
      v465 = 0;
      do
      {
        if (*v659 != v464)
        {
          objc_enumerationMutation(v461);
        }

        v466 = *(*(&v658 + 1) + 8 * v465);
        PBDataWriterWriteSubmessage();
        ++v465;
      }

      while (v463 != v465);
      v463 = [(NSMutableArray *)v461 countByEnumeratingWithState:&v658 objects:v985 count:16];
    }

    while (v463);
  }

  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v467 = self->_cellularPowerLogNRmmWaveBWPs;
  v468 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v654 objects:v984 count:16];
  if (v468)
  {
    v469 = v468;
    v470 = *v655;
    do
    {
      v471 = 0;
      do
      {
        if (*v655 != v470)
        {
          objc_enumerationMutation(v467);
        }

        v472 = *(*(&v654 + 1) + 8 * v471);
        PBDataWriterWriteSubmessage();
        ++v471;
      }

      while (v469 != v471);
      v469 = [(NSMutableArray *)v467 countByEnumeratingWithState:&v654 objects:v984 count:16];
    }

    while (v469);
  }

  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v473 = self->_cellularPowerLogNRmmWaveAntennaPanels;
  v474 = [(NSMutableArray *)v473 countByEnumeratingWithState:&v650 objects:v983 count:16];
  if (v474)
  {
    v475 = v474;
    v476 = *v651;
    do
    {
      v477 = 0;
      do
      {
        if (*v651 != v476)
        {
          objc_enumerationMutation(v473);
        }

        v478 = *(*(&v650 + 1) + 8 * v477);
        PBDataWriterWriteSubmessage();
        ++v477;
      }

      while (v475 != v477);
      v475 = [(NSMutableArray *)v473 countByEnumeratingWithState:&v650 objects:v983 count:16];
    }

    while (v475);
  }

  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v479 = self->_cellularPowerLogNRFRCoverages;
  v480 = [(NSMutableArray *)v479 countByEnumeratingWithState:&v646 objects:v982 count:16];
  if (v480)
  {
    v481 = v480;
    v482 = *v647;
    do
    {
      v483 = 0;
      do
      {
        if (*v647 != v482)
        {
          objc_enumerationMutation(v479);
        }

        v484 = *(*(&v646 + 1) + 8 * v483);
        PBDataWriterWriteSubmessage();
        ++v483;
      }

      while (v481 != v483);
      v481 = [(NSMutableArray *)v479 countByEnumeratingWithState:&v646 objects:v982 count:16];
    }

    while (v481);
  }

  v644 = 0u;
  v645 = 0u;
  v642 = 0u;
  v643 = 0u;
  v485 = self->_cellularPowerLogNRmmWaveBeamIDs;
  v486 = [(NSMutableArray *)v485 countByEnumeratingWithState:&v642 objects:v981 count:16];
  if (v486)
  {
    v487 = v486;
    v488 = *v643;
    do
    {
      v489 = 0;
      do
      {
        if (*v643 != v488)
        {
          objc_enumerationMutation(v485);
        }

        v490 = *(*(&v642 + 1) + 8 * v489);
        PBDataWriterWriteSubmessage();
        ++v489;
      }

      while (v487 != v489);
      v487 = [(NSMutableArray *)v485 countByEnumeratingWithState:&v642 objects:v981 count:16];
    }

    while (v487);
  }

  v640 = 0u;
  v641 = 0u;
  v638 = 0u;
  v639 = 0u;
  v491 = self->_cellularPowerLogSFTStates;
  v492 = [(NSMutableArray *)v491 countByEnumeratingWithState:&v638 objects:v980 count:16];
  if (v492)
  {
    v493 = v492;
    v494 = *v639;
    do
    {
      v495 = 0;
      do
      {
        if (*v639 != v494)
        {
          objc_enumerationMutation(v491);
        }

        v496 = *(*(&v638 + 1) + 8 * v495);
        PBDataWriterWriteSubmessage();
        ++v495;
      }

      while (v493 != v495);
      v493 = [(NSMutableArray *)v491 countByEnumeratingWithState:&v638 objects:v980 count:16];
    }

    while (v493);
  }

  v636 = 0u;
  v637 = 0u;
  v634 = 0u;
  v635 = 0u;
  v497 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  v498 = [(NSMutableArray *)v497 countByEnumeratingWithState:&v634 objects:v979 count:16];
  if (v498)
  {
    v499 = v498;
    v500 = *v635;
    do
    {
      v501 = 0;
      do
      {
        if (*v635 != v500)
        {
          objc_enumerationMutation(v497);
        }

        v502 = *(*(&v634 + 1) + 8 * v501);
        PBDataWriterWriteSubmessage();
        ++v501;
      }

      while (v499 != v501);
      v499 = [(NSMutableArray *)v497 countByEnumeratingWithState:&v634 objects:v979 count:16];
    }

    while (v499);
  }

  v632 = 0u;
  v633 = 0u;
  v630 = 0u;
  v631 = 0u;
  v503 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  v504 = [(NSMutableArray *)v503 countByEnumeratingWithState:&v630 objects:v978 count:16];
  if (v504)
  {
    v505 = v504;
    v506 = *v631;
    do
    {
      v507 = 0;
      do
      {
        if (*v631 != v506)
        {
          objc_enumerationMutation(v503);
        }

        v508 = *(*(&v630 + 1) + 8 * v507);
        PBDataWriterWriteSubmessage();
        ++v507;
      }

      while (v505 != v507);
      v505 = [(NSMutableArray *)v503 countByEnumeratingWithState:&v630 objects:v978 count:16];
    }

    while (v505);
  }

  v628 = 0u;
  v629 = 0u;
  v626 = 0u;
  v627 = 0u;
  v509 = self->_cellularPowerLogNRmmWaveRxTxs;
  v510 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v626 objects:v977 count:16];
  if (v510)
  {
    v511 = v510;
    v512 = *v627;
    do
    {
      v513 = 0;
      do
      {
        if (*v627 != v512)
        {
          objc_enumerationMutation(v509);
        }

        v514 = *(*(&v626 + 1) + 8 * v513);
        PBDataWriterWriteSubmessage();
        ++v513;
      }

      while (v511 != v513);
      v511 = [(NSMutableArray *)v509 countByEnumeratingWithState:&v626 objects:v977 count:16];
    }

    while (v511);
  }

  v624 = 0u;
  v625 = 0u;
  v622 = 0u;
  v623 = 0u;
  v515 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  v516 = [(NSMutableArray *)v515 countByEnumeratingWithState:&v622 objects:v976 count:16];
  if (v516)
  {
    v517 = v516;
    v518 = *v623;
    do
    {
      v519 = 0;
      do
      {
        if (*v623 != v518)
        {
          objc_enumerationMutation(v515);
        }

        v520 = *(*(&v622 + 1) + 8 * v519);
        PBDataWriterWriteSubmessage();
        ++v519;
      }

      while (v517 != v519);
      v517 = [(NSMutableArray *)v515 countByEnumeratingWithState:&v622 objects:v976 count:16];
    }

    while (v517);
  }

  v620 = 0u;
  v621 = 0u;
  v618 = 0u;
  v619 = 0u;
  v521 = self->_cellularPowerLogNRmmWaveDLTBSs;
  v522 = [(NSMutableArray *)v521 countByEnumeratingWithState:&v618 objects:v975 count:16];
  if (v522)
  {
    v523 = v522;
    v524 = *v619;
    do
    {
      v525 = 0;
      do
      {
        if (*v619 != v524)
        {
          objc_enumerationMutation(v521);
        }

        v526 = *(*(&v618 + 1) + 8 * v525);
        PBDataWriterWriteSubmessage();
        ++v525;
      }

      while (v523 != v525);
      v523 = [(NSMutableArray *)v521 countByEnumeratingWithState:&v618 objects:v975 count:16];
    }

    while (v523);
  }

  v616 = 0u;
  v617 = 0u;
  v614 = 0u;
  v615 = 0u;
  v527 = self->_cellularPowerLogNRMmWaveRSRPs;
  v528 = [(NSMutableArray *)v527 countByEnumeratingWithState:&v614 objects:v974 count:16];
  if (v528)
  {
    v529 = v528;
    v530 = *v615;
    do
    {
      v531 = 0;
      do
      {
        if (*v615 != v530)
        {
          objc_enumerationMutation(v527);
        }

        v532 = *(*(&v614 + 1) + 8 * v531);
        PBDataWriterWriteSubmessage();
        ++v531;
      }

      while (v529 != v531);
      v529 = [(NSMutableArray *)v527 countByEnumeratingWithState:&v614 objects:v974 count:16];
    }

    while (v529);
  }

  v612 = 0u;
  v613 = 0u;
  v610 = 0u;
  v611 = 0u;
  v533 = self->_cellularPowerLogSFTRxTxs;
  v534 = [(NSMutableArray *)v533 countByEnumeratingWithState:&v610 objects:v973 count:16];
  if (v534)
  {
    v535 = v534;
    v536 = *v611;
    do
    {
      v537 = 0;
      do
      {
        if (*v611 != v536)
        {
          objc_enumerationMutation(v533);
        }

        v538 = *(*(&v610 + 1) + 8 * v537);
        PBDataWriterWriteSubmessage();
        ++v537;
      }

      while (v535 != v537);
      v535 = [(NSMutableArray *)v533 countByEnumeratingWithState:&v610 objects:v973 count:16];
    }

    while (v535);
  }

  v608 = 0u;
  v609 = 0u;
  v606 = 0u;
  v607 = 0u;
  v539 = self->_cellularPowerLogNRMmWaveTxPowers;
  v540 = [(NSMutableArray *)v539 countByEnumeratingWithState:&v606 objects:v972 count:16];
  if (v540)
  {
    v541 = v540;
    v542 = *v607;
    do
    {
      v543 = 0;
      do
      {
        if (*v607 != v542)
        {
          objc_enumerationMutation(v539);
        }

        v544 = *(*(&v606 + 1) + 8 * v543);
        PBDataWriterWriteSubmessage();
        ++v543;
      }

      while (v541 != v543);
      v541 = [(NSMutableArray *)v539 countByEnumeratingWithState:&v606 objects:v972 count:16];
    }

    while (v541);
  }

  v604 = 0u;
  v605 = 0u;
  v602 = 0u;
  v603 = 0u;
  v545 = self->_cellularPowerLogNRMmWaveULCAStates;
  v546 = [(NSMutableArray *)v545 countByEnumeratingWithState:&v602 objects:v971 count:16];
  if (v546)
  {
    v547 = v546;
    v548 = *v603;
    do
    {
      v549 = 0;
      do
      {
        if (*v603 != v548)
        {
          objc_enumerationMutation(v545);
        }

        v550 = *(*(&v602 + 1) + 8 * v549);
        PBDataWriterWriteSubmessage();
        ++v549;
      }

      while (v547 != v549);
      v547 = [(NSMutableArray *)v545 countByEnumeratingWithState:&v602 objects:v971 count:16];
    }

    while (v547);
  }

  v600 = 0u;
  v601 = 0u;
  v598 = 0u;
  v599 = 0u;
  v551 = self->_cellularPowerLogNRsub6BWPSCCs;
  v552 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v598 objects:v970 count:16];
  if (v552)
  {
    v553 = v552;
    v554 = *v599;
    do
    {
      v555 = 0;
      do
      {
        if (*v599 != v554)
        {
          objc_enumerationMutation(v551);
        }

        v556 = *(*(&v598 + 1) + 8 * v555);
        PBDataWriterWriteSubmessage();
        ++v555;
      }

      while (v553 != v555);
      v553 = [(NSMutableArray *)v551 countByEnumeratingWithState:&v598 objects:v970 count:16];
    }

    while (v553);
  }

  v596 = 0u;
  v597 = 0u;
  v594 = 0u;
  v595 = 0u;
  v557 = self->_cellularPowerLogNRmmWaveBWPSCCs;
  v558 = [(NSMutableArray *)v557 countByEnumeratingWithState:&v594 objects:v969 count:16];
  if (v558)
  {
    v559 = v558;
    v560 = *v595;
    do
    {
      v561 = 0;
      do
      {
        if (*v595 != v560)
        {
          objc_enumerationMutation(v557);
        }

        v562 = *(*(&v594 + 1) + 8 * v561);
        PBDataWriterWriteSubmessage();
        ++v561;
      }

      while (v559 != v561);
      v559 = [(NSMutableArray *)v557 countByEnumeratingWithState:&v594 objects:v969 count:16];
    }

    while (v559);
  }

  v592 = 0u;
  v593 = 0u;
  v590 = 0u;
  v591 = 0u;
  v563 = self->_cellularPowerLogNRDCEvents;
  v564 = [(NSMutableArray *)v563 countByEnumeratingWithState:&v590 objects:v968 count:16];
  if (v564)
  {
    v565 = v564;
    v566 = *v591;
    do
    {
      v567 = 0;
      do
      {
        if (*v591 != v566)
        {
          objc_enumerationMutation(v563);
        }

        v568 = *(*(&v590 + 1) + 8 * v567);
        PBDataWriterWriteSubmessage();
        ++v567;
      }

      while (v565 != v567);
      v565 = [(NSMutableArray *)v563 countByEnumeratingWithState:&v590 objects:v968 count:16];
    }

    while (v565);
  }

  v588 = 0u;
  v589 = 0u;
  v586 = 0u;
  v587 = 0u;
  v569 = self->_cellularPowerLogWUSs;
  v570 = [(NSMutableArray *)v569 countByEnumeratingWithState:&v586 objects:v967 count:16];
  if (v570)
  {
    v571 = v570;
    v572 = *v587;
    do
    {
      v573 = 0;
      do
      {
        if (*v587 != v572)
        {
          objc_enumerationMutation(v569);
        }

        v574 = *(*(&v586 + 1) + 8 * v573);
        PBDataWriterWriteSubmessage();
        ++v573;
      }

      while (v571 != v573);
      v571 = [(NSMutableArray *)v569 countByEnumeratingWithState:&v586 objects:v967 count:16];
    }

    while (v571);
  }

  v584 = 0u;
  v585 = 0u;
  v582 = 0u;
  v583 = 0u;
  v575 = self->_cellularPowerLogNRsub6BWPSAs;
  v576 = [(NSMutableArray *)v575 countByEnumeratingWithState:&v582 objects:v966 count:16];
  if (v576)
  {
    v577 = v576;
    v578 = *v583;
    do
    {
      v579 = 0;
      do
      {
        if (*v583 != v578)
        {
          objc_enumerationMutation(v575);
        }

        v580 = *(*(&v582 + 1) + 8 * v579);
        PBDataWriterWriteSubmessage();
        ++v579;
      }

      while (v577 != v579);
      v577 = [(NSMutableArray *)v575 countByEnumeratingWithState:&v582 objects:v966 count:16];
    }

    while (v577);
  }

  v581 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v388 = a3;
  if ([(AWDMETRICSCellularPowerLog *)self cellularPerClientProfileTriggerCountsCount])
  {
    [v388 clearCellularPerClientProfileTriggerCounts];
    v4 = [(AWDMETRICSCellularPowerLog *)self cellularPerClientProfileTriggerCountsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(AWDMETRICSCellularPowerLog *)self cellularPerClientProfileTriggerCountAtIndex:i];
        [v388 addCellularPerClientProfileTriggerCount:v7];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularNrSDMActivationsCount])
  {
    [v388 clearCellularNrSDMActivations];
    v8 = [(AWDMETRICSCellularPowerLog *)self cellularNrSDMActivationsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(AWDMETRICSCellularPowerLog *)self cellularNrSDMActivationAtIndex:j];
        [v388 addCellularNrSDMActivation:v11];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularNrSdmEndcReleasesCount])
  {
    [v388 clearCellularNrSdmEndcReleases];
    v12 = [(AWDMETRICSCellularPowerLog *)self cellularNrSdmEndcReleasesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(AWDMETRICSCellularPowerLog *)self cellularNrSdmEndcReleaseAtIndex:k];
        [v388 addCellularNrSdmEndcRelease:v15];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularDynamicRatSelectionsCount])
  {
    [v388 clearCellularDynamicRatSelections];
    v16 = [(AWDMETRICSCellularPowerLog *)self cellularDynamicRatSelectionsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(AWDMETRICSCellularPowerLog *)self cellularDynamicRatSelectionAtIndex:m];
        [v388 addCellularDynamicRatSelection:v19];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularRfTunerHistsCount])
  {
    [v388 clearCellularRfTunerHists];
    v20 = [(AWDMETRICSCellularPowerLog *)self cellularRfTunerHistsCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(AWDMETRICSCellularPowerLog *)self cellularRfTunerHistAtIndex:n];
        [v388 addCellularRfTunerHist:v23];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogXOShutdownsCount])
  {
    [v388 clearCellularPowerLogXOShutdowns];
    v24 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogXOShutdownsCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogXOShutdownAtIndex:ii];
        [v388 addCellularPowerLogXOShutdown:v27];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSPerfLevelsCount])
  {
    [v388 clearCellularPowerLogAPPSPerfLevels];
    v28 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSPerfLevelsCount];
    if (v28)
    {
      v29 = v28;
      for (jj = 0; jj != v29; ++jj)
      {
        v31 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSPerfLevelsAtIndex:jj];
        [v388 addCellularPowerLogAPPSPerfLevels:v31];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSCXOShutdownsCount])
  {
    [v388 clearCellularPowerLogAPPSCXOShutdowns];
    v32 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSCXOShutdownsCount];
    if (v32)
    {
      v33 = v32;
      for (kk = 0; kk != v33; ++kk)
      {
        v35 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSCXOShutdownAtIndex:kk];
        [v388 addCellularPowerLogAPPSCXOShutdown:v35];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSSleepVetosCount])
  {
    [v388 clearCellularPowerLogAPPSSleepVetos];
    v36 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSSleepVetosCount];
    if (v36)
    {
      v37 = v36;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAPPSSleepVetoAtIndex:mm];
        [v388 addCellularPowerLogAPPSSleepVeto:v39];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogMCPMSleepVetosCount])
  {
    [v388 clearCellularPowerLogMCPMSleepVetos];
    v40 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMCPMSleepVetosCount];
    if (v40)
    {
      v41 = v40;
      for (nn = 0; nn != v41; ++nn)
      {
        v43 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMCPMSleepVetoAtIndex:nn];
        [v388 addCellularPowerLogMCPMSleepVeto:v43];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogMPSSPerfLevelsCount])
  {
    [v388 clearCellularPowerLogMPSSPerfLevels];
    v44 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMPSSPerfLevelsCount];
    if (v44)
    {
      v45 = v44;
      for (i1 = 0; i1 != v45; ++i1)
      {
        v47 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogMPSSPerfLevelsAtIndex:i1];
        [v388 addCellularPowerLogMPSSPerfLevels:v47];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGPSStatesCount])
  {
    [v388 clearCellularPowerLogGPSStates];
    v48 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGPSStatesCount];
    if (v48)
    {
      v49 = v48;
      for (i2 = 0; i2 != v49; ++i2)
      {
        v51 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGPSStatesAtIndex:i2];
        [v388 addCellularPowerLogGPSStates:v51];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogAOPUARTStatesCount])
  {
    [v388 clearCellularPowerLogAOPUARTStates];
    v52 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAOPUARTStatesCount];
    if (v52)
    {
      v53 = v52;
      for (i3 = 0; i3 != v53; ++i3)
      {
        v55 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogAOPUARTStatesAtIndex:i3];
        [v388 addCellularPowerLogAOPUARTStates:v55];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWLANUARTStatesCount])
  {
    [v388 clearCellularPowerLogWLANUARTStates];
    v56 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWLANUARTStatesCount];
    if (v56)
    {
      v57 = v56;
      for (i4 = 0; i4 != v57; ++i4)
      {
        v59 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWLANUARTStatesAtIndex:i4];
        [v388 addCellularPowerLogWLANUARTStates:v59];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPCIeStatesCount])
  {
    [v388 clearCellularPowerLogPCIeStates];
    v60 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPCIeStatesCount];
    if (v60)
    {
      v61 = v60;
      for (i5 = 0; i5 != v61; ++i5)
      {
        v63 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPCIeStatesAtIndex:i5];
        [v388 addCellularPowerLogPCIeStates:v63];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogL1SleepStatesCount])
  {
    [v388 clearCellularPowerLogL1SleepStates];
    v64 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogL1SleepStatesCount];
    if (v64)
    {
      v65 = v64;
      for (i6 = 0; i6 != v65; ++i6)
      {
        v67 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogL1SleepStatesAtIndex:i6];
        [v388 addCellularPowerLogL1SleepStates:v67];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEConfiguredCASCCStatesCount])
  {
    [v388 clearCellularPowerLogLTEConfiguredCASCCStates];
    v68 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEConfiguredCASCCStatesCount];
    if (v68)
    {
      v69 = v68;
      for (i7 = 0; i7 != v69; ++i7)
      {
        v71 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEConfiguredCASCCStatesAtIndex:i7];
        [v388 addCellularPowerLogLTEConfiguredCASCCStates:v71];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEActivatedCASCCStatesCount])
  {
    [v388 clearCellularPowerLogLTEActivatedCASCCStates];
    v72 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEActivatedCASCCStatesCount];
    if (v72)
    {
      v73 = v72;
      for (i8 = 0; i8 != v73; ++i8)
      {
        v75 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEActivatedCASCCStatesAtIndex:i8];
        [v388 addCellularPowerLogLTEActivatedCASCCStates:v75];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxTxActivityStatesCount])
  {
    [v388 clearCellularPowerLogLTERxTxActivityStates];
    v76 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxTxActivityStatesCount];
    if (v76)
    {
      v77 = v76;
      for (i9 = 0; i9 != v77; ++i9)
      {
        v79 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxTxActivityStatesAtIndex:i9];
        [v388 addCellularPowerLogLTERxTxActivityStates:v79];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECarrierComponentInfosCount])
  {
    [v388 clearCellularPowerLogLTECarrierComponentInfos];
    v80 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECarrierComponentInfosCount];
    if (v80)
    {
      v81 = v80;
      for (i10 = 0; i10 != v81; ++i10)
      {
        v83 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECarrierComponentInfoAtIndex:i10];
        [v388 addCellularPowerLogLTECarrierComponentInfo:v83];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEAggregatedDLTBSsCount])
  {
    [v388 clearCellularPowerLogLTEAggregatedDLTBSs];
    v84 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEAggregatedDLTBSsCount];
    if (v84)
    {
      v85 = v84;
      for (i11 = 0; i11 != v85; ++i11)
      {
        v87 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEAggregatedDLTBSAtIndex:i11];
        [v388 addCellularPowerLogLTEAggregatedDLTBS:v87];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERSRPsCount])
  {
    [v388 clearCellularPowerLogLTERSRPs];
    v88 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERSRPsCount];
    if (v88)
    {
      v89 = v88;
      for (i12 = 0; i12 != v89; ++i12)
      {
        v91 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERSRPAtIndex:i12];
        [v388 addCellularPowerLogLTERSRP:v91];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTESINRsCount])
  {
    [v388 clearCellularPowerLogLTESINRs];
    v92 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTESINRsCount];
    if (v92)
    {
      v93 = v92;
      for (i13 = 0; i13 != v93; ++i13)
      {
        v95 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTESINRAtIndex:i13];
        [v388 addCellularPowerLogLTESINR:v95];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTETxPowersCount])
  {
    [v388 clearCellularPowerLogLTETxPowers];
    v96 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTETxPowersCount];
    if (v96)
    {
      v97 = v96;
      for (i14 = 0; i14 != v97; ++i14)
      {
        v99 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTETxPowerAtIndex:i14];
        [v388 addCellularPowerLogLTETxPower:v99];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxDiversitysCount])
  {
    [v388 clearCellularPowerLogLTERxDiversitys];
    v100 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxDiversitysCount];
    if (v100)
    {
      v101 = v100;
      for (i15 = 0; i15 != v101; ++i15)
      {
        v103 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERxDiversityAtIndex:i15];
        [v388 addCellularPowerLogLTERxDiversity:v103];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEULCAStatesCount])
  {
    [v388 clearCellularPowerLogLTEULCAStates];
    v104 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEULCAStatesCount];
    if (v104)
    {
      v105 = v104;
      for (i16 = 0; i16 != v105; ++i16)
      {
        v107 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEULCAStateAtIndex:i16];
        [v388 addCellularPowerLogLTEULCAState:v107];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPowerEstimatorsCount])
  {
    [v388 clearCellularPowerLogPowerEstimators];
    v108 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPowerEstimatorsCount];
    if (v108)
    {
      v109 = v108;
      for (i17 = 0; i17 != v109; ++i17)
      {
        v111 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPowerEstimatorAtIndex:i17];
        [v388 addCellularPowerLogPowerEstimator:v111];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEPagingDRXCyclesCount])
  {
    [v388 clearCellularPowerLogLTEPagingDRXCycles];
    v112 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEPagingDRXCyclesCount];
    if (v112)
    {
      v113 = v112;
      for (i18 = 0; i18 != v113; ++i18)
      {
        v115 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTEPagingDRXCycleAtIndex:i18];
        [v388 addCellularPowerLogLTEPagingDRXCycle:v115];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRPagingDRXCyclesCount])
  {
    [v388 clearCellularPowerLogNRPagingDRXCycles];
    v116 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRPagingDRXCyclesCount];
    if (v116)
    {
      v117 = v116;
      for (i19 = 0; i19 != v117; ++i19)
      {
        v119 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRPagingDRXCycleAtIndex:i19];
        [v388 addCellularPowerLogNRPagingDRXCycle:v119];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogProtocolStatesCount])
  {
    [v388 clearCellularPowerLogProtocolStates];
    v120 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogProtocolStatesCount];
    if (v120)
    {
      v121 = v120;
      for (i20 = 0; i20 != v121; ++i20)
      {
        v123 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogProtocolStateAtIndex:i20];
        [v388 addCellularPowerLogProtocolState:v123];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchsCount])
  {
    [v388 clearCellularPowerLogPLMNSearchs];
    v124 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchsCount];
    if (v124)
    {
      v125 = v124;
      for (i21 = 0; i21 != v125; ++i21)
      {
        v127 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchAtIndex:i21];
        [v388 addCellularPowerLogPLMNSearch:v127];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMTxPowersCount])
  {
    [v388 clearCellularPowerLogGSMTxPowers];
    v128 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMTxPowersCount];
    if (v128)
    {
      v129 = v128;
      for (i22 = 0; i22 != v129; ++i22)
      {
        v131 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMTxPowerAtIndex:i22];
        [v388 addCellularPowerLogGSMTxPower:v131];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxRSSIsCount])
  {
    [v388 clearCellularPowerLogGSMRxRSSIs];
    v132 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxRSSIsCount];
    if (v132)
    {
      v133 = v132;
      for (i23 = 0; i23 != v133; ++i23)
      {
        v135 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxRSSIAtIndex:i23];
        [v388 addCellularPowerLogGSMRxRSSI:v135];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRABModesCount])
  {
    [v388 clearCellularPowerLogGSMRABModes];
    v136 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRABModesCount];
    if (v136)
    {
      v137 = v136;
      for (i24 = 0; i24 != v137; ++i24)
      {
        v139 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRABModeAtIndex:i24];
        [v388 addCellularPowerLogGSMRABMode:v139];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxDiversitysCount])
  {
    [v388 clearCellularPowerLogGSMRxDiversitys];
    v140 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxDiversitysCount];
    if (v140)
    {
      v141 = v140;
      for (i25 = 0; i25 != v141; ++i25)
      {
        v143 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRxDiversityAtIndex:i25];
        [v388 addCellularPowerLogGSMRxDiversity:v143];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMATxPowersCount])
  {
    [v388 clearCellularPowerLogWCDMATxPowers];
    v144 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMATxPowersCount];
    if (v144)
    {
      v145 = v144;
      for (i26 = 0; i26 != v145; ++i26)
      {
        v147 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMATxPowerAtIndex:i26];
        [v388 addCellularPowerLogWCDMATxPower:v147];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxRSSIsCount])
  {
    [v388 clearCellularPowerLogWCDMARxRSSIs];
    v148 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxRSSIsCount];
    if (v148)
    {
      v149 = v148;
      for (i27 = 0; i27 != v149; ++i27)
      {
        v151 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxRSSIAtIndex:i27];
        [v388 addCellularPowerLogWCDMARxRSSI:v151];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSCGRelsCount])
  {
    [v388 clearCellularPowerLogNRSCGRels];
    v152 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSCGRelsCount];
    if (v152)
    {
      v153 = v152;
      for (i28 = 0; i28 != v153; ++i28)
      {
        v155 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSCGRelAtIndex:i28];
        [v388 addCellularPowerLogNRSCGRel:v155];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxDiversitysCount])
  {
    [v388 clearCellularPowerLogWCDMARxDiversitys];
    v156 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxDiversitysCount];
    if (v156)
    {
      v157 = v156;
      for (i29 = 0; i29 != v157; ++i29)
      {
        v159 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARxDiversityAtIndex:i29];
        [v388 addCellularPowerLogWCDMARxDiversity:v159];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABModesCount])
  {
    [v388 clearCellularPowerLogWCDMARABModes];
    v160 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABModesCount];
    if (v160)
    {
      v161 = v160;
      for (i30 = 0; i30 != v161; ++i30)
      {
        v163 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABModeAtIndex:i30];
        [v388 addCellularPowerLogWCDMARABMode:v163];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABTypesCount])
  {
    [v388 clearCellularPowerLogWCDMARABTypes];
    v164 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABTypesCount];
    if (v164)
    {
      v165 = v164;
      for (i31 = 0; i31 != v165; ++i31)
      {
        v167 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARABTypeAtIndex:i31];
        [v388 addCellularPowerLogWCDMARABType:v167];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDOTxPowersCount])
  {
    [v388 clearCellularPowerLogEVDOTxPowers];
    v168 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDOTxPowersCount];
    if (v168)
    {
      v169 = v168;
      for (i32 = 0; i32 != v169; ++i32)
      {
        v171 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDOTxPowerAtIndex:i32];
        [v388 addCellularPowerLogEVDOTxPower:v171];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxRSSIsCount])
  {
    [v388 clearCellularPowerLogEVDORxRSSIs];
    v172 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxRSSIsCount];
    if (v172)
    {
      v173 = v172;
      for (i33 = 0; i33 != v173; ++i33)
      {
        v175 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxRSSIAtIndex:i33];
        [v388 addCellularPowerLogEVDORxRSSI:v175];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRABModesCount])
  {
    [v388 clearCellularPowerLogHybridRABModes];
    v176 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRABModesCount];
    if (v176)
    {
      v177 = v176;
      for (i34 = 0; i34 != v177; ++i34)
      {
        v179 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRABModeAtIndex:i34];
        [v388 addCellularPowerLogHybridRABMode:v179];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxDiversitysCount])
  {
    [v388 clearCellularPowerLogEVDORxDiversitys];
    v180 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxDiversitysCount];
    if (v180)
    {
      v181 = v180;
      for (i35 = 0; i35 != v181; ++i35)
      {
        v183 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogEVDORxDiversityAtIndex:i35];
        [v388 addCellularPowerLogEVDORxDiversity:v183];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XTxPowersCount])
  {
    [v388 clearCellularPowerLogCDMA1XTxPowers];
    v184 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XTxPowersCount];
    if (v184)
    {
      v185 = v184;
      for (i36 = 0; i36 != v185; ++i36)
      {
        v187 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XTxPowerAtIndex:i36];
        [v388 addCellularPowerLogCDMA1XTxPower:v187];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxRSSIsCount])
  {
    [v388 clearCellularPowerLogCDMA1XRxRSSIs];
    v188 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxRSSIsCount];
    if (v188)
    {
      v189 = v188;
      for (i37 = 0; i37 != v189; ++i37)
      {
        v191 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxRSSIAtIndex:i37];
        [v388 addCellularPowerLogCDMA1XRxRSSI:v191];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRABModesCount])
  {
    [v388 clearCellularPowerLogCDMA1XRABModes];
    v192 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRABModesCount];
    if (v192)
    {
      v193 = v192;
      for (i38 = 0; i38 != v193; ++i38)
      {
        v195 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRABModeAtIndex:i38];
        [v388 addCellularPowerLogCDMA1XRABMode:v195];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxDiversitysCount])
  {
    [v388 clearCellularPowerLogCDMA1XRxDiversitys];
    v196 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxDiversitysCount];
    if (v196)
    {
      v197 = v196;
      for (i39 = 0; i39 != v197; ++i39)
      {
        v199 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRxDiversityAtIndex:i39];
        [v388 addCellularPowerLogCDMA1XRxDiversity:v199];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMACDRXConfigsCount])
  {
    [v388 clearCellularPowerLogWCDMACDRXConfigs];
    v200 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMACDRXConfigsCount];
    if (v200)
    {
      v201 = v200;
      for (i40 = 0; i40 != v201; ++i40)
      {
        v203 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMACDRXConfigAtIndex:i40];
        [v388 addCellularPowerLogWCDMACDRXConfig:v203];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECDRXConfigsCount])
  {
    [v388 clearCellularPowerLogLTECDRXConfigs];
    v204 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECDRXConfigsCount];
    if (v204)
    {
      v205 = v204;
      for (i41 = 0; i41 != v205; ++i41)
      {
        v207 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTECDRXConfigAtIndex:i41];
        [v388 addCellularPowerLogLTECDRXConfig:v207];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARRCStateChangesCount])
  {
    [v388 clearCellularPowerLogWCDMARRCStateChanges];
    v208 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARRCStateChangesCount];
    if (v208)
    {
      v209 = v208;
      for (i42 = 0; i42 != v209; ++i42)
      {
        v211 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWCDMARRCStateChangeAtIndex:i42];
        [v388 addCellularPowerLogWCDMARRCStateChange:v211];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERRCStateChangesCount])
  {
    [v388 clearCellularPowerLogLTERRCStateChanges];
    v212 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERRCStateChangesCount];
    if (v212)
    {
      v213 = v212;
      for (i43 = 0; i43 != v213; ++i43)
      {
        v215 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogLTERRCStateChangeAtIndex:i43];
        [v388 addCellularPowerLogLTERRCStateChange:v215];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSystemEventsCount])
  {
    [v388 clearCellularPowerLogSystemEvents];
    v216 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSystemEventsCount];
    if (v216)
    {
      v217 = v216;
      for (i44 = 0; i44 != v217; ++i44)
      {
        v219 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSystemEventAtIndex:i44];
        [v388 addCellularPowerLogSystemEvent:v219];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATReselectionEventsCount])
  {
    [v388 clearCellularPowerLogRATReselectionEvents];
    v220 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATReselectionEventsCount];
    if (v220)
    {
      v221 = v220;
      for (i45 = 0; i45 != v221; ++i45)
      {
        v223 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATReselectionEventAtIndex:i45];
        [v388 addCellularPowerLogRATReselectionEvent:v223];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATRedirectionEventsCount])
  {
    [v388 clearCellularPowerLogRATRedirectionEvents];
    v224 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATRedirectionEventsCount];
    if (v224)
    {
      v225 = v224;
      for (i46 = 0; i46 != v225; ++i46)
      {
        v227 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRATRedirectionEventAtIndex:i46];
        [v388 addCellularPowerLogRATRedirectionEvent:v227];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRRCStateChangesCount])
  {
    [v388 clearCellularPowerLogGSMRRCStateChanges];
    v228 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRRCStateChangesCount];
    if (v228)
    {
      v229 = v228;
      for (i47 = 0; i47 != v229; ++i47)
      {
        v231 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogGSMRRCStateChangeAtIndex:i47];
        [v388 addCellularPowerLogGSMRRCStateChange:v231];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRRCStateChangesCount])
  {
    [v388 clearCellularPowerLogCDMA1XRRCStateChanges];
    v232 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRRCStateChangesCount];
    if (v232)
    {
      v233 = v232;
      for (i48 = 0; i48 != v233; ++i48)
      {
        v235 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogCDMA1XRRCStateChangeAtIndex:i48];
        [v388 addCellularPowerLogCDMA1XRRCStateChange:v235];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRRCStateChangesCount])
  {
    [v388 clearCellularPowerLogHybridRRCStateChanges];
    v236 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRRCStateChangesCount];
    if (v236)
    {
      v237 = v236;
      for (i49 = 0; i49 != v237; ++i49)
      {
        v239 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogHybridRRCStateChangeAtIndex:i49];
        [v388 addCellularPowerLogHybridRRCStateChange:v239];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogServiceStateEventsCount])
  {
    [v388 clearCellularPowerLogServiceStateEvents];
    v240 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogServiceStateEventsCount];
    if (v240)
    {
      v241 = v240;
      for (i50 = 0; i50 != v241; ++i50)
      {
        v243 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogServiceStateEventAtIndex:i50];
        [v388 addCellularPowerLogServiceStateEvent:v243];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNScanEventsCount])
  {
    [v388 clearCellularPowerLogPLMNScanEvents];
    v244 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNScanEventsCount];
    if (v244)
    {
      v245 = v244;
      for (i51 = 0; i51 != v245; ++i51)
      {
        v247 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNScanEventAtIndex:i51];
        [v388 addCellularPowerLogPLMNScanEvent:v247];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchEventsCount])
  {
    [v388 clearCellularPowerLogPLMNSearchEvents];
    v248 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchEventsCount];
    if (v248)
    {
      v249 = v248;
      for (i52 = 0; i52 != v249; ++i52)
      {
        v251 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogPLMNSearchEventAtIndex:i52];
        [v388 addCellularPowerLogPLMNSearchEvent:v251];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSARRCStateChangesCount])
  {
    [v388 clearCellularPowerLogNRSARRCStateChanges];
    v252 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSARRCStateChangesCount];
    if (v252)
    {
      v253 = v252;
      for (i53 = 0; i53 != v253; ++i53)
      {
        v255 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRSARRCStateChangeAtIndex:i53];
        [v388 addCellularPowerLogNRSARRCStateChange:v255];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRNSAENDCEventsCount])
  {
    [v388 clearCellularPowerLogNRNSAENDCEvents];
    v256 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRNSAENDCEventsCount];
    if (v256)
    {
      v257 = v256;
      for (i54 = 0; i54 != v257; ++i54)
      {
        v259 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRNSAENDCEventAtIndex:i54];
        [v388 addCellularPowerLogNRNSAENDCEvent:v259];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRCDRXConfigsCount])
  {
    [v388 clearCellularPowerLogNRCDRXConfigs];
    v260 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRCDRXConfigsCount];
    if (v260)
    {
      v261 = v260;
      for (i55 = 0; i55 != v261; ++i55)
      {
        v263 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRCDRXConfigAtIndex:i55];
        [v388 addCellularPowerLogNRCDRXConfig:v263];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPsCount])
  {
    [v388 clearCellularPowerLogNRsub6BWPs];
    v264 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPsCount];
    if (v264)
    {
      v265 = v264;
      for (i56 = 0; i56 != v265; ++i56)
      {
        v267 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPAtIndex:i56];
        [v388 addCellularPowerLogNRsub6BWP:v267];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogRFTunerStatsHistsCount])
  {
    [v388 clearCellularPowerLogRFTunerStatsHists];
    v268 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRFTunerStatsHistsCount];
    if (v268)
    {
      v269 = v268;
      for (i57 = 0; i57 != v269; ++i57)
      {
        v271 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogRFTunerStatsHistAtIndex:i57];
        [v388 addCellularPowerLogRFTunerStatsHist:v271];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCConfiguredsCount])
  {
    [v388 clearCellularPowerLogNRsub6CASCCConfigureds];
    v272 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCConfiguredsCount];
    if (v272)
    {
      v273 = v272;
      for (i58 = 0; i58 != v273; ++i58)
      {
        v275 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCConfiguredAtIndex:i58];
        [v388 addCellularPowerLogNRsub6CASCCConfigured:v275];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCActivatedsCount])
  {
    [v388 clearCellularPowerLogNRsub6CASCCActivateds];
    v276 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCActivatedsCount];
    if (v276)
    {
      v277 = v276;
      for (i59 = 0; i59 != v277; ++i59)
      {
        v279 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CASCCActivatedAtIndex:i59];
        [v388 addCellularPowerLogNRsub6CASCCActivated:v279];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxTxsCount])
  {
    [v388 clearCellularPowerLogNRsub6RxTxs];
    v280 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxTxsCount];
    if (v280)
    {
      v281 = v280;
      for (i60 = 0; i60 != v281; ++i60)
      {
        v283 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxTxAtIndex:i60];
        [v388 addCellularPowerLogNRsub6RxTx:v283];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CarrierComponentInfosCount])
  {
    [v388 clearCellularPowerLogNRsub6CarrierComponentInfos];
    v284 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CarrierComponentInfosCount];
    if (v284)
    {
      v285 = v284;
      for (i61 = 0; i61 != v285; ++i61)
      {
        v287 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6CarrierComponentInfoAtIndex:i61];
        [v388 addCellularPowerLogNRsub6CarrierComponentInfo:v287];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6DLTBSsCount])
  {
    [v388 clearCellularPowerLogNRsub6DLTBSs];
    v288 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6DLTBSsCount];
    if (v288)
    {
      v289 = v288;
      for (i62 = 0; i62 != v289; ++i62)
      {
        v291 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6DLTBSAtIndex:i62];
        [v388 addCellularPowerLogNRsub6DLTBS:v291];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RSRPsCount])
  {
    [v388 clearCellularPowerLogNRsub6RSRPs];
    v292 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RSRPsCount];
    if (v292)
    {
      v293 = v292;
      for (i63 = 0; i63 != v293; ++i63)
      {
        v295 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RSRPAtIndex:i63];
        [v388 addCellularPowerLogNRsub6RSRP:v295];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6ULCAStatesCount])
  {
    [v388 clearCellularPowerLogNRsub6ULCAStates];
    v296 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6ULCAStatesCount];
    if (v296)
    {
      v297 = v296;
      for (i64 = 0; i64 != v297; ++i64)
      {
        v299 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6ULCAStateAtIndex:i64];
        [v388 addCellularPowerLogNRsub6ULCAState:v299];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6TxPowersCount])
  {
    [v388 clearCellularPowerLogNRsub6TxPowers];
    v300 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6TxPowersCount];
    if (v300)
    {
      v301 = v300;
      for (i65 = 0; i65 != v301; ++i65)
      {
        v303 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6TxPowerAtIndex:i65];
        [v388 addCellularPowerLogNRsub6TxPower:v303];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxDiversitysCount])
  {
    [v388 clearCellularPowerLogNRsub6RxDiversitys];
    v304 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxDiversitysCount];
    if (v304)
    {
      v305 = v304;
      for (i66 = 0; i66 != v305; ++i66)
      {
        v307 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6RxDiversityAtIndex:i66];
        [v388 addCellularPowerLogNRsub6RxDiversity:v307];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSPMIsCount])
  {
    [v388 clearCellularPowerLogSPMIs];
    v308 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSPMIsCount];
    if (v308)
    {
      v309 = v308;
      for (i67 = 0; i67 != v309; ++i67)
      {
        v311 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSPMIAtIndex:i67];
        [v388 addCellularPowerLogSPMI:v311];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveBWPs];
    v312 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPsCount];
    if (v312)
    {
      v313 = v312;
      for (i68 = 0; i68 != v313; ++i68)
      {
        v315 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPAtIndex:i68];
        [v388 addCellularPowerLogNRmmWaveBWP:v315];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveAntennaPanelsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveAntennaPanels];
    v316 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveAntennaPanelsCount];
    if (v316)
    {
      v317 = v316;
      for (i69 = 0; i69 != v317; ++i69)
      {
        v319 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveAntennaPanelAtIndex:i69];
        [v388 addCellularPowerLogNRmmWaveAntennaPanel:v319];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRFRCoveragesCount])
  {
    [v388 clearCellularPowerLogNRFRCoverages];
    v320 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRFRCoveragesCount];
    if (v320)
    {
      v321 = v320;
      for (i70 = 0; i70 != v321; ++i70)
      {
        v323 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRFRCoverageAtIndex:i70];
        [v388 addCellularPowerLogNRFRCoverage:v323];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBeamIDsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveBeamIDs];
    v324 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBeamIDsCount];
    if (v324)
    {
      v325 = v324;
      for (i71 = 0; i71 != v325; ++i71)
      {
        v327 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBeamIDAtIndex:i71];
        [v388 addCellularPowerLogNRmmWaveBeamID:v327];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTStatesCount])
  {
    [v388 clearCellularPowerLogSFTStates];
    v328 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTStatesCount];
    if (v328)
    {
      v329 = v328;
      for (i72 = 0; i72 != v329; ++i72)
      {
        v331 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTStateAtIndex:i72];
        [v388 addCellularPowerLogSFTState:v331];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCConfiguredsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveCASCCConfigureds];
    v332 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCConfiguredsCount];
    if (v332)
    {
      v333 = v332;
      for (i73 = 0; i73 != v333; ++i73)
      {
        v335 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCConfiguredAtIndex:i73];
        [v388 addCellularPowerLogNRmmWaveCASCCConfigured:v335];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCActivatedsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveCASCCActivateds];
    v336 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCActivatedsCount];
    if (v336)
    {
      v337 = v336;
      for (i74 = 0; i74 != v337; ++i74)
      {
        v339 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCASCCActivatedAtIndex:i74];
        [v388 addCellularPowerLogNRmmWaveCASCCActivated:v339];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveRxTxsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveRxTxs];
    v340 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveRxTxsCount];
    if (v340)
    {
      v341 = v340;
      for (i75 = 0; i75 != v341; ++i75)
      {
        v343 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveRxTxAtIndex:i75];
        [v388 addCellularPowerLogNRmmWaveRxTx:v343];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCarrierComponentInfosCount])
  {
    [v388 clearCellularPowerLogNRmmWaveCarrierComponentInfos];
    v344 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCarrierComponentInfosCount];
    if (v344)
    {
      v345 = v344;
      for (i76 = 0; i76 != v345; ++i76)
      {
        v347 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveCarrierComponentInfoAtIndex:i76];
        [v388 addCellularPowerLogNRmmWaveCarrierComponentInfo:v347];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveDLTBSsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveDLTBSs];
    v348 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveDLTBSsCount];
    if (v348)
    {
      v349 = v348;
      for (i77 = 0; i77 != v349; ++i77)
      {
        v351 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveDLTBSAtIndex:i77];
        [v388 addCellularPowerLogNRmmWaveDLTBS:v351];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveRSRPsCount])
  {
    [v388 clearCellularPowerLogNRMmWaveRSRPs];
    v352 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveRSRPsCount];
    if (v352)
    {
      v353 = v352;
      for (i78 = 0; i78 != v353; ++i78)
      {
        v355 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveRSRPAtIndex:i78];
        [v388 addCellularPowerLogNRMmWaveRSRP:v355];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTRxTxsCount])
  {
    [v388 clearCellularPowerLogSFTRxTxs];
    v356 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTRxTxsCount];
    if (v356)
    {
      v357 = v356;
      for (i79 = 0; i79 != v357; ++i79)
      {
        v359 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogSFTRxTxAtIndex:i79];
        [v388 addCellularPowerLogSFTRxTx:v359];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveTxPowersCount])
  {
    [v388 clearCellularPowerLogNRMmWaveTxPowers];
    v360 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveTxPowersCount];
    if (v360)
    {
      v361 = v360;
      for (i80 = 0; i80 != v361; ++i80)
      {
        v363 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveTxPowerAtIndex:i80];
        [v388 addCellularPowerLogNRMmWaveTxPower:v363];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveULCAStatesCount])
  {
    [v388 clearCellularPowerLogNRMmWaveULCAStates];
    v364 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveULCAStatesCount];
    if (v364)
    {
      v365 = v364;
      for (i81 = 0; i81 != v365; ++i81)
      {
        v367 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRMmWaveULCAStateAtIndex:i81];
        [v388 addCellularPowerLogNRMmWaveULCAState:v367];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSCCsCount])
  {
    [v388 clearCellularPowerLogNRsub6BWPSCCs];
    v368 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSCCsCount];
    if (v368)
    {
      v369 = v368;
      for (i82 = 0; i82 != v369; ++i82)
      {
        v371 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSCCAtIndex:i82];
        [v388 addCellularPowerLogNRsub6BWPSCC:v371];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPSCCsCount])
  {
    [v388 clearCellularPowerLogNRmmWaveBWPSCCs];
    v372 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPSCCsCount];
    if (v372)
    {
      v373 = v372;
      for (i83 = 0; i83 != v373; ++i83)
      {
        v375 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRmmWaveBWPSCCAtIndex:i83];
        [v388 addCellularPowerLogNRmmWaveBWPSCC:v375];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRDCEventsCount])
  {
    [v388 clearCellularPowerLogNRDCEvents];
    v376 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRDCEventsCount];
    if (v376)
    {
      v377 = v376;
      for (i84 = 0; i84 != v377; ++i84)
      {
        v379 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRDCEventAtIndex:i84];
        [v388 addCellularPowerLogNRDCEvent:v379];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogWUSsCount])
  {
    [v388 clearCellularPowerLogWUSs];
    v380 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWUSsCount];
    if (v380)
    {
      v381 = v380;
      for (i85 = 0; i85 != v381; ++i85)
      {
        v383 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogWUSAtIndex:i85];
        [v388 addCellularPowerLogWUS:v383];
      }
    }
  }

  if ([(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSAsCount])
  {
    [v388 clearCellularPowerLogNRsub6BWPSAs];
    v384 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSAsCount];
    if (v384)
    {
      v385 = v384;
      for (i86 = 0; i86 != v385; ++i86)
      {
        v387 = [(AWDMETRICSCellularPowerLog *)self cellularPowerLogNRsub6BWPSAAtIndex:i86];
        [v388 addCellularPowerLogNRsub6BWPSA:v387];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v1065 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v965 = 0u;
  v966 = 0u;
  v967 = 0u;
  v968 = 0u;
  v6 = self->_cellularPerClientProfileTriggerCounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v965 objects:v1064 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v966;
    do
    {
      v10 = 0;
      do
      {
        if (*v966 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v965 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addCellularPerClientProfileTriggerCount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v965 objects:v1064 count:16];
    }

    while (v8);
  }

  v964 = 0u;
  v963 = 0u;
  v962 = 0u;
  v961 = 0u;
  v12 = self->_cellularNrSDMActivations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v961 objects:v1063 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v962;
    do
    {
      v16 = 0;
      do
      {
        if (*v962 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v961 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addCellularNrSDMActivation:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v961 objects:v1063 count:16];
    }

    while (v14);
  }

  v960 = 0u;
  v959 = 0u;
  v958 = 0u;
  v957 = 0u;
  v18 = self->_cellularNrSdmEndcReleases;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v957 objects:v1062 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v958;
    do
    {
      v22 = 0;
      do
      {
        if (*v958 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v957 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addCellularNrSdmEndcRelease:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v957 objects:v1062 count:16];
    }

    while (v20);
  }

  v956 = 0u;
  v955 = 0u;
  v954 = 0u;
  v953 = 0u;
  v24 = self->_cellularDynamicRatSelections;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v953 objects:v1061 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v954;
    do
    {
      v28 = 0;
      do
      {
        if (*v954 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v953 + 1) + 8 * v28) copyWithZone:a3];
        [v5 addCellularDynamicRatSelection:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v953 objects:v1061 count:16];
    }

    while (v26);
  }

  v952 = 0u;
  v951 = 0u;
  v950 = 0u;
  v949 = 0u;
  v30 = self->_cellularRfTunerHists;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v949 objects:v1060 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v950;
    do
    {
      v34 = 0;
      do
      {
        if (*v950 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v949 + 1) + 8 * v34) copyWithZone:a3];
        [v5 addCellularRfTunerHist:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v949 objects:v1060 count:16];
    }

    while (v32);
  }

  v948 = 0u;
  v947 = 0u;
  v946 = 0u;
  v945 = 0u;
  v36 = self->_cellularPowerLogXOShutdowns;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v945 objects:v1059 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v946;
    do
    {
      v40 = 0;
      do
      {
        if (*v946 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v945 + 1) + 8 * v40) copyWithZone:a3];
        [v5 addCellularPowerLogXOShutdown:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v945 objects:v1059 count:16];
    }

    while (v38);
  }

  v944 = 0u;
  v943 = 0u;
  v942 = 0u;
  v941 = 0u;
  v42 = self->_cellularPowerLogAPPSPerfLevels;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v941 objects:v1058 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v942;
    do
    {
      v46 = 0;
      do
      {
        if (*v942 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v941 + 1) + 8 * v46) copyWithZone:a3];
        [v5 addCellularPowerLogAPPSPerfLevels:v47];

        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v941 objects:v1058 count:16];
    }

    while (v44);
  }

  v940 = 0u;
  v939 = 0u;
  v938 = 0u;
  v937 = 0u;
  v48 = self->_cellularPowerLogAPPSCXOShutdowns;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v937 objects:v1057 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v938;
    do
    {
      v52 = 0;
      do
      {
        if (*v938 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v937 + 1) + 8 * v52) copyWithZone:a3];
        [v5 addCellularPowerLogAPPSCXOShutdown:v53];

        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v937 objects:v1057 count:16];
    }

    while (v50);
  }

  v936 = 0u;
  v935 = 0u;
  v934 = 0u;
  v933 = 0u;
  v54 = self->_cellularPowerLogAPPSSleepVetos;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v933 objects:v1056 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v934;
    do
    {
      v58 = 0;
      do
      {
        if (*v934 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v933 + 1) + 8 * v58) copyWithZone:a3];
        [v5 addCellularPowerLogAPPSSleepVeto:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v933 objects:v1056 count:16];
    }

    while (v56);
  }

  v932 = 0u;
  v931 = 0u;
  v930 = 0u;
  v929 = 0u;
  v60 = self->_cellularPowerLogMCPMSleepVetos;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v929 objects:v1055 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v930;
    do
    {
      v64 = 0;
      do
      {
        if (*v930 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v929 + 1) + 8 * v64) copyWithZone:a3];
        [v5 addCellularPowerLogMCPMSleepVeto:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v929 objects:v1055 count:16];
    }

    while (v62);
  }

  v928 = 0u;
  v927 = 0u;
  v926 = 0u;
  v925 = 0u;
  v66 = self->_cellularPowerLogMPSSPerfLevels;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v925 objects:v1054 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v926;
    do
    {
      v70 = 0;
      do
      {
        if (*v926 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v925 + 1) + 8 * v70) copyWithZone:a3];
        [v5 addCellularPowerLogMPSSPerfLevels:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v925 objects:v1054 count:16];
    }

    while (v68);
  }

  v924 = 0u;
  v923 = 0u;
  v922 = 0u;
  v921 = 0u;
  v72 = self->_cellularPowerLogGPSStates;
  v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v921 objects:v1053 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v922;
    do
    {
      v76 = 0;
      do
      {
        if (*v922 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [*(*(&v921 + 1) + 8 * v76) copyWithZone:a3];
        [v5 addCellularPowerLogGPSStates:v77];

        ++v76;
      }

      while (v74 != v76);
      v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v921 objects:v1053 count:16];
    }

    while (v74);
  }

  v920 = 0u;
  v919 = 0u;
  v918 = 0u;
  v917 = 0u;
  v78 = self->_cellularPowerLogAOPUARTStates;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v917 objects:v1052 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v918;
    do
    {
      v82 = 0;
      do
      {
        if (*v918 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = [*(*(&v917 + 1) + 8 * v82) copyWithZone:a3];
        [v5 addCellularPowerLogAOPUARTStates:v83];

        ++v82;
      }

      while (v80 != v82);
      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v917 objects:v1052 count:16];
    }

    while (v80);
  }

  v916 = 0u;
  v915 = 0u;
  v914 = 0u;
  v913 = 0u;
  v84 = self->_cellularPowerLogWLANUARTStates;
  v85 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v913 objects:v1051 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v914;
    do
    {
      v88 = 0;
      do
      {
        if (*v914 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [*(*(&v913 + 1) + 8 * v88) copyWithZone:a3];
        [v5 addCellularPowerLogWLANUARTStates:v89];

        ++v88;
      }

      while (v86 != v88);
      v86 = [(NSMutableArray *)v84 countByEnumeratingWithState:&v913 objects:v1051 count:16];
    }

    while (v86);
  }

  v912 = 0u;
  v911 = 0u;
  v910 = 0u;
  v909 = 0u;
  v90 = self->_cellularPowerLogPCIeStates;
  v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v909 objects:v1050 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v910;
    do
    {
      v94 = 0;
      do
      {
        if (*v910 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = [*(*(&v909 + 1) + 8 * v94) copyWithZone:a3];
        [v5 addCellularPowerLogPCIeStates:v95];

        ++v94;
      }

      while (v92 != v94);
      v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v909 objects:v1050 count:16];
    }

    while (v92);
  }

  v908 = 0u;
  v907 = 0u;
  v906 = 0u;
  v905 = 0u;
  v96 = self->_cellularPowerLogL1SleepStates;
  v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v905 objects:v1049 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v906;
    do
    {
      v100 = 0;
      do
      {
        if (*v906 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = [*(*(&v905 + 1) + 8 * v100) copyWithZone:a3];
        [v5 addCellularPowerLogL1SleepStates:v101];

        ++v100;
      }

      while (v98 != v100);
      v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v905 objects:v1049 count:16];
    }

    while (v98);
  }

  v904 = 0u;
  v903 = 0u;
  v902 = 0u;
  v901 = 0u;
  v102 = self->_cellularPowerLogLTEConfiguredCASCCStates;
  v103 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v901 objects:v1048 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v902;
    do
    {
      v106 = 0;
      do
      {
        if (*v902 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = [*(*(&v901 + 1) + 8 * v106) copyWithZone:a3];
        [v5 addCellularPowerLogLTEConfiguredCASCCStates:v107];

        ++v106;
      }

      while (v104 != v106);
      v104 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v901 objects:v1048 count:16];
    }

    while (v104);
  }

  v900 = 0u;
  v899 = 0u;
  v898 = 0u;
  v897 = 0u;
  v108 = self->_cellularPowerLogLTEActivatedCASCCStates;
  v109 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v897 objects:v1047 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v898;
    do
    {
      v112 = 0;
      do
      {
        if (*v898 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = [*(*(&v897 + 1) + 8 * v112) copyWithZone:a3];
        [v5 addCellularPowerLogLTEActivatedCASCCStates:v113];

        ++v112;
      }

      while (v110 != v112);
      v110 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v897 objects:v1047 count:16];
    }

    while (v110);
  }

  v896 = 0u;
  v895 = 0u;
  v894 = 0u;
  v893 = 0u;
  v114 = self->_cellularPowerLogLTERxTxActivityStates;
  v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v893 objects:v1046 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v894;
    do
    {
      v118 = 0;
      do
      {
        if (*v894 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = [*(*(&v893 + 1) + 8 * v118) copyWithZone:a3];
        [v5 addCellularPowerLogLTERxTxActivityStates:v119];

        ++v118;
      }

      while (v116 != v118);
      v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v893 objects:v1046 count:16];
    }

    while (v116);
  }

  v892 = 0u;
  v891 = 0u;
  v890 = 0u;
  v889 = 0u;
  v120 = self->_cellularPowerLogLTECarrierComponentInfos;
  v121 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v889 objects:v1045 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v890;
    do
    {
      v124 = 0;
      do
      {
        if (*v890 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v125 = [*(*(&v889 + 1) + 8 * v124) copyWithZone:a3];
        [v5 addCellularPowerLogLTECarrierComponentInfo:v125];

        ++v124;
      }

      while (v122 != v124);
      v122 = [(NSMutableArray *)v120 countByEnumeratingWithState:&v889 objects:v1045 count:16];
    }

    while (v122);
  }

  v888 = 0u;
  v887 = 0u;
  v886 = 0u;
  v885 = 0u;
  v126 = self->_cellularPowerLogLTEAggregatedDLTBSs;
  v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v885 objects:v1044 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v886;
    do
    {
      v130 = 0;
      do
      {
        if (*v886 != v129)
        {
          objc_enumerationMutation(v126);
        }

        v131 = [*(*(&v885 + 1) + 8 * v130) copyWithZone:a3];
        [v5 addCellularPowerLogLTEAggregatedDLTBS:v131];

        ++v130;
      }

      while (v128 != v130);
      v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v885 objects:v1044 count:16];
    }

    while (v128);
  }

  v884 = 0u;
  v883 = 0u;
  v882 = 0u;
  v881 = 0u;
  v132 = self->_cellularPowerLogLTERSRPs;
  v133 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v881 objects:v1043 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v882;
    do
    {
      v136 = 0;
      do
      {
        if (*v882 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = [*(*(&v881 + 1) + 8 * v136) copyWithZone:a3];
        [v5 addCellularPowerLogLTERSRP:v137];

        ++v136;
      }

      while (v134 != v136);
      v134 = [(NSMutableArray *)v132 countByEnumeratingWithState:&v881 objects:v1043 count:16];
    }

    while (v134);
  }

  v880 = 0u;
  v879 = 0u;
  v878 = 0u;
  v877 = 0u;
  v138 = self->_cellularPowerLogLTESINRs;
  v139 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v877 objects:v1042 count:16];
  if (v139)
  {
    v140 = v139;
    v141 = *v878;
    do
    {
      v142 = 0;
      do
      {
        if (*v878 != v141)
        {
          objc_enumerationMutation(v138);
        }

        v143 = [*(*(&v877 + 1) + 8 * v142) copyWithZone:a3];
        [v5 addCellularPowerLogLTESINR:v143];

        ++v142;
      }

      while (v140 != v142);
      v140 = [(NSMutableArray *)v138 countByEnumeratingWithState:&v877 objects:v1042 count:16];
    }

    while (v140);
  }

  v876 = 0u;
  v875 = 0u;
  v874 = 0u;
  v873 = 0u;
  v144 = self->_cellularPowerLogLTETxPowers;
  v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v873 objects:v1041 count:16];
  if (v145)
  {
    v146 = v145;
    v147 = *v874;
    do
    {
      v148 = 0;
      do
      {
        if (*v874 != v147)
        {
          objc_enumerationMutation(v144);
        }

        v149 = [*(*(&v873 + 1) + 8 * v148) copyWithZone:a3];
        [v5 addCellularPowerLogLTETxPower:v149];

        ++v148;
      }

      while (v146 != v148);
      v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v873 objects:v1041 count:16];
    }

    while (v146);
  }

  v872 = 0u;
  v871 = 0u;
  v870 = 0u;
  v869 = 0u;
  v150 = self->_cellularPowerLogLTERxDiversitys;
  v151 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v869 objects:v1040 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v870;
    do
    {
      v154 = 0;
      do
      {
        if (*v870 != v153)
        {
          objc_enumerationMutation(v150);
        }

        v155 = [*(*(&v869 + 1) + 8 * v154) copyWithZone:a3];
        [v5 addCellularPowerLogLTERxDiversity:v155];

        ++v154;
      }

      while (v152 != v154);
      v152 = [(NSMutableArray *)v150 countByEnumeratingWithState:&v869 objects:v1040 count:16];
    }

    while (v152);
  }

  v868 = 0u;
  v867 = 0u;
  v866 = 0u;
  v865 = 0u;
  v156 = self->_cellularPowerLogLTEULCAStates;
  v157 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v865 objects:v1039 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v866;
    do
    {
      v160 = 0;
      do
      {
        if (*v866 != v159)
        {
          objc_enumerationMutation(v156);
        }

        v161 = [*(*(&v865 + 1) + 8 * v160) copyWithZone:a3];
        [v5 addCellularPowerLogLTEULCAState:v161];

        ++v160;
      }

      while (v158 != v160);
      v158 = [(NSMutableArray *)v156 countByEnumeratingWithState:&v865 objects:v1039 count:16];
    }

    while (v158);
  }

  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v861 = 0u;
  v162 = self->_cellularPowerLogPowerEstimators;
  v163 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v861 objects:v1038 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v862;
    do
    {
      v166 = 0;
      do
      {
        if (*v862 != v165)
        {
          objc_enumerationMutation(v162);
        }

        v167 = [*(*(&v861 + 1) + 8 * v166) copyWithZone:a3];
        [v5 addCellularPowerLogPowerEstimator:v167];

        ++v166;
      }

      while (v164 != v166);
      v164 = [(NSMutableArray *)v162 countByEnumeratingWithState:&v861 objects:v1038 count:16];
    }

    while (v164);
  }

  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v857 = 0u;
  v168 = self->_cellularPowerLogLTEPagingDRXCycles;
  v169 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v857 objects:v1037 count:16];
  if (v169)
  {
    v170 = v169;
    v171 = *v858;
    do
    {
      v172 = 0;
      do
      {
        if (*v858 != v171)
        {
          objc_enumerationMutation(v168);
        }

        v173 = [*(*(&v857 + 1) + 8 * v172) copyWithZone:a3];
        [v5 addCellularPowerLogLTEPagingDRXCycle:v173];

        ++v172;
      }

      while (v170 != v172);
      v170 = [(NSMutableArray *)v168 countByEnumeratingWithState:&v857 objects:v1037 count:16];
    }

    while (v170);
  }

  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v853 = 0u;
  v174 = self->_cellularPowerLogNRPagingDRXCycles;
  v175 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v853 objects:v1036 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v854;
    do
    {
      v178 = 0;
      do
      {
        if (*v854 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = [*(*(&v853 + 1) + 8 * v178) copyWithZone:a3];
        [v5 addCellularPowerLogNRPagingDRXCycle:v179];

        ++v178;
      }

      while (v176 != v178);
      v176 = [(NSMutableArray *)v174 countByEnumeratingWithState:&v853 objects:v1036 count:16];
    }

    while (v176);
  }

  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v849 = 0u;
  v180 = self->_cellularPowerLogProtocolStates;
  v181 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v849 objects:v1035 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v850;
    do
    {
      v184 = 0;
      do
      {
        if (*v850 != v183)
        {
          objc_enumerationMutation(v180);
        }

        v185 = [*(*(&v849 + 1) + 8 * v184) copyWithZone:a3];
        [v5 addCellularPowerLogProtocolState:v185];

        ++v184;
      }

      while (v182 != v184);
      v182 = [(NSMutableArray *)v180 countByEnumeratingWithState:&v849 objects:v1035 count:16];
    }

    while (v182);
  }

  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v845 = 0u;
  v186 = self->_cellularPowerLogPLMNSearchs;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v845 objects:v1034 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v846;
    do
    {
      v190 = 0;
      do
      {
        if (*v846 != v189)
        {
          objc_enumerationMutation(v186);
        }

        v191 = [*(*(&v845 + 1) + 8 * v190) copyWithZone:a3];
        [v5 addCellularPowerLogPLMNSearch:v191];

        ++v190;
      }

      while (v188 != v190);
      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v845 objects:v1034 count:16];
    }

    while (v188);
  }

  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v841 = 0u;
  v192 = self->_cellularPowerLogGSMTxPowers;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v841 objects:v1033 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v842;
    do
    {
      v196 = 0;
      do
      {
        if (*v842 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v197 = [*(*(&v841 + 1) + 8 * v196) copyWithZone:a3];
        [v5 addCellularPowerLogGSMTxPower:v197];

        ++v196;
      }

      while (v194 != v196);
      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v841 objects:v1033 count:16];
    }

    while (v194);
  }

  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v837 = 0u;
  v198 = self->_cellularPowerLogGSMRxRSSIs;
  v199 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v837 objects:v1032 count:16];
  if (v199)
  {
    v200 = v199;
    v201 = *v838;
    do
    {
      v202 = 0;
      do
      {
        if (*v838 != v201)
        {
          objc_enumerationMutation(v198);
        }

        v203 = [*(*(&v837 + 1) + 8 * v202) copyWithZone:a3];
        [v5 addCellularPowerLogGSMRxRSSI:v203];

        ++v202;
      }

      while (v200 != v202);
      v200 = [(NSMutableArray *)v198 countByEnumeratingWithState:&v837 objects:v1032 count:16];
    }

    while (v200);
  }

  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v204 = self->_cellularPowerLogGSMRABModes;
  v205 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v833 objects:v1031 count:16];
  if (v205)
  {
    v206 = v205;
    v207 = *v834;
    do
    {
      v208 = 0;
      do
      {
        if (*v834 != v207)
        {
          objc_enumerationMutation(v204);
        }

        v209 = [*(*(&v833 + 1) + 8 * v208) copyWithZone:a3];
        [v5 addCellularPowerLogGSMRABMode:v209];

        ++v208;
      }

      while (v206 != v208);
      v206 = [(NSMutableArray *)v204 countByEnumeratingWithState:&v833 objects:v1031 count:16];
    }

    while (v206);
  }

  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v210 = self->_cellularPowerLogGSMRxDiversitys;
  v211 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v829 objects:v1030 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v830;
    do
    {
      v214 = 0;
      do
      {
        if (*v830 != v213)
        {
          objc_enumerationMutation(v210);
        }

        v215 = [*(*(&v829 + 1) + 8 * v214) copyWithZone:a3];
        [v5 addCellularPowerLogGSMRxDiversity:v215];

        ++v214;
      }

      while (v212 != v214);
      v212 = [(NSMutableArray *)v210 countByEnumeratingWithState:&v829 objects:v1030 count:16];
    }

    while (v212);
  }

  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v216 = self->_cellularPowerLogWCDMATxPowers;
  v217 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v825 objects:v1029 count:16];
  if (v217)
  {
    v218 = v217;
    v219 = *v826;
    do
    {
      v220 = 0;
      do
      {
        if (*v826 != v219)
        {
          objc_enumerationMutation(v216);
        }

        v221 = [*(*(&v825 + 1) + 8 * v220) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMATxPower:v221];

        ++v220;
      }

      while (v218 != v220);
      v218 = [(NSMutableArray *)v216 countByEnumeratingWithState:&v825 objects:v1029 count:16];
    }

    while (v218);
  }

  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v222 = self->_cellularPowerLogWCDMARxRSSIs;
  v223 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v821 objects:v1028 count:16];
  if (v223)
  {
    v224 = v223;
    v225 = *v822;
    do
    {
      v226 = 0;
      do
      {
        if (*v822 != v225)
        {
          objc_enumerationMutation(v222);
        }

        v227 = [*(*(&v821 + 1) + 8 * v226) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMARxRSSI:v227];

        ++v226;
      }

      while (v224 != v226);
      v224 = [(NSMutableArray *)v222 countByEnumeratingWithState:&v821 objects:v1028 count:16];
    }

    while (v224);
  }

  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v228 = self->_cellularPowerLogNRSCGRels;
  v229 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v817 objects:v1027 count:16];
  if (v229)
  {
    v230 = v229;
    v231 = *v818;
    do
    {
      v232 = 0;
      do
      {
        if (*v818 != v231)
        {
          objc_enumerationMutation(v228);
        }

        v233 = [*(*(&v817 + 1) + 8 * v232) copyWithZone:a3];
        [v5 addCellularPowerLogNRSCGRel:v233];

        ++v232;
      }

      while (v230 != v232);
      v230 = [(NSMutableArray *)v228 countByEnumeratingWithState:&v817 objects:v1027 count:16];
    }

    while (v230);
  }

  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v234 = self->_cellularPowerLogWCDMARxDiversitys;
  v235 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v813 objects:v1026 count:16];
  if (v235)
  {
    v236 = v235;
    v237 = *v814;
    do
    {
      v238 = 0;
      do
      {
        if (*v814 != v237)
        {
          objc_enumerationMutation(v234);
        }

        v239 = [*(*(&v813 + 1) + 8 * v238) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMARxDiversity:v239];

        ++v238;
      }

      while (v236 != v238);
      v236 = [(NSMutableArray *)v234 countByEnumeratingWithState:&v813 objects:v1026 count:16];
    }

    while (v236);
  }

  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  v240 = self->_cellularPowerLogWCDMARABModes;
  v241 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v809 objects:v1025 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v810;
    do
    {
      v244 = 0;
      do
      {
        if (*v810 != v243)
        {
          objc_enumerationMutation(v240);
        }

        v245 = [*(*(&v809 + 1) + 8 * v244) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMARABMode:v245];

        ++v244;
      }

      while (v242 != v244);
      v242 = [(NSMutableArray *)v240 countByEnumeratingWithState:&v809 objects:v1025 count:16];
    }

    while (v242);
  }

  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v805 = 0u;
  v246 = self->_cellularPowerLogWCDMARABTypes;
  v247 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v805 objects:v1024 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v806;
    do
    {
      v250 = 0;
      do
      {
        if (*v806 != v249)
        {
          objc_enumerationMutation(v246);
        }

        v251 = [*(*(&v805 + 1) + 8 * v250) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMARABType:v251];

        ++v250;
      }

      while (v248 != v250);
      v248 = [(NSMutableArray *)v246 countByEnumeratingWithState:&v805 objects:v1024 count:16];
    }

    while (v248);
  }

  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v801 = 0u;
  v252 = self->_cellularPowerLogEVDOTxPowers;
  v253 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v801 objects:v1023 count:16];
  if (v253)
  {
    v254 = v253;
    v255 = *v802;
    do
    {
      v256 = 0;
      do
      {
        if (*v802 != v255)
        {
          objc_enumerationMutation(v252);
        }

        v257 = [*(*(&v801 + 1) + 8 * v256) copyWithZone:a3];
        [v5 addCellularPowerLogEVDOTxPower:v257];

        ++v256;
      }

      while (v254 != v256);
      v254 = [(NSMutableArray *)v252 countByEnumeratingWithState:&v801 objects:v1023 count:16];
    }

    while (v254);
  }

  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v797 = 0u;
  v258 = self->_cellularPowerLogEVDORxRSSIs;
  v259 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v797 objects:v1022 count:16];
  if (v259)
  {
    v260 = v259;
    v261 = *v798;
    do
    {
      v262 = 0;
      do
      {
        if (*v798 != v261)
        {
          objc_enumerationMutation(v258);
        }

        v263 = [*(*(&v797 + 1) + 8 * v262) copyWithZone:a3];
        [v5 addCellularPowerLogEVDORxRSSI:v263];

        ++v262;
      }

      while (v260 != v262);
      v260 = [(NSMutableArray *)v258 countByEnumeratingWithState:&v797 objects:v1022 count:16];
    }

    while (v260);
  }

  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v793 = 0u;
  v264 = self->_cellularPowerLogHybridRABModes;
  v265 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v793 objects:v1021 count:16];
  if (v265)
  {
    v266 = v265;
    v267 = *v794;
    do
    {
      v268 = 0;
      do
      {
        if (*v794 != v267)
        {
          objc_enumerationMutation(v264);
        }

        v269 = [*(*(&v793 + 1) + 8 * v268) copyWithZone:a3];
        [v5 addCellularPowerLogHybridRABMode:v269];

        ++v268;
      }

      while (v266 != v268);
      v266 = [(NSMutableArray *)v264 countByEnumeratingWithState:&v793 objects:v1021 count:16];
    }

    while (v266);
  }

  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v789 = 0u;
  v270 = self->_cellularPowerLogEVDORxDiversitys;
  v271 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v789 objects:v1020 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v790;
    do
    {
      v274 = 0;
      do
      {
        if (*v790 != v273)
        {
          objc_enumerationMutation(v270);
        }

        v275 = [*(*(&v789 + 1) + 8 * v274) copyWithZone:a3];
        [v5 addCellularPowerLogEVDORxDiversity:v275];

        ++v274;
      }

      while (v272 != v274);
      v272 = [(NSMutableArray *)v270 countByEnumeratingWithState:&v789 objects:v1020 count:16];
    }

    while (v272);
  }

  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v785 = 0u;
  v276 = self->_cellularPowerLogCDMA1XTxPowers;
  v277 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v785 objects:v1019 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v786;
    do
    {
      v280 = 0;
      do
      {
        if (*v786 != v279)
        {
          objc_enumerationMutation(v276);
        }

        v281 = [*(*(&v785 + 1) + 8 * v280) copyWithZone:a3];
        [v5 addCellularPowerLogCDMA1XTxPower:v281];

        ++v280;
      }

      while (v278 != v280);
      v278 = [(NSMutableArray *)v276 countByEnumeratingWithState:&v785 objects:v1019 count:16];
    }

    while (v278);
  }

  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v781 = 0u;
  v282 = self->_cellularPowerLogCDMA1XRxRSSIs;
  v283 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v781 objects:v1018 count:16];
  if (v283)
  {
    v284 = v283;
    v285 = *v782;
    do
    {
      v286 = 0;
      do
      {
        if (*v782 != v285)
        {
          objc_enumerationMutation(v282);
        }

        v287 = [*(*(&v781 + 1) + 8 * v286) copyWithZone:a3];
        [v5 addCellularPowerLogCDMA1XRxRSSI:v287];

        ++v286;
      }

      while (v284 != v286);
      v284 = [(NSMutableArray *)v282 countByEnumeratingWithState:&v781 objects:v1018 count:16];
    }

    while (v284);
  }

  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v777 = 0u;
  v288 = self->_cellularPowerLogCDMA1XRABModes;
  v289 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v777 objects:v1017 count:16];
  if (v289)
  {
    v290 = v289;
    v291 = *v778;
    do
    {
      v292 = 0;
      do
      {
        if (*v778 != v291)
        {
          objc_enumerationMutation(v288);
        }

        v293 = [*(*(&v777 + 1) + 8 * v292) copyWithZone:a3];
        [v5 addCellularPowerLogCDMA1XRABMode:v293];

        ++v292;
      }

      while (v290 != v292);
      v290 = [(NSMutableArray *)v288 countByEnumeratingWithState:&v777 objects:v1017 count:16];
    }

    while (v290);
  }

  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v773 = 0u;
  v294 = self->_cellularPowerLogCDMA1XRxDiversitys;
  v295 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v773 objects:v1016 count:16];
  if (v295)
  {
    v296 = v295;
    v297 = *v774;
    do
    {
      v298 = 0;
      do
      {
        if (*v774 != v297)
        {
          objc_enumerationMutation(v294);
        }

        v299 = [*(*(&v773 + 1) + 8 * v298) copyWithZone:a3];
        [v5 addCellularPowerLogCDMA1XRxDiversity:v299];

        ++v298;
      }

      while (v296 != v298);
      v296 = [(NSMutableArray *)v294 countByEnumeratingWithState:&v773 objects:v1016 count:16];
    }

    while (v296);
  }

  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v769 = 0u;
  v300 = self->_cellularPowerLogWCDMACDRXConfigs;
  v301 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v769 objects:v1015 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v770;
    do
    {
      v304 = 0;
      do
      {
        if (*v770 != v303)
        {
          objc_enumerationMutation(v300);
        }

        v305 = [*(*(&v769 + 1) + 8 * v304) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMACDRXConfig:v305];

        ++v304;
      }

      while (v302 != v304);
      v302 = [(NSMutableArray *)v300 countByEnumeratingWithState:&v769 objects:v1015 count:16];
    }

    while (v302);
  }

  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v765 = 0u;
  v306 = self->_cellularPowerLogLTECDRXConfigs;
  v307 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v765 objects:v1014 count:16];
  if (v307)
  {
    v308 = v307;
    v309 = *v766;
    do
    {
      v310 = 0;
      do
      {
        if (*v766 != v309)
        {
          objc_enumerationMutation(v306);
        }

        v311 = [*(*(&v765 + 1) + 8 * v310) copyWithZone:a3];
        [v5 addCellularPowerLogLTECDRXConfig:v311];

        ++v310;
      }

      while (v308 != v310);
      v308 = [(NSMutableArray *)v306 countByEnumeratingWithState:&v765 objects:v1014 count:16];
    }

    while (v308);
  }

  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v761 = 0u;
  v312 = self->_cellularPowerLogWCDMARRCStateChanges;
  v313 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v761 objects:v1013 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v762;
    do
    {
      v316 = 0;
      do
      {
        if (*v762 != v315)
        {
          objc_enumerationMutation(v312);
        }

        v317 = [*(*(&v761 + 1) + 8 * v316) copyWithZone:a3];
        [v5 addCellularPowerLogWCDMARRCStateChange:v317];

        ++v316;
      }

      while (v314 != v316);
      v314 = [(NSMutableArray *)v312 countByEnumeratingWithState:&v761 objects:v1013 count:16];
    }

    while (v314);
  }

  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v757 = 0u;
  v318 = self->_cellularPowerLogLTERRCStateChanges;
  v319 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v757 objects:v1012 count:16];
  if (v319)
  {
    v320 = v319;
    v321 = *v758;
    do
    {
      v322 = 0;
      do
      {
        if (*v758 != v321)
        {
          objc_enumerationMutation(v318);
        }

        v323 = [*(*(&v757 + 1) + 8 * v322) copyWithZone:a3];
        [v5 addCellularPowerLogLTERRCStateChange:v323];

        ++v322;
      }

      while (v320 != v322);
      v320 = [(NSMutableArray *)v318 countByEnumeratingWithState:&v757 objects:v1012 count:16];
    }

    while (v320);
  }

  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v753 = 0u;
  v324 = self->_cellularPowerLogSystemEvents;
  v325 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v753 objects:v1011 count:16];
  if (v325)
  {
    v326 = v325;
    v327 = *v754;
    do
    {
      v328 = 0;
      do
      {
        if (*v754 != v327)
        {
          objc_enumerationMutation(v324);
        }

        v329 = [*(*(&v753 + 1) + 8 * v328) copyWithZone:a3];
        [v5 addCellularPowerLogSystemEvent:v329];

        ++v328;
      }

      while (v326 != v328);
      v326 = [(NSMutableArray *)v324 countByEnumeratingWithState:&v753 objects:v1011 count:16];
    }

    while (v326);
  }

  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v749 = 0u;
  v330 = self->_cellularPowerLogRATReselectionEvents;
  v331 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v749 objects:v1010 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v750;
    do
    {
      v334 = 0;
      do
      {
        if (*v750 != v333)
        {
          objc_enumerationMutation(v330);
        }

        v335 = [*(*(&v749 + 1) + 8 * v334) copyWithZone:a3];
        [v5 addCellularPowerLogRATReselectionEvent:v335];

        ++v334;
      }

      while (v332 != v334);
      v332 = [(NSMutableArray *)v330 countByEnumeratingWithState:&v749 objects:v1010 count:16];
    }

    while (v332);
  }

  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v745 = 0u;
  v336 = self->_cellularPowerLogRATRedirectionEvents;
  v337 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v745 objects:v1009 count:16];
  if (v337)
  {
    v338 = v337;
    v339 = *v746;
    do
    {
      v340 = 0;
      do
      {
        if (*v746 != v339)
        {
          objc_enumerationMutation(v336);
        }

        v341 = [*(*(&v745 + 1) + 8 * v340) copyWithZone:a3];
        [v5 addCellularPowerLogRATRedirectionEvent:v341];

        ++v340;
      }

      while (v338 != v340);
      v338 = [(NSMutableArray *)v336 countByEnumeratingWithState:&v745 objects:v1009 count:16];
    }

    while (v338);
  }

  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v741 = 0u;
  v342 = self->_cellularPowerLogGSMRRCStateChanges;
  v343 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v741 objects:v1008 count:16];
  if (v343)
  {
    v344 = v343;
    v345 = *v742;
    do
    {
      v346 = 0;
      do
      {
        if (*v742 != v345)
        {
          objc_enumerationMutation(v342);
        }

        v347 = [*(*(&v741 + 1) + 8 * v346) copyWithZone:a3];
        [v5 addCellularPowerLogGSMRRCStateChange:v347];

        ++v346;
      }

      while (v344 != v346);
      v344 = [(NSMutableArray *)v342 countByEnumeratingWithState:&v741 objects:v1008 count:16];
    }

    while (v344);
  }

  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v737 = 0u;
  v348 = self->_cellularPowerLogCDMA1XRRCStateChanges;
  v349 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v737 objects:v1007 count:16];
  if (v349)
  {
    v350 = v349;
    v351 = *v738;
    do
    {
      v352 = 0;
      do
      {
        if (*v738 != v351)
        {
          objc_enumerationMutation(v348);
        }

        v353 = [*(*(&v737 + 1) + 8 * v352) copyWithZone:a3];
        [v5 addCellularPowerLogCDMA1XRRCStateChange:v353];

        ++v352;
      }

      while (v350 != v352);
      v350 = [(NSMutableArray *)v348 countByEnumeratingWithState:&v737 objects:v1007 count:16];
    }

    while (v350);
  }

  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v733 = 0u;
  v354 = self->_cellularPowerLogHybridRRCStateChanges;
  v355 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v733 objects:v1006 count:16];
  if (v355)
  {
    v356 = v355;
    v357 = *v734;
    do
    {
      v358 = 0;
      do
      {
        if (*v734 != v357)
        {
          objc_enumerationMutation(v354);
        }

        v359 = [*(*(&v733 + 1) + 8 * v358) copyWithZone:a3];
        [v5 addCellularPowerLogHybridRRCStateChange:v359];

        ++v358;
      }

      while (v356 != v358);
      v356 = [(NSMutableArray *)v354 countByEnumeratingWithState:&v733 objects:v1006 count:16];
    }

    while (v356);
  }

  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v729 = 0u;
  v360 = self->_cellularPowerLogServiceStateEvents;
  v361 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v729 objects:v1005 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v730;
    do
    {
      v364 = 0;
      do
      {
        if (*v730 != v363)
        {
          objc_enumerationMutation(v360);
        }

        v365 = [*(*(&v729 + 1) + 8 * v364) copyWithZone:a3];
        [v5 addCellularPowerLogServiceStateEvent:v365];

        ++v364;
      }

      while (v362 != v364);
      v362 = [(NSMutableArray *)v360 countByEnumeratingWithState:&v729 objects:v1005 count:16];
    }

    while (v362);
  }

  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v725 = 0u;
  v366 = self->_cellularPowerLogPLMNScanEvents;
  v367 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v725 objects:v1004 count:16];
  if (v367)
  {
    v368 = v367;
    v369 = *v726;
    do
    {
      v370 = 0;
      do
      {
        if (*v726 != v369)
        {
          objc_enumerationMutation(v366);
        }

        v371 = [*(*(&v725 + 1) + 8 * v370) copyWithZone:a3];
        [v5 addCellularPowerLogPLMNScanEvent:v371];

        ++v370;
      }

      while (v368 != v370);
      v368 = [(NSMutableArray *)v366 countByEnumeratingWithState:&v725 objects:v1004 count:16];
    }

    while (v368);
  }

  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v721 = 0u;
  v372 = self->_cellularPowerLogPLMNSearchEvents;
  v373 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v721 objects:v1003 count:16];
  if (v373)
  {
    v374 = v373;
    v375 = *v722;
    do
    {
      v376 = 0;
      do
      {
        if (*v722 != v375)
        {
          objc_enumerationMutation(v372);
        }

        v377 = [*(*(&v721 + 1) + 8 * v376) copyWithZone:a3];
        [v5 addCellularPowerLogPLMNSearchEvent:v377];

        ++v376;
      }

      while (v374 != v376);
      v374 = [(NSMutableArray *)v372 countByEnumeratingWithState:&v721 objects:v1003 count:16];
    }

    while (v374);
  }

  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v717 = 0u;
  v378 = self->_cellularPowerLogNRSARRCStateChanges;
  v379 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v717 objects:v1002 count:16];
  if (v379)
  {
    v380 = v379;
    v381 = *v718;
    do
    {
      v382 = 0;
      do
      {
        if (*v718 != v381)
        {
          objc_enumerationMutation(v378);
        }

        v383 = [*(*(&v717 + 1) + 8 * v382) copyWithZone:a3];
        [v5 addCellularPowerLogNRSARRCStateChange:v383];

        ++v382;
      }

      while (v380 != v382);
      v380 = [(NSMutableArray *)v378 countByEnumeratingWithState:&v717 objects:v1002 count:16];
    }

    while (v380);
  }

  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v713 = 0u;
  v384 = self->_cellularPowerLogNRNSAENDCEvents;
  v385 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v713 objects:v1001 count:16];
  if (v385)
  {
    v386 = v385;
    v387 = *v714;
    do
    {
      v388 = 0;
      do
      {
        if (*v714 != v387)
        {
          objc_enumerationMutation(v384);
        }

        v389 = [*(*(&v713 + 1) + 8 * v388) copyWithZone:a3];
        [v5 addCellularPowerLogNRNSAENDCEvent:v389];

        ++v388;
      }

      while (v386 != v388);
      v386 = [(NSMutableArray *)v384 countByEnumeratingWithState:&v713 objects:v1001 count:16];
    }

    while (v386);
  }

  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v709 = 0u;
  v390 = self->_cellularPowerLogNRCDRXConfigs;
  v391 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v709 objects:v1000 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v710;
    do
    {
      v394 = 0;
      do
      {
        if (*v710 != v393)
        {
          objc_enumerationMutation(v390);
        }

        v395 = [*(*(&v709 + 1) + 8 * v394) copyWithZone:a3];
        [v5 addCellularPowerLogNRCDRXConfig:v395];

        ++v394;
      }

      while (v392 != v394);
      v392 = [(NSMutableArray *)v390 countByEnumeratingWithState:&v709 objects:v1000 count:16];
    }

    while (v392);
  }

  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v705 = 0u;
  v396 = self->_cellularPowerLogNRsub6BWPs;
  v397 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v705 objects:v999 count:16];
  if (v397)
  {
    v398 = v397;
    v399 = *v706;
    do
    {
      v400 = 0;
      do
      {
        if (*v706 != v399)
        {
          objc_enumerationMutation(v396);
        }

        v401 = [*(*(&v705 + 1) + 8 * v400) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6BWP:v401];

        ++v400;
      }

      while (v398 != v400);
      v398 = [(NSMutableArray *)v396 countByEnumeratingWithState:&v705 objects:v999 count:16];
    }

    while (v398);
  }

  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v701 = 0u;
  v402 = self->_cellularPowerLogRFTunerStatsHists;
  v403 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v701 objects:v998 count:16];
  if (v403)
  {
    v404 = v403;
    v405 = *v702;
    do
    {
      v406 = 0;
      do
      {
        if (*v702 != v405)
        {
          objc_enumerationMutation(v402);
        }

        v407 = [*(*(&v701 + 1) + 8 * v406) copyWithZone:a3];
        [v5 addCellularPowerLogRFTunerStatsHist:v407];

        ++v406;
      }

      while (v404 != v406);
      v404 = [(NSMutableArray *)v402 countByEnumeratingWithState:&v701 objects:v998 count:16];
    }

    while (v404);
  }

  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v697 = 0u;
  v408 = self->_cellularPowerLogNRsub6CASCCConfigureds;
  v409 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v697 objects:v997 count:16];
  if (v409)
  {
    v410 = v409;
    v411 = *v698;
    do
    {
      v412 = 0;
      do
      {
        if (*v698 != v411)
        {
          objc_enumerationMutation(v408);
        }

        v413 = [*(*(&v697 + 1) + 8 * v412) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6CASCCConfigured:v413];

        ++v412;
      }

      while (v410 != v412);
      v410 = [(NSMutableArray *)v408 countByEnumeratingWithState:&v697 objects:v997 count:16];
    }

    while (v410);
  }

  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v693 = 0u;
  v414 = self->_cellularPowerLogNRsub6CASCCActivateds;
  v415 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v693 objects:v996 count:16];
  if (v415)
  {
    v416 = v415;
    v417 = *v694;
    do
    {
      v418 = 0;
      do
      {
        if (*v694 != v417)
        {
          objc_enumerationMutation(v414);
        }

        v419 = [*(*(&v693 + 1) + 8 * v418) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6CASCCActivated:v419];

        ++v418;
      }

      while (v416 != v418);
      v416 = [(NSMutableArray *)v414 countByEnumeratingWithState:&v693 objects:v996 count:16];
    }

    while (v416);
  }

  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v689 = 0u;
  v420 = self->_cellularPowerLogNRsub6RxTxs;
  v421 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v689 objects:v995 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v690;
    do
    {
      v424 = 0;
      do
      {
        if (*v690 != v423)
        {
          objc_enumerationMutation(v420);
        }

        v425 = [*(*(&v689 + 1) + 8 * v424) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6RxTx:v425];

        ++v424;
      }

      while (v422 != v424);
      v422 = [(NSMutableArray *)v420 countByEnumeratingWithState:&v689 objects:v995 count:16];
    }

    while (v422);
  }

  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v685 = 0u;
  v426 = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  v427 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v685 objects:v994 count:16];
  if (v427)
  {
    v428 = v427;
    v429 = *v686;
    do
    {
      v430 = 0;
      do
      {
        if (*v686 != v429)
        {
          objc_enumerationMutation(v426);
        }

        v431 = [*(*(&v685 + 1) + 8 * v430) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6CarrierComponentInfo:v431];

        ++v430;
      }

      while (v428 != v430);
      v428 = [(NSMutableArray *)v426 countByEnumeratingWithState:&v685 objects:v994 count:16];
    }

    while (v428);
  }

  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v681 = 0u;
  v432 = self->_cellularPowerLogNRsub6DLTBSs;
  v433 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v681 objects:v993 count:16];
  if (v433)
  {
    v434 = v433;
    v435 = *v682;
    do
    {
      v436 = 0;
      do
      {
        if (*v682 != v435)
        {
          objc_enumerationMutation(v432);
        }

        v437 = [*(*(&v681 + 1) + 8 * v436) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6DLTBS:v437];

        ++v436;
      }

      while (v434 != v436);
      v434 = [(NSMutableArray *)v432 countByEnumeratingWithState:&v681 objects:v993 count:16];
    }

    while (v434);
  }

  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v677 = 0u;
  v438 = self->_cellularPowerLogNRsub6RSRPs;
  v439 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v677 objects:v992 count:16];
  if (v439)
  {
    v440 = v439;
    v441 = *v678;
    do
    {
      v442 = 0;
      do
      {
        if (*v678 != v441)
        {
          objc_enumerationMutation(v438);
        }

        v443 = [*(*(&v677 + 1) + 8 * v442) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6RSRP:v443];

        ++v442;
      }

      while (v440 != v442);
      v440 = [(NSMutableArray *)v438 countByEnumeratingWithState:&v677 objects:v992 count:16];
    }

    while (v440);
  }

  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v673 = 0u;
  v444 = self->_cellularPowerLogNRsub6ULCAStates;
  v445 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v673 objects:v991 count:16];
  if (v445)
  {
    v446 = v445;
    v447 = *v674;
    do
    {
      v448 = 0;
      do
      {
        if (*v674 != v447)
        {
          objc_enumerationMutation(v444);
        }

        v449 = [*(*(&v673 + 1) + 8 * v448) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6ULCAState:v449];

        ++v448;
      }

      while (v446 != v448);
      v446 = [(NSMutableArray *)v444 countByEnumeratingWithState:&v673 objects:v991 count:16];
    }

    while (v446);
  }

  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v669 = 0u;
  v450 = self->_cellularPowerLogNRsub6TxPowers;
  v451 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v669 objects:v990 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v670;
    do
    {
      v454 = 0;
      do
      {
        if (*v670 != v453)
        {
          objc_enumerationMutation(v450);
        }

        v455 = [*(*(&v669 + 1) + 8 * v454) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6TxPower:v455];

        ++v454;
      }

      while (v452 != v454);
      v452 = [(NSMutableArray *)v450 countByEnumeratingWithState:&v669 objects:v990 count:16];
    }

    while (v452);
  }

  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v665 = 0u;
  v456 = self->_cellularPowerLogNRsub6RxDiversitys;
  v457 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v665 objects:v989 count:16];
  if (v457)
  {
    v458 = v457;
    v459 = *v666;
    do
    {
      v460 = 0;
      do
      {
        if (*v666 != v459)
        {
          objc_enumerationMutation(v456);
        }

        v461 = [*(*(&v665 + 1) + 8 * v460) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6RxDiversity:v461];

        ++v460;
      }

      while (v458 != v460);
      v458 = [(NSMutableArray *)v456 countByEnumeratingWithState:&v665 objects:v989 count:16];
    }

    while (v458);
  }

  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v661 = 0u;
  v462 = self->_cellularPowerLogSPMIs;
  v463 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v661 objects:v988 count:16];
  if (v463)
  {
    v464 = v463;
    v465 = *v662;
    do
    {
      v466 = 0;
      do
      {
        if (*v662 != v465)
        {
          objc_enumerationMutation(v462);
        }

        v467 = [*(*(&v661 + 1) + 8 * v466) copyWithZone:a3];
        [v5 addCellularPowerLogSPMI:v467];

        ++v466;
      }

      while (v464 != v466);
      v464 = [(NSMutableArray *)v462 countByEnumeratingWithState:&v661 objects:v988 count:16];
    }

    while (v464);
  }

  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v657 = 0u;
  v468 = self->_cellularPowerLogNRmmWaveBWPs;
  v469 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v657 objects:v987 count:16];
  if (v469)
  {
    v470 = v469;
    v471 = *v658;
    do
    {
      v472 = 0;
      do
      {
        if (*v658 != v471)
        {
          objc_enumerationMutation(v468);
        }

        v473 = [*(*(&v657 + 1) + 8 * v472) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveBWP:v473];

        ++v472;
      }

      while (v470 != v472);
      v470 = [(NSMutableArray *)v468 countByEnumeratingWithState:&v657 objects:v987 count:16];
    }

    while (v470);
  }

  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v653 = 0u;
  v474 = self->_cellularPowerLogNRmmWaveAntennaPanels;
  v475 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v653 objects:v986 count:16];
  if (v475)
  {
    v476 = v475;
    v477 = *v654;
    do
    {
      v478 = 0;
      do
      {
        if (*v654 != v477)
        {
          objc_enumerationMutation(v474);
        }

        v479 = [*(*(&v653 + 1) + 8 * v478) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveAntennaPanel:v479];

        ++v478;
      }

      while (v476 != v478);
      v476 = [(NSMutableArray *)v474 countByEnumeratingWithState:&v653 objects:v986 count:16];
    }

    while (v476);
  }

  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v649 = 0u;
  v480 = self->_cellularPowerLogNRFRCoverages;
  v481 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v649 objects:v985 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v650;
    do
    {
      v484 = 0;
      do
      {
        if (*v650 != v483)
        {
          objc_enumerationMutation(v480);
        }

        v485 = [*(*(&v649 + 1) + 8 * v484) copyWithZone:a3];
        [v5 addCellularPowerLogNRFRCoverage:v485];

        ++v484;
      }

      while (v482 != v484);
      v482 = [(NSMutableArray *)v480 countByEnumeratingWithState:&v649 objects:v985 count:16];
    }

    while (v482);
  }

  v647 = 0u;
  v648 = 0u;
  v645 = 0u;
  v646 = 0u;
  v486 = self->_cellularPowerLogNRmmWaveBeamIDs;
  v487 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v645 objects:v984 count:16];
  if (v487)
  {
    v488 = v487;
    v489 = *v646;
    do
    {
      v490 = 0;
      do
      {
        if (*v646 != v489)
        {
          objc_enumerationMutation(v486);
        }

        v491 = [*(*(&v645 + 1) + 8 * v490) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveBeamID:v491];

        ++v490;
      }

      while (v488 != v490);
      v488 = [(NSMutableArray *)v486 countByEnumeratingWithState:&v645 objects:v984 count:16];
    }

    while (v488);
  }

  v643 = 0u;
  v644 = 0u;
  v641 = 0u;
  v642 = 0u;
  v492 = self->_cellularPowerLogSFTStates;
  v493 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v641 objects:v983 count:16];
  if (v493)
  {
    v494 = v493;
    v495 = *v642;
    do
    {
      v496 = 0;
      do
      {
        if (*v642 != v495)
        {
          objc_enumerationMutation(v492);
        }

        v497 = [*(*(&v641 + 1) + 8 * v496) copyWithZone:a3];
        [v5 addCellularPowerLogSFTState:v497];

        ++v496;
      }

      while (v494 != v496);
      v494 = [(NSMutableArray *)v492 countByEnumeratingWithState:&v641 objects:v983 count:16];
    }

    while (v494);
  }

  v639 = 0u;
  v640 = 0u;
  v637 = 0u;
  v638 = 0u;
  v498 = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  v499 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v637 objects:v982 count:16];
  if (v499)
  {
    v500 = v499;
    v501 = *v638;
    do
    {
      v502 = 0;
      do
      {
        if (*v638 != v501)
        {
          objc_enumerationMutation(v498);
        }

        v503 = [*(*(&v637 + 1) + 8 * v502) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveCASCCConfigured:v503];

        ++v502;
      }

      while (v500 != v502);
      v500 = [(NSMutableArray *)v498 countByEnumeratingWithState:&v637 objects:v982 count:16];
    }

    while (v500);
  }

  v635 = 0u;
  v636 = 0u;
  v633 = 0u;
  v634 = 0u;
  v504 = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  v505 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v633 objects:v981 count:16];
  if (v505)
  {
    v506 = v505;
    v507 = *v634;
    do
    {
      v508 = 0;
      do
      {
        if (*v634 != v507)
        {
          objc_enumerationMutation(v504);
        }

        v509 = [*(*(&v633 + 1) + 8 * v508) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveCASCCActivated:v509];

        ++v508;
      }

      while (v506 != v508);
      v506 = [(NSMutableArray *)v504 countByEnumeratingWithState:&v633 objects:v981 count:16];
    }

    while (v506);
  }

  v631 = 0u;
  v632 = 0u;
  v629 = 0u;
  v630 = 0u;
  v510 = self->_cellularPowerLogNRmmWaveRxTxs;
  v511 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v629 objects:v980 count:16];
  if (v511)
  {
    v512 = v511;
    v513 = *v630;
    do
    {
      v514 = 0;
      do
      {
        if (*v630 != v513)
        {
          objc_enumerationMutation(v510);
        }

        v515 = [*(*(&v629 + 1) + 8 * v514) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveRxTx:v515];

        ++v514;
      }

      while (v512 != v514);
      v512 = [(NSMutableArray *)v510 countByEnumeratingWithState:&v629 objects:v980 count:16];
    }

    while (v512);
  }

  v627 = 0u;
  v628 = 0u;
  v625 = 0u;
  v626 = 0u;
  v516 = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  v517 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v625 objects:v979 count:16];
  if (v517)
  {
    v518 = v517;
    v519 = *v626;
    do
    {
      v520 = 0;
      do
      {
        if (*v626 != v519)
        {
          objc_enumerationMutation(v516);
        }

        v521 = [*(*(&v625 + 1) + 8 * v520) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveCarrierComponentInfo:v521];

        ++v520;
      }

      while (v518 != v520);
      v518 = [(NSMutableArray *)v516 countByEnumeratingWithState:&v625 objects:v979 count:16];
    }

    while (v518);
  }

  v623 = 0u;
  v624 = 0u;
  v621 = 0u;
  v622 = 0u;
  v522 = self->_cellularPowerLogNRmmWaveDLTBSs;
  v523 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v621 objects:v978 count:16];
  if (v523)
  {
    v524 = v523;
    v525 = *v622;
    do
    {
      v526 = 0;
      do
      {
        if (*v622 != v525)
        {
          objc_enumerationMutation(v522);
        }

        v527 = [*(*(&v621 + 1) + 8 * v526) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveDLTBS:v527];

        ++v526;
      }

      while (v524 != v526);
      v524 = [(NSMutableArray *)v522 countByEnumeratingWithState:&v621 objects:v978 count:16];
    }

    while (v524);
  }

  v619 = 0u;
  v620 = 0u;
  v617 = 0u;
  v618 = 0u;
  v528 = self->_cellularPowerLogNRMmWaveRSRPs;
  v529 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v617 objects:v977 count:16];
  if (v529)
  {
    v530 = v529;
    v531 = *v618;
    do
    {
      v532 = 0;
      do
      {
        if (*v618 != v531)
        {
          objc_enumerationMutation(v528);
        }

        v533 = [*(*(&v617 + 1) + 8 * v532) copyWithZone:a3];
        [v5 addCellularPowerLogNRMmWaveRSRP:v533];

        ++v532;
      }

      while (v530 != v532);
      v530 = [(NSMutableArray *)v528 countByEnumeratingWithState:&v617 objects:v977 count:16];
    }

    while (v530);
  }

  v615 = 0u;
  v616 = 0u;
  v613 = 0u;
  v614 = 0u;
  v534 = self->_cellularPowerLogSFTRxTxs;
  v535 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v613 objects:v976 count:16];
  if (v535)
  {
    v536 = v535;
    v537 = *v614;
    do
    {
      v538 = 0;
      do
      {
        if (*v614 != v537)
        {
          objc_enumerationMutation(v534);
        }

        v539 = [*(*(&v613 + 1) + 8 * v538) copyWithZone:a3];
        [v5 addCellularPowerLogSFTRxTx:v539];

        ++v538;
      }

      while (v536 != v538);
      v536 = [(NSMutableArray *)v534 countByEnumeratingWithState:&v613 objects:v976 count:16];
    }

    while (v536);
  }

  v611 = 0u;
  v612 = 0u;
  v609 = 0u;
  v610 = 0u;
  v540 = self->_cellularPowerLogNRMmWaveTxPowers;
  v541 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v609 objects:v975 count:16];
  if (v541)
  {
    v542 = v541;
    v543 = *v610;
    do
    {
      v544 = 0;
      do
      {
        if (*v610 != v543)
        {
          objc_enumerationMutation(v540);
        }

        v545 = [*(*(&v609 + 1) + 8 * v544) copyWithZone:a3];
        [v5 addCellularPowerLogNRMmWaveTxPower:v545];

        ++v544;
      }

      while (v542 != v544);
      v542 = [(NSMutableArray *)v540 countByEnumeratingWithState:&v609 objects:v975 count:16];
    }

    while (v542);
  }

  v607 = 0u;
  v608 = 0u;
  v605 = 0u;
  v606 = 0u;
  v546 = self->_cellularPowerLogNRMmWaveULCAStates;
  v547 = [(NSMutableArray *)v546 countByEnumeratingWithState:&v605 objects:v974 count:16];
  if (v547)
  {
    v548 = v547;
    v549 = *v606;
    do
    {
      v550 = 0;
      do
      {
        if (*v606 != v549)
        {
          objc_enumerationMutation(v546);
        }

        v551 = [*(*(&v605 + 1) + 8 * v550) copyWithZone:a3];
        [v5 addCellularPowerLogNRMmWaveULCAState:v551];

        ++v550;
      }

      while (v548 != v550);
      v548 = [(NSMutableArray *)v546 countByEnumeratingWithState:&v605 objects:v974 count:16];
    }

    while (v548);
  }

  v603 = 0u;
  v604 = 0u;
  v601 = 0u;
  v602 = 0u;
  v552 = self->_cellularPowerLogNRsub6BWPSCCs;
  v553 = [(NSMutableArray *)v552 countByEnumeratingWithState:&v601 objects:v973 count:16];
  if (v553)
  {
    v554 = v553;
    v555 = *v602;
    do
    {
      v556 = 0;
      do
      {
        if (*v602 != v555)
        {
          objc_enumerationMutation(v552);
        }

        v557 = [*(*(&v601 + 1) + 8 * v556) copyWithZone:a3];
        [v5 addCellularPowerLogNRsub6BWPSCC:v557];

        ++v556;
      }

      while (v554 != v556);
      v554 = [(NSMutableArray *)v552 countByEnumeratingWithState:&v601 objects:v973 count:16];
    }

    while (v554);
  }

  v599 = 0u;
  v600 = 0u;
  v597 = 0u;
  v598 = 0u;
  v558 = self->_cellularPowerLogNRmmWaveBWPSCCs;
  v559 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v597 objects:v972 count:16];
  if (v559)
  {
    v560 = v559;
    v561 = *v598;
    do
    {
      v562 = 0;
      do
      {
        if (*v598 != v561)
        {
          objc_enumerationMutation(v558);
        }

        v563 = [*(*(&v597 + 1) + 8 * v562) copyWithZone:a3];
        [v5 addCellularPowerLogNRmmWaveBWPSCC:v563];

        ++v562;
      }

      while (v560 != v562);
      v560 = [(NSMutableArray *)v558 countByEnumeratingWithState:&v597 objects:v972 count:16];
    }

    while (v560);
  }

  v595 = 0u;
  v596 = 0u;
  v593 = 0u;
  v594 = 0u;
  v564 = self->_cellularPowerLogNRDCEvents;
  v565 = [(NSMutableArray *)v564 countByEnumeratingWithState:&v593 objects:v971 count:16];
  if (v565)
  {
    v566 = v565;
    v567 = *v594;
    do
    {
      v568 = 0;
      do
      {
        if (*v594 != v567)
        {
          objc_enumerationMutation(v564);
        }

        v569 = [*(*(&v593 + 1) + 8 * v568) copyWithZone:a3];
        [v5 addCellularPowerLogNRDCEvent:v569];

        ++v568;
      }

      while (v566 != v568);
      v566 = [(NSMutableArray *)v564 countByEnumeratingWithState:&v593 objects:v971 count:16];
    }

    while (v566);
  }

  v591 = 0u;
  v592 = 0u;
  v589 = 0u;
  v590 = 0u;
  v570 = self->_cellularPowerLogWUSs;
  v571 = [(NSMutableArray *)v570 countByEnumeratingWithState:&v589 objects:v970 count:16];
  if (v571)
  {
    v572 = v571;
    v573 = *v590;
    do
    {
      v574 = 0;
      do
      {
        if (*v590 != v573)
        {
          objc_enumerationMutation(v570);
        }

        v575 = [*(*(&v589 + 1) + 8 * v574) copyWithZone:a3];
        [v5 addCellularPowerLogWUS:v575];

        ++v574;
      }

      while (v572 != v574);
      v572 = [(NSMutableArray *)v570 countByEnumeratingWithState:&v589 objects:v970 count:16];
    }

    while (v572);
  }

  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  v576 = self->_cellularPowerLogNRsub6BWPSAs;
  v577 = [(NSMutableArray *)v576 countByEnumeratingWithState:&v585 objects:v969 count:16];
  if (v577)
  {
    v578 = v577;
    v579 = *v586;
    do
    {
      v580 = 0;
      do
      {
        if (*v586 != v579)
        {
          objc_enumerationMutation(v576);
        }

        v581 = [*(*(&v585 + 1) + 8 * v580) copyWithZone:{a3, v585}];
        [v5 addCellularPowerLogNRsub6BWPSA:v581];

        ++v580;
      }

      while (v578 != v580);
      v578 = [(NSMutableArray *)v576 countByEnumeratingWithState:&v585 objects:v969 count:16];
    }

    while (v578);
  }

  v582 = v5;
  v583 = *MEMORY[0x277D85DE8];
  return v582;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_194;
  }

  cellularPerClientProfileTriggerCounts = self->_cellularPerClientProfileTriggerCounts;
  if (cellularPerClientProfileTriggerCounts | v4[4])
  {
    if (![(NSMutableArray *)cellularPerClientProfileTriggerCounts isEqual:?])
    {
      goto LABEL_194;
    }
  }

  cellularNrSDMActivations = self->_cellularNrSDMActivations;
  if (cellularNrSDMActivations | v4[2] && ![(NSMutableArray *)cellularNrSDMActivations isEqual:?])
  {
    goto LABEL_194;
  }

  cellularNrSdmEndcReleases = self->_cellularNrSdmEndcReleases;
  if (cellularNrSdmEndcReleases | v4[3] && ![(NSMutableArray *)cellularNrSdmEndcReleases isEqual:?])
  {
    goto LABEL_194;
  }

  cellularDynamicRatSelections = self->_cellularDynamicRatSelections;
  if (cellularDynamicRatSelections | v4[1] && ![(NSMutableArray *)cellularDynamicRatSelections isEqual:?])
  {
    goto LABEL_194;
  }

  cellularRfTunerHists = self->_cellularRfTunerHists;
  if (cellularRfTunerHists | v4[96] && ![(NSMutableArray *)cellularRfTunerHists isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogXOShutdowns = self->_cellularPowerLogXOShutdowns;
  if (cellularPowerLogXOShutdowns | v4[95] && ![(NSMutableArray *)cellularPowerLogXOShutdowns isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogAPPSPerfLevels = self->_cellularPowerLogAPPSPerfLevels;
  if (cellularPowerLogAPPSPerfLevels | v4[7] && ![(NSMutableArray *)cellularPowerLogAPPSPerfLevels isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogAPPSCXOShutdowns = self->_cellularPowerLogAPPSCXOShutdowns;
  if (cellularPowerLogAPPSCXOShutdowns | v4[6] && ![(NSMutableArray *)cellularPowerLogAPPSCXOShutdowns isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogAPPSSleepVetos = self->_cellularPowerLogAPPSSleepVetos;
  if (cellularPowerLogAPPSSleepVetos | v4[8] && ![(NSMutableArray *)cellularPowerLogAPPSSleepVetos isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogMCPMSleepVetos = self->_cellularPowerLogMCPMSleepVetos;
  if (cellularPowerLogMCPMSleepVetos | v4[39] && ![(NSMutableArray *)cellularPowerLogMCPMSleepVetos isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogMPSSPerfLevels = self->_cellularPowerLogMPSSPerfLevels;
  if (cellularPowerLogMPSSPerfLevels | v4[40] && ![(NSMutableArray *)cellularPowerLogMPSSPerfLevels isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogGPSStates = self->_cellularPowerLogGPSStates;
  if (cellularPowerLogGPSStates | v4[17] && ![(NSMutableArray *)cellularPowerLogGPSStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogAOPUARTStates = self->_cellularPowerLogAOPUARTStates;
  if (cellularPowerLogAOPUARTStates | v4[5] && ![(NSMutableArray *)cellularPowerLogAOPUARTStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWLANUARTStates = self->_cellularPowerLogWLANUARTStates;
  if (cellularPowerLogWLANUARTStates | v4[93] && ![(NSMutableArray *)cellularPowerLogWLANUARTStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogPCIeStates = self->_cellularPowerLogPCIeStates;
  if (cellularPowerLogPCIeStates | v4[72] && ![(NSMutableArray *)cellularPowerLogPCIeStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogL1SleepStates = self->_cellularPowerLogL1SleepStates;
  if (cellularPowerLogL1SleepStates | v4[25] && ![(NSMutableArray *)cellularPowerLogL1SleepStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTEConfiguredCASCCStates = self->_cellularPowerLogLTEConfiguredCASCCStates;
  if (cellularPowerLogLTEConfiguredCASCCStates | v4[30] && ![(NSMutableArray *)cellularPowerLogLTEConfiguredCASCCStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTEActivatedCASCCStates = self->_cellularPowerLogLTEActivatedCASCCStates;
  if (cellularPowerLogLTEActivatedCASCCStates | v4[26] && ![(NSMutableArray *)cellularPowerLogLTEActivatedCASCCStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTERxTxActivityStates = self->_cellularPowerLogLTERxTxActivityStates;
  if (cellularPowerLogLTERxTxActivityStates | v4[35] && ![(NSMutableArray *)cellularPowerLogLTERxTxActivityStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTECarrierComponentInfos = self->_cellularPowerLogLTECarrierComponentInfos;
  if (cellularPowerLogLTECarrierComponentInfos | v4[29] && ![(NSMutableArray *)cellularPowerLogLTECarrierComponentInfos isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTEAggregatedDLTBSs = self->_cellularPowerLogLTEAggregatedDLTBSs;
  if (cellularPowerLogLTEAggregatedDLTBSs | v4[27] && ![(NSMutableArray *)cellularPowerLogLTEAggregatedDLTBSs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTERSRPs = self->_cellularPowerLogLTERSRPs;
  if (cellularPowerLogLTERSRPs | v4[33] && ![(NSMutableArray *)cellularPowerLogLTERSRPs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTESINRs = self->_cellularPowerLogLTESINRs;
  if (cellularPowerLogLTESINRs | v4[36] && ![(NSMutableArray *)cellularPowerLogLTESINRs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTETxPowers = self->_cellularPowerLogLTETxPowers;
  if (cellularPowerLogLTETxPowers | v4[37] && ![(NSMutableArray *)cellularPowerLogLTETxPowers isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTERxDiversitys = self->_cellularPowerLogLTERxDiversitys;
  if (cellularPowerLogLTERxDiversitys | v4[34] && ![(NSMutableArray *)cellularPowerLogLTERxDiversitys isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTEULCAStates = self->_cellularPowerLogLTEULCAStates;
  if (cellularPowerLogLTEULCAStates | v4[38] && ![(NSMutableArray *)cellularPowerLogLTEULCAStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogPowerEstimators = self->_cellularPowerLogPowerEstimators;
  if (cellularPowerLogPowerEstimators | v4[76] && ![(NSMutableArray *)cellularPowerLogPowerEstimators isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTEPagingDRXCycles = self->_cellularPowerLogLTEPagingDRXCycles;
  if (cellularPowerLogLTEPagingDRXCycles | v4[31] && ![(NSMutableArray *)cellularPowerLogLTEPagingDRXCycles isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRPagingDRXCycles = self->_cellularPowerLogNRPagingDRXCycles;
  if (cellularPowerLogNRPagingDRXCycles | v4[48] && ![(NSMutableArray *)cellularPowerLogNRPagingDRXCycles isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogProtocolStates = self->_cellularPowerLogProtocolStates;
  if (cellularPowerLogProtocolStates | v4[77] && ![(NSMutableArray *)cellularPowerLogProtocolStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogPLMNSearchs = self->_cellularPowerLogPLMNSearchs;
  if (cellularPowerLogPLMNSearchs | v4[75] && ![(NSMutableArray *)cellularPowerLogPLMNSearchs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogGSMTxPowers = self->_cellularPowerLogGSMTxPowers;
  if (cellularPowerLogGSMTxPowers | v4[22] && ![(NSMutableArray *)cellularPowerLogGSMTxPowers isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogGSMRxRSSIs = self->_cellularPowerLogGSMRxRSSIs;
  if (cellularPowerLogGSMRxRSSIs | v4[21] && ![(NSMutableArray *)cellularPowerLogGSMRxRSSIs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogGSMRABModes = self->_cellularPowerLogGSMRABModes;
  if (cellularPowerLogGSMRABModes | v4[18] && ![(NSMutableArray *)cellularPowerLogGSMRABModes isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogGSMRxDiversitys = self->_cellularPowerLogGSMRxDiversitys;
  if (cellularPowerLogGSMRxDiversitys | v4[20] && ![(NSMutableArray *)cellularPowerLogGSMRxDiversitys isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMATxPowers = self->_cellularPowerLogWCDMATxPowers;
  if (cellularPowerLogWCDMATxPowers | v4[92] && ![(NSMutableArray *)cellularPowerLogWCDMATxPowers isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMARxRSSIs = self->_cellularPowerLogWCDMARxRSSIs;
  if (cellularPowerLogWCDMARxRSSIs | v4[91] && ![(NSMutableArray *)cellularPowerLogWCDMARxRSSIs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRSCGRels = self->_cellularPowerLogNRSCGRels;
  if (cellularPowerLogNRSCGRels | v4[50] && ![(NSMutableArray *)cellularPowerLogNRSCGRels isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMARxDiversitys = self->_cellularPowerLogWCDMARxDiversitys;
  if (cellularPowerLogWCDMARxDiversitys | v4[90] && ![(NSMutableArray *)cellularPowerLogWCDMARxDiversitys isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMARABModes = self->_cellularPowerLogWCDMARABModes;
  if (cellularPowerLogWCDMARABModes | v4[87] && ![(NSMutableArray *)cellularPowerLogWCDMARABModes isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMARABTypes = self->_cellularPowerLogWCDMARABTypes;
  if (cellularPowerLogWCDMARABTypes | v4[88] && ![(NSMutableArray *)cellularPowerLogWCDMARABTypes isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogEVDOTxPowers = self->_cellularPowerLogEVDOTxPowers;
  if (cellularPowerLogEVDOTxPowers | v4[16] && ![(NSMutableArray *)cellularPowerLogEVDOTxPowers isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogEVDORxRSSIs = self->_cellularPowerLogEVDORxRSSIs;
  if (cellularPowerLogEVDORxRSSIs | v4[15] && ![(NSMutableArray *)cellularPowerLogEVDORxRSSIs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogHybridRABModes = self->_cellularPowerLogHybridRABModes;
  if (cellularPowerLogHybridRABModes | v4[23] && ![(NSMutableArray *)cellularPowerLogHybridRABModes isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogEVDORxDiversitys = self->_cellularPowerLogEVDORxDiversitys;
  if (cellularPowerLogEVDORxDiversitys | v4[14] && ![(NSMutableArray *)cellularPowerLogEVDORxDiversitys isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogCDMA1XTxPowers = self->_cellularPowerLogCDMA1XTxPowers;
  if (cellularPowerLogCDMA1XTxPowers | v4[13] && ![(NSMutableArray *)cellularPowerLogCDMA1XTxPowers isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogCDMA1XRxRSSIs = self->_cellularPowerLogCDMA1XRxRSSIs;
  if (cellularPowerLogCDMA1XRxRSSIs | v4[12] && ![(NSMutableArray *)cellularPowerLogCDMA1XRxRSSIs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogCDMA1XRABModes = self->_cellularPowerLogCDMA1XRABModes;
  if (cellularPowerLogCDMA1XRABModes | v4[9] && ![(NSMutableArray *)cellularPowerLogCDMA1XRABModes isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogCDMA1XRxDiversitys = self->_cellularPowerLogCDMA1XRxDiversitys;
  if (cellularPowerLogCDMA1XRxDiversitys | v4[11] && ![(NSMutableArray *)cellularPowerLogCDMA1XRxDiversitys isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMACDRXConfigs = self->_cellularPowerLogWCDMACDRXConfigs;
  if (cellularPowerLogWCDMACDRXConfigs | v4[86] && ![(NSMutableArray *)cellularPowerLogWCDMACDRXConfigs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTECDRXConfigs = self->_cellularPowerLogLTECDRXConfigs;
  if (cellularPowerLogLTECDRXConfigs | v4[28] && ![(NSMutableArray *)cellularPowerLogLTECDRXConfigs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogWCDMARRCStateChanges = self->_cellularPowerLogWCDMARRCStateChanges;
  if (cellularPowerLogWCDMARRCStateChanges | v4[89] && ![(NSMutableArray *)cellularPowerLogWCDMARRCStateChanges isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogLTERRCStateChanges = self->_cellularPowerLogLTERRCStateChanges;
  if (cellularPowerLogLTERRCStateChanges | v4[32] && ![(NSMutableArray *)cellularPowerLogLTERRCStateChanges isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogSystemEvents = self->_cellularPowerLogSystemEvents;
  if (cellularPowerLogSystemEvents | v4[85] && ![(NSMutableArray *)cellularPowerLogSystemEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogRATReselectionEvents = self->_cellularPowerLogRATReselectionEvents;
  if (cellularPowerLogRATReselectionEvents | v4[79] && ![(NSMutableArray *)cellularPowerLogRATReselectionEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogRATRedirectionEvents = self->_cellularPowerLogRATRedirectionEvents;
  if (cellularPowerLogRATRedirectionEvents | v4[78] && ![(NSMutableArray *)cellularPowerLogRATRedirectionEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogGSMRRCStateChanges = self->_cellularPowerLogGSMRRCStateChanges;
  if (cellularPowerLogGSMRRCStateChanges | v4[19] && ![(NSMutableArray *)cellularPowerLogGSMRRCStateChanges isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogCDMA1XRRCStateChanges = self->_cellularPowerLogCDMA1XRRCStateChanges;
  if (cellularPowerLogCDMA1XRRCStateChanges | v4[10] && ![(NSMutableArray *)cellularPowerLogCDMA1XRRCStateChanges isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogHybridRRCStateChanges = self->_cellularPowerLogHybridRRCStateChanges;
  if (cellularPowerLogHybridRRCStateChanges | v4[24] && ![(NSMutableArray *)cellularPowerLogHybridRRCStateChanges isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogServiceStateEvents = self->_cellularPowerLogServiceStateEvents;
  if (cellularPowerLogServiceStateEvents | v4[84] && ![(NSMutableArray *)cellularPowerLogServiceStateEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogPLMNScanEvents = self->_cellularPowerLogPLMNScanEvents;
  if (cellularPowerLogPLMNScanEvents | v4[73] && ![(NSMutableArray *)cellularPowerLogPLMNScanEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogPLMNSearchEvents = self->_cellularPowerLogPLMNSearchEvents;
  if (cellularPowerLogPLMNSearchEvents | v4[74] && ![(NSMutableArray *)cellularPowerLogPLMNSearchEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRSARRCStateChanges = self->_cellularPowerLogNRSARRCStateChanges;
  if (cellularPowerLogNRSARRCStateChanges | v4[49] && ![(NSMutableArray *)cellularPowerLogNRSARRCStateChanges isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRNSAENDCEvents = self->_cellularPowerLogNRNSAENDCEvents;
  if (cellularPowerLogNRNSAENDCEvents | v4[47] && ![(NSMutableArray *)cellularPowerLogNRNSAENDCEvents isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRCDRXConfigs = self->_cellularPowerLogNRCDRXConfigs;
  if (cellularPowerLogNRCDRXConfigs | v4[41] && ![(NSMutableArray *)cellularPowerLogNRCDRXConfigs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6BWPs = self->_cellularPowerLogNRsub6BWPs;
  if (cellularPowerLogNRsub6BWPs | v4[62] && ![(NSMutableArray *)cellularPowerLogNRsub6BWPs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogRFTunerStatsHists = self->_cellularPowerLogRFTunerStatsHists;
  if (cellularPowerLogRFTunerStatsHists | v4[80] && ![(NSMutableArray *)cellularPowerLogRFTunerStatsHists isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6CASCCConfigureds = self->_cellularPowerLogNRsub6CASCCConfigureds;
  if (cellularPowerLogNRsub6CASCCConfigureds | v4[64] && ![(NSMutableArray *)cellularPowerLogNRsub6CASCCConfigureds isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6CASCCActivateds = self->_cellularPowerLogNRsub6CASCCActivateds;
  if (cellularPowerLogNRsub6CASCCActivateds | v4[63] && ![(NSMutableArray *)cellularPowerLogNRsub6CASCCActivateds isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6RxTxs = self->_cellularPowerLogNRsub6RxTxs;
  if (cellularPowerLogNRsub6RxTxs | v4[69] && ![(NSMutableArray *)cellularPowerLogNRsub6RxTxs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6CarrierComponentInfos = self->_cellularPowerLogNRsub6CarrierComponentInfos;
  if (cellularPowerLogNRsub6CarrierComponentInfos | v4[65] && ![(NSMutableArray *)cellularPowerLogNRsub6CarrierComponentInfos isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6DLTBSs = self->_cellularPowerLogNRsub6DLTBSs;
  if (cellularPowerLogNRsub6DLTBSs | v4[66] && ![(NSMutableArray *)cellularPowerLogNRsub6DLTBSs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6RSRPs = self->_cellularPowerLogNRsub6RSRPs;
  if (cellularPowerLogNRsub6RSRPs | v4[67] && ![(NSMutableArray *)cellularPowerLogNRsub6RSRPs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6ULCAStates = self->_cellularPowerLogNRsub6ULCAStates;
  if (cellularPowerLogNRsub6ULCAStates | v4[71] && ![(NSMutableArray *)cellularPowerLogNRsub6ULCAStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6TxPowers = self->_cellularPowerLogNRsub6TxPowers;
  if (cellularPowerLogNRsub6TxPowers | v4[70] && ![(NSMutableArray *)cellularPowerLogNRsub6TxPowers isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRsub6RxDiversitys = self->_cellularPowerLogNRsub6RxDiversitys;
  if (cellularPowerLogNRsub6RxDiversitys | v4[68] && ![(NSMutableArray *)cellularPowerLogNRsub6RxDiversitys isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogSPMIs = self->_cellularPowerLogSPMIs;
  if (cellularPowerLogSPMIs | v4[83] && ![(NSMutableArray *)cellularPowerLogSPMIs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveBWPs = self->_cellularPowerLogNRmmWaveBWPs;
  if (cellularPowerLogNRmmWaveBWPs | v4[53] && ![(NSMutableArray *)cellularPowerLogNRmmWaveBWPs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveAntennaPanels = self->_cellularPowerLogNRmmWaveAntennaPanels;
  if (cellularPowerLogNRmmWaveAntennaPanels | v4[51] && ![(NSMutableArray *)cellularPowerLogNRmmWaveAntennaPanels isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRFRCoverages = self->_cellularPowerLogNRFRCoverages;
  if (cellularPowerLogNRFRCoverages | v4[43] && ![(NSMutableArray *)cellularPowerLogNRFRCoverages isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveBeamIDs = self->_cellularPowerLogNRmmWaveBeamIDs;
  if (cellularPowerLogNRmmWaveBeamIDs | v4[54] && ![(NSMutableArray *)cellularPowerLogNRmmWaveBeamIDs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogSFTStates = self->_cellularPowerLogSFTStates;
  if (cellularPowerLogSFTStates | v4[82] && ![(NSMutableArray *)cellularPowerLogSFTStates isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveCASCCConfigureds = self->_cellularPowerLogNRmmWaveCASCCConfigureds;
  if (cellularPowerLogNRmmWaveCASCCConfigureds | v4[56] && ![(NSMutableArray *)cellularPowerLogNRmmWaveCASCCConfigureds isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveCASCCActivateds = self->_cellularPowerLogNRmmWaveCASCCActivateds;
  if (cellularPowerLogNRmmWaveCASCCActivateds | v4[55] && ![(NSMutableArray *)cellularPowerLogNRmmWaveCASCCActivateds isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveRxTxs = self->_cellularPowerLogNRmmWaveRxTxs;
  if (cellularPowerLogNRmmWaveRxTxs | v4[59] && ![(NSMutableArray *)cellularPowerLogNRmmWaveRxTxs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveCarrierComponentInfos = self->_cellularPowerLogNRmmWaveCarrierComponentInfos;
  if (cellularPowerLogNRmmWaveCarrierComponentInfos | v4[57] && ![(NSMutableArray *)cellularPowerLogNRmmWaveCarrierComponentInfos isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRmmWaveDLTBSs = self->_cellularPowerLogNRmmWaveDLTBSs;
  if (cellularPowerLogNRmmWaveDLTBSs | v4[58] && ![(NSMutableArray *)cellularPowerLogNRmmWaveDLTBSs isEqual:?])
  {
    goto LABEL_194;
  }

  cellularPowerLogNRMmWaveRSRPs = self->_cellularPowerLogNRMmWaveRSRPs;
  if (cellularPowerLogNRMmWaveRSRPs | v4[44] && ![(NSMutableArray *)cellularPowerLogNRMmWaveRSRPs isEqual:?])
  {
    goto LABEL_194;
  }

  if (((cellularPowerLogSFTRxTxs = self->_cellularPowerLogSFTRxTxs, !(cellularPowerLogSFTRxTxs | v4[81])) || [(NSMutableArray *)cellularPowerLogSFTRxTxs isEqual:?]) && ((cellularPowerLogNRMmWaveTxPowers = self->_cellularPowerLogNRMmWaveTxPowers, !(cellularPowerLogNRMmWaveTxPowers | v4[45])) || [(NSMutableArray *)cellularPowerLogNRMmWaveTxPowers isEqual:?]) && ((cellularPowerLogNRMmWaveULCAStates = self->_cellularPowerLogNRMmWaveULCAStates, !(cellularPowerLogNRMmWaveULCAStates | v4[46])) || [(NSMutableArray *)cellularPowerLogNRMmWaveULCAStates isEqual:?]) && ((cellularPowerLogNRsub6BWPSCCs = self->_cellularPowerLogNRsub6BWPSCCs, !(cellularPowerLogNRsub6BWPSCCs | v4[61])) || [(NSMutableArray *)cellularPowerLogNRsub6BWPSCCs isEqual:?]) && ((cellularPowerLogNRmmWaveBWPSCCs = self->_cellularPowerLogNRmmWaveBWPSCCs, !(cellularPowerLogNRmmWaveBWPSCCs | v4[52])) || [(NSMutableArray *)cellularPowerLogNRmmWaveBWPSCCs isEqual:?]) && ((cellularPowerLogNRDCEvents = self->_cellularPowerLogNRDCEvents, !(cellularPowerLogNRDCEvents | v4[42])) || [(NSMutableArray *)cellularPowerLogNRDCEvents isEqual:?]) && ((cellularPowerLogWUSs = self->_cellularPowerLogWUSs, !(cellularPowerLogWUSs | v4[94])) || [(NSMutableArray *)cellularPowerLogWUSs isEqual:?]))
  {
    cellularPowerLogNRsub6BWPSAs = self->_cellularPowerLogNRsub6BWPSAs;
    if (cellularPowerLogNRsub6BWPSAs | v4[60])
    {
      v101 = [(NSMutableArray *)cellularPowerLogNRsub6BWPSAs isEqual:?];
    }

    else
    {
      v101 = 1;
    }
  }

  else
  {
LABEL_194:
    v101 = 0;
  }

  return v101;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_cellularPerClientProfileTriggerCounts hash];
  v4 = [(NSMutableArray *)self->_cellularNrSDMActivations hash]^ v3;
  v5 = [(NSMutableArray *)self->_cellularNrSdmEndcReleases hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_cellularDynamicRatSelections hash];
  v7 = [(NSMutableArray *)self->_cellularRfTunerHists hash];
  v8 = v7 ^ [(NSMutableArray *)self->_cellularPowerLogXOShutdowns hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_cellularPowerLogAPPSPerfLevels hash];
  v10 = [(NSMutableArray *)self->_cellularPowerLogAPPSCXOShutdowns hash];
  v11 = v10 ^ [(NSMutableArray *)self->_cellularPowerLogAPPSSleepVetos hash];
  v12 = v11 ^ [(NSMutableArray *)self->_cellularPowerLogMCPMSleepVetos hash];
  v13 = v9 ^ v12 ^ [(NSMutableArray *)self->_cellularPowerLogMPSSPerfLevels hash];
  v14 = [(NSMutableArray *)self->_cellularPowerLogGPSStates hash];
  v15 = v14 ^ [(NSMutableArray *)self->_cellularPowerLogAOPUARTStates hash];
  v16 = v15 ^ [(NSMutableArray *)self->_cellularPowerLogWLANUARTStates hash];
  v17 = v16 ^ [(NSMutableArray *)self->_cellularPowerLogPCIeStates hash];
  v18 = v13 ^ v17 ^ [(NSMutableArray *)self->_cellularPowerLogL1SleepStates hash];
  v19 = [(NSMutableArray *)self->_cellularPowerLogLTEConfiguredCASCCStates hash];
  v20 = v19 ^ [(NSMutableArray *)self->_cellularPowerLogLTEActivatedCASCCStates hash];
  v21 = v20 ^ [(NSMutableArray *)self->_cellularPowerLogLTERxTxActivityStates hash];
  v22 = v21 ^ [(NSMutableArray *)self->_cellularPowerLogLTECarrierComponentInfos hash];
  v23 = v22 ^ [(NSMutableArray *)self->_cellularPowerLogLTEAggregatedDLTBSs hash];
  v24 = v18 ^ v23 ^ [(NSMutableArray *)self->_cellularPowerLogLTERSRPs hash];
  v25 = [(NSMutableArray *)self->_cellularPowerLogLTESINRs hash];
  v26 = v25 ^ [(NSMutableArray *)self->_cellularPowerLogLTETxPowers hash];
  v27 = v26 ^ [(NSMutableArray *)self->_cellularPowerLogLTERxDiversitys hash];
  v28 = v27 ^ [(NSMutableArray *)self->_cellularPowerLogLTEULCAStates hash];
  v29 = v28 ^ [(NSMutableArray *)self->_cellularPowerLogPowerEstimators hash];
  v30 = v29 ^ [(NSMutableArray *)self->_cellularPowerLogLTEPagingDRXCycles hash];
  v31 = v24 ^ v30 ^ [(NSMutableArray *)self->_cellularPowerLogNRPagingDRXCycles hash];
  v32 = [(NSMutableArray *)self->_cellularPowerLogProtocolStates hash];
  v33 = v32 ^ [(NSMutableArray *)self->_cellularPowerLogPLMNSearchs hash];
  v34 = v33 ^ [(NSMutableArray *)self->_cellularPowerLogGSMTxPowers hash];
  v35 = v34 ^ [(NSMutableArray *)self->_cellularPowerLogGSMRxRSSIs hash];
  v36 = v35 ^ [(NSMutableArray *)self->_cellularPowerLogGSMRABModes hash];
  v37 = v36 ^ [(NSMutableArray *)self->_cellularPowerLogGSMRxDiversitys hash];
  v38 = v37 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMATxPowers hash];
  v39 = v31 ^ v38 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARxRSSIs hash];
  v40 = [(NSMutableArray *)self->_cellularPowerLogNRSCGRels hash];
  v41 = v40 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARxDiversitys hash];
  v42 = v41 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARABModes hash];
  v43 = v42 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARABTypes hash];
  v44 = v43 ^ [(NSMutableArray *)self->_cellularPowerLogEVDOTxPowers hash];
  v45 = v44 ^ [(NSMutableArray *)self->_cellularPowerLogEVDORxRSSIs hash];
  v46 = v45 ^ [(NSMutableArray *)self->_cellularPowerLogHybridRABModes hash];
  v47 = v46 ^ [(NSMutableArray *)self->_cellularPowerLogEVDORxDiversitys hash];
  v48 = v39 ^ v47 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XTxPowers hash];
  v49 = [(NSMutableArray *)self->_cellularPowerLogCDMA1XRxRSSIs hash];
  v50 = v49 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XRABModes hash];
  v51 = v50 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XRxDiversitys hash];
  v52 = v51 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMACDRXConfigs hash];
  v53 = v52 ^ [(NSMutableArray *)self->_cellularPowerLogLTECDRXConfigs hash];
  v54 = v53 ^ [(NSMutableArray *)self->_cellularPowerLogWCDMARRCStateChanges hash];
  v55 = v54 ^ [(NSMutableArray *)self->_cellularPowerLogLTERRCStateChanges hash];
  v56 = v55 ^ [(NSMutableArray *)self->_cellularPowerLogSystemEvents hash];
  v57 = v56 ^ [(NSMutableArray *)self->_cellularPowerLogRATReselectionEvents hash];
  v58 = v48 ^ v57 ^ [(NSMutableArray *)self->_cellularPowerLogRATRedirectionEvents hash];
  v59 = [(NSMutableArray *)self->_cellularPowerLogGSMRRCStateChanges hash];
  v60 = v59 ^ [(NSMutableArray *)self->_cellularPowerLogCDMA1XRRCStateChanges hash];
  v61 = v60 ^ [(NSMutableArray *)self->_cellularPowerLogHybridRRCStateChanges hash];
  v62 = v61 ^ [(NSMutableArray *)self->_cellularPowerLogServiceStateEvents hash];
  v63 = v62 ^ [(NSMutableArray *)self->_cellularPowerLogPLMNScanEvents hash];
  v64 = v63 ^ [(NSMutableArray *)self->_cellularPowerLogPLMNSearchEvents hash];
  v65 = v64 ^ [(NSMutableArray *)self->_cellularPowerLogNRSARRCStateChanges hash];
  v66 = v65 ^ [(NSMutableArray *)self->_cellularPowerLogNRNSAENDCEvents hash];
  v67 = v66 ^ [(NSMutableArray *)self->_cellularPowerLogNRCDRXConfigs hash];
  v68 = v67 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6BWPs hash];
  v69 = v58 ^ v68 ^ [(NSMutableArray *)self->_cellularPowerLogRFTunerStatsHists hash];
  v70 = [(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCConfigureds hash];
  v71 = v70 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6CASCCActivateds hash];
  v72 = v71 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6RxTxs hash];
  v73 = v72 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6CarrierComponentInfos hash];
  v74 = v73 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6DLTBSs hash];
  v75 = v74 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6RSRPs hash];
  v76 = v75 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6ULCAStates hash];
  v77 = v76 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6TxPowers hash];
  v78 = v77 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6RxDiversitys hash];
  v79 = v78 ^ [(NSMutableArray *)self->_cellularPowerLogSPMIs hash];
  v80 = v79 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPs hash];
  v81 = v69 ^ v80 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveAntennaPanels hash];
  v82 = [(NSMutableArray *)self->_cellularPowerLogNRFRCoverages hash];
  v83 = v82 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveBeamIDs hash];
  v84 = v83 ^ [(NSMutableArray *)self->_cellularPowerLogSFTStates hash];
  v85 = v84 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCConfigureds hash];
  v86 = v85 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveCASCCActivateds hash];
  v87 = v86 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveRxTxs hash];
  v88 = v87 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveCarrierComponentInfos hash];
  v89 = v88 ^ [(NSMutableArray *)self->_cellularPowerLogNRmmWaveDLTBSs hash];
  v90 = v89 ^ [(NSMutableArray *)self->_cellularPowerLogNRMmWaveRSRPs hash];
  v91 = v90 ^ [(NSMutableArray *)self->_cellularPowerLogSFTRxTxs hash];
  v92 = v91 ^ [(NSMutableArray *)self->_cellularPowerLogNRMmWaveTxPowers hash];
  v93 = v92 ^ [(NSMutableArray *)self->_cellularPowerLogNRMmWaveULCAStates hash];
  v94 = v81 ^ v93 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSCCs hash];
  v95 = [(NSMutableArray *)self->_cellularPowerLogNRmmWaveBWPSCCs hash];
  v96 = v95 ^ [(NSMutableArray *)self->_cellularPowerLogNRDCEvents hash];
  v97 = v96 ^ [(NSMutableArray *)self->_cellularPowerLogWUSs hash];
  return v94 ^ v97 ^ [(NSMutableArray *)self->_cellularPowerLogNRsub6BWPSAs hash];
}

- (void)mergeFrom:(id)a3
{
  v966 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v866 = 0u;
  v867 = 0u;
  v868 = 0u;
  v869 = 0u;
  v5 = v4[4];
  v6 = [v5 countByEnumeratingWithState:&v866 objects:v965 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v867;
    do
    {
      v9 = 0;
      do
      {
        if (*v867 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPerClientProfileTriggerCount:*(*(&v866 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v866 objects:v965 count:16];
    }

    while (v7);
  }

  v865 = 0u;
  v864 = 0u;
  v863 = 0u;
  v862 = 0u;
  v10 = v4[2];
  v11 = [v10 countByEnumeratingWithState:&v862 objects:v964 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v863;
    do
    {
      v14 = 0;
      do
      {
        if (*v863 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularNrSDMActivation:*(*(&v862 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v862 objects:v964 count:16];
    }

    while (v12);
  }

  v861 = 0u;
  v860 = 0u;
  v859 = 0u;
  v858 = 0u;
  v15 = v4[3];
  v16 = [v15 countByEnumeratingWithState:&v858 objects:v963 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v859;
    do
    {
      v19 = 0;
      do
      {
        if (*v859 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularNrSdmEndcRelease:*(*(&v858 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v858 objects:v963 count:16];
    }

    while (v17);
  }

  v857 = 0u;
  v856 = 0u;
  v855 = 0u;
  v854 = 0u;
  v20 = v4[1];
  v21 = [v20 countByEnumeratingWithState:&v854 objects:v962 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v855;
    do
    {
      v24 = 0;
      do
      {
        if (*v855 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularDynamicRatSelection:*(*(&v854 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v854 objects:v962 count:16];
    }

    while (v22);
  }

  v853 = 0u;
  v852 = 0u;
  v851 = 0u;
  v850 = 0u;
  v25 = v4[96];
  v26 = [v25 countByEnumeratingWithState:&v850 objects:v961 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v851;
    do
    {
      v29 = 0;
      do
      {
        if (*v851 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularRfTunerHist:*(*(&v850 + 1) + 8 * v29++)];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v850 objects:v961 count:16];
    }

    while (v27);
  }

  v849 = 0u;
  v848 = 0u;
  v847 = 0u;
  v846 = 0u;
  v30 = v4[95];
  v31 = [v30 countByEnumeratingWithState:&v846 objects:v960 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v847;
    do
    {
      v34 = 0;
      do
      {
        if (*v847 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogXOShutdown:*(*(&v846 + 1) + 8 * v34++)];
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v846 objects:v960 count:16];
    }

    while (v32);
  }

  v845 = 0u;
  v844 = 0u;
  v843 = 0u;
  v842 = 0u;
  v35 = v4[7];
  v36 = [v35 countByEnumeratingWithState:&v842 objects:v959 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v843;
    do
    {
      v39 = 0;
      do
      {
        if (*v843 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAPPSPerfLevels:*(*(&v842 + 1) + 8 * v39++)];
      }

      while (v37 != v39);
      v37 = [v35 countByEnumeratingWithState:&v842 objects:v959 count:16];
    }

    while (v37);
  }

  v841 = 0u;
  v840 = 0u;
  v839 = 0u;
  v838 = 0u;
  v40 = v4[6];
  v41 = [v40 countByEnumeratingWithState:&v838 objects:v958 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v839;
    do
    {
      v44 = 0;
      do
      {
        if (*v839 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAPPSCXOShutdown:*(*(&v838 + 1) + 8 * v44++)];
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v838 objects:v958 count:16];
    }

    while (v42);
  }

  v837 = 0u;
  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v45 = v4[8];
  v46 = [v45 countByEnumeratingWithState:&v834 objects:v957 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v835;
    do
    {
      v49 = 0;
      do
      {
        if (*v835 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAPPSSleepVeto:*(*(&v834 + 1) + 8 * v49++)];
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v834 objects:v957 count:16];
    }

    while (v47);
  }

  v833 = 0u;
  v832 = 0u;
  v831 = 0u;
  v830 = 0u;
  v50 = v4[39];
  v51 = [v50 countByEnumeratingWithState:&v830 objects:v956 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v831;
    do
    {
      v54 = 0;
      do
      {
        if (*v831 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogMCPMSleepVeto:*(*(&v830 + 1) + 8 * v54++)];
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v830 objects:v956 count:16];
    }

    while (v52);
  }

  v829 = 0u;
  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v55 = v4[40];
  v56 = [v55 countByEnumeratingWithState:&v826 objects:v955 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v827;
    do
    {
      v59 = 0;
      do
      {
        if (*v827 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogMPSSPerfLevels:*(*(&v826 + 1) + 8 * v59++)];
      }

      while (v57 != v59);
      v57 = [v55 countByEnumeratingWithState:&v826 objects:v955 count:16];
    }

    while (v57);
  }

  v825 = 0u;
  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v60 = v4[17];
  v61 = [v60 countByEnumeratingWithState:&v822 objects:v954 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v823;
    do
    {
      v64 = 0;
      do
      {
        if (*v823 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGPSStates:*(*(&v822 + 1) + 8 * v64++)];
      }

      while (v62 != v64);
      v62 = [v60 countByEnumeratingWithState:&v822 objects:v954 count:16];
    }

    while (v62);
  }

  v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v65 = v4[5];
  v66 = [v65 countByEnumeratingWithState:&v818 objects:v953 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v819;
    do
    {
      v69 = 0;
      do
      {
        if (*v819 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogAOPUARTStates:*(*(&v818 + 1) + 8 * v69++)];
      }

      while (v67 != v69);
      v67 = [v65 countByEnumeratingWithState:&v818 objects:v953 count:16];
    }

    while (v67);
  }

  v817 = 0u;
  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v70 = v4[93];
  v71 = [v70 countByEnumeratingWithState:&v814 objects:v952 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v815;
    do
    {
      v74 = 0;
      do
      {
        if (*v815 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWLANUARTStates:*(*(&v814 + 1) + 8 * v74++)];
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v814 objects:v952 count:16];
    }

    while (v72);
  }

  v813 = 0u;
  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v75 = v4[72];
  v76 = [v75 countByEnumeratingWithState:&v810 objects:v951 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v811;
    do
    {
      v79 = 0;
      do
      {
        if (*v811 != v78)
        {
          objc_enumerationMutation(v75);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPCIeStates:*(*(&v810 + 1) + 8 * v79++)];
      }

      while (v77 != v79);
      v77 = [v75 countByEnumeratingWithState:&v810 objects:v951 count:16];
    }

    while (v77);
  }

  v809 = 0u;
  v808 = 0u;
  v807 = 0u;
  v806 = 0u;
  v80 = v4[25];
  v81 = [v80 countByEnumeratingWithState:&v806 objects:v950 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v807;
    do
    {
      v84 = 0;
      do
      {
        if (*v807 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogL1SleepStates:*(*(&v806 + 1) + 8 * v84++)];
      }

      while (v82 != v84);
      v82 = [v80 countByEnumeratingWithState:&v806 objects:v950 count:16];
    }

    while (v82);
  }

  v805 = 0u;
  v804 = 0u;
  v803 = 0u;
  v802 = 0u;
  v85 = v4[30];
  v86 = [v85 countByEnumeratingWithState:&v802 objects:v949 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v803;
    do
    {
      v89 = 0;
      do
      {
        if (*v803 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEConfiguredCASCCStates:*(*(&v802 + 1) + 8 * v89++)];
      }

      while (v87 != v89);
      v87 = [v85 countByEnumeratingWithState:&v802 objects:v949 count:16];
    }

    while (v87);
  }

  v801 = 0u;
  v800 = 0u;
  v799 = 0u;
  v798 = 0u;
  v90 = v4[26];
  v91 = [v90 countByEnumeratingWithState:&v798 objects:v948 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v799;
    do
    {
      v94 = 0;
      do
      {
        if (*v799 != v93)
        {
          objc_enumerationMutation(v90);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEActivatedCASCCStates:*(*(&v798 + 1) + 8 * v94++)];
      }

      while (v92 != v94);
      v92 = [v90 countByEnumeratingWithState:&v798 objects:v948 count:16];
    }

    while (v92);
  }

  v797 = 0u;
  v796 = 0u;
  v795 = 0u;
  v794 = 0u;
  v95 = v4[35];
  v96 = [v95 countByEnumeratingWithState:&v794 objects:v947 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v795;
    do
    {
      v99 = 0;
      do
      {
        if (*v795 != v98)
        {
          objc_enumerationMutation(v95);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERxTxActivityStates:*(*(&v794 + 1) + 8 * v99++)];
      }

      while (v97 != v99);
      v97 = [v95 countByEnumeratingWithState:&v794 objects:v947 count:16];
    }

    while (v97);
  }

  v793 = 0u;
  v792 = 0u;
  v791 = 0u;
  v790 = 0u;
  v100 = v4[29];
  v101 = [v100 countByEnumeratingWithState:&v790 objects:v946 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v791;
    do
    {
      v104 = 0;
      do
      {
        if (*v791 != v103)
        {
          objc_enumerationMutation(v100);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTECarrierComponentInfo:*(*(&v790 + 1) + 8 * v104++)];
      }

      while (v102 != v104);
      v102 = [v100 countByEnumeratingWithState:&v790 objects:v946 count:16];
    }

    while (v102);
  }

  v789 = 0u;
  v788 = 0u;
  v787 = 0u;
  v786 = 0u;
  v105 = v4[27];
  v106 = [v105 countByEnumeratingWithState:&v786 objects:v945 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v787;
    do
    {
      v109 = 0;
      do
      {
        if (*v787 != v108)
        {
          objc_enumerationMutation(v105);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEAggregatedDLTBS:*(*(&v786 + 1) + 8 * v109++)];
      }

      while (v107 != v109);
      v107 = [v105 countByEnumeratingWithState:&v786 objects:v945 count:16];
    }

    while (v107);
  }

  v785 = 0u;
  v784 = 0u;
  v783 = 0u;
  v782 = 0u;
  v110 = v4[33];
  v111 = [v110 countByEnumeratingWithState:&v782 objects:v944 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v783;
    do
    {
      v114 = 0;
      do
      {
        if (*v783 != v113)
        {
          objc_enumerationMutation(v110);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERSRP:*(*(&v782 + 1) + 8 * v114++)];
      }

      while (v112 != v114);
      v112 = [v110 countByEnumeratingWithState:&v782 objects:v944 count:16];
    }

    while (v112);
  }

  v781 = 0u;
  v780 = 0u;
  v779 = 0u;
  v778 = 0u;
  v115 = v4[36];
  v116 = [v115 countByEnumeratingWithState:&v778 objects:v943 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v779;
    do
    {
      v119 = 0;
      do
      {
        if (*v779 != v118)
        {
          objc_enumerationMutation(v115);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTESINR:*(*(&v778 + 1) + 8 * v119++)];
      }

      while (v117 != v119);
      v117 = [v115 countByEnumeratingWithState:&v778 objects:v943 count:16];
    }

    while (v117);
  }

  v777 = 0u;
  v776 = 0u;
  v775 = 0u;
  v774 = 0u;
  v120 = v4[37];
  v121 = [v120 countByEnumeratingWithState:&v774 objects:v942 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v775;
    do
    {
      v124 = 0;
      do
      {
        if (*v775 != v123)
        {
          objc_enumerationMutation(v120);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTETxPower:*(*(&v774 + 1) + 8 * v124++)];
      }

      while (v122 != v124);
      v122 = [v120 countByEnumeratingWithState:&v774 objects:v942 count:16];
    }

    while (v122);
  }

  v773 = 0u;
  v772 = 0u;
  v771 = 0u;
  v770 = 0u;
  v125 = v4[34];
  v126 = [v125 countByEnumeratingWithState:&v770 objects:v941 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v771;
    do
    {
      v129 = 0;
      do
      {
        if (*v771 != v128)
        {
          objc_enumerationMutation(v125);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERxDiversity:*(*(&v770 + 1) + 8 * v129++)];
      }

      while (v127 != v129);
      v127 = [v125 countByEnumeratingWithState:&v770 objects:v941 count:16];
    }

    while (v127);
  }

  v769 = 0u;
  v768 = 0u;
  v767 = 0u;
  v766 = 0u;
  v130 = v4[38];
  v131 = [v130 countByEnumeratingWithState:&v766 objects:v940 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v767;
    do
    {
      v134 = 0;
      do
      {
        if (*v767 != v133)
        {
          objc_enumerationMutation(v130);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEULCAState:*(*(&v766 + 1) + 8 * v134++)];
      }

      while (v132 != v134);
      v132 = [v130 countByEnumeratingWithState:&v766 objects:v940 count:16];
    }

    while (v132);
  }

  v765 = 0u;
  v764 = 0u;
  v763 = 0u;
  v762 = 0u;
  v135 = v4[76];
  v136 = [v135 countByEnumeratingWithState:&v762 objects:v939 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v763;
    do
    {
      v139 = 0;
      do
      {
        if (*v763 != v138)
        {
          objc_enumerationMutation(v135);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPowerEstimator:*(*(&v762 + 1) + 8 * v139++)];
      }

      while (v137 != v139);
      v137 = [v135 countByEnumeratingWithState:&v762 objects:v939 count:16];
    }

    while (v137);
  }

  v761 = 0u;
  v760 = 0u;
  v759 = 0u;
  v758 = 0u;
  v140 = v4[31];
  v141 = [v140 countByEnumeratingWithState:&v758 objects:v938 count:16];
  if (v141)
  {
    v142 = v141;
    v143 = *v759;
    do
    {
      v144 = 0;
      do
      {
        if (*v759 != v143)
        {
          objc_enumerationMutation(v140);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTEPagingDRXCycle:*(*(&v758 + 1) + 8 * v144++)];
      }

      while (v142 != v144);
      v142 = [v140 countByEnumeratingWithState:&v758 objects:v938 count:16];
    }

    while (v142);
  }

  v757 = 0u;
  v756 = 0u;
  v755 = 0u;
  v754 = 0u;
  v145 = v4[48];
  v146 = [v145 countByEnumeratingWithState:&v754 objects:v937 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v755;
    do
    {
      v149 = 0;
      do
      {
        if (*v755 != v148)
        {
          objc_enumerationMutation(v145);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRPagingDRXCycle:*(*(&v754 + 1) + 8 * v149++)];
      }

      while (v147 != v149);
      v147 = [v145 countByEnumeratingWithState:&v754 objects:v937 count:16];
    }

    while (v147);
  }

  v753 = 0u;
  v752 = 0u;
  v751 = 0u;
  v750 = 0u;
  v150 = v4[77];
  v151 = [v150 countByEnumeratingWithState:&v750 objects:v936 count:16];
  if (v151)
  {
    v152 = v151;
    v153 = *v751;
    do
    {
      v154 = 0;
      do
      {
        if (*v751 != v153)
        {
          objc_enumerationMutation(v150);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogProtocolState:*(*(&v750 + 1) + 8 * v154++)];
      }

      while (v152 != v154);
      v152 = [v150 countByEnumeratingWithState:&v750 objects:v936 count:16];
    }

    while (v152);
  }

  v749 = 0u;
  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  v155 = v4[75];
  v156 = [v155 countByEnumeratingWithState:&v746 objects:v935 count:16];
  if (v156)
  {
    v157 = v156;
    v158 = *v747;
    do
    {
      v159 = 0;
      do
      {
        if (*v747 != v158)
        {
          objc_enumerationMutation(v155);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPLMNSearch:*(*(&v746 + 1) + 8 * v159++)];
      }

      while (v157 != v159);
      v157 = [v155 countByEnumeratingWithState:&v746 objects:v935 count:16];
    }

    while (v157);
  }

  v745 = 0u;
  v744 = 0u;
  v743 = 0u;
  v742 = 0u;
  v160 = v4[22];
  v161 = [v160 countByEnumeratingWithState:&v742 objects:v934 count:16];
  if (v161)
  {
    v162 = v161;
    v163 = *v743;
    do
    {
      v164 = 0;
      do
      {
        if (*v743 != v163)
        {
          objc_enumerationMutation(v160);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMTxPower:*(*(&v742 + 1) + 8 * v164++)];
      }

      while (v162 != v164);
      v162 = [v160 countByEnumeratingWithState:&v742 objects:v934 count:16];
    }

    while (v162);
  }

  v741 = 0u;
  v740 = 0u;
  v739 = 0u;
  v738 = 0u;
  v165 = v4[21];
  v166 = [v165 countByEnumeratingWithState:&v738 objects:v933 count:16];
  if (v166)
  {
    v167 = v166;
    v168 = *v739;
    do
    {
      v169 = 0;
      do
      {
        if (*v739 != v168)
        {
          objc_enumerationMutation(v165);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRxRSSI:*(*(&v738 + 1) + 8 * v169++)];
      }

      while (v167 != v169);
      v167 = [v165 countByEnumeratingWithState:&v738 objects:v933 count:16];
    }

    while (v167);
  }

  v737 = 0u;
  v736 = 0u;
  v735 = 0u;
  v734 = 0u;
  v170 = v4[18];
  v171 = [v170 countByEnumeratingWithState:&v734 objects:v932 count:16];
  if (v171)
  {
    v172 = v171;
    v173 = *v735;
    do
    {
      v174 = 0;
      do
      {
        if (*v735 != v173)
        {
          objc_enumerationMutation(v170);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRABMode:*(*(&v734 + 1) + 8 * v174++)];
      }

      while (v172 != v174);
      v172 = [v170 countByEnumeratingWithState:&v734 objects:v932 count:16];
    }

    while (v172);
  }

  v733 = 0u;
  v732 = 0u;
  v731 = 0u;
  v730 = 0u;
  v175 = v4[20];
  v176 = [v175 countByEnumeratingWithState:&v730 objects:v931 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v731;
    do
    {
      v179 = 0;
      do
      {
        if (*v731 != v178)
        {
          objc_enumerationMutation(v175);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRxDiversity:*(*(&v730 + 1) + 8 * v179++)];
      }

      while (v177 != v179);
      v177 = [v175 countByEnumeratingWithState:&v730 objects:v931 count:16];
    }

    while (v177);
  }

  v729 = 0u;
  v728 = 0u;
  v727 = 0u;
  v726 = 0u;
  v180 = v4[92];
  v181 = [v180 countByEnumeratingWithState:&v726 objects:v930 count:16];
  if (v181)
  {
    v182 = v181;
    v183 = *v727;
    do
    {
      v184 = 0;
      do
      {
        if (*v727 != v183)
        {
          objc_enumerationMutation(v180);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMATxPower:*(*(&v726 + 1) + 8 * v184++)];
      }

      while (v182 != v184);
      v182 = [v180 countByEnumeratingWithState:&v726 objects:v930 count:16];
    }

    while (v182);
  }

  v725 = 0u;
  v724 = 0u;
  v723 = 0u;
  v722 = 0u;
  v185 = v4[91];
  v186 = [v185 countByEnumeratingWithState:&v722 objects:v929 count:16];
  if (v186)
  {
    v187 = v186;
    v188 = *v723;
    do
    {
      v189 = 0;
      do
      {
        if (*v723 != v188)
        {
          objc_enumerationMutation(v185);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARxRSSI:*(*(&v722 + 1) + 8 * v189++)];
      }

      while (v187 != v189);
      v187 = [v185 countByEnumeratingWithState:&v722 objects:v929 count:16];
    }

    while (v187);
  }

  v721 = 0u;
  v720 = 0u;
  v719 = 0u;
  v718 = 0u;
  v190 = v4[50];
  v191 = [v190 countByEnumeratingWithState:&v718 objects:v928 count:16];
  if (v191)
  {
    v192 = v191;
    v193 = *v719;
    do
    {
      v194 = 0;
      do
      {
        if (*v719 != v193)
        {
          objc_enumerationMutation(v190);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRSCGRel:*(*(&v718 + 1) + 8 * v194++)];
      }

      while (v192 != v194);
      v192 = [v190 countByEnumeratingWithState:&v718 objects:v928 count:16];
    }

    while (v192);
  }

  v717 = 0u;
  v716 = 0u;
  v715 = 0u;
  v714 = 0u;
  v195 = v4[90];
  v196 = [v195 countByEnumeratingWithState:&v714 objects:v927 count:16];
  if (v196)
  {
    v197 = v196;
    v198 = *v715;
    do
    {
      v199 = 0;
      do
      {
        if (*v715 != v198)
        {
          objc_enumerationMutation(v195);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARxDiversity:*(*(&v714 + 1) + 8 * v199++)];
      }

      while (v197 != v199);
      v197 = [v195 countByEnumeratingWithState:&v714 objects:v927 count:16];
    }

    while (v197);
  }

  v713 = 0u;
  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  v200 = v4[87];
  v201 = [v200 countByEnumeratingWithState:&v710 objects:v926 count:16];
  if (v201)
  {
    v202 = v201;
    v203 = *v711;
    do
    {
      v204 = 0;
      do
      {
        if (*v711 != v203)
        {
          objc_enumerationMutation(v200);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARABMode:*(*(&v710 + 1) + 8 * v204++)];
      }

      while (v202 != v204);
      v202 = [v200 countByEnumeratingWithState:&v710 objects:v926 count:16];
    }

    while (v202);
  }

  v709 = 0u;
  v708 = 0u;
  v707 = 0u;
  v706 = 0u;
  v205 = v4[88];
  v206 = [v205 countByEnumeratingWithState:&v706 objects:v925 count:16];
  if (v206)
  {
    v207 = v206;
    v208 = *v707;
    do
    {
      v209 = 0;
      do
      {
        if (*v707 != v208)
        {
          objc_enumerationMutation(v205);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARABType:*(*(&v706 + 1) + 8 * v209++)];
      }

      while (v207 != v209);
      v207 = [v205 countByEnumeratingWithState:&v706 objects:v925 count:16];
    }

    while (v207);
  }

  v705 = 0u;
  v704 = 0u;
  v703 = 0u;
  v702 = 0u;
  v210 = v4[16];
  v211 = [v210 countByEnumeratingWithState:&v702 objects:v924 count:16];
  if (v211)
  {
    v212 = v211;
    v213 = *v703;
    do
    {
      v214 = 0;
      do
      {
        if (*v703 != v213)
        {
          objc_enumerationMutation(v210);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogEVDOTxPower:*(*(&v702 + 1) + 8 * v214++)];
      }

      while (v212 != v214);
      v212 = [v210 countByEnumeratingWithState:&v702 objects:v924 count:16];
    }

    while (v212);
  }

  v701 = 0u;
  v700 = 0u;
  v699 = 0u;
  v698 = 0u;
  v215 = v4[15];
  v216 = [v215 countByEnumeratingWithState:&v698 objects:v923 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v699;
    do
    {
      v219 = 0;
      do
      {
        if (*v699 != v218)
        {
          objc_enumerationMutation(v215);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogEVDORxRSSI:*(*(&v698 + 1) + 8 * v219++)];
      }

      while (v217 != v219);
      v217 = [v215 countByEnumeratingWithState:&v698 objects:v923 count:16];
    }

    while (v217);
  }

  v697 = 0u;
  v696 = 0u;
  v695 = 0u;
  v694 = 0u;
  v220 = v4[23];
  v221 = [v220 countByEnumeratingWithState:&v694 objects:v922 count:16];
  if (v221)
  {
    v222 = v221;
    v223 = *v695;
    do
    {
      v224 = 0;
      do
      {
        if (*v695 != v223)
        {
          objc_enumerationMutation(v220);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogHybridRABMode:*(*(&v694 + 1) + 8 * v224++)];
      }

      while (v222 != v224);
      v222 = [v220 countByEnumeratingWithState:&v694 objects:v922 count:16];
    }

    while (v222);
  }

  v693 = 0u;
  v692 = 0u;
  v691 = 0u;
  v690 = 0u;
  v225 = v4[14];
  v226 = [v225 countByEnumeratingWithState:&v690 objects:v921 count:16];
  if (v226)
  {
    v227 = v226;
    v228 = *v691;
    do
    {
      v229 = 0;
      do
      {
        if (*v691 != v228)
        {
          objc_enumerationMutation(v225);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogEVDORxDiversity:*(*(&v690 + 1) + 8 * v229++)];
      }

      while (v227 != v229);
      v227 = [v225 countByEnumeratingWithState:&v690 objects:v921 count:16];
    }

    while (v227);
  }

  v689 = 0u;
  v688 = 0u;
  v687 = 0u;
  v686 = 0u;
  v230 = v4[13];
  v231 = [v230 countByEnumeratingWithState:&v686 objects:v920 count:16];
  if (v231)
  {
    v232 = v231;
    v233 = *v687;
    do
    {
      v234 = 0;
      do
      {
        if (*v687 != v233)
        {
          objc_enumerationMutation(v230);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XTxPower:*(*(&v686 + 1) + 8 * v234++)];
      }

      while (v232 != v234);
      v232 = [v230 countByEnumeratingWithState:&v686 objects:v920 count:16];
    }

    while (v232);
  }

  v685 = 0u;
  v684 = 0u;
  v683 = 0u;
  v682 = 0u;
  v235 = v4[12];
  v236 = [v235 countByEnumeratingWithState:&v682 objects:v919 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v683;
    do
    {
      v239 = 0;
      do
      {
        if (*v683 != v238)
        {
          objc_enumerationMutation(v235);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRxRSSI:*(*(&v682 + 1) + 8 * v239++)];
      }

      while (v237 != v239);
      v237 = [v235 countByEnumeratingWithState:&v682 objects:v919 count:16];
    }

    while (v237);
  }

  v681 = 0u;
  v680 = 0u;
  v679 = 0u;
  v678 = 0u;
  v240 = v4[9];
  v241 = [v240 countByEnumeratingWithState:&v678 objects:v918 count:16];
  if (v241)
  {
    v242 = v241;
    v243 = *v679;
    do
    {
      v244 = 0;
      do
      {
        if (*v679 != v243)
        {
          objc_enumerationMutation(v240);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRABMode:*(*(&v678 + 1) + 8 * v244++)];
      }

      while (v242 != v244);
      v242 = [v240 countByEnumeratingWithState:&v678 objects:v918 count:16];
    }

    while (v242);
  }

  v677 = 0u;
  v676 = 0u;
  v675 = 0u;
  v674 = 0u;
  v245 = v4[11];
  v246 = [v245 countByEnumeratingWithState:&v674 objects:v917 count:16];
  if (v246)
  {
    v247 = v246;
    v248 = *v675;
    do
    {
      v249 = 0;
      do
      {
        if (*v675 != v248)
        {
          objc_enumerationMutation(v245);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRxDiversity:*(*(&v674 + 1) + 8 * v249++)];
      }

      while (v247 != v249);
      v247 = [v245 countByEnumeratingWithState:&v674 objects:v917 count:16];
    }

    while (v247);
  }

  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v670 = 0u;
  v250 = v4[86];
  v251 = [v250 countByEnumeratingWithState:&v670 objects:v916 count:16];
  if (v251)
  {
    v252 = v251;
    v253 = *v671;
    do
    {
      v254 = 0;
      do
      {
        if (*v671 != v253)
        {
          objc_enumerationMutation(v250);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMACDRXConfig:*(*(&v670 + 1) + 8 * v254++)];
      }

      while (v252 != v254);
      v252 = [v250 countByEnumeratingWithState:&v670 objects:v916 count:16];
    }

    while (v252);
  }

  v669 = 0u;
  v668 = 0u;
  v667 = 0u;
  v666 = 0u;
  v255 = v4[28];
  v256 = [v255 countByEnumeratingWithState:&v666 objects:v915 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = *v667;
    do
    {
      v259 = 0;
      do
      {
        if (*v667 != v258)
        {
          objc_enumerationMutation(v255);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTECDRXConfig:*(*(&v666 + 1) + 8 * v259++)];
      }

      while (v257 != v259);
      v257 = [v255 countByEnumeratingWithState:&v666 objects:v915 count:16];
    }

    while (v257);
  }

  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v662 = 0u;
  v260 = v4[89];
  v261 = [v260 countByEnumeratingWithState:&v662 objects:v914 count:16];
  if (v261)
  {
    v262 = v261;
    v263 = *v663;
    do
    {
      v264 = 0;
      do
      {
        if (*v663 != v263)
        {
          objc_enumerationMutation(v260);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWCDMARRCStateChange:*(*(&v662 + 1) + 8 * v264++)];
      }

      while (v262 != v264);
      v262 = [v260 countByEnumeratingWithState:&v662 objects:v914 count:16];
    }

    while (v262);
  }

  v661 = 0u;
  v660 = 0u;
  v659 = 0u;
  v658 = 0u;
  v265 = v4[32];
  v266 = [v265 countByEnumeratingWithState:&v658 objects:v913 count:16];
  if (v266)
  {
    v267 = v266;
    v268 = *v659;
    do
    {
      v269 = 0;
      do
      {
        if (*v659 != v268)
        {
          objc_enumerationMutation(v265);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogLTERRCStateChange:*(*(&v658 + 1) + 8 * v269++)];
      }

      while (v267 != v269);
      v267 = [v265 countByEnumeratingWithState:&v658 objects:v913 count:16];
    }

    while (v267);
  }

  v657 = 0u;
  v656 = 0u;
  v655 = 0u;
  v654 = 0u;
  v270 = v4[85];
  v271 = [v270 countByEnumeratingWithState:&v654 objects:v912 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v655;
    do
    {
      v274 = 0;
      do
      {
        if (*v655 != v273)
        {
          objc_enumerationMutation(v270);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSystemEvent:*(*(&v654 + 1) + 8 * v274++)];
      }

      while (v272 != v274);
      v272 = [v270 countByEnumeratingWithState:&v654 objects:v912 count:16];
    }

    while (v272);
  }

  v653 = 0u;
  v652 = 0u;
  v651 = 0u;
  v650 = 0u;
  v275 = v4[79];
  v276 = [v275 countByEnumeratingWithState:&v650 objects:v911 count:16];
  if (v276)
  {
    v277 = v276;
    v278 = *v651;
    do
    {
      v279 = 0;
      do
      {
        if (*v651 != v278)
        {
          objc_enumerationMutation(v275);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogRATReselectionEvent:*(*(&v650 + 1) + 8 * v279++)];
      }

      while (v277 != v279);
      v277 = [v275 countByEnumeratingWithState:&v650 objects:v911 count:16];
    }

    while (v277);
  }

  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v280 = v4[78];
  v281 = [v280 countByEnumeratingWithState:&v646 objects:v910 count:16];
  if (v281)
  {
    v282 = v281;
    v283 = *v647;
    do
    {
      v284 = 0;
      do
      {
        if (*v647 != v283)
        {
          objc_enumerationMutation(v280);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogRATRedirectionEvent:*(*(&v646 + 1) + 8 * v284++)];
      }

      while (v282 != v284);
      v282 = [v280 countByEnumeratingWithState:&v646 objects:v910 count:16];
    }

    while (v282);
  }

  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v285 = v4[19];
  v286 = [v285 countByEnumeratingWithState:&v642 objects:v909 count:16];
  if (v286)
  {
    v287 = v286;
    v288 = *v643;
    do
    {
      v289 = 0;
      do
      {
        if (*v643 != v288)
        {
          objc_enumerationMutation(v285);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogGSMRRCStateChange:*(*(&v642 + 1) + 8 * v289++)];
      }

      while (v287 != v289);
      v287 = [v285 countByEnumeratingWithState:&v642 objects:v909 count:16];
    }

    while (v287);
  }

  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v290 = v4[10];
  v291 = [v290 countByEnumeratingWithState:&v638 objects:v908 count:16];
  if (v291)
  {
    v292 = v291;
    v293 = *v639;
    do
    {
      v294 = 0;
      do
      {
        if (*v639 != v293)
        {
          objc_enumerationMutation(v290);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogCDMA1XRRCStateChange:*(*(&v638 + 1) + 8 * v294++)];
      }

      while (v292 != v294);
      v292 = [v290 countByEnumeratingWithState:&v638 objects:v908 count:16];
    }

    while (v292);
  }

  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v295 = v4[24];
  v296 = [v295 countByEnumeratingWithState:&v634 objects:v907 count:16];
  if (v296)
  {
    v297 = v296;
    v298 = *v635;
    do
    {
      v299 = 0;
      do
      {
        if (*v635 != v298)
        {
          objc_enumerationMutation(v295);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogHybridRRCStateChange:*(*(&v634 + 1) + 8 * v299++)];
      }

      while (v297 != v299);
      v297 = [v295 countByEnumeratingWithState:&v634 objects:v907 count:16];
    }

    while (v297);
  }

  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v300 = v4[84];
  v301 = [v300 countByEnumeratingWithState:&v630 objects:v906 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v631;
    do
    {
      v304 = 0;
      do
      {
        if (*v631 != v303)
        {
          objc_enumerationMutation(v300);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogServiceStateEvent:*(*(&v630 + 1) + 8 * v304++)];
      }

      while (v302 != v304);
      v302 = [v300 countByEnumeratingWithState:&v630 objects:v906 count:16];
    }

    while (v302);
  }

  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v305 = v4[73];
  v306 = [v305 countByEnumeratingWithState:&v626 objects:v905 count:16];
  if (v306)
  {
    v307 = v306;
    v308 = *v627;
    do
    {
      v309 = 0;
      do
      {
        if (*v627 != v308)
        {
          objc_enumerationMutation(v305);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPLMNScanEvent:*(*(&v626 + 1) + 8 * v309++)];
      }

      while (v307 != v309);
      v307 = [v305 countByEnumeratingWithState:&v626 objects:v905 count:16];
    }

    while (v307);
  }

  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v310 = v4[74];
  v311 = [v310 countByEnumeratingWithState:&v622 objects:v904 count:16];
  if (v311)
  {
    v312 = v311;
    v313 = *v623;
    do
    {
      v314 = 0;
      do
      {
        if (*v623 != v313)
        {
          objc_enumerationMutation(v310);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogPLMNSearchEvent:*(*(&v622 + 1) + 8 * v314++)];
      }

      while (v312 != v314);
      v312 = [v310 countByEnumeratingWithState:&v622 objects:v904 count:16];
    }

    while (v312);
  }

  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v315 = v4[49];
  v316 = [v315 countByEnumeratingWithState:&v618 objects:v903 count:16];
  if (v316)
  {
    v317 = v316;
    v318 = *v619;
    do
    {
      v319 = 0;
      do
      {
        if (*v619 != v318)
        {
          objc_enumerationMutation(v315);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRSARRCStateChange:*(*(&v618 + 1) + 8 * v319++)];
      }

      while (v317 != v319);
      v317 = [v315 countByEnumeratingWithState:&v618 objects:v903 count:16];
    }

    while (v317);
  }

  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v320 = v4[47];
  v321 = [v320 countByEnumeratingWithState:&v614 objects:v902 count:16];
  if (v321)
  {
    v322 = v321;
    v323 = *v615;
    do
    {
      v324 = 0;
      do
      {
        if (*v615 != v323)
        {
          objc_enumerationMutation(v320);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRNSAENDCEvent:*(*(&v614 + 1) + 8 * v324++)];
      }

      while (v322 != v324);
      v322 = [v320 countByEnumeratingWithState:&v614 objects:v902 count:16];
    }

    while (v322);
  }

  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v325 = v4[41];
  v326 = [v325 countByEnumeratingWithState:&v610 objects:v901 count:16];
  if (v326)
  {
    v327 = v326;
    v328 = *v611;
    do
    {
      v329 = 0;
      do
      {
        if (*v611 != v328)
        {
          objc_enumerationMutation(v325);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRCDRXConfig:*(*(&v610 + 1) + 8 * v329++)];
      }

      while (v327 != v329);
      v327 = [v325 countByEnumeratingWithState:&v610 objects:v901 count:16];
    }

    while (v327);
  }

  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v330 = v4[62];
  v331 = [v330 countByEnumeratingWithState:&v606 objects:v900 count:16];
  if (v331)
  {
    v332 = v331;
    v333 = *v607;
    do
    {
      v334 = 0;
      do
      {
        if (*v607 != v333)
        {
          objc_enumerationMutation(v330);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6BWP:*(*(&v606 + 1) + 8 * v334++)];
      }

      while (v332 != v334);
      v332 = [v330 countByEnumeratingWithState:&v606 objects:v900 count:16];
    }

    while (v332);
  }

  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v335 = v4[80];
  v336 = [v335 countByEnumeratingWithState:&v602 objects:v899 count:16];
  if (v336)
  {
    v337 = v336;
    v338 = *v603;
    do
    {
      v339 = 0;
      do
      {
        if (*v603 != v338)
        {
          objc_enumerationMutation(v335);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogRFTunerStatsHist:*(*(&v602 + 1) + 8 * v339++)];
      }

      while (v337 != v339);
      v337 = [v335 countByEnumeratingWithState:&v602 objects:v899 count:16];
    }

    while (v337);
  }

  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v340 = v4[64];
  v341 = [v340 countByEnumeratingWithState:&v598 objects:v898 count:16];
  if (v341)
  {
    v342 = v341;
    v343 = *v599;
    do
    {
      v344 = 0;
      do
      {
        if (*v599 != v343)
        {
          objc_enumerationMutation(v340);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6CASCCConfigured:*(*(&v598 + 1) + 8 * v344++)];
      }

      while (v342 != v344);
      v342 = [v340 countByEnumeratingWithState:&v598 objects:v898 count:16];
    }

    while (v342);
  }

  v597 = 0u;
  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v345 = v4[63];
  v346 = [v345 countByEnumeratingWithState:&v594 objects:v897 count:16];
  if (v346)
  {
    v347 = v346;
    v348 = *v595;
    do
    {
      v349 = 0;
      do
      {
        if (*v595 != v348)
        {
          objc_enumerationMutation(v345);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6CASCCActivated:*(*(&v594 + 1) + 8 * v349++)];
      }

      while (v347 != v349);
      v347 = [v345 countByEnumeratingWithState:&v594 objects:v897 count:16];
    }

    while (v347);
  }

  v593 = 0u;
  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v350 = v4[69];
  v351 = [v350 countByEnumeratingWithState:&v590 objects:v896 count:16];
  if (v351)
  {
    v352 = v351;
    v353 = *v591;
    do
    {
      v354 = 0;
      do
      {
        if (*v591 != v353)
        {
          objc_enumerationMutation(v350);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6RxTx:*(*(&v590 + 1) + 8 * v354++)];
      }

      while (v352 != v354);
      v352 = [v350 countByEnumeratingWithState:&v590 objects:v896 count:16];
    }

    while (v352);
  }

  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v355 = v4[65];
  v356 = [v355 countByEnumeratingWithState:&v586 objects:v895 count:16];
  if (v356)
  {
    v357 = v356;
    v358 = *v587;
    do
    {
      v359 = 0;
      do
      {
        if (*v587 != v358)
        {
          objc_enumerationMutation(v355);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6CarrierComponentInfo:*(*(&v586 + 1) + 8 * v359++)];
      }

      while (v357 != v359);
      v357 = [v355 countByEnumeratingWithState:&v586 objects:v895 count:16];
    }

    while (v357);
  }

  v585 = 0u;
  v584 = 0u;
  v583 = 0u;
  v582 = 0u;
  v360 = v4[66];
  v361 = [v360 countByEnumeratingWithState:&v582 objects:v894 count:16];
  if (v361)
  {
    v362 = v361;
    v363 = *v583;
    do
    {
      v364 = 0;
      do
      {
        if (*v583 != v363)
        {
          objc_enumerationMutation(v360);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6DLTBS:*(*(&v582 + 1) + 8 * v364++)];
      }

      while (v362 != v364);
      v362 = [v360 countByEnumeratingWithState:&v582 objects:v894 count:16];
    }

    while (v362);
  }

  v581 = 0u;
  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v365 = v4[67];
  v366 = [v365 countByEnumeratingWithState:&v578 objects:v893 count:16];
  if (v366)
  {
    v367 = v366;
    v368 = *v579;
    do
    {
      v369 = 0;
      do
      {
        if (*v579 != v368)
        {
          objc_enumerationMutation(v365);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6RSRP:*(*(&v578 + 1) + 8 * v369++)];
      }

      while (v367 != v369);
      v367 = [v365 countByEnumeratingWithState:&v578 objects:v893 count:16];
    }

    while (v367);
  }

  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v370 = v4[71];
  v371 = [v370 countByEnumeratingWithState:&v574 objects:v892 count:16];
  if (v371)
  {
    v372 = v371;
    v373 = *v575;
    do
    {
      v374 = 0;
      do
      {
        if (*v575 != v373)
        {
          objc_enumerationMutation(v370);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6ULCAState:*(*(&v574 + 1) + 8 * v374++)];
      }

      while (v372 != v374);
      v372 = [v370 countByEnumeratingWithState:&v574 objects:v892 count:16];
    }

    while (v372);
  }

  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  v375 = v4[70];
  v376 = [v375 countByEnumeratingWithState:&v570 objects:v891 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v571;
    do
    {
      v379 = 0;
      do
      {
        if (*v571 != v378)
        {
          objc_enumerationMutation(v375);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6TxPower:*(*(&v570 + 1) + 8 * v379++)];
      }

      while (v377 != v379);
      v377 = [v375 countByEnumeratingWithState:&v570 objects:v891 count:16];
    }

    while (v377);
  }

  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  v380 = v4[68];
  v381 = [v380 countByEnumeratingWithState:&v566 objects:v890 count:16];
  if (v381)
  {
    v382 = v381;
    v383 = *v567;
    do
    {
      v384 = 0;
      do
      {
        if (*v567 != v383)
        {
          objc_enumerationMutation(v380);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6RxDiversity:*(*(&v566 + 1) + 8 * v384++)];
      }

      while (v382 != v384);
      v382 = [v380 countByEnumeratingWithState:&v566 objects:v890 count:16];
    }

    while (v382);
  }

  v565 = 0u;
  v564 = 0u;
  v563 = 0u;
  v562 = 0u;
  v385 = v4[83];
  v386 = [v385 countByEnumeratingWithState:&v562 objects:v889 count:16];
  if (v386)
  {
    v387 = v386;
    v388 = *v563;
    do
    {
      v389 = 0;
      do
      {
        if (*v563 != v388)
        {
          objc_enumerationMutation(v385);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSPMI:*(*(&v562 + 1) + 8 * v389++)];
      }

      while (v387 != v389);
      v387 = [v385 countByEnumeratingWithState:&v562 objects:v889 count:16];
    }

    while (v387);
  }

  v561 = 0u;
  v560 = 0u;
  v559 = 0u;
  v558 = 0u;
  v390 = v4[53];
  v391 = [v390 countByEnumeratingWithState:&v558 objects:v888 count:16];
  if (v391)
  {
    v392 = v391;
    v393 = *v559;
    do
    {
      v394 = 0;
      do
      {
        if (*v559 != v393)
        {
          objc_enumerationMutation(v390);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveBWP:*(*(&v558 + 1) + 8 * v394++)];
      }

      while (v392 != v394);
      v392 = [v390 countByEnumeratingWithState:&v558 objects:v888 count:16];
    }

    while (v392);
  }

  v557 = 0u;
  v556 = 0u;
  v555 = 0u;
  v554 = 0u;
  v395 = v4[51];
  v396 = [v395 countByEnumeratingWithState:&v554 objects:v887 count:16];
  if (v396)
  {
    v397 = v396;
    v398 = *v555;
    do
    {
      v399 = 0;
      do
      {
        if (*v555 != v398)
        {
          objc_enumerationMutation(v395);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveAntennaPanel:*(*(&v554 + 1) + 8 * v399++)];
      }

      while (v397 != v399);
      v397 = [v395 countByEnumeratingWithState:&v554 objects:v887 count:16];
    }

    while (v397);
  }

  v553 = 0u;
  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v400 = v4[43];
  v401 = [v400 countByEnumeratingWithState:&v550 objects:v886 count:16];
  if (v401)
  {
    v402 = v401;
    v403 = *v551;
    do
    {
      v404 = 0;
      do
      {
        if (*v551 != v403)
        {
          objc_enumerationMutation(v400);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRFRCoverage:*(*(&v550 + 1) + 8 * v404++)];
      }

      while (v402 != v404);
      v402 = [v400 countByEnumeratingWithState:&v550 objects:v886 count:16];
    }

    while (v402);
  }

  v548 = 0u;
  v549 = 0u;
  v546 = 0u;
  v547 = 0u;
  v405 = v4[54];
  v406 = [v405 countByEnumeratingWithState:&v546 objects:v885 count:16];
  if (v406)
  {
    v407 = v406;
    v408 = *v547;
    do
    {
      v409 = 0;
      do
      {
        if (*v547 != v408)
        {
          objc_enumerationMutation(v405);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveBeamID:*(*(&v546 + 1) + 8 * v409++)];
      }

      while (v407 != v409);
      v407 = [v405 countByEnumeratingWithState:&v546 objects:v885 count:16];
    }

    while (v407);
  }

  v544 = 0u;
  v545 = 0u;
  v542 = 0u;
  v543 = 0u;
  v410 = v4[82];
  v411 = [v410 countByEnumeratingWithState:&v542 objects:v884 count:16];
  if (v411)
  {
    v412 = v411;
    v413 = *v543;
    do
    {
      v414 = 0;
      do
      {
        if (*v543 != v413)
        {
          objc_enumerationMutation(v410);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSFTState:*(*(&v542 + 1) + 8 * v414++)];
      }

      while (v412 != v414);
      v412 = [v410 countByEnumeratingWithState:&v542 objects:v884 count:16];
    }

    while (v412);
  }

  v540 = 0u;
  v541 = 0u;
  v538 = 0u;
  v539 = 0u;
  v415 = v4[56];
  v416 = [v415 countByEnumeratingWithState:&v538 objects:v883 count:16];
  if (v416)
  {
    v417 = v416;
    v418 = *v539;
    do
    {
      v419 = 0;
      do
      {
        if (*v539 != v418)
        {
          objc_enumerationMutation(v415);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveCASCCConfigured:*(*(&v538 + 1) + 8 * v419++)];
      }

      while (v417 != v419);
      v417 = [v415 countByEnumeratingWithState:&v538 objects:v883 count:16];
    }

    while (v417);
  }

  v536 = 0u;
  v537 = 0u;
  v534 = 0u;
  v535 = 0u;
  v420 = v4[55];
  v421 = [v420 countByEnumeratingWithState:&v534 objects:v882 count:16];
  if (v421)
  {
    v422 = v421;
    v423 = *v535;
    do
    {
      v424 = 0;
      do
      {
        if (*v535 != v423)
        {
          objc_enumerationMutation(v420);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveCASCCActivated:*(*(&v534 + 1) + 8 * v424++)];
      }

      while (v422 != v424);
      v422 = [v420 countByEnumeratingWithState:&v534 objects:v882 count:16];
    }

    while (v422);
  }

  v532 = 0u;
  v533 = 0u;
  v530 = 0u;
  v531 = 0u;
  v425 = v4[59];
  v426 = [v425 countByEnumeratingWithState:&v530 objects:v881 count:16];
  if (v426)
  {
    v427 = v426;
    v428 = *v531;
    do
    {
      v429 = 0;
      do
      {
        if (*v531 != v428)
        {
          objc_enumerationMutation(v425);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveRxTx:*(*(&v530 + 1) + 8 * v429++)];
      }

      while (v427 != v429);
      v427 = [v425 countByEnumeratingWithState:&v530 objects:v881 count:16];
    }

    while (v427);
  }

  v528 = 0u;
  v529 = 0u;
  v526 = 0u;
  v527 = 0u;
  v430 = v4[57];
  v431 = [v430 countByEnumeratingWithState:&v526 objects:v880 count:16];
  if (v431)
  {
    v432 = v431;
    v433 = *v527;
    do
    {
      v434 = 0;
      do
      {
        if (*v527 != v433)
        {
          objc_enumerationMutation(v430);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveCarrierComponentInfo:*(*(&v526 + 1) + 8 * v434++)];
      }

      while (v432 != v434);
      v432 = [v430 countByEnumeratingWithState:&v526 objects:v880 count:16];
    }

    while (v432);
  }

  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v435 = v4[58];
  v436 = [v435 countByEnumeratingWithState:&v522 objects:v879 count:16];
  if (v436)
  {
    v437 = v436;
    v438 = *v523;
    do
    {
      v439 = 0;
      do
      {
        if (*v523 != v438)
        {
          objc_enumerationMutation(v435);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveDLTBS:*(*(&v522 + 1) + 8 * v439++)];
      }

      while (v437 != v439);
      v437 = [v435 countByEnumeratingWithState:&v522 objects:v879 count:16];
    }

    while (v437);
  }

  v520 = 0u;
  v521 = 0u;
  v518 = 0u;
  v519 = 0u;
  v440 = v4[44];
  v441 = [v440 countByEnumeratingWithState:&v518 objects:v878 count:16];
  if (v441)
  {
    v442 = v441;
    v443 = *v519;
    do
    {
      v444 = 0;
      do
      {
        if (*v519 != v443)
        {
          objc_enumerationMutation(v440);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRMmWaveRSRP:*(*(&v518 + 1) + 8 * v444++)];
      }

      while (v442 != v444);
      v442 = [v440 countByEnumeratingWithState:&v518 objects:v878 count:16];
    }

    while (v442);
  }

  v516 = 0u;
  v517 = 0u;
  v514 = 0u;
  v515 = 0u;
  v445 = v4[81];
  v446 = [v445 countByEnumeratingWithState:&v514 objects:v877 count:16];
  if (v446)
  {
    v447 = v446;
    v448 = *v515;
    do
    {
      v449 = 0;
      do
      {
        if (*v515 != v448)
        {
          objc_enumerationMutation(v445);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogSFTRxTx:*(*(&v514 + 1) + 8 * v449++)];
      }

      while (v447 != v449);
      v447 = [v445 countByEnumeratingWithState:&v514 objects:v877 count:16];
    }

    while (v447);
  }

  v512 = 0u;
  v513 = 0u;
  v510 = 0u;
  v511 = 0u;
  v450 = v4[45];
  v451 = [v450 countByEnumeratingWithState:&v510 objects:v876 count:16];
  if (v451)
  {
    v452 = v451;
    v453 = *v511;
    do
    {
      v454 = 0;
      do
      {
        if (*v511 != v453)
        {
          objc_enumerationMutation(v450);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRMmWaveTxPower:*(*(&v510 + 1) + 8 * v454++)];
      }

      while (v452 != v454);
      v452 = [v450 countByEnumeratingWithState:&v510 objects:v876 count:16];
    }

    while (v452);
  }

  v508 = 0u;
  v509 = 0u;
  v506 = 0u;
  v507 = 0u;
  v455 = v4[46];
  v456 = [v455 countByEnumeratingWithState:&v506 objects:v875 count:16];
  if (v456)
  {
    v457 = v456;
    v458 = *v507;
    do
    {
      v459 = 0;
      do
      {
        if (*v507 != v458)
        {
          objc_enumerationMutation(v455);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRMmWaveULCAState:*(*(&v506 + 1) + 8 * v459++)];
      }

      while (v457 != v459);
      v457 = [v455 countByEnumeratingWithState:&v506 objects:v875 count:16];
    }

    while (v457);
  }

  v504 = 0u;
  v505 = 0u;
  v502 = 0u;
  v503 = 0u;
  v460 = v4[61];
  v461 = [v460 countByEnumeratingWithState:&v502 objects:v874 count:16];
  if (v461)
  {
    v462 = v461;
    v463 = *v503;
    do
    {
      v464 = 0;
      do
      {
        if (*v503 != v463)
        {
          objc_enumerationMutation(v460);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6BWPSCC:*(*(&v502 + 1) + 8 * v464++)];
      }

      while (v462 != v464);
      v462 = [v460 countByEnumeratingWithState:&v502 objects:v874 count:16];
    }

    while (v462);
  }

  v500 = 0u;
  v501 = 0u;
  v498 = 0u;
  v499 = 0u;
  v465 = v4[52];
  v466 = [v465 countByEnumeratingWithState:&v498 objects:v873 count:16];
  if (v466)
  {
    v467 = v466;
    v468 = *v499;
    do
    {
      v469 = 0;
      do
      {
        if (*v499 != v468)
        {
          objc_enumerationMutation(v465);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRmmWaveBWPSCC:*(*(&v498 + 1) + 8 * v469++)];
      }

      while (v467 != v469);
      v467 = [v465 countByEnumeratingWithState:&v498 objects:v873 count:16];
    }

    while (v467);
  }

  v496 = 0u;
  v497 = 0u;
  v494 = 0u;
  v495 = 0u;
  v470 = v4[42];
  v471 = [v470 countByEnumeratingWithState:&v494 objects:v872 count:16];
  if (v471)
  {
    v472 = v471;
    v473 = *v495;
    do
    {
      v474 = 0;
      do
      {
        if (*v495 != v473)
        {
          objc_enumerationMutation(v470);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRDCEvent:*(*(&v494 + 1) + 8 * v474++)];
      }

      while (v472 != v474);
      v472 = [v470 countByEnumeratingWithState:&v494 objects:v872 count:16];
    }

    while (v472);
  }

  v492 = 0u;
  v493 = 0u;
  v490 = 0u;
  v491 = 0u;
  v475 = v4[94];
  v476 = [v475 countByEnumeratingWithState:&v490 objects:v871 count:16];
  if (v476)
  {
    v477 = v476;
    v478 = *v491;
    do
    {
      v479 = 0;
      do
      {
        if (*v491 != v478)
        {
          objc_enumerationMutation(v475);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogWUS:*(*(&v490 + 1) + 8 * v479++)];
      }

      while (v477 != v479);
      v477 = [v475 countByEnumeratingWithState:&v490 objects:v871 count:16];
    }

    while (v477);
  }

  v488 = 0u;
  v489 = 0u;
  v486 = 0u;
  v487 = 0u;
  v480 = v4[60];
  v481 = [v480 countByEnumeratingWithState:&v486 objects:v870 count:16];
  if (v481)
  {
    v482 = v481;
    v483 = *v487;
    do
    {
      v484 = 0;
      do
      {
        if (*v487 != v483)
        {
          objc_enumerationMutation(v480);
        }

        [(AWDMETRICSCellularPowerLog *)self addCellularPowerLogNRsub6BWPSA:*(*(&v486 + 1) + 8 * v484++), v486];
      }

      while (v482 != v484);
      v482 = [v480 countByEnumeratingWithState:&v486 objects:v870 count:16];
    }

    while (v482);
  }

  v485 = *MEMORY[0x277D85DE8];
}

@end
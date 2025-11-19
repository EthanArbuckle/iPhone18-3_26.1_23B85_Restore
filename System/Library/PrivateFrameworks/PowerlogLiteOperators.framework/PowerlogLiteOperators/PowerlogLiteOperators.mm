id PLLogApplication()
{
  if (qword_2811F6A98 != -1)
  {
    dispatch_once(&qword_2811F6A98, &__block_literal_global_62);
  }

  v1 = _MergedGlobals_1_60;

  return v1;
}

id PLLogLocation()
{
  if (qword_2811F6CD0 != -1)
  {
    dispatch_once(&qword_2811F6CD0, &__block_literal_global_63);
  }

  v1 = _MergedGlobals_1_63;

  return v1;
}

id PLLogDisplay()
{
  if (qword_2811F4928 != -1)
  {
    dispatch_once(&qword_2811F4928, &__block_literal_global_31);
  }

  v1 = qword_2811F4920;

  return v1;
}

uint64_t AWDMETRICSCellularPowerLogReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 806952)
      {
        switch(v13)
        {
          case 0xC0003:
            v14 = objc_alloc_init(AWDMETRICSCellularPerClientProfileTriggerCount);
            [a1 addCellularPerClientProfileTriggerCount:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPerClientProfileTriggerCountReadFrom(v14, a2) & 1) == 0)
            {
LABEL_187:

              return 0;
            }

            break;
          case 0xC5018:
            v14 = objc_alloc_init(AWDMETRICSCellularNrSDMActivation);
            [a1 addCellularNrSDMActivation:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularNrSDMActivationReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 0xC5019:
            v14 = objc_alloc_init(AWDMETRICSCellularNrSdmEndcRelease);
            [a1 addCellularNrSdmEndcRelease:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularNrSdmEndcReleaseReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          default:
LABEL_37:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_183;
        }
      }

      else
      {
        switch(v13)
        {
          case 816640:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogShutdown);
            [a1 addCellularPowerLogXOShutdown:v14];
            goto LABEL_97;
          case 816641:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogAPPSPerfLevels:v14];
            goto LABEL_180;
          case 816642:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogShutdown);
            [a1 addCellularPowerLogAPPSCXOShutdown:v14];
LABEL_97:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogShutdownReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816643:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogAPPSSleepVeto:v14];
            goto LABEL_180;
          case 816644:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogMCPMSleepVeto:v14];
            goto LABEL_180;
          case 816645:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogMPSSPerfLevels:v14];
            goto LABEL_180;
          case 816646:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGPSStates:v14];
            goto LABEL_180;
          case 816647:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogAOPUARTStates:v14];
            goto LABEL_180;
          case 816648:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWLANUARTStates:v14];
            goto LABEL_180;
          case 816649:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogPCIeStates:v14];
            goto LABEL_180;
          case 816650:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogL1SleepStates:v14];
            goto LABEL_180;
          case 816651:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEConfiguredCASCCStates:v14];
            goto LABEL_180;
          case 816652:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEActivatedCASCCStates:v14];
            goto LABEL_180;
          case 816653:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTERxTxActivityStates:v14];
            goto LABEL_180;
          case 816654:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogLTECarrierComponentInfo);
            [a1 addCellularPowerLogLTECarrierComponentInfo:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogLTECarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816655:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEAggregatedDLTBS:v14];
            goto LABEL_180;
          case 816656:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTERSRP:v14];
            goto LABEL_180;
          case 816657:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTESINR:v14];
            goto LABEL_180;
          case 816658:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTETxPower:v14];
            goto LABEL_180;
          case 816659:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTERxDiversity:v14];
            goto LABEL_180;
          case 816660:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEULCAState:v14];
            goto LABEL_180;
          case 816661:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogPowerEstimator:v14];
            goto LABEL_180;
          case 816662:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPagingDRXCycle);
            [a1 addCellularPowerLogLTEPagingDRXCycle:v14];
            goto LABEL_145;
          case 816663:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPagingDRXCycle);
            [a1 addCellularPowerLogNRPagingDRXCycle:v14];
LABEL_145:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogPagingDRXCycleReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816664:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogProtocolState:v14];
            goto LABEL_180;
          case 816665:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogPLMNSearch:v14];
            goto LABEL_180;
          case 816666:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMTxPower:v14];
            goto LABEL_180;
          case 816667:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMRxRSSI:v14];
            goto LABEL_180;
          case 816668:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMRABMode:v14];
            goto LABEL_180;
          case 816669:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMRxDiversity:v14];
            goto LABEL_180;
          case 816670:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMATxPower:v14];
            goto LABEL_180;
          case 816671:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARxRSSI:v14];
            goto LABEL_180;
          case 816672:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRSCGRel);
            [a1 addCellularPowerLogNRSCGRel:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRSCGRelReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816673:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARxDiversity:v14];
            goto LABEL_180;
          case 816674:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARABMode:v14];
            goto LABEL_180;
          case 816675:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARABType:v14];
            goto LABEL_180;
          case 816676:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogEVDOTxPower:v14];
            goto LABEL_180;
          case 816677:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogEVDORxRSSI:v14];
            goto LABEL_180;
          case 816678:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogHybridRABMode:v14];
            goto LABEL_180;
          case 816679:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogEVDORxDiversity:v14];
            goto LABEL_180;
          case 816680:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XTxPower:v14];
            goto LABEL_180;
          case 816681:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XRxRSSI:v14];
            goto LABEL_180;
          case 816682:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XRABMode:v14];
            goto LABEL_180;
          case 816683:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XRxDiversity:v14];
            goto LABEL_180;
          case 816684:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogWCDMACDRXConfig);
            [a1 addCellularPowerLogWCDMACDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogWCDMACDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816685:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogLTECDRXConfig);
            [a1 addCellularPowerLogLTECDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogLTECDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816686:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogWCDMARRCStateChange);
            [a1 addCellularPowerLogWCDMARRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogWCDMARRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816687:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogLTERRCStateChange);
            [a1 addCellularPowerLogLTERRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogLTERRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816688:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogSystemEvent);
            [a1 addCellularPowerLogSystemEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogSystemEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816689:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogRATChangeEvent);
            [a1 addCellularPowerLogRATReselectionEvent:v14];
            goto LABEL_85;
          case 816690:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogRATChangeEvent);
            [a1 addCellularPowerLogRATRedirectionEvent:v14];
LABEL_85:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogRATChangeEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816691:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogGSMRRCStateChange);
            [a1 addCellularPowerLogGSMRRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogGSMRRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816692:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLog1xEVDORRCStateChange);
            [a1 addCellularPowerLogCDMA1XRRCStateChange:v14];
            goto LABEL_163;
          case 816693:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLog1xEVDORRCStateChange);
            [a1 addCellularPowerLogHybridRRCStateChange:v14];
LABEL_163:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLog1xEVDORRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816694:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogServiceEvent);
            [a1 addCellularPowerLogServiceStateEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogServiceEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816695:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPLMNScanEvent);
            [a1 addCellularPowerLogPLMNScanEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogPLMNScanEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816696:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPLMNSearchEvent);
            [a1 addCellularPowerLogPLMNSearchEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogPLMNSearchEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816697:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRSARRCStateChange);
            [a1 addCellularPowerLogNRSARRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRSARRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816698:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRNSAENDCEvent);
            [a1 addCellularPowerLogNRNSAENDCEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRNSAENDCEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816699:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRCDRXConfig);
            [a1 addCellularPowerLogNRCDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRCDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816700:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6BWP:v14];
            goto LABEL_180;
          case 816701:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogRFTunerStatsHist:v14];
            goto LABEL_180;
          case 816702:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6CASCCConfigured:v14];
            goto LABEL_180;
          case 816703:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6CASCCActivated:v14];
            goto LABEL_180;
          case 816704:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6RxTx:v14];
            goto LABEL_180;
          case 816705:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRCarrierComponentInfo);
            [a1 addCellularPowerLogNRsub6CarrierComponentInfo:v14];
            goto LABEL_115;
          case 816706:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6DLTBS:v14];
            goto LABEL_180;
          case 816707:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6RSRP:v14];
            goto LABEL_180;
          case 816708:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6ULCAState:v14];
            goto LABEL_180;
          case 816709:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6TxPower:v14];
            goto LABEL_180;
          case 816710:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6RxDiversity:v14];
            goto LABEL_180;
          case 816711:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogSPMI:v14];
            goto LABEL_180;
          case 816712:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveBWP:v14];
            goto LABEL_180;
          case 816713:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveAntennaPanel:v14];
            goto LABEL_180;
          case 816714:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRFRCoverage);
            [a1 addCellularPowerLogNRFRCoverage:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRFRCoverageReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816715:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveBeamID:v14];
            goto LABEL_180;
          case 816716:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogSFTStateEvent);
            [a1 addCellularPowerLogSFTState:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogSFTStateEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816717:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveCASCCConfigured:v14];
            goto LABEL_180;
          case 816718:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveCASCCActivated:v14];
            goto LABEL_180;
          case 816719:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveRxTx:v14];
            goto LABEL_180;
          case 816720:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRCarrierComponentInfo);
            [a1 addCellularPowerLogNRmmWaveCarrierComponentInfo:v14];
LABEL_115:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRCarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816721:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveDLTBS:v14];
            goto LABEL_180;
          case 816722:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRMmWaveRSRP:v14];
            goto LABEL_180;
          case 816723:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogSFTRxTx:v14];
            goto LABEL_180;
          case 816724:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRMmWaveTxPower:v14];
            goto LABEL_180;
          case 816725:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRMmWaveULCAState:v14];
            goto LABEL_180;
          case 816726:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6BWPSCC:v14];
            goto LABEL_180;
          case 816727:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveBWPSCC:v14];
            goto LABEL_180;
          case 816728:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRDCEvent);
            [a1 addCellularPowerLogNRDCEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRDCEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816729:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogWUS);
            [a1 addCellularPowerLogWUS:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogWUSReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816730:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6BWPSA:v14];
LABEL_180:
            v17 = 0;
            v18 = 0;
            if (PBReaderPlaceMark() && (AWDMETRICSCellularPowerLogHistogramReadFrom(v14, a2) & 1) != 0)
            {
              break;
            }

            goto LABEL_187;
          default:
            if (v13 == 806953)
            {
              v14 = objc_alloc_init(AWDMETRICSCellularDynamicRatSelection);
              [a1 addCellularDynamicRatSelection:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSCellularDynamicRatSelectionReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_187;
              }
            }

            else
            {
              if (v13 != 816437)
              {
                goto LABEL_37;
              }

              v14 = objc_alloc_init(AWDMETRICSCellularRfTunerHist);
              [a1 addCellularRfTunerHist:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSCellularRfTunerHistReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_187;
              }
            }

            break;
        }
      }

      PBReaderRecallMark();

LABEL_183:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogLTERRCStateChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v60 & 0x7F) << v47;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 32;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v57 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v57 & 0x7F) << v21;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 16;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 20;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogPLMNScanEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v57 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v57 & 0x7F) << v34;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 20;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v61 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v61 & 0x7F) << v47;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 16;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v60 & 0x7F) << v21;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 32;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 24;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 28;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogSystemEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogPush()
{
  if (qword_2811F6358 != -1)
  {
    dispatch_once(&qword_2811F6358, &__block_literal_global_52);
  }

  v1 = _MergedGlobals_1_50;

  return v1;
}

id PLLogIDS()
{
  if (qword_2811F4888 != -1)
  {
    dispatch_once(&qword_2811F4888, &__block_literal_global_26);
  }

  v1 = _MergedGlobals_1_26;

  return v1;
}

uint64_t AWDMETRICSCellularPowerLogShutdownReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v45 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v45 & 0x7F) << v35;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v37;
          }

LABEL_76:
          v42 = 8;
          goto LABEL_77;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_67:
        v41 = 28;
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v46 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v46 & 0x7F) << v28;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_72:
          v42 = 16;
LABEL_77:
          *(a1 + v42) = v34;
          goto LABEL_78;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v48 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48 & 0x7F) << v14;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 24;
      }

      *(a1 + v41) = v20;
LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogXPC()
{
  if (qword_2811F6E08 != -1)
  {
    dispatch_once(&qword_2811F6E08, &__block_literal_global_65);
  }

  v1 = qword_2811F6E00;

  return v1;
}

uint64_t AWDMETRICSCellularPowerLogHistogramReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v38[0] & 0x7F) << v22;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_61:
        *(a1 + 8) = v28;
        goto LABEL_67;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(AWDMETRICSMBin);
      [a1 addBin:v14];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSMBinReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v31;
      }

LABEL_65:
      v35 = 28;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_57:
      v35 = 24;
LABEL_66:
      *(a1 + v35) = v21;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___AWDMETRICSMBin__binId;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDMETRICSMBin__binId;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___AWDMETRICSMBin__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDMETRICSMBin__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id PLLogSMCMetrics()
{
  if (qword_2811F3D40 != -1)
  {
    dispatch_once(&qword_2811F3D40, &__block_literal_global_1);
  }

  v1 = qword_2811F3D38;

  return v1;
}

id PLLogSMC()
{
  if (qword_2811F3FF8 != -1)
  {
    dispatch_once(&qword_2811F3FF8, &__block_literal_global_14);
  }

  v1 = qword_2811F3FF0;

  return v1;
}

id PLLogCoalition()
{
  if (qword_2811F3150 != -1)
  {
    dispatch_once(&qword_2811F3150, &__block_literal_global_43);
  }

  v1 = qword_2811F3148;

  return v1;
}

id PLLogAssertion()
{
  if (qword_2811F4188 != -1)
  {
    dispatch_once(&qword_2811F4188, &__block_literal_global_18);
  }

  v1 = qword_2811F4180;

  return v1;
}

id PLLogIOReport()
{
  if (qword_2811F4778 != -1)
  {
    dispatch_once(&qword_2811F4778, &__block_literal_global_24);
  }

  v1 = qword_2811F4770;

  return v1;
}

id PLLogWifi()
{
  if (qword_2811F66F8 != -1)
  {
    dispatch_once(&qword_2811F66F8, &__block_literal_global_56);
  }

  v1 = qword_2811F66F0;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLLogNfc()
{
  if (qword_2811F6218 != -1)
  {
    dispatch_once(&qword_2811F6218, &__block_literal_global_50);
  }

  v1 = _MergedGlobals_1_48;

  return v1;
}

id PLLogProcessNetwork()
{
  if (qword_2811F3FE0 != -1)
  {
    dispatch_once(&qword_2811F3FE0, &__block_literal_global_13);
  }

  v1 = _MergedGlobals_1_11;

  return v1;
}

id PLLogPerformance()
{
  if (qword_2811F30A0 != -1)
  {
    dispatch_once(&qword_2811F30A0, &__block_literal_global_10);
  }

  v1 = qword_2811F3098;

  return v1;
}

id PLLogAudio()
{
  if (qword_2811F4D80 != -1)
  {
    dispatch_once(&qword_2811F4D80, &__block_literal_global_40);
  }

  v1 = qword_2811F4D78;

  return v1;
}

id PLLogScreenState()
{
  if (qword_2811F3FA0 != -1)
  {
    dispatch_once(&qword_2811F3FA0, &__block_literal_global_12);
  }

  v1 = qword_2811F3F98;

  return v1;
}

id PLLogConfig()
{
  if (qword_2811F42C8 != -1)
  {
    dispatch_once(&qword_2811F42C8, &__block_literal_global_19);
  }

  v1 = _MergedGlobals_1_19;

  return v1;
}

id PLLogCoreDuet()
{
  if (qword_2811F3DF0 != -1)
  {
    dispatch_once(&qword_2811F3DF0, &__block_literal_global_4);
  }

  v1 = _MergedGlobals_1_2;

  return v1;
}

id PLLogThermal()
{
  if (qword_2811F3D28 != -1)
  {
    dispatch_once(&qword_2811F3D28, &__block_literal_global_0);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

void PowerChangedCallback(void *a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__7;
  v72 = __Block_byref_object_dispose__7;
  v6 = a1;
  v73 = v6;
  HIDWORD(v8) = a3 + 536870288;
  LODWORD(v8) = a3 + 536870288;
  v7 = v8 >> 4;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v57 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
      [v69[5] getSleepStatisticsApps];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      obj = v60 = 0u;
      v40 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
      if (v40)
      {
        v41 = *v60;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v60 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v59 + 1) + 8 * i);
            v74[0] = @"PID";
            v44 = [v43 objectForKeyedSubscript:@"PID"];
            v74[1] = @"AppName";
            v75[0] = v44;
            v45 = [v43 objectForKeyedSubscript:@"AppName"];
            v75[1] = v45;
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];

            v47 = [v43 objectForKeyedSubscript:@"ResponseType"];
            [v57 setObject:v47 forKeyedSubscript:v46];
          }

          v40 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
        }

        while (v40);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v48 = objc_opt_class();
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __PowerChangedCallback_block_invoke_460;
        v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v58[4] = v48;
        if (qword_2811F4750 != -1)
        {
          dispatch_once(&qword_2811F4750, v58);
        }

        if (byte_2811F46EA == 1)
        {
          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: SystemWillNotSleep dict[kPLSWE_ResponseType] =%lld ", objc_msgSend(v57, "entryID")];
          v50 = MEMORY[0x277D3F178];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
          v52 = [v51 lastPathComponent];
          v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
          [v50 logMessage:v49 fromFile:v52 fromFunction:v53 fromLineNumber:1225];

          v54 = PLLogCommon();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v49;
            _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }
      }

      [v69[5] logEntry:v57];
    }

    else if (v7 == 9)
    {
      [v6 systemPoweredOn];
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v9 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
      [v69[5] logEntry:v9];
      IOAllowPowerChange([v69[5] rootDomainConnect], a4);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __PowerChangedCallback_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F4728 != -1)
      {
        dispatch_once(&qword_2811F4728, block);
      }

      if (byte_2811F46E5 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: start listening"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1202];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v17 = [v69[5] canSleepSemaphore];
    [v17 signalStartListening];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __PowerChangedCallback_block_invoke_438;
      v66[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v66[4] = v18;
      if (qword_2811F4730 != -1)
      {
        dispatch_once(&qword_2811F4730, v66);
      }

      if (byte_2811F46E6 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: log entry"];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v22 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:1204];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__7;
    v82 = __Block_byref_object_dispose__7;
    v83 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
    [v69[5] logEntry:*(*(&buf + 1) + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v25 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __PowerChangedCallback_block_invoke_444;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v25;
      if (qword_2811F4738 != -1)
      {
        dispatch_once(&qword_2811F4738, v65);
      }

      if (byte_2811F46E7 == 1)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: begin block entry.id=%lld", objc_msgSend(*(*(&buf + 1) + 40), "entryID")];
        v27 = MEMORY[0x277D3F178];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v29 = [v28 lastPathComponent];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:1207];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *v77 = 138412290;
          v78 = v26;
          _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", v77, 0xCu);
        }
      }
    }

    v32 = [v69[5] canSleepSemaphore];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __PowerChangedCallback_block_invoke_448;
    v64[3] = &unk_27825C7C8;
    v64[4] = &v68;
    v64[5] = &buf;
    v64[6] = a4;
    [v32 waitWithBlock:v64];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __PowerChangedCallback_block_invoke_454;
      v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v63[4] = v33;
      if (qword_2811F4748 != -1)
      {
        dispatch_once(&qword_2811F4748, v63);
      }

      if (byte_2811F46E9 == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: after block entry.id=%lld", objc_msgSend(*(*(&buf + 1) + 40), "entryID")];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:1212];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *v77 = 138412290;
          v78 = v34;
          _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", v77, 0xCu);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v68, 8);

  v55 = *MEMORY[0x277D85DE8];
}

void serviceInterestCallback(void *a1, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v8 = v3;
    v9 = v4;
    v5 = a1;
    [v5 cancel];
    [v5 setValid:0];

    v6 = PLLogDisplay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Cancelled AFKInterface", v7, 2u);
    }
  }
}

void networkLinkQualityChangeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:a2 copyItems:1];
  v6 = objc_autoreleasePoolPush();
  [v7 networkLinkQualityChanged:a1 withChangedKeys:v5];
  objc_autoreleasePoolPop(v6);
}

uint64_t handleIOMFBPowerCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!_os_feature_enabled_impl() || (result = [MEMORY[0x277D3F208] hasAOD], (result & 1) == 0))
  {

    return [a4 logEventPointDisplayBacklightWithState:a3];
  }

  return result;
}

id PLLogSleepWake()
{
  if (qword_2811F46F8 != -1)
  {
    dispatch_once(&qword_2811F46F8, &__block_literal_global_23);
  }

  v1 = qword_2811F46F0;

  return v1;
}

id PLLogNetwork()
{
  if (qword_2811F61B8 != -1)
  {
    dispatch_once(&qword_2811F61B8, &__block_literal_global_49);
  }

  v1 = qword_2811F61B0;

  return v1;
}

id PLLogPMUMetrics()
{
  if (qword_2811F6D48 != -1)
  {
    dispatch_once(&qword_2811F6D48, &__block_literal_global_64);
  }

  v1 = _MergedGlobals_1_65;

  return v1;
}

id PLLogCamera()
{
  if (qword_2811F3F88 != -1)
  {
    dispatch_once(&qword_2811F3F88, &__block_literal_global_11);
  }

  v1 = _MergedGlobals_1_8;

  return v1;
}

uint64_t AWDMETRICSCellularPerClientProfileTriggerCountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogProcessMonitor()
{
  if (qword_2811F4DC0 != -1)
  {
    dispatch_once(&qword_2811F4DC0, &__block_literal_global_41);
  }

  v1 = qword_2811F4DB8;

  return v1;
}

uint64_t __PLLogProcessMonitor_block_invoke()
{
  qword_2811F4DB8 = os_log_create("com.apple.powerlog", "processMonitor");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSCellularPowerLogLTECarrierComponentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(AWDMETRICSMCarrierComponentInfo);
        [a1 addCarrierInfo:v28];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !AWDMETRICSMCarrierComponentInfoReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMCarrierComponentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v48 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v38;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__band;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__band;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v47 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v47 & 0x7F) << v23;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__bandwidth;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__bandwidth;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v46 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v28;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__earfcn;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__earfcn;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 28) |= 0x10u;
            while (1)
            {
              v50 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v50 & 0x7F) << v33;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__type;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__type;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v49 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v49 & 0x7F) << v14;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__duplex;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__duplex;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_21A4EB688(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A9ED0CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A4EB7B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A9ED0CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A4EB8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21A4EB9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A9ED0CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_21A4EBA78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A9ED0CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A4EBB24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A9ED0CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A4EBBF0()
{
  MEMORY[0x21CEDE4B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A4EBC38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A4EBC78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21A4F0AD0()
{
  v1 = (v0 + *(type metadata accessor for UrsaResult(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_21A4F0B1C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F0B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F0BDC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F0C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F0C84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for UrsaResult(0);
  sub_21A4F1408(v1 + *(v8 + 40), v7, &qword_27CD2E7D0, &qword_21AA20498);
  v9 = type metadata accessor for UrsaAdmissionResult(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_21A4F1470(v7, a1, type metadata accessor for UrsaAdmissionResult);
  }

  sub_21A9ED0BC();
  *(a1 + v9[5]) = 2;
  v11 = a1 + v9[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[10]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v9[11]);
  *v16 = 0;
  v16[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_21A4FB590(v7, &qword_27CD2E7D0, &qword_21AA20498);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21A4F0EF4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F0F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F0FE4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F108C()
{
  v1 = (v0 + *(type metadata accessor for UrsaAdmissionResult(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21A4F1130(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21A4F1254()
{
  v1 = (v0 + *(type metadata accessor for UrsaRadarData(0) + 68));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21A4F12A8()
{
  v1 = (v0 + *(type metadata accessor for UrsaRadarData(0) + 72));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

int *sub_21A4F12FC@<X0>(uint64_t a1@<X8>)
{
  sub_21A9ED0BC();
  result = type metadata accessor for UrsaRadarData(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + result[10]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + result[11]) = 2;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + result[13]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + result[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + result[15]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + result[16]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + result[17]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + result[18]);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t sub_21A4F1408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A4F1470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A4F14F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A4F1558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A4F15D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

double sub_21A4F169C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21A4F16DC(double a1)
{
  result = type metadata accessor for UrsaPeriodicRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_21A4F174C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_21A4FB590(v2 + v4, &qword_27CD2E7D8, &qword_21AA204A0);
  sub_21A4F1470(a1, v2 + v4, type metadata accessor for UrsaMetadata);
  v5 = type metadata accessor for UrsaMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t sub_21A4F1858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F18C4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21A4F1920(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21A4F1958(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21A4F1998(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F19F4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1A50(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 60));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1AAC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 64));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1B08()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F6F8);
  __swift_project_value_buffer(v0, qword_27CD2F6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21AA203C0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "cr_key";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "build";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "platform";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "flag";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "request_id";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21A4F1E14()
{
  result = sub_21A9ED0FC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for UrsaMetadata(0) + 32);
            break;
          case 5:
            v3 = v0;
            v9 = *(type metadata accessor for UrsaMetadata(0) + 36);
            break;
          case 6:
            v3 = v0;
            v5 = *(type metadata accessor for UrsaMetadata(0) + 40);
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v3 = v0;
            v6 = *(type metadata accessor for UrsaMetadata(0) + 20);
            break;
          case 2:
            v3 = v0;
            v8 = *(type metadata accessor for UrsaMetadata(0) + 24);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for UrsaMetadata(0) + 28);
            break;
          default:
            goto LABEL_17;
        }
      }

      v0 = v3;
      sub_21A9ED13C();
LABEL_17:
      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F1F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaMetadata(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_21A9ED1DC();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    sub_21A9ED1DC();
  }

  v15 = (v5 + v10[7]);
  if (v15[1])
  {
    v16 = *v15;
    sub_21A9ED1DC();
  }

  v17 = (v5 + v10[8]);
  if (v17[1])
  {
    v18 = *v17;
    sub_21A9ED1DC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaMetadata);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaMetadata);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F20A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_21A4F217C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E968, type metadata accessor for UrsaMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F221C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F2288()
{
  sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F2308()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F710);
  __swift_project_value_buffer(v0, qword_27CD2F710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21AA203C0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "success";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "error_code";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "failure_reason";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "payload";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "result";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "radarData";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F25D8()
{
  result = sub_21A9ED0FC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v4 = v0;
            v6 = *(type metadata accessor for UrsaResult(0) + 36);
LABEL_17:
            v0 = v4;
            sub_21A9ED13C();
            break;
          case 5:
            v8 = *(type metadata accessor for UrsaResult(0) + 40);
            type metadata accessor for UrsaAdmissionResult(0);
            sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult);
            sub_21A9ED15C();
            break;
          case 6:
            type metadata accessor for UrsaRadarData(0);
            sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData);
            sub_21A9ED14C();
            break;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = *(type metadata accessor for UrsaResult(0) + 24);
          sub_21A9ED10C();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v4 = v0;
          v5 = *(type metadata accessor for UrsaResult(0) + 32);
          goto LABEL_17;
        }

        v7 = *(type metadata accessor for UrsaResult(0) + 28);
        sub_21A9ED11C();
      }

LABEL_5:
      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F27FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for UrsaResult(0);
  v9 = result;
  if (*(v3 + *(result + 24)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1AC();
    if (v4)
    {
      return result;
    }
  }

  v10 = (v3 + v9[7]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    sub_21A9ED1BC();
  }

  v12 = (v3 + v9[8]);
  if (v12[1])
  {
    v13 = *v12;
    sub_21A9ED1DC();
  }

  v14 = (v3 + v9[9]);
  if (v14[1])
  {
    v15 = *v14;
    sub_21A9ED1DC();
  }

  sub_21A4F29B8(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for UrsaRadarData(0);
    sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData);
    sub_21A9ED1EC();
  }

  v16 = v3 + v9[5];
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F29B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for UrsaAdmissionResult(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UrsaResult(0);
  sub_21A4F1408(a1 + *(v13 + 40), v7, &qword_27CD2E7D0, &qword_21AA20498);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21A4FB590(v7, &qword_27CD2E7D0, &qword_21AA20498);
  }

  sub_21A4F1470(v7, v12, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult);
  sub_21A9ED1FC();
  return sub_21A4F1558(v12, type metadata accessor for UrsaAdmissionResult);
}

uint64_t sub_21A4F2BD4@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  sub_21A9ED0BC();
  v5 = a1[7];
  *(a2 + a1[6]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[9];
  v8 = (a2 + a1[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = type metadata accessor for UrsaAdmissionResult(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t (*sub_21A4F2CB8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_21A4F2D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E960, type metadata accessor for UrsaResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F2DB4(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E860, type metadata accessor for UrsaResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F2E24()
{
  sub_21A4F98E4(&qword_27CD2E860, type metadata accessor for UrsaResult);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F2EA8()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F728);
  __swift_project_value_buffer(v0, qword_27CD2F728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21AA203D0;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "admit";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21A9ED20C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "impact";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "proc";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "component";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "version";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v21 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "component_id";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v17 = *MEMORY[0x277D21888];
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "payload";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v7();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F31A8()
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v7 = *(type metadata accessor for UrsaAdmissionResult(0) + 20);
          sub_21A9ED10C();
          break;
        case 2:
          v9 = *(type metadata accessor for UrsaAdmissionResult(0) + 24);
          sub_21A9ED11C();
          break;
        case 3:
          v5 = *(type metadata accessor for UrsaAdmissionResult(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v1 = *(type metadata accessor for UrsaAdmissionResult(0) + 40);
        goto LABEL_3;
      }

      if (result == 7)
      {
        v6 = *(type metadata accessor for UrsaAdmissionResult(0) + 44);
        goto LABEL_3;
      }
    }

    else
    {
      if (result == 4)
      {
        v8 = *(type metadata accessor for UrsaAdmissionResult(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for UrsaAdmissionResult(0) + 36);
      }

LABEL_3:
      v0 = 0;
      sub_21A9ED13C();
    }
  }
}

uint64_t sub_21A4F3318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaAdmissionResult(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1AC();
    if (v4)
    {
      return result;
    }
  }

  v11 = (v5 + v10[6]);
  if ((v11[1] & 1) == 0)
  {
    v12 = *v11;
    sub_21A9ED1BC();
  }

  v13 = (v5 + v10[7]);
  if (v13[1])
  {
    v14 = *v13;
    sub_21A9ED1DC();
  }

  v15 = (v5 + v10[8]);
  if (v15[1])
  {
    v16 = *v15;
    sub_21A9ED1DC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F3590(v5);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F3498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F3590(uint64_t a1)
{
  result = type metadata accessor for UrsaAdmissionResult(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F360C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_21A4F36D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E958, type metadata accessor for UrsaAdmissionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F3770(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F37DC()
{
  sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F385C()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F740);
  __swift_project_value_buffer(v0, qword_27CD2F740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21AA203E0;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "radar";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "impact";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "timestamp_start";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timestamp_end";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hit_in";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "fixed_in";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_critical";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "timestamp_invalid";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "custom_title";
  *(v23 + 8) = 12;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "custom_message";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "process";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "domain";
  *(v29 + 1) = 6;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "action";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "payload";
  *(v33 + 1) = 7;
  v33[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F3D1C()
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v4 = *(type metadata accessor for UrsaRadarData(0) + 20);
        goto LABEL_16;
      case 2:
        v11 = *(type metadata accessor for UrsaRadarData(0) + 24);
LABEL_16:
        sub_21A9ED11C();
        continue;
      case 3:
        v8 = *(type metadata accessor for UrsaRadarData(0) + 28);
        goto LABEL_14;
      case 4:
        v9 = *(type metadata accessor for UrsaRadarData(0) + 32);
        goto LABEL_14;
      case 5:
        v5 = *(type metadata accessor for UrsaRadarData(0) + 36);
        goto LABEL_3;
      case 6:
        v12 = *(type metadata accessor for UrsaRadarData(0) + 40);
        goto LABEL_3;
      case 7:
        v14 = *(type metadata accessor for UrsaRadarData(0) + 44);
        sub_21A9ED10C();
        continue;
      case 8:
        v10 = *(type metadata accessor for UrsaRadarData(0) + 48);
LABEL_14:
        sub_21A9ED12C();
        continue;
      case 9:
        v16 = *(type metadata accessor for UrsaRadarData(0) + 52);
        goto LABEL_3;
      case 10:
        v7 = *(type metadata accessor for UrsaRadarData(0) + 56);
        goto LABEL_3;
      case 11:
        v15 = *(type metadata accessor for UrsaRadarData(0) + 60);
        goto LABEL_3;
      case 12:
        v1 = *(type metadata accessor for UrsaRadarData(0) + 64);
        goto LABEL_3;
      case 13:
        v6 = *(type metadata accessor for UrsaRadarData(0) + 68);
        goto LABEL_3;
      case 14:
        v13 = *(type metadata accessor for UrsaRadarData(0) + 72);
LABEL_3:
        sub_21A9ED13C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21A4F3EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaRadarData(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = sub_21A9ED1BC();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    sub_21A9ED1BC();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    sub_21A9ED1CC();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    sub_21A9ED1CC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F7068(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F70E4(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F7160(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F71DC(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F7258(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F72D4(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F4184(v5);
  sub_21A4F41FC(v5);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F4184(uint64_t a1)
{
  result = type metadata accessor for UrsaRadarData(0);
  v3 = (a1 + *(result + 68));
  if (v3[1])
  {
    v4 = *v3;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F41FC(uint64_t a1)
{
  result = type metadata accessor for UrsaRadarData(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F42CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E950, type metadata accessor for UrsaRadarData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F436C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F43D8()
{
  sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F44FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E948, type metadata accessor for UrsaAdmissionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F459C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F4608()
{
  sub_21A4F98E4(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F46B4()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F770);
  __swift_project_value_buffer(v0, qword_27CD2F770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21AA203F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21A9ED20C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "time_window_start";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v9();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F48D0()
{
  result = sub_21A9ED0FC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 6:
          v5 = *(type metadata accessor for UrsaPeriodicRequest(0) + 28);
          sub_21A9ED12C();
          break;
        case 2:
          v3 = *(type metadata accessor for UrsaPeriodicRequest(0) + 24);
          sub_21A9ED13C();
          break;
        case 1:
          v4 = *(type metadata accessor for UrsaPeriodicRequest(0) + 20);
          type metadata accessor for UrsaMetadata(0);
          sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
          sub_21A9ED15C();
          break;
      }

      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F4A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A4F51F8(v3, a1, a2, a3, type metadata accessor for UrsaPeriodicRequest);
  if (!v4)
  {
    v6 = type metadata accessor for UrsaPeriodicRequest(0);
    v7 = (v3 + *(v6 + 24));
    if (v7[1])
    {
      v8 = *v7;
      sub_21A9ED1DC();
    }

    v9 = v3 + *(v6 + 28);
    if ((*(v9 + 8) & 1) == 0)
    {
      v10 = *v9;
      sub_21A9ED1CC();
    }

    return sub_21A9ED0AC();
  }

  return result;
}

uint64_t sub_21A4F4B20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A9ED0BC();
  v4 = a1[5];
  v5 = type metadata accessor for UrsaMetadata(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_21A4F4BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E940, type metadata accessor for UrsaPeriodicRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F4C9C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F4D08()
{
  sub_21A4F98E4(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F4DA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21AA203F0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_21A9ED20C();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "payload";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F4FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_21A9ED0FC();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v8 = v4;
        v9 = *(a4(0) + 24);
LABEL_5:
        v4 = v8;
        sub_21A9ED13C();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v10 = *(a4(0) + 20);
        type metadata accessor for UrsaMetadata(0);
        sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
        sub_21A9ED15C();
      }

LABEL_6:
      result = sub_21A9ED0FC();
    }

    v8 = v4;
    v11 = *(a4(0) + 28);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_21A4F50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_21A4F51F8(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v9 = a5(0);
    v10 = (v5 + *(v9 + 24));
    if (v10[1])
    {
      v11 = *v10;
      sub_21A9ED1DC();
    }

    v12 = (v5 + *(v9 + 28));
    if (v12[1])
    {
      v13 = *v12;
      sub_21A9ED1DC();
    }

    return sub_21A9ED0AC();
  }

  return result;
}

uint64_t sub_21A4F51F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[0] = a2;
  v20[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for UrsaMetadata(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5(0);
  sub_21A4F1408(a1 + *(v18 + 20), v11, &qword_27CD2E7D8, &qword_21AA204A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_21A4FB590(v11, &qword_27CD2E7D8, &qword_21AA204A0);
  }

  sub_21A4F1470(v11, v17, type metadata accessor for UrsaMetadata);
  sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata);
  sub_21A9ED1FC();
  return sub_21A4F1558(v17, type metadata accessor for UrsaMetadata);
}

uint64_t sub_21A4F5418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A9ED0BC();
  v4 = a1[5];
  v5 = type metadata accessor for UrsaMetadata(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_21A4F5528(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E938, type metadata accessor for UrsaTelemetryRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F55C8(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F5634()
{
  sub_21A4F98E4(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F56E0()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F7A0);
  __swift_project_value_buffer(v0, qword_27CD2F7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21AA203C0;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "cr_key";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "build";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "response_flag";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "request_id";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "fetch_window_start";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F59B4()
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for UrsaRequest(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for UrsaRequest(0) + 36);
LABEL_3:
          v0 = 0;
          sub_21A9ED13C();
          break;
        case 6:
          v5 = *(type metadata accessor for UrsaRequest(0) + 40);
          sub_21A9ED12C();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for UrsaRequest(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for UrsaRequest(0) + 24);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for UrsaRequest(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_21A4F5AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaRequest(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    v12 = *v11;
    result = sub_21A9ED1DC();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  v13 = (v5 + v10[6]);
  if (v13[1])
  {
    v14 = *v13;
    sub_21A9ED1DC();
  }

  v15 = (v5 + v10[7]);
  if (v15[1])
  {
    v16 = *v15;
    sub_21A9ED1DC();
  }

  v17 = (v5 + v10[8]);
  if (v17[1])
  {
    v18 = *v17;
    sub_21A9ED1DC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaRequest);
  sub_21A4F5C40(v5);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F5C40(uint64_t a1)
{
  result = type metadata accessor for UrsaRequest(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_21A9ED1CC();
  }

  return result;
}

uint64_t sub_21A4F5CB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_21A4F5D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E930, type metadata accessor for UrsaRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F5E1C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_2811F2DD8, type metadata accessor for UrsaRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F5E88()
{
  sub_21A4F98E4(&qword_2811F2DD8, type metadata accessor for UrsaRequest);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F5F08()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F7B8);
  __swift_project_value_buffer(v0, qword_27CD2F7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21AA20400;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21A9ED20C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failure_reason";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "issues";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "error_code";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F6168()
{
  result = sub_21A9ED0FC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for UrsaIssue(0);
          sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue);
          sub_21A9ED14C();
        }

        else if (result == 4)
        {
          v4 = *(type metadata accessor for UrsaResponse(0) + 32);
          sub_21A9ED11C();
        }
      }

      else if (result == 1)
      {
        v5 = *(type metadata accessor for UrsaResponse(0) + 24);
        sub_21A9ED10C();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for UrsaResponse(0) + 28);
        sub_21A9ED13C();
      }

      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F62E8()
{
  result = type metadata accessor for UrsaResponse(0);
  v3 = result;
  if (*(v0 + *(result + 24)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1AC();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + v3[7]);
  if (v4[1])
  {
    v5 = *v4;
    sub_21A9ED1DC();
  }

  if (*(*v0 + 16))
  {
    type metadata accessor for UrsaIssue(0);
    sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue);
    sub_21A9ED1EC();
  }

  v6 = (v0 + v3[8]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_21A9ED1BC();
  }

  v8 = v0 + v3[5];
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F6468@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  result = sub_21A9ED0BC();
  v6 = a1[7];
  *(a2 + a1[6]) = 2;
  v7 = (a2 + v6);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + a1[8];
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t sub_21A4F64EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21A9ED0CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21A4F6560(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21A9ED0CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21A4F6604(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E928, type metadata accessor for UrsaResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F66A4(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8E8, type metadata accessor for UrsaResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F6710()
{
  sub_21A4F98E4(&qword_27CD2E8E8, type metadata accessor for UrsaResponse);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F6790()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F7D0);
  __swift_project_value_buffer(v0, qword_27CD2F7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21AA20410;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "radar";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v31 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "impact";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v31 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "timestamp_start";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v8();
  v13 = (v31 + v3 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timestamp_end";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v8();
  v15 = (v31 + v3 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hit_in";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v8();
  v17 = (v31 + v3 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "fixed_in";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v8();
  v19 = (v31 + v3 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_critical";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v31 + v3 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "timestamp_invalid";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v8();
  v23 = v31 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "dri_message";
  *(v23 + 8) = 11;
  *(v23 + 16) = 2;
  v8();
  v24 = (v31 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "notification_message";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v31 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "process";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v8();
  v28 = (v31 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "domain";
  *(v29 + 1) = 6;
  v29[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F6BD8()
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        switch(result)
        {
          case 10:
            v1 = *(type metadata accessor for UrsaIssue(0) + 56);
            goto LABEL_3;
          case 11:
            v14 = *(type metadata accessor for UrsaIssue(0) + 60);
            goto LABEL_3;
          case 12:
            v7 = *(type metadata accessor for UrsaIssue(0) + 64);
            goto LABEL_3;
        }
      }

      else if (result == 7)
      {
        v9 = *(type metadata accessor for UrsaIssue(0) + 44);
        sub_21A9ED10C();
      }

      else
      {
        if (result != 8)
        {
          v5 = *(type metadata accessor for UrsaIssue(0) + 52);
          goto LABEL_3;
        }

        v12 = *(type metadata accessor for UrsaIssue(0) + 48);
LABEL_29:
        v0 = 0;
        sub_21A9ED12C();
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        v10 = *(type metadata accessor for UrsaIssue(0) + 32);
        goto LABEL_29;
      }

      if (result == 5)
      {
        v13 = *(type metadata accessor for UrsaIssue(0) + 36);
      }

      else
      {
        v6 = *(type metadata accessor for UrsaIssue(0) + 40);
      }

LABEL_3:
      v0 = 0;
      sub_21A9ED13C();
    }

    else
    {
      switch(result)
      {
        case 1:
          v8 = *(type metadata accessor for UrsaIssue(0) + 20);
          goto LABEL_27;
        case 2:
          v11 = *(type metadata accessor for UrsaIssue(0) + 24);
LABEL_27:
          v0 = 0;
          sub_21A9ED11C();
          break;
        case 3:
          v4 = *(type metadata accessor for UrsaIssue(0) + 28);
          goto LABEL_29;
      }
    }
  }
}

uint64_t sub_21A4F6DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaIssue(0);
  v10 = result;
  v11 = (v5 + *(result + 20));
  if (v11[1])
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v12 = *v11;
    result = sub_21A9ED1BC();
    if (v4)
    {
      return result;
    }
  }

  v13 = (v5 + v10[6]);
  if ((v13[1] & 1) == 0)
  {
    v14 = *v13;
    sub_21A9ED1BC();
  }

  v15 = v5 + v10[7];
  if ((*(v15 + 8) & 1) == 0)
  {
    v16 = *v15;
    sub_21A9ED1CC();
  }

  v17 = v5 + v10[8];
  if ((*(v17 + 8) & 1) == 0)
  {
    v18 = *v17;
    sub_21A9ED1CC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F7068(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F70E4(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F7160(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F71DC(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F7258(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F72D4(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F7068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_21A9ED1AC();
  }

  return result;
}

uint64_t sub_21A4F70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 48));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_21A9ED1CC();
  }

  return result;
}

uint64_t sub_21A4F7160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 52));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F71DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 56));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F7258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 60));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F72D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 64));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F7354@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = a1[12];
  *(a2 + a1[11]) = 2;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1[14];
  v17 = (a2 + a1[13]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a2 + v16);
  *v18 = 0;
  v18[1] = 0;
  v19 = a1[16];
  v20 = (a2 + a1[15]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + v19);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t sub_21A4F7428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A9ED0CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21A4F7490(uint64_t a1)
{
  v3 = sub_21A9ED0CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21A4F7528(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E920, type metadata accessor for UrsaIssue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F75C8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21A9ED22C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_21A4F7664(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F76D0()
{
  sub_21A9ED51C();
  sub_21A9ED29C();
  return sub_21A9ED52C();
}

uint64_t sub_21A4F7728()
{
  sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F77A4()
{
  sub_21A9ED51C();
  sub_21A9ED29C();
  return sub_21A9ED52C();
}

uint64_t sub_21A4F77FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaIssue(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_21A4F14F0(v16, v13, type metadata accessor for UrsaIssue);
        sub_21A4F14F0(v17, v9, type metadata accessor for UrsaIssue);
        v19 = sub_21A4F8794(v13, v9);
        sub_21A4F1558(v9, type metadata accessor for UrsaIssue);
        sub_21A4F1558(v13, type metadata accessor for UrsaIssue);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_21A4F79A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaRadarData(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_21A4F14F0(v16, v13, type metadata accessor for UrsaRadarData);
        sub_21A4F14F0(v17, v9, type metadata accessor for UrsaRadarData);
        v19 = sub_21A4F831C(v13, v9);
        sub_21A4F1558(v9, type metadata accessor for UrsaRadarData);
        sub_21A4F1558(v13, type metadata accessor for UrsaRadarData);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_21A4F7B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for UrsaMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E988, &qword_21AA21330);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v41 - v20;
  v43 = a3(0);
  v44 = a1;
  v22 = *(v43 + 20);
  v23 = *(v17 + 56);
  sub_21A4F1408(a1 + v22, v21, &qword_27CD2E7D8, &qword_21AA204A0);
  sub_21A4F1408(a2 + v22, &v21[v23], &qword_27CD2E7D8, &qword_21AA204A0);
  v24 = *(v7 + 48);
  if (v24(v21, 1, v6) != 1)
  {
    sub_21A4F1408(v21, v15, &qword_27CD2E7D8, &qword_21AA204A0);
    if (v24(&v21[v23], 1, v6) != 1)
    {
      v27 = v42;
      sub_21A4F1470(&v21[v23], v42, type metadata accessor for UrsaMetadata);
      v28 = sub_21A4F9660(v15, v27);
      sub_21A4F1558(v27, type metadata accessor for UrsaMetadata);
      sub_21A4F1558(v15, type metadata accessor for UrsaMetadata);
      sub_21A4FB590(v21, &qword_27CD2E7D8, &qword_21AA204A0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21A4F1558(v15, type metadata accessor for UrsaMetadata);
LABEL_6:
    sub_21A4FB590(v21, &qword_27CD2E988, &qword_21AA21330);
    goto LABEL_7;
  }

  if (v24(&v21[v23], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_21A4FB590(v21, &qword_27CD2E7D8, &qword_21AA204A0);
LABEL_10:
  v30 = v43;
  v29 = v44;
  v31 = *(v43 + 24);
  v32 = (v44 + v31);
  v33 = *(v44 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_21A9ED4AC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v35)
  {
    goto LABEL_7;
  }

  v36 = *(v30 + 28);
  v37 = (v29 + v36);
  v38 = *(v29 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (v40 && (*v37 == *v39 && v38 == v40 || (sub_21A9ED4AC() & 1) != 0))
    {
      goto LABEL_24;
    }
  }

  else if (!v40)
  {
LABEL_24:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
    v25 = sub_21A9ED2BC();
    return v25 & 1;
  }

LABEL_7:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_21A4F7F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E988, &qword_21AA21330);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v41 - v18;
  v43 = type metadata accessor for UrsaPeriodicRequest(0);
  v44 = a1;
  v20 = *(v43 + 20);
  v21 = *(v15 + 56);
  sub_21A4F1408(a1 + v20, v19, &qword_27CD2E7D8, &qword_21AA204A0);
  v22 = a2 + v20;
  v23 = a2;
  sub_21A4F1408(v22, &v19[v21], &qword_27CD2E7D8, &qword_21AA204A0);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_21A4F1408(v19, v13, &qword_27CD2E7D8, &qword_21AA204A0);
    if (v24(&v19[v21], 1, v4) != 1)
    {
      v27 = v42;
      sub_21A4F1470(&v19[v21], v42, type metadata accessor for UrsaMetadata);
      v28 = sub_21A4F9660(v13, v27);
      sub_21A4F1558(v27, type metadata accessor for UrsaMetadata);
      sub_21A4F1558(v13, type metadata accessor for UrsaMetadata);
      sub_21A4FB590(v19, &qword_27CD2E7D8, &qword_21AA204A0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21A4F1558(v13, type metadata accessor for UrsaMetadata);
LABEL_6:
    sub_21A4FB590(v19, &qword_27CD2E988, &qword_21AA21330);
    goto LABEL_7;
  }

  if (v24(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21A4FB590(v19, &qword_27CD2E7D8, &qword_21AA204A0);
LABEL_10:
  v30 = v43;
  v29 = v44;
  v31 = *(v43 + 24);
  v32 = (v44 + v31);
  v33 = *(v44 + v31 + 8);
  v34 = (v23 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_21A9ED4AC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v35)
  {
    goto LABEL_7;
  }

  v36 = *(v30 + 28);
  v37 = (v29 + v36);
  v38 = *(v29 + v36 + 8);
  v39 = (v23 + v36);
  v40 = *(v23 + v36 + 8);
  if (v38)
  {
    if (v40)
    {
LABEL_23:
      sub_21A9ED0CC();
      sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
      v25 = sub_21A9ED2BC();
      return v25 & 1;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_7:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_21A4F831C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaRadarData(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_21A9ED4AC();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v4[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v37 = v4;
      v38 = sub_21A9ED4AC();
      v4 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = v4[11];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[12];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = v4[13];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      return 0;
    }

    if (*v48 != *v50 || v49 != v51)
    {
      v52 = v4;
      v53 = sub_21A9ED4AC();
      v4 = v52;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v51)
  {
    return 0;
  }

  v54 = v4[14];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58)
    {
      return 0;
    }

    if (*v55 != *v57 || v56 != v58)
    {
      v59 = v4;
      v60 = sub_21A9ED4AC();
      v4 = v59;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v61 = v4[15];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }

    if (*v62 != *v64 || v63 != v65)
    {
      v66 = v4;
      v67 = sub_21A9ED4AC();
      v4 = v66;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v65)
  {
    return 0;
  }

  v68 = v4[16];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = v71[1];
  if (v70)
  {
    if (!v72)
    {
      return 0;
    }

    if (*v69 != *v71 || v70 != v72)
    {
      v73 = v4;
      v74 = sub_21A9ED4AC();
      v4 = v73;
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v72)
  {
    return 0;
  }

  v75 = v4[17];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 8);
  v78 = (a2 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79)
    {
      return 0;
    }

    if (*v76 != *v78 || v77 != v79)
    {
      v80 = v4;
      v81 = sub_21A9ED4AC();
      v4 = v80;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v79)
  {
    return 0;
  }

  v82 = v4[18];
  v83 = (a1 + v82);
  v84 = *(a1 + v82 + 8);
  v85 = (a2 + v82);
  v86 = v85[1];
  if (v84)
  {
    if (!v86 || (*v83 != *v85 || v84 != v86) && (sub_21A9ED4AC() & 1) == 0)
    {
      return 0;
    }

LABEL_90:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
    return sub_21A9ED2BC() & 1;
  }

  if (!v86)
  {
    goto LABEL_90;
  }

  return 0;
}

uint64_t sub_21A4F8794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaIssue(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_21A9ED4AC();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v4[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v37 = v4;
      v38 = sub_21A9ED4AC();
      v4 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = v4[11];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[12];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = v4[13];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      return 0;
    }

    if (*v48 != *v50 || v49 != v51)
    {
      v52 = v4;
      v53 = sub_21A9ED4AC();
      v4 = v52;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v51)
  {
    return 0;
  }

  v54 = v4[14];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58)
    {
      return 0;
    }

    if (*v55 != *v57 || v56 != v58)
    {
      v59 = v4;
      v60 = sub_21A9ED4AC();
      v4 = v59;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v61 = v4[15];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }

    if (*v62 != *v64 || v63 != v65)
    {
      v66 = v4;
      v67 = sub_21A9ED4AC();
      v4 = v66;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v65)
  {
    return 0;
  }

  v68 = v4[16];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = v71[1];
  if (v70)
  {
    if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_21A9ED4AC() & 1) == 0)
    {
      return 0;
    }

LABEL_76:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
    return sub_21A9ED2BC() & 1;
  }

  if (!v72)
  {
    goto LABEL_76;
  }

  return 0;
}

uint64_t sub_21A4F8B5C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UrsaResponse(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_21A9ED4AC();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4;
  if ((sub_21A4F77FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v17 = *(v16 + 32);
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v23 = *(v16 + 20);
  sub_21A9ED0CC();
  sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
  return sub_21A9ED2BC() & 1;
}

uint64_t sub_21A4F8CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaRequest(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21A9ED4AC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21A9ED4AC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21A9ED4AC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_21A9ED4AC();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (!v39)
  {
    if (!v41)
    {
      goto LABEL_44;
    }

    return 0;
  }

  if (!v41)
  {
    return 0;
  }

  if (*v38 != *v40 || v39 != v41)
  {
    v42 = v4;
    v43 = sub_21A9ED4AC();
    v4 = v42;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_44:
  v44 = v4[10];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
  if (v46)
  {
    if (!v48)
    {
      return 0;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  sub_21A9ED0CC();
  sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
  return sub_21A9ED2BC() & 1;
}

uint64_t sub_21A4F8F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaAdmissionResult(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21A9ED4AC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21A9ED4AC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v4;
      v35 = sub_21A9ED4AC();
      v4 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v4[10];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v41 = v4;
      v42 = sub_21A9ED4AC();
      v4 = v41;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v43 = v4[11];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_21A9ED4AC() & 1) == 0)
    {
      return 0;
    }

LABEL_49:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
    return sub_21A9ED2BC() & 1;
  }

  if (!v47)
  {
    goto LABEL_49;
  }

  return 0;
}

uint64_t sub_21A4F91D0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UrsaAdmissionResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E990, &qword_21AA21338);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for UrsaResult(0);
  v21 = v20[6];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_35;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    goto LABEL_35;
  }

  v24 = v20[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_35;
    }
  }

  v29 = v20[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_35;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v20;
      v35 = sub_21A9ED4AC();
      v20 = v34;
      if ((v35 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_35;
  }

  v36 = v20[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_26;
    }

LABEL_35:
    v50 = 0;
    return v50 & 1;
  }

  if (!v40)
  {
    goto LABEL_35;
  }

  if (*v37 != *v39 || v38 != v40)
  {
    v41 = v20;
    v42 = sub_21A9ED4AC();
    v20 = v41;
    if ((v42 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  v53 = v20;
  v43 = v20[10];
  v44 = *(v15 + 48);
  sub_21A4F1408(a1 + v43, v19, &qword_27CD2E7D0, &qword_21AA20498);
  v45 = a2 + v43;
  v46 = v44;
  sub_21A4F1408(v45, &v19[v44], &qword_27CD2E7D0, &qword_21AA20498);
  v47 = *(v5 + 48);
  if (v47(v19, 1, v4) == 1)
  {
    if (v47(&v19[v46], 1, v4) == 1)
    {
      sub_21A4FB590(v19, &qword_27CD2E7D0, &qword_21AA20498);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_21A4F1408(v19, v14, &qword_27CD2E7D0, &qword_21AA20498);
  if (v47(&v19[v46], 1, v4) == 1)
  {
    sub_21A4F1558(v14, type metadata accessor for UrsaAdmissionResult);
LABEL_31:
    sub_21A4FB590(v19, &qword_27CD2E990, &qword_21AA21338);
    goto LABEL_35;
  }

  sub_21A4F1470(&v19[v46], v9, type metadata accessor for UrsaAdmissionResult);
  v48 = sub_21A4F8F38(v14, v9);
  sub_21A4F1558(v9, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F1558(v14, type metadata accessor for UrsaAdmissionResult);
  sub_21A4FB590(v19, &qword_27CD2E7D0, &qword_21AA20498);
  if ((v48 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  if ((sub_21A4F79A4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_35;
  }

  v49 = v53[5];
  sub_21A9ED0CC();
  sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
  v50 = sub_21A9ED2BC();
  return v50 & 1;
}

uint64_t sub_21A4F9660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21A9ED4AC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21A9ED4AC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21A9ED4AC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_21A9ED4AC();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_21A9ED4AC();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (v48 && (*v45 == *v47 && v46 == v48 || (sub_21A9ED4AC() & 1) != 0))
    {
      goto LABEL_49;
    }
  }

  else if (!v48)
  {
LABEL_49:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8]);
    return sub_21A9ED2BC() & 1;
  }

  return 0;
}

uint64_t sub_21A4F98E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21A4FA494()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA9A0(319, qword_2811F2BE8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A4FA55C()
{
  sub_21A4FA6D0(319, &qword_27CD2E908, type metadata accessor for UrsaRadarData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21A9ED0CC();
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD8);
      if (v2 <= 0x3F)
      {
        sub_21A4FA9A0(319, &qword_2811F2BC0);
        if (v3 <= 0x3F)
        {
          sub_21A4FA9A0(319, qword_2811F2BE8);
          if (v4 <= 0x3F)
          {
            sub_21A4FA6D0(319, &qword_27CD2E910, type metadata accessor for UrsaAdmissionResult, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21A4FA6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21A4FA75C()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA9A0(319, &qword_2811F2BD8);
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BC0);
      if (v2 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A4FA874()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA9A0(319, &qword_2811F2BC0);
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD0);
      if (v2 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8);
        if (v3 <= 0x3F)
        {
          sub_21A4FA9A0(319, &qword_2811F2BD8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A4FA9A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A9ED44C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21A4FAA40()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA6D0(319, &qword_27CD2E918, type metadata accessor for UrsaMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, qword_2811F2BE8);
      if (v2 <= 0x3F)
      {
        sub_21A4FA9A0(319, &qword_2811F2BD0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A9ED0CC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_21A4FADAC()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA6D0(319, &qword_27CD2E918, type metadata accessor for UrsaMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, qword_2811F2BE8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A9ED0CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_21A4FB038()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA9A0(319, qword_2811F2BE8);
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A4FB128()
{
  sub_21A4FA6D0(319, &qword_2811F2BE0, type metadata accessor for UrsaIssue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21A9ED0CC();
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD8);
      if (v2 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8);
        if (v3 <= 0x3F)
        {
          sub_21A4FA9A0(319, &qword_2811F2BC0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A9ED0CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

void sub_21A4FB404()
{
  sub_21A9ED0CC();
  if (v0 <= 0x3F)
  {
    sub_21A4FA9A0(319, &qword_2811F2BC0);
    if (v1 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD0);
      if (v2 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8);
        if (v3 <= 0x3F)
        {
          sub_21A4FA9A0(319, &qword_2811F2BD8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_21A4FB590(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id UrsaClient.__allocating_init(_:_:_:_:_:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = v9;
  v15 = objc_allocWithZone(v9);
  *&v15[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
  *&v15[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
  *&v15[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
  v16 = v15;
  v17 = sub_21A9ED2CC();
  v18 = [objc_opt_self() containerWithIdentifier_];

  *&v16[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_container] = v18;
  v19 = v18;
  v20 = sub_21A9ED2CC();

  v21 = [v19 codeServiceWithName_];

  v22 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService;
  *&v16[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService] = v21;
  *&v16[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client] = nullsub_1(v21);
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v23 = sub_21A9ED25C();
  __swift_project_value_buffer(v23, qword_2811F8528);
  v24 = v16;
  v25 = sub_21A9ED23C();
  v26 = sub_21A9ED43C();

  if (os_log_type_enabled(v25, v26))
  {
    v47 = v10;
    v46 = a8;
    v27 = swift_slowAlloc();
    v45 = a7;
    v28 = swift_slowAlloc();
    v51 = v28;
    *v27 = 136315138;
    v29 = [*&v16[v22] serviceName];
    v30 = sub_21A9ED2DC();
    v31 = a5;
    v32 = a6;
    v34 = v33;

    v35 = sub_21A50AF9C(v30, v34, &v51);
    a6 = v32;
    a5 = v31;

    *(v27 + 4) = v35;
    _os_log_impl(&dword_21A4C6000, v25, v26, "running %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v36 = v28;
    a7 = v45;
    MEMORY[0x21CEDE430](v36, -1, -1);
    v37 = v27;
    a8 = v46;
    v10 = v47;
    MEMORY[0x21CEDE430](v37, -1, -1);
  }

  else
  {
  }

  v38 = &v24[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_crKey];
  *v38 = a2;
  *(v38 + 1) = a3;
  v39 = &v24[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_build];
  *v39 = a4;
  *(v39 + 1) = a5;
  v40 = &v24[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_device];
  *v40 = a6;
  *(v40 + 1) = a7;
  v41 = 1684099177;
  if ((a8 & 1) == 0)
  {
    v41 = 0x656E6F685069;
  }

  v42 = 0xE600000000000000;
  if (a8)
  {
    v42 = 0xE400000000000000;
  }

  v43 = &v24[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_platformName];
  *v43 = v41;
  v43[1] = v42;
  v24[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta] = a9 & 1;
  v52.receiver = v24;
  v52.super_class = v10;
  return objc_msgSendSuper2(&v52, sel_init);
}

id UrsaClient.init(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *&v9[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
  *&v9[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
  *&v9[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
  v14 = v9;
  v15 = sub_21A9ED2CC();
  v16 = [objc_opt_self() containerWithIdentifier_];

  *&v14[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_container] = v16;
  v17 = v16;
  v18 = sub_21A9ED2CC();

  v19 = [v17 codeServiceWithName_];

  v20 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService;
  *&v14[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService] = v19;
  *&v14[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client] = nullsub_1(v19);
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v21 = a9;
  v22 = sub_21A9ED25C();
  __swift_project_value_buffer(v22, qword_2811F8528);
  v23 = v14;
  v24 = sub_21A9ED23C();
  v25 = sub_21A9ED43C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = a8;
    v44 = swift_slowAlloc();
    v49 = v44;
    *v26 = 136315138;
    v27 = [*&v14[v20] serviceName];
    v28 = sub_21A9ED2DC();
    v29 = a5;
    v30 = a6;
    v31 = a7;
    v33 = v32;

    v34 = sub_21A50AF9C(v28, v33, &v49);
    a7 = v31;
    a6 = v30;
    a5 = v29;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_21A4C6000, v24, v25, "running %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    a8 = v45;
    MEMORY[0x21CEDE430](v44, -1, -1);
    v35 = v26;
    v21 = a9;
    MEMORY[0x21CEDE430](v35, -1, -1);
  }

  else
  {
  }

  v36 = &v23[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_crKey];
  *v36 = a2;
  *(v36 + 1) = a3;
  v37 = &v23[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_build];
  *v37 = a4;
  *(v37 + 1) = a5;
  v38 = &v23[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_device];
  *v38 = a6;
  *(v38 + 1) = a7;
  v39 = 1684099177;
  if ((a8 & 1) == 0)
  {
    v39 = 0x656E6F685069;
  }

  v40 = 0xE600000000000000;
  if (a8)
  {
    v40 = 0xE400000000000000;
  }

  v41 = &v23[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_platformName];
  *v41 = v39;
  v41[1] = v40;
  v23[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta] = v21 & 1;
  v42 = type metadata accessor for UrsaClient();
  v50.receiver = v23;
  v50.super_class = v42;
  return objc_msgSendSuper2(&v50, sel_init);
}

void UrsaClient.shouldAdmit(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, void *), uint64_t a7)
{
  v8 = v7;
  v58 = a3;
  v59 = a2;
  v57 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v56 - v16;
  v18 = sub_21A9ED07C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v61 = sub_21A9ED05C();
  v25 = v24;
  (*(v19 + 8))(v23, v18);
  v26 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (a5)
  {
    v60 = a6;
    v27 = a7;
    v28 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask;
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask))
    {

      sub_21A50B8E4(&unk_282B5A220);
      sub_21A4FB590(&unk_282B5A240, &qword_27CD2E9F8, &qword_21AA213E8);
      sub_21A50B9E0();
      v29 = swift_allocError();
      *v30 = xmmword_21AA21370;
      *(v30 + 16) = 1;
      v31 = sub_21A9ED26C();

      v60(v29, v61, v25, v31);

      return;
    }

    v38 = sub_21A9ED39C();
    (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v41 = v61;
    v40[4] = v39;
    v40[5] = v41;
    v42 = v57;
    v40[6] = v25;
    v40[7] = v42;
    v43 = v60;
    v40[8] = v59;
    v40[9] = v26;
    v40[10] = a4;
    v40[11] = a5;
    v40[12] = v43;
    v40[13] = v27;
    v40[14] = v58;

    v44 = sub_21A506898(0, 0, v17, &unk_21AA213F0, v40);
    v45 = *(v8 + v28);
    *(v8 + v28) = v44;
  }

  else
  {
    v32 = *(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta);
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE600000000000000;
    }

    v34 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask;
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask))
    {

      sub_21A50B8E4(&unk_282B5A258);
      sub_21A4FB590(&unk_282B5A278, &qword_27CD2E9F8, &qword_21AA213E8);
      sub_21A50B9E0();
      v35 = swift_allocError();
      *v36 = xmmword_21AA21370;
      *(v36 + 16) = 1;
      v37 = sub_21A9ED26C();

      a6(v35, v61, v25, v37);

      return;
    }

    v60 = a6;
    v46 = a7;
    if (v32)
    {
      v47 = 1635018082;
    }

    else
    {
      v47 = 0x67616C466F6ELL;
    }

    v48 = sub_21A9ED39C();
    (*(*(v48 - 8) + 56))(v17, 1, 1, v48);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v51 = v61;
    v50[4] = v49;
    v50[5] = v51;
    v52 = v57;
    v50[6] = v25;
    v50[7] = v52;
    v53 = v60;
    v50[8] = v59;
    v50[9] = v26;
    v50[10] = v47;
    v50[11] = v33;
    v50[12] = v53;
    v50[13] = v46;
    v50[14] = v58;

    v54 = sub_21A506898(0, 0, v17, &unk_21AA213E0, v50);
    v55 = *(v8 + v34);
    *(v8 + v34) = v54;
  }
}

void sub_21A4FC424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = sub_21A9ED01C();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_21A9ED2CC();
  (*(a5 + 16))(a5, v7, v8, a4);
}

void UrsaClient.periodicCheck(_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void), uint64_t a4, double a5)
{
  v6 = v5;
  v47 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v46 - v14;
  v16 = sub_21A9ED07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v22 = sub_21A9ED05C();
  v24 = v23;
  (*(v17 + 8))(v21, v16);
  v25 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (!a2)
  {
    if (*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE600000000000000;
    }

    v34 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask;
    if (!*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
    {
      v37 = 1635018082;
      if (!*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
      {
        v37 = 0x67616C466F6ELL;
      }

      v46 = v37;
      v38 = v25;
      v39 = sub_21A9ED39C();
      (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = v40;
      *(v41 + 40) = v22;
      *(v41 + 48) = v24;
      *(v41 + 56) = a5;
      v43 = v46;
      v42 = v47;
      *(v41 + 64) = v38;
      *(v41 + 72) = v43;
      *(v41 + 80) = v33;
      *(v41 + 88) = v42;
      *(v41 + 96) = a4;

      v44 = sub_21A506898(0, 0, v15, &unk_21AA21400, v41);
      v45 = *(v6 + v34);
      *(v6 + v34) = v44;
      goto LABEL_13;
    }

LABEL_9:

    sub_21A50B9E0();
    v35 = swift_allocError();
    *v36 = xmmword_21AA21380;
    *(v36 + 16) = 1;
    v47(v35, v22, v24, 0);

    return;
  }

  v26 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask;
  if (*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
  {
    goto LABEL_9;
  }

  v46 = v25;
  v27 = sub_21A9ED39C();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v28;
  *(v29 + 40) = v22;
  *(v29 + 48) = v24;
  *(v29 + 56) = a5;
  v30 = v47;
  *(v29 + 64) = v46;
  *(v29 + 72) = a1;
  *(v29 + 80) = a2;
  *(v29 + 88) = v30;
  *(v29 + 96) = a4;

  v31 = sub_21A506898(0, 0, v15, &unk_21AA21408, v29);
  v32 = *(v6 + v26);
  *(v6 + v26) = v31;
LABEL_13:
}

Swift::Void __swiftcall UrsaClient.cancel()()
{
  if (*(v0 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
  {
    v1 = *(v0 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask);

    sub_21A9ED3AC();
  }
}

void UrsaClient.reportTTR(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, void), uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v36 - v12;
  v14 = sub_21A9ED07C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v20 = sub_21A9ED05C();
  v22 = v21;
  (*(v15 + 8))(v19, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA21390;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v24 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
  if (*(v5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE600000000000000;
  }

  v26 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(v5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {

    sub_21A50B9E0();
    v27 = swift_allocError();
    *v28 = xmmword_21AA213A0;
    *(v28 + 16) = 1;
    v37(v27, v20, v22, 0);
  }

  else
  {
    v29 = 1635018082;
    if (!*(v5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v29 = 0x67616C466F6ELL;
    }

    v36 = v29;
    v30 = sub_21A9ED39C();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v31;
    *(v32 + 40) = v20;
    *(v32 + 48) = v22;
    strcpy((v32 + 56), "tap-to-radar");
    *(v32 + 69) = 0;
    *(v32 + 70) = -5120;
    *(v32 + 72) = v24;
    v33 = v37;
    *(v32 + 80) = v36;
    *(v32 + 88) = v25;
    *(v32 + 96) = v33;
    *(v32 + 104) = a4;

    v34 = sub_21A506898(0, 0, v13, &unk_21AA21428, v32);
    v35 = *(v5 + v26);
    *(v5 + v26) = v34;
  }
}

void UrsaClient.reportPE(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v40 = a5;
  v41 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v38 - v15;
  v17 = sub_21A9ED07C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v39 = sub_21A9ED05C();
  v24 = v23;
  (*(v18 + 8))(v22, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA213B0;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x656372756F73;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = a3;
  *(inited + 88) = a4;

  v26 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA08, &qword_21AA21418);
  swift_arrayDestroy();
  if (*(v7 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE600000000000000;
  }

  v28 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(v7 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {

    sub_21A50B9E0();
    v29 = swift_allocError();
    *v30 = xmmword_21AA213A0;
    *(v30 + 16) = 1;
    v40(v29, v39, v24, 0);
  }

  else
  {
    if (*(v7 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v31 = 1635018082;
    }

    else
    {
      v31 = 0x67616C466F6ELL;
    }

    v32 = sub_21A9ED39C();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    v35 = v39;
    *(v34 + 32) = v33;
    *(v34 + 40) = v35;
    *(v34 + 48) = v24;
    strcpy((v34 + 56), "powerException");
    *(v34 + 71) = -18;
    *(v34 + 72) = v26;
    *(v34 + 80) = v31;
    *(v34 + 88) = v27;
    *(v34 + 96) = v40;
    *(v34 + 104) = v41;

    v36 = sub_21A506898(0, 0, v16, &unk_21AA21430, v34);
    v37 = *(v7 + v28);
    *(v7 + v28) = v36;
  }
}

void UrsaClient.reportTelemetry(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, void), uint64_t a7)
{
  v8 = v7;
  v48 = a3;
  v49 = a6;
  v46 = a1;
  v47 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v46 - v15;
  v17 = sub_21A9ED07C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v23 = sub_21A9ED05C();
  v25 = v24;
  (*(v18 + 8))(v22, v17);
  if (!a5)
  {
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE600000000000000;
    }

    v35 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
    if (!*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
    {
      if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
      {
        v38 = 1635018082;
      }

      else
      {
        v38 = 0x67616C466F6ELL;
      }

      v39 = sub_21A9ED39C();
      (*(*(v39 - 8) + 56))(v16, 1, 1, v39);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v40;
      v41[5] = v23;
      v42 = v46;
      v41[6] = v25;
      v41[7] = v42;
      v43 = v48;
      v41[8] = v47;
      v41[9] = v43;
      v41[10] = v38;
      v41[11] = v34;
      v41[12] = v49;
      v41[13] = a7;

      v44 = sub_21A506898(0, 0, v16, &unk_21AA21438, v41);
      v45 = *(v8 + v35);
      *(v8 + v35) = v44;
      goto LABEL_14;
    }

LABEL_9:
    sub_21A50B9E0();
    v36 = swift_allocError();
    *v37 = xmmword_21AA213A0;
    *(v37 + 16) = 1;
    v49(v36, v23, v25, 0);

    return;
  }

  v26 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {
    goto LABEL_9;
  }

  v27 = sub_21A9ED39C();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v29[5] = v23;
  v30 = v46;
  v29[6] = v25;
  v29[7] = v30;
  v31 = v48;
  v29[8] = v47;
  v29[9] = v31;
  v29[10] = a4;
  v29[11] = a5;
  v29[12] = v49;
  v29[13] = a7;

  v32 = sub_21A506898(0, 0, v16, &unk_21AA21440, v29);
  v33 = *(v8 + v26);
  *(v8 + v26) = v32;
LABEL_14:
}
@interface SFL2Report
- (id)description;
- (id)dictionaryReport;
@end

@implementation SFL2Report

- (id)dictionaryReport
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularLQM](self, "cellularLQM")}];
  [v3 setObject:v4 forKeyedSubscript:@"cellularLqm"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFL2Report cellularKnownGood](self, "cellularKnownGood")}];
  [v3 setObject:v5 forKeyedSubscript:@"cellularKnownGood"];

  cellularRadioTechnology = [(SFL2Report *)self cellularRadioTechnology];
  if (cellularRadioTechnology <= 10)
  {
    if (cellularRadioTechnology <= 4)
    {
      if (cellularRadioTechnology <= 1)
      {
        if (!cellularRadioTechnology)
        {
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_UNKNOWN";
          goto LABEL_50;
        }

        if (cellularRadioTechnology == 1)
        {
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLOTHERS";
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (cellularRadioTechnology == 2)
      {
        v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLLTE";
      }

      else if (cellularRadioTechnology == 3)
      {
        v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLGSM";
      }

      else
      {
        v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUTRAN";
      }
    }

    else if (cellularRadioTechnology > 7)
    {
      if (cellularRadioTechnology == 8)
      {
        v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLTDSCDMA";
      }

      else if (cellularRadioTechnology == 9)
      {
        v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUMTS";
      }

      else
      {
        v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_NRDUAL";
      }
    }

    else if (cellularRadioTechnology == 5)
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMA1X";
    }

    else if (cellularRadioTechnology == 6)
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAEVDO";
    }

    else
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAHYBRID";
    }
  }

  else if (cellularRadioTechnology > 130)
  {
    if (cellularRadioTechnology > 133)
    {
      switch(cellularRadioTechnology)
      {
        case 0x86:
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AC";
          goto LABEL_50;
        case 0x87:
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AX";
          goto LABEL_50;
        case 0x88:
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11BE";
          goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (cellularRadioTechnology == 131)
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11N";
    }

    else if (cellularRadioTechnology == 132)
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOA";
    }

    else
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOG";
    }
  }

  else
  {
    if (cellularRadioTechnology <= 127)
    {
      switch(cellularRadioTechnology)
      {
        case 0xB:
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_NR";
          goto LABEL_50;
        case 0x40:
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_SATELLITE";
          goto LABEL_50;
        case 0x41:
          v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_GF";
          goto LABEL_50;
      }

LABEL_49:
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", cellularRadioTechnology];
      goto LABEL_50;
    }

    if (cellularRadioTechnology == 128)
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11A";
    }

    else if (cellularRadioTechnology == 129)
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11B";
    }

    else
    {
      v7 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11G";
    }
  }

LABEL_50:
  [v3 setObject:v7 forKeyedSubscript:@"cellularRadioTechnology"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularMNC](self, "cellularMNC")}];
  [v3 setObject:v8 forKeyedSubscript:@"cellularMnc"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularMCC](self, "cellularMCC")}];
  [v3 setObject:v9 forKeyedSubscript:@"cellularMcc"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularUARFCN](self, "cellularUARFCN")}];
  [v3 setObject:v10 forKeyedSubscript:@"cellularUarfcn"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularPID](self, "cellularPID")}];
  [v3 setObject:v11 forKeyedSubscript:@"cellularPid"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularBandInfo](self, "cellularBandInfo")}];
  [v3 setObject:v12 forKeyedSubscript:@"cellularBandInfo"];

  cellularCellType = [(SFL2Report *)self cellularCellType];
  [v3 setObject:cellularCellType forKeyedSubscript:@"cellularCellType"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularBandwidth](self, "cellularBandwidth")}];
  [v3 setObject:v14 forKeyedSubscript:@"cellularBandwidth"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularTAC](self, "cellularTAC")}];
  [v3 setObject:v15 forKeyedSubscript:@"cellularTac"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularBars](self, "cellularBars")}];
  [v3 setObject:v16 forKeyedSubscript:@"cellularBars"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularRSRP](self, "cellularRSRP")}];
  [v3 setObject:v17 forKeyedSubscript:@"cellularRsrp"];

  v18 = MEMORY[0x277CCABB0];
  [(SFL2Report *)self cellularSNR];
  v19 = [v18 numberWithDouble:?];
  [v3 setObject:v19 forKeyedSubscript:@"cellularSnr"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFL2Report cellularSliceActive](self, "cellularSliceActive")}];
  [v3 setObject:v20 forKeyedSubscript:@"cellularSliceActive"];

  cellularBand = [(SFL2Report *)self cellularBand];
  if ((cellularBand + 1) >= 4u)
  {
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", cellularBand];
  }

  else
  {
    v22 = *(&off_27898A4A8 + (cellularBand + 1));
  }

  [v3 setObject:v22 forKeyedSubscript:@"cellularBand"];

  cellularMode = [(SFL2Report *)self cellularMode];
  if (cellularMode >= 4)
  {
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", cellularMode];
  }

  else
  {
    v24 = *(&off_27898A4C8 + cellularMode);
  }

  [v3 setObject:v24 forKeyedSubscript:@"cellularMode"];

  cellularDualSimStatus = [(SFL2Report *)self cellularDualSimStatus];
  if (cellularDualSimStatus >= 6)
  {
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", cellularDualSimStatus];
  }

  else
  {
    v26 = *(&off_27898A4E8 + cellularDualSimStatus);
  }

  [v3 setObject:v26 forKeyedSubscript:@"cellularDualSimStatus"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularSecondaryMnc](self, "cellularSecondaryMnc")}];
  [v3 setObject:v27 forKeyedSubscript:@"cellularSecondaryMnc"];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report cellularSecondaryMcc](self, "cellularSecondaryMcc")}];
  [v3 setObject:v28 forKeyedSubscript:@"cellularSecondaryMcc"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFL2Report cellularOutranksWiFi](self, "cellularOutranksWiFi")}];
  [v3 setObject:v29 forKeyedSubscript:@"cellularOutranksWifi"];

  cellularOutrankPrimaryReason = [(SFL2Report *)self cellularOutrankPrimaryReason];
  v31 = @"Unknown";
  switch(cellularOutrankPrimaryReason)
  {
    case -1:
      break;
    case 12:
      v31 = @"ARPFailure";
      break;
    case 14:
      v31 = @"CaptivityIndeterminate";
      break;
    case 15:
      v31 = @"CoreMediaDownload";
      break;
    case 16:
      v31 = @"DataStalls";
      break;
    case 17:
      v31 = @"WiFiAlwaysOutrank";
      break;
    case 18:
      v31 = @"DNSOutage";
      break;
    case 19:
      v31 = @"ImminentStalls";
      break;
    case 20:
      v31 = @"MediaPlaybackStalls";
      break;
    case 21:
      v31 = @"ND6Failure";
      break;
    case 22:
      v31 = @"WiFiNeverOutrank";
      break;
    case 23:
      v31 = @"UserInitiatedActivity";
      break;
    case 24:
      v31 = @"WiFiLowDataMode";
      break;
    case 25:
      v31 = @"WiFiPoorSecurity";
      break;
    case 26:
      v31 = @"ExcessiveCertErrs";
      break;
    case 27:
      v31 = @"Force";
      break;
    case 28:
      v31 = @"WiFiPolledFlowProlongedBad";
      break;
    case 29:
      v31 = @"WiFiPolledFlowCurrentlyBad";
      break;
    case 32:
      v31 = @"CellLowDataMode";
      break;
    case 33:
      v31 = @"CellExpensive";
      break;
    case 34:
      v31 = @"CellNotActive";
      break;
    case 35:
      v31 = @"CellWRMStatusProlongedBad";
      break;
    case 36:
      v31 = @"CoreMediaDownloadEnd";
      break;
    case 37:
      v31 = @"LowPowerMode";
      break;
    case 38:
      v31 = @"ScreenLocked";
      break;
    case 39:
      v31 = @"ScreenDark";
      break;
    case 40:
      v31 = @"ThermalHigh";
      break;
    case 41:
      v31 = @"WiFiManualJoin";
      break;
    case 42:
      v31 = @"WiFiSSIDChange";
      break;
    case 43:
      v31 = @"CellWRMExpensive";
      break;
    case 46:
      v31 = @"WiFiSporadic";
      break;
    case 47:
      v31 = @"FlagWiFiKnowableSporadic";
      break;
    case 48:
      v31 = @"CellWRMStatusForcesIdle";
      break;
    case 50:
      v31 = @"WiFiHotspot20";
      break;
    case 51:
      v31 = @"WiFiManaged";
      break;
    case 52:
      v31 = @"RNFActivated";
      break;
    case 53:
      v31 = @"ThermalRequiresIdle";
      break;
    case 54:
      v31 = @"WiFiNotPrimary";
      break;
    case 55:
      v31 = @"WiFiNotActive";
      break;
    case 56:
      v31 = @"CellWRMStatusGood";
      break;
    case 57:
      v31 = @"CellPrimary";
      break;
    case 58:
      v31 = @"CoreMediaDLHysteresis";
      break;
    case 59:
      v31 = @"DampeningTimerExpiry";
      break;
    case 60:
      v31 = @"DampeningTimerRunning";
      break;
    case 61:
      v31 = @"WiFiExpensive";
      break;
    case 62:
      v31 = @"WiFiPublic";
      break;
    case 63:
      v31 = @"RegretAvoidanceOutrank";
      break;
    case 65:
      v31 = @"WifiNotSporadic";
      break;
    case 66:
      v31 = @"CellAllExpensive";
      break;
    case 67:
      v31 = @"CellAllInexpensive";
      break;
    case 68:
      v31 = @"CellInexpensive";
      break;
    case 69:
      v31 = @"CellWRMInexpensive";
      break;
    case 70:
      v31 = @"WifiSporadicNotKnown";
      break;
    case 71:
      v31 = @"PrivateNetworkNoLongerActive";
      break;
    default:
      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", cellularOutrankPrimaryReason];
      break;
  }

  [v3 setObject:v31 forKeyedSubscript:@"cellularOutrankPrimaryReason"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SFL2Report cellularOutrankReasonFlags](self, "cellularOutrankReasonFlags")}];
  [v3 setObject:v32 forKeyedSubscript:@"cellularOutrankReasonFlags"];

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report wifiLQM](self, "wifiLQM")}];
  [v3 setObject:v33 forKeyedSubscript:@"wifiLqm"];

  v34 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFL2Report wifiRSSI](self, "wifiRSSI")}];
  [v3 setObject:v34 forKeyedSubscript:@"wifiRssi"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFL2Report wifiKnownGood](self, "wifiKnownGood")}];
  [v3 setObject:v35 forKeyedSubscript:@"wifiKnownGood"];

  wifiRadioTechnology = [(SFL2Report *)self wifiRadioTechnology];
  if (wifiRadioTechnology <= 10)
  {
    if (wifiRadioTechnology <= 4)
    {
      if (wifiRadioTechnology <= 1)
      {
        if (!wifiRadioTechnology)
        {
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_UNKNOWN";
          goto LABEL_163;
        }

        if (wifiRadioTechnology == 1)
        {
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLOTHERS";
          goto LABEL_163;
        }

        goto LABEL_162;
      }

      if (wifiRadioTechnology == 2)
      {
        v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLLTE";
      }

      else if (wifiRadioTechnology == 3)
      {
        v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLGSM";
      }

      else
      {
        v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUTRAN";
      }
    }

    else if (wifiRadioTechnology > 7)
    {
      if (wifiRadioTechnology == 8)
      {
        v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLTDSCDMA";
      }

      else if (wifiRadioTechnology == 9)
      {
        v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLUMTS";
      }

      else
      {
        v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_NRDUAL";
      }
    }

    else if (wifiRadioTechnology == 5)
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMA1X";
    }

    else if (wifiRadioTechnology == 6)
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAEVDO";
    }

    else
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_CELLCDMAHYBRID";
    }
  }

  else if (wifiRadioTechnology > 130)
  {
    if (wifiRadioTechnology > 133)
    {
      switch(wifiRadioTechnology)
      {
        case 0x86:
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AC";
          goto LABEL_163;
        case 0x87:
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11AX";
          goto LABEL_163;
        case 0x88:
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11BE";
          goto LABEL_163;
      }

      goto LABEL_162;
    }

    if (wifiRadioTechnology == 131)
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11N";
    }

    else if (wifiRadioTechnology == 132)
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOA";
    }

    else
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFITURBOG";
    }
  }

  else
  {
    if (wifiRadioTechnology <= 127)
    {
      switch(wifiRadioTechnology)
      {
        case 0xB:
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_NR";
          goto LABEL_163;
        case 0x40:
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_SATELLITE";
          goto LABEL_163;
        case 0x41:
          v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_GF";
          goto LABEL_163;
      }

LABEL_162:
      v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", wifiRadioTechnology];
      goto LABEL_163;
    }

    if (wifiRadioTechnology == 128)
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11A";
    }

    else if (wifiRadioTechnology == 129)
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11B";
    }

    else
    {
      v37 = @"NW_L2_RADIO_TECHNOLOGY_TYPE_WIFI11G";
    }
  }

LABEL_163:
  [v3 setObject:v37 forKeyedSubscript:@"wifiRadioTechnology"];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFL2Report wifiIsHotspot](self, "wifiIsHotspot")}];
  [v3 setObject:v38 forKeyedSubscript:@"wifiIsHotspot"];

  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFL2Report wifiIsApplePersonalHotspot](self, "wifiIsApplePersonalHotspot")}];
  [v3 setObject:v39 forKeyedSubscript:@"wifiIsApplePersonalHotspot"];

  interfaceQueueStats = [(SFL2Report *)self interfaceQueueStats];
  if (interfaceQueueStats && (v41 = interfaceQueueStats, -[SFL2Report interfaceQueueStats](self, "interfaceQueueStats"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 count], v42, v41, v43))
  {
    v66 = v3;
    v44 = objc_alloc(MEMORY[0x277CBEB18]);
    interfaceQueueStats2 = [(SFL2Report *)self interfaceQueueStats];
    v46 = [v44 initWithCapacity:{objc_msgSend(interfaceQueueStats2, "count")}];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    selfCopy = self;
    obj = [(SFL2Report *)self interfaceQueueStats];
    v47 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v70;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v70 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v69 + 1) + 8 * i);
          v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
          interfaceType = [v51 interfaceType];
          if (interfaceType >= 5)
          {
            v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", interfaceType];
          }

          else
          {
            v54 = *(&off_27898A628 + interfaceType);
          }

          [v52 setObject:v54 forKeyedSubscript:@"interfaceType"];

          interfaceName = [v51 interfaceName];
          [v52 setObject:interfaceName forKeyedSubscript:@"interfaceName"];

          slot = [v51 slot];
          if (slot >= 0xA)
          {
            v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", slot];
          }

          else
          {
            v57 = *(&off_27898A518 + slot);
          }

          [v52 setObject:v57 forKeyedSubscript:@"slot"];

          v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v51, "averageQueueDelay")}];
          [v52 setObject:v58 forKeyedSubscript:@"avgQueueDelay"];

          v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v51, "minimumQueueDelay")}];
          [v52 setObject:v59 forKeyedSubscript:@"minQueueDelay"];

          v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v51, "maximumQueueDelay")}];
          [v52 setObject:v60 forKeyedSubscript:@"maxQueueDelay"];

          [v46 addObject:v52];
        }

        v48 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v48);
    }

    v3 = v66;
    [v66 setObject:v46 forKeyedSubscript:@"queueStats"];

    self = selfCopy;
  }

  else
  {
    v61 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_DEBUG, "interface queue stats not present", buf, 2u);
    }
  }

  activeRadio = [(SFL2Report *)self activeRadio];
  [v3 setObject:activeRadio forKeyedSubscript:@"activeRadio"];

  v63 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v39 = objc_alloc(MEMORY[0x277CCACA8]);
  cellularLQM = [(SFL2Report *)self cellularLQM];
  v3 = "No";
  if ([(SFL2Report *)self cellularKnownGood])
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  v37 = v4;
  cellularRadioTechnology = [(SFL2Report *)self cellularRadioTechnology];
  cellularMNC = [(SFL2Report *)self cellularMNC];
  cellularMCC = [(SFL2Report *)self cellularMCC];
  cellularUARFCN = [(SFL2Report *)self cellularUARFCN];
  cellularPID = [(SFL2Report *)self cellularPID];
  cellularBandInfo = [(SFL2Report *)self cellularBandInfo];
  cellularCellType = [(SFL2Report *)self cellularCellType];
  cellularBandwidth = [(SFL2Report *)self cellularBandwidth];
  cellularTAC = [(SFL2Report *)self cellularTAC];
  cellularBars = [(SFL2Report *)self cellularBars];
  cellularRSRP = [(SFL2Report *)self cellularRSRP];
  [(SFL2Report *)self cellularSNR];
  v6 = v5;
  if ([(SFL2Report *)self cellularSliceActive])
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  v25 = v7;
  cellularBand = [(SFL2Report *)self cellularBand];
  cellularMode = [(SFL2Report *)self cellularMode];
  cellularDualSimStatus = [(SFL2Report *)self cellularDualSimStatus];
  cellularSecondaryMnc = [(SFL2Report *)self cellularSecondaryMnc];
  cellularSecondaryMcc = [(SFL2Report *)self cellularSecondaryMcc];
  cellularOutranksWiFi = [(SFL2Report *)self cellularOutranksWiFi];
  cellularOutrankPrimaryReason = [(SFL2Report *)self cellularOutrankPrimaryReason];
  cellularOutrankReasonFlags = [(SFL2Report *)self cellularOutrankReasonFlags];
  wifiLQM = [(SFL2Report *)self wifiLQM];
  wifiRSSI = [(SFL2Report *)self wifiRSSI];
  if ([(SFL2Report *)self wifiKnownGood])
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  wifiRadioTechnology = [(SFL2Report *)self wifiRadioTechnology];
  if ([(SFL2Report *)self wifiIsHotspot])
  {
    v14 = "Yes";
  }

  else
  {
    v14 = "No";
  }

  if ([(SFL2Report *)self wifiIsApplePersonalHotspot])
  {
    v3 = "Yes";
  }

  interfaceQueueStats = [(SFL2Report *)self interfaceQueueStats];
  activeRadio = [(SFL2Report *)self activeRadio];
  v17 = [v39 initWithFormat:@"<NWL2Report:\n\tCellular LQM:\t\t\t%d\n\tCellular Known Good:\t\t%s\n\tCellular Radio Technology:\t%d\n\tCellular MNC:\t\t\t%d\n\tCellular MCC:\t\t\t%d\n\tCellular UARFCN:\t\t%d\n\tCellular PID:\t\t\t%d\n\tCellular Band Info:\t\t%d\n\tCellular Cell Type:\t\t%@\n\tCellular Bandwidth:\t\t%d\n\tCellular TAC:\t\t\t%d\n\tCellular Bars:\t\t\t%d\n\tCellular RSRP:\t\t\t%d\n\tCellular SNR:\t\t\t%f\n\tCellular Slice Active:\t%s\n\tCellular Band:\t\t\t%u\n\tCellular Mode:\t\t%u\n\tCellular Dual SIM Status:\t%d\n\tCellular Secondary MNC:\t\t%d\n\tCellular Secondary MCC:\t\t%d\n\tCellular Outranks Wi-Fi:\t\t%d\n\tCellular Outrank Primary Reason:\t\t%d\n\tCellular Outrank Reason Flags:\t\t%llu\n\tWi-Fi LQM:\t\t\t%d\n\tWi-Fi RSSI:\t\t\t%d\n\tWi-Fi Known Good:\t\t%s\n\tWi-Fi Radio Technology:\t\t%d\n\tWi-Fi Is Hotspot:\t\t%s\n\tWi-Fi Is Apple Personal Hotspot:\t\t%s\n\tInterface Queue Stats:\t\t%@\n\tActive Radio:\t\t\t%@\n>", cellularLQM, v37, cellularRadioTechnology, cellularMNC, cellularMCC, cellularUARFCN, cellularPID, cellularBandInfo, cellularCellType, cellularBandwidth, cellularTAC, cellularBars, cellularRSRP, v6, v25, cellularBand, cellularMode, cellularDualSimStatus, cellularSecondaryMnc, cellularSecondaryMcc, cellularOutranksWiFi, cellularOutrankPrimaryReason, cellularOutrankReasonFlags, wifiLQM, wifiRSSI, v12, wifiRadioTechnology, v14, v3, interfaceQueueStats, activeRadio];

  return v17;
}

@end
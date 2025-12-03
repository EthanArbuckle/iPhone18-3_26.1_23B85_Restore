@interface STUIStatusBarDataConverter
+ (id)_cellularEntryWithData:(id *)data signalStrengthEnabled:(BOOL)enabled serviceEnabled:(BOOL)serviceEnabled dataNetworkEnabled:(BOOL)networkEnabled serviceString:(const char *)string serviceCrossfadeString:(const char *)crossfadeString serviceBadgeString:(const char *)badgeString serviceContentType:(unsigned int)self0 dataNetworkType:(unsigned int)self1 gsmSignalStrengthRaw:(int)self2 gsmSignalStrengthBars:(int)self3 callForwardingType:(int)self4 lowDataModeActive:(BOOL)self5;
+ (id)convertData:(id *)data fromReferenceData:(id)referenceData;
@end

@implementation STUIStatusBarDataConverter

+ (id)_cellularEntryWithData:(id *)data signalStrengthEnabled:(BOOL)enabled serviceEnabled:(BOOL)serviceEnabled dataNetworkEnabled:(BOOL)networkEnabled serviceString:(const char *)string serviceCrossfadeString:(const char *)crossfadeString serviceBadgeString:(const char *)badgeString serviceContentType:(unsigned int)self0 dataNetworkType:(unsigned int)self1 gsmSignalStrengthRaw:(int)self2 gsmSignalStrengthBars:(int)self3 callForwardingType:(int)self4 lowDataModeActive:(BOOL)self5
{
  if (((type == 2) & ~enabled & serviceEnabled) != 0 || (v15 = networkEnabled, !serviceEnabled && !networkEnabled && !enabled))
  {
    disabledEntry = [MEMORY[0x277D6BA88] disabledEntry];
    goto LABEL_56;
  }

  activeCopy2 = active;
  barsCopy2 = bars;
  networkTypeCopy2 = networkType;
  rawCopy2 = raw;
  if (serviceEnabled)
  {
    if (enabled)
    {
      if (type > 4)
      {
        v30 = 5;
        v31 = 2;
        if (type == 8)
        {
          v32 = 1;
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        if (type == 7)
        {
          v33 = 1;
        }

        else
        {
          v30 = v31;
          v33 = v32;
        }

        v34 = 3;
        v35 = 4;
        if (type != 6)
        {
          v35 = 0;
        }

        if (type != 5)
        {
          v34 = v35;
        }

        if (type <= 6)
        {
          v22 = v34;
        }

        else
        {
          v22 = v30;
        }

        networkEnabledCopy = 0;
        if (type <= 6)
        {
          v24 = 0;
        }

        else
        {
          v24 = v33;
        }
      }

      else if (type - 2 >= 3 && type)
      {
        if (type == 1)
        {
          v22 = 2;
        }

        else
        {
          v22 = 0;
        }

        networkEnabledCopy = 0;
        v24 = 0;
      }

      else
      {
        networkEnabledCopy = 0;
        v24 = 0;
        v22 = 5;
      }

LABEL_42:
      if (*string)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      }

      else
      {
        v26 = 0;
      }

      if (*crossfadeString)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:crossfadeString];
      }

      else
      {
        v27 = 0;
      }

      if (*badgeString)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:badgeString];
      }

      else
      {
        v28 = 0;
      }

      activeCopy2 = active;
      rawCopy2 = raw;
      barsCopy2 = bars;
      networkTypeCopy2 = networkType;
      if (v15)
      {
        goto LABEL_52;
      }

      goto LABEL_14;
    }

    if (type - 7 < 2)
    {
      LOBYTE(networkEnabledCopy) = 1;
    }

    else
    {
      networkEnabledCopy = 0;
      if (type == 5)
      {
        v22 = 3;
        v24 = 0;
        goto LABEL_42;
      }

      if (!type)
      {
        v24 = 0;
        if (networkEnabled)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        networkEnabledCopy = networkEnabled;
        goto LABEL_42;
      }
    }

    v24 = networkEnabledCopy;
    v22 = 1;
    networkEnabledCopy = 0;
    goto LABEL_42;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v22 = 0;
  networkEnabledCopy = 0;
  v24 = 0;
  if (networkEnabled)
  {
LABEL_52:
    if (networkTypeCopy2 > 0x10)
    {
      v29 = 5;
    }

    else
    {
      v29 = qword_26C581728[networkTypeCopy2];
    }

    goto LABEL_55;
  }

LABEL_14:
  v29 = 0;
LABEL_55:
  v36 = *(data + 3160);
  LOBYTE(v40) = (*(data + 2529) & 2) != 0;
  LOBYTE(v39) = activeCopy2;
  BYTE2(v38) = v24;
  BYTE1(v38) = (v36 & 2) != 0;
  LOBYTE(v38) = v36 & 1;
  disabledEntry = [MEMORY[0x277D6BA88] entryWithType:v29 stringValue:v26 crossfadeStringValue:v27 badgeStringValue:v28 wifiCalling:networkEnabledCopy callForwarding:data->var0[forwardingType] showsSOSWhenDisabled:v38 sosAvailable:v22 isBootstrapCellular:v39 status:rawCopy2 lowDataMode:barsCopy2 rawValue:v40 displayValue:? displayRawValue:?];

LABEL_56:

  return disabledEntry;
}

+ (id)convertData:(id *)data fromReferenceData:(id)referenceData
{
  referenceDataCopy = referenceData;
  v7 = objc_alloc_init(MEMORY[0x277D6BA20]);
  v8 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:data type:0 string:data->var1 maxLength:64];
  [v7 setTimeEntry:v8];

  v9 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:data type:0 string:data->var2 maxLength:64];
  [v7 setShortTimeEntry:v9];

  v10 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:data type:1 string:data->var3 maxLength:256];
  [v7 setDateEntry:v10];

  v11 = [objc_alloc(MEMORY[0x277D6BAD0]) initFromData:data type:8 string:data->var44 maxLength:100];
  [v7 setPersonNameEntry:v11];

  if (data->var14 == 2 && data->var8[0])
  {
    v12 = MEMORY[0x277D6BAF0];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:data->var8];
    disabledEntry = [v12 entryWithStringValue:v13];
  }

  else
  {
    disabledEntry = [MEMORY[0x277D6BAF0] disabledEntry];
  }

  [v7 setDeviceNameEntry:disabledEntry];

  BYTE4(v80) = *(data + 2080) & 1;
  HIDWORD(v78) = data->var6;
  LODWORD(v80) = 30;
  HIDWORD(v76) = data->var21;
  LODWORD(v78) = data->var4;
  LODWORD(v76) = data->var14;
  v15 = [self _cellularEntryWithData:data signalStrengthEnabled:data->var0[4] serviceEnabled:data->var0[6] dataNetworkEnabled:data->var0[9] serviceString:data->var8 serviceCrossfadeString:data->var10 serviceBadgeString:data->var54 serviceContentType:v76 dataNetworkType:v78 gsmSignalStrengthRaw:v80 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [v7 setCellularEntry:v15];

  BYTE4(v81) = (*(data + 2080) & 2) != 0;
  HIDWORD(v79) = data->var7;
  LODWORD(v81) = 31;
  HIDWORD(v77) = data->var22;
  LODWORD(v79) = data->var5;
  LODWORD(v77) = data->var15;
  v16 = [self _cellularEntryWithData:data signalStrengthEnabled:data->var0[5] serviceEnabled:data->var0[7] dataNetworkEnabled:data->var0[10] serviceString:data->var9 serviceCrossfadeString:data->var11 serviceBadgeString:data->var55 serviceContentType:v77 dataNetworkType:v79 gsmSignalStrengthRaw:v81 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [v7 setSecondaryCellularEntry:v16];

  secondaryCellularEntry = [v7 secondaryCellularEntry];
  if ([secondaryCellularEntry isEnabled])
  {
    goto LABEL_8;
  }

  v18 = *(data + 3160);

  if ((v18 & 4) != 0)
  {
    secondaryCellularEntry = objc_alloc_init(MEMORY[0x277D6BA88]);
    [v7 setSecondaryCellularEntry:secondaryCellularEntry];
LABEL_8:
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v83 = __60__STUIStatusBarDataConverter_convertData_fromReferenceData___block_invoke;
  v84 = &unk_279D38718;
  v85 = 0;
  v86 = &v93;
  v87 = &v89;
  dataCopy = data;
  var21 = data->var21;
  if (([0 isEnabled] & 1) == 0 && dataCopy->var0[9])
  {
    if (var21 != 5)
    {
      if (var21 != 6)
      {
        goto LABEL_15;
      }

      *(v87[1] + 24) = 1;
    }

    *(v86[1] + 24) = 1;
  }

LABEL_15:
  v83(v82, 10u, data->var22);
  if (*(v94 + 24) == 1)
  {
    v20 = 3;
    if ((*(data + 3149) & 0x10) == 0)
    {
      v20 = 5;
    }

    if ((*(data + 3149) & 8) != 0)
    {
      v21 = 4;
    }

    else
    {
      v21 = v20;
    }

    disabledEntry2 = [MEMORY[0x277D6BB18] entryWithType:v90[3] status:v21 lowDataMode:*(data + 2092) & 1 rawValue:data->var18 displayValue:data->var19 displayRawValue:(*(data + 2529) >> 2) & 1];
  }

  else
  {
    disabledEntry2 = [MEMORY[0x277D6BB18] disabledEntry];
  }

  v23 = disabledEntry2;

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);
  [v7 setWifiEntry:v23];

  if (data->var0[12])
  {
    if (data->var0[14])
    {
      var24 = 0;
      v25 = 1;
    }

    else
    {
      var24 = data->var24;
      v25 = data->var0[13];
    }

    v27 = MEMORY[0x277D6BA60];
    var23 = data->var23;
    v29 = *(data + 2536);
    if (data->var25[0])
    {
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:data->var25];
    }

    else
    {
      v30 = 0;
    }

    disabledEntry3 = [v27 entryWithCapacity:var23 state:var24 saverMode:v29 & 1 prominentlyShowsDetailString:v25 detailString:v30];
  }

  else
  {
    disabledEntry3 = [MEMORY[0x277D6BA60] disabledEntry];
  }

  [v7 setMainBatteryEntry:disabledEntry3];

  if (data->var0[16])
  {
    if (data->var0[42])
    {
      v31 = 2;
    }

    else
    {
      v31 = *(data + 2529) & 1;
    }

    if (data->var0[15])
    {
      [MEMORY[0x277D6BA60] entryWithCapacity:data->var26 state:0 saverMode:0 prominentlyShowsDetailString:0 detailString:0];
    }

    else
    {
      [MEMORY[0x277D6BA60] disabledEntry];
    }
    v33 = ;
    disabledEntry4 = [MEMORY[0x277D6BA68] entryWithState:v31 batteryEntry:v33];
  }

  else
  {
    disabledEntry4 = [MEMORY[0x277D6BA68] disabledEntry];
  }

  [v7 setBluetoothEntry:disabledEntry4];

  v34 = [objc_alloc(MEMORY[0x277D6BB00]) initFromData:data type:33];
  if (data->var0[33])
  {
    var27 = data->var27;
    if (var27 > 3)
    {
      v36 = 3;
      v37 = 4;
      v40 = 5;
      if (var27 != 6)
      {
        v40 = 0;
      }

      if (var27 != 5)
      {
        v37 = v40;
      }

      v38 = var27 == 4;
      goto LABEL_53;
    }

    if (var27)
    {
      v36 = 1;
      v37 = 2;
      if (var27 != 3)
      {
        v37 = 0;
      }

      v38 = var27 == 2;
LABEL_53:
      if (v38)
      {
        v41 = v36;
      }

      else
      {
        v41 = v37;
      }

      disabledEntry5 = [MEMORY[0x277D6BB00] entryWithColor:v41 isSunlightMode:*(data + 2272) & 1];
      goto LABEL_57;
    }
  }

  disabledEntry5 = [MEMORY[0x277D6BB00] disabledEntry];
LABEL_57:
  v42 = disabledEntry5;

  [v7 setThermalEntry:v42];
  if (data->var0[32])
  {
    v43 = *(data + 2272) & 2 | (*(data + 2272) >> 2) & 1;
    v44 = MEMORY[0x277D6BA50];
    if (data->var31[0])
    {
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:data->var31];
    }

    else
    {
      v45 = 0;
    }

    disabledEntry6 = [v44 entryWithType:v43 displayID:v45];
  }

  else
  {
    disabledEntry6 = [MEMORY[0x277D6BA50] disabledEntry];
  }

  [v7 setActivityEntry:disabledEntry6];

  if (data->var38)
  {
    [MEMORY[0x277D6BAF8] entryWithConnectionCount:?];
  }

  else
  {
    [MEMORY[0x277D6BAF8] disabledEntry];
  }
  v47 = ;
  [v7 setTetheringEntry:v47];

  if (data->var0[21])
  {
    [MEMORY[0x277D6BAC0] entryWithType:(*(data + 2529) >> 3) & 3];
  }

  else
  {
    [MEMORY[0x277D6BAC0] disabledEntry];
  }
  v48 = ;
  [v7 setLocationEntry:v48];

  v49 = [objc_alloc(MEMORY[0x277D6BAC8]) initFromData:data type:39];
  [v7 setLockEntry:v49];

  v50 = objc_alloc(MEMORY[0x277D6BAE0]);
  LOBYTE(v75) = (~*(data + 2529) & 0x80) != 0;
  v51 = [v50 initFromData:data type:2 focusName:data->var57 maxFocusLength:256 imageName:data->var56 maxImageLength:256 BOOLValue:v75];
  [v7 setQuietModeEntry:v51];

  v52 = [objc_alloc(MEMORY[0x277D6BA70]) initFromData:data type:35 BOOLValue:*(data + 3149) & 1];
  [v7 setElectronicTollCollectionEntry:v52];

  v53 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:22];
  [v7 setRotationLockEntry:v53];

  v54 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:3];
  [v7 setAirplaneModeEntry:v54];

  v55 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:17];
  [v7 setTtyEntry:v55];

  v56 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:19];
  [v7 setNikeEntry:v56];

  v57 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:25];
  [v7 setAssistantEntry:v57];

  v58 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:27];
  [v7 setStudentEntry:v58];

  v59 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:29];
  [v7 setVpnEntry:v59];

  v60 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:40];
  [v7 setLiquidDetectionEntry:v60];

  v61 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:44];
  [v7 setDisplayWarningEntry:v61];

  v62 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:24];
  [v7 setAirPlayEntry:v62];

  v63 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:26];
  [v7 setCarPlayEntry:v63];

  v64 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:18];
  [v7 setAlarmEntry:v64];

  v65 = [objc_alloc(MEMORY[0x277D6BAE8]) initFromData:data type:45];
  [v7 setSatelliteEntry:v65];

  v66 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:data type:28];
  [v7 setSensorActivityEntry:v66];

  v67 = [objc_alloc(MEMORY[0x277D6BA70]) initFromData:data type:34 BOOLValue:(*(data + 3149) >> 1) & 1];
  [v7 setRadarEntry:v67];

  v68 = [objc_alloc(MEMORY[0x277D6BA70]) initFromData:data type:38 BOOLValue:(*(data + 3149) >> 2) & 1];
  [v7 setAnnounceNotificationsEntry:v68];

  if (data->var0[41])
  {
    [MEMORY[0x277D6BB08] entryWithType:(*(data + 2529) >> 5) & 3];
  }

  else
  {
    [MEMORY[0x277D6BB08] disabledEntry];
  }
  v69 = ;
  [v7 setVoiceControlEntry:v69];

  if (data->var42[0])
  {
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:data->var42];
  }

  else
  {
    v70 = 0;
  }

  if ([v70 length])
  {
    [MEMORY[0x277D6BAF0] entryWithStringValue:v70];
  }

  else
  {
    [MEMORY[0x277D6BAF0] disabledEntry];
  }
  v71 = ;

  [v7 setBackNavigationEntry:v71];
  v72 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:data type:51 string:data->var43 maxLength:256];
  [v7 setForwardNavigationEntry:v72];

  [v7 makeUpdateFromData:referenceDataCopy];
  immutableCopy = [v7 immutableCopy];

  return immutableCopy;
}

uint64_t __60__STUIStatusBarDataConverter_convertData_fromReferenceData___block_invoke(uint64_t a1, unsigned int a2, int a3)
{
  result = [*(a1 + 32) isEnabled];
  if ((result & 1) == 0 && *(*(a1 + 56) + a2) == 1)
  {
    if (a3 != 5)
    {
      if (a3 != 6)
      {
        return result;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

@end
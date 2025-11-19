@interface STUIStatusBarDataConverter
+ (id)_cellularEntryWithData:(id *)a3 signalStrengthEnabled:(BOOL)a4 serviceEnabled:(BOOL)a5 dataNetworkEnabled:(BOOL)a6 serviceString:(const char *)a7 serviceCrossfadeString:(const char *)a8 serviceBadgeString:(const char *)a9 serviceContentType:(unsigned int)a10 dataNetworkType:(unsigned int)a11 gsmSignalStrengthRaw:(int)a12 gsmSignalStrengthBars:(int)a13 callForwardingType:(int)a14 lowDataModeActive:(BOOL)a15;
+ (id)convertData:(id *)a3 fromReferenceData:(id)a4;
@end

@implementation STUIStatusBarDataConverter

+ (id)_cellularEntryWithData:(id *)a3 signalStrengthEnabled:(BOOL)a4 serviceEnabled:(BOOL)a5 dataNetworkEnabled:(BOOL)a6 serviceString:(const char *)a7 serviceCrossfadeString:(const char *)a8 serviceBadgeString:(const char *)a9 serviceContentType:(unsigned int)a10 dataNetworkType:(unsigned int)a11 gsmSignalStrengthRaw:(int)a12 gsmSignalStrengthBars:(int)a13 callForwardingType:(int)a14 lowDataModeActive:(BOOL)a15
{
  if (((a10 == 2) & ~a4 & a5) != 0 || (v15 = a6, !a5 && !a6 && !a4))
  {
    v25 = [MEMORY[0x277D6BA88] disabledEntry];
    goto LABEL_56;
  }

  v17 = a15;
  v18 = a13;
  v20 = a11;
  v19 = a12;
  if (a5)
  {
    if (a4)
    {
      if (a10 > 4)
      {
        v30 = 5;
        v31 = 2;
        if (a10 == 8)
        {
          v32 = 1;
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        if (a10 == 7)
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
        if (a10 != 6)
        {
          v35 = 0;
        }

        if (a10 != 5)
        {
          v34 = v35;
        }

        if (a10 <= 6)
        {
          v22 = v34;
        }

        else
        {
          v22 = v30;
        }

        v23 = 0;
        if (a10 <= 6)
        {
          v24 = 0;
        }

        else
        {
          v24 = v33;
        }
      }

      else if (a10 - 2 >= 3 && a10)
      {
        if (a10 == 1)
        {
          v22 = 2;
        }

        else
        {
          v22 = 0;
        }

        v23 = 0;
        v24 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v22 = 5;
      }

LABEL_42:
      if (*a7)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:a7];
      }

      else
      {
        v26 = 0;
      }

      if (*a8)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:a8];
      }

      else
      {
        v27 = 0;
      }

      if (*a9)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:a9];
      }

      else
      {
        v28 = 0;
      }

      v17 = a15;
      v19 = a12;
      v18 = a13;
      v20 = a11;
      if (v15)
      {
        goto LABEL_52;
      }

      goto LABEL_14;
    }

    if (a10 - 7 < 2)
    {
      LOBYTE(v23) = 1;
    }

    else
    {
      v23 = 0;
      if (a10 == 5)
      {
        v22 = 3;
        v24 = 0;
        goto LABEL_42;
      }

      if (!a10)
      {
        v24 = 0;
        if (a6)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        v23 = a6;
        goto LABEL_42;
      }
    }

    v24 = v23;
    v22 = 1;
    v23 = 0;
    goto LABEL_42;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (a6)
  {
LABEL_52:
    if (v20 > 0x10)
    {
      v29 = 5;
    }

    else
    {
      v29 = qword_26C581728[v20];
    }

    goto LABEL_55;
  }

LABEL_14:
  v29 = 0;
LABEL_55:
  v36 = *(a3 + 3160);
  LOBYTE(v40) = (*(a3 + 2529) & 2) != 0;
  LOBYTE(v39) = v17;
  BYTE2(v38) = v24;
  BYTE1(v38) = (v36 & 2) != 0;
  LOBYTE(v38) = v36 & 1;
  v25 = [MEMORY[0x277D6BA88] entryWithType:v29 stringValue:v26 crossfadeStringValue:v27 badgeStringValue:v28 wifiCalling:v23 callForwarding:a3->var0[a14] showsSOSWhenDisabled:v38 sosAvailable:v22 isBootstrapCellular:v39 status:v19 lowDataMode:v18 rawValue:v40 displayValue:? displayRawValue:?];

LABEL_56:

  return v25;
}

+ (id)convertData:(id *)a3 fromReferenceData:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D6BA20]);
  v8 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:a3 type:0 string:a3->var1 maxLength:64];
  [v7 setTimeEntry:v8];

  v9 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:a3 type:0 string:a3->var2 maxLength:64];
  [v7 setShortTimeEntry:v9];

  v10 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:a3 type:1 string:a3->var3 maxLength:256];
  [v7 setDateEntry:v10];

  v11 = [objc_alloc(MEMORY[0x277D6BAD0]) initFromData:a3 type:8 string:a3->var44 maxLength:100];
  [v7 setPersonNameEntry:v11];

  if (a3->var14 == 2 && a3->var8[0])
  {
    v12 = MEMORY[0x277D6BAF0];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->var8];
    v14 = [v12 entryWithStringValue:v13];
  }

  else
  {
    v14 = [MEMORY[0x277D6BAF0] disabledEntry];
  }

  [v7 setDeviceNameEntry:v14];

  BYTE4(v80) = *(a3 + 2080) & 1;
  HIDWORD(v78) = a3->var6;
  LODWORD(v80) = 30;
  HIDWORD(v76) = a3->var21;
  LODWORD(v78) = a3->var4;
  LODWORD(v76) = a3->var14;
  v15 = [a1 _cellularEntryWithData:a3 signalStrengthEnabled:a3->var0[4] serviceEnabled:a3->var0[6] dataNetworkEnabled:a3->var0[9] serviceString:a3->var8 serviceCrossfadeString:a3->var10 serviceBadgeString:a3->var54 serviceContentType:v76 dataNetworkType:v78 gsmSignalStrengthRaw:v80 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [v7 setCellularEntry:v15];

  BYTE4(v81) = (*(a3 + 2080) & 2) != 0;
  HIDWORD(v79) = a3->var7;
  LODWORD(v81) = 31;
  HIDWORD(v77) = a3->var22;
  LODWORD(v79) = a3->var5;
  LODWORD(v77) = a3->var15;
  v16 = [a1 _cellularEntryWithData:a3 signalStrengthEnabled:a3->var0[5] serviceEnabled:a3->var0[7] dataNetworkEnabled:a3->var0[10] serviceString:a3->var9 serviceCrossfadeString:a3->var11 serviceBadgeString:a3->var55 serviceContentType:v77 dataNetworkType:v79 gsmSignalStrengthRaw:v81 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [v7 setSecondaryCellularEntry:v16];

  v17 = [v7 secondaryCellularEntry];
  if ([v17 isEnabled])
  {
    goto LABEL_8;
  }

  v18 = *(a3 + 3160);

  if ((v18 & 4) != 0)
  {
    v17 = objc_alloc_init(MEMORY[0x277D6BA88]);
    [v7 setSecondaryCellularEntry:v17];
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
  v88 = a3;
  var21 = a3->var21;
  if (([0 isEnabled] & 1) == 0 && v88->var0[9])
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
  v83(v82, 10u, a3->var22);
  if (*(v94 + 24) == 1)
  {
    v20 = 3;
    if ((*(a3 + 3149) & 0x10) == 0)
    {
      v20 = 5;
    }

    if ((*(a3 + 3149) & 8) != 0)
    {
      v21 = 4;
    }

    else
    {
      v21 = v20;
    }

    v22 = [MEMORY[0x277D6BB18] entryWithType:v90[3] status:v21 lowDataMode:*(a3 + 2092) & 1 rawValue:a3->var18 displayValue:a3->var19 displayRawValue:(*(a3 + 2529) >> 2) & 1];
  }

  else
  {
    v22 = [MEMORY[0x277D6BB18] disabledEntry];
  }

  v23 = v22;

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);
  [v7 setWifiEntry:v23];

  if (a3->var0[12])
  {
    if (a3->var0[14])
    {
      var24 = 0;
      v25 = 1;
    }

    else
    {
      var24 = a3->var24;
      v25 = a3->var0[13];
    }

    v27 = MEMORY[0x277D6BA60];
    var23 = a3->var23;
    v29 = *(a3 + 2536);
    if (a3->var25[0])
    {
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->var25];
    }

    else
    {
      v30 = 0;
    }

    v26 = [v27 entryWithCapacity:var23 state:var24 saverMode:v29 & 1 prominentlyShowsDetailString:v25 detailString:v30];
  }

  else
  {
    v26 = [MEMORY[0x277D6BA60] disabledEntry];
  }

  [v7 setMainBatteryEntry:v26];

  if (a3->var0[16])
  {
    if (a3->var0[42])
    {
      v31 = 2;
    }

    else
    {
      v31 = *(a3 + 2529) & 1;
    }

    if (a3->var0[15])
    {
      [MEMORY[0x277D6BA60] entryWithCapacity:a3->var26 state:0 saverMode:0 prominentlyShowsDetailString:0 detailString:0];
    }

    else
    {
      [MEMORY[0x277D6BA60] disabledEntry];
    }
    v33 = ;
    v32 = [MEMORY[0x277D6BA68] entryWithState:v31 batteryEntry:v33];
  }

  else
  {
    v32 = [MEMORY[0x277D6BA68] disabledEntry];
  }

  [v7 setBluetoothEntry:v32];

  v34 = [objc_alloc(MEMORY[0x277D6BB00]) initFromData:a3 type:33];
  if (a3->var0[33])
  {
    var27 = a3->var27;
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

      v39 = [MEMORY[0x277D6BB00] entryWithColor:v41 isSunlightMode:*(a3 + 2272) & 1];
      goto LABEL_57;
    }
  }

  v39 = [MEMORY[0x277D6BB00] disabledEntry];
LABEL_57:
  v42 = v39;

  [v7 setThermalEntry:v42];
  if (a3->var0[32])
  {
    v43 = *(a3 + 2272) & 2 | (*(a3 + 2272) >> 2) & 1;
    v44 = MEMORY[0x277D6BA50];
    if (a3->var31[0])
    {
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->var31];
    }

    else
    {
      v45 = 0;
    }

    v46 = [v44 entryWithType:v43 displayID:v45];
  }

  else
  {
    v46 = [MEMORY[0x277D6BA50] disabledEntry];
  }

  [v7 setActivityEntry:v46];

  if (a3->var38)
  {
    [MEMORY[0x277D6BAF8] entryWithConnectionCount:?];
  }

  else
  {
    [MEMORY[0x277D6BAF8] disabledEntry];
  }
  v47 = ;
  [v7 setTetheringEntry:v47];

  if (a3->var0[21])
  {
    [MEMORY[0x277D6BAC0] entryWithType:(*(a3 + 2529) >> 3) & 3];
  }

  else
  {
    [MEMORY[0x277D6BAC0] disabledEntry];
  }
  v48 = ;
  [v7 setLocationEntry:v48];

  v49 = [objc_alloc(MEMORY[0x277D6BAC8]) initFromData:a3 type:39];
  [v7 setLockEntry:v49];

  v50 = objc_alloc(MEMORY[0x277D6BAE0]);
  LOBYTE(v75) = (~*(a3 + 2529) & 0x80) != 0;
  v51 = [v50 initFromData:a3 type:2 focusName:a3->var57 maxFocusLength:256 imageName:a3->var56 maxImageLength:256 BOOLValue:v75];
  [v7 setQuietModeEntry:v51];

  v52 = [objc_alloc(MEMORY[0x277D6BA70]) initFromData:a3 type:35 BOOLValue:*(a3 + 3149) & 1];
  [v7 setElectronicTollCollectionEntry:v52];

  v53 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:22];
  [v7 setRotationLockEntry:v53];

  v54 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:3];
  [v7 setAirplaneModeEntry:v54];

  v55 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:17];
  [v7 setTtyEntry:v55];

  v56 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:19];
  [v7 setNikeEntry:v56];

  v57 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:25];
  [v7 setAssistantEntry:v57];

  v58 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:27];
  [v7 setStudentEntry:v58];

  v59 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:29];
  [v7 setVpnEntry:v59];

  v60 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:40];
  [v7 setLiquidDetectionEntry:v60];

  v61 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:44];
  [v7 setDisplayWarningEntry:v61];

  v62 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:24];
  [v7 setAirPlayEntry:v62];

  v63 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:26];
  [v7 setCarPlayEntry:v63];

  v64 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:18];
  [v7 setAlarmEntry:v64];

  v65 = [objc_alloc(MEMORY[0x277D6BAE8]) initFromData:a3 type:45];
  [v7 setSatelliteEntry:v65];

  v66 = [objc_alloc(MEMORY[0x277D6BAA0]) initFromData:a3 type:28];
  [v7 setSensorActivityEntry:v66];

  v67 = [objc_alloc(MEMORY[0x277D6BA70]) initFromData:a3 type:34 BOOLValue:(*(a3 + 3149) >> 1) & 1];
  [v7 setRadarEntry:v67];

  v68 = [objc_alloc(MEMORY[0x277D6BA70]) initFromData:a3 type:38 BOOLValue:(*(a3 + 3149) >> 2) & 1];
  [v7 setAnnounceNotificationsEntry:v68];

  if (a3->var0[41])
  {
    [MEMORY[0x277D6BB08] entryWithType:(*(a3 + 2529) >> 5) & 3];
  }

  else
  {
    [MEMORY[0x277D6BB08] disabledEntry];
  }
  v69 = ;
  [v7 setVoiceControlEntry:v69];

  if (a3->var42[0])
  {
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->var42];
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
  v72 = [objc_alloc(MEMORY[0x277D6BAF0]) initFromData:a3 type:51 string:a3->var43 maxLength:256];
  [v7 setForwardNavigationEntry:v72];

  [v7 makeUpdateFromData:v6];
  v73 = [v7 immutableCopy];

  return v73;
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
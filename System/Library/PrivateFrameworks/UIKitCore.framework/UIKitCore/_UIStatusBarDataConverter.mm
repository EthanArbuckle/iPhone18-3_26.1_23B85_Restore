@interface _UIStatusBarDataConverter
+ (id)_cellularEntryWithData:(id *)a3 signalStrengthEnabled:(BOOL)a4 serviceEnabled:(BOOL)a5 dataNetworkEnabled:(BOOL)a6 serviceString:(const char *)a7 serviceCrossfadeString:(const char *)a8 serviceBadgeString:(const char *)a9 serviceContentType:(unsigned int)a10 dataNetworkType:(unsigned int)a11 gsmSignalStrengthRaw:(int)a12 gsmSignalStrengthBars:(int)a13 callForwardingType:(int)a14 lowDataModeActive:(BOOL)a15;
+ (id)convertData:(id *)a3 fromReferenceData:(id)a4;
@end

@implementation _UIStatusBarDataConverter

+ (id)_cellularEntryWithData:(id *)a3 signalStrengthEnabled:(BOOL)a4 serviceEnabled:(BOOL)a5 dataNetworkEnabled:(BOOL)a6 serviceString:(const char *)a7 serviceCrossfadeString:(const char *)a8 serviceBadgeString:(const char *)a9 serviceContentType:(unsigned int)a10 dataNetworkType:(unsigned int)a11 gsmSignalStrengthRaw:(int)a12 gsmSignalStrengthBars:(int)a13 callForwardingType:(int)a14 lowDataModeActive:(BOOL)a15
{
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v19 = objc_alloc_init(_UIStatusBarDataCellularEntry);
  [(_UIStatusBarDataEntry *)v19 setEnabled:(v16 || v15) | v17];
  v20 = [(_UIStatusBarDataEntry *)v19 isEnabled];
  if (a10 == 2 && v20 && !v17 && v16)
  {
    [(_UIStatusBarDataEntry *)v19 setEnabled:0];
  }

  if ([(_UIStatusBarDataEntry *)v19 isEnabled])
  {
    if (!v16)
    {
      [(_UIStatusBarDataNetworkEntry *)v19 setStatus:0];
      v24 = a15;
      v25 = a14;
      v26 = a13;
LABEL_49:
      if (v15)
      {
        if (a11 > 0xE)
        {
          v37 = 5;
        }

        else
        {
          v37 = qword_18A6824F0[a11];
        }
      }

      else
      {
        v37 = 0;
      }

      [(_UIStatusBarDataCellularEntry *)v19 setType:v37];
      [(_UIStatusBarDataIntegerEntry *)v19 setRawValue:a12];
      [(_UIStatusBarDataIntegerEntry *)v19 setDisplayValue:v26];
      [(_UIStatusBarDataIntegerEntry *)v19 setDisplayRawValue:(*(a3 + 2529) >> 1) & 1];
      [(_UIStatusBarDataCellularEntry *)v19 setShowsSOSWhenDisabled:*(a3 + 3160) & 1];
      [(_UIStatusBarDataCellularEntry *)v19 setSosAvailable:(*(a3 + 3160) >> 1) & 1];
      [(_UIStatusBarDataCellularEntry *)v19 setCallForwardingEnabled:a3->var0[v25]];
      [(_UIStatusBarDataNetworkEntry *)v19 setLowDataModeActive:v24];
      goto LABEL_55;
    }

    if (v17)
    {
      if (a10 <= 4)
      {
        if (a10 - 2 >= 3 && a10)
        {
          v24 = a15;
          v25 = a14;
          v26 = a13;
          v28 = a8;
          v27 = a9;
          v29 = a7;
          if (a10 != 1)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        [(_UIStatusBarDataNetworkEntry *)v19 setStatus:5];
        v24 = a15;
        v25 = a14;
        v26 = a13;
LABEL_42:
        v28 = a8;
        v27 = a9;
        v29 = a7;
        goto LABEL_43;
      }

      if (a10 <= 6)
      {
        v24 = a15;
        v25 = a14;
        v26 = a13;
        if (a10 != 5)
        {
          v28 = a8;
          v27 = a9;
          v29 = a7;
          v30 = v19;
          v31 = 4;
          goto LABEL_37;
        }

        v32 = v19;
        v33 = 3;
        goto LABEL_41;
      }

      v24 = a15;
      v25 = a14;
      v26 = a13;
      if (a10 == 7)
      {
        [(_UIStatusBarDataCellularEntry *)v19 setIsBootstrapCellular:1];
        v32 = v19;
        v33 = 5;
LABEL_41:
        [(_UIStatusBarDataNetworkEntry *)v32 setStatus:v33];
        goto LABEL_42;
      }

      v28 = a8;
      v27 = a9;
      v29 = a7;
      if (a10 == 8)
      {
        [(_UIStatusBarDataCellularEntry *)v19 setIsBootstrapCellular:1];
LABEL_36:
        v30 = v19;
        v31 = 2;
LABEL_37:
        [(_UIStatusBarDataNetworkEntry *)v30 setStatus:v31];
      }

LABEL_43:
      if (*v29)
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
        [(_UIStatusBarDataCellularEntry *)v19 setString:v34];
      }

      if (*v28)
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
        [(_UIStatusBarDataCellularEntry *)v19 setCrossfadeString:v35];
      }

      if (*v27)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
        [(_UIStatusBarDataCellularEntry *)v19 setBadgeString:v36];
      }

      goto LABEL_49;
    }

    if (a10 - 7 < 2)
    {
      [(_UIStatusBarDataCellularEntry *)v19 setIsBootstrapCellular:1];
      v24 = a15;
      v25 = a14;
      v26 = a13;
      v29 = a7;
    }

    else
    {
      v26 = a13;
      if (a10 == 5)
      {
        [(_UIStatusBarDataNetworkEntry *)v19 setStatus:3];
        v24 = a15;
        v25 = a14;
        goto LABEL_42;
      }

      v24 = a15;
      v25 = a14;
      v29 = a7;
      if (!a10)
      {
        [(_UIStatusBarDataNetworkEntry *)v19 setStatus:2];
        [(_UIStatusBarDataCellularEntry *)v19 setWifiCallingEnabled:1];
LABEL_31:
        v28 = a8;
        v27 = a9;
        goto LABEL_43;
      }
    }

    [(_UIStatusBarDataNetworkEntry *)v19 setStatus:1];
    goto LABEL_31;
  }

LABEL_55:

  return v19;
}

+ (id)convertData:(id *)a3 fromReferenceData:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(_UIStatusBarData);
  v8 = [[_UIStatusBarDataStringEntry alloc] initFromData:a3 type:0 string:a3->var1 maxLength:64];
  [(_UIStatusBarData *)v7 setTimeEntry:v8];

  v9 = [[_UIStatusBarDataStringEntry alloc] initFromData:a3 type:0 string:a3->var2 maxLength:64];
  [(_UIStatusBarData *)v7 setShortTimeEntry:v9];

  v10 = [[_UIStatusBarDataStringEntry alloc] initFromData:a3 type:1 string:a3->var3 maxLength:256];
  [(_UIStatusBarData *)v7 setDateEntry:v10];

  v11 = [[_UIStatusBarDataStringEntry alloc] initFromData:a3 type:8 string:a3->var44 maxLength:100];
  [(_UIStatusBarData *)v7 setPersonNameEntry:v11];

  v12 = objc_alloc_init(_UIStatusBarDataStringEntry);
  v13 = v12;
  if (a3->var14 == 2 && a3->var8[0])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var8];
    [(_UIStatusBarDataStringEntry *)v13 setStringValue:v14];
  }

  else
  {
    [(_UIStatusBarDataEntry *)v12 setEnabled:0];
  }

  [(_UIStatusBarData *)v7 setDeviceNameEntry:v13];

  BYTE4(v67) = *(a3 + 2080) & 1;
  HIDWORD(v65) = a3->var6;
  LODWORD(v67) = 30;
  HIDWORD(v63) = a3->var21;
  LODWORD(v65) = a3->var4;
  LODWORD(v63) = a3->var14;
  v15 = [a1 _cellularEntryWithData:a3 signalStrengthEnabled:a3->var0[4] serviceEnabled:a3->var0[6] dataNetworkEnabled:a3->var0[9] serviceString:a3->var8 serviceCrossfadeString:a3->var10 serviceBadgeString:a3->var54 serviceContentType:v63 dataNetworkType:v65 gsmSignalStrengthRaw:v67 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [(_UIStatusBarData *)v7 setCellularEntry:v15];

  BYTE4(v68) = (*(a3 + 2080) & 2) != 0;
  HIDWORD(v66) = a3->var7;
  LODWORD(v68) = 31;
  HIDWORD(v64) = a3->var22;
  LODWORD(v66) = a3->var5;
  LODWORD(v64) = a3->var15;
  v16 = [a1 _cellularEntryWithData:a3 signalStrengthEnabled:a3->var0[5] serviceEnabled:a3->var0[7] dataNetworkEnabled:a3->var0[10] serviceString:a3->var9 serviceCrossfadeString:a3->var11 serviceBadgeString:a3->var55 serviceContentType:v64 dataNetworkType:v66 gsmSignalStrengthRaw:v68 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [(_UIStatusBarData *)v7 setSecondaryCellularEntry:v16];

  v17 = [(_UIStatusBarData *)v7 secondaryCellularEntry];
  if (![(_UIStatusBarDataEntry *)v17 isEnabled])
  {
    v18 = *(a3 + 3160);

    if ((v18 & 4) == 0)
    {
      goto LABEL_9;
    }

    v17 = objc_alloc_init(_UIStatusBarDataCellularEntry);
    [(_UIStatusBarData *)v7 setSecondaryCellularEntry:v17];
  }

LABEL_9:
  v19 = +[(_UIStatusBarDataEntry *)_UIStatusBarDataWifiEntry];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v70 = __59___UIStatusBarDataConverter_convertData_fromReferenceData___block_invoke;
  v71 = &unk_1E7121F70;
  v20 = v19;
  v72 = v20;
  v73 = a3;
  __59___UIStatusBarDataConverter_convertData_fromReferenceData___block_invoke(v69, 9u, a3->var21);
  v70(v69, 10u, a3->var22);
  if ([v20 isEnabled])
  {
    v21 = 3;
    if ((*(a3 + 3149) & 0x10) == 0)
    {
      v21 = 5;
    }

    if ((*(a3 + 3149) & 8) != 0)
    {
      v22 = 4;
    }

    else
    {
      v22 = v21;
    }

    [v20 setStatus:v22];
    [v20 setRawValue:a3->var18];
    [v20 setDisplayValue:a3->var19];
    [v20 setDisplayRawValue:(*(a3 + 2529) >> 2) & 1];
    [v20 setLowDataModeActive:*(a3 + 2092) & 1];
  }

  [(_UIStatusBarData *)v7 setWifiEntry:v20];
  v23 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataBatteryEntry alloc] initFromData:a3 type:12];
  if ([v23 isEnabled])
  {
    [v23 setCapacity:a3->var23];
    if (a3->var0[14])
    {
      [v23 setState:3];
      v24 = 1;
    }

    else
    {
      [v23 setState:a3->var24];
      v24 = a3->var0[13];
    }

    [v23 setProminentlyShowsDetailString:v24];
    [v23 setSaverModeActive:*(a3 + 2536) & 1];
    if (a3->var25[0])
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var25];
      [v23 setDetailString:v25];
    }
  }

  [(_UIStatusBarData *)v7 setMainBatteryEntry:v23];

  v26 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataBluetoothEntry alloc] initFromData:a3 type:16];
  if ([v26 isEnabled])
  {
    if (a3->var0[42])
    {
      v27 = 2;
    }

    else
    {
      v27 = *(a3 + 2529) & 1;
    }

    [v26 setState:v27];
    v28 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataBatteryEntry alloc] initFromData:a3 type:15];
    if ([v28 isEnabled])
    {
      [v28 setCapacity:a3->var26];
      [v28 setState:0];
    }

    [v26 setBatteryEntry:v28];
  }

  [(_UIStatusBarData *)v7 setBluetoothEntry:v26];

  v29 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataThermalEntry alloc] initFromData:a3 type:33];
  v30 = v29;
  var27 = a3->var27;
  if (var27 <= 2)
  {
    switch(var27)
    {
      case 0:
        [v29 setEnabled:0];
        goto LABEL_45;
      case 1:
        v32 = 0;
        break;
      case 2:
        v32 = 1;
        break;
      default:
        goto LABEL_45;
    }
  }

  else if (var27 > 4)
  {
    if (var27 == 5)
    {
      v32 = 4;
    }

    else
    {
      if (var27 != 6)
      {
        goto LABEL_45;
      }

      v32 = 5;
    }
  }

  else if (var27 == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = 3;
  }

  [v29 setColor:v32];
LABEL_45:
  [v30 setSunlightMode:*(a3 + 2272) & 1];
  [(_UIStatusBarData *)v7 setThermalEntry:v30];

  v33 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataActivityEntry alloc] initFromData:a3 type:32];
  [v33 setType:(*(a3 + 2272) >> 2) & 1];
  if ((*(a3 + 2272) & 2) != 0)
  {
    [v33 setType:{objc_msgSend(v33, "type") | 2}];
  }

  if (a3->var31[0])
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var31];
    [v33 setDisplayId:v34];
  }

  [(_UIStatusBarData *)v7 setActivityEntry:v33];

  v35 = objc_alloc_init(_UIStatusBarDataTetheringEntry);
  [(_UIStatusBarDataEntry *)v35 setEnabled:a3->var38 != 0];
  [(_UIStatusBarDataTetheringEntry *)v35 setConnectionCount:a3->var38];
  [(_UIStatusBarData *)v7 setTetheringEntry:v35];

  v36 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataLocationEntry alloc] initFromData:a3 type:21];
  [v36 setType:(*(a3 + 2529) >> 3) & 3];
  [(_UIStatusBarData *)v7 setLocationEntry:v36];

  v37 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataLockEntry alloc] initFromData:a3 type:39];
  [(_UIStatusBarData *)v7 setLockEntry:v37];

  v38 = [_UIStatusBarDataQuietModeEntry alloc];
  LOBYTE(v62) = (~*(a3 + 2529) & 0x80) != 0;
  v39 = [(_UIStatusBarDataQuietModeEntry *)v38 initFromData:a3 type:2 focusName:a3->var57 maxFocusLength:256 imageName:a3->var56 maxImageLength:256 BOOLValue:v62];
  [(_UIStatusBarData *)v7 setQuietModeEntry:v39];

  v40 = [[_UIStatusBarDataBoolEntry alloc] initFromData:a3 type:35 BOOLValue:*(a3 + 3149) & 1];
  [(_UIStatusBarData *)v7 setElectronicTollCollectionEntry:v40];

  v41 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:22];
  [(_UIStatusBarData *)v7 setRotationLockEntry:v41];

  v42 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:3];
  [(_UIStatusBarData *)v7 setAirplaneModeEntry:v42];

  v43 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:17];
  [(_UIStatusBarData *)v7 setTtyEntry:v43];

  v44 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:19];
  [(_UIStatusBarData *)v7 setNikeEntry:v44];

  v45 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:25];
  [(_UIStatusBarData *)v7 setAssistantEntry:v45];

  v46 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:27];
  [(_UIStatusBarData *)v7 setStudentEntry:v46];

  v47 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:29];
  [(_UIStatusBarData *)v7 setVpnEntry:v47];

  v48 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:40];
  [(_UIStatusBarData *)v7 setLiquidDetectionEntry:v48];

  v49 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:44];
  [(_UIStatusBarData *)v7 setDisplayWarningEntry:v49];

  v50 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:24];
  [(_UIStatusBarData *)v7 setAirPlayEntry:v50];

  v51 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:26];
  [(_UIStatusBarData *)v7 setCarPlayEntry:v51];

  v52 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:18];
  [(_UIStatusBarData *)v7 setAlarmEntry:v52];

  v53 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:45];
  [(_UIStatusBarData *)v7 setSatelliteEntry:v53];

  v54 = [[_UIStatusBarDataEntry alloc] initFromData:a3 type:28];
  [(_UIStatusBarData *)v7 setSensorActivityEntry:v54];

  v55 = [[_UIStatusBarDataBoolEntry alloc] initFromData:a3 type:34 BOOLValue:(*(a3 + 3149) >> 1) & 1];
  [(_UIStatusBarData *)v7 setRadarEntry:v55];

  v56 = [[_UIStatusBarDataBoolEntry alloc] initFromData:a3 type:38 BOOLValue:(*(a3 + 3149) >> 2) & 1];
  [(_UIStatusBarData *)v7 setAnnounceNotificationsEntry:v56];

  v57 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataVoiceControlEntry alloc] initFromData:a3 type:41];
  [v57 setType:(*(a3 + 2529) >> 5) & 3];
  [(_UIStatusBarData *)v7 setVoiceControlEntry:v57];

  v58 = [[_UIStatusBarDataStringEntry alloc] initFromData:a3 type:50 string:a3->var42 maxLength:256];
  v59 = [v58 stringValue];
  [v58 setEnabled:{objc_msgSend(v59, "length") != 0}];

  [(_UIStatusBarData *)v7 setBackNavigationEntry:v58];
  v60 = [[_UIStatusBarDataStringEntry alloc] initFromData:a3 type:51 string:a3->var43 maxLength:256];
  [(_UIStatusBarData *)v7 setForwardNavigationEntry:v60];

  [(_UIStatusBarData *)v7 makeUpdateFromData:v6];

  return v7;
}

@end
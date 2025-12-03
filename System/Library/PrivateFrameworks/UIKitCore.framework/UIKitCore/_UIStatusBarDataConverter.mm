@interface _UIStatusBarDataConverter
+ (id)_cellularEntryWithData:(id *)data signalStrengthEnabled:(BOOL)enabled serviceEnabled:(BOOL)serviceEnabled dataNetworkEnabled:(BOOL)networkEnabled serviceString:(const char *)string serviceCrossfadeString:(const char *)crossfadeString serviceBadgeString:(const char *)badgeString serviceContentType:(unsigned int)self0 dataNetworkType:(unsigned int)self1 gsmSignalStrengthRaw:(int)self2 gsmSignalStrengthBars:(int)self3 callForwardingType:(int)self4 lowDataModeActive:(BOOL)self5;
+ (id)convertData:(id *)data fromReferenceData:(id)referenceData;
@end

@implementation _UIStatusBarDataConverter

+ (id)_cellularEntryWithData:(id *)data signalStrengthEnabled:(BOOL)enabled serviceEnabled:(BOOL)serviceEnabled dataNetworkEnabled:(BOOL)networkEnabled serviceString:(const char *)string serviceCrossfadeString:(const char *)crossfadeString serviceBadgeString:(const char *)badgeString serviceContentType:(unsigned int)self0 dataNetworkType:(unsigned int)self1 gsmSignalStrengthRaw:(int)self2 gsmSignalStrengthBars:(int)self3 callForwardingType:(int)self4 lowDataModeActive:(BOOL)self5
{
  networkEnabledCopy = networkEnabled;
  serviceEnabledCopy = serviceEnabled;
  enabledCopy = enabled;
  v19 = objc_alloc_init(_UIStatusBarDataCellularEntry);
  [(_UIStatusBarDataEntry *)v19 setEnabled:(serviceEnabledCopy || networkEnabledCopy) | enabledCopy];
  isEnabled = [(_UIStatusBarDataEntry *)v19 isEnabled];
  if (type == 2 && isEnabled && !enabledCopy && serviceEnabledCopy)
  {
    [(_UIStatusBarDataEntry *)v19 setEnabled:0];
  }

  if ([(_UIStatusBarDataEntry *)v19 isEnabled])
  {
    if (!serviceEnabledCopy)
    {
      [(_UIStatusBarDataNetworkEntry *)v19 setStatus:0];
      activeCopy8 = active;
      forwardingTypeCopy8 = forwardingType;
      barsCopy7 = bars;
LABEL_49:
      if (networkEnabledCopy)
      {
        if (networkType > 0xE)
        {
          v37 = 5;
        }

        else
        {
          v37 = qword_18A6824F0[networkType];
        }
      }

      else
      {
        v37 = 0;
      }

      [(_UIStatusBarDataCellularEntry *)v19 setType:v37];
      [(_UIStatusBarDataIntegerEntry *)v19 setRawValue:raw];
      [(_UIStatusBarDataIntegerEntry *)v19 setDisplayValue:barsCopy7];
      [(_UIStatusBarDataIntegerEntry *)v19 setDisplayRawValue:(*(data + 2529) >> 1) & 1];
      [(_UIStatusBarDataCellularEntry *)v19 setShowsSOSWhenDisabled:*(data + 3160) & 1];
      [(_UIStatusBarDataCellularEntry *)v19 setSosAvailable:(*(data + 3160) >> 1) & 1];
      [(_UIStatusBarDataCellularEntry *)v19 setCallForwardingEnabled:data->var0[forwardingTypeCopy8]];
      [(_UIStatusBarDataNetworkEntry *)v19 setLowDataModeActive:activeCopy8];
      goto LABEL_55;
    }

    if (enabledCopy)
    {
      if (type <= 4)
      {
        if (type - 2 >= 3 && type)
        {
          activeCopy8 = active;
          forwardingTypeCopy8 = forwardingType;
          barsCopy7 = bars;
          crossfadeStringCopy5 = crossfadeString;
          badgeStringCopy5 = badgeString;
          stringCopy6 = string;
          if (type != 1)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        [(_UIStatusBarDataNetworkEntry *)v19 setStatus:5];
        activeCopy8 = active;
        forwardingTypeCopy8 = forwardingType;
        barsCopy7 = bars;
LABEL_42:
        crossfadeStringCopy5 = crossfadeString;
        badgeStringCopy5 = badgeString;
        stringCopy6 = string;
        goto LABEL_43;
      }

      if (type <= 6)
      {
        activeCopy8 = active;
        forwardingTypeCopy8 = forwardingType;
        barsCopy7 = bars;
        if (type != 5)
        {
          crossfadeStringCopy5 = crossfadeString;
          badgeStringCopy5 = badgeString;
          stringCopy6 = string;
          v30 = v19;
          v31 = 4;
          goto LABEL_37;
        }

        v32 = v19;
        v33 = 3;
        goto LABEL_41;
      }

      activeCopy8 = active;
      forwardingTypeCopy8 = forwardingType;
      barsCopy7 = bars;
      if (type == 7)
      {
        [(_UIStatusBarDataCellularEntry *)v19 setIsBootstrapCellular:1];
        v32 = v19;
        v33 = 5;
LABEL_41:
        [(_UIStatusBarDataNetworkEntry *)v32 setStatus:v33];
        goto LABEL_42;
      }

      crossfadeStringCopy5 = crossfadeString;
      badgeStringCopy5 = badgeString;
      stringCopy6 = string;
      if (type == 8)
      {
        [(_UIStatusBarDataCellularEntry *)v19 setIsBootstrapCellular:1];
LABEL_36:
        v30 = v19;
        v31 = 2;
LABEL_37:
        [(_UIStatusBarDataNetworkEntry *)v30 setStatus:v31];
      }

LABEL_43:
      if (*stringCopy6)
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:stringCopy6];
        [(_UIStatusBarDataCellularEntry *)v19 setString:v34];
      }

      if (*crossfadeStringCopy5)
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:crossfadeStringCopy5];
        [(_UIStatusBarDataCellularEntry *)v19 setCrossfadeString:v35];
      }

      if (*badgeStringCopy5)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:badgeStringCopy5];
        [(_UIStatusBarDataCellularEntry *)v19 setBadgeString:v36];
      }

      goto LABEL_49;
    }

    if (type - 7 < 2)
    {
      [(_UIStatusBarDataCellularEntry *)v19 setIsBootstrapCellular:1];
      activeCopy8 = active;
      forwardingTypeCopy8 = forwardingType;
      barsCopy7 = bars;
      stringCopy6 = string;
    }

    else
    {
      barsCopy7 = bars;
      if (type == 5)
      {
        [(_UIStatusBarDataNetworkEntry *)v19 setStatus:3];
        activeCopy8 = active;
        forwardingTypeCopy8 = forwardingType;
        goto LABEL_42;
      }

      activeCopy8 = active;
      forwardingTypeCopy8 = forwardingType;
      stringCopy6 = string;
      if (!type)
      {
        [(_UIStatusBarDataNetworkEntry *)v19 setStatus:2];
        [(_UIStatusBarDataCellularEntry *)v19 setWifiCallingEnabled:1];
LABEL_31:
        crossfadeStringCopy5 = crossfadeString;
        badgeStringCopy5 = badgeString;
        goto LABEL_43;
      }
    }

    [(_UIStatusBarDataNetworkEntry *)v19 setStatus:1];
    goto LABEL_31;
  }

LABEL_55:

  return v19;
}

+ (id)convertData:(id *)data fromReferenceData:(id)referenceData
{
  referenceDataCopy = referenceData;
  v7 = objc_alloc_init(_UIStatusBarData);
  v8 = [[_UIStatusBarDataStringEntry alloc] initFromData:data type:0 string:data->var1 maxLength:64];
  [(_UIStatusBarData *)v7 setTimeEntry:v8];

  v9 = [[_UIStatusBarDataStringEntry alloc] initFromData:data type:0 string:data->var2 maxLength:64];
  [(_UIStatusBarData *)v7 setShortTimeEntry:v9];

  v10 = [[_UIStatusBarDataStringEntry alloc] initFromData:data type:1 string:data->var3 maxLength:256];
  [(_UIStatusBarData *)v7 setDateEntry:v10];

  v11 = [[_UIStatusBarDataStringEntry alloc] initFromData:data type:8 string:data->var44 maxLength:100];
  [(_UIStatusBarData *)v7 setPersonNameEntry:v11];

  v12 = objc_alloc_init(_UIStatusBarDataStringEntry);
  v13 = v12;
  if (data->var14 == 2 && data->var8[0])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:data->var8];
    [(_UIStatusBarDataStringEntry *)v13 setStringValue:v14];
  }

  else
  {
    [(_UIStatusBarDataEntry *)v12 setEnabled:0];
  }

  [(_UIStatusBarData *)v7 setDeviceNameEntry:v13];

  BYTE4(v67) = *(data + 2080) & 1;
  HIDWORD(v65) = data->var6;
  LODWORD(v67) = 30;
  HIDWORD(v63) = data->var21;
  LODWORD(v65) = data->var4;
  LODWORD(v63) = data->var14;
  v15 = [self _cellularEntryWithData:data signalStrengthEnabled:data->var0[4] serviceEnabled:data->var0[6] dataNetworkEnabled:data->var0[9] serviceString:data->var8 serviceCrossfadeString:data->var10 serviceBadgeString:data->var54 serviceContentType:v63 dataNetworkType:v65 gsmSignalStrengthRaw:v67 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [(_UIStatusBarData *)v7 setCellularEntry:v15];

  BYTE4(v68) = (*(data + 2080) & 2) != 0;
  HIDWORD(v66) = data->var7;
  LODWORD(v68) = 31;
  HIDWORD(v64) = data->var22;
  LODWORD(v66) = data->var5;
  LODWORD(v64) = data->var15;
  v16 = [self _cellularEntryWithData:data signalStrengthEnabled:data->var0[5] serviceEnabled:data->var0[7] dataNetworkEnabled:data->var0[10] serviceString:data->var9 serviceCrossfadeString:data->var11 serviceBadgeString:data->var55 serviceContentType:v64 dataNetworkType:v66 gsmSignalStrengthRaw:v68 gsmSignalStrengthBars:? callForwardingType:? lowDataModeActive:?];
  [(_UIStatusBarData *)v7 setSecondaryCellularEntry:v16];

  secondaryCellularEntry = [(_UIStatusBarData *)v7 secondaryCellularEntry];
  if (![(_UIStatusBarDataEntry *)secondaryCellularEntry isEnabled])
  {
    v18 = *(data + 3160);

    if ((v18 & 4) == 0)
    {
      goto LABEL_9;
    }

    secondaryCellularEntry = objc_alloc_init(_UIStatusBarDataCellularEntry);
    [(_UIStatusBarData *)v7 setSecondaryCellularEntry:secondaryCellularEntry];
  }

LABEL_9:
  v19 = +[(_UIStatusBarDataEntry *)_UIStatusBarDataWifiEntry];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v70 = __59___UIStatusBarDataConverter_convertData_fromReferenceData___block_invoke;
  v71 = &unk_1E7121F70;
  v20 = v19;
  v72 = v20;
  dataCopy = data;
  __59___UIStatusBarDataConverter_convertData_fromReferenceData___block_invoke(v69, 9u, data->var21);
  v70(v69, 10u, data->var22);
  if ([v20 isEnabled])
  {
    v21 = 3;
    if ((*(data + 3149) & 0x10) == 0)
    {
      v21 = 5;
    }

    if ((*(data + 3149) & 8) != 0)
    {
      v22 = 4;
    }

    else
    {
      v22 = v21;
    }

    [v20 setStatus:v22];
    [v20 setRawValue:data->var18];
    [v20 setDisplayValue:data->var19];
    [v20 setDisplayRawValue:(*(data + 2529) >> 2) & 1];
    [v20 setLowDataModeActive:*(data + 2092) & 1];
  }

  [(_UIStatusBarData *)v7 setWifiEntry:v20];
  v23 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataBatteryEntry alloc] initFromData:data type:12];
  if ([v23 isEnabled])
  {
    [v23 setCapacity:data->var23];
    if (data->var0[14])
    {
      [v23 setState:3];
      v24 = 1;
    }

    else
    {
      [v23 setState:data->var24];
      v24 = data->var0[13];
    }

    [v23 setProminentlyShowsDetailString:v24];
    [v23 setSaverModeActive:*(data + 2536) & 1];
    if (data->var25[0])
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:data->var25];
      [v23 setDetailString:v25];
    }
  }

  [(_UIStatusBarData *)v7 setMainBatteryEntry:v23];

  v26 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataBluetoothEntry alloc] initFromData:data type:16];
  if ([v26 isEnabled])
  {
    if (data->var0[42])
    {
      v27 = 2;
    }

    else
    {
      v27 = *(data + 2529) & 1;
    }

    [v26 setState:v27];
    v28 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataBatteryEntry alloc] initFromData:data type:15];
    if ([v28 isEnabled])
    {
      [v28 setCapacity:data->var26];
      [v28 setState:0];
    }

    [v26 setBatteryEntry:v28];
  }

  [(_UIStatusBarData *)v7 setBluetoothEntry:v26];

  v29 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataThermalEntry alloc] initFromData:data type:33];
  v30 = v29;
  var27 = data->var27;
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
  [v30 setSunlightMode:*(data + 2272) & 1];
  [(_UIStatusBarData *)v7 setThermalEntry:v30];

  v33 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataActivityEntry alloc] initFromData:data type:32];
  [v33 setType:(*(data + 2272) >> 2) & 1];
  if ((*(data + 2272) & 2) != 0)
  {
    [v33 setType:{objc_msgSend(v33, "type") | 2}];
  }

  if (data->var31[0])
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:data->var31];
    [v33 setDisplayId:v34];
  }

  [(_UIStatusBarData *)v7 setActivityEntry:v33];

  v35 = objc_alloc_init(_UIStatusBarDataTetheringEntry);
  [(_UIStatusBarDataEntry *)v35 setEnabled:data->var38 != 0];
  [(_UIStatusBarDataTetheringEntry *)v35 setConnectionCount:data->var38];
  [(_UIStatusBarData *)v7 setTetheringEntry:v35];

  v36 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataLocationEntry alloc] initFromData:data type:21];
  [v36 setType:(*(data + 2529) >> 3) & 3];
  [(_UIStatusBarData *)v7 setLocationEntry:v36];

  v37 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataLockEntry alloc] initFromData:data type:39];
  [(_UIStatusBarData *)v7 setLockEntry:v37];

  v38 = [_UIStatusBarDataQuietModeEntry alloc];
  LOBYTE(v62) = (~*(data + 2529) & 0x80) != 0;
  v39 = [(_UIStatusBarDataQuietModeEntry *)v38 initFromData:data type:2 focusName:data->var57 maxFocusLength:256 imageName:data->var56 maxImageLength:256 BOOLValue:v62];
  [(_UIStatusBarData *)v7 setQuietModeEntry:v39];

  v40 = [[_UIStatusBarDataBoolEntry alloc] initFromData:data type:35 BOOLValue:*(data + 3149) & 1];
  [(_UIStatusBarData *)v7 setElectronicTollCollectionEntry:v40];

  v41 = [[_UIStatusBarDataEntry alloc] initFromData:data type:22];
  [(_UIStatusBarData *)v7 setRotationLockEntry:v41];

  v42 = [[_UIStatusBarDataEntry alloc] initFromData:data type:3];
  [(_UIStatusBarData *)v7 setAirplaneModeEntry:v42];

  v43 = [[_UIStatusBarDataEntry alloc] initFromData:data type:17];
  [(_UIStatusBarData *)v7 setTtyEntry:v43];

  v44 = [[_UIStatusBarDataEntry alloc] initFromData:data type:19];
  [(_UIStatusBarData *)v7 setNikeEntry:v44];

  v45 = [[_UIStatusBarDataEntry alloc] initFromData:data type:25];
  [(_UIStatusBarData *)v7 setAssistantEntry:v45];

  v46 = [[_UIStatusBarDataEntry alloc] initFromData:data type:27];
  [(_UIStatusBarData *)v7 setStudentEntry:v46];

  v47 = [[_UIStatusBarDataEntry alloc] initFromData:data type:29];
  [(_UIStatusBarData *)v7 setVpnEntry:v47];

  v48 = [[_UIStatusBarDataEntry alloc] initFromData:data type:40];
  [(_UIStatusBarData *)v7 setLiquidDetectionEntry:v48];

  v49 = [[_UIStatusBarDataEntry alloc] initFromData:data type:44];
  [(_UIStatusBarData *)v7 setDisplayWarningEntry:v49];

  v50 = [[_UIStatusBarDataEntry alloc] initFromData:data type:24];
  [(_UIStatusBarData *)v7 setAirPlayEntry:v50];

  v51 = [[_UIStatusBarDataEntry alloc] initFromData:data type:26];
  [(_UIStatusBarData *)v7 setCarPlayEntry:v51];

  v52 = [[_UIStatusBarDataEntry alloc] initFromData:data type:18];
  [(_UIStatusBarData *)v7 setAlarmEntry:v52];

  v53 = [[_UIStatusBarDataEntry alloc] initFromData:data type:45];
  [(_UIStatusBarData *)v7 setSatelliteEntry:v53];

  v54 = [[_UIStatusBarDataEntry alloc] initFromData:data type:28];
  [(_UIStatusBarData *)v7 setSensorActivityEntry:v54];

  v55 = [[_UIStatusBarDataBoolEntry alloc] initFromData:data type:34 BOOLValue:(*(data + 3149) >> 1) & 1];
  [(_UIStatusBarData *)v7 setRadarEntry:v55];

  v56 = [[_UIStatusBarDataBoolEntry alloc] initFromData:data type:38 BOOLValue:(*(data + 3149) >> 2) & 1];
  [(_UIStatusBarData *)v7 setAnnounceNotificationsEntry:v56];

  v57 = [(_UIStatusBarDataEntry *)[_UIStatusBarDataVoiceControlEntry alloc] initFromData:data type:41];
  [v57 setType:(*(data + 2529) >> 5) & 3];
  [(_UIStatusBarData *)v7 setVoiceControlEntry:v57];

  v58 = [[_UIStatusBarDataStringEntry alloc] initFromData:data type:50 string:data->var42 maxLength:256];
  stringValue = [v58 stringValue];
  [v58 setEnabled:{objc_msgSend(stringValue, "length") != 0}];

  [(_UIStatusBarData *)v7 setBackNavigationEntry:v58];
  v60 = [[_UIStatusBarDataStringEntry alloc] initFromData:data type:51 string:data->var43 maxLength:256];
  [(_UIStatusBarData *)v7 setForwardNavigationEntry:v60];

  [(_UIStatusBarData *)v7 makeUpdateFromData:referenceDataCopy];

  return v7;
}

@end
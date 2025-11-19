@interface STMutableStatusBarData(Testing)
+ (id)_sampleCellularEntryWithSeed:()Testing key:entryKeys:enabledEntryKeys:;
+ (id)orderedEntryKeys;
+ (id)sampleDataWithSeed:()Testing entryKeys:enabledEntryKeys:;
+ (id)subsetOfEntryKeys:()Testing withPercentage:;
- (id)subDataWithSupportedLegacyEntries;
- (uint64_t)legacyData;
@end

@implementation STMutableStatusBarData(Testing)

+ (id)orderedEntryKeys
{
  v31[31] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D6BE70];
  v31[0] = *MEMORY[0x277D6BE00];
  v31[1] = v2;
  v3 = *MEMORY[0x277D6BD90];
  v31[2] = *MEMORY[0x277D6BDA0];
  v31[3] = v3;
  v4 = *MEMORY[0x277D6BDF8];
  v31[4] = *MEMORY[0x277D6BE38];
  v31[5] = v4;
  v5 = *MEMORY[0x277D6BDB8];
  v31[6] = *MEMORY[0x277D6BE10];
  v31[7] = v5;
  v6 = *MEMORY[0x277D6BD68];
  v31[8] = *MEMORY[0x277D6BD50];
  v31[9] = v6;
  v7 = *MEMORY[0x277D6BD48];
  v31[10] = *MEMORY[0x277D6BD88];
  v31[11] = v7;
  v8 = *MEMORY[0x277D6BE58];
  v31[12] = *MEMORY[0x277D6BE68];
  v31[13] = v8;
  v9 = *MEMORY[0x277D6BE28];
  v31[14] = *MEMORY[0x277D6BE98];
  v31[15] = v9;
  v10 = *MEMORY[0x277D6BD38];
  v31[16] = *MEMORY[0x277D6BD80];
  v31[17] = v10;
  v11 = *MEMORY[0x277D6BDF0];
  v31[18] = *MEMORY[0x277D6BD58];
  v31[19] = v11;
  v12 = *MEMORY[0x277D6BE60];
  v31[20] = *MEMORY[0x277D6BE78];
  v31[21] = v12;
  v13 = *MEMORY[0x277D6BDA8];
  v31[22] = *MEMORY[0x277D6BE08];
  v31[23] = v13;
  v14 = *MEMORY[0x277D6BE88];
  v31[24] = *MEMORY[0x277D6BE50];
  v31[25] = v14;
  v15 = *MEMORY[0x277D6BE80];
  v31[26] = *MEMORY[0x277D6BD78];
  v31[27] = v15;
  v16 = *MEMORY[0x277D6BD70];
  v31[28] = *MEMORY[0x277D6BE40];
  v31[29] = v16;
  v31[30] = *MEMORY[0x277D6BDE0];
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:31];
  v18 = [v17 mutableCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = [a1 entryKeys];
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * i);
        if (([v18 containsObject:v24] & 1) == 0)
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }

  return v18;
}

+ (id)subsetOfEntryKeys:()Testing withPercentage:
{
  v6 = a4;
  v7 = [a1 orderedEntryKeys];
  v8 = llroundf([v7 count] * a2);
  v9 = [MEMORY[0x277CBEB58] setWithCapacity:v8];
  if (v8 >= 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__STMutableStatusBarData_Testing__subsetOfEntryKeys_withPercentage___block_invoke;
    v11[3] = &unk_279D381F0;
    v12 = v6;
    v13 = v9;
    v14 = v8;
    [v7 enumerateObjectsUsingBlock:v11];
  }

  return v9;
}

+ (id)_sampleCellularEntryWithSeed:()Testing key:entryKeys:enabledEntryKeys:
{
  v9 = (roundf(a1 * 25.0) + 97.0);
  v10 = MEMORY[0x277D6BA88];
  v11 = (roundf(a1 * 5.0) + 1.0);
  v12 = MEMORY[0x277CCACA8];
  v13 = llroundf(a1 * 9.0) + 1;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [v12 stringWithFormat:@"Carrier Name %ld", v13];
  v18 = a1 * 4.0;
  if ((a1 * 4.0) >= 1.5 || v18 <= 1.25)
  {
    v20 = 0;
  }

  else
  {
    v20 = @"SOS Only";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v9];
  v22 = llroundf(v18);
  LOBYTE(v28) = a1 > 0.9;
  LOBYTE(v27) = a1 < 0.2;
  BYTE2(v26) = a1 < 0.1;
  BYTE1(v26) = a1 < 0.4;
  LOBYTE(v26) = v18 > 1.0;
  v23 = [v10 entryWithType:v11 stringValue:v17 crossfadeStringValue:v20 badgeStringValue:v21 wifiCalling:a1 > 0.75 callForwarding:a1 < 0.3 showsSOSWhenDisabled:v26 sosAvailable:v22 isBootstrapCellular:v27 status:llroundf(a1 * 1000.0) lowDataMode:v22 rawValue:v28 displayValue:? displayRawValue:?];

  v24 = [MEMORY[0x277D6BA88] entryWithKey:v16 updatedKeys:v15 enabledKeys:v14 populatedEntry:v23];

  return v24;
}

+ (id)sampleDataWithSeed:()Testing entryKeys:enabledEntryKeys:
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  if (!v8)
  {
    v100 = [(objc_class *)a1 entryKeys];
    *&v101 = a2;
    v8 = [(objc_class *)a1 subsetOfEntryKeys:v100 withPercentage:v101];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_46:
    *&v11 = a2;
    v9 = [(objc_class *)a1 subsetOfEntryKeys:v8 withPercentage:v11];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_46;
  }

LABEL_3:
  v118 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(a2 * 86400.0)];
  v12 = [MEMORY[0x277CCA968] localizedStringFromDate:? dateStyle:? timeStyle:?];
  v13 = [MEMORY[0x277D6BAF0] entryWithStringValue:v12];
  v14 = [MEMORY[0x277D6BAF0] entryWithKey:*MEMORY[0x277D6BE70] updatedKeys:v8 enabledKeys:v9 populatedEntry:v13];

  [v10 setTimeEntry:v14];
  if (([v12 hasSuffix:@" AM"] & 1) != 0 || objc_msgSend(v12, "hasSuffix:", @" PM"))
  {
    v15 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 3}];

    v12 = v15;
  }

  v16 = a2;
  v18 = a2 > 0.2 && a2 < 0.5;
  v116 = v18;
  v19 = [MEMORY[0x277D6BAF0] entryWithStringValue:v12];
  v20 = [MEMORY[0x277D6BAF0] entryWithKey:*MEMORY[0x277D6BE48] updatedKeys:v8 enabledKeys:v9 populatedEntry:v19];

  [v10 setShortTimeEntry:v20];
  v21 = MEMORY[0x277D6BAF0];
  v22 = MEMORY[0x277CCA968];
  v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:((a2 * 604800.0) + 1513700000.0)];
  v24 = [v22 localizedStringFromDate:v23 dateStyle:1 timeStyle:0];
  v25 = [v21 entryWithStringValue:v24];

  v26 = [MEMORY[0x277D6BAF0] entryWithKey:*MEMORY[0x277D6BDA0] updatedKeys:v8 enabledKeys:v9 populatedEntry:v25];

  [v10 setDateEntry:v26];
  v27 = MEMORY[0x277D6BAD0];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Person Name %ld", llroundf(a2 * 999.0) + 1];
  v29 = [v27 entryWithStringValue:v28];

  v30 = [MEMORY[0x277D6BAD0] entryWithKey:*MEMORY[0x277D6BE08] updatedKeys:v8 enabledKeys:v9 populatedEntry:v29];

  [v10 setPersonNameEntry:v30];
  v31 = [MEMORY[0x277D6BAF0] entryWithStringValue:@"iPod"];
  v32 = [MEMORY[0x277D6BAF0] entryWithKey:*MEMORY[0x277D6BDA8] updatedKeys:v8 enabledKeys:v9 populatedEntry:v31];

  [v10 setDeviceNameEntry:v32];
  *&v33 = a2;
  v34 = [(objc_class *)a1 _sampleCellularEntryWithSeed:*MEMORY[0x277D6BD90] key:v8 entryKeys:v9 enabledEntryKeys:v33];
  [v10 setCellularEntry:v34];

  v35 = -0.5;
  if (a2 < 0.5)
  {
    v35 = 0.5;
  }

  v36 = v35 + v16;
  *&v36 = v36;
  v37 = [(objc_class *)a1 _sampleCellularEntryWithSeed:*MEMORY[0x277D6BE38] key:v8 entryKeys:v9 enabledEntryKeys:v36];
  [v10 setSecondaryCellularEntry:v37];

  v38 = [MEMORY[0x277D6BB18] entryWithType:v16 > 0.9 status:llroundf(a2 * 4.0) lowDataMode:a2 < 0.2 rawValue:llroundf(a2 * 1000.0) displayValue:llroundf(a2 * 3.0) displayRawValue:v16 > 0.9];
  v39 = [MEMORY[0x277D6BB18] entryWithKey:*MEMORY[0x277D6BE98] updatedKeys:v8 enabledKeys:v9 populatedEntry:v38];

  [v10 setWifiEntry:v39];
  v40 = 0x277D6B000uLL;
  v41 = MEMORY[0x277D6BA60];
  v42 = llroundf(a2 * 100.0);
  v43 = llroundf(a2 + a2);
  v119 = v42;
  if (a2 <= 0.5)
  {
    v48 = [MEMORY[0x277D6BA60] entryWithCapacity:0.6 state:? saverMode:? prominentlyShowsDetailString:? detailString:?];
  }

  else
  {
    v44 = v43;
    v45 = v42;
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%%", 0.6, v42];
    v47 = v45;
    v43 = v44;
    v40 = 0x277D6B000;
    v48 = [v41 entryWithCapacity:v47 state:v43 saverMode:v116 prominentlyShowsDetailString:v16 > 0.6 detailString:v46];
  }

  v49 = [*(v40 + 2656) entryWithKey:*MEMORY[0x277D6BE00] updatedKeys:v8 enabledKeys:v9 populatedEntry:v48];

  [v10 setMainBatteryEntry:v49];
  v50 = *(v40 + 2656);
  v117 = v12;
  if (v16 <= 0.7)
  {
    [v50 disabledEntry];
  }

  else
  {
    [v50 entryWithCapacity:v119 state:v16 > 0.9 saverMode:0 prominentlyShowsDetailString:0 detailString:0];
  }
  v51 = ;
  v52 = [MEMORY[0x277D6BA68] entryWithState:v43 batteryEntry:v51];
  v53 = [MEMORY[0x277D6BA68] entryWithKey:*MEMORY[0x277D6BD80] updatedKeys:v8 enabledKeys:v9 populatedEntry:v52];

  [v10 setBluetoothEntry:v53];
  v54 = llroundf(a2 * 5.0);
  if (a2 <= 0.5)
  {
    v55 = 2;
  }

  else
  {
    v55 = 3;
  }

  v56 = [MEMORY[0x277D6BB00] entryWithColor:v54 isSunlightMode:a2 > 0.5];
  v57 = [MEMORY[0x277D6BB00] entryWithKey:*MEMORY[0x277D6BE68] updatedKeys:v8 enabledKeys:v9 populatedEntry:v56];

  [v10 setThermalEntry:v57];
  if (a2 >= 0.25 && a2 <= 0.75)
  {
    v59 = a2 > 0.5;
  }

  else
  {
    v59 = v55;
  }

  v60 = [MEMORY[0x277D6BA50] entryWithType:v59 displayID:0];
  v61 = [MEMORY[0x277D6BA50] entryWithKey:*MEMORY[0x277D6BD38] updatedKeys:v8 enabledKeys:v9 populatedEntry:v60];

  [v10 setActivityEntry:v61];
  if (a2 <= 0.5)
  {
    [MEMORY[0x277D6BAF8] disabledEntry];
  }

  else
  {
    [MEMORY[0x277D6BAF8] entryWithConnectionCount:v54];
  }
  v62 = ;
  v63 = [MEMORY[0x277D6BAF8] entryWithKey:*MEMORY[0x277D6BE60] updatedKeys:v8 enabledKeys:v9 populatedEntry:v62];

  [v10 setTetheringEntry:v63];
  v64 = [MEMORY[0x277D6BAC0] entryWithType:a2 > 0.5];
  v65 = [MEMORY[0x277D6BAC0] entryWithKey:*MEMORY[0x277D6BDF0] updatedKeys:v8 enabledKeys:v9 populatedEntry:v64];

  [v10 setLocationEntry:v65];
  v66 = [MEMORY[0x277D6BAC8] entryWithUnlockFailureCount:llround(v16)];
  v67 = [MEMORY[0x277D6BAC8] entryWithKey:*MEMORY[0x277D6BDF8] updatedKeys:v8 enabledKeys:v9 populatedEntry:v66];

  [v10 setLockEntry:v67];
  v68 = [MEMORY[0x277D6BB08] entryWithType:v43];
  v69 = [MEMORY[0x277D6BB08] entryWithKey:*MEMORY[0x277D6BE80] updatedKeys:v8 enabledKeys:v9 populatedEntry:v68];

  [v10 setVoiceControlEntry:v69];
  if ((a2 * 4.0))
  {
    v72 = vcvts_n_s32_f32(a2, 3uLL);
    v73 = (v72 & 1) == 0;
    if (v72)
    {
      v74 = @"lanyardcard.fill";
    }

    else
    {
      v74 = @"car.fill";
    }

    if (v73)
    {
      v75 = @"Car";
    }

    else
    {
      v75 = @"Work";
    }

    v71 = v74;
    v70 = v75;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v76 = [MEMORY[0x277D6BAE0] entryWithFocusName:v70 imageNamed:v71 BOOLValue:a2 > 0.5];
  v77 = [MEMORY[0x277D6BAE0] entryWithKey:*MEMORY[0x277D6BE10] updatedKeys:v8 enabledKeys:v9 populatedEntry:v76];

  [v10 setQuietModeEntry:v77];
  v78 = [MEMORY[0x277D6BA70] entryWithBoolValue:a2 < 0.5];
  v79 = [MEMORY[0x277D6BA70] entryWithKey:*MEMORY[0x277D6BDB8] updatedKeys:v8 enabledKeys:v9 populatedEntry:v78];

  [v10 setElectronicTollCollectionEntry:v79];
  v80 = [MEMORY[0x277D6BA70] entryWithBoolValue:a2 > 0.5];
  v81 = [MEMORY[0x277D6BA70] entryWithKey:*MEMORY[0x277D6BE18] updatedKeys:v8 enabledKeys:v9 populatedEntry:v80];

  [v10 setRadarEntry:v81];
  v82 = [MEMORY[0x277D6BA70] entryWithBoolValue:a2 > 0.5];
  v83 = [MEMORY[0x277D6BA70] entryWithKey:*MEMORY[0x277D6BD60] updatedKeys:v8 enabledKeys:v9 populatedEntry:v82];

  [v10 setAnnounceNotificationsEntry:v83];
  v84 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BE28] updatedKeys:v8 enabledKeys:v9];
  [v10 setRotationLockEntry:v84];

  v85 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BD50] updatedKeys:v8 enabledKeys:v9];
  [v10 setAirplaneModeEntry:v85];

  v86 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BE58] updatedKeys:v8 enabledKeys:v9];
  [v10 setTtyEntry:v86];

  v87 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BD68] updatedKeys:v8 enabledKeys:v9];
  [v10 setAssistantEntry:v87];

  v88 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BE50] updatedKeys:v8 enabledKeys:v9];
  [v10 setStudentEntry:v88];

  v89 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BE78] updatedKeys:v8 enabledKeys:v9];
  [v10 setVpnEntry:v89];

  v90 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BDB0] updatedKeys:v8 enabledKeys:v9];
  [v10 setDisplayWarningEntry:v90];

  v91 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BD48] updatedKeys:v8 enabledKeys:v9];
  [v10 setAirPlayEntry:v91];

  v92 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BD88] updatedKeys:v8 enabledKeys:v9];
  [v10 setCarPlayEntry:v92];

  v93 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BD58] updatedKeys:v8 enabledKeys:v9];
  [v10 setAlarmEntry:v93];

  v94 = [MEMORY[0x277D6BAA0] entryWithKey:*MEMORY[0x277D6BE40] updatedKeys:v8 enabledKeys:v9];
  [v10 setSensorActivityEntry:v94];

  v95 = STUIBackgroundActivityIdentifiersForStyleOverrides(-1);
  v96 = vcvtas_u32_f32([v95 count] * a2);
  v97 = [v95 allObjects];
  v98 = [v97 objectAtIndexedSubscript:v96];

  if ([*MEMORY[0x277D6BC60] isEqualToString:v98])
  {
    v99 = @"Touch to return to Phone";
  }

  else if ([*MEMORY[0x277D6BC68] isEqualToString:v98])
  {
    v99 = @"Touch to return to FaceTime";
  }

  else if ([*MEMORY[0x277D6BC90] isEqualToString:v98] & 1) != 0 || (objc_msgSend(*MEMORY[0x277D6BC88], "isEqualToString:", v98))
  {
    v99 = @"Touch to return to Navigation";
  }

  else if ([*MEMORY[0x277D6BCA8] isEqualToString:v98])
  {
    v99 = @"Touch to return to Voice Memos";
  }

  else if ([*MEMORY[0x277D6BCC0] isEqualToString:v98])
  {
    v99 = @"Touch to stop screen recording";
  }

  else if ([*MEMORY[0x277D6BBE8] isEqualToString:v98])
  {
    v99 = 0;
  }

  else
  {
    v99 = @"Touch to return to activity";
  }

  v102 = MEMORY[0x277D6BA58];
  if (a2 <= 0.5)
  {
    v104 = &stru_287D04F38;
    v103 = CACurrentMediaTime();
  }

  else
  {
    v103 = 0.0;
    v104 = @"Long Named ";
  }

  v105 = [v102 entryWithBackgroundActivityIdentifier:v98 displayStartDate:v99 detailString:v103];
  v106 = [MEMORY[0x277D6BA58] entryWithKey:*MEMORY[0x277D6BD78] updatedKeys:v8 enabledKeys:v9 populatedEntry:v105];

  [v10 setBackgroundActivityEntry:v106];
  v107 = MEMORY[0x277D6BAF0];
  v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@App %ld", v104, v119];
  v109 = [v107 entryWithStringValue:v108];

  v110 = [MEMORY[0x277D6BAF0] entryWithKey:*MEMORY[0x277D6BD70] updatedKeys:v8 enabledKeys:v9 populatedEntry:v109];

  [v10 setBackNavigationEntry:v110];
  v111 = MEMORY[0x277D6BAF0];
  v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"Safari %ld", v119];
  v113 = [v111 entryWithStringValue:v112];

  v114 = [MEMORY[0x277D6BAF0] entryWithKey:*MEMORY[0x277D6BDE0] updatedKeys:v8 enabledKeys:v9 populatedEntry:v113];

  [v10 setForwardNavigationEntry:v114];

  return v10;
}

- (id)subDataWithSupportedLegacyEntries
{
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D6BE70], *MEMORY[0x277D6BE48], *MEMORY[0x277D6BDA0], *MEMORY[0x277D6BE08], *MEMORY[0x277D6BE00], *MEMORY[0x277D6BD80], *MEMORY[0x277D6BE68], *MEMORY[0x277D6BD38], *MEMORY[0x277D6BE60], *MEMORY[0x277D6BDF8], *MEMORY[0x277D6BE10], *MEMORY[0x277D6BDB8], *MEMORY[0x277D6BE18], *MEMORY[0x277D6BE28], *MEMORY[0x277D6BDF0], *MEMORY[0x277D6BD50], *MEMORY[0x277D6BE58], *MEMORY[0x277D6BD68], *MEMORY[0x277D6BE50], *MEMORY[0x277D6BE78], *MEMORY[0x277D6BE80], *MEMORY[0x277D6BD48], *MEMORY[0x277D6BD88], *MEMORY[0x277D6BD58], *MEMORY[0x277D6BD60], 0}];
  v3 = [a1 dataByApplyingUpdate:a1 keys:v2];
  v4 = [v3 lockEntry];
  v5 = [v4 isEnabled];

  if (v5)
  {
    v6 = [MEMORY[0x277D6BAC8] entryWithUnlockFailureCount:0];
    [v3 setLockEntry:v6];
  }

  v7 = [v3 bluetoothEntry];
  v8 = [v7 batteryEntry];
  v9 = [v8 isEnabled];

  if (v9)
  {
    v25 = MEMORY[0x277D6BA60];
    v27 = [v3 bluetoothEntry];
    v26 = [v27 batteryEntry];
    v24 = [v26 capacity];
    v10 = [v3 bluetoothEntry];
    v11 = [v10 batteryEntry];
    v12 = [v11 saverModeActive];
    v13 = [v3 bluetoothEntry];
    v14 = [v13 batteryEntry];
    v15 = [v14 prominentlyShowsDetailString];
    [v3 bluetoothEntry];
    v16 = v28 = v2;
    v17 = [v16 batteryEntry];
    v18 = [v17 detailString];
    v19 = [v25 entryWithCapacity:v24 state:0 saverMode:v12 prominentlyShowsDetailString:v15 detailString:v18];

    v20 = MEMORY[0x277D6BA68];
    v21 = [v3 bluetoothEntry];
    v22 = [v20 entryWithState:objc_msgSend(v21 batteryEntry:{"state"), v19}];
    [v3 setBluetoothEntry:v22];

    v2 = v28;
  }

  return v3;
}

- (uint64_t)legacyData
{
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = malloc_type_calloc(1uLL, 0xF28uLL, 0x100004080157F5AuLL);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__STMutableStatusBarData_Testing__legacyData__block_invoke;
  aBlock[3] = &unk_279D38218;
  aBlock[4] = &v143;
  v2 = _Block_copy(aBlock);
  v3 = [a1 shortTimeEntry];
  v4 = v2[2](v2, 0, v3);

  if (v4)
  {
    v5 = v144[3];
    v6 = [a1 timeEntry];
    v7 = [v6 stringValue];
    strncpy((v5 + 46), [v7 UTF8String], 0x40uLL);

    v8 = v144[3];
    v9 = [a1 shortTimeEntry];
    v10 = [v9 stringValue];
    strncpy((v8 + 110), [v10 UTF8String], 0x40uLL);
  }

  v11 = [a1 dateEntry];
  v12 = v2[2](v2, 1, v11);

  if (v12)
  {
    v13 = v144[3];
    v14 = [a1 dateEntry];
    v15 = [v14 stringValue];
    strncpy((v13 + 174), [v15 UTF8String], 0x100uLL);
  }

  v16 = [a1 personNameEntry];
  v17 = v2[2](v2, 8, v16);

  if (v17)
  {
    v18 = v144[3];
    v19 = [a1 personNameEntry];
    v20 = [v19 stringValue];
    strncpy((v18 + 3049), [v20 UTF8String], 0x64uLL);
  }

  v21 = [a1 cellularEntry];
  v22 = v21;
  if (!v21 || ![v21 isEnabled])
  {
    v26 = 0;
    goto LABEL_43;
  }

  *(v144[3] + 4) = 1;
  v23 = [v22 status];
  if (v23 > 2)
  {
    switch(v23)
    {
      case 3:
        v24 = v144[3];
        v25 = 5;
        goto LABEL_22;
      case 4:
        v24 = v144[3];
        v25 = 6;
        goto LABEL_22;
      case 5:
        *(v144[3] + 2072) = 0;
        break;
    }
  }

  else
  {
    if (!v23)
    {
      *(v144[3] + 4) = 0;
      goto LABEL_23;
    }

    if (v23 == 1 || v23 == 2)
    {
      v24 = v144[3];
      v25 = 1;
LABEL_22:
      *(v24 + 2072) = v25;
    }
  }

LABEL_23:
  if ([v22 isBootstrapCellular])
  {
    v27 = [v22 status];
    if (v27 == 2)
    {
      v28 = 8;
      goto LABEL_28;
    }

    if (v27 == 5)
    {
      v28 = 7;
LABEL_28:
      *(v144[3] + 2072) = v28;
    }
  }

  v29 = [v22 type] - 1;
  v26 = v29 < 0xF;
  if (v29 <= 0xE)
  {
    *(v144[3] + 2096) = dword_26C5815D0[v29];
  }

  v30 = [v22 string];

  if (v30)
  {
    *(v144[3] + 6) = 1;
    v31 = v144[3];
    v32 = [v22 string];
    strncpy((v31 + 448), [v32 UTF8String], 0x64uLL);

    v33 = [v22 crossfadeString];

    if (v33)
    {
      v34 = v144[3];
      v35 = [v22 crossfadeString];
      strncpy((v34 + 648), [v35 UTF8String], 0x64uLL);
    }

    v36 = [v22 badgeString];

    if (v36)
    {
      v37 = v144[3];
      v38 = [v22 badgeString];
      strncpy((v37 + 3161), [v38 UTF8String], 0x64uLL);
    }
  }

  v39 = [v22 rawValue];
  *(v144[3] + 432) = v39;
  v40 = [v22 displayValue];
  *(v144[3] + 440) = v40;
  if ([v22 displayRawValue])
  {
    v41 = 2;
  }

  else
  {
    v41 = 0;
  }

  *(v144[3] + 2529) = *(v144[3] + 2529) & 0xFD | v41;
  v42 = [v22 showsSOSWhenDisabled];
  *(v144[3] + 3160) = *(v144[3] + 3160) & 0xFE | v42;
  if ([v22 sosAvailable])
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  *(v144[3] + 3160) = *(v144[3] + 3160) & 0xFD | v43;
  v44 = [v22 callForwardingEnabled];
  *(v144[3] + 30) = v44;
LABEL_43:
  v45 = [a1 wifiEntry];
  v46 = v45;
  if (!v45 || ![v45 isEnabled])
  {
    goto LABEL_62;
  }

  v47 = [v46 status];
  switch(v47)
  {
    case 3:
      v48 = v144[3];
      v49 = *(v48 + 3149) | 0x10;
      goto LABEL_51;
    case 4:
      v48 = v144[3];
      v49 = *(v48 + 3149) | 8;
LABEL_51:
      *(v48 + 3149) = v49;
      goto LABEL_52;
    case 5:
LABEL_52:
      v26 = 1;
      break;
  }

  v50 = [v46 type];
  if (!v50)
  {
    v51 = 5;
    goto LABEL_57;
  }

  if (v50 == 1)
  {
    v51 = 6;
LABEL_57:
    *(v144[3] + 2096) = v51;
  }

  v52 = [v46 rawValue];
  *(v144[3] + 2084) = v52;
  v53 = [v46 displayValue];
  *(v144[3] + 2088) = v53;
  if ([v46 displayRawValue])
  {
    v54 = 4;
  }

  else
  {
    v54 = 0;
  }

  *(v144[3] + 2529) = *(v144[3] + 2529) & 0xFB | v54;
LABEL_62:
  *(v144[3] + 9) = v26;
  v55 = [a1 mainBatteryEntry];
  v56 = v2[2](v2, 12, v55);

  if (v56)
  {
    v57 = [a1 mainBatteryEntry];
    v58 = [v57 capacity];
    *(v144[3] + 2104) = v58;

    v59 = [a1 mainBatteryEntry];
    v60 = [v59 state];
    *(v144[3] + 2108) = v60;

    v61 = [a1 mainBatteryEntry];
    v62 = [v61 saverModeActive];
    *(v144[3] + 2536) = *(v144[3] + 2536) & 0xFE | v62;

    v63 = [a1 mainBatteryEntry];
    v64 = [v63 detailString];

    if (v64)
    {
      v65 = v144[3];
      v66 = [a1 mainBatteryEntry];
      v67 = [v66 detailString];
      strncpy((v65 + 2112), [v67 UTF8String], 0x96uLL);
    }
  }

  v68 = [a1 bluetoothEntry];
  v69 = v2[2](v2, 16, v68);

  if (v69)
  {
    v70 = [a1 bluetoothEntry];
    v71 = [v70 state];

    if (v71 == 2)
    {
      v72 = v144;
      *(v144[3] + 2529) |= 1u;
      *(v72[3] + 42) = 1;
    }

    else if (v71 == 1)
    {
      *(v144[3] + 2529) |= 1u;
    }

    v73 = [a1 bluetoothEntry];
    v74 = [v73 batteryEntry];

    if (v74)
    {
      v75 = [v74 isEnabled];
      *(v144[3] + 15) = v75;
      v76 = [v74 capacity];
      *(v144[3] + 2264) = v76;
    }
  }

  v77 = [a1 thermalEntry];
  v78 = v2[2](v2, 33, v77);

  if (v78)
  {
    v79 = [a1 thermalEntry];
    v80 = [v79 color];

    if (v80 <= 5)
    {
      *(v144[3] + 2268) = v80 + 1;
    }

    v81 = [a1 thermalEntry];
    v82 = [v81 sunlightMode];
    *(v144[3] + 2272) = *(v144[3] + 2272) & 0xFE | v82;
  }

  v83 = [a1 activityEntry];
  v84 = v2[2](v2, 32, v83);

  if (v84)
  {
    v85 = [a1 activityEntry];
    v86 = [v85 type];

    if ((v86 & 2) != 0)
    {
      *(v144[3] + 2272) |= 2u;
    }

    if (v86)
    {
      *(v144[3] + 2272) |= 4u;
    }

    v87 = [a1 activityEntry];
    v88 = [v87 displayId];

    if (v88)
    {
      v89 = v144[3];
      v90 = [a1 activityEntry];
      v91 = [v90 displayId];
      strncpy((v89 + 2273), [v91 UTF8String], 0x100uLL);
    }
  }

  v92 = [a1 tetheringEntry];
  if ([v92 isEnabled])
  {
    v93 = [a1 tetheringEntry];
    v94 = [v93 connectionCount];
    *(v144[3] + 2532) = v94;
  }

  else
  {
    *(v144[3] + 2532) = 0;
  }

  v95 = [a1 locationEntry];
  v96 = v2[2](v2, 21, v95);

  if (v96)
  {
    v97 = [a1 locationEntry];
    v98 = [v97 type];
    *(v144[3] + 2529) = *(v144[3] + 2529) & 0xE7 | (8 * (v98 & 3));
  }

  v99 = [a1 quietModeEntry];
  v100 = v2[2](v2, 2, v99);

  if (v100)
  {
    v101 = [a1 quietModeEntry];
    if ([v101 BOOLValue])
    {
      v102 = 0;
    }

    else
    {
      v102 = 0x80;
    }

    *(v144[3] + 2529) = v102 & 0x80 | *(v144[3] + 2529) & 0x7F;
  }

  v103 = [a1 electronicTollCollectionEntry];
  v104 = v2[2](v2, 35, v103);

  if (v104)
  {
    v105 = [a1 electronicTollCollectionEntry];
    v106 = [v105 BOOLValue];
    *(v144[3] + 3149) = *(v144[3] + 3149) & 0xFE | v106;
  }

  v107 = [a1 radarEntry];
  v108 = v2[2](v2, 34, v107);

  if (v108)
  {
    v109 = [a1 radarEntry];
    if ([v109 BOOLValue])
    {
      v110 = 2;
    }

    else
    {
      v110 = 0;
    }

    *(v144[3] + 3149) = *(v144[3] + 3149) & 0xFD | v110;
  }

  v111 = [a1 lockEntry];
  v2[2](v2, 39, v111);

  v112 = [a1 rotationLockEntry];
  v2[2](v2, 22, v112);

  v113 = [a1 airplaneModeEntry];
  v2[2](v2, 3, v113);

  v114 = [a1 ttyEntry];
  v2[2](v2, 17, v114);

  v115 = [a1 nikeEntry];
  v2[2](v2, 19, v115);

  v116 = [a1 assistantEntry];
  v2[2](v2, 25, v116);

  v117 = [a1 studentEntry];
  v2[2](v2, 27, v117);

  v118 = [a1 vpnEntry];
  v2[2](v2, 29, v118);

  v119 = [a1 liquidDetectionEntry];
  v2[2](v2, 40, v119);

  v120 = [a1 displayWarningEntry];
  v2[2](v2, 44, v120);

  v121 = [a1 voiceControlEntry];
  v2[2](v2, 41, v121);

  v122 = [a1 airPlayEntry];
  v2[2](v2, 24, v122);

  v123 = [a1 carPlayEntry];
  v2[2](v2, 26, v123);

  v124 = [a1 alarmEntry];
  v2[2](v2, 18, v124);

  v125 = [a1 satelliteEntry];
  v2[2](v2, 45, v125);

  v126 = [a1 sensorActivityEntry];
  v2[2](v2, 28, v126);

  v127 = [a1 announceNotificationsEntry];
  v2[2](v2, 38, v127);

  v128 = [a1 backNavigationEntry];
  if ([v128 isEnabled])
  {
    v129 = [a1 backNavigationEntry];
    v130 = [v129 stringValue];
    v131 = [v130 length];

    if (!v131)
    {
      goto LABEL_105;
    }

    v132 = v144[3];
    v128 = [a1 backNavigationEntry];
    v133 = [v128 stringValue];
    strncpy((v132 + 2537), [v133 UTF8String], 0x100uLL);
  }

LABEL_105:
  v134 = [a1 forwardNavigationEntry];
  if (![v134 isEnabled])
  {
LABEL_108:

    goto LABEL_109;
  }

  v135 = [a1 forwardNavigationEntry];
  v136 = [v135 stringValue];
  v137 = [v136 length];

  if (v137)
  {
    v138 = v144[3];
    v134 = [a1 forwardNavigationEntry];
    v139 = [v134 stringValue];
    strncpy((v138 + 2793), [v139 UTF8String], 0x100uLL);

    goto LABEL_108;
  }

LABEL_109:
  v140 = v144[3];

  _Block_object_dispose(&v143, 8);
  return v140;
}

@end
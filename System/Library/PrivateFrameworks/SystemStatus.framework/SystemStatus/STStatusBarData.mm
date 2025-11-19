@interface STStatusBarData
+ (NSDateFormatter)dateFormatter;
+ (NSDateFormatter)shortTimeFormatter;
+ (NSDateFormatter)timeFormatter;
+ (NSSet)entryKeys;
+ (STStatusBarData)staticDisplayData;
+ (void)dateFormatterForDate:(id *)a3 time:(id *)a4 shortTime:(id *)a5;
- (BOOL)dateFromEntriesIncludesDate;
- (BOOL)dateFromEntriesIncludesTime;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSDate)dateFromEntries;
- (NSSet)existingEntryKeys;
- (STStatusBarData)initWithCoder:(id)a3;
- (STStatusBarData)initWithDate:(id)a3;
- (STStatusBarData)initWithEntry:(id)a3 forKey:(id)a4;
- (STStatusBarData)initWithKeysAndEntries:(id)a3;
- (STStatusBarDataPersonNameEntry)avatarEntry;
- (id)dataByApplyingOverlay:(id)a3;
- (id)dataByApplyingUpdate:(id)a3 keys:(id)a4;
- (id)dataByRemovingEntriesForKeys:(id)a3;
- (id)dataByReplacingEntry:(id)a3 forKey:(id)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)entryForKey:(id)a3;
- (id)mutableCopy;
- (id)succinctDescription;
- (id)updateFromData:(id)a3;
- (unint64_t)hash;
- (void)_internal_setValue:(id)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation STStatusBarData

- (id)mutableCopy
{
  v3 = objc_alloc_init(STMutableStatusBarData);
  _copyValuesFromDataToData(&self->super.isa, &v3->super.super.isa);
  return v3;
}

+ (NSSet)entryKeys
{
  if (qword_1ED7F5C68 != -1)
  {
    dispatch_once(&qword_1ED7F5C68, &__block_literal_global_872);
  }

  v3 = qword_1ED7F5C60;

  return v3;
}

- (NSSet)existingEntryKeys
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [objc_opt_class() entryKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(STStatusBarData *)self valueForKey:v9];
        if (v10)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEmpty
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [objc_opt_class() entryKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(STStatusBarData *)self valueForKey:*(*(&v12 + 1) + 8 * i)];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)dateFormatterForDate:(id *)a3 time:(id *)a4 shortTime:(id *)a5
{
  if (_MergedGlobals_9 == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&_MergedGlobals_9, &__block_literal_global_10);
  if (a3)
  {
LABEL_3:
    *a3 = qword_1ED7F5CE8;
  }

LABEL_4:
  if (a4)
  {
    *a4 = qword_1ED7F5CF0;
  }

  if (a5)
  {
    *a5 = qword_1ED7F5CF8;
  }
}

void __63__STStatusBarData_NSDate__dateFormatterForDate_time_shortTime___block_invoke()
{
  v0 = MEMORY[0x1E696AB78];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v0 dateFormatFromTemplate:@"EEEMMMd" options:0 locale:v1];
  v3 = v2;
  v4 = @"EEE MMM d";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v7 = [(__CFString *)v5 rangeOfCharacterFromSet:v6];
  v9 = v8;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v5;
  }

  else
  {
    do
    {
      v30 = [(__CFString *)v5 stringByReplacingCharactersInRange:v7 withString:v9, &stru_1F5665198];

      v10 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      v7 = [(__CFString *)v30 rangeOfCharacterFromSet:v10];
      v9 = v11;

      v5 = v30;
    }

    while (v7 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v13 = qword_1ED7F5CE8;
  qword_1ED7F5CE8 = v12;

  v14 = qword_1ED7F5CE8;
  v15 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v14 setTimeZone:v15];

  v16 = qword_1ED7F5CE8;
  v17 = [MEMORY[0x1E695DF58] currentLocale];
  [v16 setLocale:v17];

  [qword_1ED7F5CE8 setDateFormat:v30];
  v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v19 = qword_1ED7F5CF0;
  qword_1ED7F5CF0 = v18;

  v20 = qword_1ED7F5CF0;
  v21 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v20 setTimeZone:v21];

  v22 = qword_1ED7F5CF0;
  v23 = [MEMORY[0x1E695DF58] currentLocale];
  [v22 setLocale:v23];

  [qword_1ED7F5CF0 setDateStyle:0];
  [qword_1ED7F5CF0 setTimeStyle:1];
  v24 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v25 = qword_1ED7F5CF8;
  qword_1ED7F5CF8 = v24;

  v26 = qword_1ED7F5CF8;
  v27 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v26 setTimeZone:v27];

  v28 = qword_1ED7F5CF8;
  v29 = [MEMORY[0x1E695DF58] currentLocale];
  [v28 setLocale:v29];

  [qword_1ED7F5CF8 setDateStyle:0];
  [qword_1ED7F5CF8 setTimeStyle:1];
  [qword_1ED7F5CF8 setAMSymbol:&stru_1F5665198];
  [qword_1ED7F5CF8 setPMSymbol:&stru_1F5665198];
}

- (STStatusBarData)initWithDate:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [STStatusBarDataDateTimeEntry entryForDateWithDateValue:v4];
  v6 = [STStatusBarDataDateTimeEntry entryForTimeWithDateValue:v4];
  v7 = [STStatusBarDataDateTimeEntry entryForShortTimeWithDateValue:v4];

  v12[0] = @"dateEntry";
  v12[1] = @"timeEntry";
  v13[0] = v5;
  v13[1] = v6;
  v12[2] = @"shortTimeEntry";
  v13[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = [(STStatusBarData *)self initWithKeysAndEntries:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (NSDate)dateFromEntries
{
  v3 = [(STStatusBarData *)self dateEntry];
  v4 = [(STStatusBarData *)self timeEntry];
  v5 = [(STStatusBarData *)self shortTimeEntry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
LABEL_7:
    v7 = [v6 dateValue];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    goto LABEL_7;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  [objc_opt_class() dateFormatterForDate:&v29 time:&v28 shortTime:&v27];
  v26 = v29;
  v25 = v28;
  v24 = v27;
  v9 = [v3 stringValue];
  v10 = [v4 stringValue];
  v11 = [v5 stringValue];
  v12 = [v9 length];
  v13 = [v10 length];
  v14 = [v11 length];
  v15 = v14;
  if (v12 || v13 || (v7 = 0, v14))
  {
    if (v12)
    {
      v12 = [v26 dateFromString:v9];
    }

    if (v13)
    {
      v16 = v25;
      v17 = v10;
    }

    else
    {
      if (!v15)
      {
        v7 = 0;
        goto LABEL_24;
      }

      v16 = v24;
      v17 = v11;
    }

    v18 = [v16 dateFromString:v17];
    v7 = v18;
    if (v12 && v18)
    {
      v23 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v23 startOfDayForDate:v12];
      v19 = v22 = v12;
      v20 = [v23 startOfDayForDate:v7];
      [v7 timeIntervalSinceDate:v20];
      v21 = [v19 dateByAddingTimeInterval:?];

      v12 = v22;
      goto LABEL_26;
    }

LABEL_24:
    if (!v12)
    {
LABEL_27:

      goto LABEL_28;
    }

    v21 = v12;
LABEL_26:

    v7 = v21;
    goto LABEL_27;
  }

LABEL_28:

LABEL_8:

  return v7;
}

- (BOOL)dateFromEntriesIncludesDate
{
  v2 = [(STStatusBarData *)self dateEntry];
  v3 = [v2 stringValue];

  LOBYTE(v2) = [v3 length] != 0;
  return v2;
}

- (BOOL)dateFromEntriesIncludesTime
{
  v3 = [(STStatusBarData *)self timeEntry];
  v4 = [v3 stringValue];

  v5 = [(STStatusBarData *)self shortTimeEntry];
  v6 = [v5 stringValue];

  v7 = [v4 length];
  LOBYTE(v7) = (v7 | [v6 length]) != 0;

  return v7;
}

+ (NSDateFormatter)timeFormatter
{
  v4 = 0;
  [a1 dateFormatterForDate:0 time:&v4 shortTime:0];
  v2 = v4;

  return v2;
}

+ (NSDateFormatter)shortTimeFormatter
{
  v4 = 0;
  [a1 dateFormatterForDate:0 time:0 shortTime:&v4];
  v2 = v4;

  return v2;
}

+ (NSDateFormatter)dateFormatter
{
  v4 = 0;
  [a1 dateFormatterForDate:&v4 time:0 shortTime:0];
  v2 = v4;

  return v2;
}

+ (STStatusBarData)staticDisplayData
{
  if (qword_1ED7F5C58 != -1)
  {
    dispatch_once(&qword_1ED7F5C58, &__block_literal_global_12);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __36__STStatusBarData_staticDisplayData__block_invoke()
{
  v12 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v12 setMonth:1];
  [v12 setDay:9];
  [v12 setYear:2007];
  [v12 setHour:9];
  [v12 setMinute:41];
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [v0 dateFromComponents:v12];

  v2 = [(STStatusBarData *)[STMutableStatusBarData alloc] initWithDate:v1];
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 0;
  BYTE2(v9) = 0;
  LOWORD(v9) = 0;
  v3 = [STStatusBarDataCellularEntry entryWithType:"entryWithType:stringValue:crossfadeStringValue:badgeStringValue:wifiCalling:callForwarding:showsSOSWhenDisabled:sosAvailable:isBootstrapCellular:status:lowDataMode:rawValue:displayValue:displayRawValue:" stringValue:5 crossfadeStringValue:@"Carrier" badgeStringValue:0 wifiCalling:0 callForwarding:0 showsSOSWhenDisabled:0 sosAvailable:v9 isBootstrapCellular:5 status:v10 lowDataMode:0 rawValue:4 displayValue:v11 displayRawValue:?];
  [(STMutableStatusBarData *)v2 setCellularEntry:v3];

  v4 = [STStatusBarDataWifiEntry entryWithType:0 status:5 lowDataMode:0 rawValue:0 displayValue:3 displayRawValue:0];
  [(STMutableStatusBarData *)v2 setWifiEntry:v4];

  v5 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F5678618 numberStyle:3];
  v6 = [STStatusBarDataBatteryEntry entryWithCapacity:100 state:0 saverMode:0 prominentlyShowsDetailString:0 detailString:v5];
  [(STMutableStatusBarData *)v2 setMainBatteryEntry:v6];

  v7 = [(STMutableStatusBarData *)v2 immutableCopy];
  v8 = _MergedGlobals_1;
  _MergedGlobals_1 = v7;
}

uint64_t __28__STStatusBarData_entryKeys__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"timeEntry", @"shortTimeEntry", @"dateEntry", @"personNameEntry", @"deviceNameEntry", @"cellularEntry", @"secondaryCellularEntry", @"wifiEntry", @"mainBatteryEntry", @"bluetoothEntry", @"externalCellularEntry", @"externalWifiEntry", @"externalBluetoothEntry", @"externalPrivacyEntry", @"thermalEntry", @"activityEntry", @"tetheringEntry", @"lockEntry", @"quietModeEntry", @"electronicTollCollectionEntry", @"rotationLockEntry", @"locationEntry", @"airplaneModeEntry", @"ttyEntry", @"assistantEntry", @"studentEntry", @"vpnEntry", @"liquidDetectionEntry", @"displayWarningEntry", @"voiceControlEntry", @"airPlayEntry", @"carPlayEntry", @"alarmEntry", @"satelliteEntry", @"sensorActivityEntry", @"radarEntry", @"announceNotificationsEntry", @"volumeEntry", @"backgroundActivityEntry", @"backNavigationEntry", @"forwardNavigationEntry", @"controlCenterEntry", @"ringerSilenceEntry", @"weatherEntry", @"additionalEntries", 0}];
  v1 = qword_1ED7F5C60;
  qword_1ED7F5C60 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E6B8] builder];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [objc_opt_class() entryKeys];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(STStatusBarData *)self valueForKey:*(*(&v14 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = [v3 appendObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 hash];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_opt_class() entryKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(STStatusBarData *)self valueForKey:v10];
        if (v11)
        {
          [v4 encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (STStatusBarData)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = STStatusBarData;
  v5 = [(STStatusBarData *)&v27 init];
  v6 = objc_alloc_init(STMutableStatusBarData);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [objc_opt_class() entryKeys];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = 0x1E85DD000uLL;
    v11 = @"satelliteEntry";
    v21 = v4;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = *(v10 + 2552);
        v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v13];
        if (v15)
        {
          v16 = v15;
          if ([(__CFString *)v11 isEqualToString:v13])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = v11;
              if ([v16 isEnabled])
              {
                [STStatusBarDataSatelliteEntry entryWithConnectionStatus:1];
              }

              else
              {
                +[(STStatusBarDataEntry *)STStatusBarDataSatelliteEntry];
              }
              v18 = ;

              v16 = v18;
              v11 = v17;
              v10 = 0x1E85DD000;
              v4 = v21;
            }
          }

          [(STMutableStatusBarData *)v6 setEntry:v16 forKey:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  _copyValuesFromDataToData(&v6->super.super.isa, &v5->super.isa);
  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if ((isKindOfClass ^ objc_opt_isKindOfClass()))
  {
    v6 = 0;
  }

  else
  {
    v7 = v4;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [objc_opt_class() entryKeys];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [(STStatusBarData *)self valueForKey:v13];
          v15 = [v7 valueForKey:v13];
          v16 = v15;
          if (v14 | v15)
          {
            v17 = !v14 || v15 == 0;
            if (v17 || (([v14 isEnabled] & 1) != 0 || objc_msgSend(v16, "isEnabled")) && (BSEqualObjects() & 1) == 0)
            {

              v6 = 0;
              goto LABEL_20;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_20:
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

- (STStatusBarData)initWithEntry:(id)a3 forKey:(id)a4
{
  v10.receiver = self;
  v10.super_class = STStatusBarData;
  v5 = a4;
  v6 = a3;
  v7 = [(STStatusBarData *)&v10 init];
  v8 = objc_alloc_init(STMutableStatusBarData);
  [(STMutableStatusBarData *)v8 setEntry:v6 forKey:v5, v10.receiver, v10.super_class];

  _copyValuesFromDataToData(&v8->super.super.isa, &v7->super.isa);
  return v7;
}

- (STStatusBarData)initWithKeysAndEntries:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = STStatusBarData;
  v5 = [(STStatusBarData *)&v20 init];
  v6 = objc_alloc_init(STMutableStatusBarData);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v16}];
        if (v13)
        {
          [(STMutableStatusBarData *)v6 setEntry:v13 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  _copyValuesFromDataToData(&v6->super.super.isa, &v5->super.isa);
  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)dataByApplyingOverlay:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && v4 != self)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(STStatusBarData *)v4 existingEntryKeys];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(STStatusBarData *)self valueForKey:v12];

          if (v13)
          {
            if (!v9)
            {
              v9 = [(STStatusBarData *)self mutableCopy];
            }

            v14 = [(STStatusBarData *)v5 valueForKey:v12];
            [v9 setEntry:v14 forKey:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);

      if (v9)
      {
        v15 = _STStatusBarDataMatchingMutabilityOfData(v9, self);

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v15 = self;
LABEL_18:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)dataByApplyingUpdate:(id)a3 keys:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(STMutableStatusBarData);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v6 valueForKey:{v14, v20}];
        if (!v15)
        {
          v15 = [(STStatusBarData *)self valueForKey:v14];
          if (!v15)
          {
            continue;
          }
        }

        v16 = v15;
        [(STMutableStatusBarData *)v8 setEntry:v15 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = _STStatusBarDataMatchingMutabilityOfData(v8, self);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)updateFromData:(id)a3
{
  v4 = a3;
  v5 = [(STStatusBarData *)self mutableCopy];
  [v5 makeUpdateFromData:v4];

  v6 = _STStatusBarDataMatchingMutabilityOfData(v5, self);

  return v6;
}

- (id)dataByRemovingEntriesForKeys:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STStatusBarData *)self mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setEntry:0 forKey:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = _STStatusBarDataMatchingMutabilityOfData(v5, self);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)dataByReplacingEntry:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STStatusBarData *)self mutableCopy];
  [v8 setEntry:v7 forKey:v6];

  v9 = _STStatusBarDataMatchingMutabilityOfData(v8, self);

  return v9;
}

- (id)succinctDescription
{
  v2 = [(STStatusBarData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

void __67__STStatusBarData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() entryKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [*(a1 + 32) valueForKey:v8];
        if (v9)
        {
          v10 = [*(a1 + 40) appendObject:v9 withName:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_internal_setValue:(id)a3 forKey:(id)a4
{
  v4.receiver = self;
  v4.super_class = STStatusBarData;
  [(STStatusBarData *)&v4 setValue:a3 forKey:a4];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v4.receiver = self;
  v4.super_class = STStatusBarData;
  [(STStatusBarData *)&v4 setValue:a3 forKey:a4];
}

- (id)entryForKey:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarData;
  v3 = [(STStatusBarData *)&v5 valueForKey:a3];

  return v3;
}

- (STStatusBarDataPersonNameEntry)avatarEntry
{
  personNameEntry = self->_personNameEntry;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_personNameEntry;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
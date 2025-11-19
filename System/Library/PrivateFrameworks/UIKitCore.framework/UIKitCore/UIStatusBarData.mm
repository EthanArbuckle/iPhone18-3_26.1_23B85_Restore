@interface UIStatusBarData
@end

@implementation UIStatusBarData

void __37___UIStatusBarData_staticDisplayData__block_invoke()
{
  v0 = objc_alloc_init(_UIStatusBarData);
  v1 = _MergedGlobals_1_25;
  _MergedGlobals_1_25 = v0;

  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v3 = [MEMORY[0x1E695DF00] date];
  v15 = [v2 nextDateAfterDate:v3 matchingHour:9 minute:41 second:0 options:512];

  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setAMSymbol:&stru_1EFB14550];
  [v4 setPMSymbol:&stru_1EFB14550];
  [v4 setDateStyle:0];
  [v4 setTimeStyle:1];
  v5 = [MEMORY[0x1E696AB78] localizedStringFromDate:v15 dateStyle:0 timeStyle:1];
  v6 = [_UIStatusBarDataStringEntry entryWithStringValue:v5];
  [_MergedGlobals_1_25 setTimeEntry:v6];

  v7 = [v4 stringForObjectValue:v15];
  v8 = [_UIStatusBarDataStringEntry entryWithStringValue:v7];
  [_MergedGlobals_1_25 setShortTimeEntry:v8];

  v9 = [MEMORY[0x1E696AB78] localizedStringFromDate:v15 dateStyle:0 timeStyle:1];
  v10 = [_UIStatusBarDataStringEntry entryWithStringValue:v9];
  [_MergedGlobals_1_25 setDateEntry:v10];

  v11 = objc_alloc_init(_UIStatusBarDataCellularEntry);
  [(_UIStatusBarDataNetworkEntry *)v11 setStatus:5];
  [(_UIStatusBarDataCellularEntry *)v11 setType:5];
  [(_UIStatusBarDataCellularEntry *)v11 setString:@"Carrier"];
  [(_UIStatusBarDataIntegerEntry *)v11 setDisplayValue:4];
  [_MergedGlobals_1_25 setCellularEntry:v11];
  v12 = objc_alloc_init(_UIStatusBarDataWifiEntry);
  [(_UIStatusBarDataNetworkEntry *)v12 setStatus:5];
  [(_UIStatusBarDataWifiEntry *)v12 setType:0];
  [(_UIStatusBarDataIntegerEntry *)v12 setDisplayValue:3];
  [_MergedGlobals_1_25 setWifiEntry:v12];
  v13 = objc_alloc_init(_UIStatusBarDataBatteryEntry);
  [(_UIStatusBarDataBatteryEntry *)v13 setCapacity:100];
  v14 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1EFE2ED98 numberStyle:3];
  [(_UIStatusBarDataBatteryEntry *)v13 setDetailString:v14];

  [(_UIStatusBarDataBatteryEntry *)v13 setState:0];
  [_MergedGlobals_1_25 setMainBatteryEntry:v13];
}

void __29___UIStatusBarData_entryKeys__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"timeEntry", @"shortTimeEntry", @"dateEntry", @"personNameEntry", @"deviceNameEntry", @"cellularEntry", @"secondaryCellularEntry", @"wifiEntry", @"mainBatteryEntry", @"bluetoothEntry", @"thermalEntry", @"activityEntry", @"tetheringEntry", @"lockEntry", @"quietModeEntry", @"electronicTollCollectionEntry", @"rotationLockEntry", @"locationEntry", @"airplaneModeEntry", @"ttyEntry", @"assistantEntry", @"studentEntry", @"vpnEntry", @"liquidDetectionEntry", @"displayWarningEntry", @"voiceControlEntry", @"airPlayEntry", @"carPlayEntry", @"alarmEntry", @"satelliteEntry", @"sensorActivityEntry", @"radarEntry", @"announceNotificationsEntry", @"volumeEntry", @"backgroundActivityEntry", @"backNavigationEntry", @"forwardNavigationEntry", 0}];
  v1 = qword_1ED499460;
  qword_1ED499460 = v0;
}

@end
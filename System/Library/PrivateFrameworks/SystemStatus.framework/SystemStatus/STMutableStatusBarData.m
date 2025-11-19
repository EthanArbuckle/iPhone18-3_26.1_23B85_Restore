@interface STMutableStatusBarData
- (id)copyWithZone:(_NSZone *)a3;
- (id)immutableCopy;
- (void)_applyUpdate:(id)a3 keys:(id)a4;
- (void)applyUpdate:(id)a3;
- (void)makeUpdateFromData:(id)a3;
- (void)setActivityEntry:(id)a3;
- (void)setAdditionalEntries:(id)a3;
- (void)setAirPlayEntry:(id)a3;
- (void)setAirplaneModeEntry:(id)a3;
- (void)setAlarmEntry:(id)a3;
- (void)setAnnounceNotificationsEntry:(id)a3;
- (void)setAssistantEntry:(id)a3;
- (void)setAvatarEntry:(id)a3;
- (void)setBackNavigationEntry:(id)a3;
- (void)setBackgroundActivityEntry:(id)a3;
- (void)setBluetoothEntry:(id)a3;
- (void)setCarPlayEntry:(id)a3;
- (void)setCellularEntry:(id)a3;
- (void)setControlCenterEntry:(id)a3;
- (void)setDateEntry:(id)a3;
- (void)setDeviceNameEntry:(id)a3;
- (void)setDisplayWarningEntry:(id)a3;
- (void)setElectronicTollCollectionEntry:(id)a3;
- (void)setEntry:(id)a3 forKey:(id)a4;
- (void)setExternalBluetoothEntry:(id)a3;
- (void)setExternalCellularEntry:(id)a3;
- (void)setExternalPrivacyEntry:(id)a3;
- (void)setExternalWifiEntry:(id)a3;
- (void)setForwardNavigationEntry:(id)a3;
- (void)setLiquidDetectionEntry:(id)a3;
- (void)setLocationEntry:(id)a3;
- (void)setLockEntry:(id)a3;
- (void)setMainBatteryEntry:(id)a3;
- (void)setNikeEntry:(id)a3;
- (void)setPersonNameEntry:(id)a3;
- (void)setQuietModeEntry:(id)a3;
- (void)setRadarEntry:(id)a3;
- (void)setRingerSilenceEntry:(id)a3;
- (void)setRotationLockEntry:(id)a3;
- (void)setSatelliteEntry:(id)a3;
- (void)setSecondaryCellularEntry:(id)a3;
- (void)setSensorActivityEntry:(id)a3;
- (void)setShortTimeEntry:(id)a3;
- (void)setStudentEntry:(id)a3;
- (void)setTetheringEntry:(id)a3;
- (void)setThermalEntry:(id)a3;
- (void)setTimeEntry:(id)a3;
- (void)setTtyEntry:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setVoiceControlEntry:(id)a3;
- (void)setVolumeEntry:(id)a3;
- (void)setVpnEntry:(id)a3;
- (void)setWeatherEntry:(id)a3;
- (void)setWifiEntry:(id)a3;
@end

@implementation STMutableStatusBarData

- (id)immutableCopy
{
  v3 = objc_alloc_init(STStatusBarData);
  _copyValuesFromDataToData(&self->super.super.isa, &v3->super.isa);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  _copyValuesFromDataToData(&self->super.super.isa, v4);
  return v4;
}

- (void)_applyUpdate:(id)a3 keys:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v6 valueForKey:v12];
        if (v13)
        {
          [(STMutableStatusBarData *)self setEntry:v13 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)applyUpdate:(id)a3
{
  v4 = a3;
  v5 = +[STStatusBarData entryKeys];
  [(STMutableStatusBarData *)self _applyUpdate:v4 keys:v5];
}

- (void)makeUpdateFromData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = +[STStatusBarData entryKeys];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v4 valueForKey:v10];
          v12 = [(STMutableStatusBarData *)self valueForKey:v10];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14 && [v12 isEqual:v11])
          {
            [(STMutableStatusBarData *)self setEntry:0 forKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setTimeEntry:(id)a3
{
  v5 = a3;
  timeEntry = self->super._timeEntry;
  p_timeEntry = &self->super._timeEntry;
  if (timeEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_timeEntry, a3);
    v5 = v8;
  }
}

- (void)setShortTimeEntry:(id)a3
{
  v5 = a3;
  shortTimeEntry = self->super._shortTimeEntry;
  p_shortTimeEntry = &self->super._shortTimeEntry;
  if (shortTimeEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_shortTimeEntry, a3);
    v5 = v8;
  }
}

- (void)setDateEntry:(id)a3
{
  v5 = a3;
  dateEntry = self->super._dateEntry;
  p_dateEntry = &self->super._dateEntry;
  if (dateEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_dateEntry, a3);
    v5 = v8;
  }
}

- (void)setPersonNameEntry:(id)a3
{
  v5 = a3;
  personNameEntry = self->super._personNameEntry;
  p_personNameEntry = &self->super._personNameEntry;
  if (personNameEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_personNameEntry, a3);
    v5 = v8;
  }
}

- (void)setDeviceNameEntry:(id)a3
{
  v5 = a3;
  deviceNameEntry = self->super._deviceNameEntry;
  p_deviceNameEntry = &self->super._deviceNameEntry;
  if (deviceNameEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_deviceNameEntry, a3);
    v5 = v8;
  }
}

- (void)setCellularEntry:(id)a3
{
  v5 = a3;
  cellularEntry = self->super._cellularEntry;
  p_cellularEntry = &self->super._cellularEntry;
  if (cellularEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_cellularEntry, a3);
    v5 = v8;
  }
}

- (void)setSecondaryCellularEntry:(id)a3
{
  v5 = a3;
  secondaryCellularEntry = self->super._secondaryCellularEntry;
  p_secondaryCellularEntry = &self->super._secondaryCellularEntry;
  if (secondaryCellularEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_secondaryCellularEntry, a3);
    v5 = v8;
  }
}

- (void)setWifiEntry:(id)a3
{
  v5 = a3;
  wifiEntry = self->super._wifiEntry;
  p_wifiEntry = &self->super._wifiEntry;
  if (wifiEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_wifiEntry, a3);
    v5 = v8;
  }
}

- (void)setMainBatteryEntry:(id)a3
{
  v5 = a3;
  mainBatteryEntry = self->super._mainBatteryEntry;
  p_mainBatteryEntry = &self->super._mainBatteryEntry;
  if (mainBatteryEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mainBatteryEntry, a3);
    v5 = v8;
  }
}

- (void)setBluetoothEntry:(id)a3
{
  v5 = a3;
  bluetoothEntry = self->super._bluetoothEntry;
  p_bluetoothEntry = &self->super._bluetoothEntry;
  if (bluetoothEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_bluetoothEntry, a3);
    v5 = v8;
  }
}

- (void)setExternalCellularEntry:(id)a3
{
  v5 = a3;
  externalCellularEntry = self->super._externalCellularEntry;
  p_externalCellularEntry = &self->super._externalCellularEntry;
  if (externalCellularEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_externalCellularEntry, a3);
    v5 = v8;
  }
}

- (void)setExternalWifiEntry:(id)a3
{
  v5 = a3;
  externalWifiEntry = self->super._externalWifiEntry;
  p_externalWifiEntry = &self->super._externalWifiEntry;
  if (externalWifiEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_externalWifiEntry, a3);
    v5 = v8;
  }
}

- (void)setExternalBluetoothEntry:(id)a3
{
  v5 = a3;
  externalBluetoothEntry = self->super._externalBluetoothEntry;
  p_externalBluetoothEntry = &self->super._externalBluetoothEntry;
  if (externalBluetoothEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_externalBluetoothEntry, a3);
    v5 = v8;
  }
}

- (void)setExternalPrivacyEntry:(id)a3
{
  v5 = a3;
  externalPrivacyEntry = self->super._externalPrivacyEntry;
  p_externalPrivacyEntry = &self->super._externalPrivacyEntry;
  if (externalPrivacyEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_externalPrivacyEntry, a3);
    v5 = v8;
  }
}

- (void)setThermalEntry:(id)a3
{
  v5 = a3;
  thermalEntry = self->super._thermalEntry;
  p_thermalEntry = &self->super._thermalEntry;
  if (thermalEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_thermalEntry, a3);
    v5 = v8;
  }
}

- (void)setActivityEntry:(id)a3
{
  v5 = a3;
  activityEntry = self->super._activityEntry;
  p_activityEntry = &self->super._activityEntry;
  if (activityEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_activityEntry, a3);
    v5 = v8;
  }
}

- (void)setTetheringEntry:(id)a3
{
  v5 = a3;
  tetheringEntry = self->super._tetheringEntry;
  p_tetheringEntry = &self->super._tetheringEntry;
  if (tetheringEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_tetheringEntry, a3);
    v5 = v8;
  }
}

- (void)setLocationEntry:(id)a3
{
  v5 = a3;
  locationEntry = self->super._locationEntry;
  p_locationEntry = &self->super._locationEntry;
  if (locationEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_locationEntry, a3);
    v5 = v8;
  }
}

- (void)setLockEntry:(id)a3
{
  v5 = a3;
  lockEntry = self->super._lockEntry;
  p_lockEntry = &self->super._lockEntry;
  if (lockEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_lockEntry, a3);
    v5 = v8;
  }
}

- (void)setQuietModeEntry:(id)a3
{
  v5 = a3;
  quietModeEntry = self->super._quietModeEntry;
  p_quietModeEntry = &self->super._quietModeEntry;
  if (quietModeEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_quietModeEntry, a3);
    v5 = v8;
  }
}

- (void)setElectronicTollCollectionEntry:(id)a3
{
  v5 = a3;
  electronicTollCollectionEntry = self->super._electronicTollCollectionEntry;
  p_electronicTollCollectionEntry = &self->super._electronicTollCollectionEntry;
  if (electronicTollCollectionEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_electronicTollCollectionEntry, a3);
    v5 = v8;
  }
}

- (void)setRadarEntry:(id)a3
{
  v5 = a3;
  radarEntry = self->super._radarEntry;
  p_radarEntry = &self->super._radarEntry;
  if (radarEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_radarEntry, a3);
    v5 = v8;
  }
}

- (void)setRotationLockEntry:(id)a3
{
  v5 = a3;
  rotationLockEntry = self->super._rotationLockEntry;
  p_rotationLockEntry = &self->super._rotationLockEntry;
  if (rotationLockEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_rotationLockEntry, a3);
    v5 = v8;
  }
}

- (void)setAirplaneModeEntry:(id)a3
{
  v5 = a3;
  airplaneModeEntry = self->super._airplaneModeEntry;
  p_airplaneModeEntry = &self->super._airplaneModeEntry;
  if (airplaneModeEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_airplaneModeEntry, a3);
    v5 = v8;
  }
}

- (void)setTtyEntry:(id)a3
{
  v5 = a3;
  ttyEntry = self->super._ttyEntry;
  p_ttyEntry = &self->super._ttyEntry;
  if (ttyEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_ttyEntry, a3);
    v5 = v8;
  }
}

- (void)setNikeEntry:(id)a3
{
  v5 = a3;
  nikeEntry = self->super._nikeEntry;
  p_nikeEntry = &self->super._nikeEntry;
  if (nikeEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_nikeEntry, a3);
    v5 = v8;
  }
}

- (void)setAssistantEntry:(id)a3
{
  v5 = a3;
  assistantEntry = self->super._assistantEntry;
  p_assistantEntry = &self->super._assistantEntry;
  if (assistantEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_assistantEntry, a3);
    v5 = v8;
  }
}

- (void)setStudentEntry:(id)a3
{
  v5 = a3;
  studentEntry = self->super._studentEntry;
  p_studentEntry = &self->super._studentEntry;
  if (studentEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_studentEntry, a3);
    v5 = v8;
  }
}

- (void)setVpnEntry:(id)a3
{
  v5 = a3;
  vpnEntry = self->super._vpnEntry;
  p_vpnEntry = &self->super._vpnEntry;
  if (vpnEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_vpnEntry, a3);
    v5 = v8;
  }
}

- (void)setLiquidDetectionEntry:(id)a3
{
  v5 = a3;
  liquidDetectionEntry = self->super._liquidDetectionEntry;
  p_liquidDetectionEntry = &self->super._liquidDetectionEntry;
  if (liquidDetectionEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_liquidDetectionEntry, a3);
    v5 = v8;
  }
}

- (void)setDisplayWarningEntry:(id)a3
{
  v5 = a3;
  displayWarningEntry = self->super._displayWarningEntry;
  p_displayWarningEntry = &self->super._displayWarningEntry;
  if (displayWarningEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_displayWarningEntry, a3);
    v5 = v8;
  }
}

- (void)setVoiceControlEntry:(id)a3
{
  v5 = a3;
  if (self->super._voiceControlEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._voiceControlEntry, a3);
    v5 = v6;
  }
}

- (void)setAirPlayEntry:(id)a3
{
  v5 = a3;
  if (self->super._airPlayEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._airPlayEntry, a3);
    v5 = v6;
  }
}

- (void)setCarPlayEntry:(id)a3
{
  v5 = a3;
  if (self->super._carPlayEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._carPlayEntry, a3);
    v5 = v6;
  }
}

- (void)setAlarmEntry:(id)a3
{
  v5 = a3;
  if (self->super._alarmEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._alarmEntry, a3);
    v5 = v6;
  }
}

- (void)setSatelliteEntry:(id)a3
{
  v5 = a3;
  if (self->super._satelliteEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._satelliteEntry, a3);
    v5 = v6;
  }
}

- (void)setSensorActivityEntry:(id)a3
{
  v5 = a3;
  if (self->super._sensorActivityEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._sensorActivityEntry, a3);
    v5 = v6;
  }
}

- (void)setAnnounceNotificationsEntry:(id)a3
{
  v5 = a3;
  if (self->super._announceNotificationsEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._announceNotificationsEntry, a3);
    v5 = v6;
  }
}

- (void)setVolumeEntry:(id)a3
{
  v5 = a3;
  if (self->super._volumeEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._volumeEntry, a3);
    v5 = v6;
  }
}

- (void)setBackgroundActivityEntry:(id)a3
{
  v5 = a3;
  if (self->super._backgroundActivityEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._backgroundActivityEntry, a3);
    v5 = v6;
  }
}

- (void)setBackNavigationEntry:(id)a3
{
  v5 = a3;
  if (self->super._backNavigationEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._backNavigationEntry, a3);
    v5 = v6;
  }
}

- (void)setForwardNavigationEntry:(id)a3
{
  v5 = a3;
  if (self->super._forwardNavigationEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._forwardNavigationEntry, a3);
    v5 = v6;
  }
}

- (void)setControlCenterEntry:(id)a3
{
  v5 = a3;
  if (self->super._controlCenterEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._controlCenterEntry, a3);
    v5 = v6;
  }
}

- (void)setRingerSilenceEntry:(id)a3
{
  v5 = a3;
  if (self->super._ringerSilenceEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._ringerSilenceEntry, a3);
    v5 = v6;
  }
}

- (void)setWeatherEntry:(id)a3
{
  v5 = a3;
  if (self->super._weatherEntry != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._weatherEntry, a3);
    v5 = v6;
  }
}

- (void)setAdditionalEntries:(id)a3
{
  v5 = a3;
  if (self->super._additionalEntries != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._additionalEntries, a3);
    v5 = v6;
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarData;
  [(STStatusBarData *)&v4 _internal_setValue:a3 forKey:a4];
}

- (void)setEntry:(id)a3 forKey:(id)a4
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarData;
  [(STStatusBarData *)&v4 _internal_setValue:a3 forKey:a4];
}

- (void)setAvatarEntry:(id)a3
{
  v5 = a3;
  personNameEntry = self->super._personNameEntry;
  p_personNameEntry = &self->super._personNameEntry;
  if (personNameEntry != v5)
  {
    v8 = v5;
    objc_storeStrong(p_personNameEntry, a3);
    v5 = v8;
  }
}

@end
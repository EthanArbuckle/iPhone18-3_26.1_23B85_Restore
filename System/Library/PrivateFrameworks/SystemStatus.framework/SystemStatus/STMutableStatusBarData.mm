@interface STMutableStatusBarData
- (id)copyWithZone:(_NSZone *)zone;
- (id)immutableCopy;
- (void)_applyUpdate:(id)update keys:(id)keys;
- (void)applyUpdate:(id)update;
- (void)makeUpdateFromData:(id)data;
- (void)setActivityEntry:(id)entry;
- (void)setAdditionalEntries:(id)entries;
- (void)setAirPlayEntry:(id)entry;
- (void)setAirplaneModeEntry:(id)entry;
- (void)setAlarmEntry:(id)entry;
- (void)setAnnounceNotificationsEntry:(id)entry;
- (void)setAssistantEntry:(id)entry;
- (void)setAvatarEntry:(id)entry;
- (void)setBackNavigationEntry:(id)entry;
- (void)setBackgroundActivityEntry:(id)entry;
- (void)setBluetoothEntry:(id)entry;
- (void)setCarPlayEntry:(id)entry;
- (void)setCellularEntry:(id)entry;
- (void)setControlCenterEntry:(id)entry;
- (void)setDateEntry:(id)entry;
- (void)setDeviceNameEntry:(id)entry;
- (void)setDisplayWarningEntry:(id)entry;
- (void)setElectronicTollCollectionEntry:(id)entry;
- (void)setEntry:(id)entry forKey:(id)key;
- (void)setExternalBluetoothEntry:(id)entry;
- (void)setExternalCellularEntry:(id)entry;
- (void)setExternalPrivacyEntry:(id)entry;
- (void)setExternalWifiEntry:(id)entry;
- (void)setForwardNavigationEntry:(id)entry;
- (void)setLiquidDetectionEntry:(id)entry;
- (void)setLocationEntry:(id)entry;
- (void)setLockEntry:(id)entry;
- (void)setMainBatteryEntry:(id)entry;
- (void)setNikeEntry:(id)entry;
- (void)setPersonNameEntry:(id)entry;
- (void)setQuietModeEntry:(id)entry;
- (void)setRadarEntry:(id)entry;
- (void)setRingerSilenceEntry:(id)entry;
- (void)setRotationLockEntry:(id)entry;
- (void)setSatelliteEntry:(id)entry;
- (void)setSecondaryCellularEntry:(id)entry;
- (void)setSensorActivityEntry:(id)entry;
- (void)setShortTimeEntry:(id)entry;
- (void)setStudentEntry:(id)entry;
- (void)setTetheringEntry:(id)entry;
- (void)setThermalEntry:(id)entry;
- (void)setTimeEntry:(id)entry;
- (void)setTtyEntry:(id)entry;
- (void)setValue:(id)value forKey:(id)key;
- (void)setVoiceControlEntry:(id)entry;
- (void)setVolumeEntry:(id)entry;
- (void)setVpnEntry:(id)entry;
- (void)setWeatherEntry:(id)entry;
- (void)setWifiEntry:(id)entry;
@end

@implementation STMutableStatusBarData

- (id)immutableCopy
{
  v3 = objc_alloc_init(STStatusBarData);
  _copyValuesFromDataToData(&self->super.super.isa, &v3->super.isa);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  _copyValuesFromDataToData(&self->super.super.isa, v4);
  return v4;
}

- (void)_applyUpdate:(id)update keys:(id)keys
{
  v20 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  keysCopy = keys;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [keysCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [updateCopy valueForKey:v12];
        if (v13)
        {
          [(STMutableStatusBarData *)self setEntry:v13 forKey:v12];
        }
      }

      v9 = [keysCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)applyUpdate:(id)update
{
  updateCopy = update;
  v5 = +[STStatusBarData entryKeys];
  [(STMutableStatusBarData *)self _applyUpdate:updateCopy keys:v5];
}

- (void)makeUpdateFromData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
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
          v11 = [dataCopy valueForKey:v10];
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

- (void)setTimeEntry:(id)entry
{
  entryCopy = entry;
  timeEntry = self->super._timeEntry;
  p_timeEntry = &self->super._timeEntry;
  if (timeEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_timeEntry, entry);
    entryCopy = v8;
  }
}

- (void)setShortTimeEntry:(id)entry
{
  entryCopy = entry;
  shortTimeEntry = self->super._shortTimeEntry;
  p_shortTimeEntry = &self->super._shortTimeEntry;
  if (shortTimeEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_shortTimeEntry, entry);
    entryCopy = v8;
  }
}

- (void)setDateEntry:(id)entry
{
  entryCopy = entry;
  dateEntry = self->super._dateEntry;
  p_dateEntry = &self->super._dateEntry;
  if (dateEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_dateEntry, entry);
    entryCopy = v8;
  }
}

- (void)setPersonNameEntry:(id)entry
{
  entryCopy = entry;
  personNameEntry = self->super._personNameEntry;
  p_personNameEntry = &self->super._personNameEntry;
  if (personNameEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_personNameEntry, entry);
    entryCopy = v8;
  }
}

- (void)setDeviceNameEntry:(id)entry
{
  entryCopy = entry;
  deviceNameEntry = self->super._deviceNameEntry;
  p_deviceNameEntry = &self->super._deviceNameEntry;
  if (deviceNameEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_deviceNameEntry, entry);
    entryCopy = v8;
  }
}

- (void)setCellularEntry:(id)entry
{
  entryCopy = entry;
  cellularEntry = self->super._cellularEntry;
  p_cellularEntry = &self->super._cellularEntry;
  if (cellularEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_cellularEntry, entry);
    entryCopy = v8;
  }
}

- (void)setSecondaryCellularEntry:(id)entry
{
  entryCopy = entry;
  secondaryCellularEntry = self->super._secondaryCellularEntry;
  p_secondaryCellularEntry = &self->super._secondaryCellularEntry;
  if (secondaryCellularEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_secondaryCellularEntry, entry);
    entryCopy = v8;
  }
}

- (void)setWifiEntry:(id)entry
{
  entryCopy = entry;
  wifiEntry = self->super._wifiEntry;
  p_wifiEntry = &self->super._wifiEntry;
  if (wifiEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_wifiEntry, entry);
    entryCopy = v8;
  }
}

- (void)setMainBatteryEntry:(id)entry
{
  entryCopy = entry;
  mainBatteryEntry = self->super._mainBatteryEntry;
  p_mainBatteryEntry = &self->super._mainBatteryEntry;
  if (mainBatteryEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_mainBatteryEntry, entry);
    entryCopy = v8;
  }
}

- (void)setBluetoothEntry:(id)entry
{
  entryCopy = entry;
  bluetoothEntry = self->super._bluetoothEntry;
  p_bluetoothEntry = &self->super._bluetoothEntry;
  if (bluetoothEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_bluetoothEntry, entry);
    entryCopy = v8;
  }
}

- (void)setExternalCellularEntry:(id)entry
{
  entryCopy = entry;
  externalCellularEntry = self->super._externalCellularEntry;
  p_externalCellularEntry = &self->super._externalCellularEntry;
  if (externalCellularEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_externalCellularEntry, entry);
    entryCopy = v8;
  }
}

- (void)setExternalWifiEntry:(id)entry
{
  entryCopy = entry;
  externalWifiEntry = self->super._externalWifiEntry;
  p_externalWifiEntry = &self->super._externalWifiEntry;
  if (externalWifiEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_externalWifiEntry, entry);
    entryCopy = v8;
  }
}

- (void)setExternalBluetoothEntry:(id)entry
{
  entryCopy = entry;
  externalBluetoothEntry = self->super._externalBluetoothEntry;
  p_externalBluetoothEntry = &self->super._externalBluetoothEntry;
  if (externalBluetoothEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_externalBluetoothEntry, entry);
    entryCopy = v8;
  }
}

- (void)setExternalPrivacyEntry:(id)entry
{
  entryCopy = entry;
  externalPrivacyEntry = self->super._externalPrivacyEntry;
  p_externalPrivacyEntry = &self->super._externalPrivacyEntry;
  if (externalPrivacyEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_externalPrivacyEntry, entry);
    entryCopy = v8;
  }
}

- (void)setThermalEntry:(id)entry
{
  entryCopy = entry;
  thermalEntry = self->super._thermalEntry;
  p_thermalEntry = &self->super._thermalEntry;
  if (thermalEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_thermalEntry, entry);
    entryCopy = v8;
  }
}

- (void)setActivityEntry:(id)entry
{
  entryCopy = entry;
  activityEntry = self->super._activityEntry;
  p_activityEntry = &self->super._activityEntry;
  if (activityEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_activityEntry, entry);
    entryCopy = v8;
  }
}

- (void)setTetheringEntry:(id)entry
{
  entryCopy = entry;
  tetheringEntry = self->super._tetheringEntry;
  p_tetheringEntry = &self->super._tetheringEntry;
  if (tetheringEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_tetheringEntry, entry);
    entryCopy = v8;
  }
}

- (void)setLocationEntry:(id)entry
{
  entryCopy = entry;
  locationEntry = self->super._locationEntry;
  p_locationEntry = &self->super._locationEntry;
  if (locationEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_locationEntry, entry);
    entryCopy = v8;
  }
}

- (void)setLockEntry:(id)entry
{
  entryCopy = entry;
  lockEntry = self->super._lockEntry;
  p_lockEntry = &self->super._lockEntry;
  if (lockEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_lockEntry, entry);
    entryCopy = v8;
  }
}

- (void)setQuietModeEntry:(id)entry
{
  entryCopy = entry;
  quietModeEntry = self->super._quietModeEntry;
  p_quietModeEntry = &self->super._quietModeEntry;
  if (quietModeEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_quietModeEntry, entry);
    entryCopy = v8;
  }
}

- (void)setElectronicTollCollectionEntry:(id)entry
{
  entryCopy = entry;
  electronicTollCollectionEntry = self->super._electronicTollCollectionEntry;
  p_electronicTollCollectionEntry = &self->super._electronicTollCollectionEntry;
  if (electronicTollCollectionEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_electronicTollCollectionEntry, entry);
    entryCopy = v8;
  }
}

- (void)setRadarEntry:(id)entry
{
  entryCopy = entry;
  radarEntry = self->super._radarEntry;
  p_radarEntry = &self->super._radarEntry;
  if (radarEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_radarEntry, entry);
    entryCopy = v8;
  }
}

- (void)setRotationLockEntry:(id)entry
{
  entryCopy = entry;
  rotationLockEntry = self->super._rotationLockEntry;
  p_rotationLockEntry = &self->super._rotationLockEntry;
  if (rotationLockEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_rotationLockEntry, entry);
    entryCopy = v8;
  }
}

- (void)setAirplaneModeEntry:(id)entry
{
  entryCopy = entry;
  airplaneModeEntry = self->super._airplaneModeEntry;
  p_airplaneModeEntry = &self->super._airplaneModeEntry;
  if (airplaneModeEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_airplaneModeEntry, entry);
    entryCopy = v8;
  }
}

- (void)setTtyEntry:(id)entry
{
  entryCopy = entry;
  ttyEntry = self->super._ttyEntry;
  p_ttyEntry = &self->super._ttyEntry;
  if (ttyEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_ttyEntry, entry);
    entryCopy = v8;
  }
}

- (void)setNikeEntry:(id)entry
{
  entryCopy = entry;
  nikeEntry = self->super._nikeEntry;
  p_nikeEntry = &self->super._nikeEntry;
  if (nikeEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_nikeEntry, entry);
    entryCopy = v8;
  }
}

- (void)setAssistantEntry:(id)entry
{
  entryCopy = entry;
  assistantEntry = self->super._assistantEntry;
  p_assistantEntry = &self->super._assistantEntry;
  if (assistantEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_assistantEntry, entry);
    entryCopy = v8;
  }
}

- (void)setStudentEntry:(id)entry
{
  entryCopy = entry;
  studentEntry = self->super._studentEntry;
  p_studentEntry = &self->super._studentEntry;
  if (studentEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_studentEntry, entry);
    entryCopy = v8;
  }
}

- (void)setVpnEntry:(id)entry
{
  entryCopy = entry;
  vpnEntry = self->super._vpnEntry;
  p_vpnEntry = &self->super._vpnEntry;
  if (vpnEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_vpnEntry, entry);
    entryCopy = v8;
  }
}

- (void)setLiquidDetectionEntry:(id)entry
{
  entryCopy = entry;
  liquidDetectionEntry = self->super._liquidDetectionEntry;
  p_liquidDetectionEntry = &self->super._liquidDetectionEntry;
  if (liquidDetectionEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_liquidDetectionEntry, entry);
    entryCopy = v8;
  }
}

- (void)setDisplayWarningEntry:(id)entry
{
  entryCopy = entry;
  displayWarningEntry = self->super._displayWarningEntry;
  p_displayWarningEntry = &self->super._displayWarningEntry;
  if (displayWarningEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_displayWarningEntry, entry);
    entryCopy = v8;
  }
}

- (void)setVoiceControlEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._voiceControlEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._voiceControlEntry, entry);
    entryCopy = v6;
  }
}

- (void)setAirPlayEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._airPlayEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._airPlayEntry, entry);
    entryCopy = v6;
  }
}

- (void)setCarPlayEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._carPlayEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._carPlayEntry, entry);
    entryCopy = v6;
  }
}

- (void)setAlarmEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._alarmEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._alarmEntry, entry);
    entryCopy = v6;
  }
}

- (void)setSatelliteEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._satelliteEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._satelliteEntry, entry);
    entryCopy = v6;
  }
}

- (void)setSensorActivityEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._sensorActivityEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._sensorActivityEntry, entry);
    entryCopy = v6;
  }
}

- (void)setAnnounceNotificationsEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._announceNotificationsEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._announceNotificationsEntry, entry);
    entryCopy = v6;
  }
}

- (void)setVolumeEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._volumeEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._volumeEntry, entry);
    entryCopy = v6;
  }
}

- (void)setBackgroundActivityEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._backgroundActivityEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._backgroundActivityEntry, entry);
    entryCopy = v6;
  }
}

- (void)setBackNavigationEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._backNavigationEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._backNavigationEntry, entry);
    entryCopy = v6;
  }
}

- (void)setForwardNavigationEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._forwardNavigationEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._forwardNavigationEntry, entry);
    entryCopy = v6;
  }
}

- (void)setControlCenterEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._controlCenterEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._controlCenterEntry, entry);
    entryCopy = v6;
  }
}

- (void)setRingerSilenceEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._ringerSilenceEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._ringerSilenceEntry, entry);
    entryCopy = v6;
  }
}

- (void)setWeatherEntry:(id)entry
{
  entryCopy = entry;
  if (self->super._weatherEntry != entryCopy)
  {
    v6 = entryCopy;
    objc_storeStrong(&self->super._weatherEntry, entry);
    entryCopy = v6;
  }
}

- (void)setAdditionalEntries:(id)entries
{
  entriesCopy = entries;
  if (self->super._additionalEntries != entriesCopy)
  {
    v6 = entriesCopy;
    objc_storeStrong(&self->super._additionalEntries, entries);
    entriesCopy = v6;
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarData;
  [(STStatusBarData *)&v4 _internal_setValue:value forKey:key];
}

- (void)setEntry:(id)entry forKey:(id)key
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarData;
  [(STStatusBarData *)&v4 _internal_setValue:entry forKey:key];
}

- (void)setAvatarEntry:(id)entry
{
  entryCopy = entry;
  personNameEntry = self->super._personNameEntry;
  p_personNameEntry = &self->super._personNameEntry;
  if (personNameEntry != entryCopy)
  {
    v8 = entryCopy;
    objc_storeStrong(p_personNameEntry, entry);
    entryCopy = v8;
  }
}

@end
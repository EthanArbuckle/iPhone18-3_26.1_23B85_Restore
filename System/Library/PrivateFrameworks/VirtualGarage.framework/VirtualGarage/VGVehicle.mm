@interface VGVehicle
- (BOOL)_canBeUpdatedFromState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPureElectricVehicle;
- (VGVehicle)initWithCoder:(id)a3;
- (VGVehicle)initWithDisplayName:(id)a3 year:(id)a4 manufacturer:(id)a5 model:(id)a6 colorHex:(id)a7 headUnitIdentifier:(id)a8 headUnitBluetoothIdentifier:(id)a9 supportedConnectors:(unint64_t)a10 powerByConnector:(id)a11;
- (VGVehicle)initWithIdentifier:(id)a3 displayName:(id)a4 year:(id)a5 manufacturer:(id)a6 model:(id)a7 colorHex:(id)a8 licensePlate:(id)a9 lprVehicleType:(id)a10 lprPowerType:(id)a11;
- (VGVehicle)initWithLicensePlate:(id)a3 lprVehicleType:(id)a4 lprPowerType:(id)a5;
- (VGVehicle)initWithMapsSyncVehicle:(id)a3;
- (double)batteryPercentageBasedOfCapacity;
- (id)_identifierForVehicleStateOrigin:(int64_t)a3;
- (id)_vehicleByUpdatingUsesPreferredNetworksForRouting:(BOOL)a3;
- (id)_vehicleByUpdatingWithVehicle:(id)a3;
- (id)combinedDisplayName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)displayedBatteryPercentage;
- (void)_setVehicleState:(id)a3;
- (void)_updateWithVehicleState:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)pairToIapIdentifier:(id)a3 bluetoothIdentifier:(id)a4;
@end

@implementation VGVehicle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v95 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = identifier;
      if (v7 | v8)
      {
        v9 = v8;
        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_43;
        }
      }

      creationDate = v5->_creationDate;
      v12 = self->_creationDate;
      v13 = creationDate;
      if (v12 | v13)
      {
        v14 = v13;
        v15 = [v12 isEqual:v13];

        if (!v15)
        {
          goto LABEL_43;
        }
      }

      iapIdentifier = v5->_iapIdentifier;
      v17 = self->_iapIdentifier;
      v18 = iapIdentifier;
      if (v17 | v18)
      {
        v19 = v18;
        v20 = [v17 isEqual:v18];

        if (!v20)
        {
          goto LABEL_43;
        }
      }

      siriIntentsIdentifier = v5->_siriIntentsIdentifier;
      v22 = self->_siriIntentsIdentifier;
      v23 = siriIntentsIdentifier;
      if (v22 | v23)
      {
        v24 = v23;
        v25 = [v22 isEqual:v23];

        if (!v25)
        {
          goto LABEL_43;
        }
      }

      lastStateUpdateDate = v5->_lastStateUpdateDate;
      v27 = self->_lastStateUpdateDate;
      v28 = lastStateUpdateDate;
      if (v27 | v28)
      {
        v29 = v28;
        v30 = [v27 isEqual:v28];

        if (!v30)
        {
          goto LABEL_43;
        }
      }

      displayName = v5->_displayName;
      v32 = self->_displayName;
      v33 = displayName;
      if (v32 | v33)
      {
        v34 = v33;
        v35 = [v32 isEqual:v33];

        if (!v35)
        {
          goto LABEL_43;
        }
      }

      manufacturer = v5->_manufacturer;
      v37 = self->_manufacturer;
      v38 = manufacturer;
      if (v37 | v38)
      {
        v39 = v38;
        v40 = [v37 isEqual:v38];

        if (!v40)
        {
          goto LABEL_43;
        }
      }

      model = v5->_model;
      v42 = self->_model;
      v43 = model;
      if (v42 | v43)
      {
        v44 = v43;
        v45 = [v42 isEqual:v43];

        if (!v45)
        {
          goto LABEL_43;
        }
      }

      year = v5->_year;
      v47 = self->_year;
      v48 = year;
      if (v47 | v48)
      {
        v49 = v48;
        v50 = [v47 isEqual:v48];

        if (!v50)
        {
          goto LABEL_43;
        }
      }

      headUnitBluetoothIdentifier = v5->_headUnitBluetoothIdentifier;
      v52 = self->_headUnitBluetoothIdentifier;
      v53 = headUnitBluetoothIdentifier;
      if (v52 | v53)
      {
        v54 = v53;
        v55 = [v52 isEqual:v53];

        if (!v55)
        {
          goto LABEL_43;
        }
      }

      headUnitIdentifier = v5->_headUnitIdentifier;
      v57 = self->_headUnitIdentifier;
      v58 = headUnitIdentifier;
      if (v57 | v58)
      {
        v59 = v58;
        v60 = [v57 isEqual:v58];

        if (!v60)
        {
          goto LABEL_43;
        }
      }

      colorHex = v5->_colorHex;
      v62 = self->_colorHex;
      v63 = colorHex;
      if (v62 | v63)
      {
        v64 = v63;
        v65 = [v62 isEqual:v63];

        if (!v65)
        {
          goto LABEL_43;
        }
      }

      licensePlate = v5->_licensePlate;
      v67 = self->_licensePlate;
      v68 = licensePlate;
      if (v67 | v68)
      {
        v69 = v68;
        v70 = [v67 isEqual:v68];

        if (!v70)
        {
          goto LABEL_43;
        }
      }

      lprVehicleType = v5->_lprVehicleType;
      v72 = self->_lprVehicleType;
      v73 = lprVehicleType;
      if (v72 | v73)
      {
        v74 = v73;
        v75 = [v72 isEqual:v73];

        if (!v75)
        {
          goto LABEL_43;
        }
      }

      lprPowerType = v5->_lprPowerType;
      v77 = self->_lprPowerType;
      v78 = lprPowerType;
      if (v77 | v78)
      {
        v79 = v78;
        v80 = [v77 isEqual:v78];

        if (!v80)
        {
          goto LABEL_43;
        }
      }

      if (self->_supportedConnectors != v5->_supportedConnectors)
      {
        goto LABEL_43;
      }

      powerByConnector = v5->_powerByConnector;
      v82 = self->_powerByConnector;
      v83 = powerByConnector;
      if (v82 | v83)
      {
        v84 = v83;
        v85 = [v82 isEqual:v83];

        if (!v85)
        {
          goto LABEL_43;
        }
      }

      if (((preferredChargingNetworks = v5->_preferredChargingNetworks, v87 = self->_preferredChargingNetworks, v88 = preferredChargingNetworks, !(v87 | v88)) || (v89 = v88, v90 = [v87 isEqual:v88], v89, v87, v90)) && self->_usesPreferredNetworksForRouting == v5->_usesPreferredNetworksForRouting)
      {
        currentVehicleState = self->_currentVehicleState;
        v92 = v5->_currentVehicleState;
        v93 = currentVehicleState;
        v94 = v93;
        if (v93 | v92)
        {
          v95 = [v93 isEqual:v92];
        }

        else
        {
          v95 = 1;
        }
      }

      else
      {
LABEL_43:
        v95 = 0;
      }
    }

    else
    {
      v95 = 0;
    }
  }

  return v95;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v26 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  identifier = v2->_identifier;
  iapIdentifier = v2->_iapIdentifier;
  creationDate = v2->_creationDate;
  siriIntentsIdentifier = v2->_siriIntentsIdentifier;
  displayName = v2->_displayName;
  lastStateUpdateDate = v2->_lastStateUpdateDate;
  manufacturer = v2->_manufacturer;
  year = v2->_year;
  colorHex = v2->_colorHex;
  model = v2->_model;
  headUnitBluetoothIdentifier = v2->_headUnitBluetoothIdentifier;
  headUnitIdentifier = v2->_headUnitIdentifier;
  licensePlate = v2->_licensePlate;
  lprVehicleType = v2->_lprVehicleType;
  lprPowerType = v2->_lprPowerType;
  v8 = NSStringFromVGChargingConnectorTypeOptions(v2->_supportedConnectors);
  powerByConnector = v2->_powerByConnector;
  preferredChargingNetworks = v2->_preferredChargingNetworks;
  if (v2->_usesPreferredNetworksForRouting)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  v13 = [v26 stringWithFormat:@"<%@:%p, \n identifier: %@, \n iapIdentifier: %@, \n siriIntentsIdentifier: %@, \n creationDate: %@, \n lastStateUpdateDate: %@, \n displayName: %@, \n year: %@, \n manufacturer: %@, \n model: %@, \n colorHex: %@, \n headUnitBluetoothIdentifier: %@, \n headUnitIdentifier: %@, \n license plate: %@, \n lprVehicleType: %@, \n lprPowerType: %@, \n supportedConnectors: %@, \n powerByConnector: %@, \n preferredChargingNetworks: %@, \n usesPreferredNetworksForRouting: %@, \n currentState: %@, \n pairedAppIdentifier: %@, \n pairedAppInstallDeviceIdentifier: %@, \n pairedAppInstallSessionIdentifier: %@\n>", v25, v2, identifier, iapIdentifier, siriIntentsIdentifier, creationDate, lastStateUpdateDate, displayName, year, manufacturer, model, colorHex, headUnitBluetoothIdentifier, headUnitIdentifier, licensePlate, lprVehicleType, lprPowerType, v8, powerByConnector, preferredChargingNetworks, v12, v2->_currentVehicleState, v2->_pairedAppIdentifier, v2->_pairedAppInstallDeviceIdentifier, v2->_pairedAppInstallSessionIdentifier];

  objc_sync_exit(v2);

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39 = [VGVehicle allocWithZone:a3];
  v38 = [(NSString *)self->_identifier copy];
  v4 = [(NSString *)self->_displayName copy];
  v5 = [(NSString *)self->_year copy];
  v6 = [(NSString *)self->_manufacturer copy];
  v7 = [(NSString *)self->_model copy];
  v8 = [(NSString *)self->_colorHex copy];
  v9 = [(NSString *)self->_licensePlate copy];
  v10 = [(NSString *)self->_lprVehicleType copy];
  v11 = [(NSString *)self->_lprPowerType copy];
  v12 = [(VGVehicle *)v39 initWithIdentifier:v38 displayName:v4 year:v5 manufacturer:v6 model:v7 colorHex:v8 licensePlate:v9 lprVehicleType:v10 lprPowerType:v11];

  v13 = [(NSString *)self->_iapIdentifier copy];
  v14 = *(v12 + 160);
  *(v12 + 160) = v13;

  v15 = [(NSString *)self->_siriIntentsIdentifier copy];
  v16 = *(v12 + 168);
  *(v12 + 168) = v15;

  v17 = [(NSDate *)self->_creationDate copy];
  v18 = *(v12 + 24);
  *(v12 + 24) = v17;

  v19 = [(NSDate *)self->_lastStateUpdateDate copy];
  v20 = *(v12 + 32);
  *(v12 + 32) = v19;

  v21 = [(NSString *)self->_headUnitIdentifier copy];
  v22 = *(v12 + 88);
  *(v12 + 88) = v21;

  v23 = [(NSString *)self->_headUnitBluetoothIdentifier copy];
  v24 = *(v12 + 80);
  *(v12 + 80) = v23;

  *(v12 + 120) = self->_supportedConnectors;
  v25 = [(NSDictionary *)self->_powerByConnector copy];
  v26 = *(v12 + 128);
  *(v12 + 128) = v25;

  v27 = [(NSSet *)self->_preferredChargingNetworks copy];
  v28 = *(v12 + 136);
  *(v12 + 136) = v27;

  *(v12 + 8) = self->_usesPreferredNetworksForRouting;
  v29 = [(VGVehicleState *)self->_currentVehicleState copy];
  v30 = *(v12 + 144);
  *(v12 + 144) = v29;

  v31 = [(NSString *)self->_pairedAppIdentifier copy];
  v32 = *(v12 + 152);
  *(v12 + 152) = v31;

  v33 = [(NSString *)self->_pairedAppInstallDeviceIdentifier copy];
  v34 = *(v12 + 176);
  *(v12 + 176) = v33;

  v35 = [(NSData *)self->_pairedAppInstallSessionIdentifier copy];
  v36 = *(v12 + 184);
  *(v12 + 184) = v35;

  return v12;
}

- (double)batteryPercentageBasedOfCapacity
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(VGVehicle *)self isPureElectricVehicle])
  {
    v19 = VGGetAssertLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315906;
      v23 = "[VGVehicle batteryPercentageBasedOfCapacity]";
      v24 = 2080;
      v25 = "VGVehicle.m";
      v26 = 1024;
      v27 = 465;
      v28 = 2080;
      v29 = "self.isPureElectricVehicle";
      _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v22, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v20 = VGGetAssertLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x277CCACC8] callStackSymbols];
        v22 = 138412290;
        v23 = v21;
        _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "%@", &v22, 0xCu);
      }
    }
  }

  if ([(VGVehicle *)self isPureElectricVehicle])
  {
    v3 = [(VGVehicle *)self currentVehicleState];
    v4 = [v3 minBatteryCapacity];
    [v4 doubleValue];
    v6 = v5;

    v7 = [v3 maxBatteryCapacity];
    [v7 doubleValue];
    v9 = v8 - v6;

    v10 = [v3 currentBatteryCapacity];
    [v10 doubleValue];
    v12 = v11 - v6;

    if (v12 < 0.0 || v12 > v9 || v9 <= 2.22044605e-16)
    {
      v15 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = v3;
        _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, "Vehicle provided invalid battery state: %@", &v22, 0xCu);
      }

      v16 = 0.0;
    }

    else
    {
      v16 = fmin(fmax(v12 / v9, 0.0), 1.0);
    }
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    v16 = 0.0;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = self;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "Querried a vehicle for battery state that is not an EV. Vehicle: %@", &v22, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unint64_t)displayedBatteryPercentage
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(VGVehicle *)self isPureElectricVehicle])
  {
    v14 = VGGetAssertLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[VGVehicle displayedBatteryPercentage]";
      v19 = 2080;
      v20 = "VGVehicle.m";
      v21 = 1024;
      v22 = 445;
      v23 = 2080;
      v24 = "self.isPureElectricVehicle";
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v15 = VGGetAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [MEMORY[0x277CCACC8] callStackSymbols];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }
  }

  if ([(VGVehicle *)self isPureElectricVehicle])
  {
    v3 = [(VGVehicle *)self currentVehicleState];
    v4 = [v3 batteryPercentage];

    if (v4)
    {
      v5 = [(VGVehicle *)self currentVehicleState];
      v6 = [v5 batteryPercentage];
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v11 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
      }

      [(VGVehicle *)self batteryPercentageBasedOfCapacity];
      v8 = v12;
    }

    result = vcvtad_u64_f64(fmin(fmax(v8, 0.0), 1.0) * 100.0);
  }

  else
  {
    v9 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "Querried a vehicle for battery state that is not an EV. Vehicle: %@", &v17, 0xCu);
    }

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)combinedDisplayName
{
  p_displayName = &self->_displayName;
  if (![(NSString *)self->_displayName length])
  {
    licensePlate = self->_licensePlate;
    p_licensePlate = &self->_licensePlate;
    v6 = [(NSString *)licensePlate length];
    if (!v6)
    {
      goto LABEL_5;
    }

    p_displayName = p_licensePlate;
  }

  v6 = *p_displayName;
LABEL_5:

  return v6;
}

- (BOOL)_canBeUpdatedFromState:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 origin];

  v7 = [(VGVehicle *)self _identifierForVehicleStateOrigin:v6];
  LOBYTE(v4) = [v5 isEqualToString:v7];

  return v4;
}

- (id)_identifierForVehicleStateOrigin:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    siriIntentsIdentifier = self->_siriIntentsIdentifier;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    siriIntentsIdentifier = self->_iapIdentifier;
LABEL_5:
    v4 = siriIntentsIdentifier;
    goto LABEL_13;
  }

  v5 = VGGetAssertLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315650;
    v11 = "[VGVehicle _identifierForVehicleStateOrigin:]";
    v12 = 2080;
    v13 = "VGVehicle.m";
    v14 = 1024;
    v15 = 424;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
  }

  if (_vg_isInternalInstall())
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACC8] callStackSymbols];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
    }
  }

  v4 = 0;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)pairToIapIdentifier:(id)a3 bluetoothIdentifier:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_iapIdentifier)
  {
    goto LABEL_2;
  }

  v16 = VGGetAssertLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315906;
    v20 = "[VGVehicle pairToIapIdentifier:bluetoothIdentifier:]";
    v21 = 2080;
    v22 = "VGVehicle.m";
    v23 = 1024;
    LODWORD(v24[0]) = 398;
    WORD2(v24[0]) = 2080;
    *(v24 + 6) = "!_iapIdentifier";
    _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v19, 0x26u);
  }

  if (_vg_isInternalInstall())
  {
    v17 = VGGetAssertLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
    }
  }

  if (self->_iapIdentifier)
  {
    headUnitBluetoothIdentifier = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(headUnitBluetoothIdentifier, OS_LOG_TYPE_FAULT))
    {
      v19 = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24[0] = v7;
      _os_log_impl(&dword_270EC1000, headUnitBluetoothIdentifier, OS_LOG_TYPE_FAULT, "Tried to pair a vehicle: (%@) to iapID: %@, bluetoothID: %@, but it was already paired.", &v19, 0x20u);
    }
  }

  else
  {
LABEL_2:
    v8 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "Pairing vehicle to iapIdentifier: %@, bluetoothIdentifier: %@", &v19, 0x16u);
    }

    v9 = [v6 copy];
    iapIdentifier = self->_iapIdentifier;
    self->_iapIdentifier = v9;

    v11 = [v6 copy];
    headUnitIdentifier = self->_headUnitIdentifier;
    self->_headUnitIdentifier = v11;

    v13 = [v7 copy];
    headUnitBluetoothIdentifier = self->_headUnitBluetoothIdentifier;
    self->_headUnitBluetoothIdentifier = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_vehicleByUpdatingUsesPreferredNetworksForRouting:(BOOL)a3
{
  v4 = [(VGVehicle *)self copy];
  v4[8] = a3;

  return v4;
}

- (id)_vehicleByUpdatingWithVehicle:(id)a3
{
  v4 = a3;
  v5 = [(VGVehicle *)self copy];
  v5[15] = [v4 supportedConnectors];
  v6 = [v4 powerByConnector];
  v7 = [v6 copy];
  v8 = v5[16];
  v5[16] = v7;

  v9 = [v4 currentVehicleState];
  [v5 _updateWithVehicleState:v9];

  v10 = [v5 displayName];

  if (!v10)
  {
    v11 = [v4 displayName];
    v12 = [v11 copy];
    v13 = v5[5];
    v5[5] = v12;
  }

  v14 = [v5 colorHex];

  if (!v14)
  {
    v15 = [v4 colorHex];
    v16 = [v15 copy];
    v17 = v5[9];
    v5[9] = v16;
  }

  v18 = [v5 model];

  if (!v18)
  {
    v19 = [v4 model];
    v20 = [v19 copy];
    v21 = v5[8];
    v5[8] = v20;
  }

  v22 = [v5 manufacturer];

  if (!v22)
  {
    v23 = [v4 manufacturer];
    v24 = [v23 copy];
    v25 = v5[7];
    v5[7] = v24;
  }

  v26 = [v5 year];

  if (!v26)
  {
    v27 = [v4 year];
    v28 = [v27 copy];
    v29 = v5[6];
    v5[6] = v28;
  }

  v30 = [v5 headUnitIdentifier];

  if (!v30)
  {
    v31 = [v4 headUnitIdentifier];
    v32 = [v31 copy];
    v33 = v5[11];
    v5[11] = v32;
  }

  v34 = [v5 headUnitBluetoothIdentifier];

  if (!v34)
  {
    v35 = [v4 headUnitBluetoothIdentifier];
    v36 = [v35 copy];
    v37 = v5[10];
    v5[10] = v36;
  }

  v38 = [v5 iapIdentifier];

  if (!v38)
  {
    v39 = [v4 iapIdentifier];
    v40 = [v39 copy];
    v41 = v5[20];
    v5[20] = v40;
  }

  return v5;
}

- (void)_setVehicleState:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v9 copy];
  currentVehicleState = v4->_currentVehicleState;
  v4->_currentVehicleState = v5;

  v7 = [MEMORY[0x277CBEAA8] date];
  lastStateUpdateDate = v4->_lastStateUpdateDate;
  v4->_lastStateUpdateDate = v7;

  objc_sync_exit(v4);
}

- (void)_updateWithVehicleState:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(VGVehicle *)self _canBeUpdatedFromState:v4])
  {
    [(VGVehicle *)self _setVehicleState:v4];
  }

  else
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[VGVehicle _updateWithVehicleState:]";
      v15 = 2080;
      v16 = "VGVehicle.m";
      v17 = 1024;
      LODWORD(v18[0]) = 330;
      WORD2(v18[0]) = 2080;
      *(v18 + 6) = "isStateValidForVehicle";
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v7 = VGGetAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }

    v9 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [v4 identifier];
      v11 = [v4 origin];
      v12 = @"Unknown";
      if (v11 == 1)
      {
        v12 = @"iAP2";
      }

      v13 = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v10;
      if (v11 == 2)
      {
        v12 = @"SiriIntents";
      }

      v17 = 2112;
      v18[0] = v12;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_FAULT, "Tried to update a vehicle %@, with an incompatible state: id: %@, origin: %@", &v13, 0x20u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPureElectricVehicle
{
  v3 = [(VGVehicleState *)self->_currentVehicleState consumptionArguments];
  if ([v3 length])
  {
    v4 = [(VGVehicleState *)self->_currentVehicleState chargingArguments];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v6 encodeObject:v4->_identifier forKey:@"_identifier"];
  [v6 encodeObject:v4->_iapIdentifier forKey:@"_iapIdentifier"];
  [v6 encodeObject:v4->_siriIntentsIdentifier forKey:@"_siriIntentsIdentifier"];
  [v6 encodeObject:v4->_creationDate forKey:@"_creationDate"];
  [v6 encodeObject:v4->_lastStateUpdateDate forKey:@"_lastStateUpdateDate"];
  [v6 encodeObject:v4->_displayName forKey:@"_displayName"];
  [v6 encodeObject:v4->_year forKey:@"_year"];
  [v6 encodeObject:v4->_manufacturer forKey:@"_manufacturer"];
  [v6 encodeObject:v4->_model forKey:@"_model"];
  [v6 encodeObject:v4->_colorHex forKey:@"_colorHex"];
  [v6 encodeObject:v4->_headUnitIdentifier forKey:@"_headUnitIdentifier"];
  [v6 encodeObject:v4->_headUnitBluetoothIdentifier forKey:@"_headUnitBluetoothIdentifier"];
  [v6 encodeObject:v4->_licensePlate forKey:@"_licensePlate"];
  [v6 encodeObject:v4->_lprVehicleType forKey:@"_lprVehicleType"];
  [v6 encodeObject:v4->_lprPowerType forKey:@"_lprPowerType"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4->_supportedConnectors];
  [v6 encodeObject:v5 forKey:@"_supportedConnectors"];

  [v6 encodeObject:v4->_powerByConnector forKey:@"_powerByConnector"];
  [v6 encodeObject:v4->_preferredChargingNetworks forKey:@"_preferredChargingNetworks"];
  [v6 encodeBool:v4->_usesPreferredNetworksForRouting forKey:@"_usesPreferredNetworksForRouting"];
  [v6 encodeObject:v4->_currentVehicleState forKey:@"_currentVehicleState"];
  [v6 encodeObject:v4->_pairedAppIdentifier forKey:@"_pairedAppIdentifier"];
  [v6 encodeObject:v4->_pairedAppInstallDeviceIdentifier forKey:@"_pairedAppInstallDeviceIdentifier"];
  [v6 encodeObject:v4->_pairedAppInstallSessionIdentifier forKey:@"_pairedAppInstallSessionIdentifier"];
  objc_sync_exit(v4);
}

- (VGVehicle)initWithCoder:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = VGVehicle;
  v5 = [(VGVehicle *)&v57 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_iapIdentifier"];
    iapIdentifier = v5->_iapIdentifier;
    v5->_iapIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_siriIntentsIdentifier"];
    siriIntentsIdentifier = v5->_siriIntentsIdentifier;
    v5->_siriIntentsIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastStateUpdateDate"];
    lastStateUpdateDate = v5->_lastStateUpdateDate;
    v5->_lastStateUpdateDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_year"];
    year = v5->_year;
    v5->_year = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_manufacturer"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_model"];
    model = v5->_model;
    v5->_model = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_colorHex"];
    colorHex = v5->_colorHex;
    v5->_colorHex = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_headUnitIdentifier"];
    headUnitIdentifier = v5->_headUnitIdentifier;
    v5->_headUnitIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_headUnitBluetoothIdentifier"];
    headUnitBluetoothIdentifier = v5->_headUnitBluetoothIdentifier;
    v5->_headUnitBluetoothIdentifier = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_licensePlate"];
    licensePlate = v5->_licensePlate;
    v5->_licensePlate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lprVehicleType"];
    lprVehicleType = v5->_lprVehicleType;
    v5->_lprVehicleType = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lprPowerType"];
    lprPowerType = v5->_lprPowerType;
    v5->_lprPowerType = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_supportedConnectors"];
    v5->_supportedConnectors = [v36 unsignedIntegerValue];

    v37 = objc_alloc(MEMORY[0x277CBEB98]);
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 initWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"_powerByConnector"];
    powerByConnector = v5->_powerByConnector;
    v5->_powerByConnector = v41;

    v43 = objc_alloc(MEMORY[0x277CBEB98]);
    v44 = objc_opt_class();
    v45 = [v43 initWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"_preferredChargingNetworks"];
    preferredChargingNetworks = v5->_preferredChargingNetworks;
    v5->_preferredChargingNetworks = v46;

    v5->_usesPreferredNetworksForRouting = [v4 decodeBoolForKey:@"_usesPreferredNetworksForRouting"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentVehicleState"];
    currentVehicleState = v5->_currentVehicleState;
    v5->_currentVehicleState = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pairedAppIdentifier"];
    pairedAppIdentifier = v5->_pairedAppIdentifier;
    v5->_pairedAppIdentifier = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pairedAppInstallDeviceIdentifier"];
    pairedAppInstallDeviceIdentifier = v5->_pairedAppInstallDeviceIdentifier;
    v5->_pairedAppInstallDeviceIdentifier = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pairedAppInstallSessionIdentifier"];
    pairedAppInstallSessionIdentifier = v5->_pairedAppInstallSessionIdentifier;
    v5->_pairedAppInstallSessionIdentifier = v54;
  }

  return v5;
}

- (VGVehicle)initWithMapsSyncVehicle:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v97.receiver = self;
  v97.super_class = VGVehicle;
  v5 = [(VGVehicle *)&v97 init];
  if (v5)
  {
    v6 = [v4 vehicleIdentifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 iapIdentifier];
    v10 = [v9 copy];
    iapIdentifier = v5->_iapIdentifier;
    v5->_iapIdentifier = v10;

    v12 = [v4 siriIntentsIdentifier];
    v13 = [v12 copy];
    siriIntentsIdentifier = v5->_siriIntentsIdentifier;
    v5->_siriIntentsIdentifier = v13;

    v15 = [v4 dateOfVehicleIngestion];
    v16 = [v15 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    v18 = [v4 lastStateUpdateDate];
    v19 = [v18 copy];
    lastStateUpdateDate = v5->_lastStateUpdateDate;
    v5->_lastStateUpdateDate = v19;

    v21 = [v4 displayName];
    v22 = [v21 copy];
    displayName = v5->_displayName;
    v5->_displayName = v22;

    v24 = [v4 year];
    v25 = [v24 stringValue];
    year = v5->_year;
    v5->_year = v25;

    v27 = [v4 manufacturer];
    v28 = [v27 copy];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v28;

    v30 = [v4 model];
    v31 = [v30 copy];
    model = v5->_model;
    v5->_model = v31;

    v33 = [v4 colorHex];
    v34 = [v33 copy];
    colorHex = v5->_colorHex;
    v5->_colorHex = v34;

    v36 = [v4 licensePlate];
    v37 = [v36 copy];
    licensePlate = v5->_licensePlate;
    v5->_licensePlate = v37;

    v39 = [v4 lprVehicleType];
    v40 = [v39 copy];
    lprVehicleType = v5->_lprVehicleType;
    v5->_lprVehicleType = v40;

    v42 = [v4 lprPowerType];
    v43 = [v42 copy];
    lprPowerType = v5->_lprPowerType;
    v5->_lprPowerType = v43;

    v45 = [v4 headUnitMacAddress];
    v46 = [v45 copy];
    headUnitIdentifier = v5->_headUnitIdentifier;
    v5->_headUnitIdentifier = v46;

    v48 = [v4 headUnitBluetoothIdentifier];
    v49 = [v48 copy];
    headUnitBluetoothIdentifier = v5->_headUnitBluetoothIdentifier;
    v5->_headUnitBluetoothIdentifier = v49;

    v51 = [v4 supportedConnectors];
    v5->_supportedConnectors = [v51 unsignedIntegerValue];

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __37__VGVehicle_initWithMapsSyncVehicle___block_invoke;
    v95[3] = &unk_279E26630;
    v52 = v4;
    v96 = v52;
    v53 = MEMORY[0x2743B8310](v95);
    v54 = [v52 powerByConnector];
    v55 = (v53)[2](v53, v54);
    powerByConnector = v5->_powerByConnector;
    v5->_powerByConnector = v55;

    v57 = [VGChargingNetworksStorage alloc];
    v58 = [v52 preferredChargingNetworks];
    v59 = [(VGChargingNetworksStorage *)v57 initWithData:v58];

    v60 = objc_alloc(MEMORY[0x277CBEB98]);
    v61 = [(VGChargingNetworksStorage *)v59 networks];
    v62 = &__block_literal_global_55;
    if (v61)
    {
      v91 = v60;
      v93 = v52;
      v94 = v53;
      v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v92 = v61;
      v64 = v61;
      v65 = [v64 countByEnumeratingWithState:&v98 objects:buf count:16];
      if (v65)
      {
        v66 = v65;
        v67 = 0;
        v68 = *v99;
        do
        {
          for (i = 0; i != v66; ++i)
          {
            if (*v99 != v68)
            {
              objc_enumerationMutation(v64);
            }

            v70 = __37__VGVehicle_initWithMapsSyncVehicle___block_invoke_13(&__block_literal_global_55, *(*(&v98 + 1) + 8 * i));
            if (v70)
            {
              [v63 addObject:v70];
            }

            ++v67;
          }

          v66 = [v64 countByEnumeratingWithState:&v98 objects:buf count:16];
        }

        while (v66);
      }

      v71 = [v63 copy];
      v53 = v94;
      v61 = v92;
      v52 = v93;
      v60 = v91;
    }

    else
    {
      v71 = 0;
    }

    v72 = [v60 initWithArray:v71];
    preferredChargingNetworks = v5->_preferredChargingNetworks;
    v5->_preferredChargingNetworks = v72;

    v5->_usesPreferredNetworksForRouting = [(VGChargingNetworksStorage *)v59 usesPreferredNetworksForRouting];
    v74 = [VGVehicleStateStorage alloc];
    v75 = [v52 currentVehicleState];
    v76 = [(VGVehicleStateStorage *)v74 initWithData:v75];

    if (v76)
    {
      v77 = [VGVehicleState _vehicleStateFromStorage:v76];
    }

    else
    {
      v78 = VGGetPersistingLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v103 = v52;
        _os_log_impl(&dword_270EC1000, v78, OS_LOG_TYPE_ERROR, "Failed to load vehicleStateStorage from MapsSyncVehicle: %@.", buf, 0xCu);
      }

      v77 = 0;
    }

    currentVehicleState = v5->_currentVehicleState;
    v5->_currentVehicleState = v77;

    v80 = [v52 pairedAppIdentifier];
    v81 = [v80 copy];
    pairedAppIdentifier = v5->_pairedAppIdentifier;
    v5->_pairedAppIdentifier = v81;

    v83 = [(VGVehicleStateStorage *)v76 pairedAppInstallDeviceIdentifier];
    v84 = [v83 copy];
    pairedAppInstallDeviceIdentifier = v5->_pairedAppInstallDeviceIdentifier;
    v5->_pairedAppInstallDeviceIdentifier = v84;

    v86 = [(VGVehicleStateStorage *)v76 pairedAppInstallSessionIdentifier];
    v87 = [v86 copy];
    pairedAppInstallSessionIdentifier = v5->_pairedAppInstallSessionIdentifier;
    v5->_pairedAppInstallSessionIdentifier = v87;
  }

  v89 = *MEMORY[0x277D85DE8];
  return v5;
}

NSObject *__37__VGVehicle_initWithMapsSyncVehicle___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v39 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:&v39];
    v9 = v39;

    if (v9 || !v8)
    {
      v10 = VGGetPersistingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v41 = v24;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Failed to load powerByConnector dictionary from MapsSyncVehicle: %@.", buf, 0xCu);
      }

      v23 = 0;
    }

    else
    {
      v32 = a1;
      v10 = objc_opt_new();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        v33 = v8;
        v34 = v3;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v35 + 1) + 8 * i);
            v17 = [v11 objectForKeyedSubscript:v16];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v25 = VGGetAssertLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v41 = "[VGVehicle initWithMapsSyncVehicle:]_block_invoke";
                v42 = 2080;
                v43 = "VGVehicle.m";
                v44 = 1024;
                v45 = 206;
                _os_log_impl(&dword_270EC1000, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
              }

              v9 = 0;
              v8 = v33;
              if (_vg_isInternalInstall())
              {
                v26 = VGGetAssertLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v27 = [MEMORY[0x277CCACC8] callStackSymbols];
                  *buf = 138412290;
                  v41 = v27;
                  _os_log_impl(&dword_270EC1000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }

              v28 = VGGetPersistingLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                v29 = *(v32 + 32);
                *buf = 138412290;
                v41 = v29;
                _os_log_impl(&dword_270EC1000, v28, OS_LOG_TYPE_FAULT, "Failed to parse a powerByConnector dictionary from MapsSyncVehicle: %@.", buf, 0xCu);
              }

              v23 = 0;
              v3 = v34;
              goto LABEL_27;
            }

            v18 = objc_alloc(MEMORY[0x277CCAB10]);
            [v17 doubleValue];
            v20 = v19;
            v21 = [MEMORY[0x277CCAE30] watts];
            v22 = [v18 initWithDoubleValue:v21 unit:v20];
            [v10 setObject:v22 forKeyedSubscript:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
          v8 = v33;
          v3 = v34;
          v9 = 0;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = v10;
      v23 = v10;
    }

LABEL_27:
  }

  else
  {
    v23 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

VGChargingNetwork *__37__VGVehicle_initWithMapsSyncVehicle___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[VGChargingNetwork alloc] initWithChargingNetworkStorage:v2];

  return v3;
}

- (VGVehicle)initWithIdentifier:(id)a3 displayName:(id)a4 year:(id)a5 manufacturer:(id)a6 model:(id)a7 colorHex:(id)a8 licensePlate:(id)a9 lprVehicleType:(id)a10 lprPowerType:(id)a11
{
  v17 = a3;
  v18 = a4;
  v46 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v47.receiver = self;
  v47.super_class = VGVehicle;
  v25 = [(VGVehicle *)&v47 init];
  if (v25)
  {
    v26 = [v17 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [MEMORY[0x277CBEAA8] date];
    creationDate = v25->_creationDate;
    v25->_creationDate = v28;

    lastStateUpdateDate = v25->_lastStateUpdateDate;
    v25->_lastStateUpdateDate = 0;

    v31 = [v18 copy];
    displayName = v25->_displayName;
    v25->_displayName = v31;

    objc_storeStrong(&v25->_year, a5);
    v33 = [v19 copy];
    manufacturer = v25->_manufacturer;
    v25->_manufacturer = v33;

    v35 = [v20 copy];
    model = v25->_model;
    v25->_model = v35;

    v37 = [v21 copy];
    colorHex = v25->_colorHex;
    v25->_colorHex = v37;

    v39 = [v22 copy];
    licensePlate = v25->_licensePlate;
    v25->_licensePlate = v39;

    v41 = [v23 copy];
    lprVehicleType = v25->_lprVehicleType;
    v25->_lprVehicleType = v41;

    v43 = [v24 copy];
    lprPowerType = v25->_lprPowerType;
    v25->_lprPowerType = v43;
  }

  return v25;
}

- (VGVehicle)initWithLicensePlate:(id)a3 lprVehicleType:(id)a4 lprPowerType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = VGVehicle;
  v11 = [(VGVehicle *)&v27 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v13 = [v12 UUIDString];
    identifier = v11->_identifier;
    v11->_identifier = v13;

    v15 = [MEMORY[0x277CBEAA8] date];
    creationDate = v11->_creationDate;
    v11->_creationDate = v15;

    lastStateUpdateDate = v11->_lastStateUpdateDate;
    v11->_lastStateUpdateDate = 0;

    v18 = [v8 copy];
    displayName = v11->_displayName;
    v11->_displayName = v18;

    v20 = [v8 copy];
    licensePlate = v11->_licensePlate;
    v11->_licensePlate = v20;

    v22 = [v9 copy];
    lprVehicleType = v11->_lprVehicleType;
    v11->_lprVehicleType = v22;

    v24 = [v10 copy];
    lprPowerType = v11->_lprPowerType;
    v11->_lprPowerType = v24;
  }

  return v11;
}

- (VGVehicle)initWithDisplayName:(id)a3 year:(id)a4 manufacturer:(id)a5 model:(id)a6 colorHex:(id)a7 headUnitIdentifier:(id)a8 headUnitBluetoothIdentifier:(id)a9 supportedConnectors:(unint64_t)a10 powerByConnector:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v51.receiver = self;
  v51.super_class = VGVehicle;
  v25 = [(VGVehicle *)&v51 init];
  if (v25)
  {
    v26 = [MEMORY[0x277CCAD78] UUID];
    v27 = [v26 UUIDString];
    identifier = v25->_identifier;
    v25->_identifier = v27;

    v29 = [v22 copy];
    iapIdentifier = v25->_iapIdentifier;
    v25->_iapIdentifier = v29;

    v31 = [MEMORY[0x277CBEAA8] date];
    creationDate = v25->_creationDate;
    v25->_creationDate = v31;

    lastStateUpdateDate = v25->_lastStateUpdateDate;
    v25->_lastStateUpdateDate = 0;

    v34 = [v17 copy];
    displayName = v25->_displayName;
    v25->_displayName = v34;

    v36 = [v18 copy];
    year = v25->_year;
    v25->_year = v36;

    v38 = [v19 copy];
    manufacturer = v25->_manufacturer;
    v25->_manufacturer = v38;

    v40 = [v20 copy];
    model = v25->_model;
    v25->_model = v40;

    v42 = [v21 copy];
    colorHex = v25->_colorHex;
    v25->_colorHex = v42;

    v44 = [v22 copy];
    headUnitIdentifier = v25->_headUnitIdentifier;
    v25->_headUnitIdentifier = v44;

    v46 = [v23 copy];
    headUnitBluetoothIdentifier = v25->_headUnitBluetoothIdentifier;
    v25->_headUnitBluetoothIdentifier = v46;

    v25->_supportedConnectors = a10;
    v48 = [v24 copy];
    powerByConnector = v25->_powerByConnector;
    v25->_powerByConnector = v48;
  }

  return v25;
}

@end
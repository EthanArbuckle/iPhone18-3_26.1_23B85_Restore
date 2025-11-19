@interface VGVehicleState
+ (id)_vehicleStateFromStorage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSignificantlyDifferentFromVehicleState:(id)a3;
- (VGVehicleState)initWithCoder:(id)a3;
- (VGVehicleState)initWithIdentifier:(id)a3 dateOfUpdate:(id)a4 origin:(int64_t)a5 batteryPercentage:(id)a6 currentEVRange:(id)a7 maxEVRange:(id)a8 minBatteryCapacity:(id)a9 currentBatteryCapacity:(id)a10 maxBatteryCapacity:(id)a11 consumptionArguments:(id)a12 chargingArguments:(id)a13 isCharging:(BOOL)a14 activeConnector:(unint64_t)a15;
- (id)_storage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGVehicleState

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = @"Unknown";
  identifier = self->_identifier;
  v23 = v3;
  dateOfUpdate = self->_dateOfUpdate;
  origin = self->_origin;
  currentEVRange = self->_currentEVRange;
  if (origin == 1)
  {
    v4 = @"iAP2";
  }

  if (origin == 2)
  {
    v4 = @"SiriIntents";
  }

  v19 = v4;
  maxEVRange = self->_maxEVRange;
  minBatteryCapacity = self->_minBatteryCapacity;
  currentBatteryCapacity = self->_currentBatteryCapacity;
  maxBatteryCapacity = self->_maxBatteryCapacity;
  consumptionArguments = self->_consumptionArguments;
  chargingArguments = self->_chargingArguments;
  if (self->_isCharging)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  activeConnector = self->_activeConnector;
  batteryPercentage = self->_batteryPercentage;
  v15 = v12;
  v16 = NSStringFromVGChargingConnectorTypeOptions(activeConnector);
  v17 = [v24 stringWithFormat:@"<%@:%p, identifier: %@, dateOfUpdate: %@, origin: %@, batteryCharge: %@, currentEVRange: %@, maxEVRange: %@, minBatteryCapacity: %@, currentBatteryCapacity: %@, maxBatteryCapacity: %@, consumptionArguments: %@, chargingArguments: %@, isCharging: %@, activeConnector: %@>", v23, self, identifier, dateOfUpdate, v19, batteryPercentage, currentEVRange, maxEVRange, minBatteryCapacity, currentBatteryCapacity, maxBatteryCapacity, consumptionArguments, chargingArguments, v15, v16];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v56 = 1;
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
          goto LABEL_28;
        }
      }

      dateOfUpdate = v5->_dateOfUpdate;
      v12 = self->_dateOfUpdate;
      v13 = dateOfUpdate;
      if (v12 | v13)
      {
        v14 = v13;
        v15 = [v12 isEqual:v13];

        if (!v15)
        {
          goto LABEL_28;
        }
      }

      if (self->_origin != v5->_origin)
      {
        goto LABEL_28;
      }

      batteryPercentage = v5->_batteryPercentage;
      v17 = self->_batteryPercentage;
      v18 = batteryPercentage;
      if (v17 | v18)
      {
        v19 = v18;
        v20 = [v17 isEqual:v18];

        if (!v20)
        {
          goto LABEL_28;
        }
      }

      currentEVRange = v5->_currentEVRange;
      v22 = self->_currentEVRange;
      v23 = currentEVRange;
      if (v22 | v23)
      {
        v24 = v23;
        v25 = [v22 isEqual:v23];

        if (!v25)
        {
          goto LABEL_28;
        }
      }

      maxEVRange = v5->_maxEVRange;
      v27 = self->_maxEVRange;
      v28 = maxEVRange;
      if (v27 | v28)
      {
        v29 = v28;
        v30 = [v27 isEqual:v28];

        if (!v30)
        {
          goto LABEL_28;
        }
      }

      minBatteryCapacity = v5->_minBatteryCapacity;
      v32 = self->_minBatteryCapacity;
      v33 = minBatteryCapacity;
      if (v32 | v33)
      {
        v34 = v33;
        v35 = [v32 isEqual:v33];

        if (!v35)
        {
          goto LABEL_28;
        }
      }

      currentBatteryCapacity = v5->_currentBatteryCapacity;
      v37 = self->_currentBatteryCapacity;
      v38 = currentBatteryCapacity;
      if (v37 | v38)
      {
        v39 = v38;
        v40 = [v37 isEqual:v38];

        if (!v40)
        {
          goto LABEL_28;
        }
      }

      maxBatteryCapacity = v5->_maxBatteryCapacity;
      v42 = self->_maxBatteryCapacity;
      v43 = maxBatteryCapacity;
      if (v42 | v43)
      {
        v44 = v43;
        v45 = [v42 isEqual:v43];

        if (!v45)
        {
          goto LABEL_28;
        }
      }

      consumptionArguments = v5->_consumptionArguments;
      v47 = self->_consumptionArguments;
      v48 = consumptionArguments;
      if (v47 | v48)
      {
        v49 = v48;
        v50 = [v47 isEqual:v48];

        if (!v50)
        {
          goto LABEL_28;
        }
      }

      if (((chargingArguments = v5->_chargingArguments, v52 = self->_chargingArguments, v53 = chargingArguments, !(v52 | v53)) || (v54 = v53, v55 = [v52 isEqual:v53], v54, v52, v55)) && self->_isCharging == v5->_isCharging)
      {
        v56 = self->_activeConnector == v5->_activeConnector;
      }

      else
      {
LABEL_28:
        v56 = 0;
      }
    }

    else
    {
      v56 = 0;
    }
  }

  return v56;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VGVehicleState allocWithZone:a3];
  v5 = *&self->_minBatteryCapacity;
  LOBYTE(v7) = self->_isCharging;
  return [(VGVehicleState *)v4 initWithIdentifier:self->_identifier dateOfUpdate:self->_dateOfUpdate origin:self->_origin batteryPercentage:self->_batteryPercentage currentEVRange:self->_currentEVRange maxEVRange:self->_maxEVRange minBatteryCapacity:self->_minBatteryCapacity currentBatteryCapacity:self->_currentBatteryCapacity maxBatteryCapacity:self->_maxBatteryCapacity consumptionArguments:self->_consumptionArguments chargingArguments:self->_chargingArguments isCharging:v7 activeConnector:self->_activeConnector];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_dateOfUpdate forKey:@"_dateOfUpdate"];
  [v5 encodeInteger:self->_origin forKey:@"_origin"];
  [v5 encodeObject:self->_batteryPercentage forKey:@"_batteryPercentage"];
  [v5 encodeObject:self->_currentEVRange forKey:@"_currentEVRange"];
  [v5 encodeObject:self->_maxEVRange forKey:@"_maxEVRange"];
  [v5 encodeObject:self->_minBatteryCapacity forKey:@"_minBatteryCapacity"];
  [v5 encodeObject:self->_currentBatteryCapacity forKey:@"_currentBatteryCapacity"];
  [v5 encodeObject:self->_maxBatteryCapacity forKey:@"_maxBatteryCapacity"];
  [v5 encodeObject:self->_consumptionArguments forKey:@"_consumptionArguments"];
  [v5 encodeObject:self->_chargingArguments forKey:@"_chargingArguments"];
  [v5 encodeBool:self->_isCharging forKey:@"_isCharging"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activeConnector];
  [v5 encodeObject:v6 forKey:@"_activeConnector"];
}

- (VGVehicleState)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = VGVehicleState;
  v5 = [(VGVehicleState *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dateOfUpdate"];
    dateOfUpdate = v5->_dateOfUpdate;
    v5->_dateOfUpdate = v8;

    v5->_origin = [v4 decodeIntegerForKey:@"_origin"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_batteryPercentage"];
    batteryPercentage = v5->_batteryPercentage;
    v5->_batteryPercentage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentEVRange"];
    currentEVRange = v5->_currentEVRange;
    v5->_currentEVRange = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxEVRange"];
    maxEVRange = v5->_maxEVRange;
    v5->_maxEVRange = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_minBatteryCapacity"];
    minBatteryCapacity = v5->_minBatteryCapacity;
    v5->_minBatteryCapacity = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_currentBatteryCapacity"];
    currentBatteryCapacity = v5->_currentBatteryCapacity;
    v5->_currentBatteryCapacity = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxBatteryCapacity"];
    maxBatteryCapacity = v5->_maxBatteryCapacity;
    v5->_maxBatteryCapacity = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"_consumptionArguments"];
    consumptionArguments = v5->_consumptionArguments;
    v5->_consumptionArguments = v27;

    v29 = [v4 decodeObjectOfClasses:v26 forKey:@"_chargingArguments"];
    chargingArguments = v5->_chargingArguments;
    v5->_chargingArguments = v29;

    v5->_isCharging = [v4 decodeBoolForKey:@"_isCharging"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activeConnector"];
    v5->_activeConnector = [v31 unsignedIntegerValue];
  }

  return v5;
}

- (id)_storage
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(VGVehicleStateStorage);
  v4 = [(NSString *)self->_identifier copy];
  [(VGVehicleStateStorage *)v3 setIdentifier:v4];

  [(NSDate *)self->_dateOfUpdate timeIntervalSinceReferenceDate];
  [(VGVehicleStateStorage *)v3 setDateOfUpdate:?];
  origin = self->_origin;
  if (origin >= 3)
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v37 = 136315650;
      v38 = "VGVehicleStateStorage_Origin VGVehicleStateStorage_OriginFromVGVehicleStateOrigin(VGVehicleStateOrigin)";
      v39 = 2080;
      v40 = "VGVehicleState.m";
      v41 = 1024;
      v42 = 201;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v37, 0x1Cu);
    }

    if (_vg_isInternalInstall())
    {
      v7 = VGGetAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [MEMORY[0x277CCACC8] callStackSymbols];
        v37 = 138412290;
        v38 = v8;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "%@", &v37, 0xCu);
      }
    }

    v9 = VGGetPersistingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      v38 = @"Unknown";
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "Failed to persist origin from vgOrigin: %@", &v37, 0xCu);
    }

    origin = 0;
  }

  [(VGVehicleStateStorage *)v3 setOrigin:origin];
  batteryPercentage = self->_batteryPercentage;
  if (batteryPercentage)
  {
    [(NSNumber *)batteryPercentage doubleValue];
    [(VGVehicleStateStorage *)v3 setBatteryPercentage:?];
  }

  currentEVRange = self->_currentEVRange;
  if (currentEVRange)
  {
    v12 = [MEMORY[0x277CCAE20] kilometers];
    v13 = [(NSMeasurement *)currentEVRange measurementByConvertingToUnit:v12];
    [v13 doubleValue];
    [(VGVehicleStateStorage *)v3 setCurrentEVRange:?];
  }

  maxEVRange = self->_maxEVRange;
  if (maxEVRange)
  {
    v15 = [MEMORY[0x277CCAE20] kilometers];
    v16 = [(NSMeasurement *)maxEVRange measurementByConvertingToUnit:v15];
    [v16 doubleValue];
    [(VGVehicleStateStorage *)v3 setMaxEVRange:?];
  }

  minBatteryCapacity = self->_minBatteryCapacity;
  if (minBatteryCapacity)
  {
    v18 = [MEMORY[0x277CCADF8] kilowattHours];
    v19 = [(NSMeasurement *)minBatteryCapacity measurementByConvertingToUnit:v18];
    [v19 doubleValue];
    [(VGVehicleStateStorage *)v3 setMinBatteryCapacity:?];
  }

  currentBatteryCapacity = self->_currentBatteryCapacity;
  if (currentBatteryCapacity)
  {
    v21 = [MEMORY[0x277CCADF8] kilowattHours];
    v22 = [(NSMeasurement *)currentBatteryCapacity measurementByConvertingToUnit:v21];
    [v22 doubleValue];
    [(VGVehicleStateStorage *)v3 setCurrentBatteryCapacity:?];
  }

  maxBatteryCapacity = self->_maxBatteryCapacity;
  if (maxBatteryCapacity)
  {
    v24 = [MEMORY[0x277CCADF8] kilowattHours];
    v25 = [(NSMeasurement *)maxBatteryCapacity measurementByConvertingToUnit:v24];
    [v25 doubleValue];
    [(VGVehicleStateStorage *)v3 setMaxBatteryCapacity:?];
  }

  v26 = [(NSString *)self->_consumptionArguments copy];
  [(VGVehicleStateStorage *)v3 setConsumptionArguments:v26];

  v27 = [(NSString *)self->_chargingArguments copy];
  [(VGVehicleStateStorage *)v3 setChargingArguments:v27];

  [(VGVehicleStateStorage *)v3 setIsCharging:self->_isCharging];
  activeConnector = self->_activeConnector;
  if (activeConnector > 15)
  {
    if (activeConnector <= 63)
    {
      if (activeConnector == 16)
      {
        v29 = 5;
        goto LABEL_55;
      }

      if (activeConnector == 32)
      {
        v29 = 6;
        goto LABEL_55;
      }
    }

    else
    {
      switch(activeConnector)
      {
        case 64:
          v29 = 7;
          goto LABEL_55;
        case 128:
          v29 = 8;
          goto LABEL_55;
        case 256:
          v29 = 9;
          goto LABEL_55;
      }
    }

    goto LABEL_45;
  }

  if (activeConnector > 1)
  {
    switch(activeConnector)
    {
      case 2:
        v29 = 2;
        goto LABEL_55;
      case 4:
        v29 = 3;
        goto LABEL_55;
      case 8:
        v29 = 4;
        goto LABEL_55;
    }

    goto LABEL_45;
  }

  if (activeConnector)
  {
    if (activeConnector == 1)
    {
      v29 = 1;
      goto LABEL_55;
    }

LABEL_45:
    v30 = VGGetAssertLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v37 = 136315650;
      v38 = "VGVehicleStateStorage_ConnectorType VGVehicleStateStorage_ConnectorTypeFromVGChargingConnectorTypeOptions(VGChargingConnectorTypeOptions)";
      v39 = 2080;
      v40 = "VGVehicleState.m";
      v41 = 1024;
      v42 = 168;
      _os_log_impl(&dword_270EC1000, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v37, 0x1Cu);
    }

    if (_vg_isInternalInstall())
    {
      v31 = VGGetAssertLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [MEMORY[0x277CCACC8] callStackSymbols];
        v37 = 138412290;
        v38 = v32;
        _os_log_impl(&dword_270EC1000, v31, OS_LOG_TYPE_ERROR, "%@", &v37, 0xCu);
      }
    }

    v33 = VGGetPersistingLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromVGChargingConnectorTypeOptions(activeConnector);
      v37 = 138412290;
      v38 = v34;
      _os_log_impl(&dword_270EC1000, v33, OS_LOG_TYPE_ERROR, "Failed to persist a single connector type from vgConnectorType: %@", &v37, 0xCu);
    }
  }

  v29 = 0;
LABEL_55:
  [(VGVehicleStateStorage *)v3 setActiveConnector:v29];
  v35 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isSignificantlyDifferentFromVehicleState:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  GEOConfigGetDouble();
  v6 = v5;
  dateOfUpdate = self->_dateOfUpdate;
  v8 = [v4 dateOfUpdate];
  [(NSDate *)dateOfUpdate timeIntervalSinceDate:v8];
  v10 = fabs(v9);

  if (v10 <= v6)
  {
    GEOConfigGetDouble();
    v15 = v14;
    [(NSMeasurement *)self->_minBatteryCapacity doubleValue];
    v17 = v16;
    v18 = [v4 minBatteryCapacity];
    [v18 doubleValue];
    if (vabdd_f64(v17, v19) > v15)
    {
LABEL_7:

      goto LABEL_8;
    }

    [(NSMeasurement *)self->_currentBatteryCapacity doubleValue];
    v21 = v20;
    v22 = [v4 currentBatteryCapacity];
    [v22 doubleValue];
    if (vabdd_f64(v21, v23) > v15)
    {

      goto LABEL_7;
    }

    [(NSMeasurement *)self->_maxBatteryCapacity doubleValue];
    v31 = v30;
    v32 = [v4 maxBatteryCapacity];
    [v32 doubleValue];
    v34 = vabdd_f64(v31, v33);

    if (v34 > v15)
    {
LABEL_8:
      v11 = VGGetPersistingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        currentBatteryCapacity = self->_currentBatteryCapacity;
        maxBatteryCapacity = self->_maxBatteryCapacity;
        minBatteryCapacity = self->_minBatteryCapacity;
        v59 = 138413058;
        v60 = minBatteryCapacity;
        v61 = 2112;
        v62 = maxBatteryCapacity;
        v63 = 2112;
        v64 = currentBatteryCapacity;
        v65 = 2112;
        v66 = v4;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "isSignificantlyDifferentFromVehicleState: -> YES. Battery state has changed. _min: %@, _max: %@, _current: %@. new: %@", &v59, 0x2Au);
      }

      goto LABEL_10;
    }

    consumptionArguments = self->_consumptionArguments;
    v36 = [v4 consumptionArguments];
    v37 = consumptionArguments;
    v38 = v36;
    if (v37 | v38 && (v39 = [v37 isEqual:v38], v38, v37, (v39 & 1) == 0))
    {
    }

    else
    {
      chargingArguments = self->_chargingArguments;
      v41 = [v4 chargingArguments];
      v42 = chargingArguments;
      v43 = v41;
      if (!(v42 | v43))
      {

        goto LABEL_36;
      }

      v44 = v43;
      v45 = [v42 isEqual:v43];

      if (v45)
      {
        goto LABEL_36;
      }
    }

    v46 = VGDictionaryFromVGVehicleArguments(self->_chargingArguments);
    v47 = [v4 chargingArguments];
    v48 = VGDictionaryFromVGVehicleArguments(v47);
    if (v46 | v48)
    {
      v49 = [v46 isEqual:v48] ^ 1;
    }

    else
    {
      v49 = 0;
    }

    v50 = VGDictionaryFromVGVehicleArguments(self->_consumptionArguments);
    v51 = [v4 consumptionArguments];
    v52 = VGDictionaryFromVGVehicleArguments(v51);
    if (v50 | v52)
    {
      v53 = [v50 isEqual:v52] ^ 1;
    }

    else
    {
      v53 = 0;
    }

    if ((v53 | v49))
    {
      v54 = VGGetPersistingLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = @"NO";
        if (v49)
        {
          v56 = @"YES";
        }

        else
        {
          v56 = @"NO";
        }

        if (v53)
        {
          v55 = @"YES";
        }

        v59 = 138412546;
        v60 = v56;
        v61 = 2112;
        v62 = v55;
        v57 = v55;
        v58 = v56;
        _os_log_impl(&dword_270EC1000, v54, OS_LOG_TYPE_INFO, "isSignificantlyDifferentFromVehicleState: -> YES. chargingArgumentsAreDifferent: %@, consumptionArgumentsAreDifferent: %@", &v59, 0x16u);
      }

      goto LABEL_11;
    }

LABEL_36:
    v27 = 0;
    goto LABEL_12;
  }

  v11 = VGGetPersistingLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_dateOfUpdate;
    v13 = [v4 dateOfUpdate];
    v59 = 138412546;
    v60 = v12;
    v61 = 2112;
    v62 = v13;
    _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "isSignificantlyDifferentFromVehicleState: -> YES. Date of last update: %@, date of new update: %@", &v59, 0x16u);
  }

LABEL_10:

LABEL_11:
  v27 = 1;
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (VGVehicleState)initWithIdentifier:(id)a3 dateOfUpdate:(id)a4 origin:(int64_t)a5 batteryPercentage:(id)a6 currentEVRange:(id)a7 maxEVRange:(id)a8 minBatteryCapacity:(id)a9 currentBatteryCapacity:(id)a10 maxBatteryCapacity:(id)a11 consumptionArguments:(id)a12 chargingArguments:(id)a13 isCharging:(BOOL)a14 activeConnector:(unint64_t)a15
{
  v38 = a3;
  v37 = a4;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v31 = a11;
  v20 = a12;
  v21 = a13;
  v39.receiver = self;
  v39.super_class = VGVehicleState;
  v22 = [(VGVehicleState *)&v39 init];
  if (v22)
  {
    v23 = [v38 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    objc_storeStrong(&v22->_dateOfUpdate, a4);
    v22->_origin = a5;
    objc_storeStrong(&v22->_batteryPercentage, a6);
    objc_storeStrong(&v22->_currentEVRange, a7);
    objc_storeStrong(&v22->_maxEVRange, a8);
    objc_storeStrong(&v22->_minBatteryCapacity, a9);
    objc_storeStrong(&v22->_currentBatteryCapacity, a10);
    objc_storeStrong(&v22->_maxBatteryCapacity, a11);
    v25 = [v20 copy];
    consumptionArguments = v22->_consumptionArguments;
    v22->_consumptionArguments = v25;

    v27 = [v21 copy];
    chargingArguments = v22->_chargingArguments;
    v22->_chargingArguments = v27;

    v22->_isCharging = a14;
    v22->_activeConnector = a15;
  }

  return v22;
}

+ (id)_vehicleStateFromStorage:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v61 = [VGVehicleState alloc];
    v4 = [v3 identifier];
    v5 = [v4 copy];
    v6 = MEMORY[0x277CBEAA8];
    [v3 dateOfUpdate];
    v68 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v7 = [v3 origin];
    v8 = v7;
    if (v7 >= 3)
    {
      v10 = VGGetAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v70 = "VGVehicleStateOrigin VGVehicleStateOriginFromVGVehicleStateStorage_Origin(VGVehicleStateStorage_Origin)";
        v71 = 2080;
        v72 = "VGVehicleState.m";
        v73 = 1024;
        v74 = 184;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (_vg_isInternalInstall())
      {
        v11 = VGGetAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412290;
          v70 = v12;
          _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v13 = VGGetPersistingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
        *buf = 138412290;
        v70 = v14;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "Failed to load origin from protoOrigin: %@", buf, 0xCu);
      }

      v58 = 0;
    }

    else
    {
      v58 = v7;
    }

    v60 = [v3 hasBatteryPercentage];
    if (v60)
    {
      v15 = MEMORY[0x277CCABB0];
      [v3 batteryPercentage];
      v67 = [v15 numberWithDouble:?];
    }

    else
    {
      v67 = 0;
    }

    v59 = [v3 hasCurrentEVRange];
    if (v59)
    {
      v16 = objc_alloc(MEMORY[0x277CCAB10]);
      [v3 currentEVRange];
      v18 = v17;
      v53 = [MEMORY[0x277CCAE20] kilometers];
      v66 = [v16 initWithDoubleValue:v18 unit:?];
    }

    else
    {
      v66 = 0;
    }

    v57 = [v3 hasMaxEVRange];
    if (v57)
    {
      v19 = objc_alloc(MEMORY[0x277CCAB10]);
      [v3 maxEVRange];
      v21 = v20;
      v52 = [MEMORY[0x277CCAE20] kilometers];
      v65 = [v19 initWithDoubleValue:v21 unit:?];
    }

    else
    {
      v65 = 0;
    }

    v56 = [v3 hasMinBatteryCapacity];
    if (v56)
    {
      v22 = objc_alloc(MEMORY[0x277CCAB10]);
      [v3 minBatteryCapacity];
      v24 = v23;
      v51 = [MEMORY[0x277CCADF8] kilowattHours];
      v64 = [v22 initWithDoubleValue:v24 unit:?];
    }

    else
    {
      v64 = 0;
    }

    v55 = [v3 hasCurrentBatteryCapacity];
    if (v55)
    {
      v25 = objc_alloc(MEMORY[0x277CCAB10]);
      [v3 currentBatteryCapacity];
      v27 = v26;
      v50 = [MEMORY[0x277CCADF8] kilowattHours];
      v63 = [v25 initWithDoubleValue:v27 unit:?];
    }

    else
    {
      v63 = 0;
    }

    v28 = [v3 hasMaxBatteryCapacity];
    v62 = v5;
    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x277CCAB10]);
      [v3 maxBatteryCapacity];
      v31 = v30;
      v49 = [MEMORY[0x277CCADF8] kilowattHours];
      v32 = [v29 initWithDoubleValue:v31 unit:?];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v3 consumptionArguments];
    v34 = [v33 copy];
    v35 = [v3 chargingArguments];
    v36 = [v35 copy];
    v37 = [v3 isCharging];
    v38 = [v3 activeConnector];
    v39 = v38;
    if (v38 >= 0xA)
    {
      v54 = v4;
      v41 = VGGetAssertLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v70 = "VGChargingConnectorTypeOptions VGChargingConnectorTypeOptionsFromVGVehicleStateStorage_ConnectorType(VGVehicleStateStorage_ConnectorType)";
        v71 = 2080;
        v72 = "VGVehicleState.m";
        v73 = 1024;
        v74 = 138;
        _os_log_impl(&dword_270EC1000, v41, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (_vg_isInternalInstall())
      {
        v42 = VGGetAssertLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v48 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412290;
          v70 = v48;
          _os_log_impl(&dword_270EC1000, v42, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v43 = VGGetPersistingLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v39];
        *buf = 138412290;
        v70 = v44;
        _os_log_impl(&dword_270EC1000, v43, OS_LOG_TYPE_ERROR, "Failed to load a single connector type from protoConnectorType: %@", buf, 0xCu);
      }

      v40 = 0;
      v4 = v54;
    }

    else
    {
      v40 = qword_270EF24B8[v38];
    }

    LOBYTE(v47) = v37;
    v9 = [(VGVehicleState *)v61 initWithIdentifier:v62 dateOfUpdate:v68 origin:v58 batteryPercentage:v67 currentEVRange:v66 maxEVRange:v65 minBatteryCapacity:v64 currentBatteryCapacity:v63 maxBatteryCapacity:v32 consumptionArguments:v34 chargingArguments:v36 isCharging:v47 activeConnector:v40];

    if (v28)
    {
    }

    if (v55)
    {
    }

    if (v56)
    {
    }

    if (v57)
    {
    }

    if (v59)
    {
    }

    if (v60)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
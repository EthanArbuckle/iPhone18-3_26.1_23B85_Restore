@interface TADeviceRecordSettings
- (BOOL)isEqual:(id)equal;
- (TADeviceRecordSettings)initWithCoder:(id)coder;
- (TADeviceRecordSettings)initWithExpiryTimeInterval:(double)interval futureExpiryTimeInterval:(double)timeInterval purgeTimeInterval:(double)purgeTimeInterval keepAliveInterval:(double)aliveInterval minimumStagingInterval:(double)stagingInterval stagingBackstopHour:(unint64_t)hour assumedKeyRollHour:(unint64_t)rollHour scanInterval:(double)self0 surfaceImmediatelyBeepOnMove:(BOOL)self1 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)self2 maxExpectedHELEWildInterval:(double)self3 maxExpectedDurianWildInterval:(double)self4 shouldAlertHELEImmediatelyForImmediateTypes:(BOOL)self5 minimumHELEStagingInterval:(double)self6 stagingHELEBackstopHour:(unint64_t)self7 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)self8 hyperHELEStagingInterval:(double)self9 hyperStagingInterval:(double)hyperStagingInterval;
- (TADeviceRecordSettings)initWithExpiryTimeIntervalOrDefault:(id)default futureExpiryTimeIntervalOrDefault:(id)orDefault purgeTimeIntervalOrDefault:(id)intervalOrDefault keepAliveIntervalOrDefault:(id)aliveIntervalOrDefault minimumStagingIntervalOrDefault:(id)stagingIntervalOrDefault stagingBackstopHourOrDefault:(id)hourOrDefault assumedKeyRollHourOrDefault:(id)rollHourOrDefault scanIntervalOrDefault:(id)self0 surfaceImmediatelyBeepOnMoveOrDefault:(id)self1 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)self2 maxExpectedHELEWildIntervalOrDefault:(id)self3 maxExpectedDurianWildIntervalOrDefault:(id)self4 shouldAlertHELEImmediatelyForImmediateTypesOrDefault:(id)self5 minimumHELEStagingIntervalOrDefault:(id)self6 stagingHELEBackstopHourOrDefault:(id)self7 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)self8 hyperHELEStagingIntervalOrDefault:(id)self9 hyperStagingIntervalOrDefault:(id)hyperStagingIntervalOrDefault;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TADeviceRecordSettings

- (TADeviceRecordSettings)initWithExpiryTimeInterval:(double)interval futureExpiryTimeInterval:(double)timeInterval purgeTimeInterval:(double)purgeTimeInterval keepAliveInterval:(double)aliveInterval minimumStagingInterval:(double)stagingInterval stagingBackstopHour:(unint64_t)hour assumedKeyRollHour:(unint64_t)rollHour scanInterval:(double)self0 surfaceImmediatelyBeepOnMove:(BOOL)self1 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)self2 maxExpectedHELEWildInterval:(double)self3 maxExpectedDurianWildInterval:(double)self4 shouldAlertHELEImmediatelyForImmediateTypes:(BOOL)self5 minimumHELEStagingInterval:(double)self6 stagingHELEBackstopHour:(unint64_t)self7 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)self8 hyperHELEStagingInterval:(double)self9 hyperStagingInterval:(double)hyperStagingInterval
{
  v35.receiver = self;
  v35.super_class = TADeviceRecordSettings;
  result = [(TADeviceRecordSettings *)&v35 init];
  if (result)
  {
    result->_expiryTimeInterval = interval;
    result->_futureExpiryTimeInterval = timeInterval;
    result->_purgeTimeInterval = purgeTimeInterval;
    result->_keepAliveInterval = aliveInterval;
    result->_minimumStagingInterval = stagingInterval;
    result->_stagingBackstopHour = hour;
    result->_assumedKeyRollHour = rollHour;
    result->_surfaceImmediatelyBeepOnMove = move;
    result->_surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll = keyroll;
    result->_scanInterval = scanInterval;
    result->_maxExpectedHELEWildInterval = wildInterval;
    result->_shouldAlertHELEImmediatelyForImmediateTypes = types;
    result->_maxExpectedDurianWildInterval = durianWildInterval;
    result->_minimumHELEStagingInterval = eStagingInterval;
    result->_stagingHELEBackstopHour = backstopHour;
    result->_surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll = andKeyroll;
    result->_hyperHELEStagingInterval = lEStagingInterval;
    result->_hyperStagingInterval = hyperStagingInterval;
  }

  return result;
}

- (TADeviceRecordSettings)initWithExpiryTimeIntervalOrDefault:(id)default futureExpiryTimeIntervalOrDefault:(id)orDefault purgeTimeIntervalOrDefault:(id)intervalOrDefault keepAliveIntervalOrDefault:(id)aliveIntervalOrDefault minimumStagingIntervalOrDefault:(id)stagingIntervalOrDefault stagingBackstopHourOrDefault:(id)hourOrDefault assumedKeyRollHourOrDefault:(id)rollHourOrDefault scanIntervalOrDefault:(id)self0 surfaceImmediatelyBeepOnMoveOrDefault:(id)self1 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)self2 maxExpectedHELEWildIntervalOrDefault:(id)self3 maxExpectedDurianWildIntervalOrDefault:(id)self4 shouldAlertHELEImmediatelyForImmediateTypesOrDefault:(id)self5 minimumHELEStagingIntervalOrDefault:(id)self6 stagingHELEBackstopHourOrDefault:(id)self7 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)self8 hyperHELEStagingIntervalOrDefault:(id)self9 hyperStagingIntervalOrDefault:(id)hyperStagingIntervalOrDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  intervalOrDefaultCopy = intervalOrDefault;
  aliveIntervalOrDefaultCopy = aliveIntervalOrDefault;
  stagingIntervalOrDefaultCopy = stagingIntervalOrDefault;
  hourOrDefaultCopy = hourOrDefault;
  rollHourOrDefaultCopy = rollHourOrDefault;
  scanIntervalOrDefaultCopy = scanIntervalOrDefault;
  moveOrDefaultCopy = moveOrDefault;
  keyrollOrDefaultCopy = keyrollOrDefault;
  wildIntervalOrDefaultCopy = wildIntervalOrDefault;
  durianWildIntervalOrDefaultCopy = durianWildIntervalOrDefault;
  typesOrDefaultCopy = typesOrDefault;
  eStagingIntervalOrDefaultCopy = eStagingIntervalOrDefault;
  backstopHourOrDefaultCopy = backstopHourOrDefault;
  andKeyrollOrDefaultCopy = andKeyrollOrDefault;
  lEStagingIntervalOrDefaultCopy = lEStagingIntervalOrDefault;
  hyperStagingIntervalOrDefaultCopy = hyperStagingIntervalOrDefault;
  if (defaultCopy)
  {
    [defaultCopy doubleValue];
  }

  else
  {
    *&v34 = 90000.0;
  }

  v67 = *&v34;
  if (orDefaultCopy)
  {
    [orDefaultCopy doubleValue];
  }

  else
  {
    *&v35 = 86400.0;
  }

  v66 = *&v35;
  if (intervalOrDefaultCopy)
  {
    [intervalOrDefaultCopy doubleValue];
  }

  else
  {
    *&v36 = 3600.0;
  }

  v65 = *&v36;
  v68 = hyperStagingIntervalOrDefaultCopy;
  if (aliveIntervalOrDefaultCopy)
  {
    [aliveIntervalOrDefaultCopy doubleValue];
    v38 = v37;
  }

  else
  {
    v38 = 7200.0;
  }

  if (stagingIntervalOrDefaultCopy)
  {
    [stagingIntervalOrDefaultCopy doubleValue];
    v40 = v39;
    if (hourOrDefaultCopy)
    {
LABEL_15:
      unsignedIntValue = [hourOrDefaultCopy unsignedIntValue];
      goto LABEL_18;
    }
  }

  else
  {
    v40 = 28800.0;
    if (hourOrDefaultCopy)
    {
      goto LABEL_15;
    }
  }

  unsignedIntValue = 22;
LABEL_18:
  v64 = unsignedIntValue;
  if (rollHourOrDefaultCopy)
  {
    unsignedIntValue2 = [rollHourOrDefaultCopy unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 4;
  }

  v63 = unsignedIntValue2;
  if (scanIntervalOrDefaultCopy)
  {
    [scanIntervalOrDefaultCopy doubleValue];
    v44 = v43;
    if (moveOrDefaultCopy)
    {
LABEL_23:
      bOOLValue = [moveOrDefaultCopy BOOLValue];
      goto LABEL_26;
    }
  }

  else
  {
    v44 = 3600.0;
    if (moveOrDefaultCopy)
    {
      goto LABEL_23;
    }
  }

  bOOLValue = 1;
LABEL_26:
  if (keyrollOrDefaultCopy)
  {
    bOOLValue2 = [keyrollOrDefaultCopy BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  if (wildIntervalOrDefaultCopy)
  {
    [wildIntervalOrDefaultCopy doubleValue];
    v46 = v45;
  }

  else
  {
    v46 = 3600.0;
  }

  if (durianWildIntervalOrDefaultCopy)
  {
    [durianWildIntervalOrDefaultCopy doubleValue];
    v48 = v47;
  }

  else
  {
    v48 = 960.0;
  }

  v69 = hourOrDefaultCopy;
  if (typesOrDefaultCopy)
  {
    bOOLValue3 = [typesOrDefaultCopy BOOLValue];
  }

  else
  {
    bOOLValue3 = 1;
  }

  if (eStagingIntervalOrDefaultCopy)
  {
    [eStagingIntervalOrDefaultCopy doubleValue];
    v51 = v50;
  }

  else
  {
    v51 = 0x40DC200000000000;
  }

  if (backstopHourOrDefaultCopy)
  {
    unsignedIntValue3 = [backstopHourOrDefaultCopy unsignedIntValue];
  }

  else
  {
    unsignedIntValue3 = 22;
  }

  if (andKeyrollOrDefaultCopy)
  {
    bOOLValue4 = [andKeyrollOrDefaultCopy BOOLValue];
  }

  else
  {
    bOOLValue4 = 1;
  }

  v54 = 0x40AC200000000000;
  v55 = 0x40AC200000000000;
  if (lEStagingIntervalOrDefaultCopy)
  {
    [lEStagingIntervalOrDefaultCopy doubleValue];
    v55 = v56;
  }

  if (v68)
  {
    [v68 doubleValue];
    v54 = v57;
  }

  LOBYTE(v60) = bOOLValue4;
  v58 = [(TADeviceRecordSettings *)self initWithExpiryTimeInterval:v64 futureExpiryTimeInterval:v63 purgeTimeInterval:bOOLValue keepAliveInterval:bOOLValue2 minimumStagingInterval:bOOLValue3 stagingBackstopHour:unsignedIntValue3 assumedKeyRollHour:v67 scanInterval:v66 surfaceImmediatelyBeepOnMove:v65 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v38 maxExpectedHELEWildInterval:v40 maxExpectedDurianWildInterval:v44 shouldAlertHELEImmediatelyForImmediateTypes:v46 minimumHELEStagingInterval:v48 stagingHELEBackstopHour:v51 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v60 hyperHELEStagingInterval:v55 hyperStagingInterval:v54];

  return v58;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v46 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(TADeviceRecordSettings *)self expiryTimeInterval];
      v7 = v6;
      [(TADeviceRecordSettings *)v5 expiryTimeInterval];
      if (v7 != v8)
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self futureExpiryTimeInterval];
      v10 = v9;
      [(TADeviceRecordSettings *)v5 futureExpiryTimeInterval];
      if (v10 != v11)
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self purgeTimeInterval];
      v13 = v12;
      [(TADeviceRecordSettings *)v5 purgeTimeInterval];
      if (v13 != v14)
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self keepAliveInterval];
      v16 = v15;
      [(TADeviceRecordSettings *)v5 keepAliveInterval];
      if (v16 != v17)
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self minimumStagingInterval];
      v19 = v18;
      [(TADeviceRecordSettings *)v5 minimumStagingInterval];
      if (v19 != v20)
      {
        goto LABEL_23;
      }

      stagingBackstopHour = [(TADeviceRecordSettings *)self stagingBackstopHour];
      if (stagingBackstopHour != [(TADeviceRecordSettings *)v5 stagingBackstopHour])
      {
        goto LABEL_23;
      }

      assumedKeyRollHour = [(TADeviceRecordSettings *)self assumedKeyRollHour];
      if (assumedKeyRollHour != [(TADeviceRecordSettings *)v5 assumedKeyRollHour])
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self scanInterval];
      v24 = v23;
      [(TADeviceRecordSettings *)v5 scanInterval];
      if (v24 != v25)
      {
        goto LABEL_23;
      }

      surfaceImmediatelyBeepOnMove = [(TADeviceRecordSettings *)self surfaceImmediatelyBeepOnMove];
      if (surfaceImmediatelyBeepOnMove != [(TADeviceRecordSettings *)v5 surfaceImmediatelyBeepOnMove])
      {
        goto LABEL_23;
      }

      surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll = [(TADeviceRecordSettings *)self surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll];
      if (surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll != [(TADeviceRecordSettings *)v5 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll])
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self maxExpectedHELEWildInterval];
      v29 = v28;
      [(TADeviceRecordSettings *)v5 maxExpectedHELEWildInterval];
      if (v29 != v30)
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self maxExpectedDurianWildInterval];
      v32 = v31;
      [(TADeviceRecordSettings *)v5 maxExpectedDurianWildInterval];
      if (v32 != v33)
      {
        goto LABEL_23;
      }

      shouldAlertHELEImmediatelyForImmediateTypes = [(TADeviceRecordSettings *)self shouldAlertHELEImmediatelyForImmediateTypes];
      if (shouldAlertHELEImmediatelyForImmediateTypes != [(TADeviceRecordSettings *)v5 shouldAlertHELEImmediatelyForImmediateTypes])
      {
        goto LABEL_23;
      }

      [(TADeviceRecordSettings *)self minimumHELEStagingInterval];
      v36 = v35;
      [(TADeviceRecordSettings *)v5 minimumHELEStagingInterval];
      if (v36 != v37)
      {
        goto LABEL_23;
      }

      stagingHELEBackstopHour = [(TADeviceRecordSettings *)self stagingHELEBackstopHour];
      if (stagingHELEBackstopHour == [(TADeviceRecordSettings *)v5 stagingHELEBackstopHour]&& (v39 = [(TADeviceRecordSettings *)self surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll], v39 == [(TADeviceRecordSettings *)v5 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll]) && ([(TADeviceRecordSettings *)self hyperHELEStagingInterval], v41 = v40, [(TADeviceRecordSettings *)v5 hyperHELEStagingInterval], v41 == v42))
      {
        [(TADeviceRecordSettings *)self hyperStagingInterval];
        v44 = v43;
        [(TADeviceRecordSettings *)v5 hyperStagingInterval];
        v46 = v44 == v45;
      }

      else
      {
LABEL_23:
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
    }
  }

  return v46;
}

- (TADeviceRecordSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"ExpiryInterval"];
  v35 = v5;
  [coderCopy decodeDoubleForKey:@"FutureExpiryInterval"];
  v34 = v6;
  [coderCopy decodeDoubleForKey:@"PurgeInterval"];
  v33 = v7;
  [coderCopy decodeDoubleForKey:@"KeepAliveInterval"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"MinStagingInterval"];
  v11 = v10;
  v12 = [coderCopy decodeIntegerForKey:@"BackstopHour"];
  v13 = [coderCopy decodeIntegerForKey:@"KeyRollHour"];
  [coderCopy decodeDoubleForKey:@"ScanInterval"];
  v15 = v14;
  v16 = [coderCopy decodeIntegerForKey:@"SurfaceImmediatelyBeepOnMove"] != 0;
  v17 = [coderCopy decodeIntegerForKey:@"surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll"] != 0;
  [coderCopy decodeDoubleForKey:@"MaxExpectedHELEWildInterval"];
  v19 = v18;
  [coderCopy decodeDoubleForKey:@"MaxExpectedDurianWildInterval"];
  v21 = v20;
  v22 = [coderCopy decodeBoolForKey:@"HELEImmediate"];
  [coderCopy decodeDoubleForKey:@"MinHELEStagingInterval"];
  v24 = v23;
  v25 = [coderCopy decodeIntegerForKey:@"HELEBackstopHour"];
  v26 = [coderCopy decodeIntegerForKey:@"surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll"] != 0;
  [coderCopy decodeDoubleForKey:@"HyperHELEStagingInterval"];
  v28 = v27;
  [coderCopy decodeDoubleForKey:@"HyperStagingInterval"];
  v30 = v29;

  LOBYTE(v32) = v26;
  return [(TADeviceRecordSettings *)self initWithExpiryTimeInterval:v12 futureExpiryTimeInterval:v13 purgeTimeInterval:v16 keepAliveInterval:v17 minimumStagingInterval:v22 stagingBackstopHour:v25 assumedKeyRollHour:v35 scanInterval:v34 surfaceImmediatelyBeepOnMove:v33 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v9 maxExpectedHELEWildInterval:v11 maxExpectedDurianWildInterval:v15 shouldAlertHELEImmediatelyForImmediateTypes:v19 minimumHELEStagingInterval:v21 stagingHELEBackstopHour:v24 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v32 hyperHELEStagingInterval:v28 hyperStagingInterval:v30];
}

- (void)encodeWithCoder:(id)coder
{
  expiryTimeInterval = self->_expiryTimeInterval;
  coderCopy = coder;
  [coderCopy encodeDouble:@"ExpiryInterval" forKey:expiryTimeInterval];
  [coderCopy encodeDouble:@"FutureExpiryInterval" forKey:self->_futureExpiryTimeInterval];
  [coderCopy encodeDouble:@"PurgeInterval" forKey:self->_purgeTimeInterval];
  [coderCopy encodeDouble:@"KeepAliveInterval" forKey:self->_keepAliveInterval];
  [coderCopy encodeDouble:@"MinStagingInterval" forKey:self->_minimumStagingInterval];
  [coderCopy encodeInteger:self->_stagingBackstopHour forKey:@"BackstopHour"];
  [coderCopy encodeInteger:self->_assumedKeyRollHour forKey:@"KeyRollHour"];
  [coderCopy encodeDouble:@"ScanInterval" forKey:self->_scanInterval];
  [coderCopy encodeInteger:self->_surfaceImmediatelyBeepOnMove forKey:@"SurfaceImmediatelyBeepOnMove"];
  [coderCopy encodeInteger:self->_surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll forKey:@"surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  [coderCopy encodeDouble:@"MaxExpectedHELEWildInterval" forKey:self->_maxExpectedHELEWildInterval];
  [coderCopy encodeDouble:@"MaxExpectedDurianWildInterval" forKey:self->_maxExpectedDurianWildInterval];
  [coderCopy encodeBool:self->_shouldAlertHELEImmediatelyForImmediateTypes forKey:@"HELEImmediate"];
  [coderCopy encodeDouble:@"MinHELEStagingInterval" forKey:self->_minimumHELEStagingInterval];
  [coderCopy encodeInteger:self->_stagingHELEBackstopHour forKey:@"HELEBackstopHour"];
  [coderCopy encodeInteger:self->_surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll forKey:@"surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  [coderCopy encodeDouble:@"HyperHELEStagingInterval" forKey:self->_hyperHELEStagingInterval];
  [coderCopy encodeDouble:@"HyperStagingInterval" forKey:self->_hyperStagingInterval];
}

@end
@interface TADeviceRecordSettings
- (BOOL)isEqual:(id)a3;
- (TADeviceRecordSettings)initWithCoder:(id)a3;
- (TADeviceRecordSettings)initWithExpiryTimeInterval:(double)a3 futureExpiryTimeInterval:(double)a4 purgeTimeInterval:(double)a5 keepAliveInterval:(double)a6 minimumStagingInterval:(double)a7 stagingBackstopHour:(unint64_t)a8 assumedKeyRollHour:(unint64_t)a9 scanInterval:(double)a10 surfaceImmediatelyBeepOnMove:(BOOL)a11 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)a12 maxExpectedHELEWildInterval:(double)a13 maxExpectedDurianWildInterval:(double)a14 shouldAlertHELEImmediatelyForImmediateTypes:(BOOL)a15 minimumHELEStagingInterval:(double)a16 stagingHELEBackstopHour:(unint64_t)a17 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)a18 hyperHELEStagingInterval:(double)a19 hyperStagingInterval:(double)a20;
- (TADeviceRecordSettings)initWithExpiryTimeIntervalOrDefault:(id)a3 futureExpiryTimeIntervalOrDefault:(id)a4 purgeTimeIntervalOrDefault:(id)a5 keepAliveIntervalOrDefault:(id)a6 minimumStagingIntervalOrDefault:(id)a7 stagingBackstopHourOrDefault:(id)a8 assumedKeyRollHourOrDefault:(id)a9 scanIntervalOrDefault:(id)a10 surfaceImmediatelyBeepOnMoveOrDefault:(id)a11 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)a12 maxExpectedHELEWildIntervalOrDefault:(id)a13 maxExpectedDurianWildIntervalOrDefault:(id)a14 shouldAlertHELEImmediatelyForImmediateTypesOrDefault:(id)a15 minimumHELEStagingIntervalOrDefault:(id)a16 stagingHELEBackstopHourOrDefault:(id)a17 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)a18 hyperHELEStagingIntervalOrDefault:(id)a19 hyperStagingIntervalOrDefault:(id)a20;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TADeviceRecordSettings

- (TADeviceRecordSettings)initWithExpiryTimeInterval:(double)a3 futureExpiryTimeInterval:(double)a4 purgeTimeInterval:(double)a5 keepAliveInterval:(double)a6 minimumStagingInterval:(double)a7 stagingBackstopHour:(unint64_t)a8 assumedKeyRollHour:(unint64_t)a9 scanInterval:(double)a10 surfaceImmediatelyBeepOnMove:(BOOL)a11 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)a12 maxExpectedHELEWildInterval:(double)a13 maxExpectedDurianWildInterval:(double)a14 shouldAlertHELEImmediatelyForImmediateTypes:(BOOL)a15 minimumHELEStagingInterval:(double)a16 stagingHELEBackstopHour:(unint64_t)a17 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:(BOOL)a18 hyperHELEStagingInterval:(double)a19 hyperStagingInterval:(double)a20
{
  v35.receiver = self;
  v35.super_class = TADeviceRecordSettings;
  result = [(TADeviceRecordSettings *)&v35 init];
  if (result)
  {
    result->_expiryTimeInterval = a3;
    result->_futureExpiryTimeInterval = a4;
    result->_purgeTimeInterval = a5;
    result->_keepAliveInterval = a6;
    result->_minimumStagingInterval = a7;
    result->_stagingBackstopHour = a8;
    result->_assumedKeyRollHour = a9;
    result->_surfaceImmediatelyBeepOnMove = a11;
    result->_surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll = a12;
    result->_scanInterval = a10;
    result->_maxExpectedHELEWildInterval = a13;
    result->_shouldAlertHELEImmediatelyForImmediateTypes = a15;
    result->_maxExpectedDurianWildInterval = a14;
    result->_minimumHELEStagingInterval = a16;
    result->_stagingHELEBackstopHour = a17;
    result->_surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll = a18;
    result->_hyperHELEStagingInterval = a19;
    result->_hyperStagingInterval = a20;
  }

  return result;
}

- (TADeviceRecordSettings)initWithExpiryTimeIntervalOrDefault:(id)a3 futureExpiryTimeIntervalOrDefault:(id)a4 purgeTimeIntervalOrDefault:(id)a5 keepAliveIntervalOrDefault:(id)a6 minimumStagingIntervalOrDefault:(id)a7 stagingBackstopHourOrDefault:(id)a8 assumedKeyRollHourOrDefault:(id)a9 scanIntervalOrDefault:(id)a10 surfaceImmediatelyBeepOnMoveOrDefault:(id)a11 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)a12 maxExpectedHELEWildIntervalOrDefault:(id)a13 maxExpectedDurianWildIntervalOrDefault:(id)a14 shouldAlertHELEImmediatelyForImmediateTypesOrDefault:(id)a15 minimumHELEStagingIntervalOrDefault:(id)a16 stagingHELEBackstopHourOrDefault:(id)a17 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:(id)a18 hyperHELEStagingIntervalOrDefault:(id)a19 hyperStagingIntervalOrDefault:(id)a20
{
  v78 = a3;
  v77 = a4;
  v76 = a5;
  v71 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v75 = a10;
  v28 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v74 = a16;
  v73 = a17;
  v72 = a18;
  v79 = a19;
  v33 = a20;
  if (v78)
  {
    [v78 doubleValue];
  }

  else
  {
    *&v34 = 90000.0;
  }

  v67 = *&v34;
  if (v77)
  {
    [v77 doubleValue];
  }

  else
  {
    *&v35 = 86400.0;
  }

  v66 = *&v35;
  if (v76)
  {
    [v76 doubleValue];
  }

  else
  {
    *&v36 = 3600.0;
  }

  v65 = *&v36;
  v68 = v33;
  if (v71)
  {
    [v71 doubleValue];
    v38 = v37;
  }

  else
  {
    v38 = 7200.0;
  }

  if (v25)
  {
    [v25 doubleValue];
    v40 = v39;
    if (v26)
    {
LABEL_15:
      v41 = [v26 unsignedIntValue];
      goto LABEL_18;
    }
  }

  else
  {
    v40 = 28800.0;
    if (v26)
    {
      goto LABEL_15;
    }
  }

  v41 = 22;
LABEL_18:
  v64 = v41;
  if (v27)
  {
    v42 = [v27 unsignedIntValue];
  }

  else
  {
    v42 = 4;
  }

  v63 = v42;
  if (v75)
  {
    [v75 doubleValue];
    v44 = v43;
    if (v28)
    {
LABEL_23:
      v62 = [v28 BOOLValue];
      goto LABEL_26;
    }
  }

  else
  {
    v44 = 3600.0;
    if (v28)
    {
      goto LABEL_23;
    }
  }

  v62 = 1;
LABEL_26:
  if (v29)
  {
    v61 = [v29 BOOLValue];
  }

  else
  {
    v61 = 1;
  }

  if (v30)
  {
    [v30 doubleValue];
    v46 = v45;
  }

  else
  {
    v46 = 3600.0;
  }

  if (v31)
  {
    [v31 doubleValue];
    v48 = v47;
  }

  else
  {
    v48 = 960.0;
  }

  v69 = v26;
  if (v32)
  {
    v49 = [v32 BOOLValue];
  }

  else
  {
    v49 = 1;
  }

  if (v74)
  {
    [v74 doubleValue];
    v51 = v50;
  }

  else
  {
    v51 = 0x40DC200000000000;
  }

  if (v73)
  {
    v52 = [v73 unsignedIntValue];
  }

  else
  {
    v52 = 22;
  }

  if (v72)
  {
    v53 = [v72 BOOLValue];
  }

  else
  {
    v53 = 1;
  }

  v54 = 0x40AC200000000000;
  v55 = 0x40AC200000000000;
  if (v79)
  {
    [v79 doubleValue];
    v55 = v56;
  }

  if (v68)
  {
    [v68 doubleValue];
    v54 = v57;
  }

  LOBYTE(v60) = v53;
  v58 = [(TADeviceRecordSettings *)self initWithExpiryTimeInterval:v64 futureExpiryTimeInterval:v63 purgeTimeInterval:v62 keepAliveInterval:v61 minimumStagingInterval:v49 stagingBackstopHour:v52 assumedKeyRollHour:v67 scanInterval:v66 surfaceImmediatelyBeepOnMove:v65 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v38 maxExpectedHELEWildInterval:v40 maxExpectedDurianWildInterval:v44 shouldAlertHELEImmediatelyForImmediateTypes:v46 minimumHELEStagingInterval:v48 stagingHELEBackstopHour:v51 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v60 hyperHELEStagingInterval:v55 hyperStagingInterval:v54];

  return v58;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v46 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

      v21 = [(TADeviceRecordSettings *)self stagingBackstopHour];
      if (v21 != [(TADeviceRecordSettings *)v5 stagingBackstopHour])
      {
        goto LABEL_23;
      }

      v22 = [(TADeviceRecordSettings *)self assumedKeyRollHour];
      if (v22 != [(TADeviceRecordSettings *)v5 assumedKeyRollHour])
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

      v26 = [(TADeviceRecordSettings *)self surfaceImmediatelyBeepOnMove];
      if (v26 != [(TADeviceRecordSettings *)v5 surfaceImmediatelyBeepOnMove])
      {
        goto LABEL_23;
      }

      v27 = [(TADeviceRecordSettings *)self surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll];
      if (v27 != [(TADeviceRecordSettings *)v5 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll])
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

      v34 = [(TADeviceRecordSettings *)self shouldAlertHELEImmediatelyForImmediateTypes];
      if (v34 != [(TADeviceRecordSettings *)v5 shouldAlertHELEImmediatelyForImmediateTypes])
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

      v38 = [(TADeviceRecordSettings *)self stagingHELEBackstopHour];
      if (v38 == [(TADeviceRecordSettings *)v5 stagingHELEBackstopHour]&& (v39 = [(TADeviceRecordSettings *)self surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll], v39 == [(TADeviceRecordSettings *)v5 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll]) && ([(TADeviceRecordSettings *)self hyperHELEStagingInterval], v41 = v40, [(TADeviceRecordSettings *)v5 hyperHELEStagingInterval], v41 == v42))
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

- (TADeviceRecordSettings)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"ExpiryInterval"];
  v35 = v5;
  [v4 decodeDoubleForKey:@"FutureExpiryInterval"];
  v34 = v6;
  [v4 decodeDoubleForKey:@"PurgeInterval"];
  v33 = v7;
  [v4 decodeDoubleForKey:@"KeepAliveInterval"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"MinStagingInterval"];
  v11 = v10;
  v12 = [v4 decodeIntegerForKey:@"BackstopHour"];
  v13 = [v4 decodeIntegerForKey:@"KeyRollHour"];
  [v4 decodeDoubleForKey:@"ScanInterval"];
  v15 = v14;
  v16 = [v4 decodeIntegerForKey:@"SurfaceImmediatelyBeepOnMove"] != 0;
  v17 = [v4 decodeIntegerForKey:@"surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll"] != 0;
  [v4 decodeDoubleForKey:@"MaxExpectedHELEWildInterval"];
  v19 = v18;
  [v4 decodeDoubleForKey:@"MaxExpectedDurianWildInterval"];
  v21 = v20;
  v22 = [v4 decodeBoolForKey:@"HELEImmediate"];
  [v4 decodeDoubleForKey:@"MinHELEStagingInterval"];
  v24 = v23;
  v25 = [v4 decodeIntegerForKey:@"HELEBackstopHour"];
  v26 = [v4 decodeIntegerForKey:@"surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll"] != 0;
  [v4 decodeDoubleForKey:@"HyperHELEStagingInterval"];
  v28 = v27;
  [v4 decodeDoubleForKey:@"HyperStagingInterval"];
  v30 = v29;

  LOBYTE(v32) = v26;
  return [(TADeviceRecordSettings *)self initWithExpiryTimeInterval:v12 futureExpiryTimeInterval:v13 purgeTimeInterval:v16 keepAliveInterval:v17 minimumStagingInterval:v22 stagingBackstopHour:v25 assumedKeyRollHour:v35 scanInterval:v34 surfaceImmediatelyBeepOnMove:v33 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v9 maxExpectedHELEWildInterval:v11 maxExpectedDurianWildInterval:v15 shouldAlertHELEImmediatelyForImmediateTypes:v19 minimumHELEStagingInterval:v21 stagingHELEBackstopHour:v24 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll:v32 hyperHELEStagingInterval:v28 hyperStagingInterval:v30];
}

- (void)encodeWithCoder:(id)a3
{
  expiryTimeInterval = self->_expiryTimeInterval;
  v5 = a3;
  [v5 encodeDouble:@"ExpiryInterval" forKey:expiryTimeInterval];
  [v5 encodeDouble:@"FutureExpiryInterval" forKey:self->_futureExpiryTimeInterval];
  [v5 encodeDouble:@"PurgeInterval" forKey:self->_purgeTimeInterval];
  [v5 encodeDouble:@"KeepAliveInterval" forKey:self->_keepAliveInterval];
  [v5 encodeDouble:@"MinStagingInterval" forKey:self->_minimumStagingInterval];
  [v5 encodeInteger:self->_stagingBackstopHour forKey:@"BackstopHour"];
  [v5 encodeInteger:self->_assumedKeyRollHour forKey:@"KeyRollHour"];
  [v5 encodeDouble:@"ScanInterval" forKey:self->_scanInterval];
  [v5 encodeInteger:self->_surfaceImmediatelyBeepOnMove forKey:@"SurfaceImmediatelyBeepOnMove"];
  [v5 encodeInteger:self->_surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll forKey:@"surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  [v5 encodeDouble:@"MaxExpectedHELEWildInterval" forKey:self->_maxExpectedHELEWildInterval];
  [v5 encodeDouble:@"MaxExpectedDurianWildInterval" forKey:self->_maxExpectedDurianWildInterval];
  [v5 encodeBool:self->_shouldAlertHELEImmediatelyForImmediateTypes forKey:@"HELEImmediate"];
  [v5 encodeDouble:@"MinHELEStagingInterval" forKey:self->_minimumHELEStagingInterval];
  [v5 encodeInteger:self->_stagingHELEBackstopHour forKey:@"HELEBackstopHour"];
  [v5 encodeInteger:self->_surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll forKey:@"surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  [v5 encodeDouble:@"HyperHELEStagingInterval" forKey:self->_hyperHELEStagingInterval];
  [v5 encodeDouble:@"HyperStagingInterval" forKey:self->_hyperStagingInterval];
}

@end
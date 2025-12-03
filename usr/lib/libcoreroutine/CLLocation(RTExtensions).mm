@interface CLLocation(RTExtensions)
- (id)initWithRTCLLocationMO:()RTExtensions;
- (id)initWithRTLocation:()RTExtensions;
- (id)initWithRTLocation:()RTExtensions speed:;
- (id)initWithRTLocation:()RTExtensions speed:type:signalEnvironmentType:integrity:;
- (id)initWithRTLocationOfInterest:()RTExtensions;
- (id)toString;
- (id)toVerboseString;
- (uint64_t)coordinateToString;
- (uint64_t)initWithRTPLocation:()RTExtensions;
- (uint64_t)initWithSMInitiatorLocation:()RTExtensions;
- (uint64_t)initWithSMLocation:()RTExtensions;
@end

@implementation CLLocation(RTExtensions)

- (uint64_t)coordinateToString
{
  v2 = MEMORY[0x277CCACA8];
  [self coordinate];
  v4 = v3;
  [self coordinate];
  return [v2 stringWithFormat:@"<%+.8f, %+.8f>", v4, v5];
}

- (id)toString
{
  v2 = MEMORY[0x277CCACA8];
  [self coordinate];
  v24 = v3;
  [self coordinate];
  v5 = v4;
  [self horizontalAccuracy];
  v7 = v6;
  [self altitude];
  v9 = v8;
  [self verticalAccuracy];
  v11 = v10;
  [self speed];
  v13 = v12;
  [self speedAccuracy];
  v15 = v14;
  [self course];
  v17 = v16;
  [self courseAccuracy];
  v19 = v18;
  timestamp = [self timestamp];
  stringFromDate = [timestamp stringFromDate];
  v22 = [v2 stringWithFormat:@"<%+.8f, %+.8f> +/- %.2fm alt %.2f +/- %.2fm, speed %.2f +/- %.2fmps, course %.2f +/- %.2fdeg, @ %@, type, %u", v24, v5, v7, v9, v11, v13, v15, v17, v19, stringFromDate, objc_msgSend(self, "type")];

  return v22;
}

- (id)initWithRTLocation:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 latitude];
    v7 = v6;
    [v5 longitude];
    v9 = CLLocationCoordinate2DMake(v7, v8);
    [v5 horizontalUncertainty];
    v11 = v10;
    date = [v5 date];
    self = [self initWithCoordinate:date altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:0.0 timestamp:{v11, -1.0}];

    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v16, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initWithRTLocation:()RTExtensions speed:
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 latitude];
    v9 = v8;
    [v7 longitude];
    v11 = CLLocationCoordinate2DMake(v9, v10);
    [v7 horizontalUncertainty];
    v13 = v12;
    date = [v7 date];
    self = [self initWithCoordinate:date altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 course:v13 speed:-1.0 timestamp:{0.0, a2}];

    selfCopy = self;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v18, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initWithRTLocation:()RTExtensions speed:type:signalEnvironmentType:integrity:
{
  v12 = a4;
  if (!v12)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: location";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_13;
  }

  if (a5 >= 0xE)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: type >= kCLLocationType_Unknown && type < kCLLocationType_Max";
    goto LABEL_12;
  }

  if (a6 >= 7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Invalid parameter not satisfying: signalEnvironmentType >= kCLClientSignalEnvUnavailable && signalEnvironmentType <= kCLClientSignalEnvFoliage";
      goto LABEL_12;
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_14;
  }

  v28 = 0u;
  memset(v29, 0, 28);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *buf = 0u;
  v13 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:v12 speed:a2];
  v14 = v13;
  if (v13)
  {
    [v13 clientLocation];
  }

  else
  {
    v28 = 0u;
    memset(v29, 0, 28);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *buf = 0u;
  }

  HIDWORD(v29[0]) = a6;
  LODWORD(v27) = a5;
  LODWORD(v29[0]) = a7;
  v19[6] = v27;
  v19[7] = v28;
  v20[0] = v29[0];
  *(v20 + 12) = *(v29 + 12);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = *buf;
  v19[1] = v22;
  self = [self initWithClientLocation:v19];
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)initWithRTLocationOfInterest:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    location = [v4 location];
    [location latitude];
    v8 = v7;
    location2 = [v5 location];
    [location2 longitude];
    v11 = CLLocationCoordinate2DMake(v8, v10);
    location3 = [v5 location];
    [location3 altitude];
    v14 = v13;
    location4 = [v5 location];
    [location4 horizontalUncertainty];
    v17 = v16;
    location5 = [v5 location];
    [location5 verticalUncertainty];
    v20 = v19;
    date = [MEMORY[0x277CBEAA8] date];
    self = [self initWithCoordinate:date altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:v14 timestamp:{v17, v20}];

    selfCopy = self;
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loi", v25, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)initWithRTPLocation:()RTExtensions
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D01160]);
    [v4 latitude];
    v7 = v6;
    [v4 longitude];
    v9 = v8;
    [v4 uncertainty];
    v11 = v10;
    v12 = MEMORY[0x277CBEAA8];
    [v4 timestamp];
    v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    v14 = [v5 initWithLatitude:v13 longitude:v7 horizontalUncertainty:v9 date:v11];

    v15 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:v14];
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v18, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)initWithRTCLLocationMO:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 courseAccuracy];
    v6 = -1.0;
    v8 = v7 == 0.0;
    v9 = -1.0;
    if (!v8)
    {
      [v5 courseAccuracy];
    }

    v37 = v9;
    [v5 speedAccuracy];
    if (v10 != 0.0)
    {
      [v5 speedAccuracy];
      v6 = v11;
    }

    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    [v5 latitude];
    v14 = v13;
    [v5 longitude];
    v16 = CLLocationCoordinate2DMake(v14, v15);
    [v5 altitude];
    v18 = v17;
    [v5 horizontalAccuracy];
    v20 = v19;
    [v5 verticalAccuracy];
    v22 = v21;
    [v5 course];
    v24 = v23;
    [v5 speed];
    v26 = v25;
    timestamp = [v5 timestamp];
    v28 = [v12 initWithCoordinate:timestamp altitude:v16.latitude horizontalAccuracy:v16.longitude verticalAccuracy:v18 course:v20 courseAccuracy:v22 speed:v24 speedAccuracy:v37 timestamp:{v26, *&v6}];

    v47 = 0u;
    memset(v48, 0, 28);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *buf = 0u;
    if (v28)
    {
      [v28 clientLocation];
    }

    type = [v5 type];
    if (type)
    {
      type2 = [v5 type];
      LODWORD(v46) = [type2 unsignedIntValue];
    }

    else
    {
      LODWORD(v46) = 0;
    }

    signalEnvironmentType = [v5 signalEnvironmentType];
    if (signalEnvironmentType)
    {
      signalEnvironmentType2 = [v5 signalEnvironmentType];
      HIDWORD(v48[0]) = [signalEnvironmentType2 unsignedIntValue];
    }

    else
    {
      HIDWORD(v48[0]) = 0;
    }

    integrity = [v5 integrity];
    if (integrity)
    {
      integrity2 = [v5 integrity];
      LODWORD(v48[0]) = [integrity2 unsignedIntValue];
    }

    else
    {
      LODWORD(v48[0]) = *MEMORY[0x277CE4290];
    }

    v38[6] = v46;
    v38[7] = v47;
    v39[0] = v48[0];
    *(v39 + 12) = *(v48 + 12);
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[5] = v45;
    v38[0] = *buf;
    v38[1] = v41;
    self = [self initWithClientLocation:v38];
    selfCopy = self;
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationMO", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)initWithSMLocation:()RTExtensions
{
  v4 = MEMORY[0x277CE41F8];
  v5 = a3;
  v6 = [v4 alloc];
  [v5 latitude];
  v8 = v7;
  [v5 longitude];
  v10 = CLLocationCoordinate2DMake(v8, v9);
  [v5 altitude];
  v12 = v11;
  [v5 hunc];
  v14 = v13;
  [v5 vunc];
  v16 = v15;
  date = [v5 date];

  v18 = [v6 initWithCoordinate:date altitude:v10.latitude horizontalAccuracy:v10.longitude verticalAccuracy:v12 timestamp:{v14, v16}];
  return v18;
}

- (uint64_t)initWithSMInitiatorLocation:()RTExtensions
{
  v4 = MEMORY[0x277CE41F8];
  v5 = a3;
  v6 = [v4 alloc];
  [v5 latitude];
  v8 = v7;
  [v5 longitude];
  v10 = CLLocationCoordinate2DMake(v8, v9);
  [v5 altitude];
  v12 = v11;
  [v5 hunc];
  v14 = v13;
  [v5 vunc];
  v16 = v15;
  date = [v5 date];

  v18 = [v6 initWithCoordinate:date altitude:v10.latitude horizontalAccuracy:v10.longitude verticalAccuracy:v12 timestamp:{v14, v16}];
  return v18;
}

- (id)toVerboseString
{
  sourceInformation = [self sourceInformation];
  if (sourceInformation)
  {
    sourceInformation2 = [self sourceInformation];
    isSimulatedBySoftware = [sourceInformation2 isSimulatedBySoftware];
  }

  else
  {
    isSimulatedBySoftware = -1;
  }

  sourceInformation3 = [self sourceInformation];
  if (sourceInformation3)
  {
    sourceInformation4 = [self sourceInformation];
    isProducedByAccessory = [sourceInformation4 isProducedByAccessory];
  }

  else
  {
    isProducedByAccessory = -1;
  }

  v8 = MEMORY[0x277CCACA8];
  [self coordinate];
  v35 = v9;
  [self coordinate];
  v34 = v10;
  [self altitude];
  v12 = v11;
  [self horizontalAccuracy];
  v14 = v13;
  [self verticalAccuracy];
  v16 = v15;
  [self speed];
  v18 = v17;
  [self speedAccuracy];
  v20 = v19;
  [self course];
  v22 = v21;
  [self courseAccuracy];
  v24 = v23;
  type = [self type];
  integrity = [self integrity];
  timestamp = [self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v29 = v28;
  timestamp2 = [self timestamp];
  stringFromDate = [timestamp2 stringFromDate];
  v32 = [v8 stringWithFormat:@"lat, % 12.9f, lon, % 12.9f, alt, % 9.3f, hacc, % 9.3f, vacc, % 9.3f, speed, % 9.3f, sacc, % 9.3f, course, % 9.3f, cacc, % 9.3f, type, %3d, integrity, %3d, simulated, %+3ld, accessory, %+3ld, timestamp, %.3f, date, %@", v35, v34, v12, v14, v16, v18, v20, v22, v24, type, integrity, isSimulatedBySoftware, isProducedByAccessory, v29, stringFromDate];

  return v32;
}

@end
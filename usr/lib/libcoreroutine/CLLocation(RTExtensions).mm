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
  [a1 coordinate];
  v4 = v3;
  [a1 coordinate];
  return [v2 stringWithFormat:@"<%+.8f, %+.8f>", v4, v5];
}

- (id)toString
{
  v2 = MEMORY[0x277CCACA8];
  [a1 coordinate];
  v24 = v3;
  [a1 coordinate];
  v5 = v4;
  [a1 horizontalAccuracy];
  v7 = v6;
  [a1 altitude];
  v9 = v8;
  [a1 verticalAccuracy];
  v11 = v10;
  [a1 speed];
  v13 = v12;
  [a1 speedAccuracy];
  v15 = v14;
  [a1 course];
  v17 = v16;
  [a1 courseAccuracy];
  v19 = v18;
  v20 = [a1 timestamp];
  v21 = [v20 stringFromDate];
  v22 = [v2 stringWithFormat:@"<%+.8f, %+.8f> +/- %.2fm alt %.2f +/- %.2fm, speed %.2f +/- %.2fmps, course %.2f +/- %.2fdeg, @ %@, type, %u", v24, v5, v7, v9, v11, v13, v15, v17, v19, v21, objc_msgSend(a1, "type")];

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
    v12 = [v5 date];
    a1 = [a1 initWithCoordinate:v12 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:0.0 timestamp:{v11, -1.0}];

    v13 = a1;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v16, 2u);
    }

    v13 = 0;
  }

  return v13;
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
    v14 = [v7 date];
    a1 = [a1 initWithCoordinate:v14 altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:0.0 course:v13 speed:-1.0 timestamp:{0.0, a2}];

    v15 = a1;
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", v18, 2u);
    }

    v15 = 0;
  }

  return v15;
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

    v17 = 0;
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
  a1 = [a1 initWithClientLocation:v19];
  v17 = a1;
LABEL_14:

  return v17;
}

- (id)initWithRTLocationOfInterest:()RTExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 location];
    [v6 latitude];
    v8 = v7;
    v9 = [v5 location];
    [v9 longitude];
    v11 = CLLocationCoordinate2DMake(v8, v10);
    v12 = [v5 location];
    [v12 altitude];
    v14 = v13;
    v15 = [v5 location];
    [v15 horizontalUncertainty];
    v17 = v16;
    v18 = [v5 location];
    [v18 verticalUncertainty];
    v20 = v19;
    v21 = [MEMORY[0x277CBEAA8] date];
    a1 = [a1 initWithCoordinate:v21 altitude:v11.latitude horizontalAccuracy:v11.longitude verticalAccuracy:v14 timestamp:{v17, v20}];

    v22 = a1;
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loi", v25, 2u);
    }

    v22 = 0;
  }

  return v22;
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
    v27 = [v5 timestamp];
    v28 = [v12 initWithCoordinate:v27 altitude:v16.latitude horizontalAccuracy:v16.longitude verticalAccuracy:v18 course:v20 courseAccuracy:v22 speed:v24 speedAccuracy:v37 timestamp:{v26, *&v6}];

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

    v29 = [v5 type];
    if (v29)
    {
      v30 = [v5 type];
      LODWORD(v46) = [v30 unsignedIntValue];
    }

    else
    {
      LODWORD(v46) = 0;
    }

    v32 = [v5 signalEnvironmentType];
    if (v32)
    {
      v33 = [v5 signalEnvironmentType];
      HIDWORD(v48[0]) = [v33 unsignedIntValue];
    }

    else
    {
      HIDWORD(v48[0]) = 0;
    }

    v34 = [v5 integrity];
    if (v34)
    {
      v35 = [v5 integrity];
      LODWORD(v48[0]) = [v35 unsignedIntValue];
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
    a1 = [a1 initWithClientLocation:v38];
    v31 = a1;
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationMO", buf, 2u);
    }

    v31 = 0;
  }

  return v31;
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
  v17 = [v5 date];

  v18 = [v6 initWithCoordinate:v17 altitude:v10.latitude horizontalAccuracy:v10.longitude verticalAccuracy:v12 timestamp:{v14, v16}];
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
  v17 = [v5 date];

  v18 = [v6 initWithCoordinate:v17 altitude:v10.latitude horizontalAccuracy:v10.longitude verticalAccuracy:v12 timestamp:{v14, v16}];
  return v18;
}

- (id)toVerboseString
{
  v2 = [a1 sourceInformation];
  if (v2)
  {
    v3 = [a1 sourceInformation];
    v4 = [v3 isSimulatedBySoftware];
  }

  else
  {
    v4 = -1;
  }

  v5 = [a1 sourceInformation];
  if (v5)
  {
    v6 = [a1 sourceInformation];
    v7 = [v6 isProducedByAccessory];
  }

  else
  {
    v7 = -1;
  }

  v8 = MEMORY[0x277CCACA8];
  [a1 coordinate];
  v35 = v9;
  [a1 coordinate];
  v34 = v10;
  [a1 altitude];
  v12 = v11;
  [a1 horizontalAccuracy];
  v14 = v13;
  [a1 verticalAccuracy];
  v16 = v15;
  [a1 speed];
  v18 = v17;
  [a1 speedAccuracy];
  v20 = v19;
  [a1 course];
  v22 = v21;
  [a1 courseAccuracy];
  v24 = v23;
  v25 = [a1 type];
  v26 = [a1 integrity];
  v27 = [a1 timestamp];
  [v27 timeIntervalSinceReferenceDate];
  v29 = v28;
  v30 = [a1 timestamp];
  v31 = [v30 stringFromDate];
  v32 = [v8 stringWithFormat:@"lat, % 12.9f, lon, % 12.9f, alt, % 9.3f, hacc, % 9.3f, vacc, % 9.3f, speed, % 9.3f, sacc, % 9.3f, course, % 9.3f, cacc, % 9.3f, type, %3d, integrity, %3d, simulated, %+3ld, accessory, %+3ld, timestamp, %.3f, date, %@", v35, v34, v12, v14, v16, v18, v20, v22, v24, v25, v26, v4, v7, v29, v31];

  return v32;
}

@end
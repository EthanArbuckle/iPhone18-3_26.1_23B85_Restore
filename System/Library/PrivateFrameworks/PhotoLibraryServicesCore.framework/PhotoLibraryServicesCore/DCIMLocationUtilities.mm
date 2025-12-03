@interface DCIMLocationUtilities
+ (id)_sharedGPSDateAndTimestampFormatter;
+ (id)locationFromImageProperties:(id)properties;
@end

@implementation DCIMLocationUtilities

+ (id)locationFromImageProperties:(id)properties
{
  v3 = [properties objectForKeyedSubscript:*MEMORY[0x1E696DBF0]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC18]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC28]];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC20]];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC30]];
  v8 = v7;
  if (v4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v6 == 0 || v7 == 0)
  {
    v12 = 0;
  }

  else
  {
    [v4 doubleValue];
    v14 = v13;
    [v5 doubleValue];
    v16 = v15;
    v17 = [v6 isEqualToString:@"S"];
    v18 = -fabs(v14);
    if (v17)
    {
      v14 = v18;
    }

    v19 = [v8 isEqualToString:@"W"];
    v20 = -fabs(v16);
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    v22 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DB88]];
    v23 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DB90]];
    v24 = v23;
    v25 = 0.0;
    v26 = -1.0;
    if (v22)
    {
      v27 = v23 == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = 0.0;
    if (!v27)
    {
      [v22 doubleValue];
      v28 = v29;
      v26 = 0.0;
      if ([v24 intValue])
      {
        v28 = -fabs(v28);
      }
    }

    v30 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DBB0]];
    v31 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DBB8]];
    v56 = v31;
    if (v30 && [v31 isEqualToString:@"T"])
    {
      [v30 doubleValue];
      v25 = v32;
    }

    v33 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC58]];
    v34 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC60]];
    v55 = v33;
    v35 = v33;
    v36 = v34;
    [v35 doubleValue];
    v38 = v37;
    v57 = v30;
    if ([v36 isEqualToString:@"M"])
    {
      v38 = v38 * 1.609344;
    }

    else if ([v36 isEqualToString:@"N"])
    {
      v38 = v38 * 1.852;
    }

    v39 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DBA8]];
    v40 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DC70]];
    v53 = v39;
    v54 = v36;
    if ([v40 length] && objc_msgSend(v39, "length"))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v39, v40];
      [objc_opt_class() _sharedGPSDateAndTimestampFormatter];
      v52 = v24;
      v42 = v8;
      v43 = v6;
      v44 = v5;
      v45 = v22;
      v47 = v46 = v4;
      v48 = [v47 dateFromString:v41];

      v4 = v46;
      v22 = v45;
      v5 = v44;
      v6 = v43;
      v8 = v42;
      v24 = v52;
    }

    else
    {
      v48 = 0;
    }

    v59 = CLLocationCoordinate2DMake(v14, v21);
    latitude = v59.latitude;
    longitude = v59.longitude;
    if (CLLocationCoordinate2DIsValid(v59))
    {
      v12 = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:v48 altitude:latitude horizontalAccuracy:longitude verticalAccuracy:v28 course:0.0 speed:v26 timestamp:{v25, v38}];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)_sharedGPSDateAndTimestampFormatter
{
  if (_sharedGPSDateAndTimestampFormatter_onceToken != -1)
  {
    dispatch_once(&_sharedGPSDateAndTimestampFormatter_onceToken, &__block_literal_global_44);
  }

  v3 = _sharedGPSDateAndTimestampFormatter_formatter;

  return v3;
}

void __60__DCIMLocationUtilities__sharedGPSDateAndTimestampFormatter__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v2 = _sharedGPSDateAndTimestampFormatter_formatter;
  _sharedGPSDateAndTimestampFormatter_formatter = v1;

  v3 = _sharedGPSDateAndTimestampFormatter_formatter;
  v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  [_sharedGPSDateAndTimestampFormatter_formatter setDateFormat:@"yyyy:MM:dd HH:mm:ss.SS"];

  objc_autoreleasePoolPop(v0);
}

@end
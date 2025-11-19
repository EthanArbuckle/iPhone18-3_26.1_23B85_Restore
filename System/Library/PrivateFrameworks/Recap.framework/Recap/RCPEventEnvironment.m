@interface RCPEventEnvironment
+ (id)currentEnvironment;
- (RCPEventEnvironment)init;
- (RCPEventEnvironment)initWithCoder:(id)a3;
- (double)speedFactorToAdjustRecordingEnvironment:(id)a3;
- (double)timeIntervalSince1970ForMachAbsoluteTime:(unint64_t)a3;
- (id)_buttonConfigurationDescription;
- (id)description;
- (id)timeDescriptionForEvent:(id)a3;
- (unint64_t)machAbsoluteTimeForTimeIntervalSince1970:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setStartDate:(id)a3 machAbsoluteTime:(unint64_t)a4;
@end

@implementation RCPEventEnvironment

+ (id)currentEnvironment
{
  v2 = objc_opt_new();

  return v2;
}

- (RCPEventEnvironment)init
{
  v18.receiver = self;
  v18.super_class = RCPEventEnvironment;
  v2 = [(RCPEventEnvironment *)&v18 init];
  if (v2)
  {
    info = 0;
    mach_timebase_info(&info);
    numer = info.numer;
    denom = info.denom;
    v2->_machTimeDenominator = info.denom;
    v2->_machTimeNumerator = numer;
    v2->_timeScale = numer / denom;
    v5 = copyMobileGestaltAnswer();
    [(RCPEventEnvironment *)v2 setProductType:v5];

    v6 = copyMobileGestaltAnswer();
    [(RCPEventEnvironment *)v2 setProductName:v6];

    v7 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v7 operatingSystemVersionString];

    v9 = [v8 stringByReplacingOccurrencesOfString:@"Version " withString:&stru_28741F8C0];

    v10 = [v9 stringByReplacingOccurrencesOfString:@"Build " withString:&stru_28741F8C0];

    [(RCPEventEnvironment *)v2 setProductVersion:v10];
    [(RCPEventEnvironment *)v2 setRecapVersion:@"1.4"];
    [(RCPEventEnvironment *)v2 setPointerScanRate:120];
    if (MGGetBoolAnswer())
    {
      v11 = 120;
    }

    else
    {
      v11 = 60;
    }

    [(RCPEventEnvironment *)v2 setTouchScanRate:v11];
    v12 = _RCPActiveScreens();
    [(RCPEventEnvironment *)v2 setScreens:v12];

    v13 = [MEMORY[0x277CF0CA8] sharedInstance];
    v14 = [v13 homeButtonType] + 1;
    if (v14 <= 3)
    {
      [(RCPEventEnvironment *)v2 setHomeButtonHardware:qword_261A03E20[v14]];
    }

    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSince1970];
    [(RCPEventEnvironment *)v2 setStartTimeAsIntervalSince1970:?];

    [(RCPEventEnvironment *)v2 setStartTimeAsMachTimestamp:mach_absolute_time()];
  }

  return v2;
}

- (double)speedFactorToAdjustRecordingEnvironment:(id)a3
{
  v4 = a3;
  [(RCPEventEnvironment *)self timeScale];
  v6 = v5;
  [v4 timeScale];
  v8 = v7;

  return v6 / v8;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeInt64:self->_machTimeDenominator forKey:@"denom"];
  [v13 encodeInt64:self->_machTimeNumerator forKey:@"num"];
  [v13 encodeBool:-[RCPEventEnvironment isSimulator](self forKey:{"isSimulator"), @"isSim"}];
  [v13 encodeInt:self->_touchScanRate forKey:@"touchScanRate"];
  [v13 encodeInt:self->_touchScanRate forKey:@"pointerScanRate"];
  v4 = [(RCPEventEnvironment *)self screens];
  v5 = [v4 firstObject];
  [v5 pointSize];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v15);

  [v13 encodeObject:DictionaryRepresentation forKey:@"screenSize"];
  v7 = [(RCPEventEnvironment *)self screens];
  [v13 encodeObject:v7 forKey:@"screens"];

  v8 = [(RCPEventEnvironment *)self productType];
  [v13 encodeObject:v8 forKey:@"productType"];

  v9 = [(RCPEventEnvironment *)self productName];
  [v13 encodeObject:v9 forKey:@"productName"];

  v10 = [(RCPEventEnvironment *)self productVersion];
  [v13 encodeObject:v10 forKey:@"productVersion"];

  v11 = [(RCPEventEnvironment *)self recapVersion];
  [v13 encodeObject:v11 forKey:@"recapVersion"];

  homeButtonHardware = self->_homeButtonHardware;
  if (homeButtonHardware)
  {
    [v13 encodeInteger:homeButtonHardware forKey:@"homeButtonHardware"];
  }

  [(RCPEventEnvironment *)self startTimeAsIntervalSince1970];
  [v13 encodeDouble:@"startTimeAsIntervalSince1970" forKey:?];
  [v13 encodeInt64:-[RCPEventEnvironment startTimeAsMachTimestamp](self forKey:{"startTimeAsMachTimestamp"), @"startTimeAsMachTimestamp"}];
}

- (RCPEventEnvironment)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RCPEventEnvironment *)self init];
  if (v5)
  {
    v5->_machTimeDenominator = [v4 decodeInt64ForKey:@"denom"];
    v5->_machTimeNumerator = [v4 decodeInt64ForKey:@"num"];
    -[RCPEventEnvironment setIsSimulator:](v5, "setIsSimulator:", [v4 decodeBoolForKey:@"isSim"]);
    if ([v4 requiresSecureCoding])
    {
      [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"screens"];
    }

    else
    {
      [v4 decodeObjectForKey:@"screens"];
    }
    v6 = ;
    screens = v5->_screens;
    v5->_screens = v6;

    if (!v5->_screens)
    {
      v14 = _RCPActiveScreens();
      v15 = [v14 count];

      if (v15)
      {
        v16 = _RCPActiveScreens();
        v17 = [v16 firstObject];
        v24[0] = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        v19 = v5->_screens;
        v5->_screens = v18;

        v23.width = 0.0;
        v23.height = 0.0;
        if (CGSizeMakeWithDictionaryRepresentation([v4 decodeObjectForKey:@"screenSize"], &v23))
        {
          width = v23.width;
          height = v23.height;
          v22 = [(NSArray *)v5->_screens firstObject];
          [v22 setPointSize:{width, height}];
        }
      }
    }

    v8 = [v4 decodeObjectForKey:@"productType"];
    [(RCPEventEnvironment *)v5 setProductType:v8];

    v9 = [v4 decodeObjectForKey:@"productName"];
    [(RCPEventEnvironment *)v5 setProductName:v9];

    v10 = [v4 decodeObjectForKey:@"productVersion"];
    [(RCPEventEnvironment *)v5 setProductVersion:v10];

    v11 = [v4 decodeObjectForKey:@"recapVersion"];
    [(RCPEventEnvironment *)v5 setRecapVersion:v11];

    v12 = [(RCPEventEnvironment *)v5 recapVersion];

    if (!v12)
    {
      [(RCPEventEnvironment *)v5 setRecapVersion:@"1.0"];
    }

    -[RCPEventEnvironment setHomeButtonHardware:](v5, "setHomeButtonHardware:", [v4 decodeIntegerForKey:@"homeButtonHardware"]);
    -[RCPEventEnvironment setTouchScanRate:](v5, "setTouchScanRate:", [v4 decodeIntForKey:@"touchScanRate"]);
    -[RCPEventEnvironment setPointerScanRate:](v5, "setPointerScanRate:", [v4 decodeIntForKey:@"pointerScanRate"]);
    v5->_timeScale = v5->_machTimeNumerator / v5->_machTimeDenominator;
    if ([v4 containsValueForKey:@"startTimeAsMachTimestamp"])
    {
      -[RCPEventEnvironment setStartTimeAsMachTimestamp:](v5, "setStartTimeAsMachTimestamp:", [v4 decodeInt64ForKey:@"startTimeAsMachTimestamp"]);
      [v4 decodeDoubleForKey:@"startTimeAsIntervalSince1970"];
      [(RCPEventEnvironment *)v5 setStartTimeAsIntervalSince1970:?];
    }

    else
    {
      v5->_startTimeAsIntervalSince1970 = 0.0;
      v5->_startTimeAsMachTimestamp = 0;
    }
  }

  return v5;
}

- (void)setStartDate:(id)a3 machAbsoluteTime:(unint64_t)a4
{
  self->_startTimeAsMachTimestamp = a4;
  [a3 timeIntervalSince1970];
  self->_startTimeAsIntervalSince1970 = v5;
}

- (double)timeIntervalSince1970ForMachAbsoluteTime:(unint64_t)a3
{
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:self->_startTimeAsMachTimestamp];
  v6 = v5;
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:a3];
  return self->_startTimeAsIntervalSince1970 + v7 - v6;
}

- (unint64_t)machAbsoluteTimeForTimeIntervalSince1970:(double)a3
{
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:self->_startTimeAsMachTimestamp];
  v6 = v5 + a3 - self->_startTimeAsIntervalSince1970;

  return [(RCPEventEnvironment *)self machAbsoluteTimeForTimeInterval:v6];
}

- (id)_buttonConfigurationDescription
{
  if (self->_homeButtonHardware == 2)
  {
    return @"(H)";
  }

  else
  {
    return @"(h)";
  }
}

- (id)description
{
  v3 = [(RCPEventEnvironment *)self _buttonConfigurationDescription];
  v19 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RCPEventEnvironment *)self productType];
  v7 = [(RCPEventEnvironment *)self productName];
  v8 = [(RCPEventEnvironment *)self productVersion];
  v9 = [(RCPEventEnvironment *)self isSimulator];
  v10 = [(RCPEventEnvironment *)self screens];
  if ([v10 count] == 1)
  {
    v11 = [v10 firstObject];
    v12 = [v11 description];
  }

  else
  {
    v12 = [v10 componentsJoinedByString:{@", "}];
  }

  if (v9)
  {
    v13 = @"Simulator";
  }

  else
  {
    v13 = @"Device";
  }

  [(RCPEventEnvironment *)self timeScale];
  v15 = v14;
  v16 = [(RCPEventEnvironment *)self recapVersion];
  v17 = [v19 stringWithFormat:@"<%@ %p> %@ -- %@ -- %@ -- %@ -- <%@> - %0.5f -- %@%@", v5, self, v6, v7, v8, v13, v12, v15, v3, v16];

  return v17;
}

- (id)timeDescriptionForEvent:(id)a3
{
  v4 = [a3 deliveryTimestamp];
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:v4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f %llu", v5, v4];
  if ([(RCPEventEnvironment *)self hasAbsoluteTimeCorrelation])
  {
    [(RCPEventEnvironment *)self timeIntervalSince1970ForMachAbsoluteTime:v4];
    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
    v10 = [v9 description];
    v11 = [v6 stringByAppendingFormat:@" - %@ - %f", v10, v8];

    v6 = v11;
  }

  return v6;
}

@end
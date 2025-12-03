@interface RCPEventEnvironment
+ (id)currentEnvironment;
- (RCPEventEnvironment)init;
- (RCPEventEnvironment)initWithCoder:(id)coder;
- (double)speedFactorToAdjustRecordingEnvironment:(id)environment;
- (double)timeIntervalSince1970ForMachAbsoluteTime:(unint64_t)time;
- (id)_buttonConfigurationDescription;
- (id)description;
- (id)timeDescriptionForEvent:(id)event;
- (unint64_t)machAbsoluteTimeForTimeIntervalSince1970:(double)since1970;
- (void)encodeWithCoder:(id)coder;
- (void)setStartDate:(id)date machAbsoluteTime:(unint64_t)time;
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

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    operatingSystemVersionString = [processInfo operatingSystemVersionString];

    v9 = [operatingSystemVersionString stringByReplacingOccurrencesOfString:@"Version " withString:&stru_28741F8C0];

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

    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    v14 = [mEMORY[0x277CF0CA8] homeButtonType] + 1;
    if (v14 <= 3)
    {
      [(RCPEventEnvironment *)v2 setHomeButtonHardware:qword_261A03E20[v14]];
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(RCPEventEnvironment *)v2 setStartTimeAsIntervalSince1970:?];

    [(RCPEventEnvironment *)v2 setStartTimeAsMachTimestamp:mach_absolute_time()];
  }

  return v2;
}

- (double)speedFactorToAdjustRecordingEnvironment:(id)environment
{
  environmentCopy = environment;
  [(RCPEventEnvironment *)self timeScale];
  v6 = v5;
  [environmentCopy timeScale];
  v8 = v7;

  return v6 / v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_machTimeDenominator forKey:@"denom"];
  [coderCopy encodeInt64:self->_machTimeNumerator forKey:@"num"];
  [coderCopy encodeBool:-[RCPEventEnvironment isSimulator](self forKey:{"isSimulator"), @"isSim"}];
  [coderCopy encodeInt:self->_touchScanRate forKey:@"touchScanRate"];
  [coderCopy encodeInt:self->_touchScanRate forKey:@"pointerScanRate"];
  screens = [(RCPEventEnvironment *)self screens];
  firstObject = [screens firstObject];
  [firstObject pointSize];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v15);

  [coderCopy encodeObject:DictionaryRepresentation forKey:@"screenSize"];
  screens2 = [(RCPEventEnvironment *)self screens];
  [coderCopy encodeObject:screens2 forKey:@"screens"];

  productType = [(RCPEventEnvironment *)self productType];
  [coderCopy encodeObject:productType forKey:@"productType"];

  productName = [(RCPEventEnvironment *)self productName];
  [coderCopy encodeObject:productName forKey:@"productName"];

  productVersion = [(RCPEventEnvironment *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  recapVersion = [(RCPEventEnvironment *)self recapVersion];
  [coderCopy encodeObject:recapVersion forKey:@"recapVersion"];

  homeButtonHardware = self->_homeButtonHardware;
  if (homeButtonHardware)
  {
    [coderCopy encodeInteger:homeButtonHardware forKey:@"homeButtonHardware"];
  }

  [(RCPEventEnvironment *)self startTimeAsIntervalSince1970];
  [coderCopy encodeDouble:@"startTimeAsIntervalSince1970" forKey:?];
  [coderCopy encodeInt64:-[RCPEventEnvironment startTimeAsMachTimestamp](self forKey:{"startTimeAsMachTimestamp"), @"startTimeAsMachTimestamp"}];
}

- (RCPEventEnvironment)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(RCPEventEnvironment *)self init];
  if (v5)
  {
    v5->_machTimeDenominator = [coderCopy decodeInt64ForKey:@"denom"];
    v5->_machTimeNumerator = [coderCopy decodeInt64ForKey:@"num"];
    -[RCPEventEnvironment setIsSimulator:](v5, "setIsSimulator:", [coderCopy decodeBoolForKey:@"isSim"]);
    if ([coderCopy requiresSecureCoding])
    {
      [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"screens"];
    }

    else
    {
      [coderCopy decodeObjectForKey:@"screens"];
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
        firstObject = [v16 firstObject];
        v24[0] = firstObject;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        v19 = v5->_screens;
        v5->_screens = v18;

        v23.width = 0.0;
        v23.height = 0.0;
        if (CGSizeMakeWithDictionaryRepresentation([coderCopy decodeObjectForKey:@"screenSize"], &v23))
        {
          width = v23.width;
          height = v23.height;
          firstObject2 = [(NSArray *)v5->_screens firstObject];
          [firstObject2 setPointSize:{width, height}];
        }
      }
    }

    v8 = [coderCopy decodeObjectForKey:@"productType"];
    [(RCPEventEnvironment *)v5 setProductType:v8];

    v9 = [coderCopy decodeObjectForKey:@"productName"];
    [(RCPEventEnvironment *)v5 setProductName:v9];

    v10 = [coderCopy decodeObjectForKey:@"productVersion"];
    [(RCPEventEnvironment *)v5 setProductVersion:v10];

    v11 = [coderCopy decodeObjectForKey:@"recapVersion"];
    [(RCPEventEnvironment *)v5 setRecapVersion:v11];

    recapVersion = [(RCPEventEnvironment *)v5 recapVersion];

    if (!recapVersion)
    {
      [(RCPEventEnvironment *)v5 setRecapVersion:@"1.0"];
    }

    -[RCPEventEnvironment setHomeButtonHardware:](v5, "setHomeButtonHardware:", [coderCopy decodeIntegerForKey:@"homeButtonHardware"]);
    -[RCPEventEnvironment setTouchScanRate:](v5, "setTouchScanRate:", [coderCopy decodeIntForKey:@"touchScanRate"]);
    -[RCPEventEnvironment setPointerScanRate:](v5, "setPointerScanRate:", [coderCopy decodeIntForKey:@"pointerScanRate"]);
    v5->_timeScale = v5->_machTimeNumerator / v5->_machTimeDenominator;
    if ([coderCopy containsValueForKey:@"startTimeAsMachTimestamp"])
    {
      -[RCPEventEnvironment setStartTimeAsMachTimestamp:](v5, "setStartTimeAsMachTimestamp:", [coderCopy decodeInt64ForKey:@"startTimeAsMachTimestamp"]);
      [coderCopy decodeDoubleForKey:@"startTimeAsIntervalSince1970"];
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

- (void)setStartDate:(id)date machAbsoluteTime:(unint64_t)time
{
  self->_startTimeAsMachTimestamp = time;
  [date timeIntervalSince1970];
  self->_startTimeAsIntervalSince1970 = v5;
}

- (double)timeIntervalSince1970ForMachAbsoluteTime:(unint64_t)time
{
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:self->_startTimeAsMachTimestamp];
  v6 = v5;
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:time];
  return self->_startTimeAsIntervalSince1970 + v7 - v6;
}

- (unint64_t)machAbsoluteTimeForTimeIntervalSince1970:(double)since1970
{
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:self->_startTimeAsMachTimestamp];
  v6 = v5 + since1970 - self->_startTimeAsIntervalSince1970;

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
  _buttonConfigurationDescription = [(RCPEventEnvironment *)self _buttonConfigurationDescription];
  v19 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  productType = [(RCPEventEnvironment *)self productType];
  productName = [(RCPEventEnvironment *)self productName];
  productVersion = [(RCPEventEnvironment *)self productVersion];
  isSimulator = [(RCPEventEnvironment *)self isSimulator];
  screens = [(RCPEventEnvironment *)self screens];
  if ([screens count] == 1)
  {
    firstObject = [screens firstObject];
    v12 = [firstObject description];
  }

  else
  {
    v12 = [screens componentsJoinedByString:{@", "}];
  }

  if (isSimulator)
  {
    v13 = @"Simulator";
  }

  else
  {
    v13 = @"Device";
  }

  [(RCPEventEnvironment *)self timeScale];
  v15 = v14;
  recapVersion = [(RCPEventEnvironment *)self recapVersion];
  v17 = [v19 stringWithFormat:@"<%@ %p> %@ -- %@ -- %@ -- %@ -- <%@> - %0.5f -- %@%@", v5, self, productType, productName, productVersion, v13, v12, v15, _buttonConfigurationDescription, recapVersion];

  return v17;
}

- (id)timeDescriptionForEvent:(id)event
{
  deliveryTimestamp = [event deliveryTimestamp];
  [(RCPEventEnvironment *)self timeIntervalForMachAbsoluteTime:deliveryTimestamp];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f %llu", v5, deliveryTimestamp];
  if ([(RCPEventEnvironment *)self hasAbsoluteTimeCorrelation])
  {
    [(RCPEventEnvironment *)self timeIntervalSince1970ForMachAbsoluteTime:deliveryTimestamp];
    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
    v10 = [v9 description];
    v11 = [v6 stringByAppendingFormat:@" - %@ - %f", v10, v8];

    v6 = v11;
  }

  return v6;
}

@end
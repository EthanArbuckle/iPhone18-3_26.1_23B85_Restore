@interface TSDgPTPLocalClockPort
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- (BOOL)_hasLocalClockSourceFromNTP;
- (BOOL)_hasLocalFrequencyStabilityLower;
- (BOOL)_hasLocalFrequencyStabilityUpper;
- (BOOL)_hasLocalFrequencyToleranceLower;
- (BOOL)_hasLocalFrequencyToleranceUpper;
- (BOOL)_hasNtpAnchorOffsetNsec;
- (BOOL)_localClockSourceFromNTP;
- (int)_localFrequencyStabilityLower;
- (int)_localFrequencyStabilityUpper;
- (int)_localFrequencyToleranceLower;
- (int)_localFrequencyToleranceUpper;
- (int64_t)_ntpAnchorOffsetNsec;
- (unsigned)_localOscillatorType;
@end

@implementation TSDgPTPLocalClockPort

- (unsigned)_localOscillatorType
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalOscillatorType"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (BOOL)_hasLocalFrequencyToleranceLower
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyToleranceUpper
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyStabilityLower
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyStabilityUpper
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasNtpAnchorOffsetNsec
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"NtpAnchorOffsetNsec"];

  return v3 != 0;
}

- (int64_t)_ntpAnchorOffsetNsec
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"NtpAnchorOffsetNsec"];

  if (v3)
  {
    longLongValue = [v3 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (BOOL)_hasLocalClockSourceFromNTP
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalClockSourceFromNTP"];

  return v3 != 0;
}

- (BOOL)_localClockSourceFromNTP
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalClockSourceFromNTP"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v13[0] = @"IOTimeSyncLocalClockPort";
  v12[0] = @"IOProviderClass";
  v12[1] = @"IOParentMatch";
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncDomain";
  v8 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:identifier];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)diagnosticInfoForService:(id)service
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TSDgPTPLocalClockPort;
  v3 = objc_msgSendSuper2(&v6, "diagnosticInfoForService:", service);
  v4 = [NSNumber numberWithInt:8];
  [v3 setObject:v4 forKeyedSubscript:@"PortType"];

  return v3;
}

@end
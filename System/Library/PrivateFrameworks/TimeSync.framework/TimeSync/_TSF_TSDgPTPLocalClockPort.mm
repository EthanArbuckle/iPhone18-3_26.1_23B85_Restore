@interface _TSF_TSDgPTPLocalClockPort
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

@implementation _TSF_TSDgPTPLocalClockPort

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"IOTimeSyncLocalClockPort";
  v13[0] = @"IOProviderClass";
  v13[1] = @"IOParentMatch";
  v11[0] = @"IOProviderClass";
  v11[1] = @"IOPropertyMatch";
  v12[0] = @"IOTimeSyncDomain";
  v9 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v10 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unsigned)_localOscillatorType
{
  service = [(_TSF_TSDgPTPPort *)self service];
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
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
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
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
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
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
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
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
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
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"NtpAnchorOffsetNsec"];

  return v3 != 0;
}

- (int64_t)_ntpAnchorOffsetNsec
{
  service = [(_TSF_TSDgPTPPort *)self service];
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
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalClockSourceFromNTP"];

  return v3 != 0;
}

- (BOOL)_localClockSourceFromNTP
{
  service = [(_TSF_TSDgPTPPort *)self service];
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

+ (id)diagnosticInfoForService:(id)service
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____TSF_TSDgPTPLocalClockPort;
  v3 = objc_msgSendSuper2(&v6, sel_diagnosticInfoForService_, service);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:8];
  [v3 setObject:v4 forKeyedSubscript:@"PortType"];

  return v3;
}

@end
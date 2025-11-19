@interface TSDgPTPLocalClockPort
+ (id)diagnosticInfoForService:(id)a3;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
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
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalOscillatorType"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyToleranceLower
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyToleranceUpper
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyStabilityLower
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyStabilityUpper
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasNtpAnchorOffsetNsec
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"NtpAnchorOffsetNsec"];

  return v3 != 0;
}

- (int64_t)_ntpAnchorOffsetNsec
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"NtpAnchorOffsetNsec"];

  if (v3)
  {
    v4 = [v3 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalClockSourceFromNTP
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalClockSourceFromNTP"];

  return v3 != 0;
}

- (BOOL)_localClockSourceFromNTP
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalClockSourceFromNTP"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v13[0] = @"IOTimeSyncLocalClockPort";
  v12[0] = @"IOProviderClass";
  v12[1] = @"IOParentMatch";
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncDomain";
  v8 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:a3];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TSDgPTPLocalClockPort;
  v3 = objc_msgSendSuper2(&v6, "diagnosticInfoForService:", a3);
  v4 = [NSNumber numberWithInt:8];
  [v3 setObject:v4 forKeyedSubscript:@"PortType"];

  return v3;
}

@end
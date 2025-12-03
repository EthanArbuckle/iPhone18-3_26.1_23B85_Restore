@interface PLBatteryProperties
+ (id)properties;
- (BOOL)draining;
- (BOOL)fullyCharged;
- (BOOL)gasGaugeEnabled;
- (BOOL)isCharging;
- (BOOL)isCritical;
- (BOOL)isPluggedIn;
- (NSNumber)adapterInfo;
- (PLBatteryProperties)init;
- (PLBatteryProperties)initWithBatteryEntry:(unsigned int)entry;
- (double)capacity;
- (double)chargeAccum;
- (double)currentAbsoluteCapacity;
- (double)currentCapacity;
- (double)dod0;
- (double)fullAvailableCapacity;
- (double)maxCapacity;
- (double)nominalChargeCapacity;
- (double)passedCharge;
- (double)rawCapacity;
- (double)rawCurrentCapacity;
- (double)rawMaxCapacity;
- (id)batteryProperties;
- (id)humanReadableChargingState;
- (id)propertyForKey:(__CFString *)key;
- (int64_t)batteryTemp;
- (int64_t)chargingCurrent;
- (int64_t)current;
- (int64_t)cycleCount;
- (int64_t)designCapacity;
- (int64_t)updateTime;
- (int64_t)voltage;
- (void)dealloc;
@end

@implementation PLBatteryProperties

- (BOOL)isPluggedIn
{
  adapterInfo = [(PLBatteryProperties *)self adapterInfo];

  return [(NSNumber *)adapterInfo BOOLValue];
}

- (NSNumber)adapterInfo
{
  result = [(PLBatteryProperties *)self propertyForKey:@"AdapterDetails"];
  if (result)
  {

    return [(NSNumber *)result objectForKey:@"FamilyCode"];
  }

  return result;
}

- (id)batteryProperties
{
  p_batteryProperties = &self->batteryProperties;
  result = self->batteryProperties;
  if (result)
  {
    return result;
  }

  batteryEntry = self->batteryEntry;
  if (!batteryEntry)
  {
    return 0;
  }

  *p_batteryProperties = 0;
  CFProperties = IORegistryEntryCreateCFProperties(batteryEntry, p_batteryProperties, 0, 0);
  result = *p_batteryProperties;
  if (CFProperties)
  {
    v7 = 1;
  }

  else
  {
    v7 = result == 0;
  }

  if (v7)
  {

    NSLog(&cfstr_UnableToGetPro.isa, CFProperties);
    return 0;
  }

  return result;
}

- (PLBatteryProperties)init
{
  v3 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  v5 = MatchingService;
  v6 = [(PLBatteryProperties *)self initWithBatteryEntry:MatchingService];
  IOObjectRelease(v5);
  return v6;
}

- (double)currentCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"CurrentCapacity"];

  [v2 doubleValue];
  return result;
}

- (double)rawCurrentCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"AppleRawCurrentCapacity"];

  [v2 doubleValue];
  return result;
}

- (int64_t)voltage
{
  if ([(PLBatteryProperties *)self gasGaugeEnabled])
  {
    v3 = @"Voltage";
  }

  else
  {
    v3 = @"AppleRawBatteryVoltage";
  }

  CFProperty = IORegistryEntryCreateCFProperty(self->batteryEntry, v3, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    integerValue = [CFProperty integerValue];

    return integerValue;
  }

  else
  {
    NSLog(&cfstr_UnableToLookUp.isa);
    return -1;
  }
}

- (BOOL)gasGaugeEnabled
{
  v2 = qword_13C58;
  if (!qword_13C58)
  {
    v3 = MGCopyAnswer();
    v4 = [NSNumber alloc];
    if (v3)
    {
      qword_13C58 = [v4 initWithBool:CFBooleanGetValue(v3) != 0];
      CFRelease(v3);
      v2 = qword_13C58;
    }

    else
    {
      v2 = [v4 initWithBool:0];
      qword_13C58 = v2;
    }
  }

  return [v2 BOOLValue];
}

- (double)currentAbsoluteCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"AbsoluteCapacity"];

  [v2 doubleValue];
  return result;
}

- (double)passedCharge
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"BatteryData"];
  if (!v2)
  {
    return 0.0;
  }

  v3 = [v2 objectForKey:@"PassedCharge"];

  [v3 doubleValue];
  return result;
}

- (double)chargeAccum
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"BatteryData"];
  if (!v2)
  {
    return 0.0;
  }

  v3 = [v2 objectForKey:@"ChargeAccum"];

  [v3 doubleValue];
  return result;
}

- (double)dod0
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"BatteryData"];
  if (!v2)
  {
    return 0.0;
  }

  v3 = [objc_msgSend(v2 objectForKey:{@"DOD0", "firstObject"}];

  [v3 doubleValue];
  return result;
}

- (void)dealloc
{
  IOObjectRelease(self->batteryEntry);

  v3.receiver = self;
  v3.super_class = PLBatteryProperties;
  [(PLBatteryProperties *)&v3 dealloc];
}

- (BOOL)isCharging
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"IsCharging"];

  return [v2 BOOLValue];
}

- (PLBatteryProperties)initWithBatteryEntry:(unsigned int)entry
{
  v6.receiver = self;
  v6.super_class = PLBatteryProperties;
  v4 = [(PLBatteryProperties *)&v6 init];
  if (v4)
  {
    IOObjectRetain(entry);
    v4->batteryEntry = entry;
  }

  return v4;
}

+ (id)properties
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (double)maxCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"MaxCapacity"];

  [v2 doubleValue];
  return result;
}

- (double)rawMaxCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"AppleRawMaxCapacity"];

  [v2 doubleValue];
  return result;
}

- (double)capacity
{
  [(PLBatteryProperties *)self currentCapacity];
  v4 = v3 * 100.0;
  [(PLBatteryProperties *)self maxCapacity];
  return v4 / v5;
}

- (double)rawCapacity
{
  [(PLBatteryProperties *)self rawCurrentCapacity];
  v4 = v3 * 100.0;
  [(PLBatteryProperties *)self rawMaxCapacity];
  return v4 / v5;
}

- (BOOL)isCritical
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"AtCriticalLevel"];

  return [v2 BOOLValue];
}

- (int64_t)chargingCurrent
{
  result = [(PLBatteryProperties *)self propertyForKey:@"AdapterDetails"];
  if (result)
  {
    v3 = [result objectForKey:@"Current"];

    return [v3 integerValue];
  }

  return result;
}

- (int64_t)batteryTemp
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"Temperature"];

  return [v2 integerValue];
}

- (int64_t)cycleCount
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"CycleCount"];

  return [v2 integerValue];
}

- (int64_t)designCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"DesignCapacity"];

  return [v2 integerValue];
}

- (int64_t)current
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"InstantAmperage"];

  return [v2 integerValue];
}

- (BOOL)fullyCharged
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"FullyCharged"];

  return [v2 BOOLValue];
}

- (int64_t)updateTime
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"UpdateTime"];

  return [v2 longValue];
}

- (double)nominalChargeCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"NominalChargeCapacity"];

  [v2 doubleValue];
  return result;
}

- (double)fullAvailableCapacity
{
  v2 = [(PLBatteryProperties *)self propertyForKey:@"FullAvailableCapacity"];

  [v2 doubleValue];
  return result;
}

- (BOOL)draining
{
  if ([(PLBatteryProperties *)self isCharging])
  {
    return 0;
  }

  else
  {
    return ![(PLBatteryProperties *)self fullyCharged];
  }
}

- (id)propertyForKey:(__CFString *)key
{
  batteryProperties = [(PLBatteryProperties *)self batteryProperties];

  return [batteryProperties objectForKey:key];
}

- (id)humanReadableChargingState
{
  if ([(PLBatteryProperties *)self isCharging])
  {
    return @"Active";
  }

  if ([(PLBatteryProperties *)self fullyCharged])
  {
    return @"Full";
  }

  v4 = [(PLBatteryProperties *)self propertyForKey:@"ChargeStatus"];
  if (!v4)
  {
    return @"Inactive";
  }

  v5 = v4;
  if (CFStringCompare(v4, @"HighTemperature", 0))
  {
    return @"OverTemp";
  }

  if (CFStringCompare(v5, @"LowTemperature", 0))
  {
    return @"UnderTemp";
  }

  if (CFStringCompare(v5, @"BatteryTemperatureGradient", 0))
  {
    return @"Gradient";
  }

  return v5;
}

@end
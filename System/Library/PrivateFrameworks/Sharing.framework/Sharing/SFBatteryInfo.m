@interface SFBatteryInfo
- (SFBatteryInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFBatteryInfo

- (void)encodeWithCoder:(id)a3
{
  batteryLevel = self->_batteryLevel;
  v5 = a3;
  [v5 encodeDouble:@"batteryLevel" forKey:batteryLevel];
  [v5 encodeInteger:self->_batteryState forKey:@"batteryState"];
  [v5 encodeInteger:self->_batteryType forKey:@"batteryType"];
}

- (id)description
{
  v2 = self->_batteryType - 1;
  if (v2 <= 3)
  {
    v3 = off_1E788EBB0[v2];
  }

  batteryState = self->_batteryState;
  v6 = self->_batteryLevel * 100.0;
  return NSPrintF();
}

- (SFBatteryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFBatteryInfo;
  v5 = [(SFBatteryInfo *)&v9 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"batteryLevel"])
    {
      [v4 decodeDoubleForKey:@"batteryLevel"];
      v5->_batteryLevel = v6;
    }

    if ([v4 containsValueForKey:@"batteryState"])
    {
      v5->_batteryState = [v4 decodeIntegerForKey:@"batteryState"];
    }

    if ([v4 containsValueForKey:@"batteryType"])
    {
      v5->_batteryType = [v4 decodeIntegerForKey:@"batteryType"];
    }

    v7 = v5;
  }

  return v5;
}

@end
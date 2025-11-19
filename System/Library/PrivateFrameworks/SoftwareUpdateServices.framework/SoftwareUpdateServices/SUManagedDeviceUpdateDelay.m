@interface SUManagedDeviceUpdateDelay
- (SUManagedDeviceUpdateDelay)initWithCoder:(id)a3;
- (SUManagedDeviceUpdateDelay)initWithDelay:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)delayEndDate;
- (id)description;
- (unint64_t)delayUnit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUManagedDeviceUpdateDelay

- (SUManagedDeviceUpdateDelay)initWithDelay:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUManagedDeviceUpdateDelay;
  v5 = [(SUManagedDeviceUpdateDelay *)&v13 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v5->_isDelayed = [v4 isDelayed];
      v7 = [v4 delayedStartDate];
      v8 = [v7 copy];
      delayedStartDate = v6->_delayedStartDate;
      v6->_delayedStartDate = v8;

      v10 = [v4 delayPeriod];
    }

    else
    {
      v5->_isDelayed = 0;
      v11 = v5->_delayedStartDate;
      v5->_delayedStartDate = 0;

      v10 = 0;
    }

    v6->_delayPeriod = v10;
  }

  return v6;
}

- (id)delayEndDate
{
  v3 = [(SUManagedDeviceUpdateDelay *)self delayUnit];
  delayPeriod = self->_delayPeriod;
  if (delayPeriod - 1 > 0x59)
  {
    v12 = 30 * v3;
    SULogInfo(@"delay interval is outside 1-90 day range. Defaulting to %d day delay interval", v4, v5, v6, v7, v8, v9, v10, 30);
  }

  else
  {
    v12 = [(SUManagedDeviceUpdateDelay *)self delayUnit]* delayPeriod;
  }

  delayedStartDate = self->_delayedStartDate;

  return [(NSDate *)delayedStartDate dateByAddingTimeInterval:v12];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  isDelayed = self->_isDelayed;
  delayedStartDate = self->_delayedStartDate;
  v5 = [(SUManagedDeviceUpdateDelay *)self delayEndDate];
  v6 = [v2 stringWithFormat:@"isDelayed:%d delayedStartDate: %@ delayedEndDate: %@", isDelayed, delayedStartDate, v5];

  return v6;
}

- (unint64_t)delayUnit
{
  v2 = +[SUPreferences sharedInstance];
  v3 = [v2 shouldDelayInMinutes];

  if (v3)
  {
    return 60;
  }

  else
  {
    return 86400;
  }
}

- (SUManagedDeviceUpdateDelay)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUManagedDeviceUpdateDelay;
  v5 = [(SUManagedDeviceUpdateDelay *)&v8 init];
  if (v5)
  {
    -[SUManagedDeviceUpdateDelay setIsDelayed:](v5, "setIsDelayed:", [v4 decodeBoolForKey:@"isDelayedKey"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delayedStartDateKey"];
    [(SUManagedDeviceUpdateDelay *)v5 setDelayedStartDate:v6];

    -[SUManagedDeviceUpdateDelay setDelayPeriod:](v5, "setDelayPeriod:", [v4 decodeIntegerForKey:@"delayedPeriod"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[SUManagedDeviceUpdateDelay isDelayed](self forKey:{"isDelayed"), @"isDelayedKey"}];
  v4 = [(SUManagedDeviceUpdateDelay *)self delayedStartDate];
  [v5 encodeObject:v4 forKey:@"delayedStartDateKey"];

  [v5 encodeInteger:-[SUManagedDeviceUpdateDelay delayPeriod](self forKey:{"delayPeriod"), @"delayedPeriod"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = objc_alloc_init(SUManagedDeviceUpdateDelay);
  if (v11)
  {
    [(SUManagedDeviceUpdateDelay *)v11 setIsDelayed:[(SUManagedDeviceUpdateDelay *)self isDelayed]];
    v12 = [(SUManagedDeviceUpdateDelay *)self delayedStartDate];
    [(SUManagedDeviceUpdateDelay *)v11 setDelayedStartDate:v12];

    [(SUManagedDeviceUpdateDelay *)v11 setDelayPeriod:[(SUManagedDeviceUpdateDelay *)self delayPeriod]];
    v13 = v11;
  }

  else
  {
    SULogInfo(@"Failed to create copy of SUManagedDeviceUpdateDelay", v4, v5, v6, v7, v8, v9, v10, v15);
  }

  return v11;
}

@end
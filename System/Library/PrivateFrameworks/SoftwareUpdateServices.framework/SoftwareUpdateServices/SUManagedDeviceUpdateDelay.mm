@interface SUManagedDeviceUpdateDelay
- (SUManagedDeviceUpdateDelay)initWithCoder:(id)coder;
- (SUManagedDeviceUpdateDelay)initWithDelay:(id)delay;
- (id)copyWithZone:(_NSZone *)zone;
- (id)delayEndDate;
- (id)description;
- (unint64_t)delayUnit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUManagedDeviceUpdateDelay

- (SUManagedDeviceUpdateDelay)initWithDelay:(id)delay
{
  delayCopy = delay;
  v13.receiver = self;
  v13.super_class = SUManagedDeviceUpdateDelay;
  v5 = [(SUManagedDeviceUpdateDelay *)&v13 init];
  v6 = v5;
  if (v5)
  {
    if (delayCopy)
    {
      v5->_isDelayed = [delayCopy isDelayed];
      delayedStartDate = [delayCopy delayedStartDate];
      v8 = [delayedStartDate copy];
      delayedStartDate = v6->_delayedStartDate;
      v6->_delayedStartDate = v8;

      delayPeriod = [delayCopy delayPeriod];
    }

    else
    {
      v5->_isDelayed = 0;
      v11 = v5->_delayedStartDate;
      v5->_delayedStartDate = 0;

      delayPeriod = 0;
    }

    v6->_delayPeriod = delayPeriod;
  }

  return v6;
}

- (id)delayEndDate
{
  delayUnit = [(SUManagedDeviceUpdateDelay *)self delayUnit];
  delayPeriod = self->_delayPeriod;
  if (delayPeriod - 1 > 0x59)
  {
    v12 = 30 * delayUnit;
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
  delayEndDate = [(SUManagedDeviceUpdateDelay *)self delayEndDate];
  v6 = [v2 stringWithFormat:@"isDelayed:%d delayedStartDate: %@ delayedEndDate: %@", isDelayed, delayedStartDate, delayEndDate];

  return v6;
}

- (unint64_t)delayUnit
{
  v2 = +[SUPreferences sharedInstance];
  shouldDelayInMinutes = [v2 shouldDelayInMinutes];

  if (shouldDelayInMinutes)
  {
    return 60;
  }

  else
  {
    return 86400;
  }
}

- (SUManagedDeviceUpdateDelay)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SUManagedDeviceUpdateDelay;
  v5 = [(SUManagedDeviceUpdateDelay *)&v8 init];
  if (v5)
  {
    -[SUManagedDeviceUpdateDelay setIsDelayed:](v5, "setIsDelayed:", [coderCopy decodeBoolForKey:@"isDelayedKey"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"delayedStartDateKey"];
    [(SUManagedDeviceUpdateDelay *)v5 setDelayedStartDate:v6];

    -[SUManagedDeviceUpdateDelay setDelayPeriod:](v5, "setDelayPeriod:", [coderCopy decodeIntegerForKey:@"delayedPeriod"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUManagedDeviceUpdateDelay isDelayed](self forKey:{"isDelayed"), @"isDelayedKey"}];
  delayedStartDate = [(SUManagedDeviceUpdateDelay *)self delayedStartDate];
  [coderCopy encodeObject:delayedStartDate forKey:@"delayedStartDateKey"];

  [coderCopy encodeInteger:-[SUManagedDeviceUpdateDelay delayPeriod](self forKey:{"delayPeriod"), @"delayedPeriod"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11 = objc_alloc_init(SUManagedDeviceUpdateDelay);
  if (v11)
  {
    [(SUManagedDeviceUpdateDelay *)v11 setIsDelayed:[(SUManagedDeviceUpdateDelay *)self isDelayed]];
    delayedStartDate = [(SUManagedDeviceUpdateDelay *)self delayedStartDate];
    [(SUManagedDeviceUpdateDelay *)v11 setDelayedStartDate:delayedStartDate];

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
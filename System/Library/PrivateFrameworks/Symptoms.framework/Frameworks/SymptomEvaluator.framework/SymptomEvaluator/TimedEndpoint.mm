@interface TimedEndpoint
- (BOOL)isEqual:(id)equal;
- (TimedEndpoint)initWithEndpoint:(id)endpoint trigger:(id)trigger interfaceType:(int64_t)type stallType:(unint64_t)stallType foreground:(BOOL)foreground;
- (id)description;
- (unint64_t)hash;
- (void)touch;
@end

@implementation TimedEndpoint

- (TimedEndpoint)initWithEndpoint:(id)endpoint trigger:(id)trigger interfaceType:(int64_t)type stallType:(unint64_t)stallType foreground:(BOOL)foreground
{
  endpointCopy = endpoint;
  triggerCopy = trigger;
  v20.receiver = self;
  v20.super_class = TimedEndpoint;
  v15 = [(TimedEndpoint *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, endpoint);
    date = [MEMORY[0x277CBEAA8] date];
    time = v16->_time;
    v16->_time = date;

    objc_storeStrong(&v16->_trigger, trigger);
    v16->_interfaceType = type;
    v16->_stallType = stallType;
    v16->_foreground = foreground;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(TimedEndpoint *)self name];
  trigger = self->_trigger;
  time = [(TimedEndpoint *)self time];
  [time timeIntervalSince1970];
  v8 = formattedDateStringForTimeInterval(v7);
  v9 = [v3 stringWithFormat:@"(name/trigger/time/interfaceType/stallType): %@/%@/%@/%ld/%lu", name, trigger, v8, -[TimedEndpoint interfaceType](self, "interfaceType"), -[TimedEndpoint stallType](self, "stallType")];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(TimedEndpoint *)self name];
      name2 = [(TimedEndpoint *)v5 name];
      if ([name isEqualToString:name2] && (v8 = -[TimedEndpoint interfaceType](self, "interfaceType"), v8 == -[TimedEndpoint interfaceType](v5, "interfaceType")) && (v9 = -[TimedEndpoint stallType](self, "stallType"), v9 == -[TimedEndpoint stallType](v5, "stallType")) && (v10 = -[TimedEndpoint foreground](self, "foreground"), v10 == -[TimedEndpoint foreground](v5, "foreground")))
      {
        time = [(TimedEndpoint *)self time];
        time2 = [(TimedEndpoint *)v5 time];
        [time timeIntervalSinceDate:time2];
        v16 = v15;

        v17 = -v16;
        if (v16 >= 0.0)
        {
          v17 = v16;
        }

        v11 = v17 < 120.0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCACA8];
  name = [(TimedEndpoint *)self name];
  v5 = [v3 stringWithFormat:@"%@/%ld/%lu/%d", name, -[TimedEndpoint interfaceType](self, "interfaceType"), -[TimedEndpoint stallType](self, "stallType"), -[TimedEndpoint foreground](self, "foreground")];

  v6 = [v5 hash];
  return v6;
}

- (void)touch
{
  date = [MEMORY[0x277CBEAA8] date];
  time = self->_time;
  self->_time = date;

  MEMORY[0x2821F96F8](date, time);
}

@end
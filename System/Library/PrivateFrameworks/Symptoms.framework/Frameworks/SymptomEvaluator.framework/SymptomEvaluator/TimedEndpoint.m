@interface TimedEndpoint
- (BOOL)isEqual:(id)a3;
- (TimedEndpoint)initWithEndpoint:(id)a3 trigger:(id)a4 interfaceType:(int64_t)a5 stallType:(unint64_t)a6 foreground:(BOOL)a7;
- (id)description;
- (unint64_t)hash;
- (void)touch;
@end

@implementation TimedEndpoint

- (TimedEndpoint)initWithEndpoint:(id)a3 trigger:(id)a4 interfaceType:(int64_t)a5 stallType:(unint64_t)a6 foreground:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v20.receiver = self;
  v20.super_class = TimedEndpoint;
  v15 = [(TimedEndpoint *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    v17 = [MEMORY[0x277CBEAA8] date];
    time = v16->_time;
    v16->_time = v17;

    objc_storeStrong(&v16->_trigger, a4);
    v16->_interfaceType = a5;
    v16->_stallType = a6;
    v16->_foreground = a7;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TimedEndpoint *)self name];
  trigger = self->_trigger;
  v6 = [(TimedEndpoint *)self time];
  [v6 timeIntervalSince1970];
  v8 = formattedDateStringForTimeInterval(v7);
  v9 = [v3 stringWithFormat:@"(name/trigger/time/interfaceType/stallType): %@/%@/%@/%ld/%lu", v4, trigger, v8, -[TimedEndpoint interfaceType](self, "interfaceType"), -[TimedEndpoint stallType](self, "stallType")];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TimedEndpoint *)self name];
      v7 = [(TimedEndpoint *)v5 name];
      if ([v6 isEqualToString:v7] && (v8 = -[TimedEndpoint interfaceType](self, "interfaceType"), v8 == -[TimedEndpoint interfaceType](v5, "interfaceType")) && (v9 = -[TimedEndpoint stallType](self, "stallType"), v9 == -[TimedEndpoint stallType](v5, "stallType")) && (v10 = -[TimedEndpoint foreground](self, "foreground"), v10 == -[TimedEndpoint foreground](v5, "foreground")))
      {
        v13 = [(TimedEndpoint *)self time];
        v14 = [(TimedEndpoint *)v5 time];
        [v13 timeIntervalSinceDate:v14];
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
  v4 = [(TimedEndpoint *)self name];
  v5 = [v3 stringWithFormat:@"%@/%ld/%lu/%d", v4, -[TimedEndpoint interfaceType](self, "interfaceType"), -[TimedEndpoint stallType](self, "stallType"), -[TimedEndpoint foreground](self, "foreground")];

  v6 = [v5 hash];
  return v6;
}

- (void)touch
{
  v3 = [MEMORY[0x277CBEAA8] date];
  time = self->_time;
  self->_time = v3;

  MEMORY[0x2821F96F8](v3, time);
}

@end
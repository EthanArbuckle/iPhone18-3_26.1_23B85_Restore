@interface ICSPeriod
- (BOOL)isDurationBased;
- (ICSPeriod)initWithCoder:(id)a3;
- (ICSPeriod)initWithStart:(id)a3;
- (ICSPeriod)initWithStart:(id)a3 duration:(id)a4;
- (ICSPeriod)initWithStart:(id)a3 end:(id)a4;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICSPeriod

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v8 = a4;
  v6 = [(ICSPeriod *)self start];
  [v6 _ICSStringWithOptions:a3 appendingToString:v8];

  [v8 appendString:@"/"];
  if ([(ICSPeriod *)self isDurationBased])
  {
    [(ICSPeriod *)self duration];
  }

  else
  {
    [(ICSPeriod *)self end];
  }
  v7 = ;
  [v7 _ICSStringWithOptions:a3 appendingToString:v8];
}

- (ICSPeriod)initWithStart:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSPeriod;
  v6 = [(ICSPeriod *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_start, a3);
  }

  return v7;
}

- (ICSPeriod)initWithStart:(id)a3 end:(id)a4
{
  v7 = a4;
  v8 = [(ICSPeriod *)self initWithStart:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_end, a4);
  }

  return v9;
}

- (ICSPeriod)initWithStart:(id)a3 duration:(id)a4
{
  v7 = a4;
  v8 = [(ICSPeriod *)self initWithStart:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_duration, a4);
  }

  return v9;
}

- (BOOL)isDurationBased
{
  v2 = [(ICSPeriod *)self duration];
  v3 = v2 != 0;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  start = self->_start;
  v5 = a3;
  [v5 encodeObject:start forKey:@"StartDate"];
  [v5 encodeObject:self->_end forKey:@"EndDate"];
  [v5 encodeObject:self->_duration forKey:@"DurationObject"];
}

- (ICSPeriod)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICSPeriod;
  v5 = [(ICSPeriod *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    start = v5->_start;
    v5->_start = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
    end = v5->_end;
    v5->_end = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DurationObject"];
    duration = v5->_duration;
    v5->_duration = v10;
  }

  return v5;
}

@end
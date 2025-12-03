@interface ICSPeriod
- (BOOL)isDurationBased;
- (ICSPeriod)initWithCoder:(id)coder;
- (ICSPeriod)initWithStart:(id)start;
- (ICSPeriod)initWithStart:(id)start duration:(id)duration;
- (ICSPeriod)initWithStart:(id)start end:(id)end;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICSPeriod

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  start = [(ICSPeriod *)self start];
  [start _ICSStringWithOptions:options appendingToString:stringCopy];

  [stringCopy appendString:@"/"];
  if ([(ICSPeriod *)self isDurationBased])
  {
    [(ICSPeriod *)self duration];
  }

  else
  {
    [(ICSPeriod *)self end];
  }
  v7 = ;
  [v7 _ICSStringWithOptions:options appendingToString:stringCopy];
}

- (ICSPeriod)initWithStart:(id)start
{
  startCopy = start;
  v9.receiver = self;
  v9.super_class = ICSPeriod;
  v6 = [(ICSPeriod *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_start, start);
  }

  return v7;
}

- (ICSPeriod)initWithStart:(id)start end:(id)end
{
  endCopy = end;
  v8 = [(ICSPeriod *)self initWithStart:start];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_end, end);
  }

  return v9;
}

- (ICSPeriod)initWithStart:(id)start duration:(id)duration
{
  durationCopy = duration;
  v8 = [(ICSPeriod *)self initWithStart:start];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_duration, duration);
  }

  return v9;
}

- (BOOL)isDurationBased
{
  duration = [(ICSPeriod *)self duration];
  v3 = duration != 0;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  start = self->_start;
  coderCopy = coder;
  [coderCopy encodeObject:start forKey:@"StartDate"];
  [coderCopy encodeObject:self->_end forKey:@"EndDate"];
  [coderCopy encodeObject:self->_duration forKey:@"DurationObject"];
}

- (ICSPeriod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICSPeriod;
  v5 = [(ICSPeriod *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
    start = v5->_start;
    v5->_start = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
    end = v5->_end;
    v5->_end = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DurationObject"];
    duration = v5->_duration;
    v5->_duration = v10;
  }

  return v5;
}

@end
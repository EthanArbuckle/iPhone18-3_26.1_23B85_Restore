@interface BAExtensionRuntime
- (BAExtensionRuntime)init;
- (BAExtensionRuntime)initWithCoder:(id)coder;
- (BAExtensionRuntime)initWithStartDate:(id)date;
- (BOOL)isMoreThan24HoursAgo;
- (double)elapsedTime;
- (void)encodeWithCoder:(id)coder;
- (void)extensionExited;
@end

@implementation BAExtensionRuntime

- (BAExtensionRuntime)init
{
  v3 = +[NSDate date];
  v4 = [(BAExtensionRuntime *)self initWithStartDate:v3];

  return v4;
}

- (BAExtensionRuntime)initWithStartDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = BAExtensionRuntime;
  v5 = [(BAExtensionRuntime *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BAExtensionRuntime *)v5 setStartDate:dateCopy];
  }

  return v6;
}

- (BAExtensionRuntime)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = BAExtensionRuntime;
    self = [(BAExtensionRuntime *)&v9 init];
    if (!self)
    {
      goto LABEL_5;
    }

    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(BAExtensionRuntime *)self setStartDate:v5];

    selfCopy = [(BAExtensionRuntime *)self startDate];

    if (selfCopy)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
      [(BAExtensionRuntime *)self setEndDate:v7];

      selfCopy = [(BAExtensionRuntime *)self endDate];

      if (selfCopy)
      {
LABEL_5:
        self = self;
        selfCopy = self;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    startDate = [(BAExtensionRuntime *)self startDate];
    [coderCopy encodeObject:startDate forKey:@"startDate"];

    endDate = [(BAExtensionRuntime *)self endDate];

    if (endDate)
    {
      [(BAExtensionRuntime *)self endDate];
    }

    else
    {
      +[NSDate date];
    }
    v6 = ;
    [coderCopy encodeObject:v6 forKey:@"endDate"];
  }
}

- (double)elapsedTime
{
  endDate = [(BAExtensionRuntime *)self endDate];

  if (endDate)
  {
    [(BAExtensionRuntime *)self endDate];
  }

  else
  {
    +[NSDate date];
  }
  v4 = ;
  startDate = [(BAExtensionRuntime *)self startDate];
  [v4 timeIntervalSinceDate:startDate];
  v7 = v6;

  return v7;
}

- (void)extensionExited
{
  v3 = +[NSDate date];
  [(BAExtensionRuntime *)self setEndDate:v3];
}

- (BOOL)isMoreThan24HoursAgo
{
  endDate = [(BAExtensionRuntime *)self endDate];
  if (endDate)
  {
    [(BAExtensionRuntime *)self endDate];
  }

  else
  {
    +[NSDate date];
  }
  v4 = ;

  [v4 timeIntervalSinceNow];
  v6 = v5 < -86400.0;

  return v6;
}

@end
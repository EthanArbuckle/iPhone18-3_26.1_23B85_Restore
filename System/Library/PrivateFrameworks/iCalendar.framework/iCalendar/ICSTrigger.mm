@interface ICSTrigger
- (ICSTrigger)initWithDate:(id)date;
- (ICSTrigger)initWithDuration:(id)duration;
- (ICSTrigger)initWithDuration:(id)duration travelRelativeDuration:(id)relativeDuration;
- (void)fixAlarmTrigger;
- (void)setDate:(id)date;
- (void)setDuration:(id)duration;
@end

@implementation ICSTrigger

- (void)fixAlarmTrigger
{
  v3 = [(ICSProperty *)self parameterValueForName:@"RELATED"];

  if (v3)
  {
    v4 = [(ICSProperty *)self parameterValueForName:@"RELATED"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      [(ICSProperty *)self removeParameterValueForName:@"RELATED"];
    }
  }
}

- (ICSTrigger)initWithDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = ICSTrigger;
  v5 = [(ICSTrigger *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICSTrigger *)v5 setDate:dateCopy];
  }

  return v6;
}

- (ICSTrigger)initWithDuration:(id)duration
{
  durationCopy = duration;
  v8.receiver = self;
  v8.super_class = ICSTrigger;
  v5 = [(ICSTrigger *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICSTrigger *)v5 setDuration:durationCopy];
  }

  return v6;
}

- (ICSTrigger)initWithDuration:(id)duration travelRelativeDuration:(id)relativeDuration
{
  relativeDurationCopy = relativeDuration;
  v7 = [(ICSTrigger *)self initWithDuration:duration];
  [(ICSProperty *)v7 setParameterValue:relativeDurationCopy forName:@"X-APPLE-RELATED-TRAVEL"];

  return v7;
}

- (void)setDate:(id)date
{
  dateCopy = date;
  -[ICSProperty setValue:type:](self, "setValue:type:", dateCopy, [dateCopy dateType]);

  [(ICSProperty *)self setParameterValue:@"DATE-TIME" forName:@"VALUE"];

  [(ICSProperty *)self removeParameterValueForName:@"RELATED"];
}

- (void)setDuration:(id)duration
{
  [(ICSProperty *)self setValue:duration type:5011];

  [(ICSProperty *)self removeParameterValueForName:@"VALUE"];
}

@end
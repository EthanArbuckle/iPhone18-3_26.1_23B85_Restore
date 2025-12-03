@interface REMAlarmTimeIntervalTrigger
- (BOOL)isEqual:(id)equal;
- (REMAlarmTimeIntervalTrigger)initWithCoder:(id)coder;
- (REMAlarmTimeIntervalTrigger)initWithObjectID:(id)d timeInterval:(double)interval;
- (REMAlarmTimeIntervalTrigger)initWithTimeInterval:(double)interval;
- (id)_deepCopy;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarmTimeIntervalTrigger

- (REMAlarmTimeIntervalTrigger)initWithObjectID:(id)d timeInterval:(double)interval
{
  v8.receiver = self;
  v8.super_class = REMAlarmTimeIntervalTrigger;
  v5 = [(REMAlarmTrigger *)&v8 initWithObjectID:d];
  v6 = v5;
  if (v5)
  {
    [(REMAlarmTimeIntervalTrigger *)v5 setTimeInterval:interval];
  }

  return v6;
}

- (REMAlarmTimeIntervalTrigger)initWithTimeInterval:(double)interval
{
  v7.receiver = self;
  v7.super_class = REMAlarmTimeIntervalTrigger;
  v4 = [(REMAlarmTrigger *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(REMAlarmTimeIntervalTrigger *)v4 setTimeInterval:interval];
  }

  return v5;
}

- (REMAlarmTimeIntervalTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = REMAlarmTimeIntervalTrigger;
  v5 = [(REMAlarmTrigger *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timeInterval"];
    [(REMAlarmTimeIntervalTrigger *)v5 setTimeInterval:?];
  }

  return v5;
}

- (id)_deepCopy
{
  v3 = [REMAlarmTimeIntervalTrigger alloc];
  [(REMAlarmTimeIntervalTrigger *)self timeInterval];
  v4 = [(REMAlarmTimeIntervalTrigger *)v3 initWithTimeInterval:?];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(REMAlarmTimeIntervalTrigger *)self timeInterval];
    v7 = v6;
    [v5 timeInterval];
    v9 = v8;

    v10 = v7 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmTimeIntervalTrigger;
  v4 = [(REMAlarmTimeIntervalTrigger *)&v8 description];
  [(REMAlarmTimeIntervalTrigger *)self timeInterval];
  v6 = [v3 stringWithFormat:@"%@ %f", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = REMAlarmTimeIntervalTrigger;
  coderCopy = coder;
  [(REMAlarmTrigger *)&v5 encodeWithCoder:coderCopy];
  [(REMAlarmTimeIntervalTrigger *)self timeInterval:v5.receiver];
  [coderCopy encodeDouble:@"timeInterval" forKey:?];
}

@end
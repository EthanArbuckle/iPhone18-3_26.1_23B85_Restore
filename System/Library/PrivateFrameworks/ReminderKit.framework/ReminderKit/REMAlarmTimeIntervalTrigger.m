@interface REMAlarmTimeIntervalTrigger
- (BOOL)isEqual:(id)a3;
- (REMAlarmTimeIntervalTrigger)initWithCoder:(id)a3;
- (REMAlarmTimeIntervalTrigger)initWithObjectID:(id)a3 timeInterval:(double)a4;
- (REMAlarmTimeIntervalTrigger)initWithTimeInterval:(double)a3;
- (id)_deepCopy;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarmTimeIntervalTrigger

- (REMAlarmTimeIntervalTrigger)initWithObjectID:(id)a3 timeInterval:(double)a4
{
  v8.receiver = self;
  v8.super_class = REMAlarmTimeIntervalTrigger;
  v5 = [(REMAlarmTrigger *)&v8 initWithObjectID:a3];
  v6 = v5;
  if (v5)
  {
    [(REMAlarmTimeIntervalTrigger *)v5 setTimeInterval:a4];
  }

  return v6;
}

- (REMAlarmTimeIntervalTrigger)initWithTimeInterval:(double)a3
{
  v7.receiver = self;
  v7.super_class = REMAlarmTimeIntervalTrigger;
  v4 = [(REMAlarmTrigger *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(REMAlarmTimeIntervalTrigger *)v4 setTimeInterval:a3];
  }

  return v5;
}

- (REMAlarmTimeIntervalTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = REMAlarmTimeIntervalTrigger;
  v5 = [(REMAlarmTrigger *)&v7 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timeInterval"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = REMAlarmTimeIntervalTrigger;
  v4 = a3;
  [(REMAlarmTrigger *)&v5 encodeWithCoder:v4];
  [(REMAlarmTimeIntervalTrigger *)self timeInterval:v5.receiver];
  [v4 encodeDouble:@"timeInterval" forKey:?];
}

@end
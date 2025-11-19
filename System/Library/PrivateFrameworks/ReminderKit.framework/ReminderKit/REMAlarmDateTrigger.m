@interface REMAlarmDateTrigger
- (BOOL)isEqual:(id)a3;
- (REMAlarmDateTrigger)initWithCoder:(id)a3;
- (REMAlarmDateTrigger)initWithDateComponents:(id)a3;
- (REMAlarmDateTrigger)initWithObjectID:(id)a3 dateComponents:(id)a4;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAlarmDateTrigger

- (REMAlarmDateTrigger)initWithDateComponents:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMAlarmDateTrigger;
  v5 = [(REMAlarmTrigger *)&v8 init];
  if (v5)
  {
    v6 = [v4 rem_gregorianEquivalent];
    [(REMAlarmDateTrigger *)v5 setDateComponents:v6];
  }

  return v5;
}

- (REMAlarmDateTrigger)initWithObjectID:(id)a3 dateComponents:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = REMAlarmDateTrigger;
  v7 = [(REMAlarmTrigger *)&v10 initWithObjectID:a3];
  v8 = v7;
  if (v7)
  {
    [(REMAlarmDateTrigger *)v7 setDateComponents:v6];
  }

  return v8;
}

- (id)_deepCopy
{
  v3 = [REMAlarmDateTrigger alloc];
  v4 = [(REMAlarmDateTrigger *)self dateComponents];
  v5 = [(REMAlarmDateTrigger *)v3 initWithDateComponents:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(REMAlarmDateTrigger *)self dateComponents];
    v7 = [v5 dateComponents];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(REMAlarmDateTrigger *)self dateComponents];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmDateTrigger;
  v4 = [(REMAlarmDateTrigger *)&v8 description];
  v5 = [(REMAlarmDateTrigger *)self dateComponents];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (REMAlarmDateTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMAlarmDateTrigger;
  v5 = [(REMAlarmTrigger *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
    [(REMAlarmDateTrigger *)v5 setDateComponents:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = REMAlarmDateTrigger;
  v4 = a3;
  [(REMAlarmTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(REMAlarmDateTrigger *)self dateComponents:v6.receiver];
  [v4 encodeObject:v5 forKey:@"dateComponents"];
}

@end
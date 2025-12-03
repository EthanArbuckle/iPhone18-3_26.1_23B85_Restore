@interface REMAlarmDateTrigger
- (BOOL)isEqual:(id)equal;
- (REMAlarmDateTrigger)initWithCoder:(id)coder;
- (REMAlarmDateTrigger)initWithDateComponents:(id)components;
- (REMAlarmDateTrigger)initWithObjectID:(id)d dateComponents:(id)components;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAlarmDateTrigger

- (REMAlarmDateTrigger)initWithDateComponents:(id)components
{
  componentsCopy = components;
  v8.receiver = self;
  v8.super_class = REMAlarmDateTrigger;
  v5 = [(REMAlarmTrigger *)&v8 init];
  if (v5)
  {
    rem_gregorianEquivalent = [componentsCopy rem_gregorianEquivalent];
    [(REMAlarmDateTrigger *)v5 setDateComponents:rem_gregorianEquivalent];
  }

  return v5;
}

- (REMAlarmDateTrigger)initWithObjectID:(id)d dateComponents:(id)components
{
  componentsCopy = components;
  v10.receiver = self;
  v10.super_class = REMAlarmDateTrigger;
  v7 = [(REMAlarmTrigger *)&v10 initWithObjectID:d];
  v8 = v7;
  if (v7)
  {
    [(REMAlarmDateTrigger *)v7 setDateComponents:componentsCopy];
  }

  return v8;
}

- (id)_deepCopy
{
  v3 = [REMAlarmDateTrigger alloc];
  dateComponents = [(REMAlarmDateTrigger *)self dateComponents];
  v5 = [(REMAlarmDateTrigger *)v3 initWithDateComponents:dateComponents];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dateComponents = [(REMAlarmDateTrigger *)self dateComponents];
    dateComponents2 = [v5 dateComponents];

    v8 = [dateComponents isEqual:dateComponents2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  dateComponents = [(REMAlarmDateTrigger *)self dateComponents];
  v3 = [dateComponents hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = REMAlarmDateTrigger;
  v4 = [(REMAlarmDateTrigger *)&v8 description];
  dateComponents = [(REMAlarmDateTrigger *)self dateComponents];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dateComponents];

  return v6;
}

- (REMAlarmDateTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = REMAlarmDateTrigger;
  v5 = [(REMAlarmTrigger *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
    [(REMAlarmDateTrigger *)v5 setDateComponents:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = REMAlarmDateTrigger;
  coderCopy = coder;
  [(REMAlarmTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(REMAlarmDateTrigger *)self dateComponents:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"dateComponents"];
}

@end
@interface ICSDate
- (BOOL)hasFloatingTimeZone;
- (BOOL)hasTimeComponent;
- (ICSDate)initWithValue:(id)value;
- (ICSDate)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (ICSDate)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second timeZone:(id)zone;
- (id)components;
- (id)description;
@end

@implementation ICSDate

- (ICSDate)initWithValue:(id)value
{
  valueCopy = value;
  v7.receiver = self;
  v7.super_class = ICSDate;
  v5 = -[ICSProperty initWithValue:type:](&v7, sel_initWithValue_type_, valueCopy, [valueCopy dateType]);

  return v5;
}

- (ICSDate)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v6 = [[ICSDateValue alloc] initWithYear:year month:month day:day];
  v10.receiver = self;
  v10.super_class = ICSDate;
  v7 = [(ICSProperty *)&v10 initWithValue:v6 type:5006];
  v8 = v7;
  if (v7)
  {
    [(ICSProperty *)v7 setParameterValue:@"DATE" forName:@"VALUE"];
  }

  return v8;
}

- (ICSDate)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second timeZone:(id)zone
{
  zoneCopy = zone;
  v16 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  if ([zoneCopy isEqualToTimeZone:v16])
  {
    v17 = objc_opt_class();
  }

  else
  {
    v18 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    v19 = [zoneCopy isEqualToTimeZone:v18];
    v20 = off_27A64B570;
    if (!v19)
    {
      v20 = off_27A64B578;
    }

    v21 = *v20;
    v17 = objc_opt_class();
  }

  v22 = [[v17 alloc] initWithYear:year month:month day:day hour:hour minute:minute second:second];
  v23 = [(ICSProperty *)self initWithValue:v22 type:5016];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      name = [zoneCopy name];
      [(ICSDate *)v23 setTzid:name];
    }
  }

  return v23;
}

- (id)components
{
  value = [(ICSProperty *)self value];
  components = [value components];

  return components;
}

- (BOOL)hasTimeComponent
{
  value = [(ICSProperty *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)hasFloatingTimeZone
{
  tzid = [(ICSDate *)self tzid];
  if (tzid)
  {
    v4 = 0;
  }

  else
  {
    value = [(ICSProperty *)self value];
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

- (id)description
{
  tzid = [(ICSDate *)self tzid];

  if (tzid)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    stringValue = [(ICSProperty *)self stringValue];
    tzid2 = [(ICSDate *)self tzid];
    v9 = [v4 stringWithFormat:@"<%@ %p - %@ (%@)>", v6, self, stringValue, tzid2];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICSDate;
    v9 = [(ICSProperty *)&v11 description];
  }

  return v9;
}

@end
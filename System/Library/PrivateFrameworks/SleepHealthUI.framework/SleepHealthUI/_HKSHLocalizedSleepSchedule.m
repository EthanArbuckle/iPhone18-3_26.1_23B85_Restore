@interface _HKSHLocalizedSleepSchedule
- (BOOL)isEqual:(id)a3;
- (_HKSHLocalizedSleepSchedule)initWithSleepSchedule:(id)a3 calendar:(id)a4 dayStart:(id)a5 timeFont:(id)a6 amPmFont:(id)a7;
- (unint64_t)hash;
@end

@implementation _HKSHLocalizedSleepSchedule

- (_HKSHLocalizedSleepSchedule)initWithSleepSchedule:(id)a3 calendar:(id)a4 dayStart:(id)a5 timeFont:(id)a6 amPmFont:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = _HKSHLocalizedSleepSchedule;
  v17 = [(_HKSHLocalizedSleepSchedule *)&v25 init];
  if (v17)
  {
    v18 = [v12 bedTimeComponents];
    v19 = HKSHLocalizedTimeForComponents(v18, v13, v14, v15, v16);
    localizedBedTime = v17->_localizedBedTime;
    v17->_localizedBedTime = v19;

    v21 = [v12 wakeTimeComponents];
    v22 = HKSHLocalizedTimeForComponents(v21, v13, v14, v15, v16);
    localizedWakeTime = v17->_localizedWakeTime;
    v17->_localizedWakeTime = v22;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(_HKSHLocalizedSleepSchedule *)self localizedBedTime];
    v8 = [(_HKSHLocalizedSleepSchedule *)v6 localizedBedTime];
    if ([v7 isEqualToAttributedString:v8])
    {
      v9 = [(_HKSHLocalizedSleepSchedule *)self localizedWakeTime];
      v10 = [(_HKSHLocalizedSleepSchedule *)v6 localizedWakeTime];
      v11 = [v9 isEqualToAttributedString:v10];
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

  return v11;
}

- (unint64_t)hash
{
  v3 = [(_HKSHLocalizedSleepSchedule *)self localizedBedTime];
  v4 = [v3 hash];
  v5 = [(_HKSHLocalizedSleepSchedule *)self localizedWakeTime];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end
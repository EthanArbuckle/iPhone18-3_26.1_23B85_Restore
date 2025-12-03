@interface _HKSHLocalizedSleepSchedule
- (BOOL)isEqual:(id)equal;
- (_HKSHLocalizedSleepSchedule)initWithSleepSchedule:(id)schedule calendar:(id)calendar dayStart:(id)start timeFont:(id)font amPmFont:(id)pmFont;
- (unint64_t)hash;
@end

@implementation _HKSHLocalizedSleepSchedule

- (_HKSHLocalizedSleepSchedule)initWithSleepSchedule:(id)schedule calendar:(id)calendar dayStart:(id)start timeFont:(id)font amPmFont:(id)pmFont
{
  scheduleCopy = schedule;
  calendarCopy = calendar;
  startCopy = start;
  fontCopy = font;
  pmFontCopy = pmFont;
  v25.receiver = self;
  v25.super_class = _HKSHLocalizedSleepSchedule;
  v17 = [(_HKSHLocalizedSleepSchedule *)&v25 init];
  if (v17)
  {
    bedTimeComponents = [scheduleCopy bedTimeComponents];
    v19 = HKSHLocalizedTimeForComponents(bedTimeComponents, calendarCopy, startCopy, fontCopy, pmFontCopy);
    localizedBedTime = v17->_localizedBedTime;
    v17->_localizedBedTime = v19;

    wakeTimeComponents = [scheduleCopy wakeTimeComponents];
    v22 = HKSHLocalizedTimeForComponents(wakeTimeComponents, calendarCopy, startCopy, fontCopy, pmFontCopy);
    localizedWakeTime = v17->_localizedWakeTime;
    v17->_localizedWakeTime = v22;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    localizedBedTime = [(_HKSHLocalizedSleepSchedule *)self localizedBedTime];
    localizedBedTime2 = [(_HKSHLocalizedSleepSchedule *)v6 localizedBedTime];
    if ([localizedBedTime isEqualToAttributedString:localizedBedTime2])
    {
      localizedWakeTime = [(_HKSHLocalizedSleepSchedule *)self localizedWakeTime];
      localizedWakeTime2 = [(_HKSHLocalizedSleepSchedule *)v6 localizedWakeTime];
      v11 = [localizedWakeTime isEqualToAttributedString:localizedWakeTime2];
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
  localizedBedTime = [(_HKSHLocalizedSleepSchedule *)self localizedBedTime];
  v4 = [localizedBedTime hash];
  localizedWakeTime = [(_HKSHLocalizedSleepSchedule *)self localizedWakeTime];
  v6 = [localizedWakeTime hash];

  return v6 ^ v4;
}

@end
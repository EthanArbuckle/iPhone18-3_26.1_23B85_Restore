@interface STDeviceDowntimeUserNotificationContext
- (STDeviceDowntimeUserNotificationContext)init;
- (STDeviceDowntimeUserNotificationContext)initWithCoder:(id)coder;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)setEndDateComponents:(id)components referenceDate:(id)date;
- (void)setEndDateComponents:(id)components referenceDate:(id)date locale:(id)locale;
@end

@implementation STDeviceDowntimeUserNotificationContext

- (STDeviceDowntimeUserNotificationContext)init
{
  v3.receiver = self;
  v3.super_class = STDeviceDowntimeUserNotificationContext;
  return [(STUserNotificationContext *)&v3 initWithIdentifier:@"device_downtime"];
}

- (STDeviceDowntimeUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STDeviceDowntimeUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedUserNotificationBodyKey"];
    localizedUserNotificationBodyKey = v5->_localizedUserNotificationBodyKey;
    v5->_localizedUserNotificationBodyKey = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STDeviceDowntimeUserNotificationContext;
  coderCopy = coder;
  [(STUserNotificationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_localizedUserNotificationBodyKey forKey:{@"localizedUserNotificationBodyKey", v5.receiver, v5.super_class}];
}

- (void)setEndDateComponents:(id)components referenceDate:(id)date
{
  v6 = MEMORY[0x1E695DF58];
  dateCopy = date;
  componentsCopy = components;
  currentLocale = [v6 currentLocale];
  [(STDeviceDowntimeUserNotificationContext *)self setEndDateComponents:componentsCopy referenceDate:dateCopy locale:currentLocale];
}

- (void)setEndDateComponents:(id)components referenceDate:(id)date locale:(id)locale
{
  componentsCopy = components;
  dateCopy = date;
  localeCopy = locale;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [currentCalendar setLocale:localeCopy];
  v43 = [currentCalendar nextDateAfterDate:dateCopy matchingComponents:componentsCopy options:1024];
  v10 = objc_opt_new();
  [v10 setLocale:localeCopy];
  [v10 setFormattingContext:5];
  v11 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:localeCopy];
  if ([v11 containsString:@"H"])
  {

    v12 = @"jmm";
  }

  else
  {
    v13 = [v11 containsString:@"k"];

    v12 = @"jmm";
    if ((v13 & 1) == 0 && ![componentsCopy minute])
    {
      v12 = @"j";
    }
  }

  [v10 setLocalizedDateFormatFromTemplate:v12];
  v14 = v43;
  v41 = [v10 stringFromDate:v43];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v41, 0}];
  weekday = [componentsCopy weekday];
  v17 = [currentCalendar components:608 fromDate:dateCopy];
  weekday2 = [v17 weekday];
  if (weekday == weekday2)
  {
    v19 = localeCopy;
    v20 = v43;
    v21 = objc_opt_new();
    [v21 setLocale:v19];

    [v21 setLocalizedDateFormatFromTemplate:@"J"];
    v22 = [v21 stringFromDate:v20];

    integerValue = [v22 integerValue];
    v24 = @"DeviceDowntimeNotificationBody";
    if (integerValue == 1)
    {
      v24 = @"DeviceDowntimeNotificationBody1AMPM";
    }

    v25 = v24;
  }

  else
  {
    v26 = weekday2;
    v40 = dateCopy;
    v27 = [currentCalendar maximumRangeOfUnit:512];
    if (v26 == v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26 + 1;
    }

    v39 = v29;
    v30 = localeCopy;
    v31 = v43;
    v32 = objc_opt_new();
    [v32 setLocale:v30];

    [v32 setLocalizedDateFormatFromTemplate:@"J"];
    v33 = [v32 stringFromDate:v31];

    integerValue2 = [v33 integerValue];
    if (weekday == v39)
    {
      v35 = @"DeviceDowntimeNotificationBodyTomorrow";
      if (integerValue2 == 1)
      {
        v35 = @"DeviceDowntimeNotificationBody1AMPMTomorrow";
      }

      v25 = v35;
    }

    else
    {
      v36 = @"DeviceDowntimeNotificationBodyWeekdayFormat";
      if (integerValue2 == 1)
      {
        v36 = @"DeviceDowntimeNotificationBody1AMPMWeekdayFormat";
      }

      v25 = v36;
      weekdaySymbols = [currentCalendar weekdaySymbols];
      v38 = [weekdaySymbols objectAtIndexedSubscript:weekday - 1];

      [v15 addObject:v38];
    }

    dateCopy = v40;
    v14 = v43;
  }

  [(STDeviceDowntimeUserNotificationContext *)self setLocalizedUserNotificationBodyKey:v25];
  [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:v15];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__STDeviceDowntimeUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STDeviceDowntimeUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __92__STDeviceDowntimeUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 40) localizedUserNotificationBodyKey];
  v4 = [*(a1 + 40) localizedUserNotificationBodyArguments];
  v5 = [v2 localizedUserNotificationStringForKey:v3 arguments:v4];
  [*(a1 + 32) setBody:v5];

  [*(a1 + 32) setShouldHideDate:1];
  [*(a1 + 32) setShouldIgnoreDoNotDisturb:1];
  [*(a1 + 32) setShouldSuppressDefaultAction:1];
  [*(a1 + 32) setShouldSuppressScreenLightUp:1];
  v6 = [MEMORY[0x1E6983290] iconForSystemImageNamed:@"hourglass.tophalf.fill"];
  [*(a1 + 32) setIcon:v6];

  [*(a1 + 32) setSound:0];
  [*(a1 + 32) setCategoryIdentifier:@"com.apple.screentime.downtime"];
  v7 = *(*(a1 + 48) + 16);

  return v7();
}

@end
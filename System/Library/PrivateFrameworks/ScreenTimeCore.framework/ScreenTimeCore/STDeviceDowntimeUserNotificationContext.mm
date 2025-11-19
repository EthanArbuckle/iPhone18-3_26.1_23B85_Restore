@interface STDeviceDowntimeUserNotificationContext
- (STDeviceDowntimeUserNotificationContext)init;
- (STDeviceDowntimeUserNotificationContext)initWithCoder:(id)a3;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setEndDateComponents:(id)a3 referenceDate:(id)a4;
- (void)setEndDateComponents:(id)a3 referenceDate:(id)a4 locale:(id)a5;
@end

@implementation STDeviceDowntimeUserNotificationContext

- (STDeviceDowntimeUserNotificationContext)init
{
  v3.receiver = self;
  v3.super_class = STDeviceDowntimeUserNotificationContext;
  return [(STUserNotificationContext *)&v3 initWithIdentifier:@"device_downtime"];
}

- (STDeviceDowntimeUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STDeviceDowntimeUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedUserNotificationBodyKey"];
    localizedUserNotificationBodyKey = v5->_localizedUserNotificationBodyKey;
    v5->_localizedUserNotificationBodyKey = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STDeviceDowntimeUserNotificationContext;
  v4 = a3;
  [(STUserNotificationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_localizedUserNotificationBodyKey forKey:{@"localizedUserNotificationBodyKey", v5.receiver, v5.super_class}];
}

- (void)setEndDateComponents:(id)a3 referenceDate:(id)a4
{
  v6 = MEMORY[0x1E695DF58];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentLocale];
  [(STDeviceDowntimeUserNotificationContext *)self setEndDateComponents:v8 referenceDate:v7 locale:v9];
}

- (void)setEndDateComponents:(id)a3 referenceDate:(id)a4 locale:(id)a5
{
  v44 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v9 setLocale:v8];
  v43 = [v9 nextDateAfterDate:v7 matchingComponents:v44 options:1024];
  v10 = objc_opt_new();
  [v10 setLocale:v8];
  [v10 setFormattingContext:5];
  v11 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:v8];
  if ([v11 containsString:@"H"])
  {

    v12 = @"jmm";
  }

  else
  {
    v13 = [v11 containsString:@"k"];

    v12 = @"jmm";
    if ((v13 & 1) == 0 && ![v44 minute])
    {
      v12 = @"j";
    }
  }

  [v10 setLocalizedDateFormatFromTemplate:v12];
  v14 = v43;
  v41 = [v10 stringFromDate:v43];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v41, 0}];
  v16 = [v44 weekday];
  v17 = [v9 components:608 fromDate:v7];
  v18 = [v17 weekday];
  if (v16 == v18)
  {
    v19 = v8;
    v20 = v43;
    v21 = objc_opt_new();
    [v21 setLocale:v19];

    [v21 setLocalizedDateFormatFromTemplate:@"J"];
    v22 = [v21 stringFromDate:v20];

    v23 = [v22 integerValue];
    v24 = @"DeviceDowntimeNotificationBody";
    if (v23 == 1)
    {
      v24 = @"DeviceDowntimeNotificationBody1AMPM";
    }

    v25 = v24;
  }

  else
  {
    v26 = v18;
    v40 = v7;
    v27 = [v9 maximumRangeOfUnit:512];
    if (v26 == v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26 + 1;
    }

    v39 = v29;
    v30 = v8;
    v31 = v43;
    v32 = objc_opt_new();
    [v32 setLocale:v30];

    [v32 setLocalizedDateFormatFromTemplate:@"J"];
    v33 = [v32 stringFromDate:v31];

    v34 = [v33 integerValue];
    if (v16 == v39)
    {
      v35 = @"DeviceDowntimeNotificationBodyTomorrow";
      if (v34 == 1)
      {
        v35 = @"DeviceDowntimeNotificationBody1AMPMTomorrow";
      }

      v25 = v35;
    }

    else
    {
      v36 = @"DeviceDowntimeNotificationBodyWeekdayFormat";
      if (v34 == 1)
      {
        v36 = @"DeviceDowntimeNotificationBody1AMPMWeekdayFormat";
      }

      v25 = v36;
      v37 = [v9 weekdaySymbols];
      v38 = [v37 objectAtIndexedSubscript:v16 - 1];

      [v15 addObject:v38];
    }

    v7 = v40;
    v14 = v43;
  }

  [(STDeviceDowntimeUserNotificationContext *)self setLocalizedUserNotificationBodyKey:v25];
  [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:v15];
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__STDeviceDowntimeUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v10.receiver = self;
  v10.super_class = STDeviceDowntimeUserNotificationContext;
  v8 = v7;
  v9 = v6;
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
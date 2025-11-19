@interface STWeeklyReportUserNotificationContext
- (STWeeklyReportUserNotificationContext)init;
- (STWeeklyReportUserNotificationContext)initWithCoder:(id)a3;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setDeltaScreenTimeUsage:(double)a3 totalUsage:(id)a4;
@end

@implementation STWeeklyReportUserNotificationContext

- (STWeeklyReportUserNotificationContext)init
{
  v6.receiver = self;
  v6.super_class = STWeeklyReportUserNotificationContext;
  v2 = [(STUserNotificationContext *)&v6 initWithIdentifier:@"weekly_usage_report"];
  v3 = v2;
  if (v2)
  {
    notificationBodyKey = v2->_notificationBodyKey;
    v2->_notificationBodyKey = @"WeeklyReportNotificationDefaultBody";
  }

  return v3;
}

- (STWeeklyReportUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STWeeklyReportUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weeklyReportData"];
    weeklyReportData = v5->_weeklyReportData;
    v5->_weeklyReportData = v6;

    [v4 decodeDoubleForKey:@"deltaScreenTimeUsage"];
    v5->_deltaScreenTimeUsage = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalUsage"];
    totalUsage = v5->_totalUsage;
    v5->_totalUsage = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationBodyKey"];
    notificationBodyKey = v5->_notificationBodyKey;
    v5->_notificationBodyKey = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STWeeklyReportUserNotificationContext;
  v4 = a3;
  [(STUserNotificationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_weeklyReportData forKey:{@"weeklyReportData", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"deltaScreenTimeUsage" forKey:self->_deltaScreenTimeUsage];
  [v4 encodeObject:self->_totalUsage forKey:@"totalUsage"];
  [v4 encodeObject:self->_notificationBodyKey forKey:@"notificationBodyKey"];
}

- (void)setDeltaScreenTimeUsage:(double)a3 totalUsage:(id)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(STWeeklyReportUserNotificationContext *)self setDeltaScreenTimeUsage:a3];
  [(STWeeklyReportUserNotificationContext *)self setTotalUsage:v6];
  v7 = objc_opt_new();
  [v7 setAllowedUnits:96];
  [v7 setUnitsStyle:3];
  [v6 doubleValue];
  v9 = v8;

  v10 = objc_opt_new();
  [v10 setSecond:(v9 / 7.0)];
  v11 = [v7 stringFromDateComponents:v10];
  if (a3 >= 0.05 && a3 <= 2.0)
  {
    notificationBodyKey = self->_notificationBodyKey;
    self->_notificationBodyKey = @"WeeklyReportNotificationPositiveDeltaBody";

    v17 = MEMORY[0x1E696ADA0];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v19 = [v17 localizedStringFromNumber:v18 numberStyle:3];

    v27[0] = v19;
    v27[1] = v11;
    v20 = MEMORY[0x1E695DEC8];
    v21 = v27;
LABEL_9:
    v22 = [v20 arrayWithObjects:v21 count:2];
    [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:v22];

    goto LABEL_10;
  }

  if (a3 <= -0.05 && a3 >= -0.9)
  {
    v13 = self->_notificationBodyKey;
    self->_notificationBodyKey = @"WeeklyReportNotificationNegativeDeltaBody";

    v14 = MEMORY[0x1E696ADA0];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
    v19 = [v14 localizedStringFromNumber:v15 numberStyle:3];

    v26[0] = v19;
    v26[1] = v11;
    v20 = MEMORY[0x1E695DEC8];
    v21 = v26;
    goto LABEL_9;
  }

  v24 = self->_notificationBodyKey;
  if ((v9 / 7.0) <= 59)
  {
    self->_notificationBodyKey = @"WeeklyReportNotificationLessThanOneMinute";

    goto LABEL_11;
  }

  self->_notificationBodyKey = @"WeeklyReportNotificationDefaultBody";

  v25 = v11;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [(STUserNotificationContext *)self setLocalizedUserNotificationBodyArguments:v19];
LABEL_10:

LABEL_11:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__STWeeklyReportUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v10.receiver = self;
  v10.super_class = STWeeklyReportUserNotificationContext;
  v8 = v7;
  v9 = v6;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __90__STWeeklyReportUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"WeeklyReportNotificationTitle" arguments:0];
  [*(a1 + 32) setTitle:v2];

  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 40) notificationBodyKey];
  v5 = [*(a1 + 40) localizedUserNotificationBodyArguments];
  v6 = [v3 localizedUserNotificationStringForKey:v4 arguments:v5];
  [*(a1 + 32) setBody:v6];

  [*(a1 + 32) setCategoryIdentifier:@"com.apple.screentime.weekly-usage-report"];
  v7 = [*(a1 + 40) weeklyReportData];

  if (v7)
  {
    v14 = @"weeklyReportData";
    v8 = [*(a1 + 40) weeklyReportData];
    v15[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [*(a1 + 32) setUserInfo:v9];
  }

  v10 = objc_opt_new();
  [v10 setScheme:@"prefs"];
  [v10 setPath:@"root=SCREEN_TIME&path=SCREEN_TIME_SUMMARY"];
  [v10 setFragment:@"WEEK"];
  v11 = [v10 URL];

  [*(a1 + 32) setDefaultActionURL:v11];
  result = (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

@end
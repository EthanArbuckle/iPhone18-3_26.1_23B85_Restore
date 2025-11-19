@interface HDSPXPCAlarmScheduler
- (HDSPEventScheduleDelegate)delegate;
- (HDSPXPCAlarmScheduler)initWithCurrentDateProvider:(id)a3;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (void)scheduleEventForDate:(id)a3 options:(unint64_t)a4;
- (void)unschedule;
@end

@implementation HDSPXPCAlarmScheduler

- (HDSPXPCAlarmScheduler)initWithCurrentDateProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDSPXPCAlarmScheduler;
  v5 = [(HDSPXPCAlarmScheduler *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    currentDateProvider = v5->_currentDateProvider;
    v5->_currentDateProvider = v6;

    v8 = v5;
  }

  return v5;
}

- (void)scheduleEventForDate:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  v7 = (*(self->_currentDateProvider + 2))();
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [@"Date" UTF8String];
  v11 = time(0);
  xpc_dictionary_set_date(xdict, v10, 1000000000 * (ceil(v9) + v11));
  xpc_dictionary_set_BOOL(xdict, [@"UserVisible" UTF8String], v4 & 1);
  [@"com.apple.alarm" UTF8String];
  [@"com.apple.sleepd.NextAlarm" UTF8String];
  xpc_set_event();
}

- (void)unschedule
{
  [@"com.apple.alarm" UTF8String];
  [@"com.apple.sleepd.NextAlarm" UTF8String];

  xpc_set_event();
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 isEqualToString:@"com.apple.sleepd.NextAlarm"])
  {
    [(HDSPXPCAlarmScheduler *)self unschedule];
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138543618;
      *&v12[4] = objc_opt_class();
      *&v12[12] = 2114;
      *&v12[14] = v5;
      v7 = *&v12[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v12, 0x16u);
    }

    v8 = [(HDSPXPCAlarmScheduler *)self delegate];
    [v8 scheduledEventIsDue];
  }

  v9 = [MEMORY[0x277D2C900] futureWithNoResult];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HDSPEventScheduleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
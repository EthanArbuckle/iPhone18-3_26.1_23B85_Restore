@interface HDSPXPCAlarmScheduler
- (HDSPEventScheduleDelegate)delegate;
- (HDSPXPCAlarmScheduler)initWithCurrentDateProvider:(id)provider;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (void)scheduleEventForDate:(id)date options:(unint64_t)options;
- (void)unschedule;
@end

@implementation HDSPXPCAlarmScheduler

- (HDSPXPCAlarmScheduler)initWithCurrentDateProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = HDSPXPCAlarmScheduler;
  v5 = [(HDSPXPCAlarmScheduler *)&v10 init];
  if (v5)
  {
    v6 = [providerCopy copy];
    currentDateProvider = v5->_currentDateProvider;
    v5->_currentDateProvider = v6;

    v8 = v5;
  }

  return v5;
}

- (void)scheduleEventForDate:(id)date options:(unint64_t)options
{
  optionsCopy = options;
  dateCopy = date;
  xdict = xpc_dictionary_create(0, 0, 0);
  v7 = (*(self->_currentDateProvider + 2))();
  [dateCopy timeIntervalSinceDate:v7];
  v9 = v8;

  uTF8String = [@"Date" UTF8String];
  v11 = time(0);
  xpc_dictionary_set_date(xdict, uTF8String, 1000000000 * (ceil(v9) + v11));
  xpc_dictionary_set_BOOL(xdict, [@"UserVisible" UTF8String], optionsCopy & 1);
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

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.sleepd.NextAlarm"])
  {
    [(HDSPXPCAlarmScheduler *)self unschedule];
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138543618;
      *&v12[4] = objc_opt_class();
      *&v12[12] = 2114;
      *&v12[14] = nameCopy;
      v7 = *&v12[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", v12, 0x16u);
    }

    delegate = [(HDSPXPCAlarmScheduler *)self delegate];
    [delegate scheduledEventIsDue];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  v10 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (HDSPEventScheduleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
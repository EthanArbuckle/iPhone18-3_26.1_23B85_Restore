@interface HDSPGCDTimerScheduler
- (HDSPEventScheduleDelegate)delegate;
- (HDSPGCDTimerScheduler)initWithCurrentDateProvider:(id)a3;
- (void)scheduleEventForDate:(id)a3 options:(unint64_t)a4;
@end

@implementation HDSPGCDTimerScheduler

- (HDSPGCDTimerScheduler)initWithCurrentDateProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDSPGCDTimerScheduler;
  v5 = [(HDSPGCDTimerScheduler *)&v10 init];
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
  currentDateProvider = self->_currentDateProvider;
  v6 = currentDateProvider[2];
  v7 = a3;
  v8 = v6(currentDateProvider);
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = dispatch_time(0, (v10 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HDSPGCDTimerScheduler_scheduleEventForDate_options___block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
}

void __54__HDSPGCDTimerScheduler_scheduleEventForDate_options___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 scheduledEventIsDue];
}

- (HDSPEventScheduleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
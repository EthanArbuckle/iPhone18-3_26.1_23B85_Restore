@interface HDSHSleepApneaNotificationUITriggerObserver
- (HDSHSleepApneaNotificationUITriggerObserver)initWithProfile:(id)profile;
- (void)dealloc;
@end

@implementation HDSHSleepApneaNotificationUITriggerObserver

- (HDSHSleepApneaNotificationUITriggerObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDSHSleepApneaNotificationUITriggerObserver;
  v5 = [(HDSHSleepApneaNotificationUITriggerObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    [(HDSHSleepApneaNotificationUITriggerObserver *)v6 _registerUITriggers];
  }

  return v6;
}

- (void)dealloc
{
  [(HDSHSleepApneaNotificationUITriggerObserver *)self _deregisterUITriggers];
  v3.receiver = self;
  v3.super_class = HDSHSleepApneaNotificationUITriggerObserver;
  [(HDSHSleepApneaNotificationUITriggerObserver *)&v3 dealloc];
}

@end
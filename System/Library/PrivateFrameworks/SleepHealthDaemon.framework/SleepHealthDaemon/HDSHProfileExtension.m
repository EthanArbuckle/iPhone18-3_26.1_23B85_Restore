@interface HDSHProfileExtension
- (HDProfile)profile;
- (HDSHProfileExtension)initWithProfile:(id)a3;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
@end

@implementation HDSHProfileExtension

- (HDSHProfileExtension)initWithProfile:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = HDSHProfileExtension;
  v5 = [(HDSHProfileExtension *)&v36 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_storeWeak(&v5->_profile, v4);
  v7 = [[HDSHAccessibilityAssertionManager alloc] initWithProfile:v4];
  accessibilityAssertionManager = v6->_accessibilityAssertionManager;
  v6->_accessibilityAssertionManager = v7;

  WeakRetained = objc_loadWeakRetained(&v6->_profile);
  v10 = [WeakRetained daemon];
  v11 = [v10 behavior];
  v12 = [v11 hksp_supportsHealthData];

  if (v12)
  {
    v13 = [[HDSHWidgetSchedulingManager alloc] initWithProfile:v4];
    widgetSchedulingManager = v6->_widgetSchedulingManager;
    v6->_widgetSchedulingManager = v13;
  }

  v15 = [MEMORY[0x277D106D8] hdsh_sleepApneaNotificationsAvailabilityManagerWithProfile:v4];
  sleepApneaNotificationsAvailabilityManager = v6->_sleepApneaNotificationsAvailabilityManager;
  v6->_sleepApneaNotificationsAvailabilityManager = v15;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [MEMORY[0x277CCDD30] sharedBehavior];
    v18 = [v17 isAppleWatch];

    if ((v18 & 1) == 0)
    {
      triggerObserver = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v6->_sleepApneaNotificationsAvailabilityManager healthDataSource:v4];
      v23 = [[HDSHSleepApneaRescindedNotificationManager alloc] initWithProfile:v4 featureStatusProvider:triggerObserver];
      rescindedNotificationManager = v6->_rescindedNotificationManager;
      v6->_rescindedNotificationManager = v23;

      v25 = [HDSHBreathingDisturbanceAnalysisScheduler alloc];
      v26 = v6->_sleepApneaNotificationsAvailabilityManager;
      v27 = HKSPCurrentDateProvider();
      v28 = [(HDSHBreathingDisturbanceAnalysisScheduler *)v25 initWithProfile:v4 featureStatusProvider:triggerObserver featureAvailabilityProviding:v26 currentDateProvider:v27];
      breathingDisturbanceAnalysisScheduler = v6->_breathingDisturbanceAnalysisScheduler;
      v6->_breathingDisturbanceAnalysisScheduler = v28;

      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [MEMORY[0x277CCDD30] sharedBehavior];
    v20 = [v19 isAppleWatch];

    if (v20)
    {
      v21 = [[HDSHSleepApneaNotificationUITriggerObserver alloc] initWithProfile:v4];
      triggerObserver = v6->_triggerObserver;
      v6->_triggerObserver = v21;
LABEL_10:
    }
  }

  _HKInitializeLogging();
  v30 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = objc_opt_class();
    *buf = 138543362;
    v38 = v32;
    v33 = v32;
    _os_log_impl(&dword_269C02000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded", buf, 0xCu);
  }

LABEL_13:

  v34 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x277CCC0D8]])
  {
    v4 = self->_sleepApneaNotificationsAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end
@interface NCSnoozeAlarmNotificationStaticContentProvider
- (NCSnoozeAlarmNotificationStaticContentProvider)initWithNotificationRequest:(id)request viewController:(id)controller;
- (id)_formatDuration:(double)duration includeSeconds:(BOOL)seconds;
- (id)_secondaryTextForTime:(double)time;
- (id)_timelinesForDateInterval:(id)interval;
- (id)title;
- (void)_beginObservingAlwaysOnEnvironment;
- (void)_tickTimerFired:(id)fired;
- (void)_timelinesForDateInterval:(id)interval completion:(id)completion;
- (void)_updateContentForTime:(double)time;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)dealloc;
- (void)notificationViewControllerWillDismiss:(id)dismiss;
@end

@implementation NCSnoozeAlarmNotificationStaticContentProvider

- (NCSnoozeAlarmNotificationStaticContentProvider)initWithNotificationRequest:(id)request viewController:(id)controller
{
  requestCopy = request;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = NCSnoozeAlarmNotificationStaticContentProvider;
  v8 = [(NCNotificationRequestContentProvider *)&v23 initWithNotificationRequest:requestCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewController, controller);
    [(NCNotificationViewController *)v9->_viewController addObserver:v9];
    [(NCNotificationRequestContentProvider *)v9 setDelegate:controllerCopy];
    context = [requestCopy context];
    v11 = *MEMORY[0x277D295E0];
    v12 = [context objectForKey:*MEMORY[0x277D295E0]];
    if (!v12)
    {
      userNotification = [requestCopy userNotification];
      request = [userNotification request];
      content = [request content];
      userInfo = [content userInfo];
      v12 = [userInfo objectForKey:v11];
    }

    [v12 timeIntervalSinceNow];
    v9->_fireTime = v17 + CFAbsoluteTimeGetCurrent();
    v18 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:v9 target:sel__tickTimerFired_ selector:0 userInfo:1 repeats:1.0];
    tickTimer = v9->_tickTimer;
    v9->_tickTimer = v18;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:v9->_tickTimer forMode:*MEMORY[0x277CBE738]];

    v21 = [(NCSnoozeAlarmNotificationStaticContentProvider *)v9 _secondaryTextForTime:CFAbsoluteTimeGetCurrent()];
    [(NCSnoozeAlarmNotificationStaticContentProvider *)v9 setSecondaryText:v21];
  }

  return v9;
}

- (void)dealloc
{
  view = [(NCNotificationViewController *)self->_viewController view];
  window = [view window];
  windowScene = [window windowScene];
  _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
  [_alwaysOnEnvironment removeObserver:self];

  [(NCNotificationViewController *)self->_viewController removeObserver:self];
  [(NCSnoozeAlarmNotificationStaticContentProvider *)self invalidateTimer];
  v7.receiver = self;
  v7.super_class = NCSnoozeAlarmNotificationStaticContentProvider;
  [(NCSnoozeAlarmNotificationStaticContentProvider *)&v7 dealloc];
}

- (id)title
{
  v2 = NCUserNotificationsUIKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"ALARM_TITLE" value:&stru_282FE84F8 table:0];

  return v3;
}

- (id)_formatDuration:(double)duration includeSeconds:(BOOL)seconds
{
  if (seconds)
  {
    mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
    [mEMORY[0x277CF0BF0] formatAlarmSnoozeDuration:duration];
  }

  else
  {
    mEMORY[0x277CF0BF0] = [MEMORY[0x277CBEAF8] currentLocale];
    *v6.i64 = duration;
    NCFormatTimeIntervalForMinutesOnly(mEMORY[0x277CF0BF0], v6);
  }
  v7 = ;

  return v7;
}

- (void)_updateContentForTime:(double)time
{
  v4 = [(NCSnoozeAlarmNotificationStaticContentProvider *)self _secondaryTextForTime:time];
  [(NCSnoozeAlarmNotificationStaticContentProvider *)self setSecondaryText:v4];

  viewController = [(NCSnoozeAlarmNotificationStaticContentProvider *)self viewController];
  [viewController setHasUpdatedContent];
  [viewController updateContent];
}

- (id)_secondaryTextForTime:(double)time
{
  [(NCSnoozeAlarmNotificationStaticContentProvider *)self _remainingDurationForTime:?];
  v6 = v5;
  viewController = [(NCSnoozeAlarmNotificationStaticContentProvider *)self viewController];
  traitCollection = [viewController traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  v10 = _backlightLuminance != 1 || [(NCSnoozeAlarmNotificationStaticContentProvider *)self _hasOneMinuteOrLessRemainingForTime:time];
  v11 = [(NCSnoozeAlarmNotificationStaticContentProvider *)self _formatDuration:v10 includeSeconds:v6];
  v12 = MEMORY[0x277CCACA8];
  v13 = NCUserNotificationsUIKitFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"ALARM_SNOOZE_TIME_REMAINING" value:&stru_282FE84F8 table:0];
  v15 = [v12 stringWithFormat:v14, v11];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15];

  return v16;
}

- (void)_tickTimerFired:(id)fired
{
  Current = CFAbsoluteTimeGetCurrent();
  [(NCSnoozeAlarmNotificationStaticContentProvider *)self _updateContentForTime:?];
  [(NCSnoozeAlarmNotificationStaticContentProvider *)self _remainingDurationForTime:Current];
  if (v5 < 0.0)
  {

    [(NCSnoozeAlarmNotificationStaticContentProvider *)self invalidateTimer];
  }
}

- (id)_timelinesForDateInterval:(id)interval
{
  v66 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  fireTime = self->_fireTime;
  [startDate timeIntervalSinceReferenceDate];
  v8 = fireTime - v7;
  [intervalCopy duration];
  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v8 >= 0.0)
  {
    v15 = v8 + -60.0;
    if (v8 + -60.0 >= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v8 + -60.0;
    }

    if (v15 > 0.0)
    {
      v17 = (v16 / 60.0);
      if (v17)
      {
        v18 = 0;
        do
        {
          v19 = [startDate dateByAddingTimeInterval:(v8 % 60 + 1) + v18];
          v20 = [MEMORY[0x277CF0860] entryForPresentationTime:v19 withRequestedFidelity:1];
          [v11 addObject:v20];

          v18 += 60;
          --v17;
        }

        while (v17);
      }
    }

    if (v8 >= v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = v8;
    }

    v22 = (v21 - v15);
    v23 = MEMORY[0x277D77DB0];
    if (v15 < v10)
    {
      if (v22 >= 0x3D)
      {
        v24 = *MEMORY[0x277D77DB0];
        if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_FAULT))
        {
          v39 = MEMORY[0x277CBEAA8];
          v40 = self->_fireTime;
          v41 = v24;
          v45 = [v39 dateWithTimeIntervalSinceReferenceDate:v40];
          bls_shortLoggingString = [v45 bls_shortLoggingString];
          bls_shortLoggingString2 = [intervalCopy bls_shortLoggingString];
          v44 = [v11 bls_boundedDescriptionWithMax:15 transformer:&__block_literal_global_12];
          *buf = 134220034;
          selfCopy2 = self;
          v50 = 2048;
          v51 = (v21 - v15);
          v52 = 2114;
          v53 = bls_shortLoggingString;
          v54 = 2114;
          v55 = *&bls_shortLoggingString2;
          v56 = 2048;
          v57 = v8;
          v58 = 2048;
          v59 = v8 + -60.0;
          v60 = 2048;
          v61 = v8 + -60.0;
          v62 = 2048;
          v63 = v21;
          v64 = 2114;
          v65 = v44;
          _os_log_fault_impl(&dword_21E77E000, v41, OS_LOG_TYPE_FAULT, "%p Alarm snooze timelines — bad endIncrement:%ld — fireTime:%{public}@ interval:%{public}@ untiFireTime:%lf untilSeconds:%lf endMinutes:%lf endSeconds:%lf entries:%{public}@", buf, 0x5Cu);
        }

        v25 = 60;
        if (v22 < 60)
        {
          v25 = (v21 - v15);
        }

        v22 = v25 & ~(v25 >> 63);
      }

      v26 = 0;
      do
      {
        v27 = [startDate dateByAddingTimeInterval:v15 + v26];
        v28 = [MEMORY[0x277CF0860] entryForPresentationTime:v27 withRequestedFidelity:2];
        [v11 addObject:v28];

        ++v26;
      }

      while (v22 + 1 != v26);
      v23 = MEMORY[0x277D77DB0];
    }

    v29 = *v23;
    if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
    {
      v32 = MEMORY[0x277CBEAA8];
      v33 = self->_fireTime;
      v34 = v29;
      v35 = [v32 dateWithTimeIntervalSinceReferenceDate:v33];
      bls_shortLoggingString3 = [v35 bls_shortLoggingString];
      bls_shortLoggingString4 = [intervalCopy bls_shortLoggingString];
      v38 = [v11 bls_boundedDescriptionWithMax:15 transformer:&__block_literal_global_25];
      *buf = 134220034;
      selfCopy2 = self;
      v50 = 2114;
      v51 = bls_shortLoggingString3;
      v52 = 2114;
      v53 = bls_shortLoggingString4;
      v54 = 2048;
      v55 = v8;
      v56 = 2048;
      v57 = v8 + -60.0;
      v58 = 2048;
      v59 = v16;
      v60 = 2048;
      v61 = v21;
      v62 = 2048;
      v63 = *&v22;
      v64 = 2114;
      v65 = v38;
      _os_log_debug_impl(&dword_21E77E000, v34, OS_LOG_TYPE_DEBUG, "%p Alarm snooze timelines — fireTime:%{public}@ interval:%{public}@ untiFireTime:%lf untilSeconds:%lf endMinutes:%lf endSeconds:%lf endIncrement:%ld entries:%{public}@", buf, 0x5Cu);
    }

    v13 = [MEMORY[0x277CF0858] timelineWithEntries:v11 identifier:@"NCSnoozeAlarmNotificationStaticContentProvider" configure:&__block_literal_global_33];
    v47 = v13;
    v14 = &v47;
  }

  else
  {
    v12 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
    {
      [(NCSnoozeAlarmNotificationStaticContentProvider *)self _timelinesForDateInterval:v12];
    }

    v13 = [MEMORY[0x277CF0858] emptyTimelineWithIdentifier:@"NCSnoozeAlarmNotificationStaticContentProvider"];
    v46 = v13;
    v14 = &v46;
  }

  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v30;
}

id __76__NCSnoozeAlarmNotificationStaticContentProvider__timelinesForDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentationTime];
  v3 = [v2 bls_shortLoggingString];

  return v3;
}

id __76__NCSnoozeAlarmNotificationStaticContentProvider__timelinesForDateInterval___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 presentationTime];
  v5 = [v4 bls_shortLoggingString];
  [v3 requestedFidelity];

  v6 = NSStringFromBLSUpdateFidelity();
  v7 = [v2 stringWithFormat:@"%@ - %@", v5, v6];

  return v7;
}

- (void)_timelinesForDateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  v8 = [(NCSnoozeAlarmNotificationStaticContentProvider *)self _timelinesForDateInterval:interval];
  (*(completion + 2))(completionCopy, v8);
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy)
  {
    v6 = [specifierCopy entrySpecifierForTimelineIdentifier:@"NCSnoozeAlarmNotificationStaticContentProvider"];
    timelineEntry = [v6 timelineEntry];
    presentationTime = [timelineEntry presentationTime];

    if (!presentationTime)
    {
      v9 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
      {
        [(NCSnoozeAlarmNotificationStaticContentProvider *)self _updateWithFrameSpecifier:v9, v5];
      }

      presentationInterval = [v5 presentationInterval];
      presentationTime = [presentationInterval startDate];
    }

    [presentationTime timeIntervalSinceReferenceDate];
    [(NCSnoozeAlarmNotificationStaticContentProvider *)self _updateContentForTime:?];
  }

  else
  {
    [(NCSnoozeAlarmNotificationStaticContentProvider *)self _updateContentForTime:CFAbsoluteTimeGetCurrent()];
  }
}

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  [(NCSnoozeAlarmNotificationStaticContentProvider *)self _updateWithFrameSpecifier:specifier];
  completionCopy[2]();
}

- (void)_beginObservingAlwaysOnEnvironment
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "Alarm snooze provider %p couldn't find alwaysOnEnvironment to observe", &v2, 0xCu);
}

- (void)notificationViewControllerWillDismiss:(id)dismiss
{
  view = [(NCNotificationViewController *)self->_viewController view];
  window = [view window];
  windowScene = [window windowScene];
  _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
  [_alwaysOnEnvironment removeObserver:self];
}

- (void)_timelinesForDateInterval:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_21E77E000, a2, OS_LOG_TYPE_DEBUG, "%p Alarm snooze not running - returning empty timeline", &v2, 0xCu);
}

- (void)_updateWithFrameSpecifier:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 description];
  v7 = 134218498;
  v8 = a1;
  v9 = 2114;
  v10 = @"NCSnoozeAlarmNotificationStaticContentProvider";
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "%p Could not find id:%{public}@ in frameSpecifier:%{public}@", &v7, 0x20u);
}

@end
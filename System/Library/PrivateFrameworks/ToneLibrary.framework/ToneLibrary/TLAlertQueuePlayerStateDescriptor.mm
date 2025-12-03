@interface TLAlertQueuePlayerStateDescriptor
- (TLAlertQueuePlayerStateDescriptor)initWithPlayingAlert:(id)alert completionHandler:(id)handler previousStateDescriptor:(id)descriptor;
- (id)_descriptionForDebugging:(BOOL)debugging;
- (id)_initForRelinquishingActivationAssertionWithAlertForAudioEnvironmentSetup:(id)setup previousStateDescriptor:(id)descriptor;
- (id)initForAcquiringActivationAssertionWithAlertForAudioEnvironmentSetup:(id)setup previousStateDescriptor:(id)descriptor;
- (id)stateDescriptorByRelinquishingActivationAssertion;
- (id)stateDescriptorForCompletedPlayback;
- (void)_initializeAnalyticsFromPreviousStateDescriptor:(id)descriptor;
- (void)_transferPlayingAlertAndCompletionHandlerFromPreviousStateDescriptor:(id)descriptor;
- (void)invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:(int64_t)type error:(id)error;
@end

@implementation TLAlertQueuePlayerStateDescriptor

- (TLAlertQueuePlayerStateDescriptor)initWithPlayingAlert:(id)alert completionHandler:(id)handler previousStateDescriptor:(id)descriptor
{
  alertCopy = alert;
  handlerCopy = handler;
  descriptorCopy = descriptor;
  v23.receiver = self;
  v23.super_class = TLAlertQueuePlayerStateDescriptor;
  v12 = [(TLAlertQueuePlayerStateDescriptor *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_playingAlert, alert);
    v14 = [handlerCopy copy];
    playingAlertCompletionHandler = v13->_playingAlertCompletionHandler;
    v13->_playingAlertCompletionHandler = v14;

    if ([descriptorCopy isAlertActivationAssertionAcquired])
    {
      v13->_isAlertActivationAssertionAcquired = 1;
      alertForAudioEnvironmentSetup = [descriptorCopy alertForAudioEnvironmentSetup];
    }

    else
    {
      alertForAudioEnvironmentSetup = alertCopy;
    }

    alertForAudioEnvironmentSetup = v13->_alertForAudioEnvironmentSetup;
    v13->_alertForAudioEnvironmentSetup = alertForAudioEnvironmentSetup;

    v18 = [[TLAlertQueuePlayerAnalytics alloc] initWithAlert:alertCopy];
    analytics = v13->_analytics;
    v13->_analytics = v18;

    v20 = +[TLAlertQueuePlayerAnalyticsRecorder sharedRecorder];
    analyticsRecorder = v13->_analyticsRecorder;
    v13->_analyticsRecorder = v20;
  }

  return v13;
}

- (id)stateDescriptorForCompletedPlayback
{
  if (self->_isAlertActivationAssertionAcquired)
  {
    v3 = [[TLAlertQueuePlayerStateDescriptor alloc] initForAcquiringActivationAssertionWithAlertForAudioEnvironmentSetup:self->_alertForAudioEnvironmentSetup previousStateDescriptor:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)initForAcquiringActivationAssertionWithAlertForAudioEnvironmentSetup:(id)setup previousStateDescriptor:(id)descriptor
{
  setupCopy = setup;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = TLAlertQueuePlayerStateDescriptor;
  v9 = [(TLAlertQueuePlayerStateDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alertForAudioEnvironmentSetup, setup);
    v10->_isAlertActivationAssertionAcquired = 1;
    [(TLAlertQueuePlayerStateDescriptor *)v10 _transferPlayingAlertAndCompletionHandlerFromPreviousStateDescriptor:descriptorCopy];
    [(TLAlertQueuePlayerStateDescriptor *)v10 _initializeAnalyticsFromPreviousStateDescriptor:descriptorCopy];
  }

  return v10;
}

- (id)stateDescriptorByRelinquishingActivationAssertion
{
  playingAlert = self->_playingAlert;
  if (playingAlert)
  {
    v4 = playingAlert;
    v5 = [[TLAlertQueuePlayerStateDescriptor alloc] _initForRelinquishingActivationAssertionWithAlertForAudioEnvironmentSetup:v4 previousStateDescriptor:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initForRelinquishingActivationAssertionWithAlertForAudioEnvironmentSetup:(id)setup previousStateDescriptor:(id)descriptor
{
  setupCopy = setup;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = TLAlertQueuePlayerStateDescriptor;
  v9 = [(TLAlertQueuePlayerStateDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alertForAudioEnvironmentSetup, setup);
    v10->_isAlertActivationAssertionAcquired = 0;
    [(TLAlertQueuePlayerStateDescriptor *)v10 _transferPlayingAlertAndCompletionHandlerFromPreviousStateDescriptor:descriptorCopy];
    [(TLAlertQueuePlayerStateDescriptor *)v10 _initializeAnalyticsFromPreviousStateDescriptor:descriptorCopy];
  }

  return v10;
}

- (void)_transferPlayingAlertAndCompletionHandlerFromPreviousStateDescriptor:(id)descriptor
{
  if (descriptor)
  {
    objc_storeStrong(&self->_playingAlert, *(descriptor + 4));
    descriptorCopy = descriptor;
    v5 = MEMORY[0x1DA730160](*(descriptorCopy + 5));
    playingAlertCompletionHandler = self->_playingAlertCompletionHandler;
    self->_playingAlertCompletionHandler = v5;

    self->_hasInvokedCompletionHandlerForPlayingAlert = *(descriptorCopy + 8);
    *(descriptorCopy + 8) = 1;
  }
}

- (void)_initializeAnalyticsFromPreviousStateDescriptor:(id)descriptor
{
  if (descriptor)
  {
    analytics = [descriptor analytics];
    analytics = self->_analytics;
    self->_analytics = analytics;
  }

  else
  {
    playingAlert = self->_playingAlert;
    if (!playingAlert)
    {
      playingAlert = self->_alertForAudioEnvironmentSetup;
    }

    analytics = playingAlert;
    v7 = [[TLAlertQueuePlayerAnalytics alloc] initWithAlert:analytics];
    v8 = self->_analytics;
    self->_analytics = v7;
  }

  v9 = +[TLAlertQueuePlayerAnalyticsRecorder sharedRecorder];
  analyticsRecorder = self->_analyticsRecorder;
  self->_analyticsRecorder = v9;

  MEMORY[0x1EEE66BB8]();
}

- (id)_descriptionForDebugging:(BOOL)debugging
{
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"<%@: %p", v7, self];

  playingAlert = self->_playingAlert;
  if (debugging)
  {
    v10 = [(TLAlert *)playingAlert debugDescription];
    [v8 appendFormat:@"; playingAlert = %@", v10];
    if (!self->_isAlertActivationAssertionAcquired)
    {
      goto LABEL_12;
    }

    v11 = [(TLAlert *)self->_alertForAudioEnvironmentSetup debugDescription];
  }

  else
  {
    if (playingAlert)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v10 = [v12 stringWithFormat:@"<%@: %p>", v14, self->_playingAlert];
    }

    else
    {
      v10 = 0;
    }

    [v8 appendFormat:@"; playingAlert = %@", v10];
    if (!self->_isAlertActivationAssertionAcquired)
    {
      goto LABEL_12;
    }

    if (self->_alertForAudioEnvironmentSetup)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v11 = [v15 stringWithFormat:@"<%@: %p>", v17, self->_alertForAudioEnvironmentSetup];
    }

    else
    {
      v11 = 0;
    }
  }

  [v8 appendFormat:@"; alertForAudioEnvironmentSetup = %@", v11];

LABEL_12:
  [v8 appendString:@">"];

  return v8;
}

- (void)invokePlayingAlertCompletionHandlerWithPlaybackCompletionType:(int64_t)type error:(id)error
{
  errorCopy = error;
  v7 = MEMORY[0x1DA730160](self->_playingAlertCompletionHandler);
  if (v7 && !self->_hasInvokedCompletionHandlerForPlayingAlert)
  {
    self->_hasInvokedCompletionHandlerForPlayingAlert = 1;
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__TLAlertQueuePlayerStateDescriptor_invokePlayingAlertCompletionHandlerWithPlaybackCompletionType_error___block_invoke;
    block[3] = &unk_1E8579850;
    v13 = v7;
    typeCopy = type;
    v12 = errorCopy;
    dispatch_async(v8, block);

    [(TLAlertQueuePlayerAnalytics *)self->_analytics setWasDeviceChargingOnStop:+[TLAlertQueuePlayerAnalytics isDeviceCurrentlyCharging]];
    analytics = self->_analytics;
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    [(TLAlertQueuePlayerAnalytics *)analytics setStopTime:?];

    [(TLAlertQueuePlayerAnalytics *)self->_analytics setAttentionAwarenessSupportEnabled:+[TLAttentionAwarenessObserver supportsAttenuatingTonesForAttentionDetected]];
    [(TLAlertQueuePlayerAnalyticsRecorder *)self->_analyticsRecorder recordAnalytics:self->_analytics];
  }
}

@end
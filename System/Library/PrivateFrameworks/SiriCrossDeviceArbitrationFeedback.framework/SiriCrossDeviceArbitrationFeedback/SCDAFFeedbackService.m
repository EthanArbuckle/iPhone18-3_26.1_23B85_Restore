@interface SCDAFFeedbackService
+ (id)sharedService;
- (SCDAFFeedbackService)initWithServiceImpl:(id)a3 globals:(id)a4;
- (SCDAFFeedbackServiceDelegate)delegate;
- (id)_init;
- (int64_t)_actionFromSCDAFFeedbackAction:(int64_t)a3;
- (int64_t)_scdaFeedbackActionFrom:(int64_t)a3;
- (void)handleAssistantDismissed;
- (void)handleNotificationAction:(int64_t)a3;
- (void)handleNotificationSCDAFAction:(int64_t)a3;
- (void)handleReceivedArbitrationParticipation:(id)a3;
- (void)setLocalDeviceAssistantIdentifier:(id)a3;
@end

@implementation SCDAFFeedbackService

- (SCDAFFeedbackServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)_actionFromSCDAFFeedbackAction:(int64_t)a3
{
  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (int64_t)_scdaFeedbackActionFrom:(int64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (void)handleNotificationAction:(int64_t)a3
{
  v5 = +[_TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl shared];
  v6 = [v5 isInternalInstall];

  if (v6 && [(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    v7 = [(SCDAFFeedbackService *)self _scdaFeedbackActionFrom:a3];
    v8 = [(SCDAFFeedbackService *)self delegate];
    [v8 handleUserFeedbackAction:v7];
  }
}

- (void)handleNotificationSCDAFAction:(int64_t)a3
{
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    v5 = [(SCDAFFeedbackService *)self _actionFromSCDAFFeedbackAction:a3];

    [(SCDAFFeedbackService *)self handleNotificationAction:v5];
  }
}

- (SCDAFFeedbackService)initWithServiceImpl:(id)a3 globals:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCDAFFeedbackService;
  v9 = [(SCDAFFeedbackService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedbackService, a3);
    [(FeedbackServiceImpl *)v10->_feedbackService setDelegate:v10];
    if ([v8 conformsToProtocol:&unk_2878426E8])
    {
      objc_storeStrong(&v10->_globals, a4);
    }
  }

  return v10;
}

- (void)setLocalDeviceAssistantIdentifier:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_localDeviceAssistantIdentifier, a3);
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    [(Globals *)self->_globals setLocalDeviceAssistantIdentifier:v5];
  }
}

- (void)handleAssistantDismissed
{
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    v3 = [(SCDAFFeedbackService *)self feedbackService];
    [v3 handleAssistantDismissed];
  }
}

- (void)handleReceivedArbitrationParticipation:(id)a3
{
  v5 = a3;
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    v4 = [(SCDAFFeedbackService *)self feedbackService];
    [v4 add:v5];
  }
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = SCDAFFeedbackService;
  v2 = [(SCDAFFeedbackService *)&v8 init];
  if (v2)
  {
    v3 = +[_TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl sharedService];
    feedbackService = v2->_feedbackService;
    v2->_feedbackService = v3;

    [(FeedbackServiceImpl *)v2->_feedbackService setDelegate:v2];
    v5 = +[_TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl shared];
    globals = v2->_globals;
    v2->_globals = v5;
  }

  return v2;
}

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SCDAFFeedbackService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, block);
  }

  v2 = sharedService_service;

  return v2;
}

uint64_t __37__SCDAFFeedbackService_sharedService__block_invoke(uint64_t a1)
{
  sharedService_service = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

@end
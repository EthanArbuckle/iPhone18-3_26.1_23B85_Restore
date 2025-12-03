@interface SCDAFFeedbackService
+ (id)sharedService;
- (SCDAFFeedbackService)initWithServiceImpl:(id)impl globals:(id)globals;
- (SCDAFFeedbackServiceDelegate)delegate;
- (id)_init;
- (int64_t)_actionFromSCDAFFeedbackAction:(int64_t)action;
- (int64_t)_scdaFeedbackActionFrom:(int64_t)from;
- (void)handleAssistantDismissed;
- (void)handleNotificationAction:(int64_t)action;
- (void)handleNotificationSCDAFAction:(int64_t)action;
- (void)handleReceivedArbitrationParticipation:(id)participation;
- (void)setLocalDeviceAssistantIdentifier:(id)identifier;
@end

@implementation SCDAFFeedbackService

- (SCDAFFeedbackServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)_actionFromSCDAFFeedbackAction:(int64_t)action
{
  if (action == 1)
  {
    return 2;
  }

  else
  {
    return action == 2;
  }
}

- (int64_t)_scdaFeedbackActionFrom:(int64_t)from
{
  if (from == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (from == 1);
  }
}

- (void)handleNotificationAction:(int64_t)action
{
  v5 = +[_TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl shared];
  isInternalInstall = [v5 isInternalInstall];

  if (isInternalInstall && [(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    v7 = [(SCDAFFeedbackService *)self _scdaFeedbackActionFrom:action];
    delegate = [(SCDAFFeedbackService *)self delegate];
    [delegate handleUserFeedbackAction:v7];
  }
}

- (void)handleNotificationSCDAFAction:(int64_t)action
{
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    v5 = [(SCDAFFeedbackService *)self _actionFromSCDAFFeedbackAction:action];

    [(SCDAFFeedbackService *)self handleNotificationAction:v5];
  }
}

- (SCDAFFeedbackService)initWithServiceImpl:(id)impl globals:(id)globals
{
  implCopy = impl;
  globalsCopy = globals;
  v12.receiver = self;
  v12.super_class = SCDAFFeedbackService;
  v9 = [(SCDAFFeedbackService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedbackService, impl);
    [(FeedbackServiceImpl *)v10->_feedbackService setDelegate:v10];
    if ([globalsCopy conformsToProtocol:&unk_2878426E8])
    {
      objc_storeStrong(&v10->_globals, globals);
    }
  }

  return v10;
}

- (void)setLocalDeviceAssistantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_storeStrong(&self->_localDeviceAssistantIdentifier, identifier);
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    [(Globals *)self->_globals setLocalDeviceAssistantIdentifier:identifierCopy];
  }
}

- (void)handleAssistantDismissed
{
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    feedbackService = [(SCDAFFeedbackService *)self feedbackService];
    [feedbackService handleAssistantDismissed];
  }
}

- (void)handleReceivedArbitrationParticipation:(id)participation
{
  participationCopy = participation;
  if ([(SCDAFFeedbackService *)self isUserFeedbackFeatureEnabled])
  {
    feedbackService = [(SCDAFFeedbackService *)self feedbackService];
    [feedbackService add:participationCopy];
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
  block[4] = self;
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
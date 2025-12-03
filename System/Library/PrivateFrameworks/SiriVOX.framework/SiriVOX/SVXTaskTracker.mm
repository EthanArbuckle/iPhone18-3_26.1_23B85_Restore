@interface SVXTaskTracker
- (BOOL)isUUFR;
- (BOOL)listensAfterSpeaking;
- (NSError)error;
- (NSString)aceId;
- (NSString)description;
- (NSString)dialogIdentifier;
- (NSString)dialogPhase;
- (NSString)refId;
- (NSUUID)requestUUID;
- (NSUUID)sessionUUID;
- (SAUIListenAfterSpeakingBehavior)listenAfterSpeakingBehavior;
- (SVXActivationContext)activationContext;
- (SVXDeactivationContext)deactivationContext;
- (SVXTaskTracker)initWithContext:(id)context instrumentationContext:(id)instrumentationContext delegate:(id)delegate;
- (id)beginChildWithContext:(id)context;
- (int64_t)origin;
- (unint64_t)timestamp;
- (void)dealloc;
@end

@implementation SVXTaskTracker

- (NSError)error
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    error = [context error];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !error);

  return error;
}

- (SVXDeactivationContext)deactivationContext
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    deactivationContext = [context deactivationContext];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !deactivationContext);

  return deactivationContext;
}

- (SVXActivationContext)activationContext
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    activationContext = [context activationContext];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !activationContext);

  return activationContext;
}

- (SAUIListenAfterSpeakingBehavior)listenAfterSpeakingBehavior
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    listenAfterSpeakingBehavior = [context listenAfterSpeakingBehavior];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !listenAfterSpeakingBehavior);

  return listenAfterSpeakingBehavior;
}

- (BOOL)listensAfterSpeaking
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    listensAfterSpeaking = [context listensAfterSpeaking];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !listensAfterSpeaking);

  return listensAfterSpeaking;
}

- (BOOL)isUUFR
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    isUUFR = [context isUUFR];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !isUUFR);

  return isUUFR;
}

- (NSString)dialogPhase
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    dialogPhase = [context dialogPhase];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !dialogPhase);

  return dialogPhase;
}

- (NSString)dialogIdentifier
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    dialogIdentifier = [context dialogIdentifier];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !dialogIdentifier);

  return dialogIdentifier;
}

- (NSString)refId
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    refId = [context refId];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !refId);

  return refId;
}

- (NSString)aceId
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    aceId = [context aceId];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !aceId);

  return aceId;
}

- (NSUUID)requestUUID
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    requestUUID = [context requestUUID];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !requestUUID);

  return requestUUID;
}

- (NSUUID)sessionUUID
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    sessionUUID = [context sessionUUID];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !sessionUUID);

  return sessionUUID;
}

- (unint64_t)timestamp
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    timestamp = [context timestamp];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !timestamp);

  return timestamp;
}

- (int64_t)origin
{
  selfCopy = self;
  do
  {
    v3 = selfCopy;
    context = [(SVXTaskTracker *)selfCopy context];
    origin = [context origin];

    selfCopy = [(SVXTaskTracker *)v3 parent];
  }

  while (selfCopy && !origin);

  return origin;
}

- (id)beginChildWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  instrumentationContext = self->_instrumentationContext;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v5 initWithContext:contextCopy instrumentationContext:instrumentationContext delegate:WeakRetained];

  objc_storeStrong(v8 + 3, self);
  v9 = objc_loadWeakRetained(&self->_delegate);
  [v9 taskTracker:self childWillBegin:v8];

  return v8;
}

- (SVXTaskTracker)initWithContext:(id)context instrumentationContext:(id)instrumentationContext delegate:(id)delegate
{
  contextCopy = context;
  instrumentationContextCopy = instrumentationContext;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SVXTaskTracker;
  v11 = [(SVXTaskTracker *)&v15 init];
  if (v11)
  {
    v12 = [contextCopy copy];
    context = v11->_context;
    v11->_context = v12;

    objc_storeStrong(&v11->_instrumentationContext, instrumentationContext);
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXTaskTracker;
  v4 = [(SVXTaskTracker *)&v8 description];
  context = self->_context;
  v6 = [v3 initWithFormat:@"%@ {context = %@, instrumentationContext = %@}", v4, context, self->_instrumentationContext];

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained taskTrackerDidEnd:self];

  v4.receiver = self;
  v4.super_class = SVXTaskTracker;
  [(SVXTaskTracker *)&v4 dealloc];
}

@end
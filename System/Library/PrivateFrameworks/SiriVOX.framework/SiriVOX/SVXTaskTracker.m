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
- (SVXTaskTracker)initWithContext:(id)a3 instrumentationContext:(id)a4 delegate:(id)a5;
- (id)beginChildWithContext:(id)a3;
- (int64_t)origin;
- (unint64_t)timestamp;
- (void)dealloc;
@end

@implementation SVXTaskTracker

- (NSError)error
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 error];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (SVXDeactivationContext)deactivationContext
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 deactivationContext];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (SVXActivationContext)activationContext
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 activationContext];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (SAUIListenAfterSpeakingBehavior)listenAfterSpeakingBehavior
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 listenAfterSpeakingBehavior];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (BOOL)listensAfterSpeaking
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 listensAfterSpeaking];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (BOOL)isUUFR
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 isUUFR];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (NSString)dialogPhase
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 dialogPhase];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (NSString)dialogIdentifier
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 dialogIdentifier];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (NSString)refId
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 refId];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (NSString)aceId
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 aceId];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (NSUUID)requestUUID
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 requestUUID];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (NSUUID)sessionUUID
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 sessionUUID];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (unint64_t)timestamp
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 timestamp];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (int64_t)origin
{
  v2 = self;
  do
  {
    v3 = v2;
    v4 = [(SVXTaskTracker *)v2 context];
    v5 = [v4 origin];

    v2 = [(SVXTaskTracker *)v3 parent];
  }

  while (v2 && !v5);

  return v5;
}

- (id)beginChildWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  instrumentationContext = self->_instrumentationContext;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v5 initWithContext:v4 instrumentationContext:instrumentationContext delegate:WeakRetained];

  objc_storeStrong(v8 + 3, self);
  v9 = objc_loadWeakRetained(&self->_delegate);
  [v9 taskTracker:self childWillBegin:v8];

  return v8;
}

- (SVXTaskTracker)initWithContext:(id)a3 instrumentationContext:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SVXTaskTracker;
  v11 = [(SVXTaskTracker *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    context = v11->_context;
    v11->_context = v12;

    objc_storeStrong(&v11->_instrumentationContext, a4);
    objc_storeWeak(&v11->_delegate, v10);
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
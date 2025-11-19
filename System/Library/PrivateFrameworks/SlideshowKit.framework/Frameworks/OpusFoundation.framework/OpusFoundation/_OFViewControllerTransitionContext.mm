@interface _OFViewControllerTransitionContext
- (_OFViewControllerTransitionContext)initWithContainerView:(id)a3 fromViewController:(id)a4 toViewController:(id)a5 animator:(id)a6 interactor:(id)a7;
- (void)cancelInteractiveTransitionWithVelocity:(double)a3;
- (void)completeTransition:(BOOL)a3;
- (void)dealloc;
- (void)finishInteractiveTransitionWithVelocity:(double)a3;
- (void)makeTransitionInteractiveWithInteractor:(id)a3 andProgress:(double)a4;
- (void)setIsCompleting:(BOOL)a3;
- (void)startInteractiveTransition;
- (void)updateInteractiveTransition:(double)a3;
- (void)updateNonInteractiveTransitionWithProgress:(double)a3;
@end

@implementation _OFViewControllerTransitionContext

- (_OFViewControllerTransitionContext)initWithContainerView:(id)a3 fromViewController:(id)a4 toViewController:(id)a5 animator:(id)a6 interactor:(id)a7
{
  v16.receiver = self;
  v16.super_class = _OFViewControllerTransitionContext;
  v12 = [(_OFViewControllerTransitionContext *)&v16 init];
  v13 = v12;
  if (v12)
  {
    *(&v12->_flags + 8) |= 2u;
    v12->_containerView = a3;
    v13->_fromViewController = a4;
    v13->_toViewController = a5;
    v13->_animator = a6;
    if (a7)
    {
      v13->_interactor = a7;
      *&v13->_flags = *&v13->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      *&v13->_flags = *&v13->_flags & 0xFD | v14;
      v13->_flags.isCurrentlyInteractive = 1;
    }
  }

  return v13;
}

- (void)dealloc
{
  willCompleteHandler = self->_willCompleteHandler;
  if (willCompleteHandler)
  {

    self->_willCompleteHandler = 0;
  }

  interactiveUpdateHandler = self->_interactiveUpdateHandler;
  if (interactiveUpdateHandler)
  {

    self->_interactiveUpdateHandler = 0;
  }

  containerView = self->_containerView;
  if (containerView)
  {

    self->_containerView = 0;
  }

  fromViewController = self->_fromViewController;
  if (fromViewController)
  {

    self->_fromViewController = 0;
  }

  toViewController = self->_toViewController;
  if (toViewController)
  {

    self->_toViewController = 0;
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {

    self->_completionHandler = 0;
  }

  animator = self->_animator;
  if (animator)
  {

    self->_animator = 0;
  }

  v10.receiver = self;
  v10.super_class = _OFViewControllerTransitionContext;
  [(_OFViewControllerTransitionContext *)&v10 dealloc];
}

- (void)startInteractiveTransition
{
  self->_lastUpdateTimestamp = CFAbsoluteTimeGetCurrent();
  self->_progress = 0.0;
  self->_progressVelocity = 0.0;
}

- (void)updateInteractiveTransition:(double)a3
{
  if (self->_state == 1 && self->_flags.isCurrentlyInteractive && self->_interactiveUpdateHandler && self->_progress != a3)
  {
    *(&self->_flags + 8) &= ~2u;
    Current = CFAbsoluteTimeGetCurrent();
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    if (lastUpdateTimestamp > 0.0)
    {
      self->_progressVelocity = (a3 - self->_progress) / (Current - lastUpdateTimestamp);
    }

    self->_lastUpdateTimestamp = Current;
    self->_progress = a3;
    v7 = self;
    (*(self->_interactiveUpdateHandler + 2))(self->_progress);

    v8 = self;
  }
}

- (void)makeTransitionInteractiveWithInteractor:(id)a3 andProgress:(double)a4
{
  if (a3)
  {
    self->_interactor = a3;
    *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFD | v6;
  }

  self->_progress = a4;
  self->_flags.isCurrentlyInteractive = 1;
  *(&self->_flags + 8) &= 0xFCu;
}

- (void)finishInteractiveTransitionWithVelocity:(double)a3
{
  self->_progressVelocity = a3;
  if (self->_toViewController)
  {
    if (self->_state == 1)
    {
      *(&self->_flags + 8) = *(&self->_flags + 8) & 0xFC | 2;
      v4 = self;
      if (self->_flags.isCurrentlyInteractive)
      {
        interactiveUpdateHandler = self->_interactiveUpdateHandler;
        if (interactiveUpdateHandler)
        {
          interactiveUpdateHandler[2](interactiveUpdateHandler, 1, 1, self, self->_progress);
        }
      }

      self->_flags.isCurrentlyInteractive = 0;

      v6 = self;
    }

    else
    {
      self->_state = 3;
    }
  }

  else
  {

    [(_OFViewControllerTransitionContext *)self cancelInteractiveTransitionWithVelocity:?];
  }
}

- (void)cancelInteractiveTransitionWithVelocity:(double)a3
{
  self->_progressVelocity = a3;
  if (self->_state == 1)
  {
    *(&self->_flags + 8) |= 3u;
    v4 = self;
    if (self->_flags.isCurrentlyInteractive)
    {
      interactiveUpdateHandler = self->_interactiveUpdateHandler;
      if (interactiveUpdateHandler)
      {
        interactiveUpdateHandler[2](interactiveUpdateHandler, 1, 0, self, self->_progress);
      }
    }

    self->_flags.isCurrentlyInteractive = 0;

    v6 = self;
  }

  else
  {
    self->_state = 2;
  }
}

- (void)updateNonInteractiveTransitionWithProgress:(double)a3
{
  if (self->_state == 1 && self->_progress != a3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    if (lastUpdateTimestamp > 0.0)
    {
      self->_progressVelocity = (a3 - self->_progress) / (Current - lastUpdateTimestamp);
    }

    self->_lastUpdateTimestamp = Current;
    self->_progress = a3;
  }
}

- (void)completeTransition:(BOOL)a3
{
  willCompleteHandler = self->_willCompleteHandler;
  if (willCompleteHandler)
  {
    willCompleteHandler[2](willCompleteHandler, self, a3);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = *(completionHandler + 2);

    v6();
  }
}

- (void)setIsCompleting:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 8) = *(&self->_flags + 8) & 0xFD | v3;
}

@end
@interface _OFViewControllerTransitionContext
- (_OFViewControllerTransitionContext)initWithContainerView:(id)view fromViewController:(id)controller toViewController:(id)viewController animator:(id)animator interactor:(id)interactor;
- (void)cancelInteractiveTransitionWithVelocity:(double)velocity;
- (void)completeTransition:(BOOL)transition;
- (void)dealloc;
- (void)finishInteractiveTransitionWithVelocity:(double)velocity;
- (void)makeTransitionInteractiveWithInteractor:(id)interactor andProgress:(double)progress;
- (void)setIsCompleting:(BOOL)completing;
- (void)startInteractiveTransition;
- (void)updateInteractiveTransition:(double)transition;
- (void)updateNonInteractiveTransitionWithProgress:(double)progress;
@end

@implementation _OFViewControllerTransitionContext

- (_OFViewControllerTransitionContext)initWithContainerView:(id)view fromViewController:(id)controller toViewController:(id)viewController animator:(id)animator interactor:(id)interactor
{
  v16.receiver = self;
  v16.super_class = _OFViewControllerTransitionContext;
  v12 = [(_OFViewControllerTransitionContext *)&v16 init];
  v13 = v12;
  if (v12)
  {
    *(&v12->_flags + 8) |= 2u;
    v12->_containerView = view;
    v13->_fromViewController = controller;
    v13->_toViewController = viewController;
    v13->_animator = animator;
    if (interactor)
    {
      v13->_interactor = interactor;
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

- (void)updateInteractiveTransition:(double)transition
{
  if (self->_state == 1 && self->_flags.isCurrentlyInteractive && self->_interactiveUpdateHandler && self->_progress != transition)
  {
    *(&self->_flags + 8) &= ~2u;
    Current = CFAbsoluteTimeGetCurrent();
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    if (lastUpdateTimestamp > 0.0)
    {
      self->_progressVelocity = (transition - self->_progress) / (Current - lastUpdateTimestamp);
    }

    self->_lastUpdateTimestamp = Current;
    self->_progress = transition;
    selfCopy = self;
    (*(self->_interactiveUpdateHandler + 2))(self->_progress);

    selfCopy2 = self;
  }
}

- (void)makeTransitionInteractiveWithInteractor:(id)interactor andProgress:(double)progress
{
  if (interactor)
  {
    self->_interactor = interactor;
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

  self->_progress = progress;
  self->_flags.isCurrentlyInteractive = 1;
  *(&self->_flags + 8) &= 0xFCu;
}

- (void)finishInteractiveTransitionWithVelocity:(double)velocity
{
  self->_progressVelocity = velocity;
  if (self->_toViewController)
  {
    if (self->_state == 1)
    {
      *(&self->_flags + 8) = *(&self->_flags + 8) & 0xFC | 2;
      selfCopy = self;
      if (self->_flags.isCurrentlyInteractive)
      {
        interactiveUpdateHandler = self->_interactiveUpdateHandler;
        if (interactiveUpdateHandler)
        {
          interactiveUpdateHandler[2](interactiveUpdateHandler, 1, 1, self, self->_progress);
        }
      }

      self->_flags.isCurrentlyInteractive = 0;

      selfCopy2 = self;
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

- (void)cancelInteractiveTransitionWithVelocity:(double)velocity
{
  self->_progressVelocity = velocity;
  if (self->_state == 1)
  {
    *(&self->_flags + 8) |= 3u;
    selfCopy = self;
    if (self->_flags.isCurrentlyInteractive)
    {
      interactiveUpdateHandler = self->_interactiveUpdateHandler;
      if (interactiveUpdateHandler)
      {
        interactiveUpdateHandler[2](interactiveUpdateHandler, 1, 0, self, self->_progress);
      }
    }

    self->_flags.isCurrentlyInteractive = 0;

    selfCopy2 = self;
  }

  else
  {
    self->_state = 2;
  }
}

- (void)updateNonInteractiveTransitionWithProgress:(double)progress
{
  if (self->_state == 1 && self->_progress != progress)
  {
    Current = CFAbsoluteTimeGetCurrent();
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    if (lastUpdateTimestamp > 0.0)
    {
      self->_progressVelocity = (progress - self->_progress) / (Current - lastUpdateTimestamp);
    }

    self->_lastUpdateTimestamp = Current;
    self->_progress = progress;
  }
}

- (void)completeTransition:(BOOL)transition
{
  willCompleteHandler = self->_willCompleteHandler;
  if (willCompleteHandler)
  {
    willCompleteHandler[2](willCompleteHandler, self, transition);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = *(completionHandler + 2);

    v6();
  }
}

- (void)setIsCompleting:(BOOL)completing
{
  if (completing)
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
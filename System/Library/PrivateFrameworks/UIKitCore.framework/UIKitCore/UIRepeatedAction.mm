@interface UIRepeatedAction
+ (UIRepeatedAction)actionWithTarget:(id)target selector:(SEL)selector object:(id)object;
+ (id)_invocationForTarget:(id)target selector:(SEL)selector object:(id)object;
- (BOOL)_shouldBeginCurrentRepetitionForPhase:(unint64_t)phase;
- (BOOL)_shouldInvokeRepeatedAction;
- (BOOL)invoke;
- (UIRepeatedAction)initWithInvocation:(id)invocation;
- (UIRepeatedAction)initWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (UIRepeatedActionDelegate)delegate;
- (void)_adjustInvocationForPhase:(unint64_t)phase;
- (void)_invocationTimerFire;
- (void)_preInvocationTimerFire;
- (void)_repeatedTimerFire;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
- (void)schedule;
- (void)scheduleWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (void)setInvocationDelay:(double)delay;
- (void)setPreInvocationDelay:(double)delay;
@end

@implementation UIRepeatedAction

+ (id)_invocationForTarget:(id)target selector:(SEL)selector object:(id)object
{
  targetCopy = target;
  objectCopy = object;
  v8 = [targetCopy methodSignatureForSelector:selector];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  numberOfArguments = [v8 numberOfArguments];
  if (numberOfArguments <= 1)
  {
    v11 = NSStringFromSelector(selector);
    NSLog(&cfstr_SMethodRequire.isa, "+[UIRepeatedAction _invocationForTarget:selector:object:]", v11);

LABEL_4:
    v12 = 0;
    goto LABEL_8;
  }

  v13 = numberOfArguments;
  v12 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v9];
  [v12 setTarget:targetCopy];
  [v12 setSelector:selector];
  if (v13 != 2)
  {
    [v12 setArgument:&objectCopy atIndex:2];
  }

  [v12 retainArguments];
LABEL_8:

  return v12;
}

+ (UIRepeatedAction)actionWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  objectCopy = object;
  targetCopy = target;
  v10 = [[self alloc] initWithTarget:targetCopy selector:selector object:objectCopy];

  return v10;
}

- (UIRepeatedAction)initWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  objectCopy = object;
  targetCopy = target;
  v10 = [objc_opt_class() _invocationForTarget:targetCopy selector:selector object:objectCopy];

  if (v10)
  {
    self = [(UIRepeatedAction *)self initWithInvocation:v10];
    [(UIRepeatedAction *)self setInvocationArgument:objectCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UIRepeatedAction)initWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v9.receiver = self;
  v9.super_class = UIRepeatedAction;
  v6 = [(UIRepeatedAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invocation, invocation);
    *&v7->_preInvocationDelay = xmmword_18A682F90;
    v7->_repeatedDelay = 0.1;
  }

  return v7;
}

- (void)scheduleWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  objectCopy = object;
  targetCopy = target;
  [(UIRepeatedAction *)self _resetInternalState];
  v10 = [objc_opt_class() _invocationForTarget:targetCopy selector:selector object:objectCopy];

  [(UIRepeatedAction *)self setInvocation:v10];
  [(UIRepeatedAction *)self setInvocationArgument:objectCopy];

  [(UIRepeatedAction *)self schedule];
}

- (BOOL)invoke
{
  invocation = [(UIRepeatedAction *)self invocation];
  if ((self->_didCompletePreInvocationDelay || ([(UIRepeatedAction *)self preInvocationDelay], v4 > 0.0)) && ![(UIRepeatedAction *)self _shouldInvokeRepeatedAction])
  {
    v7 = 0;
  }

  else
  {
    delegate = [(UIRepeatedAction *)self delegate];
    target = [invocation target];
    [delegate repeatedAction:self willInvokeWithTarget:target object:self->_invocationArgument];

    [invocation invoke];
    v7 = 1;
  }

  return v7;
}

- (void)_adjustInvocationForPhase:(unint64_t)phase
{
  invocationArgument = [(UIRepeatedAction *)self invocationArgument];
  if (!invocationArgument)
  {
    return;
  }

  v11 = invocationArgument;
  invocation = [(UIRepeatedAction *)self invocation];
  methodSignature = [invocation methodSignature];
  if ([methodSignature numberOfArguments] > 1)
  {
    delegate = [(UIRepeatedAction *)self delegate];

    if (!delegate)
    {
      return;
    }

    delegate2 = [(UIRepeatedAction *)self delegate];
    v11 = [delegate2 repeatedAction:self prepareInvocationObject:self->_invocationArgument forPhase:phase];

    v10 = v11;
    if (self->_invocationArgument == v11)
    {
      goto LABEL_8;
    }

    [(UIRepeatedAction *)self setInvocationArgument:?];
    invocation = [(UIRepeatedAction *)self invocation];
    [invocation setArgument:&self->_invocationArgument atIndex:2];
  }

  else
  {
  }

  v10 = v11;
LABEL_8:
}

- (BOOL)_shouldBeginCurrentRepetitionForPhase:(unint64_t)phase
{
  delegate = [(UIRepeatedAction *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    v7 = [delegate shouldBeginCurrentRepetitionOfRepeatedAction:self forPhase:phase];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_shouldInvokeRepeatedAction
{
  delegate = [(UIRepeatedAction *)self delegate];
  if (delegate)
  {
    invocation = [(UIRepeatedAction *)self invocation];
    target = [invocation target];
    v6 = [delegate shouldInvokeRepeatedAction:self forTarget:target object:self->_invocationArgument];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_preInvocationTimerFire
{
  if ([(UIRepeatedAction *)self _shouldBeginCurrentRepetitionForPhase:1])
  {
    [(UIRepeatedAction *)self _adjustInvocationForPhase:1];
    invoke = [(UIRepeatedAction *)self invoke];
    self->_didCompletePreInvocationDelay = 1;
    if (!invoke)
    {
      return;
    }
  }

  else
  {
    self->_didCompletePreInvocationDelay = 1;
  }

  [(UIRepeatedAction *)self schedule];
}

- (void)_invocationTimerFire
{
  if ([(UIRepeatedAction *)self _shouldBeginCurrentRepetitionForPhase:2])
  {
    [(UIRepeatedAction *)self _adjustInvocationForPhase:2];
    invoke = [(UIRepeatedAction *)self invoke];
    self->_didCompleteInvocationDelay = 1;
    if (!invoke)
    {
      return;
    }
  }

  else
  {
    self->_didCompleteInvocationDelay = 1;
  }

  [(UIRepeatedAction *)self schedule];
}

- (void)_repeatedTimerFire
{
  if (![(UIRepeatedAction *)self _shouldBeginCurrentRepetitionForPhase:3]|| ([(UIRepeatedAction *)self _adjustInvocationForPhase:3], [(UIRepeatedAction *)self invoke]))
  {

    [(UIRepeatedAction *)self schedule];
  }
}

- (void)schedule
{
  timer = [(UIRepeatedAction *)self timer];
  [timer invalidate];

  [(UIRepeatedAction *)self setTimer:0];
  if (self->_skipInitialFire && !self->_didCompletePreInvocationDelay)
  {
    self->_didCompletePreInvocationDelay = 1;
  }

  if (self->_didCompleteInvocationDelay)
  {
    if ([(UIRepeatedAction *)self disableRepeat])
    {

      [(UIRepeatedAction *)self setTimer:0];
      return;
    }

    v4 = MEMORY[0x1E695DFF0];
    [(UIRepeatedAction *)self repeatedDelay];
    v5 = sel__repeatedTimerFire;
    goto LABEL_23;
  }

  if (self->_didCompletePreInvocationDelay)
  {
    if ([(UIRepeatedAction *)self disableRepeat])
    {
      return;
    }

    [(UIRepeatedAction *)self invocationDelay];
    if (v7 == 0.0)
    {

      [(UIRepeatedAction *)self _invocationTimerFire];
      return;
    }

    v4 = MEMORY[0x1E695DFF0];
    [(UIRepeatedAction *)self invocationDelay];
    v5 = sel__invocationTimerFire;
LABEL_23:
    v8 = [v4 scheduledTimerWithTimeInterval:self target:v5 selector:0 userInfo:0 repeats:?];
    [(UIRepeatedAction *)self setTimer:v8];

    return;
  }

  [(UIRepeatedAction *)self preInvocationDelay];
  if (v6 != 0.0)
  {
    v4 = MEMORY[0x1E695DFF0];
    [(UIRepeatedAction *)self preInvocationDelay];
    v5 = sel__preInvocationTimerFire;
    goto LABEL_23;
  }

  [(UIRepeatedAction *)self _preInvocationTimerFire];
}

- (void)invalidate
{
  timer = [(UIRepeatedAction *)self timer];
  [timer invalidate];

  [(UIRepeatedAction *)self setTimer:0];
  [(UIRepeatedAction *)self setInvocation:0];

  [(UIRepeatedAction *)self setInvocationArgument:0];
}

- (void)reset
{
  [(UIRepeatedAction *)self _resetInternalState];
  *&self->_preInvocationDelay = xmmword_18A682F90;
  self->_repeatedDelay = 0.1;
  *&self->_disableRepeat = 0;
}

- (void)setPreInvocationDelay:(double)delay
{
  self->_preInvocationDelay = delay;
  timer = [(UIRepeatedAction *)self timer];
  isValid = [timer isValid];

  if (isValid)
  {

    [(UIRepeatedAction *)self schedule];
  }
}

- (void)setInvocationDelay:(double)delay
{
  self->_invocationDelay = delay;
  timer = [(UIRepeatedAction *)self timer];
  isValid = [timer isValid];

  if (isValid)
  {

    [(UIRepeatedAction *)self schedule];
  }
}

- (void)dealloc
{
  [(UIRepeatedAction *)self invalidate];
  v3.receiver = self;
  v3.super_class = UIRepeatedAction;
  [(UIRepeatedAction *)&v3 dealloc];
}

- (UIRepeatedActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
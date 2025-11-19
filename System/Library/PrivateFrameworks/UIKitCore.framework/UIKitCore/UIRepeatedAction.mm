@interface UIRepeatedAction
+ (UIRepeatedAction)actionWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
+ (id)_invocationForTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
- (BOOL)_shouldBeginCurrentRepetitionForPhase:(unint64_t)a3;
- (BOOL)_shouldInvokeRepeatedAction;
- (BOOL)invoke;
- (UIRepeatedAction)initWithInvocation:(id)a3;
- (UIRepeatedAction)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
- (UIRepeatedActionDelegate)delegate;
- (void)_adjustInvocationForPhase:(unint64_t)a3;
- (void)_invocationTimerFire;
- (void)_preInvocationTimerFire;
- (void)_repeatedTimerFire;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
- (void)schedule;
- (void)scheduleWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5;
- (void)setInvocationDelay:(double)a3;
- (void)setPreInvocationDelay:(double)a3;
@end

@implementation UIRepeatedAction

+ (id)_invocationForTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v7 = a3;
  v15 = a5;
  v8 = [v7 methodSignatureForSelector:a4];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  v10 = [v8 numberOfArguments];
  if (v10 <= 1)
  {
    v11 = NSStringFromSelector(a4);
    NSLog(&cfstr_SMethodRequire.isa, "+[UIRepeatedAction _invocationForTarget:selector:object:]", v11);

LABEL_4:
    v12 = 0;
    goto LABEL_8;
  }

  v13 = v10;
  v12 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v9];
  [v12 setTarget:v7];
  [v12 setSelector:a4];
  if (v13 != 2)
  {
    [v12 setArgument:&v15 atIndex:2];
  }

  [v12 retainArguments];
LABEL_8:

  return v12;
}

+ (UIRepeatedAction)actionWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTarget:v9 selector:a4 object:v8];

  return v10;
}

- (UIRepeatedAction)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_opt_class() _invocationForTarget:v9 selector:a4 object:v8];

  if (v10)
  {
    self = [(UIRepeatedAction *)self initWithInvocation:v10];
    [(UIRepeatedAction *)self setInvocationArgument:v8];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIRepeatedAction)initWithInvocation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIRepeatedAction;
  v6 = [(UIRepeatedAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_invocation, a3);
    *&v7->_preInvocationDelay = xmmword_18A682F90;
    v7->_repeatedDelay = 0.1;
  }

  return v7;
}

- (void)scheduleWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(UIRepeatedAction *)self _resetInternalState];
  v10 = [objc_opt_class() _invocationForTarget:v9 selector:a4 object:v8];

  [(UIRepeatedAction *)self setInvocation:v10];
  [(UIRepeatedAction *)self setInvocationArgument:v8];

  [(UIRepeatedAction *)self schedule];
}

- (BOOL)invoke
{
  v3 = [(UIRepeatedAction *)self invocation];
  if ((self->_didCompletePreInvocationDelay || ([(UIRepeatedAction *)self preInvocationDelay], v4 > 0.0)) && ![(UIRepeatedAction *)self _shouldInvokeRepeatedAction])
  {
    v7 = 0;
  }

  else
  {
    v5 = [(UIRepeatedAction *)self delegate];
    v6 = [v3 target];
    [v5 repeatedAction:self willInvokeWithTarget:v6 object:self->_invocationArgument];

    [v3 invoke];
    v7 = 1;
  }

  return v7;
}

- (void)_adjustInvocationForPhase:(unint64_t)a3
{
  v5 = [(UIRepeatedAction *)self invocationArgument];
  if (!v5)
  {
    return;
  }

  v11 = v5;
  v6 = [(UIRepeatedAction *)self invocation];
  v7 = [v6 methodSignature];
  if ([v7 numberOfArguments] > 1)
  {
    v8 = [(UIRepeatedAction *)self delegate];

    if (!v8)
    {
      return;
    }

    v9 = [(UIRepeatedAction *)self delegate];
    v11 = [v9 repeatedAction:self prepareInvocationObject:self->_invocationArgument forPhase:a3];

    v10 = v11;
    if (self->_invocationArgument == v11)
    {
      goto LABEL_8;
    }

    [(UIRepeatedAction *)self setInvocationArgument:?];
    v6 = [(UIRepeatedAction *)self invocation];
    [v6 setArgument:&self->_invocationArgument atIndex:2];
  }

  else
  {
  }

  v10 = v11;
LABEL_8:
}

- (BOOL)_shouldBeginCurrentRepetitionForPhase:(unint64_t)a3
{
  v5 = [(UIRepeatedAction *)self delegate];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 shouldBeginCurrentRepetitionOfRepeatedAction:self forPhase:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_shouldInvokeRepeatedAction
{
  v3 = [(UIRepeatedAction *)self delegate];
  if (v3)
  {
    v4 = [(UIRepeatedAction *)self invocation];
    v5 = [v4 target];
    v6 = [v3 shouldInvokeRepeatedAction:self forTarget:v5 object:self->_invocationArgument];
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
    v3 = [(UIRepeatedAction *)self invoke];
    self->_didCompletePreInvocationDelay = 1;
    if (!v3)
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
    v3 = [(UIRepeatedAction *)self invoke];
    self->_didCompleteInvocationDelay = 1;
    if (!v3)
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
  v3 = [(UIRepeatedAction *)self timer];
  [v3 invalidate];

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
  v3 = [(UIRepeatedAction *)self timer];
  [v3 invalidate];

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

- (void)setPreInvocationDelay:(double)a3
{
  self->_preInvocationDelay = a3;
  v4 = [(UIRepeatedAction *)self timer];
  v5 = [v4 isValid];

  if (v5)
  {

    [(UIRepeatedAction *)self schedule];
  }
}

- (void)setInvocationDelay:(double)a3
{
  self->_invocationDelay = a3;
  v4 = [(UIRepeatedAction *)self timer];
  v5 = [v4 isValid];

  if (v5)
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
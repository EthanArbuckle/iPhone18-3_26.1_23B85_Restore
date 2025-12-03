@interface SBStartupTransitionFactory
- (SBStartupTransitionFactory)initWithInitialRestartState:(id)state;
- (id)_transactionForDestination:(unint64_t)destination context:(id)context;
- (id)transitionForContext:(id)context outDestination:(unint64_t *)destination;
@end

@implementation SBStartupTransitionFactory

- (SBStartupTransitionFactory)initWithInitialRestartState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    [(SBStartupTransitionFactory *)a2 initWithInitialRestartState:?];
  }

  v10.receiver = self;
  v10.super_class = SBStartupTransitionFactory;
  v7 = [(SBStartupTransitionFactory *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_initialRestartState, state);
  }

  return v8;
}

- (id)transitionForContext:(id)context outDestination:(unint64_t *)destination
{
  contextCopy = context;
  if (!contextCopy)
  {
    [SBStartupTransitionFactory transitionForContext:a2 outDestination:self];
  }

  bootDefaults = [(SBInitialRestartState *)self->_initialRestartState bootDefaults];
  requiresSetup = [(SBInitialRestartState *)self->_initialRestartState requiresSetup];
  isInLostMode = [(SBInitialRestartState *)self->_initialRestartState isInLostMode];
  isBlocked = [(SBInitialRestartState *)self->_initialRestartState isBlocked];
  isDark = [contextCopy isDark];
  shouldNeverLock = [(SBInitialRestartState *)self->_initialRestartState shouldNeverLock];
  isAuthenticated = [(SBInitialRestartState *)self->_initialRestartState isAuthenticated];
  hasPasscodeSet = [(SBInitialRestartState *)self->_initialRestartState hasPasscodeSet];
  isLogin = [contextCopy isLogin];
  fromUserPowerDown = [contextCopy fromUserPowerDown];
  isForSimulator = [(SBInitialRestartState *)self->_initialRestartState isForSimulator];
  if ([(SBInitialRestartState *)self->_initialRestartState isLoginSession])
  {
    v15 = 4;
    goto LABEL_23;
  }

  if (isLogin)
  {
    if (shouldNeverLock || !((isBlocked || isInLostMode || !isAuthenticated) | isDark & 1))
    {
      if (requiresSetup)
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }

      goto LABEL_23;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_23;
  }

  if (requiresSetup)
  {
    v15 = 3;
    goto LABEL_23;
  }

  if (!shouldNeverLock && (isBlocked || isInLostMode || !isAuthenticated) | isDark & 1)
  {
    goto LABEL_15;
  }

  applicationLaunchURL = [contextCopy applicationLaunchURL];

  if (applicationLaunchURL)
  {
    v15 = 2;
  }

  else
  {
    dontLockAfterCrash = [bootDefaults dontLockAfterCrash];
    homeButtonType = [(SBInitialRestartState *)self->_initialRestartState homeButtonType];
    v19 = (shouldNeverLock || isForSimulator) | dontLockAfterCrash;
    v20 = fromUserPowerDown;
    if (homeButtonType == 2)
    {
      v20 = 0;
    }

    if (((v19 | hasPasscodeSet) & 1) == 0)
    {
      v19 = v20;
    }

    v15 = v19 & 1;
  }

LABEL_23:
  if (destination)
  {
    *destination = v15;
  }

  v21 = [(SBStartupTransitionFactory *)self _transactionForDestination:v15 context:contextCopy];

  return v21;
}

- (id)_transactionForDestination:(unint64_t)destination context:(id)context
{
  contextCopy = context;
  v7 = 0;
  if (destination <= 1)
  {
    if (destination)
    {
      if (destination != 1)
      {
        goto LABEL_14;
      }

      v8 = [SBStartupTransitionToHome alloc];
      v9 = 1;
    }

    else
    {
      v8 = [SBStartupTransitionToLockOut alloc];
      v9 = 0;
    }

    goto LABEL_12;
  }

  if (destination == 4)
  {
    v8 = [SBStartupTransitionToLoginWindow alloc];
    v9 = 4;
LABEL_12:
    v10 = [(SBBaseStartupTransition *)v8 initWithDestination:v9 context:contextCopy];
    goto LABEL_13;
  }

  if (destination != 3)
  {
    if (destination != 2)
    {
      goto LABEL_14;
    }

    v8 = [SBStartupTransitionToApp alloc];
    v9 = 2;
    goto LABEL_12;
  }

  v10 = [[SBStartupTransitionToSetup alloc] initWithDestination:3 context:contextCopy initialRestartState:self->_initialRestartState];
LABEL_13:
  v7 = v10;
LABEL_14:

  return v7;
}

- (void)initWithInitialRestartState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionFactory.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"initialRestartState"}];
}

- (void)transitionForContext:(uint64_t)a1 outDestination:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionFactory.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"context"}];
}

@end
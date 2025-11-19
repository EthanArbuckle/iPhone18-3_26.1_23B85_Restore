@interface SBStartupTransitionFactory
- (SBStartupTransitionFactory)initWithInitialRestartState:(id)a3;
- (id)_transactionForDestination:(unint64_t)a3 context:(id)a4;
- (id)transitionForContext:(id)a3 outDestination:(unint64_t *)a4;
@end

@implementation SBStartupTransitionFactory

- (SBStartupTransitionFactory)initWithInitialRestartState:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBStartupTransitionFactory *)a2 initWithInitialRestartState:?];
  }

  v10.receiver = self;
  v10.super_class = SBStartupTransitionFactory;
  v7 = [(SBStartupTransitionFactory *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_initialRestartState, a3);
  }

  return v8;
}

- (id)transitionForContext:(id)a3 outDestination:(unint64_t *)a4
{
  v6 = a3;
  if (!v6)
  {
    [SBStartupTransitionFactory transitionForContext:a2 outDestination:self];
  }

  v7 = [(SBInitialRestartState *)self->_initialRestartState bootDefaults];
  v8 = [(SBInitialRestartState *)self->_initialRestartState requiresSetup];
  v25 = [(SBInitialRestartState *)self->_initialRestartState isInLostMode];
  v9 = [(SBInitialRestartState *)self->_initialRestartState isBlocked];
  v10 = [v6 isDark];
  v11 = [(SBInitialRestartState *)self->_initialRestartState shouldNeverLock];
  v12 = [(SBInitialRestartState *)self->_initialRestartState isAuthenticated];
  v24 = [(SBInitialRestartState *)self->_initialRestartState hasPasscodeSet];
  v13 = [v6 isLogin];
  v23 = [v6 fromUserPowerDown];
  v14 = [(SBInitialRestartState *)self->_initialRestartState isForSimulator];
  if ([(SBInitialRestartState *)self->_initialRestartState isLoginSession])
  {
    v15 = 4;
    goto LABEL_23;
  }

  if (v13)
  {
    if (v11 || !((v9 || v25 || !v12) | v10 & 1))
    {
      if (v8)
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

  if (v8)
  {
    v15 = 3;
    goto LABEL_23;
  }

  if (!v11 && (v9 || v25 || !v12) | v10 & 1)
  {
    goto LABEL_15;
  }

  v16 = [v6 applicationLaunchURL];

  if (v16)
  {
    v15 = 2;
  }

  else
  {
    v17 = [v7 dontLockAfterCrash];
    v18 = [(SBInitialRestartState *)self->_initialRestartState homeButtonType];
    v19 = (v11 || v14) | v17;
    v20 = v23;
    if (v18 == 2)
    {
      v20 = 0;
    }

    if (((v19 | v24) & 1) == 0)
    {
      v19 = v20;
    }

    v15 = v19 & 1;
  }

LABEL_23:
  if (a4)
  {
    *a4 = v15;
  }

  v21 = [(SBStartupTransitionFactory *)self _transactionForDestination:v15 context:v6];

  return v21;
}

- (id)_transactionForDestination:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
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

  if (a3 == 4)
  {
    v8 = [SBStartupTransitionToLoginWindow alloc];
    v9 = 4;
LABEL_12:
    v10 = [(SBBaseStartupTransition *)v8 initWithDestination:v9 context:v6];
    goto LABEL_13;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
      goto LABEL_14;
    }

    v8 = [SBStartupTransitionToApp alloc];
    v9 = 2;
    goto LABEL_12;
  }

  v10 = [[SBStartupTransitionToSetup alloc] initWithDestination:3 context:v6 initialRestartState:self->_initialRestartState];
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
@interface VUIPlaybackReporter
- (BOOL)_isTransitionValidForPlayer:(id)player fromState:(id)state toState:(id)toState;
- (VUIPlaybackReporter)init;
- (id)_createSessionForPlayer:(id)player;
- (id)_sessionForPlayer:(id)player;
- (void)_beginSession:(id)session;
- (void)_endSession:(id)session;
- (void)_endSessions:(id)sessions;
- (void)_handlePlaybackChangeForPlayer:(id)player fromState:(id)state toState:(id)toState reason:(id)reason;
- (void)_logWithFormat:(id)format;
- (void)_playerCurrentMediaItemWillChange:(id)change;
- (void)_playerStateWillChange:(id)change;
- (void)_registerObservers;
- (void)_removeObservers;
- (void)_reportForSession:(id)session state:(id)state reason:(id)reason;
- (void)dealloc;
@end

@implementation VUIPlaybackReporter

- (VUIPlaybackReporter)init
{
  v9.receiver = self;
  v9.super_class = VUIPlaybackReporter;
  v2 = [(VUIPlaybackReporter *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(VUIPlaybackReporter *)v2 _registerObservers];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sessions = v3->_sessions;
    v3->_sessions = v4;

    v3->_enforceSinglePlaybackSession = 1;
    v6 = VUIDefaultLogObject();
    logObject = v3->_logObject;
    v3->_logObject = v6;
  }

  return v3;
}

- (void)_registerObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__playerStateWillChange_ name:*MEMORY[0x1E69D60A8] object:0];
  [defaultCenter addObserver:self selector:sel__playerCurrentMediaItemWillChange_ name:*MEMORY[0x1E69D5F18] object:0];
}

- (void)dealloc
{
  [(VUIPlaybackReporter *)self _removeObservers];
  v3.receiver = self;
  v3.super_class = VUIPlaybackReporter;
  [(VUIPlaybackReporter *)&v3 dealloc];
}

- (void)_logWithFormat:(id)format
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v12];

  logObject = [(VUIPlaybackReporter *)self logObject];
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", objc_opt_class(), v6];
    *buf = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1E323F000, logObject, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

- (void)_removeObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (id)_sessionForPlayer:(id)player
{
  v17 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sessions = [(VUIPlaybackReporter *)self sessions];
  v6 = [sessions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(sessions);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        player = [v9 player];

        if (player == playerCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [sessions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_endSessions:(id)sessions
{
  sessionsCopy = sessions;
  if ([sessionsCopy count])
  {
    sessions = [(VUIPlaybackReporter *)self sessions];
    [sessions removeObjectsInArray:sessionsCopy];
  }
}

- (void)_endSession:(id)session
{
  sessionCopy = session;
  [(VUIPlaybackReporter *)self _logWithFormat:@"Will end reporting for %@", sessionCopy];
  sessions = [(VUIPlaybackReporter *)self sessions];
  [sessions removeObject:sessionCopy];
}

- (void)_beginSession:(id)session
{
  sessionCopy = session;
  [(VUIPlaybackReporter *)self _logWithFormat:@"Will begin reporting for %@", sessionCopy];
  sessions = [(VUIPlaybackReporter *)self sessions];
  [sessions addObject:sessionCopy];
}

- (void)_playerStateWillChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  [(VUIPlaybackReporter *)self _logWithFormat:@"_playerStateWillChange %@", userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69D6098]];
  state = [object state];
  v8 = [userInfo objectForKey:*MEMORY[0x1E69D6088]];
  [(VUIPlaybackReporter *)self _handlePlaybackChangeForPlayer:object fromState:state toState:v6 reason:v8];
}

- (void)_playerCurrentMediaItemWillChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  v5 = [(VUIPlaybackReporter *)self _sessionForPlayer:?];
  userInfo = [changeCopy userInfo];

  [(VUIPlaybackReporter *)self _logWithFormat:@"_playerCurrentMediaItemWillChange %@", userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x1E69D5F08]];
  if (v5)
  {
    [(VUIPlaybackReporter *)self _logWithFormat:@"Stopping %@", object];
    state = [object state];
    stopped = [MEMORY[0x1E69D5A40] stopped];
    [(VUIPlaybackReporter *)self _handlePlaybackChangeForPlayer:object fromState:state toState:stopped reason:v7];

    [(VUIPlaybackReporter *)self _endSession:v5];
  }
}

- (void)_handlePlaybackChangeForPlayer:(id)player fromState:(id)state toState:(id)toState reason:(id)reason
{
  v42 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  stateCopy = state;
  toStateCopy = toState;
  reasonCopy = reason;
  v13 = [(VUIPlaybackReporter *)self _sessionForPlayer:playerCopy];
  v14 = [(VUIPlaybackReporter *)self _isTransitionValidForPlayer:playerCopy fromState:stateCopy toState:toStateCopy];
  playing = [MEMORY[0x1E69D5A40] playing];

  if (playing == toStateCopy)
  {
    if ([(VUIPlaybackReporter *)self enforceSinglePlaybackSession])
    {
      v31 = v14;
      v32 = v13;
      v33 = toStateCopy;
      v34 = stateCopy;
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = [(VUIPlaybackReporter *)self sessions];
      v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        v20 = @"End session (enforcing single session) %@";
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v37 + 1) + 8 * i);
            player = [v22 player];
            v24 = player;
            if (player != playerCopy)
            {
              [(VUIPlaybackReporter *)self _logWithFormat:v20, player];
              if ([v22 reportingEnabled])
              {
                [MEMORY[0x1E69D5A40] stopped];
                v25 = playerCopy;
                v27 = v26 = v20;
                [(VUIPlaybackReporter *)self _reportForSession:v22 state:v27 reason:reasonCopy];

                v20 = v26;
                playerCopy = v25;
              }

              [v16 addObject:v22];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v18);
      }

      [(VUIPlaybackReporter *)self _endSessions:v16];
      toStateCopy = v33;
      stateCopy = v34;
      v13 = v32;
      v14 = v31;
    }

    if (!v13)
    {
      v13 = [(VUIPlaybackReporter *)self _createSessionForPlayer:playerCopy];
      if (v13)
      {
        [(VUIPlaybackReporter *)self _beginSession:v13];
        v28 = v13;
      }

      else
      {
        [(VUIPlaybackReporter *)self _logWithFormat:@"Invalid player. Not creating session %@", playerCopy];
      }
    }
  }

  v29 = @"Invalid";
  if (v14)
  {
    v29 = @"Valid";
  }

  [(VUIPlaybackReporter *)self _logWithFormat:@"Transition: %@ --> %@ (%@), %@, reason:%@", stateCopy, toStateCopy, v29, playerCopy, reasonCopy];
  if (v14)
  {
    if (v13)
    {
      if ([v13 reportingEnabled])
      {
        [(VUIPlaybackReporter *)self _reportForSession:v13 state:toStateCopy reason:reasonCopy];
      }
    }

    else
    {
      [(VUIPlaybackReporter *)self _logWithFormat:@"Ignoring event for un-matched session %@", playerCopy];
    }
  }

  stopped = [MEMORY[0x1E69D5A40] stopped];

  if (stopped == toStateCopy && v13)
  {
    [(VUIPlaybackReporter *)self _endSession:v13];
  }
}

- (BOOL)_isTransitionValidForPlayer:(id)player fromState:(id)state toState:(id)toState
{
  stateCopy = state;
  v7 = MEMORY[0x1E69D5A40];
  toStateCopy = toState;
  playing = [v7 playing];

  if (playing == toStateCopy)
  {
    v11 = 1;
  }

  else
  {
    playing2 = [MEMORY[0x1E69D5A40] playing];
    v11 = playing2 == stateCopy;
  }

  return v11;
}

- (void)_reportForSession:(id)session state:(id)state reason:(id)reason
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromSelector(a2);
  v8 = [v7 stringWithFormat:@"You must override %@ in a subclass", v10];
  v9 = [v5 exceptionWithName:v6 reason:v8 userInfo:0];
  [v9 raise];
}

- (id)_createSessionForPlayer:(id)player
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  [v8 raise];

  return 0;
}

@end
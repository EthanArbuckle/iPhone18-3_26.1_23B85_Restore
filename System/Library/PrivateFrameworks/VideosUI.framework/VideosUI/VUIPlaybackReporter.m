@interface VUIPlaybackReporter
- (BOOL)_isTransitionValidForPlayer:(id)a3 fromState:(id)a4 toState:(id)a5;
- (VUIPlaybackReporter)init;
- (id)_createSessionForPlayer:(id)a3;
- (id)_sessionForPlayer:(id)a3;
- (void)_beginSession:(id)a3;
- (void)_endSession:(id)a3;
- (void)_endSessions:(id)a3;
- (void)_handlePlaybackChangeForPlayer:(id)a3 fromState:(id)a4 toState:(id)a5 reason:(id)a6;
- (void)_logWithFormat:(id)a3;
- (void)_playerCurrentMediaItemWillChange:(id)a3;
- (void)_playerStateWillChange:(id)a3;
- (void)_registerObservers;
- (void)_removeObservers;
- (void)_reportForSession:(id)a3 state:(id)a4 reason:(id)a5;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__playerStateWillChange_ name:*MEMORY[0x1E69D60A8] object:0];
  [v3 addObserver:self selector:sel__playerCurrentMediaItemWillChange_ name:*MEMORY[0x1E69D5F18] object:0];
}

- (void)dealloc
{
  [(VUIPlaybackReporter *)self _removeObservers];
  v3.receiver = self;
  v3.super_class = VUIPlaybackReporter;
  [(VUIPlaybackReporter *)&v3 dealloc];
}

- (void)_logWithFormat:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v12];

  v7 = [(VUIPlaybackReporter *)self logObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", objc_opt_class(), v6];
    *buf = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

- (void)_removeObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (id)_sessionForPlayer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(VUIPlaybackReporter *)self sessions];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 player];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_endSessions:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(VUIPlaybackReporter *)self sessions];
    [v4 removeObjectsInArray:v5];
  }
}

- (void)_endSession:(id)a3
{
  v4 = a3;
  [(VUIPlaybackReporter *)self _logWithFormat:@"Will end reporting for %@", v4];
  v5 = [(VUIPlaybackReporter *)self sessions];
  [v5 removeObject:v4];
}

- (void)_beginSession:(id)a3
{
  v4 = a3;
  [(VUIPlaybackReporter *)self _logWithFormat:@"Will begin reporting for %@", v4];
  v5 = [(VUIPlaybackReporter *)self sessions];
  [v5 addObject:v4];
}

- (void)_playerStateWillChange:(id)a3
{
  v4 = a3;
  v9 = [v4 object];
  v5 = [v4 userInfo];

  [(VUIPlaybackReporter *)self _logWithFormat:@"_playerStateWillChange %@", v5];
  v6 = [v5 objectForKey:*MEMORY[0x1E69D6098]];
  v7 = [v9 state];
  v8 = [v5 objectForKey:*MEMORY[0x1E69D6088]];
  [(VUIPlaybackReporter *)self _handlePlaybackChangeForPlayer:v9 fromState:v7 toState:v6 reason:v8];
}

- (void)_playerCurrentMediaItemWillChange:(id)a3
{
  v4 = a3;
  v10 = [v4 object];
  v5 = [(VUIPlaybackReporter *)self _sessionForPlayer:?];
  v6 = [v4 userInfo];

  [(VUIPlaybackReporter *)self _logWithFormat:@"_playerCurrentMediaItemWillChange %@", v6];
  v7 = [v6 objectForKey:*MEMORY[0x1E69D5F08]];
  if (v5)
  {
    [(VUIPlaybackReporter *)self _logWithFormat:@"Stopping %@", v10];
    v8 = [v10 state];
    v9 = [MEMORY[0x1E69D5A40] stopped];
    [(VUIPlaybackReporter *)self _handlePlaybackChangeForPlayer:v10 fromState:v8 toState:v9 reason:v7];

    [(VUIPlaybackReporter *)self _endSession:v5];
  }
}

- (void)_handlePlaybackChangeForPlayer:(id)a3 fromState:(id)a4 toState:(id)a5 reason:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35 = a6;
  v13 = [(VUIPlaybackReporter *)self _sessionForPlayer:v10];
  v14 = [(VUIPlaybackReporter *)self _isTransitionValidForPlayer:v10 fromState:v11 toState:v12];
  v15 = [MEMORY[0x1E69D5A40] playing];

  if (v15 == v12)
  {
    if ([(VUIPlaybackReporter *)self enforceSinglePlaybackSession])
    {
      v31 = v14;
      v32 = v13;
      v33 = v12;
      v34 = v11;
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
            v23 = [v22 player];
            v24 = v23;
            if (v23 != v10)
            {
              [(VUIPlaybackReporter *)self _logWithFormat:v20, v23];
              if ([v22 reportingEnabled])
              {
                [MEMORY[0x1E69D5A40] stopped];
                v25 = v10;
                v27 = v26 = v20;
                [(VUIPlaybackReporter *)self _reportForSession:v22 state:v27 reason:v35];

                v20 = v26;
                v10 = v25;
              }

              [v16 addObject:v22];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v18);
      }

      [(VUIPlaybackReporter *)self _endSessions:v16];
      v12 = v33;
      v11 = v34;
      v13 = v32;
      v14 = v31;
    }

    if (!v13)
    {
      v13 = [(VUIPlaybackReporter *)self _createSessionForPlayer:v10];
      if (v13)
      {
        [(VUIPlaybackReporter *)self _beginSession:v13];
        v28 = v13;
      }

      else
      {
        [(VUIPlaybackReporter *)self _logWithFormat:@"Invalid player. Not creating session %@", v10];
      }
    }
  }

  v29 = @"Invalid";
  if (v14)
  {
    v29 = @"Valid";
  }

  [(VUIPlaybackReporter *)self _logWithFormat:@"Transition: %@ --> %@ (%@), %@, reason:%@", v11, v12, v29, v10, v35];
  if (v14)
  {
    if (v13)
    {
      if ([v13 reportingEnabled])
      {
        [(VUIPlaybackReporter *)self _reportForSession:v13 state:v12 reason:v35];
      }
    }

    else
    {
      [(VUIPlaybackReporter *)self _logWithFormat:@"Ignoring event for un-matched session %@", v10];
    }
  }

  v30 = [MEMORY[0x1E69D5A40] stopped];

  if (v30 == v12 && v13)
  {
    [(VUIPlaybackReporter *)self _endSession:v13];
  }
}

- (BOOL)_isTransitionValidForPlayer:(id)a3 fromState:(id)a4 toState:(id)a5
{
  v6 = a4;
  v7 = MEMORY[0x1E69D5A40];
  v8 = a5;
  v9 = [v7 playing];

  if (v9 == v8)
  {
    v11 = 1;
  }

  else
  {
    v10 = [MEMORY[0x1E69D5A40] playing];
    v11 = v10 == v6;
  }

  return v11;
}

- (void)_reportForSession:(id)a3 state:(id)a4 reason:(id)a5
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromSelector(a2);
  v8 = [v7 stringWithFormat:@"You must override %@ in a subclass", v10];
  v9 = [v5 exceptionWithName:v6 reason:v8 userInfo:0];
  [v9 raise];
}

- (id)_createSessionForPlayer:(id)a3
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
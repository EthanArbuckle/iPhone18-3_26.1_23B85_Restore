@interface PRPosterScriptInterpreter
- (BOOL)receiveAction:(id)action;
- (PRPosterScriptInterpreter)init;
- (PRPosterScriptInterpreter)initWithScript:(id)script delegate:(id)delegate;
- (PRPosterScriptInterpreterDelegate)delegate;
- (id)nextLine;
- (void)_fireNextLine;
- (void)dealloc;
- (void)invalidate;
- (void)updateRecordingMovie:(BOOL)movie action:(id)action;
@end

@implementation PRPosterScriptInterpreter

- (PRPosterScriptInterpreter)initWithScript:(id)script delegate:(id)delegate
{
  scriptCopy = script;
  delegateCopy = delegate;
  v9 = delegateCopy;
  if (scriptCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRPosterScriptInterpreter initWithScript:a2 delegate:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRPosterScriptInterpreter initWithScript:a2 delegate:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = PRPosterScriptInterpreter;
  v10 = [(PRPosterScriptInterpreter *)&v16 init];
  if (v10)
  {
    v11 = objc_opt_new();
    invalidationSignal = v10->_invalidationSignal;
    v10->_invalidationSignal = v11;

    v13 = [scriptCopy copy];
    script = v10->_script;
    v10->_script = v13;

    objc_storeWeak(&v10->_delegate, v9);
  }

  return v10;
}

- (PRPosterScriptInterpreter)init
{
  [(PRPosterScriptInterpreter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(PRPosterScriptInterpreter *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRPosterScriptInterpreter;
  [(PRPosterScriptInterpreter *)&v3 dealloc];
}

- (BOOL)receiveAction:(id)action
{
  actionCopy = action;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0 && ((objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    [(PRPosterScriptInterpreter *)self updateRecordingMovie:isKindOfClass & 1 action:actionCopy];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateRecordingMovie:(BOOL)movie action:(id)action
{
  movieCopy = movie;
  actionCopy = action;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0 && self->_isInterpretingScript != movieCopy)
  {
    if (movieCopy)
    {
      if (self->_didStartFilming)
      {
        v7 = MEMORY[0x1E698E600];
        v8 = [MEMORY[0x1E696ABC0] pr_errorWithCode:7];
LABEL_12:
        v16 = v8;
        v17 = [v7 responseForError:v8];
        [actionCopy sendResponse:v17];

        delegate = [(PRPosterScriptInterpreter *)self delegate];
        [delegate scriptInterpreterDidFinish:self];

        goto LABEL_13;
      }

      delegate2 = [(PRPosterScriptInterpreter *)self delegate];
      nextLine = [(PRPosterScriptInterpreter *)self nextLine];
      v13 = [delegate2 scriptInterperterShouldBeginExecution:self initialStatement:nextLine];

      v7 = MEMORY[0x1E698E600];
      if ((v13 & 1) == 0)
      {
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
        goto LABEL_12;
      }

      response = [MEMORY[0x1E698E600] response];
      [actionCopy sendResponse:response];

      self->_didStartFilming = 1;
      self->_isInterpretingScript = 1;
      delegate3 = [(PRPosterScriptInterpreter *)self delegate];
      [delegate3 scriptInterpreterDidBeginExecution:self];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PRPosterScriptInterpreter_updateRecordingMovie_action___block_invoke;
      block[3] = &unk_1E7843688;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      self->_isInterpretingScript = 0;
      if (self->_didStartFilming)
      {
        delegate4 = [(PRPosterScriptInterpreter *)self delegate];
        [delegate4 scriptInterpreterDidFinish:self];
      }

      response2 = [MEMORY[0x1E698E600] response];
      [actionCopy sendResponse:response2];
    }
  }

LABEL_13:
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    self->_isInterpretingScript = 0;
    objc_storeWeak(&self->_delegate, 0);
    lineEnumerator = self->_lineEnumerator;
    self->_lineEnumerator = 0;

    script = self->_script;
    self->_script = 0;

    [(BSAbsoluteMachTimer *)self->_lineTimer invalidate];
    lineTimer = self->_lineTimer;
    self->_lineTimer = 0;
  }
}

- (void)_fireNextLine
{
  if (self->_isInterpretingScript)
  {
    nextLine = [(PRPosterScriptInterpreter *)self nextLine];
    v4 = nextLine;
    if (nextLine)
    {
      [nextLine duration];
      v6 = v5;
      delegate = [(PRPosterScriptInterpreter *)self delegate];
      [delegate scriptInterpreter:self executeStatement:v4];

      [(BSAbsoluteMachTimer *)self->_lineTimer invalidate];
      v8 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"PRPosterScriptInterpreter-LineTimer"];
      lineTimer = self->_lineTimer;
      self->_lineTimer = v8;

      objc_initWeak(&location, self);
      v10 = self->_lineTimer;
      v11 = MEMORY[0x1E69E96A0];
      v12 = MEMORY[0x1E69E96A0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__PRPosterScriptInterpreter__fireNextLine__block_invoke;
      v13[3] = &unk_1E7844798;
      objc_copyWeak(&v14, &location);
      [(BSAbsoluteMachTimer *)v10 scheduleWithFireInterval:v11 leewayInterval:v13 queue:v6 handler:0.0];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PRPosterScriptInterpreter *)self updateRecordingMovie:0 action:0];
    }
  }
}

void __42__PRPosterScriptInterpreter__fireNextLine__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireNextLine];
}

- (id)nextLine
{
  lineEnumerator = self->_lineEnumerator;
  if (!lineEnumerator)
  {
    objectEnumerator = [(PRPosterScript *)self->_script objectEnumerator];
    v5 = self->_lineEnumerator;
    self->_lineEnumerator = objectEnumerator;

    lineEnumerator = self->_lineEnumerator;
  }

  return [(NSEnumerator *)lineEnumerator nextObject];
}

- (PRPosterScriptInterpreterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithScript:(uint64_t)a1 delegate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRPosterScriptInterpreter.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"script"}];
}

- (void)initWithScript:(uint64_t)a1 delegate:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRPosterScriptInterpreter.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

@end
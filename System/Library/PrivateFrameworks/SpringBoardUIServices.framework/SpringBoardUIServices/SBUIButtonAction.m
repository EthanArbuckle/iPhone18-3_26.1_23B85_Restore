@interface SBUIButtonAction
- (SBUIButtonAction)initWithButtonEvents:(unint64_t)a3 withHandler:(id)a4;
- (id)settings:(id)a3 keyDescriptionForSetting:(unint64_t)a4;
- (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6;
- (unint64_t)buttonEvents;
- (void)sendResponse:(id)a3 withCompletion:(id)a4;
- (void)sendResponseWithUnHandledButtonEvents:(unint64_t)a3;
@end

@implementation SBUIButtonAction

- (SBUIButtonAction)initWithButtonEvents:(unint64_t)a3 withHandler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [SBUIButtonAction initWithButtonEvents:a2 withHandler:self];
  }

  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v8 setObject:v9 forSetting:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__SBUIButtonAction_initWithButtonEvents_withHandler___block_invoke;
  v14[3] = &unk_1E789E6D8;
  v15 = v7;
  v16 = a3;
  v13.receiver = self;
  v13.super_class = SBUIButtonAction;
  v10 = v7;
  v11 = [(SBUIButtonAction *)&v13 initWithInfo:v8 timeout:MEMORY[0x1E69E96A0] forResponseOnQueue:v14 withHandler:10.0];

  return v11;
}

void __53__SBUIButtonAction_initWithButtonEvents_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v11 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = *(a1 + 40);
    if (([v6 unHandledButtonEvents] & ~v7) == 0)
    {
      goto LABEL_14;
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698E5A8] code:4 userInfo:0];
    v9 = [(BSActionResponse *)SBUIButtonActionResponse responseForError:v8];

    v6 = v9;
  }

  else
  {
    v10 = [v11 error];

    if (v10)
    {
      [v11 error];
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698E5A8] code:4 userInfo:0];
    }
    v8 = ;
    v6 = [(BSActionResponse *)SBUIButtonActionResponse responseForError:v8];
  }

LABEL_14:
  (*(*(a1 + 32) + 16))();
}

- (void)sendResponse:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBUIButtonAction sendResponse:a2 withCompletion:self];
  }

  v9.receiver = self;
  v9.super_class = SBUIButtonAction;
  [(SBUIButtonAction *)&v9 sendResponse:v7 withCompletion:v8];
}

- (unint64_t)buttonEvents
{
  v2 = [(SBUIButtonAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)sendResponseWithUnHandledButtonEvents:(unint64_t)a3
{
  if ((a3 & ~[(SBUIButtonAction *)self buttonEvents]) != 0)
  {
    [(SBUIButtonAction *)a3 sendResponseWithUnHandledButtonEvents:a2, self];
  }

  if ([(SBUIButtonAction *)self _expectsResponse])
  {
    v6 = [[SBUIButtonActionResponse alloc] initWithUnHandledButtonEvents:a3];
    v7.receiver = self;
    v7.super_class = SBUIButtonAction;
    [(SBUIButtonAction *)&v7 sendResponse:v6];
  }
}

- (id)settings:(id)a3 keyDescriptionForSetting:(unint64_t)a4
{
  if (a4 == 1)
  {
    return @"events";
  }

  else
  {
    return 0;
  }
}

- (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6
{
  v7 = a5;
  v8 = v7;
  if (a6 == 1)
  {
    v9 = v7;
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = v12;

    if (v14)
    {
      v15 = [v14 integerValue];
    }

    else
    {
      v15 = 0;
    }

    v13 = SBUIServiceButtonEventDescription(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)initWithButtonEvents:(uint64_t)a1 withHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIButtonAction.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

- (void)sendResponse:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIButtonAction.m" lineNumber:93 description:@"SBUIButtonAction responses must be SBUIButtonActionResponse instances"];
}

- (void)sendResponseWithUnHandledButtonEvents:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"SBUIButtonAction.m" lineNumber:111 description:{@"sendResponseWithUnHandledEvents: cannot be passed events that you were not originally given %d", a1}];
}

@end
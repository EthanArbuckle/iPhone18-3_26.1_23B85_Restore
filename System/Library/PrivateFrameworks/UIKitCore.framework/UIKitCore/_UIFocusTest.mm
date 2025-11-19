@interface _UIFocusTest
+ (void)_setCurrentTest:(id)a3;
- (_UIFocusTest)initWithIdentifier:(id)a3;
- (_UIFocusTestDelegate)delegate;
- (void)_finish:(BOOL)a3;
- (void)_start;
- (void)reset;
- (void)runWithCompletionHandler:(id)a3;
@end

@implementation _UIFocusTest

- (_UIFocusTest)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusTest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if ([v5 isEqualToString:&stru_1EFB14550])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusTest.m" lineNumber:27 description:@"Focus tests require a non-empty identifier."];
  }

  v12.receiver = self;
  v12.super_class = _UIFocusTest;
  v6 = [(_UIFocusTest *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_state = 0;
    v6->_isApplicationTest = 1;
  }

  return v6;
}

+ (void)_setCurrentTest:(id)a3
{
  v4 = a3;
  if (__currentTest != v4)
  {
    v5 = v4;
    [__currentTest cancel];
    objc_storeStrong(&__currentTest, a3);
    v4 = v5;
  }
}

- (void)runWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(_UIFocusTest *)self state])
  {
    [(_UIFocusTest *)self reset];
  }

  [_UIFocusTest _setCurrentTest:self];
  [(_UIFocusTest *)self setState:1];
  [(_UIFocusTest *)self setRunCompletionHandler:v4];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41___UIFocusTest_runWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [(_UIFocusTest *)self prepareWithCompletionHandler:v5];
}

- (void)_start
{
  if ([(_UIFocusTest *)self state]!= 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIFocusTest.m" lineNumber:82 description:@"Cannot start a test that has already been started."];
  }

  v7 = [(_UIFocusTest *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 _focusTestWillStart:self];
  }

  [(_UIFocusTest *)self setState:2];
  if ([(_UIFocusTest *)self _isApplicationTest])
  {
    v4 = UIApp;
    v5 = [(_UIFocusTest *)self identifier];
    [v4 startedTest:v5];
  }

  [(_UIFocusTest *)self main];
}

- (void)reset
{
  [(_UIFocusTest *)self cancel];

  [(_UIFocusTest *)self setState:0];
}

- (void)_finish:(BOOL)a3
{
  v3 = a3;
  v10 = self;
  if ([(_UIFocusTest *)v10 state]== 1 || [(_UIFocusTest *)v10 state]== 2)
  {
    if ([(_UIFocusTest *)v10 _isApplicationTest])
    {
      v4 = UIApp;
      v5 = [(_UIFocusTest *)v10 identifier];
      [v4 finishedTest:v5];
    }

    if (v3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    [(_UIFocusTest *)v10 setState:v6];
    [_UIFocusTest _setCurrentTest:0];
    v7 = [(_UIFocusTest *)v10 delegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 _focusTestDidFinish:v10];
    }

    v8 = [(_UIFocusTest *)v10 runCompletionHandler];

    if (v8)
    {
      v9 = [(_UIFocusTest *)v10 runCompletionHandler];
      v9[2]();

      [(_UIFocusTest *)v10 setRunCompletionHandler:0];
    }
  }
}

- (_UIFocusTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
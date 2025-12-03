@interface _UIFocusTest
+ (void)_setCurrentTest:(id)test;
- (_UIFocusTest)initWithIdentifier:(id)identifier;
- (_UIFocusTestDelegate)delegate;
- (void)_finish:(BOOL)_finish;
- (void)_start;
- (void)reset;
- (void)runWithCompletionHandler:(id)handler;
@end

@implementation _UIFocusTest

- (_UIFocusTest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusTest.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if ([identifierCopy isEqualToString:&stru_1EFB14550])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusTest.m" lineNumber:27 description:@"Focus tests require a non-empty identifier."];
  }

  v12.receiver = self;
  v12.super_class = _UIFocusTest;
  v6 = [(_UIFocusTest *)&v12 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_state = 0;
    v6->_isApplicationTest = 1;
  }

  return v6;
}

+ (void)_setCurrentTest:(id)test
{
  testCopy = test;
  if (__currentTest != testCopy)
  {
    v5 = testCopy;
    [__currentTest cancel];
    objc_storeStrong(&__currentTest, test);
    testCopy = v5;
  }
}

- (void)runWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(_UIFocusTest *)self state])
  {
    [(_UIFocusTest *)self reset];
  }

  [_UIFocusTest _setCurrentTest:self];
  [(_UIFocusTest *)self setState:1];
  [(_UIFocusTest *)self setRunCompletionHandler:handlerCopy];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusTest.m" lineNumber:82 description:@"Cannot start a test that has already been started."];
  }

  delegate = [(_UIFocusTest *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate _focusTestWillStart:self];
  }

  [(_UIFocusTest *)self setState:2];
  if ([(_UIFocusTest *)self _isApplicationTest])
  {
    v4 = UIApp;
    identifier = [(_UIFocusTest *)self identifier];
    [v4 startedTest:identifier];
  }

  [(_UIFocusTest *)self main];
}

- (void)reset
{
  [(_UIFocusTest *)self cancel];

  [(_UIFocusTest *)self setState:0];
}

- (void)_finish:(BOOL)_finish
{
  _finishCopy = _finish;
  selfCopy = self;
  if ([(_UIFocusTest *)selfCopy state]== 1 || [(_UIFocusTest *)selfCopy state]== 2)
  {
    if ([(_UIFocusTest *)selfCopy _isApplicationTest])
    {
      v4 = UIApp;
      identifier = [(_UIFocusTest *)selfCopy identifier];
      [v4 finishedTest:identifier];
    }

    if (_finishCopy)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    [(_UIFocusTest *)selfCopy setState:v6];
    [_UIFocusTest _setCurrentTest:0];
    delegate = [(_UIFocusTest *)selfCopy delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate _focusTestDidFinish:selfCopy];
    }

    runCompletionHandler = [(_UIFocusTest *)selfCopy runCompletionHandler];

    if (runCompletionHandler)
    {
      runCompletionHandler2 = [(_UIFocusTest *)selfCopy runCompletionHandler];
      runCompletionHandler2[2]();

      [(_UIFocusTest *)selfCopy setRunCompletionHandler:0];
    }
  }
}

- (_UIFocusTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end